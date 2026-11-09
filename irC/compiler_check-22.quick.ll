source_filename = "compiler_check-22.quick.ll"
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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:litBuilder" = type { i64, i32 }
define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l17 = alloca i1
  %l18 = alloca ptr
  %l26 = alloca i1
  %l27 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca i1
  %l58 = alloca i1
  %l59 = alloca ptr
  %l67 = alloca i1
  %l68 = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/ast:If", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_1b45850c01c63cc9_5ae567fd22704b05)
  unreachable
bb2:
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/ast:If", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Branch", ptr %t22, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/ast:If", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb10
bb6:
  call void @__olang_check_failed(ptr @olang_loc_1b45850c01c63cc9_5ae567fd22704b05)
  unreachable
bb7:
  br label %bb8
bb8:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr %"compiler/ast:If", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = getelementptr %"compiler/ast:Branch", ptr %t41, i32 0, i32 2
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load ptr, ptr %l18, !tbaa !29
  %t48 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %t46, i64 %t45)
  store i1 %t48, ptr %l26
  br label %bb9
bb9:
  %t49 = load i1, ptr %l26, !tbaa !21
  store i1 %t49, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t50 = load i1, ptr %l17, !tbaa !21
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t51 = load ptr, ptr %l2, !tbaa !29
  store ptr %t51, ptr %l27, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/ast:If", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  br i1 %t57, label %bb13, label %bb14
bb12:
  br label %bb17
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1b45850c01c63cc9_5ae567fd22704b05)
  unreachable
bb14:
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/ast:If", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Branch", ptr %t62, i32 0, i32 2
  %t66 = load i64, ptr %t65, !tbaa !24
  %t67 = load ptr, ptr %l27, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t67, i64 %t66)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = getelementptr %"compiler/ast:If", ptr %t69, i32 0, i32 2
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/ast:If", ptr %t76, i32 0, i32 2
  %t79 = load ptr, ptr %t78, !tbaa !29
  store ptr %t79, ptr %l3, !tbaa !29
  %t81 = load ptr, ptr %l3, !tbaa !29
  store ptr %t81, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t82 = load ptr, ptr %l40, !tbaa !29
  %t83 = icmp ne ptr %t82, null
  br i1 %t83, label %bb21, label %bb22
bb21:
  %t85 = load ptr, ptr %l40, !tbaa !29
  %t86 = load i64, ptr %t85, !range !{i64 0, i64 22}
  %t88 = icmp eq i64 %t86, 5
  store i1 %t88, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t89 = load i1, ptr %l41, !tbaa !21
  br i1 %t89, label %bb23, label %bb24
bb23:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  %t93 = getelementptr { %"compiler/source:Span", ptr }, ptr %t92, i32 0, i32 1
  %t94 = load ptr, ptr %t93
  store ptr %t94, ptr %l4, !tbaa !29
  br label %bb25
bb24:
  br label %bb46
bb25:
  %t96 = load ptr, ptr %l4, !tbaa !29
  %t98 = getelementptr %"compiler/ast:If", ptr %t96, i32 0, i32 0
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = icmp eq ptr %t99, null
  br i1 %t101, label %bb26, label %bb27
bb26:
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = getelementptr %"compiler/ast:If", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = icmp eq ptr %t106, null
  br i1 %t108, label %bb28, label %bb29
bb27:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb31
bb28:
  call void @__olang_check_failed(ptr @olang_loc_fd7ab254095cc62_437ccc419ec0735e)
  unreachable
bb29:
  br label %bb30
bb30:
  %t110 = load ptr, ptr %l4, !tbaa !29
  %t112 = getelementptr %"compiler/ast:If", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t116 = getelementptr %"compiler/ast:Branch", ptr %t113, i32 0, i32 2
  %t117 = load i64, ptr %t116, !tbaa !24
  %t119 = icmp sge i64 %t117, 0
  store i1 %t119, ptr %l49, !tbaa !21
  br label %bb31
bb31:
  %t121 = load i1, ptr %l49, !tbaa !21
  br i1 %t121, label %bb32, label %bb33
bb32:
  %t122 = load ptr, ptr %l2, !tbaa !29
  store ptr %t122, ptr %l59, !tbaa !29
  %t123 = load ptr, ptr %l4, !tbaa !29
  %t125 = getelementptr %"compiler/ast:If", ptr %t123, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = icmp eq ptr %t126, null
  br i1 %t128, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb38
bb34:
  call void @__olang_check_failed(ptr @olang_loc_fd7ab254095cc62_437ccc419ec0735e)
  unreachable
bb35:
  br label %bb36
bb36:
  %t130 = load ptr, ptr %l4, !tbaa !29
  %t132 = getelementptr %"compiler/ast:If", ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t136 = getelementptr %"compiler/ast:Branch", ptr %t133, i32 0, i32 2
  %t137 = load i64, ptr %t136, !tbaa !24
  %t138 = load ptr, ptr %l59, !tbaa !29
  %t140 = call i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %t138, i64 %t137)
  store i1 %t140, ptr %l67
  br label %bb37
bb37:
  %t141 = load i1, ptr %l67, !tbaa !21
  store i1 %t141, ptr %l58, !tbaa !21
  br label %bb38
bb38:
  %t142 = load i1, ptr %l58, !tbaa !21
  br i1 %t142, label %bb39, label %bb40
bb39:
  %t143 = load ptr, ptr %l2, !tbaa !29
  store ptr %t143, ptr %l68, !tbaa !29
  %t144 = load ptr, ptr %l4, !tbaa !29
  %t146 = getelementptr %"compiler/ast:If", ptr %t144, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  br i1 %t149, label %bb41, label %bb42
bb40:
  br label %bb45
bb41:
  call void @__olang_check_failed(ptr @olang_loc_fd7ab254095cc62_437ccc419ec0735e)
  unreachable
bb42:
  br label %bb43
bb43:
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t153 = getelementptr %"compiler/ast:If", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t157 = getelementptr %"compiler/ast:Branch", ptr %t154, i32 0, i32 2
  %t158 = load i64, ptr %t157, !tbaa !24
  %t159 = load ptr, ptr %l68, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %t159, i64 %t158)
  br label %bb44
bb44:
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
  call void @__olang_check_failed(ptr @olang_loc_44fad8dfdc3fed7a_1f09cb6ef3c9efd6)
  unreachable
bb51:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecalleeErrors(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca i32
  %l19 = alloca i32
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t19 = sext i32 %t17 to i64
  %t22 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t16, i64 %t19)
  store i32 %t22, ptr %l14
  br label %bb6
bb6:
  %t23 = load i32, ptr %l14, !tbaa !23
  store i32 %t23, ptr %l4, !tbaa !23
  br label %bb13
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t29, i32 %a2)
  store i32 %t33, ptr %l19
  br label %bb11
bb11:
  %t34 = load i32, ptr %l19, !tbaa !23
  store i32 %t34, ptr %l4, !tbaa !23
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_27c62905650ee804_ddef4b1ccc198ce0)
  unreachable
bb13:
  %t35 = load i32, ptr %l4, !tbaa !23
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca i32
  %l16 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l25 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l2
  %t13 = load { i64, [2 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 1
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t19 = getelementptr { i32, i32 }, ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb4
bb3:
  br label %bb10
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l16, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l21
  br label %bb5
bb5:
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = load i32, ptr %l21, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s1, ptr %t38, i32 %t39)
  store { i64, ptr } %t40, ptr %l22
  br label %bb6
bb6:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t41, 0
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load i32, ptr %l3, !tbaa !23
  store i32 %t46, ptr %l25, !tbaa !23
  br label %bb9
bb8:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t48, ptr %l25, !tbaa !23
  br label %bb9
bb9:
  %t50 = load i32, ptr %l25, !tbaa !23
  store i32 %t50, ptr %l10, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t51, ptr %l10, !tbaa !23
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_6ec35b2a419acb72_9ad92e0ac70f122e)
  unreachable
bb15:
  %t53 = load i32, ptr %l10, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorParamAt(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l37 = alloca { i64, [3 x i64] }
  %rv = alloca { i64, [3 x i64] }
  %t43 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
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
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t7, i32 %a1)
  store i32 %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t13 = load i32, ptr %l10, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l11
  br label %bb2
bb2:
  %t15 = load i32, ptr %l11, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v0, ptr %t16, i32 %t17)
  store ptr %t20, ptr %l14
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l14, !tbaa !29
  store ptr %t21, ptr %l4, !tbaa !29
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = icmp eq ptr %t22, null
  br i1 %t24, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb6
bb5:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  store i1 %t28, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l17, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/ast:StructBody", ptr %t32, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t40 = icmp sge i64 %t31, %t37
  store i1 %t40, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l20, !tbaa !21
  br i1 %t42, label %bb10, label %bb11
bb10:
  store { i64, [3 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 0
  store i64 0, ptr %t44
  %t45 = load { i64, [3 x i64] }, ptr %t43
  store { i64, [3 x i64] } %t45, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t51, i32 %t52)
  store i64 %t55, ptr %l31
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/ast:StructBody", ptr %t56, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t67 = getelementptr %"compiler/ast:Param", ptr %t65, i32 0, i32 2
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load ptr, ptr %l27, !tbaa !29
  %t70 = load i64, ptr %l31, !tbaa !24
  %t72 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v0, ptr %t69, i64 %t70, ptr %t68)
  store { i64, [3 x i64] } %t72, ptr %l37
  br label %bb14
bb14:
  %t73 = load { i64, [3 x i64] }, ptr %l37
  store { i64, [3 x i64] } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edispatchChecks(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, %"compiler/typed:ContractInfo" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l6 = alloca %"compiler/typed:ContractInfo"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, i64, i64 }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %lp40 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l62 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l67 = alloca i32
  %l70 = alloca i64
  %l71 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l86 = alloca i32
  %l88 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i64
  %l115 = alloca i64
  %l116 = alloca ptr
  %l117 = alloca %"compiler/source:Span"
  %l118 = alloca i64
  %l119 = alloca i32
  %l120 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l122 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca ptr
  %l127 = alloca i32
  %l132 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l140 = alloca %"compiler/source:Span"
  %l141 = alloca i32
  %l143 = alloca ptr
  %l147 = alloca %"compiler/typed:Try"
  %l156 = alloca ptr
  %l162 = alloca i64
  %l173 = alloca i64
  %l177 = alloca { i64, i64, i64 }
  %l181 = alloca ptr
  %l182 = alloca %"compiler/source:Span"
  %l183 = alloca i32
  %l184 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l195 = alloca ptr
  %l196 = alloca ptr
  %l197 = alloca %"compiler/source:Span"
  %l198 = alloca ptr
  %l199 = alloca %"compiler/source:Span"
  %l203 = alloca ptr
  %l204 = alloca ptr
  %l206 = alloca %"compiler/typed:If"
  %l212 = alloca i64
  %l214 = alloca ptr
  %l218 = alloca ptr
  %l219 = alloca ptr
  %l220 = alloca %"compiler/source:Span"
  %l221 = alloca %"compiler/source:Span"
  %l222 = alloca i32
  %l223 = alloca i32
  %l224 = alloca i32
  %l228 = alloca { i64, ptr }
  %l234 = alloca ptr
  %l239 = alloca ptr
  %l241 = alloca ptr
  %l242 = alloca i64
  %l244 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l254 = alloca i64
  %l260 = alloca i64
  %l263 = alloca i64
  %l282 = alloca ptr
  %l287 = alloca ptr
  %l290 = alloca %"compiler/source:Span"
  %l291 = alloca i32
  %l292 = alloca ptr
  %l296 = alloca { i64, ptr }
  %l298 = alloca %"compiler/typed:Call"
  %l304 = alloca i1
  %l313 = alloca %"compiler/source:Span"
  %l314 = alloca i32
  %l318 = alloca { i64, ptr }
  %l319 = alloca %"compiler/typed:Seq"
  %l323 = alloca %"compiler/source:Span"
  %l324 = alloca i32
  %l328 = alloca { i64, ptr }
  %l330 = alloca %"compiler/typed:Seq"
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca ptr
  %t53 = alloca { i64, [1 x i64] }, align 8
  %t72 = alloca { i64, [3 x i64] }, align 8
  %t223 = alloca { i64, [5 x i64] }, align 8
  %t270 = alloca { i64, [3 x i64] }, align 8
  %t375 = alloca { i64, [3 x i64] }, align 8
  %t416 = alloca { i64, [5 x i64] }, align 8
  %t432 = alloca { i64, [3 x i64] }, align 8
  %t594 = alloca { i64, [5 x i64] }, align 8
  %t623 = alloca { i64, [3 x i64] }, align 8
  %t648 = alloca { i64, [5 x i64] }, align 8
  %t676 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  store %"compiler/typed:ContractInfo" %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l42
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l42, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 37
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l45
  br label %bb2
bb2:
  %t10 = load i64, ptr %l45, !tbaa !24
  store i64 %t10, ptr %l8, !tbaa !24
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l46
  br label %bb3
bb3:
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l9
  %t13 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = load i64, ptr %l12, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb27
bb6:
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t27, ptr %l54, !tbaa !27
  %t28 = load i64, ptr %l11, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  store ptr %t33, ptr %l13, !tbaa !29
  %t35 = load ptr, ptr %l13, !tbaa !29
  store ptr %t35, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t36 = load ptr, ptr %l57, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l57, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 18}
  %t42 = icmp eq i64 %t40, 0
  store i1 %t42, ptr %l58, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l58, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb14
bb12:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 -1)
  br label %bb13
bb13:
  br label %bb25
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l62, !tbaa !29
  %t46 = load ptr, ptr %l13, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t46)
  store %"compiler/source:Span" %t48, ptr %l64
  br label %bb18
bb18:
  %t49 = load ptr, ptr %l13, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t49)
  store i32 %t52, ptr %l67
  br label %bb19
bb19:
  store { i64, [1 x i64] } zeroinitializer, ptr %t53
  %t54 = getelementptr { i64, [1 x i64] }, ptr %t53, i32 0, i32 0
  store i64 0, ptr %t54
  %t55 = load { i64, [1 x i64] }, ptr %t53
  %t56 = load ptr, ptr %l62, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l64
  %t58 = load i32, ptr %l67, !tbaa !23
  %t61 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t56, i32 0, %"compiler/source:Span" %t57, i32 %t58, i32 2, { i64, [1 x i64] } %t55)
  store i64 %t61, ptr %l70
  br label %bb20
bb20:
  %t62 = load i64, ptr %l70, !tbaa !24
  store i64 %t62, ptr %l14, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l71, !tbaa !29
  %t64 = load ptr, ptr %l13, !tbaa !29
  %t66 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v2, ptr %t64)
  store %"compiler/source:Span" %t66, ptr %l73
  br label %bb21
bb21:
  %t67 = load i64, ptr %l14, !tbaa !24
  %t69 = trunc i64 %t67 to i32
  %t71 = load ptr, ptr %l13, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [3 x i64] }, ptr %t72, i32 0, i32 0
  store i64 0, ptr %t73
  %t74 = load %"compiler/source:Span", ptr %l73
  %t75 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t74, 0
  %t77 = insertvalue { %"compiler/source:Span", i32, ptr } %t75, i32 %t69, 1
  %t79 = insertvalue { %"compiler/source:Span", i32, ptr } %t77, ptr %t71, 2
  %t80 = getelementptr { i64, [3 x i64] }, ptr %t72, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t79, ptr %t80
  %t81 = load { i64, [3 x i64] }, ptr %t72
  %t83 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t81, ptr %t83
  %t84 = load ptr, ptr %l71, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t84, ptr %t83)
  br label %bb22
bb22:
  %t86 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t86)
  br label %bb23
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_27e3ab5b7d984c5a_74f0959f23b09f6e)
  unreachable
bb25:
  br label %bb26
bb26:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l11, !tbaa !24
  br label %bb4
bb27:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t96, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d0, i32 0, i32 1) }, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t98, ptr %l86
  br label %bb28
bb28:
  %t99 = load i32, ptr %l86, !tbaa !23
  store i32 %t99, ptr %l15, !tbaa !23
  store i64 0, ptr %l16, !tbaa !24
  %t100 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 2
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t100)
  store i64 %t102, ptr %l88
  br label %bb29
bb29:
  %t103 = load i64, ptr %l88, !tbaa !24
  store i64 %t103, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t104 = load i64, ptr %l17, !tbaa !24
  %t105 = load i64, ptr %l16, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t110 = load i64, ptr %l18, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb35
bb32:
  %t114 = load i64, ptr %l17, !tbaa !24
  %t115 = load i64, ptr %l16, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l18, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l18, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l95, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb34
bb34:
  %t130 = load i64, ptr %l95, !tbaa !24
  store i64 %t130, ptr %l92, !tbaa !24
  br label %bb35
bb35:
  %t131 = load i64, ptr %l92, !tbaa !24
  store i64 %t131, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb36
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t132 = load i64, ptr %l20, !tbaa !24
  %t133 = load i64, ptr %l19, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s7)
  br label %bb82
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l16, !tbaa !24
  %t141 = load i64, ptr %l20, !tbaa !24
  %t142 = load i64, ptr %l18, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  store i64 %t148, ptr %l21, !tbaa !24
  %t150 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 2
  %t151 = load i64, ptr %l21, !tbaa !24
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t150, i64 %t151)
  store i64 %t154, ptr %l115
  br label %bb40
bb40:
  %t155 = load i64, ptr %l115, !tbaa !24
  store i64 %t155, ptr %l22, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l116, !tbaa !29
  %t157 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t157, ptr %l117
  %t158 = load i64, ptr %l22, !tbaa !24
  store i64 %t158, ptr %l118, !tbaa !24
  %t159 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t159, ptr %l119, !tbaa !23
  %t160 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t160, ptr %l120, !tbaa !27
  store ptr %l9, ptr %l121, !tbaa !29
  %t161 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t161, ptr %l122
  br label %bb41
bb41:
  %t162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l122
  %t163 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %t163
  %t164 = load ptr, ptr %l116, !tbaa !29
  %t165 = load %"compiler/source:Span", ptr %l117
  %t166 = load i64, ptr %l118, !tbaa !24
  %t167 = load i32, ptr %l119, !tbaa !23
  %t168 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t169 = load ptr, ptr %l121, !tbaa !29
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyCall(ptr %v0, ptr %v2, ptr %s0, ptr %v0, ptr %v0, ptr %t164, %"compiler/source:Span" %t165, i64 %t166, i32 %t167, { i64, ptr } %t168, ptr %t169, ptr %t163)
  store ptr %t171, ptr %l124
  br label %bb42
bb42:
  %t172 = load ptr, ptr %l124, !tbaa !29
  store ptr %t172, ptr %l23, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t174 = load i64, ptr %l22, !tbaa !24
  %t177 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t173, i64 %t174)
  store i32 %t177, ptr %l127
  br label %bb43
bb43:
  %t178 = load i32, ptr %l127, !tbaa !23
  store i32 %t178, ptr %l24, !tbaa !23
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l24, !tbaa !23
  %t188 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s7, ptr %t184, i32 %t185)
  store { i64, ptr } %t188, ptr %l132
  br label %bb44
bb44:
  %t189 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  %t192 = icmp sgt i64 %t190, 0
  br i1 %t192, label %bb45, label %bb46
bb45:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleak(ptr %v0, ptr %t194, i32 %t195)
  br label %bb47
bb46:
  br label %bb53
bb47:
  %t198 = load ptr, ptr %l7, !tbaa !29
  store ptr %t198, ptr %l137, !tbaa !29
  %t199 = load ptr, ptr %l137, !tbaa !29
  %t200 = getelementptr %"compiler/check:frame", ptr %t199, i32 0, i32 16
  %t201 = load i64, ptr %t200, !tbaa !24
  %t203 = add i64 %t201, 1
  %t205 = load ptr, ptr %l137, !tbaa !29
  %t206 = getelementptr %"compiler/check:frame", ptr %t205, i32 0, i32 16
  store i64 %t203, ptr %t206, !tbaa !24
  %t207 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t207, ptr %l140
  %t208 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t208, ptr %l141, !tbaa !23
  %t209 = load ptr, ptr %l23, !tbaa !29
  store ptr %t209, ptr %l143, !tbaa !29
  %t211 = icmp sge i64 0, 0
  br i1 %t211, label %bb48, label %bb49
bb48:
  %t213 = icmp sle i64 0, 1152921504606846975
  br i1 %t213, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_4b7cfa1fb5fcb474_4538ddb4be3a0770)
  unreachable
bb50:
  %t215 = mul i64 0, 8
  %t216 = insertvalue { i64, ptr } undef, i64 0, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t218 = load ptr, ptr %l143, !tbaa !29
  %t220 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %t218, { i64, ptr } %t217, i1 false, i1 false, i1 true)
  store %"compiler/typed:Try" %t220, ptr %l147
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_4b7cfa1fb5fcb474_4538ddb4be3a0770)
  unreachable
bb52:
  %t221 = load %"compiler/typed:Try", ptr %l147
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"compiler/typed:Try" %t221, ptr %t222
  store { i64, [5 x i64] } zeroinitializer, ptr %t223
  %t224 = getelementptr { i64, [5 x i64] }, ptr %t223, i32 0, i32 0
  store i64 14, ptr %t224
  %t225 = load %"compiler/source:Span", ptr %l140
  %t226 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t225, 0
  %t227 = load i32, ptr %l141, !tbaa !23
  %t228 = insertvalue { %"compiler/source:Span", i32, ptr } %t226, i32 %t227, 1
  %t230 = insertvalue { %"compiler/source:Span", i32, ptr } %t228, ptr %t222, 2
  %t231 = getelementptr { i64, [5 x i64] }, ptr %t223, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t230, ptr %t231
  %t232 = load { i64, [5 x i64] }, ptr %t223
  %t234 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t232, ptr %t234
  store ptr %t234, ptr %l23, !tbaa !29
  br label %bb53
bb53:
  %t236 = load i32, ptr %l15, !tbaa !23
  %t237 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t240 = icmp eq i32 %t236, %t237
  br i1 %t240, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s7)
  br label %bb81
bb55:
  br label %bb56
bb56:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %t242, i32 %t243)
  br label %bb57
bb57:
  %t246 = load ptr, ptr %l7, !tbaa !29
  store ptr %t246, ptr %l156, !tbaa !29
  %t247 = load ptr, ptr %l156, !tbaa !29
  %t248 = getelementptr %"compiler/check:frame", ptr %t247, i32 0, i32 16
  %t249 = load i64, ptr %t248, !tbaa !24
  %t251 = add i64 %t249, 1
  %t253 = load ptr, ptr %l156, !tbaa !29
  %t254 = getelementptr %"compiler/check:frame", ptr %t253, i32 0, i32 16
  store i64 %t251, ptr %t254, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load %"compiler/source:Span", ptr %l1
  %t257 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t261 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t255, %"compiler/source:Span" %t256, i32 %t257)
  store i64 %t261, ptr %l162
  br label %bb58
bb58:
  %t262 = load i64, ptr %l162, !tbaa !24
  store i64 %t262, ptr %l25, !tbaa !24
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l1
  %t265 = load i64, ptr %l25, !tbaa !24
  %t267 = trunc i64 %t265 to i32
  %t269 = load ptr, ptr %l23, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t270
  %t271 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 0
  store i64 0, ptr %t271
  %t273 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t264, 0
  %t275 = insertvalue { %"compiler/source:Span", i32, ptr } %t273, i32 %t267, 1
  %t277 = insertvalue { %"compiler/source:Span", i32, ptr } %t275, ptr %t269, 2
  %t278 = getelementptr { i64, [3 x i64] }, ptr %t270, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t277, ptr %t278
  %t279 = load { i64, [3 x i64] }, ptr %t270
  %t281 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t279, ptr %t281
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t263, ptr %t281)
  br label %bb59
bb59:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/check:Checker", ptr %t284, i32 0, i32 37
  %t288 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t286)
  store i64 %t288, ptr %l173
  br label %bb60
bb60:
  %t289 = load i64, ptr %l173, !tbaa !24
  store i64 %t289, ptr %l26, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l1
  %t295 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t290, i32 1, %"compiler/source:Span" %t291)
  store { i64, i64, i64 } %t295, ptr %l177
  br label %bb61
bb61:
  %t296 = load { i64, i64, i64 }, ptr %l177
  store { i64, i64, i64 } %t296, ptr %l27
  %t297 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 0
  %t298 = load i64, ptr %t297, !tbaa !24
  store i64 %t298, ptr %l28, !tbaa !24
  %t300 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 1
  %t301 = load i64, ptr %t300, !tbaa !24
  store i64 %t301, ptr %l29, !tbaa !24
  %t303 = getelementptr { i64, i64, i64 }, ptr %l27, i32 0, i32 2
  %t304 = load i64, ptr %t303, !tbaa !24
  store i64 %t304, ptr %l30, !tbaa !24
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l181, !tbaa !29
  %t307 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t307, ptr %l182
  %t308 = load i32, ptr %l15, !tbaa !23
  store i32 %t308, ptr %l183, !tbaa !23
  %t309 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 0
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  store { i64, ptr } %t310, ptr %l184, !tbaa !27
  %t311 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 4
  %t312 = load i64, ptr %l21, !tbaa !24
  %t315 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s7, ptr %t311, i64 %t312)
  store { i64, ptr } %t315, ptr %l187
  br label %bb62
bb62:
  %t316 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t321 = add i64 %t318, %t320
  %t322 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = add i64 %t321, %t324
  %t326 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t325)
  call void @olang_textcopy(ptr %t326, ptr %t317, i64 %t318)
  %t327 = getelementptr i8, ptr %t326, i64 %t318
  call void @olang_textcopy(ptr %t327, ptr %t319, i64 %t320)
  %t328 = getelementptr i8, ptr %t327, i64 %t320
  call void @olang_textcopy(ptr %t328, ptr %t323, i64 %t324)
  %t329 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t330 = insertvalue { i64, ptr } %t329, ptr %t326, 1
  %t332 = extractvalue { i64, ptr } %t330, 0
  %t333 = extractvalue { i64, ptr } %t330, 1
  %t334 = mul i64 %t332, 1
  %t335 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t334)
  call void @llvm.memcpy.p0.p0.i64(ptr %t335, ptr %t333, i64 %t334, i1 false)
  %t336 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t335, 1
  %t338 = load ptr, ptr %l181, !tbaa !29
  %t339 = load %"compiler/source:Span", ptr %l182
  %t340 = load i32, ptr %l183, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargumentPush(ptr %v0, ptr %v0, ptr %t338, %"compiler/source:Span" %t339, i32 %t340, i64 0, { i64, ptr } %t337)
  br label %bb63
bb63:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load i64, ptr %l28, !tbaa !24
  %t344 = load i64, ptr %l29, !tbaa !24
  %t345 = load i64, ptr %l30, !tbaa !24
  %t346 = load i64, ptr %l26, !tbaa !24
  %t352 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v0, ptr %t342, i64 %t343, i64 %t344, i64 %t345, i64 %t346)
  store ptr %t352, ptr %l195
  br label %bb64
bb64:
  %t353 = load ptr, ptr %l195, !tbaa !29
  store ptr %t353, ptr %l31, !tbaa !29
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l196, !tbaa !29
  %t355 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t355, ptr %l197
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l198, !tbaa !29
  %t357 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t357, ptr %l199
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l1
  %t360 = load i64, ptr %l25, !tbaa !24
  %t364 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t358, %"compiler/source:Span" %t359, i64 %t360)
  store ptr %t364, ptr %l203
  br label %bb65
bb65:
  %t365 = load ptr, ptr %l198, !tbaa !29
  %t366 = load %"compiler/source:Span", ptr %l199
  %t367 = load ptr, ptr %l203, !tbaa !29
  %t368 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v0, ptr %v0, ptr %t365, %"compiler/source:Span" %t366, ptr %t367)
  store ptr %t368, ptr %l204
  br label %bb66
bb66:
  %t369 = load ptr, ptr %l31, !tbaa !29
  %t370 = load ptr, ptr %l204, !tbaa !29
  %t372 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t370, ptr %t369, ptr null)
  store %"compiler/typed:If" %t372, ptr %l206
  br label %bb67
bb67:
  %t373 = load %"compiler/typed:If", ptr %l206
  %t374 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store %"compiler/typed:If" %t373, ptr %t374
  store { i64, [3 x i64] } zeroinitializer, ptr %t375
  %t376 = getelementptr { i64, [3 x i64] }, ptr %t375, i32 0, i32 0
  store i64 3, ptr %t376
  %t377 = load %"compiler/source:Span", ptr %l197
  %t378 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t377, 0
  %t380 = insertvalue { %"compiler/source:Span", ptr } %t378, ptr %t374, 1
  %t381 = getelementptr { i64, [3 x i64] }, ptr %t375, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t380, ptr %t381
  %t382 = load { i64, [3 x i64] }, ptr %t375
  %t384 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t382, ptr %t384
  %t385 = load ptr, ptr %l196, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t385, ptr %t384)
  br label %bb68
bb68:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = getelementptr %"compiler/check:Checker", ptr %t387, i32 0, i32 36
  %t391 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t389)
  store i64 %t391, ptr %l212
  br label %bb69
bb69:
  %t392 = load i64, ptr %l212, !tbaa !24
  store i64 %t392, ptr %l32, !tbaa !24
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = getelementptr %"compiler/check:Checker", ptr %t393, i32 0, i32 36
  store ptr %t395, ptr %l214, !tbaa !29
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load %"compiler/source:Span", ptr %l1
  %t398 = load i64, ptr %l25, !tbaa !24
  %t402 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v0, ptr %t396, %"compiler/source:Span" %t397, i64 %t398)
  store ptr %t402, ptr %l218
  br label %bb70
bb70:
  %t403 = load ptr, ptr %l214, !tbaa !29
  %t404 = load ptr, ptr %l218, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t403, ptr %t404)
  br label %bb71
bb71:
  %t405 = load ptr, ptr %l0, !tbaa !29
  store ptr %t405, ptr %l219, !tbaa !29
  %t406 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t406, ptr %l220
  %t407 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t407, ptr %l221
  %t408 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t408, ptr %l222, !tbaa !23
  store i32 37, ptr %l223
  store i32 2, ptr %l224
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/check:Checker", ptr %t409, i32 0, i32 36
  %t412 = load i64, ptr %l32, !tbaa !24
  %t415 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t411, i64 %t412)
  store { i64, ptr } %t415, ptr %l228
  br label %bb72
bb72:
  store { i64, [5 x i64] } zeroinitializer, ptr %t416
  %t417 = getelementptr { i64, [5 x i64] }, ptr %t416, i32 0, i32 0
  store i64 9, ptr %t417
  %t418 = load %"compiler/source:Span", ptr %l221
  %t419 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } undef, %"compiler/source:Span" %t418, 0
  %t420 = load i32, ptr %l222, !tbaa !23
  %t421 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t419, i32 %t420, 1
  %t422 = load i32, ptr %l223, !range !{i32 0, i32 52}
  %t423 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t421, i32 %t422, 2
  %t424 = load i32, ptr %l224, !range !{i32 0, i32 3}
  %t425 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t423, i32 %t424, 3
  %t426 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t427 = insertvalue { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t425, { i64, ptr } %t426, 4
  %t428 = getelementptr { i64, [5 x i64] }, ptr %t416, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32, i32, { i64, ptr } } %t427, ptr %t428
  %t429 = load { i64, [5 x i64] }, ptr %t416
  %t431 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t429, ptr %t431
  store { i64, [3 x i64] } zeroinitializer, ptr %t432
  %t433 = getelementptr { i64, [3 x i64] }, ptr %t432, i32 0, i32 0
  store i64 2, ptr %t433
  %t434 = load %"compiler/source:Span", ptr %l220
  %t435 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t434, 0
  %t437 = insertvalue { %"compiler/source:Span", ptr } %t435, ptr %t431, 1
  %t438 = getelementptr { i64, [3 x i64] }, ptr %t432, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t437, ptr %t438
  %t439 = load { i64, [3 x i64] }, ptr %t432
  %t441 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t439, ptr %t441
  %t442 = load ptr, ptr %l219, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t442, ptr %t441)
  br label %bb73
bb73:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t444)
  store ptr %t446, ptr %l234
  br label %bb74
bb74:
  %t447 = load ptr, ptr %l234, !tbaa !29
  %t449 = getelementptr %"compiler/typed:Body", ptr %t447, i32 0, i32 12
  %t450 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t451 = load i32, ptr %t450, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t449, i32 %t451)
  br label %bb75
bb75:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t454)
  store ptr %t456, ptr %l239
  br label %bb76
bb76:
  %t457 = load ptr, ptr %l239, !tbaa !29
  %t459 = getelementptr %"compiler/typed:Body", ptr %t457, i32 0, i32 13
  store ptr %t459, ptr %l241, !tbaa !29
  %t460 = ptrtoint ptr %v0 to i64
  store i64 %t460, ptr %l242, !tbaa !24
  %t461 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t461, label %bb77, label %bb78
bb77:
  %t463 = call ptr @__olang_region_make(ptr %v0)
  %t464 = ptrtoint ptr %t463 to i64
  store i64 %t464, ptr %l242, !tbaa !24
  br label %bb78
bb78:
  %t465 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 0
  %t466 = load { i64, ptr }, ptr %t465, !tbaa !27
  store { i64, ptr } %t466, ptr %l244, !tbaa !27
  %t467 = getelementptr %"compiler/typed:ContractInfo", ptr %l6, i32 0, i32 4
  %t468 = load i64, ptr %l21, !tbaa !24
  %t471 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %s7, ptr %t467, i64 %t468)
  store { i64, ptr } %t471, ptr %l247
  br label %bb79
bb79:
  %t472 = load { i64, ptr }, ptr %l244, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 1
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t475 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t476 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t477 = add i64 %t474, %t476
  %t478 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = extractvalue { i64, ptr } %t478, 0
  %t481 = add i64 %t477, %t480
  %t482 = load i64, ptr %l242
  %t483 = inttoptr i64 %t482 to ptr
  %t484 = call ptr @__olang_scope_alloc(ptr %t483, i64 %t481)
  call void @olang_textcopy(ptr %t484, ptr %t473, i64 %t474)
  %t485 = getelementptr i8, ptr %t484, i64 %t474
  call void @olang_textcopy(ptr %t485, ptr %t475, i64 %t476)
  %t486 = getelementptr i8, ptr %t485, i64 %t476
  call void @olang_textcopy(ptr %t486, ptr %t479, i64 %t480)
  %t487 = insertvalue { i64, ptr } undef, i64 %t481, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t484, 1
  %t490 = load i64, ptr %l242
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = extractvalue { i64, ptr } %t488, 0
  %t493 = extractvalue { i64, ptr } %t488, 1
  %t494 = mul i64 %t492, 1
  %t495 = call ptr @__olang_scope_alloc(ptr %t491, i64 %t494)
  call void @llvm.memcpy.p0.p0.i64(ptr %t495, ptr %t493, i64 %t494, i1 false)
  %t496 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t497 = insertvalue { i64, ptr } %t496, ptr %t495, 1
  %t498 = load ptr, ptr %l241, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t498, { i64, ptr } %t497)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s7)
  br label %bb81
bb81:
  %t500 = load i64, ptr %l20, !tbaa !24
  %t502 = add i64 %t500, 1
  store i64 %t502, ptr %l20, !tbaa !24
  br label %bb36
bb82:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/check:Checker", ptr %t504, i32 0, i32 36
  %t508 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t506)
  store i64 %t508, ptr %l254
  br label %bb83
bb83:
  %t509 = load i64, ptr %l254, !tbaa !24
  store i64 %t509, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  %t510 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t510, 0
  store i64 %t512, ptr %l35, !tbaa !24
  store i64 1, ptr %l36, !tbaa !24
  %t514 = load i64, ptr %l35, !tbaa !24
  %t515 = load i64, ptr %l34, !tbaa !24
  %t518 = icmp sgt i64 %t514, %t515
  br i1 %t518, label %bb84, label %bb85
bb84:
  %t520 = load i64, ptr %l36, !tbaa !24
  %t522 = icmp sgt i64 %t520, 0
  br i1 %t522, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l260, !tbaa !24
  br label %bb89
bb86:
  %t524 = load i64, ptr %l35, !tbaa !24
  %t525 = load i64, ptr %l34, !tbaa !24
  %t528 = sub i64 %t524, %t525
  %t529 = load i64, ptr %l36, !tbaa !24
  %t532 = add i64 %t528, %t529
  %t534 = sub i64 %t532, 1
  %t535 = load i64, ptr %l36, !tbaa !24
  %t538 = sdiv i64 %t534, %t535
  store i64 %t538, ptr %l263, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l263, !tbaa !24
  br label %bb88
bb88:
  %t540 = load i64, ptr %l263, !tbaa !24
  store i64 %t540, ptr %l260, !tbaa !24
  br label %bb89
bb89:
  %t541 = load i64, ptr %l260, !tbaa !24
  store i64 %t541, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  br label %bb90
bb90:
  %t542 = load i64, ptr %l38, !tbaa !24
  %t543 = load i64, ptr %l37, !tbaa !24
  %t546 = icmp slt i64 %t542, %t543
  %t548 = xor i1 %t546, true
  br i1 %t548, label %bb91, label %bb92
bb91:
  br label %bb97
bb92:
  br label %bb93
bb93:
  %t550 = load i64, ptr %l34, !tbaa !24
  %t551 = load i64, ptr %l38, !tbaa !24
  %t552 = load i64, ptr %l36, !tbaa !24
  %t555 = mul i64 %t551, %t552
  %t558 = add i64 %t550, %t555
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = getelementptr %"compiler/check:Checker", ptr %t560, i32 0, i32 36
  store ptr %t562, ptr %l282, !tbaa !29
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t570 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArg(ptr %v0, ptr %v2, ptr %s0, ptr %v2, ptr %t563, { i64, ptr } %t564, ptr %l9, i64 %t558)
  store ptr %t570, ptr %l287
  br label %bb94
bb94:
  %t571 = load ptr, ptr %l282, !tbaa !29
  %t572 = load ptr, ptr %l287, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t571, ptr %t572)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t573 = load i64, ptr %l38, !tbaa !24
  %t575 = add i64 %t573, 1
  store i64 %t575, ptr %l38, !tbaa !24
  br label %bb90
bb97:
  %t577 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t577, ptr %l290
  %t578 = load i32, ptr %l2, !tbaa !23
  store i32 %t578, ptr %l291, !tbaa !23
  store ptr %a3, ptr %l292, !tbaa !29
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/check:Checker", ptr %t580, i32 0, i32 36
  %t583 = load i64, ptr %l33, !tbaa !24
  %t586 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t582, i64 %t583)
  store { i64, ptr } %t586, ptr %l296
  br label %bb98
bb98:
  %t588 = load ptr, ptr %l292, !tbaa !29
  %t589 = load { i64, ptr }, ptr %l296, !tbaa !27
  %t591 = call %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v1, ptr %v0, ptr %v4, ptr %t588, { i64, ptr } %t589, i32 %a5, i1 false, i1 false)
  store %"compiler/typed:Call" %t591, ptr %l298
  br label %bb99
bb99:
  %t592 = load %"compiler/typed:Call", ptr %l298
  %t593 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Call" %t592, ptr %t593
  store { i64, [5 x i64] } zeroinitializer, ptr %t594
  %t595 = getelementptr { i64, [5 x i64] }, ptr %t594, i32 0, i32 0
  store i64 6, ptr %t595
  %t596 = load %"compiler/source:Span", ptr %l290
  %t597 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t596, 0
  %t598 = load i32, ptr %l291, !tbaa !23
  %t599 = insertvalue { %"compiler/source:Span", i32, ptr } %t597, i32 %t598, 1
  %t601 = insertvalue { %"compiler/source:Span", i32, ptr } %t599, ptr %t593, 2
  %t602 = getelementptr { i64, [5 x i64] }, ptr %t594, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t601, ptr %t602
  %t603 = load { i64, [5 x i64] }, ptr %t594
  %t604 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store ptr %t604, ptr %lp40
  %t606 = load ptr, ptr %lp40
  store { i64, [5 x i64] } %t603, ptr %t606
  %t607 = load i32, ptr %l2, !tbaa !23
  %t608 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t611 = icmp eq i32 %t607, %t608
  br i1 %t611, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l304, !tbaa !21
  br label %bb102
bb101:
  %t613 = load i32, ptr %l2, !tbaa !23
  %t614 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t617 = icmp eq i32 %t613, %t614
  store i1 %t617, ptr %l304, !tbaa !21
  br label %bb102
bb102:
  %t619 = load i1, ptr %l304, !tbaa !21
  br i1 %t619, label %bb103, label %bb104
bb103:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t621 = load %"compiler/source:Span", ptr %l1
  %t622 = load ptr, ptr %lp40
  store { i64, [3 x i64] } zeroinitializer, ptr %t623
  %t624 = getelementptr { i64, [3 x i64] }, ptr %t623, i32 0, i32 0
  store i64 2, ptr %t624
  %t626 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t621, 0
  %t628 = insertvalue { %"compiler/source:Span", ptr } %t626, ptr %t622, 1
  %t629 = getelementptr { i64, [3 x i64] }, ptr %t623, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t628, ptr %t629
  %t630 = load { i64, [3 x i64] }, ptr %t623
  %t632 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t630, ptr %t632
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t620, ptr %t632)
  br label %bb105
bb104:
  br label %bb108
bb105:
  %t635 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t635, ptr %l313
  %t636 = load i32, ptr %l2, !tbaa !23
  store i32 %t636, ptr %l314, !tbaa !23
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t639 = getelementptr %"compiler/check:Checker", ptr %t637, i32 0, i32 37
  %t640 = load i64, ptr %l8, !tbaa !24
  %t643 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t639, i64 %t640)
  store { i64, ptr } %t643, ptr %l318
  br label %bb106
bb106:
  %t644 = load { i64, ptr }, ptr %l318, !tbaa !27
  %t645 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v4, ptr %v4, { i64, ptr } %t644, ptr null, i1 false)
  store %"compiler/typed:Seq" %t645, ptr %l319
  br label %bb107
bb107:
  %t646 = load %"compiler/typed:Seq", ptr %l319
  %t647 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Seq" %t646, ptr %t647
  store { i64, [5 x i64] } zeroinitializer, ptr %t648
  %t649 = getelementptr { i64, [5 x i64] }, ptr %t648, i32 0, i32 0
  store i64 12, ptr %t649
  %t650 = load %"compiler/source:Span", ptr %l313
  %t651 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t650, 0
  %t652 = load i32, ptr %l314, !tbaa !23
  %t653 = insertvalue { %"compiler/source:Span", i32, ptr } %t651, i32 %t652, 1
  %t655 = insertvalue { %"compiler/source:Span", i32, ptr } %t653, ptr %t647, 2
  %t656 = getelementptr { i64, [5 x i64] }, ptr %t648, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t655, ptr %t656
  %t657 = load { i64, [5 x i64] }, ptr %t648
  %t659 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t657, ptr %t659
  call void @__olang_scope_close(ptr %s0)
  store ptr %t659, ptr %rv
  br label %ret
bb108:
  %t661 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t661, ptr %l323
  %t662 = load i32, ptr %l2, !tbaa !23
  store i32 %t662, ptr %l324, !tbaa !23
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t665 = getelementptr %"compiler/check:Checker", ptr %t663, i32 0, i32 37
  %t666 = load i64, ptr %l8, !tbaa !24
  %t669 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t665, i64 %t666)
  store { i64, ptr } %t669, ptr %l328
  br label %bb109
bb109:
  %t670 = load ptr, ptr %lp40
  %t671 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t673 = call %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v4, ptr %v4, { i64, ptr } %t671, ptr %t670, i1 false)
  store %"compiler/typed:Seq" %t673, ptr %l330
  br label %bb110
bb110:
  %t674 = load %"compiler/typed:Seq", ptr %l330
  %t675 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Seq" %t674, ptr %t675
  store { i64, [5 x i64] } zeroinitializer, ptr %t676
  %t677 = getelementptr { i64, [5 x i64] }, ptr %t676, i32 0, i32 0
  store i64 12, ptr %t677
  %t678 = load %"compiler/source:Span", ptr %l323
  %t679 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t678, 0
  %t680 = load i32, ptr %l324, !tbaa !23
  %t681 = insertvalue { %"compiler/source:Span", i32, ptr } %t679, i32 %t680, 1
  %t683 = insertvalue { %"compiler/source:Span", i32, ptr } %t681, ptr %t675, 2
  %t684 = getelementptr { i64, [5 x i64] }, ptr %t676, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t683, ptr %t684
  %t685 = load { i64, [5 x i64] }, ptr %t676
  %t687 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t685, ptr %t687
  call void @__olang_scope_close(ptr %s0)
  store ptr %t687, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egrowViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t5, i64 %t6)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l11
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb5, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l10
  br label %bb4
bb4:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l7, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t15 = load i64, ptr %l7, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = or i64 %t16, %t17
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp eq i64 %t20, %t21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = or i64 %t28, %t29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v1, ptr %t26, i64 %t27, i64 %t32)
  br label %bb11
bb11:
  %t38 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 76
  store i1 true, ptr %t38, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einGeneric(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca ptr
  %l5 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = getelementptr %"compiler/check:frame", ptr %t4, i32 0, i32 4
  %t7 = getelementptr %"compiler/generic:Context", ptr %t6, i32 0, i32 2
  %t9 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBool(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %a1)
  store i32 %t4, ptr %l7
  br label %bb1
bb1:
  %t5 = load i32, ptr %l7, !tbaa !23
  store i32 %t5, ptr %l4, !tbaa !23
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t10 = icmp eq i32 %t6, %t7
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l4, !tbaa !23
  %t13 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t16 = icmp eq i32 %t12, %t13
  store i1 %t16, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  store %"compiler/source:Span" %a2, ptr %l17
  store { i64, ptr } %a3, ptr %l18, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store { i64, ptr } %t27, ptr %l21
  br label %bb8
bb8:
  %t28 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  %t35 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v2, ptr %v0, ptr %v0, { i64, ptr } %t35, { i64, ptr } %t34)
  store %"compiler/diagmsg:Msg" %t37, ptr %l23
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l16, !tbaa !29
  %t39 = load %"compiler/source:Span", ptr %l17
  %t40 = load %"compiler/diagmsg:Msg", ptr %l23
  %t41 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t38, %"compiler/source:Span" %t39, %"compiler/diagmsg:Msg" %t40)
  store i64 %t41, ptr %l24
  br label %bb10
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/check:litv"
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l14 = alloca %"compiler/check:litv"
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l46 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t13 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t8, ptr %t9)
  store %"compiler/check:litv" %t13, ptr %l14
  br label %bb4
bb4:
  %t14 = load %"compiler/check:litv", ptr %l14
  store %"compiler/check:litv" %t14, ptr %l3
  %t15 = getelementptr %"compiler/check:litv", ptr %l3, i32 0, i32 0
  %t16 = load i1, ptr %t15, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load %"compiler/check:litv", ptr %l3
  %t20 = load i32, ptr %l2, !tbaa !23
  %t24 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %t18, %"compiler/check:litv" %t19, i32 %t20)
  store i1 %t24, ptr %l19
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t25 = load i1, ptr %l19, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
bb8:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t27 = load ptr, ptr %l20, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 30}
  %t33 = icmp eq i64 %t31, 2
  store i1 %t33, ptr %l21, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr }, ptr %t37, i32 0, i32 1
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i32, ptr %l2, !tbaa !23
  %t47 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %t41, ptr %t42, i32 %t43)
  store i1 %t47, ptr %l29
  br label %bb14
bb14:
  %t48 = load i1, ptr %l29, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
bb15:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 30}
  %t56 = icmp eq i64 %t54, 8
  store i1 %t56, ptr %l31, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l5, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t66, i32 0, i32 3
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l6, !tbaa !29
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t72 = load i32, ptr %l2, !tbaa !23
  %t76 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %t70, ptr %t71, i32 %t72)
  store i1 %t76, ptr %l41
  br label %bb21
bb21:
  %t77 = load i1, ptr %l41, !tbaa !21
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t80 = load i32, ptr %l2, !tbaa !23
  %t84 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitLikeFits(ptr %v0, ptr %v1, ptr %t78, ptr %t79, i32 %t80)
  store i1 %t84, ptr %l46
  br label %bb24
bb23:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb25
bb24:
  %t85 = load i1, ptr %l46, !tbaa !21
  store i1 %t85, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t86 = load i1, ptr %l42, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i1 false, ptr %rv
  br label %ret
bb30:
  call void @__olang_check_failed(ptr @olang_loc_4be822f0c0d0de23_1d47e77fc9d2ed77)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l39 = alloca %"compiler/check:litv"
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  store i1 %t35, ptr %l20
  br label %bb10
bb10:
  %t36 = load i1, ptr %l20, !tbaa !21
  store i1 %t36, ptr %l5, !tbaa !21
  br label %bb28
bb11:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 30}
  %t44 = icmp eq i64 %t42, 5
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l3, !tbaa !29
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t54, i32 0, i32 3
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb16
bb15:
  br label %bb22
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t58, ptr %t59)
  store i1 %t62, ptr %l31
  br label %bb17
bb17:
  %t63 = load i1, ptr %l31, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb21
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t68 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitU64(ptr %v0, ptr %v1, ptr %t64, ptr %t65)
  store i1 %t68, ptr %l35
  br label %bb20
bb20:
  %t69 = load i1, ptr %l35, !tbaa !21
  store i1 %t69, ptr %l32, !tbaa !21
  br label %bb21
bb21:
  %t70 = load i1, ptr %l32, !tbaa !21
  store i1 %t70, ptr %l5, !tbaa !21
  br label %bb28
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t76 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t71, ptr %t72)
  store %"compiler/check:litv" %t76, ptr %l39
  br label %bb26
bb26:
  %t77 = getelementptr %"compiler/check:litv", ptr %l39, i32 0, i32 2
  %t78 = load i1, ptr %t77, !tbaa !21
  store i1 %t78, ptr %l5, !tbaa !21
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_a9a2c4034b6e08dd_84116590a5e4e601)
  unreachable
bb28:
  %t80 = load i1, ptr %l5, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l21 = alloca %"compiler/typed:Local"
  %l22 = alloca i32
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i32
  %l35 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i32
  %l41 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l50 = alloca i32
  %l53 = alloca i1
  %l57 = alloca %"compiler/generic:Desc"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  store ptr %t4, ptr %l6, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t5)
  store ptr %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l6, !tbaa !29
  %t13 = getelementptr %"compiler/check:frame", ptr %t11, i32 0, i32 7
  %t14 = load i64, ptr %t13, !tbaa !24
  %t16 = trunc i64 %t14 to i32
  %t26 = call %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %s0, i32 %t8, %"compiler/source:Span" %a2, i32 %t10, i32 %t16, i32 %a4, { i64, [1 x i64] } %a5)
  store %"compiler/typed:Local" %t26, ptr %l21
  br label %bb3
bb3:
  %t27 = load ptr, ptr %l11, !tbaa !29
  %t28 = load %"compiler/typed:Local", ptr %l21
  %t29 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %t27, %"compiler/typed:Local" %t28)
  store i32 %t29, ptr %l22
  br label %bb4
bb4:
  %t30 = load i32, ptr %l22, !tbaa !23
  %t31 = sext i32 %t30 to i64
  store i64 %t31, ptr %l7, !tbaa !24
  %t33 = load i32, ptr %l1, !tbaa !23
  %t35 = icmp ne i32 %t33, 0
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t41, ptr %l29
  br label %bb7
bb6:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb9
bb7:
  %t42 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t42, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t43, ptr %l30
  br label %bb8
bb8:
  %t44 = load i1, ptr %l30, !tbaa !21
  %t45 = xor i1 %t44, true
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t47 = load i1, ptr %l26, !tbaa !21
  br i1 %t47, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = getelementptr %"compiler/check:frame", ptr %t48, i32 0, i32 9
  store ptr %t50, ptr %l33, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  store i32 %t51, ptr %l34, !tbaa !23
  %t52 = load ptr, ptr %l6, !tbaa !29
  %t54 = getelementptr %"compiler/check:frame", ptr %t52, i32 0, i32 8
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t54, i32 %t55)
  %t59 = extractvalue { i32, i64 } %t58, 1
  %t60 = extractvalue { i32, i64 } %t58, 0
  store i32 %t60, ptr %l40
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb13, label %ok.62, !prof !99
ok.62:
  store i64 %t59, ptr %l39
  br label %bb12
bb11:
  br label %bb28
bb12:
  %t63 = load i64, ptr %l39, !tbaa !24
  store i64 %t63, ptr %l35, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l35, !tbaa !24
  br label %bb15
bb15:
  %t64 = load i32, ptr %l34, !tbaa !23
  %t65 = load i64, ptr %l35, !tbaa !24
  %t66 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s1, i32 %t64, i64 %t65)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t66, ptr %l41
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l33, !tbaa !29
  %t68 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l41
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %t67, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t68)
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t71 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 8
  %t72 = load i32, ptr %l1, !tbaa !23
  %t73 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t71, i32 %t72, i64 %t73)
  br label %bb18
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l3, !tbaa !23
  %t86 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t82, i32 %t83)
  store i32 %t86, ptr %l50
  br label %bb19
bb19:
  %t87 = load i32, ptr %l50, !range !{i32 0, i32 33}
  %t89 = trunc i64 18 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i32, ptr %l3, !tbaa !23
  %t99 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t95, i32 %t96)
  store %"compiler/generic:Desc" %t99, ptr %l57
  br label %bb22
bb21:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  %t100 = getelementptr %"compiler/generic:Desc", ptr %l57, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescNone, !tbaa !24
  %t105 = icmp ne i64 %t101, %t102
  store i1 %t105, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t107 = load i1, ptr %l53, !tbaa !21
  br i1 %t107, label %bb24, label %bb25
bb24:
  %t108 = load ptr, ptr %l6, !tbaa !29
  %t110 = getelementptr %"compiler/check:frame", ptr %t108, i32 0, i32 4
  %t111 = getelementptr %"compiler/generic:Context", ptr %t110, i32 0, i32 3
  %t112 = load i32, ptr %l1, !tbaa !23
  %t113 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %t111, i32 %t112, i32 %t113)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  br label %bb28
bb28:
  %t117 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t117, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emarkAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i1
  %l21 = alloca %"compiler/source:Span"
  %l27 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l45 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i64
  %l60 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca i64
  %l104 = alloca { i64, ptr }
  %l113 = alloca ptr
  %l133 = alloca ptr
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, [3 x i64] }
  %t10 = alloca { i64, [3 x i64] }, align 8
  %t129 = alloca { i64, [3 x i64] }, align 8
  %t245 = alloca { i64, [3 x i64] }, align 8
  %t285 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
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
  store i1 true, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l16, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store { i64, [3 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 0
  store i64 0, ptr %t11
  %t12 = load { i64, [3 x i64] }, ptr %t10
  call void @__olang_scope_close(ptr %s0)
  store { i64, [3 x i64] } %t12, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l2, !tbaa !29
  %t16 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t14)
  store %"compiler/source:Span" %t16, ptr %l21
  br label %bb7
bb7:
  %t17 = load %"compiler/source:Span", ptr %l21
  store %"compiler/source:Span" %t17, ptr %l3
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/load:Loader", ptr %t24, i32 0, i32 10
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t26, i64 %t27)
  store ptr %t30, ptr %l27
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l27, !tbaa !29
  %t33 = getelementptr %"compiler/load:Module", ptr %t31, i32 0, i32 6
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l4, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = icmp eq ptr %t36, null
  br i1 %t38, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9eba0537152ec68c_48ed4257e6d07438)
  unreachable
bb10:
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t43 = getelementptr %"compiler/source:Source", ptr %t40, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l34, !tbaa !27
  %t45 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = sext i32 %t46 to i64
  store i64 %t48, ptr %l36, !tbaa !24
  %t49 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t50 = load i32, ptr %t49, !tbaa !23
  %t52 = sext i32 %t50 to i64
  store i64 %t52, ptr %l38, !tbaa !24
  %t53 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l39, !tbaa !24
  %t55 = load i64, ptr %l36, !tbaa !24
  %t56 = icmp sge i64 %t55, 0
  br i1 %t56, label %bb12, label %bb13
bb12:
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = load i64, ptr %l38, !tbaa !24
  %t60 = icmp sle i64 %t58, %t59
  br i1 %t60, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_cd7c953a3f1af3d1_dcd21a8e35cf56dd)
  unreachable
bb14:
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = load i64, ptr %l39, !tbaa !24
  %t64 = icmp sle i64 %t62, %t63
  br i1 %t64, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_cd7c953a3f1af3d1_dcd21a8e35cf56dd)
  unreachable
bb16:
  %t66 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l36, !tbaa !24
  %t69 = load i64, ptr %l38, !tbaa !24
  %t70 = getelementptr i8, ptr %t67, i64 %t68
  %t71 = sub i64 %t69, %t68
  %t72 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  store { i64, ptr } %t73, ptr %l5, !tbaa !27
  %t75 = load ptr, ptr %l2, !tbaa !29
  %t77 = call i1 @compiler_2fcheck_2erefWrittenTop(ptr %v1, ptr %t75)
  store i1 %t77, ptr %l45
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_cd7c953a3f1af3d1_dcd21a8e35cf56dd)
  unreachable
bb18:
  %t78 = load i1, ptr %l45, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v1, ptr %t79)
  store i1 %t81, ptr %l48
  br label %bb21
bb20:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb22
bb21:
  %t82 = load i1, ptr %l48, !tbaa !21
  store i1 %t82, ptr %l46, !tbaa !21
  br label %bb22
bb22:
  %t83 = load i1, ptr %l46, !tbaa !21
  br i1 %t83, label %bb23, label %bb24
bb23:
  %t84 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t86 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t84, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t86, ptr %l51
  br label %bb25
bb24:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb26
bb25:
  %t87 = load i1, ptr %l51, !tbaa !21
  store i1 %t87, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t88 = load i1, ptr %l49, !tbaa !21
  br i1 %t88, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s2
  %t89 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s2, { i64, ptr } %t89, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t91, ptr %l53
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t92 = load i1, ptr %l53, !tbaa !21
  br i1 %t92, label %bb30, label %bb31
bb30:
  store i64 3, ptr %l54, !tbaa !24
  br label %bb32
bb31:
  store i64 2, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t93 = load i64, ptr %l54, !tbaa !24
  store i64 %t93, ptr %l6, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/load:Loader", ptr %t100, i32 0, i32 10
  %t103 = load i64, ptr %l1, !tbaa !24
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t102, i64 %t103)
  store ptr %t106, ptr %l60
  br label %bb33
bb33:
  %t107 = load ptr, ptr %l60, !tbaa !29
  %t109 = getelementptr %"compiler/load:Module", ptr %t107, i32 0, i32 4
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = sext i32 %t112 to i64
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t119 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t120 = load i32, ptr %t119, !tbaa !23
  %t122 = sext i32 %t120 to i64
  %t123 = load i64, ptr %l6, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = add i64 %t126, 1
  store { i64, [3 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 0
  store i64 3, ptr %t130
  %t132 = insertvalue { i64, i64, i64 } undef, i64 %t110, 0
  %t134 = insertvalue { i64, i64, i64 } %t132, i64 %t118, 1
  %t136 = insertvalue { i64, i64, i64 } %t134, i64 %t128, 2
  %t137 = getelementptr { i64, [3 x i64] }, ptr %t129, i32 0, i32 1
  store { i64, i64, i64 } %t136, ptr %t137
  %t138 = load { i64, [3 x i64] }, ptr %t129
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [3 x i64] } %t138, ptr %rv
  br label %ret
bb34:
  store i64 0, ptr %l7, !tbaa !24
  %t140 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t140, 0
  store i64 %t142, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load i64, ptr %l7, !tbaa !24
  %t148 = icmp sgt i64 %t144, %t145
  br i1 %t148, label %bb35, label %bb36
bb35:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l78, !tbaa !24
  br label %bb40
bb37:
  %t154 = load i64, ptr %l8, !tbaa !24
  %t155 = load i64, ptr %l7, !tbaa !24
  %t158 = sub i64 %t154, %t155
  %t159 = load i64, ptr %l9, !tbaa !24
  %t162 = add i64 %t158, %t159
  %t164 = sub i64 %t162, 1
  %t165 = load i64, ptr %l9, !tbaa !24
  %t168 = sdiv i64 %t164, %t165
  store i64 %t168, ptr %l81, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l81, !tbaa !24
  br label %bb39
bb39:
  %t170 = load i64, ptr %l81, !tbaa !24
  store i64 %t170, ptr %l78, !tbaa !24
  br label %bb40
bb40:
  %t171 = load i64, ptr %l78, !tbaa !24
  store i64 %t171, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  %t172 = load i64, ptr %l11, !tbaa !24
  %t173 = load i64, ptr %l10, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb42, label %bb43
bb42:
  br label %bb50
bb43:
  br label %bb44
bb44:
  %t180 = load i64, ptr %l7, !tbaa !24
  %t181 = load i64, ptr %l11, !tbaa !24
  %t182 = load i64, ptr %l9, !tbaa !24
  %t185 = mul i64 %t181, %t182
  %t188 = add i64 %t180, %t185
  %t190 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t194 = sub i64 %t192, 1
  %t198 = sub i64 %t194, %t188
  store i64 %t198, ptr %l13, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t200, ptr %l104, !tbaa !27
  %t201 = load i64, ptr %l13, !tbaa !24
  %t203 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = getelementptr i8, ptr %t204, i64 %t201
  %t206 = load i8, ptr %t205, !tbaa !32
  %t208 = icmp eq i8 %t206, 38
  br i1 %t208, label %bb45, label %bb46
bb45:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/check:Checker", ptr %t210, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !29
  %t215 = getelementptr %"compiler/generic:Program", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t218 = getelementptr %"compiler/load:Loader", ptr %t216, i32 0, i32 10
  %t219 = load i64, ptr %l1, !tbaa !24
  %t222 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t218, i64 %t219)
  store ptr %t222, ptr %l113
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t223 = load ptr, ptr %l113, !tbaa !29
  %t225 = getelementptr %"compiler/load:Module", ptr %t223, i32 0, i32 4
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t228 = load i32, ptr %t227, !tbaa !23
  %t230 = sext i32 %t228 to i64
  %t231 = load i64, ptr %l13, !tbaa !24
  %t234 = add i64 %t230, %t231
  %t235 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t236 = load i32, ptr %t235, !tbaa !23
  %t238 = sext i32 %t236 to i64
  %t239 = load i64, ptr %l13, !tbaa !24
  %t242 = add i64 %t238, %t239
  %t244 = add i64 %t242, 1
  store { i64, [3 x i64] } zeroinitializer, ptr %t245
  %t246 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 0
  store i64 3, ptr %t246
  %t248 = insertvalue { i64, i64, i64 } undef, i64 %t226, 0
  %t250 = insertvalue { i64, i64, i64 } %t248, i64 %t234, 1
  %t252 = insertvalue { i64, i64, i64 } %t250, i64 %t244, 2
  %t253 = getelementptr { i64, [3 x i64] }, ptr %t245, i32 0, i32 1
  store { i64, i64, i64 } %t252, ptr %t253
  %t254 = load { i64, [3 x i64] }, ptr %t245
  call void @__olang_scope_close(ptr %s0)
  store { i64, [3 x i64] } %t254, ptr %rv
  br label %ret
bb48:
  br label %bb49
bb49:
  %t256 = load i64, ptr %l11, !tbaa !24
  %t258 = add i64 %t256, 1
  store i64 %t258, ptr %l11, !tbaa !24
  br label %bb41
bb50:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = getelementptr %"compiler/check:Checker", ptr %t260, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !29
  %t265 = getelementptr %"compiler/generic:Program", ptr %t263, i32 0, i32 0
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = getelementptr %"compiler/load:Loader", ptr %t266, i32 0, i32 10
  %t269 = load i64, ptr %l1, !tbaa !24
  %t272 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t268, i64 %t269)
  store ptr %t272, ptr %l133
  br label %bb51
bb51:
  %t273 = load ptr, ptr %l133, !tbaa !29
  %t275 = getelementptr %"compiler/load:Module", ptr %t273, i32 0, i32 4
  %t276 = load i64, ptr %t275, !tbaa !24
  %t277 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t278 = load i32, ptr %t277, !tbaa !23
  %t280 = sext i32 %t278 to i64
  %t281 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t282 = load i32, ptr %t281, !tbaa !23
  %t284 = sext i32 %t282 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [3 x i64] }, ptr %t285, i32 0, i32 0
  store i64 3, ptr %t286
  %t288 = insertvalue { i64, i64, i64 } undef, i64 %t276, 0
  %t290 = insertvalue { i64, i64, i64 } %t288, i64 %t280, 1
  %t292 = insertvalue { i64, i64, i64 } %t290, i64 %t284, 2
  %t293 = getelementptr { i64, [3 x i64] }, ptr %t285, i32 0, i32 1
  store { i64, i64, i64 } %t292, ptr %t293
  %t294 = load { i64, [3 x i64] }, ptr %t285
  call void @__olang_scope_close(ptr %s0)
  store { i64, [3 x i64] } %t294, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [3 x i64] }, ptr %rv
  ret { i64, [3 x i64] } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ematchElse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, i1 %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i1
  %l31 = alloca ptr
  %l35 = alloca i32
  %l39 = alloca { i64, ptr }
  %l40 = alloca %"compiler/typed:Block"
  %l42 = alloca %"compiler/source:Span"
  %l47 = alloca %"compiler/typed:Arm"
  %rv = alloca ptr
  %t19 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 37
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l7, !tbaa !24
  %t7 = load i1, ptr %l5, !tbaa !21
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  %t9 = load i1, ptr %l6, !tbaa !21
  store i1 %t9, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l13, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 37
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Match", ptr %t15, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  store { i64, [3 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 0
  store i64 9, ptr %t20
  %t22 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t18, 0
  %t24 = insertvalue { %"compiler/source:Span", i32, ptr } %t22, i32 0, 1
  %t25 = insertvalue { %"compiler/source:Span", i32, ptr } %t24, ptr null, 2
  %t26 = getelementptr { i64, [3 x i64] }, ptr %t19, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t25, ptr %t26
  %t27 = load { i64, [3 x i64] }, ptr %t19
  %t29 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t27, ptr %t29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t14, ptr %t29)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t32 = load i1, ptr %l5, !tbaa !21
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t41 = load i1, ptr %l6, !tbaa !21
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esayUncovered(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t36, ptr %t37, i32 %a2, ptr %a3, ptr %a4, i1 %t41)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t48)
  store ptr %t50, ptr %l31
  br label %bb13
bb13:
  %t51 = load ptr, ptr %l31, !tbaa !29
  %t53 = getelementptr %"compiler/check:frame", ptr %t51, i32 0, i32 7
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = trunc i64 %t54 to i32
  store i32 %t56, ptr %l35, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 37
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t60, i64 %t61)
  store { i64, ptr } %t64, ptr %l39
  br label %bb14
bb14:
  %t65 = load i32, ptr %l35, !tbaa !23
  %t66 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t67 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v4, i32 %t65, { i64, ptr } %t66)
  store %"compiler/typed:Block" %t67, ptr %l40
  br label %bb15
bb15:
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 24, i64 8)
  store ptr %t68, ptr %lp8
  %t69 = load %"compiler/typed:Block", ptr %l40
  %t70 = load ptr, ptr %lp8
  store %"compiler/typed:Block" %t69, ptr %t70
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Match", ptr %t71, i32 0, i32 0
  %t74 = load %"compiler/source:Span", ptr %t73
  store %"compiler/source:Span" %t74, ptr %l42
  %t75 = icmp sge i64 0, 0
  br i1 %t75, label %bb16, label %bb17
bb16:
  %t77 = icmp sle i64 0, 1152921504606846975
  br i1 %t77, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_3cc47694b244d9ce_439392ee5cdf31e2)
  unreachable
bb18:
  %t79 = mul i64 0, 8
  %t80 = insertvalue { i64, ptr } undef, i64 0, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t82 = load ptr, ptr %lp8
  %t83 = load %"compiler/source:Span", ptr %l42
  %t86 = call %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, ptr %v4, %"compiler/source:Span" %t83, { i64, ptr } %t81, ptr null, ptr %t82, ptr null)
  store %"compiler/typed:Arm" %t86, ptr %l47
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_3cc47694b244d9ce_439392ee5cdf31e2)
  unreachable
bb20:
  %t87 = load %"compiler/typed:Arm", ptr %l47
  %t88 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store %"compiler/typed:Arm" %t87, ptr %t88
  store ptr %t88, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enestedBranches(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l24 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
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
  store i1 true, ptr %l13, !tbaa !21
  br label %bb4
bb2:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2edirectSet(ptr %v1, { i64, ptr } %t7, i32 %t8)
  store i1 %t11, ptr %l16
  br label %bb3
bb3:
  %t12 = load i1, ptr %l16, !tbaa !21
  store i1 %t12, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l13, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = load i64, ptr %l7, !tbaa !24
  %t24 = icmp slt i64 %t20, %t21
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t28 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t28, ptr %l24, !tbaa !27
  %t29 = load i64, ptr %l6, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr ptr, ptr %t32, i64 %t29
  %t34 = load ptr, ptr %t33, !tbaa !39
  store ptr %t34, ptr %l8, !tbaa !29
  %t36 = load ptr, ptr %l8, !tbaa !29
  store ptr %t36, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t37 = load ptr, ptr %l27, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l27, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 11}
  %t43 = icmp eq i64 %t41, 7
  store i1 %t43, ptr %l28, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l8, !tbaa !29
  %t47 = getelementptr { i64, [8 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l9, !tbaa !29
  br label %bb16
bb15:
  br label %bb26
bb16:
  %t51 = load ptr, ptr %l9, !tbaa !29
  %t52 = load i32, ptr %l3, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2echainSets(ptr %v1, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l35
  br label %bb17
bb17:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %l9, !tbaa !29
  %t58 = load i32, ptr %l3, !tbaa !23
  %t61 = call i1 @compiler_2fcheck_2echainAssignsAll(ptr %v1, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l39
  br label %bb20
bb19:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb21
bb20:
  %t62 = load i1, ptr %l39, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t65 = load i1, ptr %l36, !tbaa !21
  br i1 %t65, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t69 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %t68, i32 %t69, i32 %a4)
  br label %bb24
bb23:
  br label %bb25
bb24:
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
  call void @__olang_check_failed(ptr @olang_loc_8db10e524bac21a2_ad831be9185e1396)
  unreachable
bb31:
  br label %bb32
bb32:
  %t76 = load i64, ptr %l6, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l6, !tbaa !24
  br label %bb8
bb33:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperandParam(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca i64
  %l30 = alloca i32
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca i32
  %l54 = alloca { i64, ptr }
  %l56 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
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
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t10, i64 %t11)
  store i32 %t14, ptr %l11
  br label %bb4
bb4:
  %t15 = load i32, ptr %l11, !tbaa !23
  store i32 %t15, ptr %l3, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l14, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l19
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l14, !tbaa !29
  %t33 = load i32, ptr %l19, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l20
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  store ptr %t39, ptr %l22, !tbaa !29
  %t40 = load i64, ptr %l1, !tbaa !24
  %t42 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t40)
  store i64 %t42, ptr %l24
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l22, !tbaa !29
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t43, i64 %t44)
  store i64 %t45, ptr %l25
  br label %bb8
bb8:
  %t46 = load i64, ptr %l25, !tbaa !24
  %t47 = icmp sgt i64 %t46, 0
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t55 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimplSig(ptr %v0, ptr %t49, i64 %t50, i32 %a2)
  store i32 %t55, ptr %l30
  br label %bb11
bb10:
  br label %bb21
bb11:
  %t56 = load i32, ptr %l30, !tbaa !23
  store i32 %t56, ptr %l3, !tbaa !23
  %t57 = load i32, ptr %l3, !tbaa !23
  %t58 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t61 = icmp eq i32 %t57, %t58
  br i1 %t61, label %bb12, label %bb13
bb12:
  %t63 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t63, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  store ptr %t70, ptr %l37, !tbaa !29
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/generic:Program", ptr %t74, i32 0, i32 2
  %t77 = load i32, ptr %l3, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l42
  br label %bb15
bb15:
  %t81 = load ptr, ptr %l37, !tbaa !29
  %t82 = load i32, ptr %l42, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l43
  br label %bb16
bb16:
  %t84 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t84, ptr %l4, !tbaa !27
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  %t92 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 1
  %t95 = load i32, ptr %t94, !tbaa !33
  %t98 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t90, i32 %t95)
  store i32 %t98, ptr %l49
  br label %bb17
bb17:
  %t99 = load i32, ptr %l49, !range !{i32 0, i32 33}
  %t101 = trunc i64 25 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb18, label %bb19
bb18:
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t104, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t107, ptr %l54, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr i32, ptr %t109, i64 1
  %t111 = load i32, ptr %t110, !tbaa !33
  %t114 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t106, i32 %t111)
  store i32 %t114, ptr %l56
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t115 = load i32, ptr %l56, !tbaa !23
  store i32 %t115, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedStruct(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  %l30 = alloca i32
  %l34 = alloca i1
  %l39 = alloca i1
  %l42 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca { i64, ptr }
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l59 = alloca i64
  %l78 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l87 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca i64
  %l92 = alloca i64
  %l94 = alloca %"compiler/source:Span"
  %l97 = alloca %"compiler/source:Span"
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l106 = alloca %"compiler/diagmsg:Msg"
  %l107 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:StructBody", ptr %t1, i32 0, i32 4
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l18, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/ast:StructBody", ptr %t11, i32 0, i32 3
  %t14 = getelementptr %"compiler/source:Span", ptr %t13, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/ast:StructBody", ptr %t16, i32 0, i32 3
  %t19 = getelementptr %"compiler/source:Span", ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19, !tbaa !23
  %t22 = add i32 %t20, 8
  %t25 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t15, i32 %t22)
  store %"compiler/source:Span" %t25, ptr %l24
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t26 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedDestruct(ptr %v0)
  store %"compiler/diagmsg:Msg" %t26, ptr %l25
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l24
  %t29 = load %"compiler/diagmsg:Msg", ptr %l25
  %t30 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t27, %"compiler/source:Span" %t28, %"compiler/diagmsg:Msg" %t29)
  store i64 %t30, ptr %l26
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t38 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t34, i32 %a3)
  store i32 %t38, ptr %l30
  br label %bb7
bb7:
  %t39 = load i32, ptr %l30, !tbaa !23
  store i32 %t39, ptr %l4, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t43, i32 %t44)
  store i1 %t47, ptr %l34
  br label %bb8
bb8:
  %t48 = load i1, ptr %l34, !tbaa !21
  %t49 = xor i1 %t48, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t55 = load i32, ptr %l4, !tbaa !23
  %t58 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l39
  br label %bb12
bb12:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  store ptr %t64, ptr %l42, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l4, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l47
  br label %bb13
bb13:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i32, ptr %l47, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t75, i32 %t76)
  store { i64, ptr } %t77, ptr %l48
  br label %bb14
bb14:
  %t78 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t78, ptr %l5, !tbaa !27
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v1, ptr %s0, ptr %t79)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t81, ptr %l50
  br label %bb15
bb15:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  store i64 %t85, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb21
bb18:
  %t97 = load i64, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l7, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l9, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l59, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t113 = load i64, ptr %l59, !tbaa !24
  store i64 %t113, ptr %l56, !tbaa !24
  br label %bb21
bb21:
  %t114 = load i64, ptr %l56, !tbaa !24
  store i64 %t114, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t115 = load i64, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l10, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb24:
  br label %bb25
bb25:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l12, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t134, ptr %l78, !tbaa !27
  %t135 = load i64, ptr %l12, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i32, ptr %t138, i64 %t135
  %t140 = load i32, ptr %t139, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRawBits(ptr %v0, ptr %t133, i32 %t140)
  br label %bb26
bb26:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t144, ptr %l82, !tbaa !27
  %t145 = load i64, ptr %l12, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i32, ptr %t148, i64 %t145
  %t150 = load i32, ptr %t149, !tbaa !33
  %t153 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedWhat(ptr %v0, ptr %s4, ptr %t143, i32 %t150)
  store { i64, ptr } %t153, ptr %l85
  br label %bb27
bb27:
  %t154 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t154, ptr %l13, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t155, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t157, ptr %l87
  br label %bb28
bb28:
  %t158 = load i1, ptr %l87, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb29, label %bb30
bb29:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l89, !tbaa !29
  %t162 = load i64, ptr %l12, !tbaa !24
  store i64 %t162, ptr %l90, !tbaa !24
  %t164 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l6)
  store i64 %t164, ptr %l92
  br label %bb31
bb30:
  br label %bb39
bb31:
  %t165 = load i64, ptr %l90, !tbaa !24
  %t166 = load i64, ptr %l92, !tbaa !24
  %t167 = icmp slt i64 %t165, %t166
  br i1 %t167, label %bb32, label %bb33
bb32:
  %t169 = load i64, ptr %l12, !tbaa !24
  %t172 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l6, i64 %t169)
  store %"compiler/source:Span" %t172, ptr %l97
  br label %bb34
bb33:
  store %"compiler/source:Span" %a1, ptr %l94
  br label %bb35
bb34:
  %t175 = load %"compiler/source:Span", ptr %l97
  store %"compiler/source:Span" %t175, ptr %l94
  br label %bb35
bb35:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t177, ptr %l100, !tbaa !27
  %t178 = load i64, ptr %l12, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr i32, ptr %t181, i64 %t178
  %t183 = load i32, ptr %t182, !tbaa !33
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v0, ptr %t176, i32 %t183)
  store { i64, ptr } %t186, ptr %l103
  br label %bb36
bb36:
  %t187 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t194 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t197 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedField(ptr %v0, ptr %s4, ptr %v0, { i64, ptr } %t193, { i64, ptr } %t194)
  store %"compiler/diagmsg:Msg" %t197, ptr %l106
  br label %bb37
bb37:
  %t198 = load ptr, ptr %l89, !tbaa !29
  %t199 = load %"compiler/source:Span", ptr %l94
  %t200 = load %"compiler/diagmsg:Msg", ptr %l106
  %t201 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t198, %"compiler/source:Span" %t199, %"compiler/diagmsg:Msg" %t200)
  store i64 %t201, ptr %l107
  br label %bb38
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s4)
  br label %bb40
bb40:
  %t202 = load i64, ptr %l11, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l11, !tbaa !24
  br label %bb22
bb41:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatBool(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 9}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb29
bb9:
  %t31 = load ptr, ptr %l2, !tbaa !29
  store ptr %t31, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t32 = load ptr, ptr %l17, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l17, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 1
  store i1 %t38, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l18, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32 }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l3
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32 }, ptr %t48, i32 0, i32 1
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 114}
  store i32 %t50, ptr %l4
  br label %bb14
bb13:
  br label %bb23
bb14:
  %t52 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t54 = trunc i64 6 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load %"compiler/source:Span", ptr %l3
  %t61 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %a0, %"compiler/source:Span" %t58)
  store { i64, ptr } %t61, ptr %l29
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t62 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t63 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t62, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t63, ptr %l30
  br label %bb18
bb18:
  %t64 = load i1, ptr %l30, !tbaa !21
  br i1 %t64, label %bb19, label %bb20
bb19:
  store i64 1, ptr %l31, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  %t65 = load i64, ptr %l31, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_a6377e7673ccb83e_f00ca4f503dea522)
  unreachable
bb28:
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
  call void @__olang_check_failed(ptr @olang_loc_4543a2f38c43ab3f_a376b2729e3ac623)
  unreachable
bb34:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca i32
  %l42 = alloca i32
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca i64
  %l47 = alloca i64
  %l49 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i1, ptr %l11, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb10
bb5:
  %t18 = load i1, ptr %l15, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t22, i32 %t23)
  store i1 %t26, ptr %l20
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb8:
  %t27 = load i1, ptr %l20, !tbaa !21
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l16, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb10
bb10:
  %t31 = load i1, ptr %l12, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t32 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t33 = load i32, ptr %t32, !tbaa !23
  %t35 = icmp sge i32 %t33, 0
  br i1 %t35, label %bb13, label %bb14
bb12:
  br label %bb21
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t39 = load %"compiler/source:Span", ptr %l2
  %t43 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %s1, ptr %s1, ptr %t37, i32 %t38, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) }, i64 1, %"compiler/source:Span" %t39, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i64 %t43, ptr %l28
  br label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l3, !tbaa !23
  %t48 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s1, ptr %t44, i32 %t45, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, i64 1)
  store i64 %t48, ptr %l31
  br label %bb16
bb15:
  %t49 = load i64, ptr %l28, !tbaa !24
  store i64 %t49, ptr %l24, !tbaa !24
  br label %bb17
bb16:
  %t50 = load i64, ptr %l31, !tbaa !24
  store i64 %t50, ptr %l24, !tbaa !24
  br label %bb17
bb17:
  %t51 = load i64, ptr %l24, !tbaa !24
  store i64 %t51, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l4, !tbaa !24
  %t54 = icmp sge i64 %t52, 0
  br i1 %t54, label %bb18, label %bb19
bb18:
  %t56 = load i64, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i64 %t56, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  br label %bb21
bb21:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  store ptr %t61, ptr %l36, !tbaa !29
  %t62 = load i32, ptr %l3, !tbaa !23
  store i32 %t62, ptr %l37, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 0
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/load:Loader", ptr %t69, i32 0, i32 3
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t72, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i32 %t74, ptr %l42
  br label %bb22
bb22:
  %t75 = load ptr, ptr %l36, !tbaa !29
  %t76 = load i32, ptr %l37, !tbaa !23
  %t77 = load i32, ptr %l42, !tbaa !23
  %t78 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %s0, ptr %t75, i32 %t76, i32 %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l43
  br label %bb23
bb23:
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l5
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l5)
  store i64 %t81, ptr %l45
  br label %bb24
bb24:
  %t82 = load i64, ptr %l45, !tbaa !24
  %t83 = icmp eq i64 %t82, 1
  br i1 %t83, label %bb25, label %bb26
bb25:
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l5, i64 0)
  store i64 %t86, ptr %l49
  br label %bb27
bb26:
  store i64 -1, ptr %l47, !tbaa !24
  br label %bb28
bb27:
  %t87 = load i64, ptr %l49, !tbaa !24
  store i64 %t87, ptr %l47, !tbaa !24
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i64, ptr %l47, !tbaa !24
  store i64 %t88, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/check:reflVal"
  %l13 = alloca %"compiler/check:reflVal"
  %l20 = alloca i1
  %l23 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 148
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l2, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 148
  store i1 false, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t18 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %s0, ptr %t14, ptr %t15)
  store %"compiler/check:reflVal" %t18, ptr %l13
  br label %bb4
bb4:
  %t19 = load %"compiler/check:reflVal", ptr %l13
  store %"compiler/check:reflVal" %t19, ptr %l3
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 148
  %t23 = load i1, ptr %t22, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i1, ptr %l2, !tbaa !21
  %t29 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 148
  store i1 %t26, ptr %t29, !tbaa !21
  %t32 = xor i1 %t23, true
  br i1 %t32, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb7
bb6:
  %t34 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 0
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l20, !tbaa !21
  br label %bb7
bb7:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  %t40 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2fcheck_2eRvBool, !tbaa !24
  %t45 = icmp ne i64 %t41, %t42
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t49 = getelementptr %"compiler/check:reflVal", ptr %l3, i32 0, i32 2
  %t50 = load i64, ptr %t49, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l5 = alloca %"compiler/check:reflVal"
  %l7 = alloca i1
  %l12 = alloca %"compiler/check:reflVal"
  %rv = alloca %"compiler/check:reflVal"
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
  store %"compiler/check:reflVal" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load %"compiler/check:reflVal", ptr %l5
  %t8 = load ptr, ptr %lp2
  store %"compiler/check:reflVal" %t7, ptr %t8
  %t9 = load ptr, ptr %lp2
  %t10 = getelementptr %"compiler/check:reflVal", ptr %t9, i32 0, i32 0
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %lp2
  %t14 = getelementptr %"compiler/check:reflVal", ptr %t13, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = load i64, ptr @G_2ecompiler_2fcheck_2eRvInt, !tbaa !24
  %t19 = icmp eq i64 %t15, %t16
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l7, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %lp2
  %t23 = load %"compiler/check:reflVal", ptr %t22
  store %"compiler/check:reflVal" %t23, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = call %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v2)
  store %"compiler/check:reflVal" %t25, ptr %l12
  br label %bb8
bb8:
  %t26 = load %"compiler/check:reflVal", ptr %l12
  store %"compiler/check:reflVal" %t26, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:reflVal", ptr %rv
  ret %"compiler/check:reflVal" %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i32
  %l40 = alloca ptr
  %l41 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i32
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
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
  br label %bb10
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t24 = trunc i64 5 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %s2, ptr %t27, %"compiler/source:Span" %t28)
  store { i64, ptr } %t31, ptr %l23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t32 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t32, ptr %l24, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l25, !tbaa !24
  %t35 = load i64, ptr %l25, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l26, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l25, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t46, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  br label %bb42
bb10:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t50 = load ptr, ptr %l28, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l28, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 30}
  %t56 = icmp eq i64 %t54, 2
  store i1 %t56, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l29, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", ptr }, ptr %t60, i32 0, i32 1
  %t62 = load ptr, ptr %t61
  store ptr %t62, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t68 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %t64, ptr %t65)
  %t69 = extractvalue { i32, { i64, ptr } } %t68, 1
  %t70 = extractvalue { i32, { i64, ptr } } %t68, 0
  store i32 %t70, ptr %l38
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb17, label %ok.72, !prof !99
ok.72:
  store { i64, ptr } %t69, ptr %l37
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t73, ptr %l34, !tbaa !27
  br label %bb18
bb17:
  %t74 = load i32, ptr %l38, !tbaa !23
  %t75 = lshr i32 %t74, 16
  %t76 = and i32 %t74, 65535
  %t77 = icmp eq i32 %t75, 1
  %t78 = select i1 %t77, i32 1, i32 0
  %t79 = icmp eq i32 %t74, 0
  %t80 = shl i32 %t78, 16
  %t81 = or i32 %t80, %t76
  %t82 = select i1 %t79, i32 0, i32 %t81
  %t84 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t82, 0
  store { i32, { i64, ptr } } %t84, ptr %rv
  br label %ret
bb18:
  %t85 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t85, 1
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb19:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t88 = load ptr, ptr %l40, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t91 = load ptr, ptr %l40, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 30}
  %t94 = icmp eq i64 %t92, 20
  store i1 %t94, ptr %l41, !tbaa !21
  br label %bb21
bb21:
  %t95 = load i1, ptr %l41, !tbaa !21
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t98, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99
  store { i64, ptr } %t100, ptr %l5, !tbaa !27
  br label %bb24
bb23:
  br label %bb37
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l46, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t102, ptr %l47, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l48, !tbaa !24
  %t105 = load i64, ptr %l48, !tbaa !24
  %t106 = mul i64 %t105, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l49, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l48, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t116, ptr %lp6
  %t117 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t118 = load ptr, ptr %lp6
  store { i64, ptr } %t117, ptr %t118, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t119, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t121, 0
  store i64 %t123, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb27:
  br label %bb28
bb28:
  %t133 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t133, ptr %l57, !tbaa !27
  %t134 = load i64, ptr %l8, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr ptr, ptr %t137, i64 %t134
  %t139 = load ptr, ptr %t138, !tbaa !39
  %t141 = load ptr, ptr %lp6
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l60, !tbaa !27
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t147 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflPiece(ptr %v0, ptr %v1, ptr %s6, ptr %t143, ptr %t139)
  %t148 = extractvalue { i32, { i64, ptr } } %t147, 1
  %t149 = extractvalue { i32, { i64, ptr } } %t147, 0
  store i32 %t149, ptr %l65
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb30, label %ok.151, !prof !99
ok.151:
  store { i64, ptr } %t148, ptr %l64
  br label %bb29
bb29:
  %t152 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t152, ptr %l61, !tbaa !27
  br label %bb31
bb30:
  %t153 = load i32, ptr %l65, !tbaa !23
  %t154 = lshr i32 %t153, 16
  %t155 = and i32 %t153, 65535
  %t156 = icmp eq i32 %t154, 1
  %t157 = select i1 %t156, i32 1, i32 0
  %t158 = icmp eq i32 %t153, 0
  %t159 = shl i32 %t157, 16
  %t160 = or i32 %t159, %t155
  %t161 = select i1 %t158, i32 0, i32 %t160
  call void @__olang_scope_close(ptr %s6)
  %t163 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t161, 0
  store { i32, { i64, ptr } } %t163, ptr %rv
  br label %ret
bb31:
  %t164 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = add i64 %t166, %t169
  %t171 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t170)
  call void @olang_textcopy(ptr %t171, ptr %t165, i64 %t166)
  %t172 = getelementptr i8, ptr %t171, i64 %t166
  call void @olang_textcopy(ptr %t172, ptr %t168, i64 %t169)
  %t173 = insertvalue { i64, ptr } undef, i64 %t170, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t171, 1
  store { i64, ptr } %t174, ptr %l67, !tbaa !27
  %t175 = load ptr, ptr %lp6
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 0
  %t178 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  store i64 %t179, ptr %l69, !tbaa !24
  %t181 = load i64, ptr %l69, !tbaa !24
  %t182 = icmp eq i64 %t177, %t181
  br i1 %t182, label %bb32, label %bb33
bb32:
  %t184 = load ptr, ptr %lp6
  %t185 = getelementptr { i64, ptr }, ptr %t184, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = load i64, ptr %l69, !tbaa !24
  %t190 = mul i64 %t189, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t186, ptr %t188, i64 %t190, i1 false)
  br label %bb34
bb33:
  %t191 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t192 = load ptr, ptr %lp6
  store { i64, ptr } %t191, ptr %t192, !tbaa !27
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb35
bb35:
  %t193 = load i64, ptr %l8, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l8, !tbaa !24
  br label %bb25
bb36:
  %t197 = load ptr, ptr %lp6
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  %t200 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t198, 1
  store { i32, { i64, ptr } } %t200, ptr %rv
  br label %ret
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_3ff8b815b8f08888_72cba32f0bfc98b4)
  unreachable
bb42:
  %t202 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t202, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/generic:Origin"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca ptr
  %l15 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca %"compiler/source:Span"
  %l29 = alloca ptr
  %l32 = alloca %"compiler/generic:Origin"
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l41 = alloca i32
  %l48 = alloca i1
  %rv = alloca i32
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
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 51
  %t13 = load %"compiler/generic:Origin", ptr %t12
  store %"compiler/generic:Origin" %t13, ptr %l2
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t15)
  store %"compiler/source:Span" %t17, ptr %l13
  br label %bb4
bb4:
  %t18 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t18, ptr %l3
  %t19 = load ptr, ptr %l1, !tbaa !29
  store ptr %t19, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l14, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 0
  store i1 %t26, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l15, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [5 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t30, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l23, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t41, ptr %l24, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr ptr, ptr %t43, i64 0
  %t45 = load ptr, ptr %t44, !tbaa !39
  %t47 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t45)
  store %"compiler/source:Span" %t47, ptr %l26
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t48 = load ptr, ptr %l23, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l26
  %t50 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleadWord(ptr %v0, ptr %t48, %"compiler/source:Span" %t49)
  store %"compiler/source:Span" %t50, ptr %l27
  br label %bb13
bb13:
  %t51 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t51, ptr %l3
  br label %bb14
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
  call void @__olang_check_failed(ptr @olang_loc_af27478d58ae9a15_461e52858b358fe1)
  unreachable
bb20:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l29, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l3
  %t60 = call %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %t56, %"compiler/source:Span" %t57)
  store %"compiler/generic:Origin" %t60, ptr %l32
  br label %bb21
bb21:
  %t61 = load %"compiler/generic:Origin", ptr %l32
  %t62 = load ptr, ptr %l29, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 51
  store %"compiler/generic:Origin" %t61, ptr %t63
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l34, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t68)
  store ptr %t70, ptr %l36
  br label %bb22
bb22:
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t73 = getelementptr %"compiler/check:frame", ptr %t71, i32 0, i32 4
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = load ptr, ptr %l34, !tbaa !29
  %t79 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v0, ptr %v1, ptr %t76, ptr %t73, ptr %t74)
  store i32 %t79, ptr %l41
  br label %bb23
bb23:
  %t80 = load i32, ptr %l41, !tbaa !23
  store i32 %t80, ptr %l5, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t85 = load %"compiler/generic:Origin", ptr %l2
  %t88 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 51
  store %"compiler/generic:Origin" %t85, ptr %t88
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  store i1 %t94, ptr %l48
  br label %bb24
bb24:
  %t95 = load i1, ptr %l48, !tbaa !21
  %t96 = xor i1 %t95, true
  br i1 %t96, label %bb25, label %bb26
bb25:
  %t98 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t98, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t100 = load i32, ptr %l5, !tbaa !23
  store i32 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroCallRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroBorrowedFrom(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Call", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t20 = icmp slt i64 %t11, %t17
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Call", ptr %t24, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %t23, ptr %t33)
  store i1 %t37, ptr %l21
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t38 = load i1, ptr %l21, !tbaa !21
  store i1 %t38, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i1, ptr %l14, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleRaised(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l32 = alloca i32
  %l36 = alloca %"compiler/source:Span"
  %l40 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l79 = alloca ptr
  %l84 = alloca i1
  %l89 = alloca i1
  %l94 = alloca i1
  %l98 = alloca i64
  %l102 = alloca i1
  %l107 = alloca i32
  %l111 = alloca ptr
  %l113 = alloca i32
  %l117 = alloca ptr
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l15, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l20
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l15, !tbaa !29
  %t16 = load i32, ptr %l20, !tbaa !23
  %t17 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t17, ptr %l21
  br label %bb2
bb2:
  %t18 = load i1, ptr %l21, !tbaa !21
  %t19 = xor i1 %t18, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb6
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t28 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedSettled(ptr %v0, ptr %t24, i32 %a2)
  store i1 %t28, ptr %l27
  br label %bb5
bb5:
  %t29 = load i1, ptr %l27, !tbaa !21
  store i1 %t29, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l23, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/check:Checker", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/generic:Program", ptr %t34, i32 0, i32 2
  %t37 = load i32, ptr %l1, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l32
  br label %bb10
bb10:
  %t41 = load i32, ptr %l32, !tbaa !23
  store i32 %t41, ptr %l3, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call %"compiler/source:Span" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedAt(ptr %v0, ptr %t45, i32 %t46)
  store %"compiler/source:Span" %t49, ptr %l36
  br label %bb11
bb11:
  %t50 = load %"compiler/source:Span", ptr %l36
  store %"compiler/source:Span" %t50, ptr %l4
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/load:Loader", ptr %t57, i32 0, i32 10
  store ptr %t59, ptr %l40, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/generic:Program", ptr %t63, i32 0, i32 2
  %t66 = load i32, ptr %l3, !tbaa !23
  %t69 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l45
  br label %bb12
bb12:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t71 = load i64, ptr %l45, !tbaa !24
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t70, i64 %t71)
  store ptr %t72, ptr %l46
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l46, !tbaa !29
  %t75 = getelementptr %"compiler/load:Module", ptr %t73, i32 0, i32 4
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l5, !tbaa !24
  store i64 -1, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/check:Checker", ptr %t78, i32 0, i32 14
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l51
  br label %bb14
bb14:
  %t83 = load i64, ptr %l51, !tbaa !24
  store i64 %t83, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = icmp sgt i64 %t84, %t85
  br i1 %t88, label %bb15, label %bb16
bb15:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb20
bb17:
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l7, !tbaa !24
  %t98 = sub i64 %t94, %t95
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = add i64 %t98, %t99
  %t104 = sub i64 %t102, 1
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = sdiv i64 %t104, %t105
  store i64 %t108, ptr %l58, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb19
bb19:
  %t110 = load i64, ptr %l58, !tbaa !24
  store i64 %t110, ptr %l55, !tbaa !24
  br label %bb20
bb20:
  %t111 = load i64, ptr %l55, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t112 = load i64, ptr %l11, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb22, label %bb23
bb22:
  br label %bb48
bb23:
  br label %bb24
bb24:
  %t120 = load i64, ptr %l7, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  %t122 = load i64, ptr %l9, !tbaa !24
  %t125 = mul i64 %t121, %t122
  %t128 = add i64 %t120, %t125
  store i64 %t128, ptr %l12, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 14
  %t133 = load i64, ptr %l12, !tbaa !24
  %t136 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t132, i64 %t133)
  store ptr %t136, ptr %l79
  br label %bb25
bb25:
  %t137 = load ptr, ptr %l79, !tbaa !29
  store ptr %t137, ptr %l13, !tbaa !29
  %t138 = load ptr, ptr %l13, !tbaa !29
  %t140 = getelementptr %"compiler/typed:Body", ptr %t138, i32 0, i32 3
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = load i64, ptr %l5, !tbaa !24
  %t145 = icmp ne i64 %t141, %t142
  br i1 %t145, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb28
bb27:
  %t147 = load ptr, ptr %l13, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t147, i32 0, i32 4
  %t150 = getelementptr %"compiler/source:Span", ptr %t149, i32 0, i32 0
  %t151 = load i32, ptr %t150, !tbaa !23
  %t152 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t153 = load i32, ptr %t152, !tbaa !23
  %t156 = icmp sgt i32 %t151, %t153
  store i1 %t156, ptr %l84, !tbaa !21
  br label %bb28
bb28:
  %t158 = load i1, ptr %l84, !tbaa !21
  br i1 %t158, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb31
bb30:
  %t159 = load ptr, ptr %l13, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Body", ptr %t159, i32 0, i32 4
  %t162 = getelementptr %"compiler/source:Span", ptr %t161, i32 0, i32 1
  %t163 = load i32, ptr %t162, !tbaa !23
  %t164 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t165 = load i32, ptr %t164, !tbaa !23
  %t168 = icmp slt i32 %t163, %t165
  store i1 %t168, ptr %l89, !tbaa !21
  br label %bb31
bb31:
  %t170 = load i1, ptr %l89, !tbaa !21
  br i1 %t170, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb35
bb33:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 19
  %t174 = load i64, ptr %l12, !tbaa !24
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t173, i64 %t174)
  store i64 %t177, ptr %l98
  br label %bb34
bb34:
  %t178 = load i64, ptr %l98, !tbaa !24
  %t179 = icmp ne i64 %t178, 0
  store i1 %t179, ptr %l94, !tbaa !21
  br label %bb35
bb35:
  %t181 = load i1, ptr %l94, !tbaa !21
  br i1 %t181, label %bb36, label %bb37
bb36:
  br label %bb47
bb37:
  br label %bb38
bb38:
  %t182 = load i64, ptr %l6, !tbaa !24
  %t184 = icmp slt i64 %t182, 0
  br i1 %t184, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb43
bb40:
  %t186 = load ptr, ptr %l13, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Body", ptr %t186, i32 0, i32 4
  %t189 = getelementptr %"compiler/source:Span", ptr %t188, i32 0, i32 1
  %t190 = load i32, ptr %t189, !tbaa !23
  %t191 = load ptr, ptr %l13, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Body", ptr %t191, i32 0, i32 4
  %t194 = getelementptr %"compiler/source:Span", ptr %t193, i32 0, i32 0
  %t195 = load i32, ptr %t194, !tbaa !23
  %t198 = sub i32 %t190, %t195
  store i32 %t198, ptr %l107, !tbaa !23
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 14
  %t202 = load i64, ptr %l6, !tbaa !24
  %t205 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t201, i64 %t202)
  store ptr %t205, ptr %l111
  br label %bb41
bb41:
  %t206 = load ptr, ptr %l111, !tbaa !29
  %t208 = getelementptr %"compiler/typed:Body", ptr %t206, i32 0, i32 4
  %t209 = getelementptr %"compiler/source:Span", ptr %t208, i32 0, i32 1
  %t210 = load i32, ptr %t209, !tbaa !23
  store i32 %t210, ptr %l113, !tbaa !23
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 14
  %t214 = load i64, ptr %l6, !tbaa !24
  %t217 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t213, i64 %t214)
  store ptr %t217, ptr %l117
  br label %bb42
bb42:
  %t218 = load ptr, ptr %l117, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Body", ptr %t218, i32 0, i32 4
  %t221 = getelementptr %"compiler/source:Span", ptr %t220, i32 0, i32 0
  %t222 = load i32, ptr %t221, !tbaa !23
  %t223 = load i32, ptr %l113, !tbaa !23
  %t225 = sub i32 %t223, %t222
  %t226 = load i32, ptr %l107, !tbaa !23
  %t228 = icmp slt i32 %t226, %t225
  store i1 %t228, ptr %l102, !tbaa !21
  br label %bb43
bb43:
  %t230 = load i1, ptr %l102, !tbaa !21
  br i1 %t230, label %bb44, label %bb45
bb44:
  %t231 = load i64, ptr %l12, !tbaa !24
  store i64 %t231, ptr %l6, !tbaa !24
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t233 = load i64, ptr %l11, !tbaa !24
  %t235 = add i64 %t233, 1
  store i64 %t235, ptr %l11, !tbaa !24
  br label %bb21
bb48:
  %t237 = load i64, ptr %l6, !tbaa !24
  %t239 = icmp sge i64 %t237, 0
  br i1 %t239, label %bb49, label %bb50
bb49:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %t241, i64 %t242)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i1
  %l14 = alloca i32
  %l19 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i1
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i32, ptr %l8, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp sge i32 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l2, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l13
  br label %bb4
bb3:
  br label %bb9
bb4:
  %t16 = load i1, ptr %l13, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t26, ptr %l19
  br label %bb7
bb6:
  store i32 -1, ptr %l14, !tbaa !23
  br label %bb8
bb7:
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %l14, !tbaa !23
  br label %bb8
bb8:
  %t28 = load i32, ptr %l14, !tbaa !23
  store i32 %t28, ptr %rv
  br label %ret
bb9:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l3, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load ptr, ptr %l21, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 30}
  %t38 = icmp eq i64 %t36, 13
  store i1 %t38, ptr %l22, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t42, i32 0, i32 1
  %t44 = load ptr, ptr %t43
  store ptr %t44, ptr %l4, !tbaa !29
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t46 = load ptr, ptr %l4, !tbaa !29
  store ptr %t46, ptr %l3, !tbaa !29
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
  call void @__olang_check_failed(ptr @olang_loc_af8bfee451e26bd0_dc06632e423180dc)
  unreachable
bb20:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t52 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store i32 %t52, ptr %l30
  br label %bb21
bb21:
  %t53 = load i32, ptr %l30, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  %t54 = load i32, ptr %l5, !tbaa !23
  %t56 = icmp sge i32 %t54, 0
  br i1 %t56, label %bb22, label %bb23
bb22:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/check:Checker", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/generic:Program", ptr %t61, i32 0, i32 2
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l38
  br label %bb24
bb23:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb25
bb24:
  %t68 = load i32, ptr %l38, !range !{i32 0, i32 6}
  %t70 = trunc i64 0 to i32
  %t71 = icmp eq i32 %t68, %t70
  store i1 %t71, ptr %l33, !tbaa !21
  br label %bb25
bb25:
  %t73 = load i1, ptr %l33, !tbaa !21
  br i1 %t73, label %bb26, label %bb27
bb26:
  %t74 = load i32, ptr %l5, !tbaa !23
  store i32 %t74, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  store i32 -1, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etestBody(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l10 = alloca { i64, [2 x i64] }
  %l15 = alloca i32
  %l18 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i64
  %l31 = alloca %"compiler/generic:Context"
  %l33 = alloca %"compiler/generic:Context"
  %l37 = alloca ptr
  %l40 = alloca i32
  %l43 = alloca ptr
  %l45 = alloca ptr
  %t3 = alloca { i64, [2 x i64] }, align 8
  %t51 = alloca %"compiler/generic:Context", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 0
  store i64 5, ptr %t4
  %t6 = insertvalue { i64 } undef, i64 %a4, 0
  %t7 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 1
  store { i64 } %t6, ptr %t7
  %t8 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t8, ptr %l10
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/generic:Program", ptr %t12, i32 0, i32 2
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t14, i32 0, i32 %t15, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t18, ptr %l15
  br label %bb1
bb1:
  %t19 = load i64, ptr %l1, !tbaa !24
  %t20 = load %"compiler/source:Span", ptr %l2
  %t21 = load ptr, ptr %l8, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l10
  %t23 = load i32, ptr %l15, !tbaa !23
  %t26 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t21, { i64, [2 x i64] } %t22, i32 %t23, i64 %t19, %"compiler/source:Span" %t20)
  store i64 %t26, ptr %l18
  br label %bb2
bb2:
  %t27 = load i64, ptr %l18, !tbaa !24
  store i64 %t27, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 19
  %t31 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31, i64 1)
  br label %bb3
bb3:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t34, i64 %t35, i64 %t36, i32 %t37, i32 0)
  store ptr %t42, ptr %l26
  br label %bb4
bb4:
  %t43 = load ptr, ptr %l26, !tbaa !29
  store ptr %t43, ptr %l6, !tbaa !29
  %t44 = load ptr, ptr %l6, !tbaa !29
  store ptr %t44, ptr %l27, !tbaa !29
  %t45 = ptrtoint ptr %v0 to i64
  store i64 %t45, ptr %l28, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t46, label %bb5, label %bb6
bb5:
  %t48 = call ptr @__olang_region_make(ptr %v0)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = load i64, ptr %l28
  %t53 = inttoptr i64 %t52 to ptr
  call void @compiler_2fgeneric_3aContext_2ector(ptr %t51, ptr %t53, i64 %t50, i64 -1)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t51, i64 160, i1 false)
  br label %bb7
bb7:
  %t55 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t55, label %bb8, label %bb9
bb8:
  %t57 = load i64, ptr %l28
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 3
  %t60 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t59, i32 0, i32 2
  %t61 = load { i64, ptr }, ptr %t60
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = call ptr @__olang_region_or(ptr %t62, ptr null)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr null
  %t66 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 3
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t66, i32 0, i32 1
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr %t65
  %t73 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 3
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t73, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = call ptr @__olang_region_or(ptr %t76, ptr null)
  %t78 = icmp ne ptr %t77, null
  %t79 = select i1 %t78, ptr %t77, ptr %t72
  %t80 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 2
  %t81 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t80, i32 0, i32 2
  %t82 = load { i64, ptr }, ptr %t81
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = call ptr @__olang_region_or(ptr %t83, ptr null)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr %t79
  %t87 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 2
  %t88 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 1
  %t89 = load { i64, ptr }, ptr %t88
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = call ptr @__olang_region_or(ptr %t90, ptr null)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr %t86
  %t94 = getelementptr %"compiler/generic:Context", ptr %l31, i32 0, i32 2
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t94, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr %t93
  %t101 = icmp eq ptr %t100, %t58
  call void @__olang_region_settle(ptr %t58, i1 %t101)
  br label %bb9
bb9:
  %t102 = load ptr, ptr %l27, !tbaa !29
  %t103 = getelementptr %"compiler/check:frame", ptr %t102, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t103, i64 160, i1 false)
  %t104 = load ptr, ptr %l27, !tbaa !29
  %t105 = getelementptr %"compiler/check:frame", ptr %t104, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %l31, i64 160, i1 false)
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t106, label %bb10, label %bb11
bb10:
  %t108 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 3
  %t109 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t108, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 3
  %t116 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t115, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = call ptr @__olang_region_or(ptr %t118, ptr null)
  %t120 = icmp ne ptr %t119, null
  %t121 = select i1 %t120, ptr %t119, ptr %t114
  %t122 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 3
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t122, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t121
  %t129 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 2
  %t130 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t129, i32 0, i32 2
  %t131 = load { i64, ptr }, ptr %t130
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = call ptr @__olang_region_or(ptr %t132, ptr null)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr %t128
  %t136 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 2
  %t137 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t136, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr %t135
  %t143 = getelementptr %"compiler/generic:Context", ptr %l33, i32 0, i32 2
  %t144 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t143, i32 0, i32 0
  %t145 = load { i64, ptr }, ptr %t144
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = call ptr @__olang_region_or(ptr %t146, ptr null)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr %t142
  call void @__olang_region_drop(ptr %t149)
  store %"compiler/generic:Context" zeroinitializer, ptr %l33
  br label %bb11
bb11:
  %t150 = load ptr, ptr %l6, !tbaa !29
  %t152 = getelementptr %"compiler/check:frame", ptr %t150, i32 0, i32 12
  store i1 true, ptr %t152, !tbaa !21
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t153)
  store ptr %t155, ptr %l37
  br label %bb12
bb12:
  %t156 = load %"compiler/source:Span", ptr %l2
  %t157 = load ptr, ptr %l37, !tbaa !29
  %t160 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t157, i32 -1, i32 0, %"compiler/source:Span" %t156)
  store i32 %t160, ptr %l40
  br label %bb13
bb13:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t165 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v0, ptr %t161, { i64, ptr } %a3)
  store ptr %t165, ptr %l43
  br label %bb14
bb14:
  %t166 = load ptr, ptr %l43, !tbaa !29
  store ptr %t166, ptr %l7, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t167)
  store ptr %t169, ptr %l45
  br label %bb15
bb15:
  %t170 = load ptr, ptr %l45, !tbaa !29
  %t171 = load ptr, ptr %l7, !tbaa !29
  %t175 = getelementptr %"compiler/typed:Body", ptr %t170, i32 0, i32 11
  store ptr %t171, ptr %t175, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t176)
  br label %bb16
bb16:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 19
  %t181 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t180, i64 %t181, i64 2)
  br label %bb17
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eyieldStmt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca { i64, [3 x i64] }
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l18 = alloca %"compiler/source:Span"
  %l22 = alloca i1
  %l26 = alloca %"compiler/diagmsg:Msg"
  %l27 = alloca %"compiler/diagmsg:Msg"
  %l28 = alloca %"compiler/diagmsg:Msg"
  %l29 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca %"compiler/source:Span"
  %l40 = alloca %"compiler/diagmsg:Msg"
  %l41 = alloca i64
  %l44 = alloca i64
  %l46 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/diagmsg:Msg"
  %l49 = alloca i64
  %l54 = alloca ptr
  %l56 = alloca { i64, [3 x i64] }
  %l60 = alloca ptr
  %l63 = alloca i32
  %l65 = alloca i32
  %l67 = alloca i1
  %l68 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca i1
  %l80 = alloca ptr
  %l83 = alloca i1
  %l85 = alloca ptr
  %l87 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l91 = alloca i1
  %l94 = alloca i1
  %l96 = alloca i1
  %l99 = alloca i1
  %l102 = alloca ptr
  %s0 = alloca %olang.scope
  %t137 = alloca { i64, [4 x i64] }, align 8
  %t199 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t7 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = add i32 %t8, 5
  %t13 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t6, i32 %t10)
  store %"compiler/source:Span" %t13, ptr %l13
  br label %bb2
bb2:
  %t14 = load %"compiler/source:Span", ptr %l13
  store %"compiler/source:Span" %t14, ptr %l4
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 20
  %t18 = load i1, ptr %t17, !tbaa !21
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t23, ptr %l18
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 19
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = icmp sge i64 %t27, 0
  br i1 %t29, label %bb5, label %bb6
bb4:
  br label %bb15
bb5:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/check:frame", ptr %t31, i32 0, i32 34
  %t34 = load i64, ptr %t33, !tbaa !24
  %t36 = icmp slt i64 %t34, 0
  store i1 %t36, ptr %l22, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb7
bb7:
  %t38 = load i1, ptr %l22, !tbaa !21
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t39 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInLambda(ptr %v0)
  store %"compiler/diagmsg:Msg" %t39, ptr %l27
  br label %bb10
bb9:
  %t40 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOutside(ptr %v0)
  store %"compiler/diagmsg:Msg" %t40, ptr %l28
  br label %bb11
bb10:
  %t41 = load %"compiler/diagmsg:Msg", ptr %l27
  store %"compiler/diagmsg:Msg" %t41, ptr %l26
  br label %bb12
bb11:
  %t42 = load %"compiler/diagmsg:Msg", ptr %l28
  store %"compiler/diagmsg:Msg" %t42, ptr %l26
  br label %bb12
bb12:
  %t43 = load ptr, ptr %l17, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l18
  %t45 = load %"compiler/diagmsg:Msg", ptr %l26
  %t46 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t43, %"compiler/source:Span" %t44, %"compiler/diagmsg:Msg" %t45)
  store i64 %t46, ptr %l29
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t47, ptr %t48, i32 %t50)
  store ptr %t54, ptr %l34
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/check:frame", ptr %t55, i32 0, i32 34
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = icmp sge i64 %t58, 0
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t63, ptr %l39
  %t64 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInDefer(ptr %v0)
  store %"compiler/diagmsg:Msg" %t64, ptr %l40
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t65 = load ptr, ptr %l38, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l39
  %t67 = load %"compiler/diagmsg:Msg", ptr %l40
  %t68 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t65, %"compiler/source:Span" %t66, %"compiler/diagmsg:Msg" %t67)
  store i64 %t68, ptr %l41
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb20:
  %t69 = load ptr, ptr %l3, !tbaa !29
  %t71 = getelementptr %"compiler/check:frame", ptr %t69, i32 0, i32 38
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l44
  br label %bb21
bb21:
  %t74 = load i64, ptr %l44, !tbaa !24
  %t75 = icmp sgt i64 %t74, 0
  br i1 %t75, label %bb22, label %bb23
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l46, !tbaa !29
  %t78 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t78, ptr %l47
  %t79 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInJoin(ptr %v0)
  store %"compiler/diagmsg:Msg" %t79, ptr %l48
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t80 = load ptr, ptr %l46, !tbaa !29
  %t81 = load %"compiler/source:Span", ptr %l47
  %t82 = load %"compiler/diagmsg:Msg", ptr %l48
  %t83 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t80, %"compiler/source:Span" %t81, %"compiler/diagmsg:Msg" %t82)
  store i64 %t83, ptr %l49
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb26:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/check:frame", ptr %t84, i32 0, i32 5
  %t87 = load i32, ptr %t86, !tbaa !23
  store i32 %t87, ptr %l5, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 13
  %t92 = load { i64, [3 x i64] }, ptr %t91
  store { i64, [3 x i64] } %t92, ptr %l6
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l54, !tbaa !29
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %t95, i64 0)
  store { i64, [3 x i64] } %t97, ptr %l56
  br label %bb27
bb27:
  %t98 = load { i64, [3 x i64] }, ptr %l56
  %t99 = load ptr, ptr %l54, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 13
  store { i64, [3 x i64] } %t98, ptr %t100
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t103 = load i32, ptr %l5, !tbaa !23
  %t107 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v0, ptr %t101, ptr %t102, i32 %t103)
  store ptr %t107, ptr %l60
  br label %bb28
bb28:
  %t108 = load ptr, ptr %l60, !tbaa !29
  store ptr %t108, ptr %l7, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load { i64, [3 x i64] }, ptr %l6
  %t113 = getelementptr %"compiler/check:Checker", ptr %t109, i32 0, i32 13
  store { i64, [3 x i64] } %t110, ptr %t113
  %t114 = load i32, ptr %l5, !tbaa !23
  store i32 %t114, ptr %l63, !tbaa !23
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t115)
  store i32 %t117, ptr %l65
  br label %bb29
bb29:
  %t118 = load i32, ptr %l63, !tbaa !23
  %t119 = load i32, ptr %l65, !tbaa !23
  %t120 = icmp eq i32 %t118, %t119
  br i1 %t120, label %bb30, label %bb31
bb30:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l68, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t126 = call i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %t123)
  store i32 %t126, ptr %l71
  br label %bb32
bb31:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb34
bb32:
  %t127 = load ptr, ptr %l68, !tbaa !29
  %t128 = load i32, ptr %l71, !tbaa !23
  %t129 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t127, i32 %t128)
  store i1 %t129, ptr %l72
  br label %bb33
bb33:
  %t130 = load i1, ptr %l72, !tbaa !21
  store i1 %t130, ptr %l67, !tbaa !21
  br label %bb34
bb34:
  %t131 = load i1, ptr %l67, !tbaa !21
  br i1 %t131, label %bb35, label %bb36
bb35:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load %"compiler/source:Span", ptr %l1
  %t134 = load %"compiler/source:Span", ptr %l1
  %t135 = load i32, ptr %l5, !tbaa !23
  %t136 = load ptr, ptr %l7, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 0
  store i64 2, ptr %t138
  %t140 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t134, 0
  %t142 = insertvalue { %"compiler/source:Span", i32, ptr } %t140, i32 %t135, 1
  %t144 = insertvalue { %"compiler/source:Span", i32, ptr } %t142, ptr %t136, 2
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t137, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t144, ptr %t145
  %t146 = load { i64, [4 x i64] }, ptr %t137
  %t148 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t146, ptr %t148
  %t152 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t132, %"compiler/source:Span" %t133, ptr %t148)
  store ptr %t152, ptr %l80
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t153 = load ptr, ptr %l80, !tbaa !29
  store ptr %t153, ptr %l7, !tbaa !29
  br label %bb38
bb38:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t154, i32 %t155)
  store i1 %t158, ptr %l83
  br label %bb39
bb39:
  %t159 = load i1, ptr %l83, !tbaa !21
  %t160 = xor i1 %t159, true
  br i1 %t160, label %bb40, label %bb41
bb40:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l85, !tbaa !29
  %t163 = load ptr, ptr %l7, !tbaa !29
  store ptr %t163, ptr %l87, !tbaa !29
  %t165 = load ptr, ptr %l2, !tbaa !29
  %t167 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t165)
  store %"compiler/source:Span" %t167, ptr %l89
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t168 = load i64, ptr @G_2ecompiler_2fcheck_2eRoReturned, !tbaa !24
  %t169 = load ptr, ptr %l85, !tbaa !29
  %t170 = load ptr, ptr %l87, !tbaa !29
  %t171 = load %"compiler/source:Span", ptr %l89
  %t173 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v0, ptr %t169, ptr %t170, %"compiler/source:Span" %t171, i64 %t168)
  store i1 %t173, ptr %l91
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load i32, ptr %l5, !tbaa !23
  %t178 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t174, i32 %t175)
  store i1 %t178, ptr %l94
  br label %bb45
bb45:
  %t179 = load i1, ptr %l94, !tbaa !21
  %t180 = xor i1 %t179, true
  br i1 %t180, label %bb46, label %bb47
bb46:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l7, !tbaa !29
  %t186 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownVar(ptr %v0, ptr %v0, ptr %t182, ptr %t183)
  store i1 %t186, ptr %l99
  br label %bb48
bb47:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb49
bb48:
  %t187 = load i1, ptr %l99, !tbaa !21
  store i1 %t187, ptr %l96, !tbaa !21
  br label %bb49
bb49:
  %t188 = load i1, ptr %l96, !tbaa !21
  br i1 %t188, label %bb50, label %bb51
bb50:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t190 = load ptr, ptr %l7, !tbaa !29
  %t193 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v0, ptr %v0, ptr %t189, ptr %t190)
  store ptr %t193, ptr %l102
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t194 = load ptr, ptr %l102, !tbaa !29
  store ptr %t194, ptr %l7, !tbaa !29
  br label %bb53
bb53:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load %"compiler/source:Span", ptr %l1
  %t197 = load ptr, ptr %l7, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t199
  %t200 = getelementptr { i64, [3 x i64] }, ptr %t199, i32 0, i32 0
  store i64 16, ptr %t200
  %t202 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t196, 0
  %t204 = insertvalue { %"compiler/source:Span", ptr } %t202, ptr %t197, 1
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t199, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t204, ptr %t205
  %t206 = load { i64, [3 x i64] }, ptr %t199
  %t208 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t206, ptr %t208
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t195, ptr %t208)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca i1
  %l40 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i32
  %l59 = alloca i64
  %l62 = alloca i64
  %l81 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t24 = alloca i64
  %t109 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l19, !tbaa !23
  %t17 = icmp sge i64 1, 0
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = icmp sle i64 1, 2305843009213693951
  br i1 %t19, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a)
  unreachable
bb8:
  %t21 = mul i64 1, 4
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  %t23 = load i32, ptr %l19, !tbaa !23
  store i64 0, ptr %t24
  br label %fill.25
fill.25:
  %t28 = load i64, ptr %t24
  %t29 = icmp slt i64 %t28, 1
  br i1 %t29, label %fillb.26, label %filld.27
fillb.26:
  %t30 = getelementptr i32, ptr %t22, i64 %t28
  store i32 %t23, ptr %t30
  %t31 = add i64 %t28, 1
  store i64 %t31, ptr %t24
  br label %fill.25
filld.27:
  %t32 = insertvalue { i64, ptr } undef, i64 1, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t22, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb9:
  call void @__olang_check_failed(ptr @olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a)
  unreachable
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t36 = load ptr, ptr %l23, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l23, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 30}
  %t42 = icmp eq i64 %t40, 2
  store i1 %t42, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", ptr }, ptr %t46, i32 0, i32 1
  %t48 = load ptr, ptr %t47
  store ptr %t48, ptr %l2, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %v1, ptr %t50)
  store { i64, ptr } %t52, ptr %l30
  br label %bb16
bb16:
  %t53 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t55 = load ptr, ptr %l31, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = load ptr, ptr %l31, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 30}
  %t61 = icmp eq i64 %t59, 14
  store i1 %t61, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t62 = load i1, ptr %l32, !tbaa !21
  br i1 %t62, label %bb20, label %bb21
bb20:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t65, i32 0, i32 1
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l3, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t71, i32 0, i32 2
  %t73 = load i32, ptr %t72
  store i32 %t73, ptr %l4, !tbaa !23
  br label %bb22
bb21:
  br label %bb47
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2fcheck_2epathOf(ptr %v0, ptr %s3, ptr %t75)
  store { i64, ptr } %t77, ptr %l40
  br label %bb23
bb23:
  %t78 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t78, ptr %l5, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t83 = icmp eq i64 %t81, 0
  br i1 %t83, label %bb24, label %bb25
bb24:
  %t85 = icmp sge i64 0, 0
  br i1 %t85, label %bb26, label %bb27
bb25:
  br label %bb30
bb26:
  %t87 = icmp sle i64 0, 2305843009213693951
  br i1 %t87, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf)
  unreachable
bb28:
  %t89 = mul i64 0, 4
  %t90 = insertvalue { i64, ptr } undef, i64 0, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t91, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf)
  unreachable
bb30:
  %t93 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t97 = add i64 %t95, 1
  store i64 %t97, ptr %l49, !tbaa !24
  %t98 = load i32, ptr %l4, !tbaa !23
  store i32 %t98, ptr %l50, !tbaa !23
  %t99 = load i64, ptr %l49, !tbaa !24
  %t100 = icmp sge i64 %t99, 0
  br i1 %t100, label %bb31, label %bb32
bb31:
  %t102 = load i64, ptr %l49, !tbaa !24
  %t103 = icmp sle i64 %t102, 2305843009213693951
  br i1 %t103, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5df9bd969218a728_7fa184e5bc45956c)
  unreachable
bb33:
  %t105 = load i64, ptr %l49, !tbaa !24
  %t106 = mul i64 %t105, 4
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  %t108 = load i32, ptr %l50, !tbaa !23
  store i64 0, ptr %t109
  br label %fill.110
fill.110:
  %t113 = load i64, ptr %t109
  %t114 = icmp slt i64 %t113, %t105
  br i1 %t114, label %fillb.111, label %filld.112
fillb.111:
  %t115 = getelementptr i32, ptr %t107, i64 %t113
  store i32 %t108, ptr %t115
  %t116 = add i64 %t113, 1
  store i64 %t116, ptr %t109
  br label %fill.110
filld.112:
  %t117 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t107, 1
  %t119 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t119, ptr %lp6
  %t121 = load ptr, ptr %lp6
  store { i64, ptr } %t118, ptr %t121, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  store i64 %t124, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t126 = load i64, ptr %l8, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = icmp sgt i64 %t126, %t127
  br i1 %t130, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_5df9bd969218a728_7fa184e5bc45956c)
  unreachable
bb35:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = icmp sgt i64 %t132, 0
  br i1 %t134, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb40
bb37:
  %t136 = load i64, ptr %l8, !tbaa !24
  %t137 = load i64, ptr %l7, !tbaa !24
  %t140 = sub i64 %t136, %t137
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = add i64 %t140, %t141
  %t146 = sub i64 %t144, 1
  %t147 = load i64, ptr %l9, !tbaa !24
  %t150 = sdiv i64 %t146, %t147
  store i64 %t150, ptr %l62, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb39
bb39:
  %t152 = load i64, ptr %l62, !tbaa !24
  store i64 %t152, ptr %l59, !tbaa !24
  br label %bb40
bb40:
  %t153 = load i64, ptr %l59, !tbaa !24
  store i64 %t153, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  %t154 = load i64, ptr %l11, !tbaa !24
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t162 = load i64, ptr %l7, !tbaa !24
  %t163 = load i64, ptr %l11, !tbaa !24
  %t164 = load i64, ptr %l9, !tbaa !24
  %t167 = mul i64 %t163, %t164
  %t170 = add i64 %t162, %t167
  store i64 %t170, ptr %l12, !tbaa !24
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t173, ptr %l81, !tbaa !27
  %t174 = load i64, ptr %l12, !tbaa !24
  %t176 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr i32, ptr %t177, i64 %t174
  %t179 = load i32, ptr %t178, !tbaa !33
  %t181 = load ptr, ptr %lp6
  %t183 = getelementptr { i64, ptr }, ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i32, ptr %t184, i64 %t172
  store i32 %t179, ptr %t185, !tbaa !33
  br label %bb45
bb45:
  %t186 = load i64, ptr %l11, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l11, !tbaa !24
  br label %bb41
bb46:
  %t190 = load ptr, ptr %lp6
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t191, ptr %rv
  br label %ret
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb55
bb50:
  %t193 = icmp sge i64 0, 0
  br i1 %t193, label %bb51, label %bb52
bb51:
  %t195 = icmp sle i64 0, 2305843009213693951
  br i1 %t195, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_69c4f09cb804b315_a031ca4d3ae928f9)
  unreachable
bb53:
  %t197 = mul i64 0, 4
  %t198 = insertvalue { i64, ptr } undef, i64 0, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t199, ptr %rv
  br label %ret
bb54:
  call void @__olang_check_failed(ptr @olang_loc_69c4f09cb804b315_a031ca4d3ae928f9)
  unreachable
bb55:
  call void @__olang_check_failed(ptr @olang_loc_81e6157a61b9a5f1_a0e5ca59452f2055)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eprimName(ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a0 to i64
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp eq i64 %t5, 3
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb4:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp eq i64 %t9, 4
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb8:
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = icmp eq i64 %t13, 5
  br i1 %t15, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb12:
  %t17 = load i64, ptr %l1, !tbaa !24
  %t19 = icmp eq i64 %t17, 6
  br i1 %t19, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb16:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = icmp eq i64 %t21, 7
  br i1 %t23, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb20:
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = icmp eq i64 %t25, 8
  br i1 %t27, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb24:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = icmp eq i64 %t29, 9
  br i1 %t31, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb28:
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp eq i64 %t33, 10
  br i1 %t35, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb32:
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = icmp eq i64 %t37, 11
  br i1 %t39, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb36:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t41, 12
  br i1 %t43, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb40:
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = icmp eq i64 %t45, 13
  br i1 %t47, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb44:
  %t49 = load i64, ptr %l1, !tbaa !24
  %t51 = icmp eq i64 %t49, 14
  br i1 %t51, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_25d55d46e6c695b2_1c5feb2a345583d6)
  unreachable
bb53:
  %t53 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:litBuilder" @compiler_2fcheck_3alitBuilder_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/check:litBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/check:litBuilder" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/check:litBuilder" %t6, i32 %a1, 1
  store %"compiler/check:litBuilder" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litBuilder", ptr %rv
  ret %"compiler/check:litBuilder" %rr
}

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
@.d0 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/argument" }>, align 8
@.d1 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ArgumentError" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn?&" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Pow" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"'**'" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Pow" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Pow" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"I8" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I16" }>, align 8
@.d16 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I32" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"U8" }>, align 8
@.d19 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U16" }>, align 8
@.d20 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U32" }>, align 8
@.d21 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"U64" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d23 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d24 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"?" }>, align 8
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
@olang_loc_1b45850c01c63cc9_5ae567fd22704b05 = external constant [0 x i8]
declare i1 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eIsPending(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChoose(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_fd7ab254095cc62_437ccc419ec0735e = external constant [0 x i8]
@olang_loc_44fad8dfdc3fed7a_1f09cb6ef3c9efd6 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_27c62905650ee804_ddef4b1ccc198ce0 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@olang_loc_6ec35b2a419acb72_9ad92e0ac70f122e = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estructBody(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_27e3ab5b7d984c5a_74f0959f23b09f6e = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3, { i64, ptr } %a4, ptr %a5, ptr %a6)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleak(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4b7cfa1fb5fcb474_4538ddb4be3a0770 = external constant [0 x i8]
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleaks1(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eargumentPush(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3, { i64, ptr } %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enegate(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eheldArg(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2, i64 %a3)
declare %"compiler/typed:Call" @compiler_2ftyped_3aCall_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i1 %a3, i1 %a4)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Seq" @compiler_2ftyped_3aSeq_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1, i1 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H0e73c22773457b60eb954c2c4a2643e9(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOperandNotBool(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elitFits(ptr %v0, ptr %a0, %"compiler/check:litv" %a1, i32 %a2)
@olang_loc_4be822f0c0d0de23_1d47e77fc9d2ed77 = external constant [0 x i8]
@olang_loc_a9a2c4034b6e08dd_84116590a5e4e601 = external constant [0 x i8]
declare %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %a0, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H943a9bb03970f71acf57214091669a7d(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_9eba0537152ec68c_48ed4257e6d07438 = external constant [0 x i8]
@olang_loc_cd7c953a3f1af3d1_dcd21a8e35cf56dd = external constant [0 x i8]
declare i1 @compiler_2fcheck_2erefWrittenTop(ptr %v0, ptr %a0)
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esayUncovered(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3, ptr %a4, i1 %a5)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
@olang_loc_3cc47694b244d9ce_439392ee5cdf31e2 = external constant [0 x i8]
declare %"compiler/typed:Arm" @compiler_2ftyped_3aArm_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, %"compiler/source:Span" %a0, { i64, ptr } %a1, ptr %a2, ptr %a3, ptr %a4)
declare i1 @compiler_2fcheck_2edirectSet(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fcheck_2echainSets(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2echainAssignsAll(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebranchesAssign(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i32 %a4)
@olang_loc_8db10e524bac21a2_ad831be9185e1396 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimplSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedDestruct(ptr %v0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRawBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_a6377e7673ccb83e_f00ca4f503dea522 = external constant [0 x i8]
@olang_loc_4543a2f38c43ab3f_a376b2729e3ac623 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDefaultMethods(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflFold(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2fcheck_2eRvBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fcheck_2eRvInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflVal" @compiler_2fcheck_2ereflVal_2enoRefl(ptr %v0)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflPiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_3ff8b815b8f08888_72cba32f0bfc98b4 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eleadWord(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_af27478d58ae9a15_461e52858b358fe1 = external constant [0 x i8]
declare %"compiler/generic:Origin" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eorigin(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eResolve(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewrittenMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroBorrowedFrom(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedSettled(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eRaisedAt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckNow(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_af8bfee451e26bd0_dc06632e423180dc = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egenericNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare void @compiler_2fgeneric_3aContext_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erootStmts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInLambda(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOutside(ptr %v0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInDefer(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldInJoin(ptr %v0)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresultAt(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@G_2ecompiler_2fcheck_2eRoReturned = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroStore(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_3043109bf91ec9f6_e521dc8ddba3d97a = external constant [0 x i8]
@olang_loc_4815dd6a844b648b_8f1bd19822fdb0cf = external constant [0 x i8]
@olang_loc_5df9bd969218a728_7fa184e5bc45956c = external constant [0 x i8]
@olang_loc_69c4f09cb804b315_a031ca4d3ae928f9 = external constant [0 x i8]
@olang_loc_81e6157a61b9a5f1_a0e5ca59452f2055 = external constant [0 x i8]
@olang_loc_25d55d46e6c695b2_1c5feb2a345583d6 = external constant [0 x i8]

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
