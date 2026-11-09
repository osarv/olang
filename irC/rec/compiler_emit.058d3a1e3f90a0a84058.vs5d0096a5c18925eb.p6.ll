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
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/emit:Object" = type { { i64, ptr }, i32, { i64, ptr }, i64 }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l103 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t126 = alloca { i64, [2 x i64] }, align 8
  %t232 = alloca { i64, [2 x i64] }, align 8
  %t284 = alloca { i64, [2 x i64] }, align 8
  %t324 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb49
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/lower:Lowerer", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t28 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t21, i64 %t25)
  store ptr %t28, ptr %l25
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l25, !tbaa !29
  %t31 = getelementptr %"compiler/typed:Body", ptr %t29, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  store { i64, [2 x i64] } %t32, ptr %l4
  %t34 = load { i64, [2 x i64] }, ptr %l4
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 0
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t40 = getelementptr { i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  store i64 %t41, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstanceProfName(ptr %v0, ptr %v1, ptr %t43, i64 %t44)
  store { i64, ptr } %t47, ptr %l34
  br label %bb8
bb8:
  %t48 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t48, ptr %l28, !tbaa !27
  br label %bb48
bb9:
  %t49 = load { i64, [2 x i64] }, ptr %l4
  %t51 = extractvalue { i64, [2 x i64] } %t49, 0
  %t52 = icmp eq i64 %t51, 1
  br i1 %t52, label %bb10, label %bb11
bb10:
  %t54 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t55 = getelementptr { i32, i32 }, ptr %t54, i32 0, i32 0
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l6, !tbaa !23
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l38, !tbaa !29
  %t59 = load ptr, ptr %l2, !tbaa !29
  %t60 = load i32, ptr %l6, !tbaa !23
  %t62 = inttoptr i64 0 to ptr
  %t65 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %t62, ptr %t59, i32 %t60)
  store { i64, ptr } %t65, ptr %l42
  br label %bb13
bb13:
  %t66 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  %t68 = extractvalue { i64, ptr } %t66, 1
  %t69 = mul i64 %t67, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t69)
  call void @llvm.memcpy.p0.p0.i64(ptr %t70, ptr %t68, i64 %t69, i1 false)
  %t71 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  %t73 = load ptr, ptr %l38, !tbaa !29
  %t75 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v1, ptr %t73, { i64, ptr } %t72)
  store { i64, ptr } %t75, ptr %l44
  br label %bb14
bb14:
  %t76 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t76, ptr %l28, !tbaa !27
  br label %bb48
bb15:
  %t77 = load { i64, [2 x i64] }, ptr %l4
  %t79 = extractvalue { i64, [2 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 3
  br i1 %t80, label %bb16, label %bb17
bb16:
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t83 = getelementptr { i32 }, ptr %t82, i32 0, i32 0
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l7, !tbaa !23
  br label %bb18
bb17:
  br label %bb21
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l48, !tbaa !29
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t88 = load i32, ptr %l7, !tbaa !23
  %t90 = inttoptr i64 0 to ptr
  %t93 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s4, ptr %t90, ptr %t87, i32 %t88)
  store { i64, ptr } %t93, ptr %l52
  br label %bb19
bb19:
  %t94 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  %t96 = extractvalue { i64, ptr } %t94, 1
  %t97 = mul i64 %t95, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t97)
  call void @llvm.memcpy.p0.p0.i64(ptr %t98, ptr %t96, i64 %t97, i1 false)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  %t101 = load ptr, ptr %l48, !tbaa !29
  %t103 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %s4, ptr %s4, ptr %t101, { i64, ptr } %t100)
  store { i64, ptr } %t103, ptr %l54
  br label %bb20
bb20:
  %t104 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t109 = add i64 %t106, %t108
  %t110 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t105, i64 %t106)
  %t111 = getelementptr i8, ptr %t110, i64 %t106
  call void @olang_textcopy(ptr %t111, ptr %t107, i64 %t108)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t110, 1
  store { i64, ptr } %t113, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb48
bb21:
  %t115 = load { i64, [2 x i64] }, ptr %l4
  %t117 = extractvalue { i64, [2 x i64] } %t115, 0
  %t118 = icmp eq i64 %t117, 4
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t120 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t121 = getelementptr { i32 }, ptr %t120, i32 0, i32 0
  %t122 = load i32, ptr %t121
  store i32 %t122, ptr %l8, !tbaa !23
  br label %bb24
bb23:
  br label %bb26
bb24:
  store %olang.scope zeroinitializer, ptr %s6
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i32, ptr %l8, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [2 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t129 = insertvalue { i32 } undef, i32 %t125, 0
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t126, i32 0, i32 1
  store { i32 } %t129, ptr %t130
  %t131 = load { i64, [2 x i64] }, ptr %t126
  %t134 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %s6, ptr %t124, { i64, [2 x i64] } %t131)
  store { i64, ptr } %t134, ptr %l62
  br label %bb25
bb25:
  %t135 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t139 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t140 = add i64 %t137, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t136, i64 %t137)
  %t142 = getelementptr i8, ptr %t141, i64 %t137
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  store { i64, ptr } %t144, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb48
bb26:
  %t146 = load { i64, [2 x i64] }, ptr %l4
  %t148 = extractvalue { i64, [2 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 5
  br i1 %t149, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l66, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t151, ptr %l28, !tbaa !27
  br label %bb48
bb30:
  %t153 = load { i64, [2 x i64] }, ptr %l4
  %t155 = extractvalue { i64, [2 x i64] } %t153, 0
  %t156 = icmp eq i64 %t155, 6
  br i1 %t156, label %bb31, label %bb32
bb31:
  %t158 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t159 = getelementptr { i64, i32 }, ptr %t158, i32 0, i32 0
  %t160 = load i64, ptr %t159
  store i64 %t160, ptr %l9, !tbaa !24
  %t162 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t163 = getelementptr { i64, i32 }, ptr %t162, i32 0, i32 1
  %t164 = load i32, ptr %t163
  store i32 %t164, ptr %l10, !tbaa !23
  br label %bb33
bb32:
  br label %bb37
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/emit:Emitter", ptr %t166, i32 0, i32 0
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 0
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/load:Loader", ptr %t172, i32 0, i32 10
  %t175 = load i64, ptr %l9, !tbaa !24
  %t178 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t174, i64 %t175)
  store ptr %t178, ptr %l77
  br label %bb34
bb34:
  %t179 = load ptr, ptr %l77, !tbaa !29
  %t181 = getelementptr %"compiler/load:Module", ptr %t179, i32 0, i32 2
  %t182 = load { i64, ptr }, ptr %t181, !tbaa !27
  %t183 = load i64, ptr %l9, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/emit:Emitter", ptr %t184, i32 0, i32 0
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/generic:Program", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/load:Loader", ptr %t190, i32 0, i32 12
  %t193 = load i64, ptr %t192, !tbaa !24
  %t196 = icmp eq i64 %t183, %t193
  %t199 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s9, { i64, ptr } %t182, i1 %t196)
  store { i64, ptr } %t199, ptr %l86
  br label %bb35
bb35:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l10, !tbaa !23
  %t204 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s9, ptr %t200, i32 %t201)
  store { i64, ptr } %t204, ptr %l89
  br label %bb36
bb36:
  %t205 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t211 = add i64 %t207, %t210
  %t212 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t206, i64 %t207)
  %t216 = getelementptr i8, ptr %t215, i64 %t207
  call void @olang_textcopy(ptr %t216, ptr %t209, i64 %t210)
  %t217 = getelementptr i8, ptr %t216, i64 %t210
  call void @olang_textcopy(ptr %t217, ptr %t212, i64 %t213)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t215, 1
  store { i64, ptr } %t219, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb48
bb37:
  %t221 = load { i64, [2 x i64] }, ptr %l4
  %t223 = extractvalue { i64, [2 x i64] } %t221, 0
  %t224 = icmp eq i64 %t223, 8
  br i1 %t224, label %bb38, label %bb39
bb38:
  %t226 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t227 = getelementptr { i32, i32, i64 }, ptr %t226, i32 0, i32 0
  %t228 = load i32, ptr %t227
  store i32 %t228, ptr %l11, !tbaa !23
  br label %bb40
bb39:
  br label %bb42
bb40:
  store %olang.scope zeroinitializer, ptr %s11
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l11, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t232, i32 0, i32 0
  store i64 0, ptr %t233
  %t235 = insertvalue { i32 } undef, i32 %t231, 0
  %t236 = getelementptr { i64, [2 x i64] }, ptr %t232, i32 0, i32 1
  store { i32 } %t235, ptr %t236
  %t237 = load { i64, [2 x i64] }, ptr %t232
  %t240 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %s11, ptr %t230, { i64, [2 x i64] } %t237)
  store { i64, ptr } %t240, ptr %l97
  br label %bb41
bb41:
  %t241 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t247 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t246)
  call void @olang_textcopy(ptr %t247, ptr %t242, i64 %t243)
  %t248 = getelementptr i8, ptr %t247, i64 %t243
  call void @olang_textcopy(ptr %t248, ptr %t244, i64 %t245)
  %t249 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t247, 1
  store { i64, ptr } %t250, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb48
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load { i64, [2 x i64] }, ptr %l1
  %t256 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t252, { i64, [2 x i64] } %t253)
  store { i64, ptr } %t256, ptr %l101
  br label %bb46
bb46:
  %t257 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t257, ptr %l28, !tbaa !27
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_708d0e5229213e92_b8dbbceffe09cee)
  unreachable
bb48:
  %t258 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l102, !tbaa !24
  %t260 = load i64, ptr %l102, !tbaa !24
  %t261 = mul i64 %t260, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t261)
  %t263 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  store { i64, ptr } %t264, ptr %l103, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l102, !tbaa !24
  %t270 = mul i64 %t269, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t266, ptr %t268, i64 %t270, i1 false)
  %t271 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t271, ptr %l28, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t272, ptr %rv
  br label %ret
bb49:
  %t273 = load { i64, [2 x i64] }, ptr %l1
  %t275 = extractvalue { i64, [2 x i64] } %t273, 0
  %t276 = icmp eq i64 %t275, 1
  br i1 %t276, label %bb50, label %bb51
bb50:
  %t278 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t279 = getelementptr { i32 }, ptr %t278, i32 0, i32 0
  %t280 = load i32, ptr %t279
  store i32 %t280, ptr %l12, !tbaa !23
  br label %bb52
bb51:
  br label %bb54
bb52:
  store %olang.scope zeroinitializer, ptr %s14
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load i32, ptr %l12, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t284
  %t285 = getelementptr { i64, [2 x i64] }, ptr %t284, i32 0, i32 0
  store i64 0, ptr %t285
  %t287 = insertvalue { i32 } undef, i32 %t283, 0
  %t288 = getelementptr { i64, [2 x i64] }, ptr %t284, i32 0, i32 1
  store { i32 } %t287, ptr %t288
  %t289 = load { i64, [2 x i64] }, ptr %t284
  %t292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %s14, ptr %t282, { i64, [2 x i64] } %t289)
  store { i64, ptr } %t292, ptr %l110
  br label %bb53
bb53:
  %t293 = load { i64, ptr }, ptr %l110, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t298 = add i64 %t295, %t297
  %t299 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t298)
  call void @olang_textcopy(ptr %t299, ptr %t294, i64 %t295)
  %t300 = getelementptr i8, ptr %t299, i64 %t295
  call void @olang_textcopy(ptr %t300, ptr %t296, i64 %t297)
  %t301 = insertvalue { i64, ptr } undef, i64 %t298, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t299, 1
  call void @__olang_scope_close(ptr %s14)
  store { i64, ptr } %t302, ptr %rv
  br label %ret
bb54:
  %t304 = load { i64, [2 x i64] }, ptr %l1
  %t306 = extractvalue { i64, [2 x i64] } %t304, 0
  %t307 = icmp eq i64 %t306, 2
  br i1 %t307, label %bb55, label %bb56
bb55:
  %t309 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t310 = getelementptr { i32 }, ptr %t309, i32 0, i32 0
  %t311 = load i32, ptr %t310
  store i32 %t311, ptr %l13, !tbaa !23
  br label %bb59
bb56:
  %t313 = load { i64, [2 x i64] }, ptr %l1
  %t315 = extractvalue { i64, [2 x i64] } %t313, 0
  %t316 = icmp eq i64 %t315, 6
  br i1 %t316, label %bb57, label %bb58
bb57:
  %t318 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t319 = getelementptr { i32, i64 }, ptr %t318, i32 0, i32 0
  %t320 = load i32, ptr %t319
  store i32 %t320, ptr %l13, !tbaa !23
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i32, ptr %l13, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t324
  %t325 = getelementptr { i64, [2 x i64] }, ptr %t324, i32 0, i32 0
  store i64 0, ptr %t325
  %t327 = insertvalue { i32 } undef, i32 %t323, 0
  %t328 = getelementptr { i64, [2 x i64] }, ptr %t324, i32 0, i32 1
  store { i32 } %t327, ptr %t328
  %t329 = load { i64, [2 x i64] }, ptr %t324
  %t332 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProfName(ptr %v0, ptr %v1, ptr %t322, { i64, [2 x i64] } %t329)
  store { i64, ptr } %t332, ptr %l121
  br label %bb60
bb60:
  %t333 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t333, ptr %rv
  br label %ret
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load { i64, [2 x i64] }, ptr %l1
  %t338 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t334, { i64, [2 x i64] } %t335)
  store { i64, ptr } %t338, ptr %l124
  br label %bb65
bb65:
  %t339 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t339, ptr %rv
  br label %ret
bb66:
  call void @__olang_check_failed(ptr @olang_loc_adcc4a96e8e96893_813fe5cdd5223daf)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eProgram(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l59 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eemitAll(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l1, !tbaa !29
  store ptr %t3, ptr %l9, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %s0, ptr %t4)
  store { i64, ptr } %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t10 = extractvalue { i64, ptr } %t7, 1
  %t11 = mul i64 %t9, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  call void @llvm.memcpy.p0.p0.i64(ptr %t12, ptr %t10, i64 %t11, i1 false)
  %t13 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %s0, ptr %t15, { i64, ptr } %t14)
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/emit:Emitter", ptr %t18, i32 0, i32 57
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %v0, ptr %t17, { i64, ptr } %t21)
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 45
  store ptr %t27, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l3, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l22
  br label %bb6
bb6:
  %t33 = load i64, ptr %l20, !tbaa !24
  %t34 = load i64, ptr %l22, !tbaa !24
  %t35 = icmp slt i64 %t33, %t34
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  store { i64, ptr } %t43, ptr %l27
  br label %bb10
bb10:
  %t44 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t45 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %v0, ptr %t45, { i64, ptr } %t44)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb5
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/emit:Emitter", ptr %t54, i32 0, i32 19
  store ptr %t56, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l6, !tbaa !24
  store i64 %t58, ptr %l35, !tbaa !24
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l37
  br label %bb15
bb15:
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = icmp slt i64 %t62, %t63
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb22
bb17:
  br label %bb18
bb18:
  %t68 = load ptr, ptr %l5, !tbaa !29
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t68, i64 %t69)
  store { i64, ptr } %t72, ptr %l42
  br label %bb19
bb19:
  %t73 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t74 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %v0, ptr %t74, { i64, ptr } %t73)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l6, !tbaa !24
  br label %bb14
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/emit:Emitter", ptr %t83, i32 0, i32 60
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s7
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l51, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/emit:Emitter", ptr %t91, i32 0, i32 60
  %t94 = load i64, ptr %t93, !tbaa !24
  %t96 = call { i64, ptr } @compiler_2femit_2edbgTail(ptr %s7, i64 %t94)
  store { i64, ptr } %t96, ptr %l54
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t97 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t105 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %s7, ptr %t105, { i64, ptr } %t104)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb27
bb27:
  %t107 = load ptr, ptr %l1, !tbaa !29
  store ptr %t107, ptr %l57, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eattributes(ptr %v0, ptr %s0, ptr %t108)
  store { i64, ptr } %t110, ptr %l59
  br label %bb28
bb28:
  %t111 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = extractvalue { i64, ptr } %t111, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v1, ptr %s0, ptr %t119, { i64, ptr } %t118)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebakedText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca %"std/prelude/text:StringBuilder"
  %l35 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l63 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca %"std/prelude/text:StringBuilder"
  %l82 = alloca %"std/prelude/text:StringBuilder"
  %l85 = alloca i64
  %l90 = alloca i64
  %l93 = alloca i64
  %l111 = alloca i64
  %l114 = alloca i64
  %l116 = alloca i64
  %l120 = alloca i64
  %l123 = alloca i64
  %l128 = alloca i64
  %l149 = alloca i64
  %l152 = alloca i64
  %l170 = alloca ptr
  %l174 = alloca i8
  %l175 = alloca { i64, ptr }
  %l180 = alloca i64
  %l183 = alloca i64
  %l186 = alloca i64
  %l193 = alloca i64
  %l195 = alloca { i64, ptr }
  %l198 = alloca { i64, ptr }
  %l202 = alloca i64
  %l207 = alloca i64
  %l209 = alloca ptr
  %l213 = alloca i64
  %l217 = alloca i32
  %l219 = alloca { i64, ptr }
  %l223 = alloca i64
  %l225 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l231 = alloca i64
  %l234 = alloca i64
  %l236 = alloca i64
  %l237 = alloca { i64, ptr }
  %l244 = alloca i64
  %l250 = alloca ptr
  %l251 = alloca { i64, ptr }
  %l255 = alloca i64
  %l261 = alloca i64
  %l265 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l269 = alloca { i64, ptr }
  %l271 = alloca { i64, ptr }
  %l279 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l32
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l32
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Image", ptr %t3, i32 0, i32 0
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v2, ptr %t5)
  store i64 %t7, ptr %l35
  br label %bb2
bb2:
  %t8 = load i64, ptr %l35, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb8
bb5:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l42, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l42, !tbaa !24
  store i64 %t35, ptr %l39, !tbaa !24
  br label %bb8
bb8:
  %t36 = load i64, ptr %l39, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb117
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l9, !tbaa !24
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t57 = getelementptr %"compiler/eval:Image", ptr %t55, i32 0, i32 0
  %t58 = load i64, ptr %l9, !tbaa !24
  %t61 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRef_3ccompiler_2feval_3aBlob_3e(ptr %v2, ptr %v2, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l63
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l63, !tbaa !29
  store ptr %t62, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  %t63 = load i64, ptr %l9, !tbaa !24
  %t65 = icmp eq i64 %t63, 0
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t71 = extractvalue { i64, ptr } %t67, 1
  %t72 = extractvalue { i64, ptr } %t67, 0
  %t73 = add i64 %t69, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t68, i64 %t69)
  %t75 = getelementptr i8, ptr %t74, i64 %t69
  call void @olang_textcopy(ptr %t75, ptr %t71, i64 %t72)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t74, 1
  store { i64, ptr } %t77, ptr %l66, !tbaa !27
  br label %bb16
bb15:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t80 = load i64, ptr %l9, !tbaa !24
  %t81 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t84 = extractvalue { i64, ptr } %t79, 1
  %t85 = extractvalue { i64, ptr } %t79, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t91 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t92 = add i64 %t89, %t91
  %t93 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t92)
  call void @olang_textcopy(ptr %t93, ptr %t81, i64 %t82)
  %t94 = getelementptr i8, ptr %t93, i64 %t82
  call void @olang_textcopy(ptr %t94, ptr %t84, i64 %t85)
  %t95 = getelementptr i8, ptr %t94, i64 %t85
  call void @olang_textcopy(ptr %t95, ptr %t87, i64 %t88)
  %t96 = getelementptr i8, ptr %t95, i64 %t88
  %t97 = call i64 @__olang_fmt_i64(ptr %t96, i64 %t80)
  %t98 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t93, 1
  store { i64, ptr } %t99, ptr %l66, !tbaa !27
  br label %bb16
bb16:
  %t101 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t101, ptr %l12, !tbaa !27
  %t102 = load i64, ptr %l9, !tbaa !24
  %t104 = icmp eq i64 %t102, 0
  br i1 %t104, label %bb17, label %bb18
bb17:
  %t106 = load ptr, ptr %l2, !tbaa !29
  %t108 = getelementptr %"compiler/eval:Image", ptr %t106, i32 0, i32 2
  %t109 = load i1, ptr %t108, !tbaa !21
  br i1 %t109, label %bb19, label %bb20
bb18:
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t113 = getelementptr %"compiler/eval:Blob", ptr %t111, i32 0, i32 2
  %t114 = load i1, ptr %t113, !tbaa !21
  br i1 %t114, label %bb22, label %bb23
bb19:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l77, !tbaa !27
  br label %bb21
bb21:
  %t116 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t116, ptr %l74, !tbaa !27
  br label %bb25
bb22:
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb24
bb23:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l80, !tbaa !27
  br label %bb24
bb24:
  %t117 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t117, ptr %l74, !tbaa !27
  br label %bb25
bb25:
  %t118 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t118, ptr %l13, !tbaa !27
  %t119 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t119, ptr %l81
  br label %bb26
bb26:
  %t120 = load %"std/prelude/text:StringBuilder", ptr %l81
  store %"std/prelude/text:StringBuilder" %t120, ptr %l14
  %t121 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t121, ptr %l82
  br label %bb27
bb27:
  %t122 = load %"std/prelude/text:StringBuilder", ptr %l82
  store %"std/prelude/text:StringBuilder" %t122, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t123 = load ptr, ptr %l10, !tbaa !29
  %t125 = getelementptr %"compiler/eval:Blob", ptr %t123, i32 0, i32 3
  %t127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t125)
  store i64 %t127, ptr %l85
  br label %bb28
bb28:
  %t128 = load i64, ptr %l85, !tbaa !24
  %t129 = add i64 %t128, 1
  store i64 %t129, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t131 = load i64, ptr %l18, !tbaa !24
  %t132 = load i64, ptr %l17, !tbaa !24
  %t135 = icmp sgt i64 %t131, %t132
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t137 = load i64, ptr %l19, !tbaa !24
  %t139 = icmp sgt i64 %t137, 0
  br i1 %t139, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb34
bb31:
  %t141 = load i64, ptr %l18, !tbaa !24
  %t142 = load i64, ptr %l17, !tbaa !24
  %t145 = sub i64 %t141, %t142
  %t146 = load i64, ptr %l19, !tbaa !24
  %t149 = add i64 %t145, %t146
  %t151 = sub i64 %t149, 1
  %t152 = load i64, ptr %l19, !tbaa !24
  %t155 = sdiv i64 %t151, %t152
  store i64 %t155, ptr %l93, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb33
bb33:
  %t157 = load i64, ptr %l93, !tbaa !24
  store i64 %t157, ptr %l90, !tbaa !24
  br label %bb34
bb34:
  %t158 = load i64, ptr %l90, !tbaa !24
  store i64 %t158, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s6
  %t159 = load i64, ptr %l21, !tbaa !24
  %t160 = load i64, ptr %l20, !tbaa !24
  %t163 = icmp slt i64 %t159, %t160
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb112
bb37:
  br label %bb38
bb38:
  %t167 = load i64, ptr %l17, !tbaa !24
  %t168 = load i64, ptr %l21, !tbaa !24
  %t169 = load i64, ptr %l19, !tbaa !24
  %t172 = mul i64 %t168, %t169
  %t175 = add i64 %t167, %t172
  store i64 %t175, ptr %l22, !tbaa !24
  %t177 = load i64, ptr %l22, !tbaa !24
  store i64 %t177, ptr %l111, !tbaa !24
  %t178 = load ptr, ptr %l10, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Blob", ptr %t178, i32 0, i32 3
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t180)
  store i64 %t182, ptr %l114
  br label %bb39
bb39:
  %t183 = load i64, ptr %l111, !tbaa !24
  %t184 = load i64, ptr %l114, !tbaa !24
  %t185 = icmp slt i64 %t183, %t184
  br i1 %t185, label %bb40, label %bb41
bb40:
  %t187 = load ptr, ptr %l10, !tbaa !29
  %t189 = getelementptr %"compiler/eval:Blob", ptr %t187, i32 0, i32 3
  %t190 = load i64, ptr %l22, !tbaa !24
  %t193 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t189, i64 %t190)
  store i64 %t193, ptr %l120
  br label %bb42
bb41:
  %t194 = load ptr, ptr %l10, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Blob", ptr %t194, i32 0, i32 0
  %t198 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v2, ptr %t196)
  store i64 %t198, ptr %l123
  br label %bb43
bb42:
  %t199 = load i64, ptr %l120, !tbaa !24
  store i64 %t199, ptr %l116, !tbaa !24
  br label %bb44
bb43:
  %t200 = load i64, ptr %l123, !tbaa !24
  store i64 %t200, ptr %l116, !tbaa !24
  br label %bb44
bb44:
  %t201 = load i64, ptr %l116, !tbaa !24
  store i64 %t201, ptr %l23, !tbaa !24
  %t202 = load i64, ptr %l23, !tbaa !24
  %t203 = load i64, ptr %l16, !tbaa !24
  %t206 = icmp sgt i64 %t202, %t203
  br i1 %t206, label %bb45, label %bb46
bb45:
  store %olang.scope zeroinitializer, ptr %s7
  %t209 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s2, ptr %l14)
  store i64 %t209, ptr %l128
  br label %bb47
bb46:
  br label %bb71
bb47:
  %t210 = load i64, ptr %l128, !tbaa !24
  %t211 = icmp sgt i64 %t210, 0
  br i1 %t211, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s8, ptr %l14, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb50
bb49:
  br label %bb52
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s8, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb52
bb52:
  %t215 = load i64, ptr %l23, !tbaa !24
  %t216 = load i64, ptr %l16, !tbaa !24
  %t219 = sub i64 %t215, %t216
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t223 = call i64 @__olang_fmt_i64(ptr null, i64 %t219)
  %t224 = add i64 %t221, %t223
  %t225 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t226 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t227 = add i64 %t224, %t226
  %t228 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t227)
  call void @olang_textcopy(ptr %t228, ptr %t220, i64 %t221)
  %t229 = getelementptr i8, ptr %t228, i64 %t221
  %t230 = call i64 @__olang_fmt_i64(ptr %t229, i64 %t219)
  %t231 = getelementptr i8, ptr %t229, i64 %t223
  call void @olang_textcopy(ptr %t231, ptr %t225, i64 %t226)
  %t232 = insertvalue { i64, ptr } undef, i64 %t227, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t228, 1
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = extractvalue { i64, ptr } %t233, 1
  %t237 = mul i64 %t235, 1
  %t238 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t237)
  call void @llvm.memcpy.p0.p0.i64(ptr %t238, ptr %t236, i64 %t237, i1 false)
  %t239 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t238, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s7, ptr %l14, { i64, ptr } %t240)
  br label %bb53
bb53:
  %t243 = load i64, ptr %l23, !tbaa !24
  %t244 = load i64, ptr %l16, !tbaa !24
  %t247 = sub i64 %t243, %t244
  %t248 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t251 = call i64 @__olang_fmt_i64(ptr null, i64 %t247)
  %t252 = add i64 %t249, %t251
  %t253 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t255 = add i64 %t252, %t254
  %t256 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t255)
  call void @olang_textcopy(ptr %t256, ptr %t248, i64 %t249)
  %t257 = getelementptr i8, ptr %t256, i64 %t249
  %t258 = call i64 @__olang_fmt_i64(ptr %t257, i64 %t247)
  %t259 = getelementptr i8, ptr %t257, i64 %t251
  call void @olang_textcopy(ptr %t259, ptr %t253, i64 %t254)
  %t260 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t256, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s7, ptr %l15, { i64, ptr } %t268)
  br label %bb54
bb54:
  %t271 = load i64, ptr %l16, !tbaa !24
  store i64 %t271, ptr %l24, !tbaa !24
  %t273 = load i64, ptr %l23, !tbaa !24
  store i64 %t273, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t275 = load i64, ptr %l25, !tbaa !24
  %t276 = load i64, ptr %l24, !tbaa !24
  %t279 = icmp sgt i64 %t275, %t276
  br i1 %t279, label %bb55, label %bb56
bb55:
  %t281 = load i64, ptr %l26, !tbaa !24
  %t283 = icmp sgt i64 %t281, 0
  br i1 %t283, label %bb57, label %bb58
bb56:
  store i64 0, ptr %l149, !tbaa !24
  br label %bb60
bb57:
  %t285 = load i64, ptr %l25, !tbaa !24
  %t286 = load i64, ptr %l24, !tbaa !24
  %t289 = sub i64 %t285, %t286
  %t290 = load i64, ptr %l26, !tbaa !24
  %t293 = add i64 %t289, %t290
  %t295 = sub i64 %t293, 1
  %t296 = load i64, ptr %l26, !tbaa !24
  %t299 = sdiv i64 %t295, %t296
  store i64 %t299, ptr %l152, !tbaa !24
  br label %bb59
bb58:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb59
bb59:
  %t301 = load i64, ptr %l152, !tbaa !24
  store i64 %t301, ptr %l149, !tbaa !24
  br label %bb60
bb60:
  %t302 = load i64, ptr %l149, !tbaa !24
  store i64 %t302, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb61
bb61:
  store %olang.scope zeroinitializer, ptr %s12
  %t303 = load i64, ptr %l28, !tbaa !24
  %t304 = load i64, ptr %l27, !tbaa !24
  %t307 = icmp slt i64 %t303, %t304
  %t309 = xor i1 %t307, true
  br i1 %t309, label %bb62, label %bb63
bb62:
  call void @__olang_scope_close(ptr %s12)
  br label %bb69
bb63:
  br label %bb64
bb64:
  %t311 = load i64, ptr %l24, !tbaa !24
  %t312 = load i64, ptr %l28, !tbaa !24
  %t313 = load i64, ptr %l26, !tbaa !24
  %t316 = mul i64 %t312, %t313
  %t319 = add i64 %t311, %t316
  store ptr %l15, ptr %l170, !tbaa !29
  %t321 = load ptr, ptr %l10, !tbaa !29
  %t323 = getelementptr %"compiler/eval:Blob", ptr %t321, i32 0, i32 0
  %t327 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v2, ptr %t323, i64 %t319)
  store i8 %t327, ptr %l174
  br label %bb65
bb65:
  %t328 = load i8, ptr %l174, !tbaa !22
  %t329 = call { i64, ptr } @compiler_2femit_2ehexByte(ptr %s12, i8 %t328)
  store { i64, ptr } %t329, ptr %l175
  br label %bb66
bb66:
  %t330 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t331 = extractvalue { i64, ptr } %t330, 0
  %t332 = extractvalue { i64, ptr } %t330, 1
  %t333 = mul i64 %t331, 1
  %t334 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t333)
  call void @llvm.memcpy.p0.p0.i64(ptr %t334, ptr %t332, i64 %t333, i1 false)
  %t335 = insertvalue { i64, ptr } undef, i64 %t331, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t334, 1
  %t337 = load ptr, ptr %l170, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s12, ptr %t337, { i64, ptr } %t336)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s12)
  br label %bb68
bb68:
  %t339 = load i64, ptr %l28, !tbaa !24
  %t341 = add i64 %t339, 1
  store i64 %t341, ptr %l28, !tbaa !24
  br label %bb61
bb69:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s7, ptr %l15, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s7)
  br label %bb71
bb71:
  %t344 = load i64, ptr %l22, !tbaa !24
  store i64 %t344, ptr %l180, !tbaa !24
  %t345 = load ptr, ptr %l10, !tbaa !29
  %t347 = getelementptr %"compiler/eval:Blob", ptr %t345, i32 0, i32 3
  %t349 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t347)
  store i64 %t349, ptr %l183
  br label %bb72
bb72:
  %t350 = load i64, ptr %l180, !tbaa !24
  %t351 = load i64, ptr %l183, !tbaa !24
  %t352 = icmp eq i64 %t350, %t351
  br i1 %t352, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s6)
  br label %bb112
bb74:
  br label %bb75
bb75:
  %t355 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s2, ptr %l14)
  store i64 %t355, ptr %l186
  br label %bb76
bb76:
  %t356 = load i64, ptr %l186, !tbaa !24
  %t357 = icmp sgt i64 %t356, 0
  br i1 %t357, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s15
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s15, ptr %l14, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb79
bb78:
  br label %bb81
bb79:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s15, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s15)
  br label %bb81
bb81:
  %t361 = load ptr, ptr %l10, !tbaa !29
  %t363 = getelementptr %"compiler/eval:Blob", ptr %t361, i32 0, i32 4
  %t364 = load i64, ptr %l22, !tbaa !24
  %t367 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t363, i64 %t364)
  store i64 %t367, ptr %l193
  br label %bb82
bb82:
  %t368 = load i64, ptr %l193, !tbaa !24
  %t369 = icmp eq i64 %t368, 0
  br i1 %t369, label %bb83, label %bb84
bb83:
  %t371 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t372 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t373 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t375 = extractvalue { i64, ptr } %t371, 1
  %t376 = extractvalue { i64, ptr } %t371, 0
  %t377 = add i64 %t373, %t376
  %t378 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t372, i64 %t373)
  %t379 = getelementptr i8, ptr %t378, i64 %t373
  call void @olang_textcopy(ptr %t379, ptr %t375, i64 %t376)
  %t380 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t381 = insertvalue { i64, ptr } %t380, ptr %t378, 1
  store { i64, ptr } %t381, ptr %l195, !tbaa !27
  br label %bb86
bb84:
  %t383 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t383, ptr %l198, !tbaa !27
  %t384 = load ptr, ptr %l10, !tbaa !29
  %t386 = getelementptr %"compiler/eval:Blob", ptr %t384, i32 0, i32 4
  %t387 = load i64, ptr %l22, !tbaa !24
  %t390 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t386, i64 %t387)
  store i64 %t390, ptr %l202
  br label %bb85
bb85:
  %t391 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t393 = load { i64, ptr }, ptr %l198, !tbaa !27
  %t394 = extractvalue { i64, ptr } %t393, 1
  %t395 = extractvalue { i64, ptr } %t393, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = load i64, ptr %l202, !tbaa !24
  %t401 = call i64 @__olang_fmt_i64(ptr null, i64 %t400)
  %t402 = add i64 %t399, %t401
  %t403 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t402)
  call void @olang_textcopy(ptr %t403, ptr %t391, i64 %t392)
  %t404 = getelementptr i8, ptr %t403, i64 %t392
  call void @olang_textcopy(ptr %t404, ptr %t394, i64 %t395)
  %t405 = getelementptr i8, ptr %t404, i64 %t395
  call void @olang_textcopy(ptr %t405, ptr %t397, i64 %t398)
  %t406 = getelementptr i8, ptr %t405, i64 %t398
  %t407 = call i64 @__olang_fmt_i64(ptr %t406, i64 %t400)
  %t408 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t403, 1
  store { i64, ptr } %t409, ptr %l195, !tbaa !27
  br label %bb86
bb86:
  %t411 = load { i64, ptr }, ptr %l195, !tbaa !27
  store { i64, ptr } %t411, ptr %l30, !tbaa !27
  %t412 = load ptr, ptr %l10, !tbaa !29
  %t414 = getelementptr %"compiler/eval:Blob", ptr %t412, i32 0, i32 4
  %t415 = load i64, ptr %l22, !tbaa !24
  %t418 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t414, i64 %t415)
  store i64 %t418, ptr %l207
  br label %bb87
bb87:
  %t419 = load i64, ptr %l207, !tbaa !24
  %t420 = icmp slt i64 %t419, 0
  br i1 %t420, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s18
  store ptr %a0, ptr %l209, !tbaa !29
  %t423 = load ptr, ptr %l10, !tbaa !29
  %t425 = getelementptr %"compiler/eval:Blob", ptr %t423, i32 0, i32 7
  %t426 = load i64, ptr %l11, !tbaa !24
  %t429 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t425, i64 %t426)
  store i64 %t429, ptr %l213
  br label %bb90
bb89:
  br label %bb101
bb90:
  %t430 = load ptr, ptr %l10, !tbaa !29
  %t432 = getelementptr %"compiler/eval:Blob", ptr %t430, i32 0, i32 8
  %t433 = load i64, ptr %l11, !tbaa !24
  %t436 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t432, i64 %t433)
  store i32 %t436, ptr %l217
  br label %bb91
bb91:
  %t437 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t438 = load ptr, ptr %l209, !tbaa !29
  %t439 = load i64, ptr %l213, !tbaa !24
  %t440 = load i32, ptr %l217, !tbaa !23
  %t442 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobal(ptr %v0, ptr %s18, ptr %t438, i64 %t439, i32 %t440, i32 %t437)
  store { i64, ptr } %t442, ptr %l219
  br label %bb92
bb92:
  %t443 = load { i64, ptr }, ptr %l219, !tbaa !27
  store { i64, ptr } %t443, ptr %l31, !tbaa !27
  %t444 = load ptr, ptr %l10, !tbaa !29
  %t446 = getelementptr %"compiler/eval:Blob", ptr %t444, i32 0, i32 9
  %t447 = load i64, ptr %l11, !tbaa !24
  %t450 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t446, i64 %t447)
  store i64 %t450, ptr %l223
  br label %bb93
bb93:
  %t451 = load i64, ptr %l223, !tbaa !24
  %t452 = icmp eq i64 %t451, 0
  br i1 %t452, label %bb94, label %bb95
bb94:
  %t454 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t454, ptr %l225, !tbaa !27
  br label %bb97
bb95:
  %t456 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t456, ptr %l227, !tbaa !27
  %t457 = load ptr, ptr %l10, !tbaa !29
  %t459 = getelementptr %"compiler/eval:Blob", ptr %t457, i32 0, i32 9
  %t460 = load i64, ptr %l11, !tbaa !24
  %t463 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t459, i64 %t460)
  store i64 %t463, ptr %l231
  br label %bb96
bb96:
  %t464 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 1
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t467 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t469 = add i64 %t466, %t468
  %t470 = load i64, ptr %l231, !tbaa !24
  %t471 = call i64 @__olang_fmt_i64(ptr null, i64 %t470)
  %t472 = add i64 %t469, %t471
  %t473 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t472)
  call void @olang_textcopy(ptr %t473, ptr %t465, i64 %t466)
  %t474 = getelementptr i8, ptr %t473, i64 %t466
  call void @olang_textcopy(ptr %t474, ptr %t467, i64 %t468)
  %t475 = getelementptr i8, ptr %t474, i64 %t468
  %t476 = call i64 @__olang_fmt_i64(ptr %t475, i64 %t470)
  %t477 = insertvalue { i64, ptr } undef, i64 %t472, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t473, 1
  store { i64, ptr } %t478, ptr %l225, !tbaa !27
  br label %bb97
bb97:
  %t480 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t480, 0
  %t482 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t482, 0
  store i64 %t483, ptr %l234, !tbaa !24
  %t485 = load i64, ptr %l234, !tbaa !24
  %t486 = icmp eq i64 %t481, %t485
  br i1 %t486, label %bb98, label %bb99
bb98:
  %t488 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t491 = load ptr, ptr %t490, !tbaa !27
  %t492 = load i64, ptr %l234, !tbaa !24
  %t493 = mul i64 %t492, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t489, ptr %t491, i64 %t493, i1 false)
  br label %bb100
bb99:
  %t494 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t495 = extractvalue { i64, ptr } %t494, 0
  store i64 %t495, ptr %l236, !tbaa !24
  %t496 = load i64, ptr %l236, !tbaa !24
  %t497 = mul i64 %t496, 1
  %t498 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t497)
  %t499 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t498, 1
  store { i64, ptr } %t500, ptr %l237, !tbaa !27
  %t501 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t504 = load ptr, ptr %t503, !tbaa !27
  %t505 = load i64, ptr %l236, !tbaa !24
  %t506 = mul i64 %t505, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t502, ptr %t504, i64 %t506, i1 false)
  %t507 = load { i64, ptr }, ptr %l237, !tbaa !27
  store { i64, ptr } %t507, ptr %l30, !tbaa !27
  br label %bb100
bb100:
  %t508 = load i64, ptr %l11, !tbaa !24
  %t510 = add i64 %t508, 1
  store i64 %t510, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s18)
  br label %bb101
bb101:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s6, ptr %l14, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb102
bb102:
  %t513 = load ptr, ptr %l10, !tbaa !29
  %t515 = getelementptr %"compiler/eval:Blob", ptr %t513, i32 0, i32 5
  %t516 = load i64, ptr %l22, !tbaa !24
  %t519 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t515, i64 %t516)
  store i64 %t519, ptr %l244
  br label %bb103
bb103:
  %t520 = load i64, ptr %l244, !tbaa !24
  %t521 = icmp eq i64 %t520, 0
  br i1 %t521, label %bb104, label %bb105
bb104:
  store %olang.scope zeroinitializer, ptr %s20
  %t523 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t524 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t525 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t527 = extractvalue { i64, ptr } %t523, 1
  %t528 = extractvalue { i64, ptr } %t523, 0
  %t529 = add i64 %t525, %t528
  %t530 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t529)
  call void @olang_textcopy(ptr %t530, ptr %t524, i64 %t525)
  %t531 = getelementptr i8, ptr %t530, i64 %t525
  call void @olang_textcopy(ptr %t531, ptr %t527, i64 %t528)
  %t532 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t533 = insertvalue { i64, ptr } %t532, ptr %t530, 1
  %t535 = extractvalue { i64, ptr } %t533, 0
  %t536 = extractvalue { i64, ptr } %t533, 1
  %t537 = mul i64 %t535, 1
  %t538 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t537)
  call void @llvm.memcpy.p0.p0.i64(ptr %t538, ptr %t536, i64 %t537, i1 false)
  %t539 = insertvalue { i64, ptr } undef, i64 %t535, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t538, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s20, ptr %l15, { i64, ptr } %t540)
  br label %bb106
bb105:
  store %olang.scope zeroinitializer, ptr %s22
  store ptr %l15, ptr %l250, !tbaa !29
  %t543 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t543, ptr %l251, !tbaa !27
  %t544 = load ptr, ptr %l10, !tbaa !29
  %t546 = getelementptr %"compiler/eval:Blob", ptr %t544, i32 0, i32 5
  %t547 = load i64, ptr %l22, !tbaa !24
  %t550 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t546, i64 %t547)
  store i64 %t550, ptr %l255
  br label %bb107
bb106:
  call void @__olang_scope_close(ptr %s20)
  br label %bb109
bb107:
  %t551 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t553 = load { i64, ptr }, ptr %l251, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t553, 1
  %t555 = extractvalue { i64, ptr } %t553, 0
  %t556 = add i64 %t552, %t555
  %t557 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t558 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t559 = add i64 %t556, %t558
  %t560 = load i64, ptr %l255, !tbaa !24
  %t561 = call i64 @__olang_fmt_i64(ptr null, i64 %t560)
  %t562 = add i64 %t559, %t561
  %t563 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t564 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t565 = add i64 %t562, %t564
  %t566 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t565)
  call void @olang_textcopy(ptr %t566, ptr %t551, i64 %t552)
  %t567 = getelementptr i8, ptr %t566, i64 %t552
  call void @olang_textcopy(ptr %t567, ptr %t554, i64 %t555)
  %t568 = getelementptr i8, ptr %t567, i64 %t555
  call void @olang_textcopy(ptr %t568, ptr %t557, i64 %t558)
  %t569 = getelementptr i8, ptr %t568, i64 %t558
  %t570 = call i64 @__olang_fmt_i64(ptr %t569, i64 %t560)
  %t571 = getelementptr i8, ptr %t569, i64 %t561
  call void @olang_textcopy(ptr %t571, ptr %t563, i64 %t564)
  %t572 = insertvalue { i64, ptr } undef, i64 %t565, 0
  %t573 = insertvalue { i64, ptr } %t572, ptr %t566, 1
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t576 = extractvalue { i64, ptr } %t573, 1
  %t577 = mul i64 %t575, 1
  %t578 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t577)
  call void @llvm.memcpy.p0.p0.i64(ptr %t578, ptr %t576, i64 %t577, i1 false)
  %t579 = insertvalue { i64, ptr } undef, i64 %t575, 0
  %t580 = insertvalue { i64, ptr } %t579, ptr %t578, 1
  %t581 = load ptr, ptr %l250, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s22, ptr %t581, { i64, ptr } %t580)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s22)
  br label %bb109
bb109:
  %t583 = load ptr, ptr %l10, !tbaa !29
  %t585 = getelementptr %"compiler/eval:Blob", ptr %t583, i32 0, i32 3
  %t586 = load i64, ptr %l22, !tbaa !24
  %t589 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t585, i64 %t586)
  store i64 %t589, ptr %l261
  br label %bb110
bb110:
  %t590 = load i64, ptr %l261, !tbaa !24
  %t591 = add i64 %t590, 8
  store i64 %t591, ptr %l16, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb111
bb111:
  %t593 = load i64, ptr %l21, !tbaa !24
  %t595 = add i64 %t593, 1
  store i64 %t595, ptr %l21, !tbaa !24
  br label %bb35
bb112:
  store ptr %l3, ptr %l265, !tbaa !29
  %t597 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t597, ptr %l266, !tbaa !27
  %t598 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t598, ptr %l267, !tbaa !27
  %t600 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l14)
  store { i64, ptr } %t600, ptr %l269
  br label %bb113
bb113:
  %t602 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l15)
  store { i64, ptr } %t602, ptr %l271
  br label %bb114
bb114:
  %t603 = load ptr, ptr %l10, !tbaa !29
  %t605 = getelementptr %"compiler/eval:Blob", ptr %t603, i32 0, i32 1
  %t606 = load i64, ptr %t605, !tbaa !24
  %t607 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t608 = extractvalue { i64, ptr } %t607, 1
  %t609 = extractvalue { i64, ptr } %t607, 0
  %t610 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t611 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t612 = add i64 %t609, %t611
  %t613 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t614 = extractvalue { i64, ptr } %t613, 1
  %t615 = extractvalue { i64, ptr } %t613, 0
  %t616 = add i64 %t612, %t615
  %t617 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t618 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t619 = add i64 %t616, %t618
  %t620 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t621 = extractvalue { i64, ptr } %t620, 1
  %t622 = extractvalue { i64, ptr } %t620, 0
  %t623 = add i64 %t619, %t622
  %t624 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t625 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t626 = add i64 %t623, %t625
  %t627 = load { i64, ptr }, ptr %l271, !tbaa !27
  %t628 = extractvalue { i64, ptr } %t627, 1
  %t629 = extractvalue { i64, ptr } %t627, 0
  %t630 = add i64 %t626, %t629
  %t631 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t633 = add i64 %t630, %t632
  %t635 = call i64 @__olang_fmt_i64(ptr null, i64 %t606)
  %t636 = add i64 %t633, %t635
  %t637 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t638 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t639 = add i64 %t636, %t638
  %t640 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t639)
  call void @olang_textcopy(ptr %t640, ptr %t608, i64 %t609)
  %t641 = getelementptr i8, ptr %t640, i64 %t609
  call void @olang_textcopy(ptr %t641, ptr %t610, i64 %t611)
  %t642 = getelementptr i8, ptr %t641, i64 %t611
  call void @olang_textcopy(ptr %t642, ptr %t614, i64 %t615)
  %t643 = getelementptr i8, ptr %t642, i64 %t615
  call void @olang_textcopy(ptr %t643, ptr %t617, i64 %t618)
  %t644 = getelementptr i8, ptr %t643, i64 %t618
  call void @olang_textcopy(ptr %t644, ptr %t621, i64 %t622)
  %t645 = getelementptr i8, ptr %t644, i64 %t622
  call void @olang_textcopy(ptr %t645, ptr %t624, i64 %t625)
  %t646 = getelementptr i8, ptr %t645, i64 %t625
  call void @olang_textcopy(ptr %t646, ptr %t628, i64 %t629)
  %t647 = getelementptr i8, ptr %t646, i64 %t629
  call void @olang_textcopy(ptr %t647, ptr %t631, i64 %t632)
  %t648 = getelementptr i8, ptr %t647, i64 %t632
  %t649 = call i64 @__olang_fmt_i64(ptr %t648, i64 %t606)
  %t650 = getelementptr i8, ptr %t648, i64 %t635
  call void @olang_textcopy(ptr %t650, ptr %t637, i64 %t638)
  %t651 = insertvalue { i64, ptr } undef, i64 %t639, 0
  %t652 = insertvalue { i64, ptr } %t651, ptr %t640, 1
  %t654 = extractvalue { i64, ptr } %t652, 0
  %t655 = extractvalue { i64, ptr } %t652, 1
  %t656 = mul i64 %t654, 1
  %t657 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t656)
  call void @llvm.memcpy.p0.p0.i64(ptr %t657, ptr %t655, i64 %t656, i1 false)
  %t658 = insertvalue { i64, ptr } undef, i64 %t654, 0
  %t659 = insertvalue { i64, ptr } %t658, ptr %t657, 1
  %t660 = load ptr, ptr %l265, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t660, { i64, ptr } %t659)
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s2)
  br label %bb116
bb116:
  %t662 = load i64, ptr %l8, !tbaa !24
  %t664 = add i64 %t662, 1
  store i64 %t664, ptr %l8, !tbaa !24
  br label %bb9
bb117:
  %t667 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t667, ptr %l279
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s0)
  %t668 = load { i64, ptr }, ptr %l279, !tbaa !27
  store { i64, ptr } %t668, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeFor(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l11 = alloca i32
  %l14 = alloca i1
  %l15 = alloca i1
  %l19 = alloca i64
  %l25 = alloca i64
  %l31 = alloca { i64, ptr }
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  %t32 = alloca { i64, [4 x i64] }, align 8
  %t35 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t1, { i64, [2 x i64] } %t2)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t8 = load ptr, ptr %lp3
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, [2 x i64] }, ptr %l1
  %t13 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %t9, { i64, [2 x i64] } %t10)
  store i32 %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load i32, ptr %l11, !tbaa !23
  store i32 %t14, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t19 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t15, { i64, [2 x i64] } %t16)
  store i1 %t19, ptr %l14
  br label %bb3
bb3:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l1
  %t23 = load i32, ptr %l4, !tbaa !23
  %t27 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t21, { i64, [2 x i64] } %t22, i32 %t23)
  store i64 %t27, ptr %l19
  br label %bb6
bb5:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb8
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 3
  %t31 = load ptr, ptr %t30, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 0
  store i64 0, ptr %t33
  %t34 = load { i64, [4 x i64] }, ptr %t32
  store { i64, [7 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [7 x i64] }, ptr %t35, i32 0, i32 0
  store i64 2, ptr %t36
  %t38 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t34, 0
  %t39 = getelementptr { i64, [7 x i64] }, ptr %t35, i32 0, i32 1
  store { { i64, [4 x i64] } } %t38, ptr %t39
  %t40 = load { i64, [7 x i64] }, ptr %t35
  %t41 = load i32, ptr %l2, !tbaa !23
  %t45 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t31, { i64, [7 x i64] } %t40, i32 %t41)
  store i64 %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load i64, ptr %l19, !tbaa !24
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = icmp eq i64 %t46, %t47
  store i1 %t48, ptr %l15, !tbaa !21
  br label %bb8
bb8:
  %t50 = load i1, ptr %l15, !tbaa !21
  br i1 %t50, label %bb9, label %bb10
bb9:
  %t51 = load ptr, ptr %lp3
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %lp3
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  %t57 = load i32, ptr %l2, !tbaa !23
  %t61 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %v1, ptr %v1, ptr %t54, { i64, ptr } %t56, i32 %t57)
  store { i64, ptr } %t61, ptr %l31
  br label %bb12
bb12:
  %t62 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t62, ptr %lp5
  %t63 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t64 = load ptr, ptr %lp5
  store { i64, ptr } %t63, ptr %t64, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/emit:Emitter", ptr %t65, i32 0, i32 30
  %t68 = load ptr, ptr %lp5
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  %t72 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %t67, { i64, ptr } %t69)
  store i1 %t72, ptr %l35
  br label %bb13
bb13:
  %t73 = load i1, ptr %l35, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb14, label %bb15
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/emit:Emitter", ptr %t76, i32 0, i32 30
  store ptr %t78, ptr %l38, !tbaa !29
  %t79 = ptrtoint ptr %v0 to i64
  store i64 %t79, ptr %l39, !tbaa !24
  %t80 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t80, label %bb16, label %bb17
bb15:
  br label %bb21
bb16:
  %t82 = call ptr @__olang_region_make(ptr %v0)
  %t83 = ptrtoint ptr %t82 to i64
  store i64 %t83, ptr %l39, !tbaa !24
  br label %bb17
bb17:
  %t84 = load ptr, ptr %lp5
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = extractvalue { i64, ptr } %t85, 0
  %t89 = load i64, ptr %l39
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  call void @olang_textcopy(ptr %t91, ptr %t87, i64 %t88)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t95 = load i64, ptr %l39
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = extractvalue { i64, ptr } %t93, 0
  %t98 = extractvalue { i64, ptr } %t93, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %t96, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l38, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v0, ptr %t103, { i64, ptr } %t102, i1 true)
  br label %bb18
bb18:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/emit:Emitter", ptr %t105, i32 0, i32 31
  %t108 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t107, { i64, [2 x i64] } %t108)
  br label %bb19
bb19:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/emit:Emitter", ptr %t111, i32 0, i32 32
  %t114 = load i32, ptr %l2, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t113, i32 %t114)
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t117 = load ptr, ptr %lp5
  %t118 = load { i64, ptr }, ptr %t117, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2efieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca i64
  %l56 = alloca i64
  %l66 = alloca i32
  %l72 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca ptr
  %l80 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l104 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l108 = alloca i1
  %l112 = alloca i1
  %l134 = alloca { i64, ptr }
  %l140 = alloca i64
  %l141 = alloca i64
  %l145 = alloca { i64, ptr }
  %s13 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t11 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l26, !tbaa !24
  %t2 = load i64, ptr %l26, !tbaa !24
  %t3 = icmp sge i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l26, !tbaa !24
  %t6 = icmp sle i64 %t5, 576460752303423487
  br i1 %t6, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_672626b841abebed_e9d6bd273cfd5371)
  unreachable
bb3:
  %t8 = load i64, ptr %l26, !tbaa !24
  %t9 = mul i64 %t8, 16
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  store i64 0, ptr %t11
  br label %fill.12
fill.12:
  %t15 = load i64, ptr %t11
  %t16 = icmp slt i64 %t15, %t8
  br i1 %t16, label %fillb.13, label %filld.14
fillb.13:
  %t17 = getelementptr { i64, ptr }, ptr %t10, i64 %t15
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %t17
  %t18 = add i64 %t15, 1
  store i64 %t18, ptr %t11
  br label %fill.12
filld.14:
  %t19 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t10, 1
  %t21 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t21, ptr %lp3
  %t23 = load ptr, ptr %lp3
  store { i64, ptr } %t20, ptr %t23, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_672626b841abebed_e9d6bd273cfd5371)
  unreachable
bb5:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb10
bb7:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l37, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb9
bb9:
  %t52 = load i64, ptr %l37, !tbaa !24
  store i64 %t52, ptr %l34, !tbaa !24
  br label %bb10
bb10:
  %t53 = load i64, ptr %l34, !tbaa !24
  store i64 %t53, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t62 = load i64, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  store i64 %t72, ptr %l55, !tbaa !24
  %t73 = ptrtoint ptr %v1 to i64
  store i64 %t73, ptr %l56, !tbaa !24
  %t74 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t74, label %bb15, label %bb16
bb15:
  %t76 = call ptr @__olang_region_make(ptr %v1)
  %t77 = ptrtoint ptr %t76 to i64
  store i64 %t77, ptr %l56, !tbaa !24
  br label %bb16
bb16:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t80 = call i64 @__olang_fmt_i64(ptr null, i64 %t78)
  %t81 = load i64, ptr %l56
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = call ptr @__olang_scope_alloc(ptr %t82, i64 %t80)
  %t84 = call i64 @__olang_fmt_i64(ptr %t83, i64 %t78)
  %t85 = insertvalue { i64, ptr } undef, i64 %t80, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t83, 1
  %t88 = load i64, ptr %l56
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = extractvalue { i64, ptr } %t86, 0
  %t91 = extractvalue { i64, ptr } %t86, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %t89, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t97 = load ptr, ptr %lp3
  %t98 = load i64, ptr %l55, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %t100, i64 %t98
  store { i64, ptr } %t95, ptr %t101, !tbaa !37
  br label %bb17
bb17:
  %t102 = load i64, ptr %l8, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l8, !tbaa !24
  br label %bb11
bb18:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/emit:Emitter", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i32, ptr %l1, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l66
  br label %bb19
bb19:
  %t114 = load i32, ptr %l66, !range !{i32 0, i32 33}
  %t116 = trunc i64 18 to i32
  %t117 = icmp eq i32 %t114, %t116
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb20, label %bb21
bb20:
  %t121 = load ptr, ptr %lp3
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/emit:Emitter", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  store ptr %t127, ptr %l72, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/emit:Emitter", ptr %t128, i32 0, i32 3
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i32, ptr %l1, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l76
  br label %bb23
bb23:
  %t136 = load ptr, ptr %l72, !tbaa !29
  %t137 = load i32, ptr %l76, !tbaa !23
  %t138 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t136, i32 %t137)
  store ptr %t138, ptr %l77
  br label %bb24
bb24:
  %t139 = load ptr, ptr %l77, !tbaa !29
  store ptr %t139, ptr %l10, !tbaa !29
  %t140 = load ptr, ptr %l10, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l80, !tbaa !21
  br label %bb27
bb26:
  %t144 = load ptr, ptr %l10, !tbaa !29
  %t146 = getelementptr %"compiler/ast:TypeDecl", ptr %t144, i32 0, i32 3
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = icmp eq ptr %t147, null
  store i1 %t149, ptr %l80, !tbaa !21
  br label %bb27
bb27:
  %t151 = load i1, ptr %l80, !tbaa !21
  br i1 %t151, label %bb28, label %bb29
bb28:
  %t152 = load ptr, ptr %lp3
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t155 = load ptr, ptr %l10, !tbaa !29
  %t157 = getelementptr %"compiler/ast:TypeDecl", ptr %t155, i32 0, i32 3
  %t158 = load ptr, ptr %t157, !tbaa !29
  store ptr %t158, ptr %l11, !tbaa !29
  %t160 = load ptr, ptr %l11, !tbaa !29
  store ptr %t160, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t161 = load ptr, ptr %l87, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb31, label %bb32
bb31:
  %t164 = load ptr, ptr %l87, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 5}
  %t167 = icmp eq i64 %t165, 0
  store i1 %t167, ptr %l88, !tbaa !21
  br label %bb32
bb32:
  %t168 = load i1, ptr %l88, !tbaa !21
  %t169 = xor i1 %t168, true
  br i1 %t169, label %bb33, label %bb34
bb33:
  %t171 = load ptr, ptr %lp3
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t174 = load ptr, ptr %l11, !tbaa !29
  %t176 = getelementptr { i64, [6 x i64] }, ptr %t174, i32 0, i32 1
  %t177 = getelementptr { ptr }, ptr %t176, i32 0, i32 0
  %t178 = load ptr, ptr %t177
  store i64 0, ptr %l13, !tbaa !24
  %t183 = getelementptr %"compiler/ast:StructBody", ptr %t178, i32 0, i32 2
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  store { i64, ptr } %t184, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l16, !tbaa !24
  br label %bb36
bb36:
  %t190 = load i64, ptr %l15, !tbaa !24
  %t191 = load i64, ptr %l16, !tbaa !24
  %t194 = icmp slt i64 %t190, %t191
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb37, label %bb38
bb37:
  br label %bb61
bb38:
  br label %bb39
bb39:
  %t198 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t198, ptr %l104, !tbaa !27
  %t199 = load i64, ptr %l15, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l104, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr ptr, ptr %t202, i64 %t199
  %t204 = load ptr, ptr %t203, !tbaa !39
  store ptr %t204, ptr %l17, !tbaa !29
  %t206 = load ptr, ptr %l17, !tbaa !29
  store ptr %t206, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t207 = load ptr, ptr %l107, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb40, label %bb41
bb40:
  %t210 = load ptr, ptr %l107, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 22}
  %t213 = icmp eq i64 %t211, 1
  store i1 %t213, ptr %l108, !tbaa !21
  br label %bb41
bb41:
  %t214 = load i1, ptr %l108, !tbaa !21
  %t215 = xor i1 %t214, true
  br i1 %t215, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb44
bb43:
  %t217 = load ptr, ptr %l17, !tbaa !29
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  %t220 = getelementptr { %"compiler/source:Span", ptr }, ptr %t219, i32 0, i32 0
  %t221 = load %"compiler/source:Span", ptr %t220
  store %"compiler/source:Span" %t221, ptr %l18
  %t223 = load ptr, ptr %l17, !tbaa !29
  %t225 = getelementptr { i64, [4 x i64] }, ptr %t223, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", ptr }, ptr %t225, i32 0, i32 1
  %t227 = load ptr, ptr %t226
  %t232 = getelementptr %"compiler/ast:VarDecl", ptr %t227, i32 0, i32 5
  %t233 = load i1, ptr %t232, !tbaa !21
  %t235 = xor i1 %t233, true
  store i1 %t235, ptr %l112, !tbaa !21
  br label %bb44
bb44:
  %t237 = load i1, ptr %l112, !tbaa !21
  br i1 %t237, label %bb45, label %bb46
bb45:
  br label %bb60
bb46:
  br label %bb47
bb47:
  %t238 = load ptr, ptr %l17, !tbaa !29
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", ptr }, ptr %t240, i32 0, i32 0
  %t242 = load %"compiler/source:Span", ptr %t241
  store %"compiler/source:Span" %t242, ptr %l20
  %t244 = load ptr, ptr %l17, !tbaa !29
  %t246 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", ptr }, ptr %t246, i32 0, i32 1
  %t248 = load ptr, ptr %t247
  %t253 = getelementptr %"compiler/ast:VarDecl", ptr %t248, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t256 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t256, 0
  store i64 %t258, ptr %l24, !tbaa !24
  br label %bb48
bb48:
  %t260 = load i64, ptr %l23, !tbaa !24
  %t261 = load i64, ptr %l24, !tbaa !24
  %t264 = icmp slt i64 %t260, %t261
  %t266 = xor i1 %t264, true
  br i1 %t266, label %bb49, label %bb50
bb49:
  br label %bb59
bb50:
  br label %bb51
bb51:
  %t268 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t268, ptr %l134, !tbaa !27
  %t269 = load i64, ptr %l23, !tbaa !24
  %t271 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !27
  %t273 = getelementptr i32, ptr %t272, i64 %t269
  %t274 = load i32, ptr %t273, !tbaa !33
  store i32 %t274, ptr %l25, !tbaa !23
  %t276 = load i64, ptr %l13, !tbaa !24
  %t277 = load i64, ptr %l2, !tbaa !24
  %t280 = icmp slt i64 %t276, %t277
  br i1 %t280, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s13
  %t282 = load i64, ptr %l13, !tbaa !24
  store i64 %t282, ptr %l140, !tbaa !24
  %t283 = ptrtoint ptr %v1 to i64
  store i64 %t283, ptr %l141, !tbaa !24
  %t284 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t284, label %bb54, label %bb55
bb53:
  br label %bb57
bb54:
  %t286 = call ptr @__olang_region_make(ptr %v1)
  %t287 = ptrtoint ptr %t286 to i64
  store i64 %t287, ptr %l141, !tbaa !24
  br label %bb55
bb55:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i32, ptr %l25, !tbaa !23
  %t292 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s13, ptr %t288, i32 %t289)
  store { i64, ptr } %t292, ptr %l145
  br label %bb56
bb56:
  %t293 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = load i64, ptr %l141
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = call ptr @__olang_scope_alloc(ptr %t297, i64 %t295)
  call void @olang_textcopy(ptr %t298, ptr %t294, i64 %t295)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t302 = load i64, ptr %l141
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = extractvalue { i64, ptr } %t300, 0
  %t305 = extractvalue { i64, ptr } %t300, 1
  %t306 = mul i64 %t304, 1
  %t307 = call ptr @__olang_scope_alloc(ptr %t303, i64 %t306)
  call void @llvm.memcpy.p0.p0.i64(ptr %t307, ptr %t305, i64 %t306, i1 false)
  %t308 = insertvalue { i64, ptr } undef, i64 %t304, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  %t311 = load ptr, ptr %lp3
  %t312 = load i64, ptr %l140, !tbaa !24
  %t313 = getelementptr { i64, ptr }, ptr %t311, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr { i64, ptr }, ptr %t314, i64 %t312
  store { i64, ptr } %t309, ptr %t315, !tbaa !37
  call void @__olang_scope_close(ptr %s13)
  br label %bb57
bb57:
  %t316 = load i64, ptr %l13, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l13, !tbaa !24
  br label %bb58
bb58:
  %t320 = load i64, ptr %l23, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l23, !tbaa !24
  br label %bb48
bb59:
  br label %bb60
bb60:
  %t324 = load i64, ptr %l15, !tbaa !24
  %t326 = add i64 %t324, 1
  store i64 %t326, ptr %l15, !tbaa !24
  br label %bb36
bb61:
  %t328 = load ptr, ptr %lp3
  %t329 = load { i64, ptr }, ptr %t328, !tbaa !27
  store { i64, ptr } %t329, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efunction(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i1
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca { i64, [2 x i64] }
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i1
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l48 = alloca i1
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l61 = alloca i1
  %l63 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca { i64, [2 x i64] }
  %l83 = alloca i32
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i1
  %l87 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca { i64, [2 x i64] }
  %l96 = alloca i32
  %l97 = alloca { i64, ptr }
  %l98 = alloca i64
  %l99 = alloca i1
  %l100 = alloca i64
  %l102 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l122 = alloca i1
  %l126 = alloca i1
  %l128 = alloca ptr
  %l129 = alloca { i64, [2 x i64] }
  %l131 = alloca i32
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l136 = alloca i1
  %l139 = alloca i64
  %l140 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l152 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 71
  store ptr %t3, ptr %l10, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load { i64, [2 x i64] }, ptr %l1
  %t8 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t4, { i64, [2 x i64] } %t5)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = load i64, ptr %l13, !tbaa !24
  %t11 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t11, ptr %l14
  br label %bb2
bb2:
  %t12 = load i1, ptr %l14, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, [2 x i64] }, ptr %l1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %t13, { i64, [2 x i64] } %t14)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:Emitter", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t21 = load { i64, [2 x i64] }, ptr %l1
  %t24 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v0, ptr %t20, { i64, [2 x i64] } %t21)
  store ptr %t24, ptr %l20
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l20, !tbaa !29
  store ptr %t25, ptr %l2, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load { i64, [2 x i64] }, ptr %l1
  %t30 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t26, { i64, [2 x i64] } %t27)
  store { i64, ptr } %t30, ptr %l23
  br label %bb8
bb8:
  %t31 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t31, ptr %l3, !tbaa !27
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, [2 x i64] }, ptr %l1
  %t36 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t32, { i64, [2 x i64] } %t33)
  store i1 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load i1, ptr %l26, !tbaa !21
  store i1 %t37, ptr %l4, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load { i64, [2 x i64] }, ptr %l1
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = getelementptr %"compiler/mir:Fn", ptr %t40, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t47 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t38, { i64, [2 x i64] } %t39, i32 %t43)
  store i64 %t47, ptr %l31
  br label %bb10
bb10:
  %t48 = load i64, ptr %l31, !tbaa !24
  store i64 %t48, ptr %l5, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l32, !tbaa !29
  %t50 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t50, ptr %l33
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/mir:Fn", ptr %t51, i32 0, i32 1
  %t54 = load i32, ptr %t53, !tbaa !23
  store i32 %t54, ptr %l35, !tbaa !23
  %t55 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load i64, ptr %l5, !tbaa !24
  store i64 %t56, ptr %l37, !tbaa !24
  %t57 = load i1, ptr %l4, !tbaa !21
  store i1 %t57, ptr %l38, !tbaa !21
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load { i64, [2 x i64] }, ptr %l1
  %t62 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t58, { i64, [2 x i64] } %t59)
  store i64 %t62, ptr %l41
  br label %bb11
bb11:
  %t63 = load i64, ptr %l41, !tbaa !24
  %t64 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t63)
  store { i64, ptr } %t64, ptr %l42
  br label %bb12
bb12:
  %t65 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t72 = load ptr, ptr %l32, !tbaa !29
  %t73 = load { i64, [2 x i64] }, ptr %l33
  %t74 = load i32, ptr %l35, !tbaa !23
  %t75 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t76 = load i64, ptr %l37, !tbaa !24
  %t77 = load i1, ptr %l38, !tbaa !21
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t72, { i64, [2 x i64] } %t73, i32 %t74, { i64, ptr } %t75, i64 %t76, i1 %t77, { i64, ptr } %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store { i64, ptr } %t79, ptr %l44
  br label %bb13
bb13:
  %t80 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t80, ptr %l6, !tbaa !27
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/emit:Emitter", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/lower:Lowerer", ptr %t84, i32 0, i32 7
  %t87 = load i1, ptr %t86, !tbaa !21
  br i1 %t87, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb16
bb15:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/emit:Emitter", ptr %t89, i32 0, i32 10
  %t92 = load i1, ptr %t91, !tbaa !21
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l48, !tbaa !21
  br label %bb16
bb16:
  %t96 = load i1, ptr %l48, !tbaa !21
  br i1 %t96, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l52, !tbaa !27
  br label %bb20
bb18:
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/emit:Emitter", ptr %t98, i32 0, i32 3
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t104 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v0, ptr %s0, ptr %t97, ptr %t101)
  store { i64, ptr } %t104, ptr %l56
  br label %bb19
bb19:
  %t105 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 0
  %t107 = extractvalue { i64, ptr } %t105, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l52, !tbaa !27
  br label %bb20
bb20:
  %t113 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t113, ptr %l7, !tbaa !27
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/emit:Emitter", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/lower:Lowerer", ptr %t117, i32 0, i32 7
  %t120 = load i1, ptr %t119, !tbaa !21
  br i1 %t120, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t122 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t122, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t124, ptr %l63
  br label %bb23
bb23:
  %t125 = load i1, ptr %l63, !tbaa !21
  %t126 = xor i1 %t125, true
  store i1 %t126, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t128 = load i1, ptr %l61, !tbaa !21
  br i1 %t128, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s2
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l65, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t130, ptr %l66, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t131, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i1 %t133, ptr %l68
  br label %bb27
bb26:
  br label %bb46
bb27:
  %t134 = load i1, ptr %l68, !tbaa !21
  %t135 = xor i1 %t134, true
  br i1 %t135, label %bb28, label %bb29
bb28:
  %t137 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t139 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %s0, ptr %s2, { i64, ptr } %t137)
  store { i64, ptr } %t139, ptr %l72
  br label %bb30
bb29:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb31
bb30:
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t142 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = add i64 %t141, %t144
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t140, i64 %t141)
  %t150 = getelementptr i8, ptr %t149, i64 %t141
  call void @olang_textcopy(ptr %t150, ptr %t143, i64 %t144)
  %t151 = getelementptr i8, ptr %t150, i64 %t144
  call void @olang_textcopy(ptr %t151, ptr %t146, i64 %t147)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t149, 1
  %t155 = extractvalue { i64, ptr } %t153, 0
  %t156 = extractvalue { i64, ptr } %t153, 1
  %t157 = mul i64 %t155, 1
  %t158 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t157)
  call void @llvm.memcpy.p0.p0.i64(ptr %t158, ptr %t156, i64 %t157, i1 false)
  %t159 = insertvalue { i64, ptr } undef, i64 %t155, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l70, !tbaa !27
  br label %bb31
bb31:
  %t162 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t164 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = add i64 %t163, %t166
  %t168 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = extractvalue { i64, ptr } %t168, 0
  %t171 = add i64 %t167, %t170
  %t172 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t171)
  call void @olang_textcopy(ptr %t172, ptr %t162, i64 %t163)
  %t173 = getelementptr i8, ptr %t172, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = getelementptr i8, ptr %t173, i64 %t166
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t172, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } %t176, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t184 = load ptr, ptr %l65, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %s2, ptr %t184, { i64, ptr } %t183)
  br label %bb32
bb32:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, [2 x i64] }, ptr %l1
  %t190 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGlobalInit(ptr %v0, ptr %t186, { i64, [2 x i64] } %t187)
  store i1 %t190, ptr %l79
  br label %bb33
bb33:
  %t191 = load i1, ptr %l79, !tbaa !21
  br i1 %t191, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s5
  %t192 = load ptr, ptr %l0, !tbaa !29
  store ptr %t192, ptr %l80, !tbaa !29
  %t193 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t193, ptr %l81
  %t194 = load ptr, ptr %l2, !tbaa !29
  %t196 = getelementptr %"compiler/mir:Fn", ptr %t194, i32 0, i32 1
  %t197 = load i32, ptr %t196, !tbaa !23
  store i32 %t197, ptr %l83, !tbaa !23
  %t198 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t198, ptr %l84, !tbaa !27
  %t199 = load i64, ptr %l5, !tbaa !24
  store i64 %t199, ptr %l85, !tbaa !24
  %t200 = load i1, ptr %l4, !tbaa !21
  store i1 %t200, ptr %l86, !tbaa !21
  %t201 = ptrtoint ptr %s5 to i64
  store i64 %t201, ptr %l87, !tbaa !24
  %t202 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t202, label %bb36, label %bb37
bb35:
  br label %bb39
bb36:
  %t204 = call ptr @__olang_region_make(ptr %s5)
  %t205 = ptrtoint ptr %t204 to i64
  store i64 %t205, ptr %l87, !tbaa !24
  br label %bb37
bb37:
  %t206 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t212 = add i64 %t209, %t211
  %t213 = load i64, ptr %l87
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = call ptr @__olang_scope_alloc(ptr %t214, i64 %t212)
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = getelementptr i8, ptr %t215, i64 %t209
  call void @olang_textcopy(ptr %t216, ptr %t210, i64 %t211)
  %t217 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = load i64, ptr %l87
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } %t218, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t228 = load ptr, ptr %l80, !tbaa !29
  %t229 = load { i64, [2 x i64] }, ptr %l81
  %t230 = load i32, ptr %l83, !tbaa !23
  %t231 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t232 = load i64, ptr %l85, !tbaa !24
  %t233 = load i1, ptr %l86, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s5, ptr %t228, { i64, [2 x i64] } %t229, i32 %t230, { i64, ptr } %t231, i64 %t232, i1 %t233, { i64, ptr } %t227)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb39:
  %t235 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s2, ptr %t235, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d46, i32 0, i32 1) })
  br label %bb40
bb40:
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l93, !tbaa !29
  %t238 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t238, ptr %l94
  %t239 = load ptr, ptr %l2, !tbaa !29
  %t241 = getelementptr %"compiler/mir:Fn", ptr %t239, i32 0, i32 1
  %t242 = load i32, ptr %t241, !tbaa !23
  store i32 %t242, ptr %l96, !tbaa !23
  %t243 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t243, ptr %l97, !tbaa !27
  %t244 = load i64, ptr %l5, !tbaa !24
  store i64 %t244, ptr %l98, !tbaa !24
  %t245 = load i1, ptr %l4, !tbaa !21
  store i1 %t245, ptr %l99, !tbaa !21
  %t246 = ptrtoint ptr %s2 to i64
  store i64 %t246, ptr %l100, !tbaa !24
  %t247 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t247, label %bb41, label %bb42
bb41:
  %t249 = call ptr @__olang_region_make(ptr %s2)
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l100, !tbaa !24
  br label %bb42
bb42:
  %t251 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t251, ptr %l102, !tbaa !27
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t256 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %s2, ptr %s0, ptr %s2, ptr %t252, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d47, i32 0, i32 1) }, { i64, ptr } %t253)
  store { i64, ptr } %t256, ptr %l105
  br label %bb43
bb43:
  %t257 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t258 = extractvalue { i64, ptr } %t257, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t261 = extractvalue { i64, ptr } %t260, 1
  %t262 = extractvalue { i64, ptr } %t260, 0
  %t263 = add i64 %t259, %t262
  %t264 = load i64, ptr %l100
  %t265 = inttoptr i64 %t264 to ptr
  %t266 = call ptr @__olang_scope_alloc(ptr %t265, i64 %t263)
  call void @olang_textcopy(ptr %t266, ptr %t258, i64 %t259)
  %t267 = getelementptr i8, ptr %t266, i64 %t259
  call void @olang_textcopy(ptr %t267, ptr %t261, i64 %t262)
  %t268 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t266, 1
  %t271 = load i64, ptr %l100
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = extractvalue { i64, ptr } %t269, 0
  %t274 = extractvalue { i64, ptr } %t269, 1
  %t275 = mul i64 %t273, 1
  %t276 = call ptr @__olang_scope_alloc(ptr %t272, i64 %t275)
  call void @llvm.memcpy.p0.p0.i64(ptr %t276, ptr %t274, i64 %t275, i1 false)
  %t277 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t278 = insertvalue { i64, ptr } %t277, ptr %t276, 1
  %t279 = load ptr, ptr %l93, !tbaa !29
  %t280 = load { i64, [2 x i64] }, ptr %l94
  %t281 = load i32, ptr %l96, !tbaa !23
  %t282 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t283 = load i64, ptr %l98, !tbaa !24
  %t284 = load i1, ptr %l99, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %s0, ptr %s2, ptr %t279, { i64, [2 x i64] } %t280, i32 %t281, { i64, ptr } %t282, i64 %t283, i1 %t284, { i64, ptr } %t278)
  br label %bb44
bb44:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load { i64, [2 x i64] }, ptr %l1
  %t288 = load ptr, ptr %l2, !tbaa !29
  %t290 = getelementptr %"compiler/mir:Fn", ptr %t288, i32 0, i32 1
  %t291 = load i32, ptr %t290, !tbaa !23
  %t292 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t293 = load i64, ptr %l5, !tbaa !24
  %t294 = load i1, ptr %l4, !tbaa !21
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %s0, ptr %s2, ptr %t286, { i64, [2 x i64] } %t287, i32 %t291, { i64, ptr } %t292, i64 %t293, i1 %t294, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load { i64, [2 x i64] }, ptr %l1
  %t303 = load ptr, ptr %l2, !tbaa !29
  %t304 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t305 = load i64, ptr %l5, !tbaa !24
  %t306 = load i1, ptr %l4, !tbaa !21
  %t307 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t315 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t301, { i64, [2 x i64] } %t302, ptr %t303, { i64, ptr } %t304, i64 %t305, i1 %t306, { i64, ptr } %t307, i1 false)
  store i1 %t315, ptr %l122
  br label %bb47
bb47:
  %t316 = load i1, ptr %l122, !tbaa !21
  %t317 = xor i1 %t316, true
  br i1 %t317, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  br label %bb50
bb50:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load { i64, [2 x i64] }, ptr %l1
  %t323 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %t319, { i64, [2 x i64] } %t320)
  store i1 %t323, ptr %l126
  br label %bb51
bb51:
  %t324 = load i1, ptr %l126, !tbaa !21
  %t325 = xor i1 %t324, true
  br i1 %t325, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb53:
  br label %bb54
bb54:
  %t327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t327, ptr %l128, !tbaa !29
  %t328 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t328, ptr %l129
  %t329 = load ptr, ptr %l2, !tbaa !29
  %t331 = getelementptr %"compiler/mir:Fn", ptr %t329, i32 0, i32 1
  %t332 = load i32, ptr %t331, !tbaa !23
  store i32 %t332, ptr %l131, !tbaa !23
  %t333 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t333, 1
  %t336 = extractvalue { i64, ptr } %t333, 0
  %t337 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t338 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t339 = add i64 %t336, %t338
  %t340 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t339)
  call void @olang_textcopy(ptr %t340, ptr %t335, i64 %t336)
  %t341 = getelementptr i8, ptr %t340, i64 %t336
  call void @olang_textcopy(ptr %t341, ptr %t337, i64 %t338)
  %t342 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t340, 1
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t346 = extractvalue { i64, ptr } %t343, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  store { i64, ptr } %t350, ptr %l134, !tbaa !27
  %t351 = load i64, ptr %l5, !tbaa !24
  store i64 %t351, ptr %l135, !tbaa !24
  %t352 = load i1, ptr %l4, !tbaa !21
  store i1 %t352, ptr %l136, !tbaa !21
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load { i64, [2 x i64] }, ptr %l1
  %t357 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t353, { i64, [2 x i64] } %t354)
  store i64 %t357, ptr %l139
  br label %bb55
bb55:
  %t358 = load i64, ptr %l139, !tbaa !24
  %t359 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t358)
  store { i64, ptr } %t359, ptr %l140
  br label %bb56
bb56:
  %t360 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t361 = extractvalue { i64, ptr } %t360, 0
  %t362 = extractvalue { i64, ptr } %t360, 1
  %t363 = mul i64 %t361, 1
  %t364 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t363)
  call void @llvm.memcpy.p0.p0.i64(ptr %t364, ptr %t362, i64 %t363, i1 false)
  %t365 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t367 = load ptr, ptr %l128, !tbaa !29
  %t368 = load { i64, [2 x i64] }, ptr %l129
  %t369 = load i32, ptr %l131, !tbaa !23
  %t370 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t371 = load i64, ptr %l135, !tbaa !24
  %t372 = load i1, ptr %l136, !tbaa !21
  %t374 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t367, { i64, [2 x i64] } %t368, i32 %t369, { i64, ptr } %t370, i64 %t371, i1 %t372, { i64, ptr } %t366, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store { i64, ptr } %t374, ptr %l142
  br label %bb57
bb57:
  %t375 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load { i64, [2 x i64] }, ptr %l1
  %t378 = load ptr, ptr %l2, !tbaa !29
  %t379 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t379, 1
  %t382 = extractvalue { i64, ptr } %t379, 0
  %t383 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t385 = add i64 %t382, %t384
  %t386 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t385)
  call void @olang_textcopy(ptr %t386, ptr %t381, i64 %t382)
  %t387 = getelementptr i8, ptr %t386, i64 %t382
  call void @olang_textcopy(ptr %t387, ptr %t383, i64 %t384)
  %t388 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t389 = insertvalue { i64, ptr } %t388, ptr %t386, 1
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t392 = extractvalue { i64, ptr } %t389, 1
  %t393 = mul i64 %t391, 1
  %t394 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t393)
  call void @llvm.memcpy.p0.p0.i64(ptr %t394, ptr %t392, i64 %t393, i1 false)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  %t397 = load i64, ptr %l5, !tbaa !24
  %t398 = load i1, ptr %l4, !tbaa !21
  %t407 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t376, { i64, [2 x i64] } %t377, ptr %t378, { i64, ptr } %t396, i64 %t397, i1 %t398, { i64, ptr } %t375, i1 true)
  store i1 %t407, ptr %l152
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzSelected(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { { i64, ptr }, { i64, ptr } }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i64
  %l24 = alloca { { i64, ptr }, { i64, ptr } }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l42 = alloca i1
  %l47 = alloca i1
  %l51 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 50
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l12
  br label %bb1
bb1:
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t7, ptr %lp3
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t9 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store ptr %l1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %l14, !tbaa !24
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t12)
  store i64 %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load i64, ptr %l14, !tbaa !24
  %t16 = load i64, ptr %l16, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l21
  br label %bb7
bb7:
  %t26 = load i64, ptr %l21, !tbaa !24
  store i64 %t26, ptr %l6, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestParts(ptr %v0, ptr %s2, ptr %t27, i64 %t28)
  store { { i64, ptr }, { i64, ptr } } %t31, ptr %l24
  br label %bb8
bb8:
  %t32 = load { { i64, ptr }, { i64, ptr } }, ptr %l24
  store { { i64, ptr }, { i64, ptr } } %t32, ptr %l7
  %t33 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l7, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l25, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 0
  store i64 %t36, ptr %l26, !tbaa !24
  %t37 = load i64, ptr %l26, !tbaa !24
  %t38 = mul i64 %t37, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t38)
  %t40 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  store { i64, ptr } %t41, ptr %l27, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = mul i64 %t46, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %t45, i64 %t47, i1 false)
  %t48 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t48, ptr %l8, !tbaa !27
  %t49 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l7, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l9, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %v0, { i64, ptr } %t52, { i64, ptr } %t53)
  store i1 %t56, ptr %l31
  br label %bb9
bb9:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb19
bb11:
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s2, ptr %v0, { i64, ptr } %t58, { i64, ptr } %t59)
  store i1 %t62, ptr %l35
  br label %bb12
bb12:
  %t63 = load i1, ptr %l35, !tbaa !21
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t64 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t72 = icmp sgt i64 %t66, %t69
  store i1 %t72, ptr %l36, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t74 = load i1, ptr %l36, !tbaa !21
  br i1 %t74, label %bb16, label %bb17
bb16:
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t79 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr i8, ptr %t80, i64 %t77
  %t82 = load i8, ptr %t81, !tbaa !32
  %t84 = icmp eq i8 %t82, 46
  store i1 %t84, ptr %l42, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb18
bb18:
  %t86 = load i1, ptr %l42, !tbaa !21
  store i1 %t86, ptr %l32, !tbaa !21
  br label %bb19
bb19:
  %t87 = load i1, ptr %l32, !tbaa !21
  br i1 %t87, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb23
bb21:
  %t88 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t93 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %s2, ptr %v0, { i64, ptr } %t88, { i64, ptr } %t89)
  store i1 %t93, ptr %l51
  br label %bb22
bb22:
  %t94 = load i1, ptr %l51, !tbaa !21
  store i1 %t94, ptr %l47, !tbaa !21
  br label %bb23
bb23:
  %t95 = load i1, ptr %l47, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t96 = load ptr, ptr %lp3
  %t97 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t96, i64 %t97)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb28:
  %t100 = load i64, ptr %l5, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l5, !tbaa !24
  br label %bb2
bb29:
  %t104 = load ptr, ptr %lp3
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t104
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i32
  %l23 = alloca ptr
  %l26 = alloca i32
  %l27 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l39 = alloca i1
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l17
  br label %bb1
bb1:
  %t11 = load i32, ptr %l17, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l20
  br label %bb2
bb2:
  %t17 = load i32, ptr %l20, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 18 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb29
bb5:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l23, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l26
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l23, !tbaa !29
  %t30 = load i32, ptr %l26, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t31, ptr %l27
  br label %bb7
bb7:
  %t32 = load i32, ptr %l27, !range !{i32 0, i32 6}
  %t34 = trunc i64 0 to i32
  %t35 = icmp eq i32 %t32, %t34
  br i1 %t35, label %bb8, label %bb9
bb8:
  %t37 = load ptr, ptr %l2, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l33
  br label %bb10
bb9:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb11
bb10:
  %t42 = load i1, ptr %l33, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t45 = load i1, ptr %l30, !tbaa !21
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/emit:Emitter", ptr %t46, i32 0, i32 17
  %t49 = load i32, ptr %l3, !tbaa !23
  %t52 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l39
  br label %bb14
bb13:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb15
bb14:
  %t53 = load i1, ptr %l39, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:Emitter", ptr %t57, i32 0, i32 17
  %t60 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t59, i32 %t60, i1 true)
  br label %bb18
bb17:
  br label %bb28
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/emit:Emitter", ptr %t63, i32 0, i32 16
  %t66 = load i32, ptr %l3, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t65, i32 %t66)
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s3, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l49
  br label %bb20
bb20:
  %t74 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 4
  %t78 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  store { i64, ptr } %t80, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb21
bb21:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l57, !tbaa !27
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t102 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t102, i32 %t100)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l6, !tbaa !24
  br label %bb21
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb28
bb28:
  br label %bb50
bb29:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 19 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb30, label %bb31
bb30:
  br label %bb36
bb31:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t117 = trunc i64 22 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t122 = trunc i64 23 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb45
bb36:
  store %olang.scope zeroinitializer, ptr %s7
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t126 = load i32, ptr %l3, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %s7, ptr %t125, i32 %t126)
  store { i64, ptr } %t129, ptr %l72
  br label %bb37
bb37:
  %t130 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t131 = extractvalue { i64, ptr } %t130, 0
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = mul i64 %t131, 4
  %t134 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  store { i64, ptr } %t136, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t138 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t138, 0
  store i64 %t140, ptr %l11, !tbaa !24
  br label %bb38
bb38:
  %t142 = load i64, ptr %l10, !tbaa !24
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = icmp slt i64 %t142, %t143
  %t148 = xor i1 %t146, true
  br i1 %t148, label %bb39, label %bb40
bb39:
  br label %bb44
bb40:
  br label %bb41
bb41:
  %t150 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t150, ptr %l80, !tbaa !27
  %t151 = load i64, ptr %l10, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i32, ptr %t154, i64 %t151
  %t156 = load i32, ptr %t155, !tbaa !33
  %t158 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t158, i32 %t156)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb38
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb45:
  br i1 true, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_ef8ce655497c6e66_70bdfc36b0b8c4fa)
  unreachable
bb50:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epartOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l24 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca i64
  %l29 = alloca i64
  %l34 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %t6, i64 %t7)
  store i1 %t10, ptr %l11
  br label %bb4
bb4:
  %t11 = load i1, ptr %l11, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t12, i32 0, i32 67
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t14, i64 %t15)
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l18
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb8, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l17
  br label %bb7
bb6:
  %t23 = load i64, ptr %l1, !tbaa !24
  store i64 %t23, ptr %l12, !tbaa !24
  br label %bb11
bb7:
  %t25 = load i64, ptr %l17, !tbaa !24
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  %t28 = load i64, ptr %l13, !tbaa !24
  store i64 %t28, ptr %l12, !tbaa !24
  br label %bb11
bb11:
  %t29 = load i64, ptr %l12, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/emit:Emitter", ptr %t30, i32 0, i32 18
  %t36 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t32, i64 %t29)
  store { i64, ptr } %t36, ptr %l24
  br label %bb12
bb12:
  %t37 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t40, ptr %l26
  br label %bb13
bb13:
  %t41 = load i1, ptr %l26, !tbaa !21
  br i1 %t41, label %bb14, label %bb15
bb14:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb17
bb15:
  %t42 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t44 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %t42)
  store i64 %t44, ptr %l29
  br label %bb16
bb16:
  %t45 = load i64, ptr %l29, !tbaa !24
  store i64 %t45, ptr %l27, !tbaa !24
  br label %bb17
bb17:
  %t46 = load i64, ptr %l2, !tbaa !24
  %t47 = load i64, ptr %l27, !tbaa !24
  %t49 = srem i64 %t47, %t46
  store i64 %t49, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp slt i64 %t51, 0
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t55 = load i64, ptr %l5, !tbaa !24
  %t56 = load i64, ptr %l2, !tbaa !24
  %t59 = add i64 %t55, %t56
  store i64 %t59, ptr %l34, !tbaa !24
  br label %bb20
bb19:
  %t61 = load i64, ptr %l5, !tbaa !24
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load i64, ptr %l34, !tbaa !24
  store i64 %t63, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eretires(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l16 = alloca ptr
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 0
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
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 5
  %t39 = load i1, ptr %t38, !tbaa !21
  store i1 %t39, ptr %rv
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
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntimeItems(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/text:LineIter"
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l23 = alloca i1
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/text:StringBuilder"
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"std/prelude/text:LineIter"
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i32
  %l45 = alloca i1
  %l47 = alloca i1
  %l53 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca i64
  %l64 = alloca %"std/prelude/text:StringBuilder"
  %l66 = alloca %"std/prelude/text:StringBuilder"
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca i64
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca i1
  %l85 = alloca i1
  %l86 = alloca { i64, ptr }
  %l88 = alloca i64
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l98 = alloca i64
  %l104 = alloca ptr
  %l105 = alloca i64
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 58
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 58
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 48
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 49
  %t16 = load i1, ptr %t15, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:Emitter", ptr %t17, i32 0, i32 6
  %t20 = load i1, ptr %t19, !tbaa !21
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/emit:Emitter", ptr %t21, i32 0, i32 8
  %t24 = load i1, ptr %t23, !tbaa !21
  %t29 = call { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v0, ptr %s0, { i64, ptr } %t12, i1 %t16, i1 false, i1 %t20, i1 %t24)
  %t30 = extractvalue { i32, { i64, ptr } } %t29, 1
  %t31 = extractvalue { i32, { i64, ptr } } %t29, 0
  store i32 %t31, ptr %l21
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb5, label %ok.33, !prof !99
ok.33:
  store { i64, ptr } %t30, ptr %l20
  br label %bb4
bb4:
  %t34 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t34, ptr %l11, !tbaa !27
  br label %bb8
bb5:
  %t35 = load i32, ptr %l21, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %s2, ptr %t39, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t41 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t41, ptr %l1, !tbaa !27
  %t42 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t42, ptr %l25
  br label %bb9
bb9:
  %t43 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t43, ptr %l2
  %t44 = ptrtoint ptr %s0 to i64
  store i64 %t44, ptr %l26, !tbaa !24
  %t45 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = call ptr @__olang_region_make(ptr %s0)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l26
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t50)
  store %"std/prelude/text:StringBuilder" %t51, ptr %l28
  br label %bb12
bb12:
  %t52 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load i64, ptr %l26
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = getelementptr %"std/prelude/text:StringBuilder", ptr %l28, i32 0, i32 0
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t56, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t55
  call void @__olang_region_settle(ptr %t55, i1 %t63)
  br label %bb14
bb14:
  %t64 = load %"std/prelude/text:StringBuilder", ptr %l28
  store %"std/prelude/text:StringBuilder" %t64, ptr %l3
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t65, ptr %l31, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l32, !tbaa !24
  %t68 = load i64, ptr %l32, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l33, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l32, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t79, ptr %l4, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s3
  %t80 = ptrtoint ptr %s3 to i64
  store i64 %t80, ptr %l34, !tbaa !24
  %t81 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t81, label %bb15, label %bb16
bb15:
  %t83 = call ptr @__olang_region_make(ptr %s3)
  %t84 = ptrtoint ptr %t83 to i64
  store i64 %t84, ptr %l34, !tbaa !24
  br label %bb16
bb16:
  %t85 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t86 = load i64, ptr %l34
  %t87 = inttoptr i64 %t86 to ptr
  %t89 = call { i64, ptr } @compiler_2fruntime_2eDecls(ptr %s0, ptr %t87, { i64, ptr } %t85)
  store { i64, ptr } %t89, ptr %l37
  br label %bb17
bb17:
  %t90 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t91 = load i64, ptr %l34
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = extractvalue { i64, ptr } %t90, 0
  %t94 = extractvalue { i64, ptr } %t90, 1
  %t95 = mul i64 %t93, 1
  %t96 = call ptr @__olang_scope_alloc(ptr %t92, i64 %t95)
  call void @llvm.memcpy.p0.p0.i64(ptr %t96, ptr %t94, i64 %t95, i1 false)
  %t97 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t96, 1
  %t100 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s3, ptr %s3, { i64, ptr } %t98)
  store %"std/prelude/text:LineIter" %t100, ptr %l39
  br label %bb18
bb18:
  %t101 = load %"std/prelude/text:LineIter", ptr %l39
  store %"std/prelude/text:LineIter" %t101, ptr %l5
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t103 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s3, ptr %s3, ptr %l5)
  %t104 = extractvalue { i32, { i64, ptr } } %t103, 1
  %t105 = extractvalue { i32, { i64, ptr } } %t103, 0
  store i32 %t105, ptr %l43
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb21, label %ok.107, !prof !99
ok.107:
  store { i64, ptr } %t104, ptr %l42
  br label %bb20
bb20:
  %t108 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t108, ptr %l40, !tbaa !27
  br label %bb23
bb21:
  %t109 = load i32, ptr %l43, !tbaa !23
  %t110 = ashr i32 %t109, 16
  %t112 = icmp eq i32 %t110, 1
  store i1 %t112, ptr %l45, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb72
bb23:
  %t113 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t113, ptr %l6, !tbaa !27
  %t114 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t116 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t114, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t116, ptr %l47
  br label %bb24
bb24:
  %t117 = load i1, ptr %l47, !tbaa !21
  %t118 = xor i1 %t117, true
  br i1 %t118, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t120 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l3, { i64, ptr } %t120)
  br label %bb27
bb26:
  br label %bb47
bb27:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 10)
  br label %bb28
bb28:
  %t124 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s3, ptr %s5, { i64, ptr } %t124, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t126, ptr %l53
  br label %bb29
bb29:
  %t127 = load i1, ptr %l53, !tbaa !21
  br i1 %t127, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t128 = load ptr, ptr %l0, !tbaa !29
  store ptr %t128, ptr %l54, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t129, ptr %l55, !tbaa !27
  %t130 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t130, ptr %l56, !tbaa !24
  %t131 = ptrtoint ptr %s6 to i64
  store i64 %t131, ptr %l57, !tbaa !24
  %t132 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t132, label %bb32, label %bb33
bb31:
  br label %bb46
bb32:
  %t134 = call ptr @__olang_region_make(ptr %s6)
  %t135 = ptrtoint ptr %t134 to i64
  store i64 %t135, ptr %l57, !tbaa !24
  br label %bb33
bb33:
  %t136 = load i64, ptr %l57
  %t137 = inttoptr i64 %t136 to ptr
  %t139 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t137, ptr %l3)
  store { i64, ptr } %t139, ptr %l60
  br label %bb34
bb34:
  %t140 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t141 = load i64, ptr %l57
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = extractvalue { i64, ptr } %t140, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t149 = load ptr, ptr %l54, !tbaa !29
  %t150 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t151 = load i64, ptr %l56, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s6, ptr %s6, ptr %t149, { i64, ptr } %t150, i64 %t151, { i64, ptr } %t148, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb35
bb35:
  %t153 = ptrtoint ptr %s0 to i64
  store i64 %t153, ptr %l62, !tbaa !24
  %t154 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3
  br i1 %t154, label %bb36, label %bb37
bb36:
  %t156 = call ptr @__olang_region_make(ptr %s0)
  %t157 = ptrtoint ptr %t156 to i64
  store i64 %t157, ptr %l62, !tbaa !24
  br label %bb37
bb37:
  %t158 = load i64, ptr %l62
  %t159 = inttoptr i64 %t158 to ptr
  %t160 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t159)
  store %"std/prelude/text:StringBuilder" %t160, ptr %l64
  br label %bb38
bb38:
  %t161 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3
  br i1 %t161, label %bb39, label %bb40
bb39:
  %t163 = load i64, ptr %l62
  %t164 = inttoptr i64 %t163 to ptr
  %t165 = getelementptr %"std/prelude/text:StringBuilder", ptr %l64, i32 0, i32 0
  %t166 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t165, i32 0, i32 0
  %t167 = load { i64, ptr }, ptr %t166
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_region_or(ptr %t168, ptr null)
  %t170 = icmp ne ptr %t169, null
  %t171 = select i1 %t170, ptr %t169, ptr null
  %t172 = icmp eq ptr %t171, %t164
  call void @__olang_region_settle(ptr %t164, i1 %t172)
  br label %bb40
bb40:
  %t173 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t173, ptr %l66
  %t174 = load %"std/prelude/text:StringBuilder", ptr %l64
  store %"std/prelude/text:StringBuilder" %t174, ptr %l3
  %t175 = load i1, ptr @olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3
  br i1 %t175, label %bb41, label %bb42
bb41:
  %t177 = getelementptr %"std/prelude/text:StringBuilder", ptr %l66, i32 0, i32 0
  %t178 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t177, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr null
  call void @__olang_region_drop(ptr %t183)
  store %"std/prelude/text:StringBuilder" zeroinitializer, ptr %l66
  br label %bb42
bb42:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l68, !tbaa !27
  %t184 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t184, ptr %l69, !tbaa !27
  %t185 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  %t187 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  store i64 %t188, ptr %l71, !tbaa !24
  %t190 = load i64, ptr %l71, !tbaa !24
  %t191 = icmp eq i64 %t186, %t190
  br i1 %t191, label %bb43, label %bb44
bb43:
  %t193 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = load i64, ptr %l71, !tbaa !24
  %t198 = mul i64 %t197, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t194, ptr %t196, i64 %t198, i1 false)
  br label %bb45
bb44:
  %t199 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  store i64 %t200, ptr %l73, !tbaa !24
  %t201 = load i64, ptr %l73, !tbaa !24
  %t202 = mul i64 %t201, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t202)
  %t204 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  store { i64, ptr } %t205, ptr %l74, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = load i64, ptr %l73, !tbaa !24
  %t211 = mul i64 %t210, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t207, ptr %t209, i64 %t211, i1 false)
  %t212 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t212, ptr %l4, !tbaa !27
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s6)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb47:
  %t213 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t215 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t213, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t215, ptr %l76
  br label %bb48
bb48:
  %t216 = load i1, ptr %l76, !tbaa !21
  br i1 %t216, label %bb49, label %bb50
bb49:
  %t217 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } %t217)
  br label %bb51
bb50:
  br label %bb53
bb51:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb53:
  %t221 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t223 = call { i64, ptr } @compiler_2femit_2edeclaredSymbol(ptr %s3, ptr %s4, { i64, ptr } %t221)
  store { i64, ptr } %t223, ptr %l81
  br label %bb54
bb54:
  %t224 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t224, ptr %l7, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t225, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t227, ptr %l83
  br label %bb55
bb55:
  %t228 = load i1, ptr %l83, !tbaa !21
  br i1 %t228, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb57:
  br label %bb58
bb58:
  %t229 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t231 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s4, { i64, ptr } %t229, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t231, ptr %l85
  br label %bb59
bb59:
  %t232 = load i1, ptr %l85, !tbaa !21
  br i1 %t232, label %bb60, label %bb61
bb60:
  %t233 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t233, ptr %l86, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 0
  %t236 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  store i64 %t237, ptr %l88, !tbaa !24
  %t239 = load i64, ptr %l88, !tbaa !24
  %t240 = icmp eq i64 %t235, %t239
  br i1 %t240, label %bb62, label %bb63
bb61:
  store %olang.scope zeroinitializer, ptr %s10
  %t242 = load ptr, ptr %l0, !tbaa !29
  store ptr %t242, ptr %l95, !tbaa !29
  %t243 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t243, ptr %l96, !tbaa !27
  %t244 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t244, ptr %l97, !tbaa !24
  %t245 = ptrtoint ptr %s10 to i64
  store i64 %t245, ptr %l98, !tbaa !24
  %t246 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t246, label %bb67, label %bb68
bb62:
  %t248 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t249 = load ptr, ptr %t248, !tbaa !27
  %t250 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l88, !tbaa !24
  %t253 = mul i64 %t252, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t249, ptr %t251, i64 %t253, i1 false)
  br label %bb64
bb63:
  %t254 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  store i64 %t255, ptr %l90, !tbaa !24
  %t256 = load i64, ptr %l90, !tbaa !24
  %t257 = mul i64 %t256, 1
  %t258 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t257)
  %t259 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t260 = insertvalue { i64, ptr } %t259, ptr %t258, 1
  store { i64, ptr } %t260, ptr %l91, !tbaa !27
  %t261 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = load i64, ptr %l90, !tbaa !24
  %t266 = mul i64 %t265, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t262, ptr %t264, i64 %t266, i1 false)
  %t267 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t267, ptr %l4, !tbaa !27
  br label %bb64
bb64:
  %t268 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l3, { i64, ptr } %t268)
  br label %bb65
bb65:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l3, i8 10)
  br label %bb66
bb66:
  br label %bb70
bb67:
  %t272 = call ptr @__olang_region_make(ptr %s10)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l98, !tbaa !24
  br label %bb68
bb68:
  %t274 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = extractvalue { i64, ptr } %t274, 0
  %t278 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t280 = add i64 %t277, %t279
  %t281 = load i64, ptr %l98
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = call ptr @__olang_scope_alloc(ptr %t282, i64 %t280)
  call void @olang_textcopy(ptr %t283, ptr %t276, i64 %t277)
  %t284 = getelementptr i8, ptr %t283, i64 %t277
  call void @olang_textcopy(ptr %t284, ptr %t278, i64 %t279)
  %t285 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t283, 1
  %t288 = load i64, ptr %l98
  %t289 = inttoptr i64 %t288 to ptr
  %t290 = extractvalue { i64, ptr } %t286, 0
  %t291 = extractvalue { i64, ptr } %t286, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %t289, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t296 = load ptr, ptr %l95, !tbaa !29
  %t297 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t298 = load i64, ptr %l97, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s4, ptr %s10, ptr %s10, ptr %t296, { i64, ptr } %t297, i64 %t298, { i64, ptr } %t295, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s10)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s4)
  br label %bb71
bb71:
  br label %bb19
bb72:
  call void @__olang_scope_close(ptr %s3)
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb73
bb73:
  %t301 = load ptr, ptr %l0, !tbaa !29
  store ptr %t301, ptr %l104, !tbaa !29
  %t302 = ptrtoint ptr %v0 to i64
  store i64 %t302, ptr %l105, !tbaa !24
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e57
  br i1 %t303, label %bb74, label %bb75
bb74:
  %t305 = call ptr @__olang_region_make(ptr %v0)
  %t306 = ptrtoint ptr %t305 to i64
  store i64 %t306, ptr %l105, !tbaa !24
  br label %bb75
bb75:
  %t307 = load i64, ptr %l105
  %t308 = inttoptr i64 %t307 to ptr
  %t310 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t308, ptr %l2)
  store { i64, ptr } %t310, ptr %l108
  br label %bb76
bb76:
  %t311 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t312 = load i64, ptr %l105
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = extractvalue { i64, ptr } %t311, 0
  %t315 = extractvalue { i64, ptr } %t311, 1
  %t316 = mul i64 %t314, 1
  %t317 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t316)
  call void @llvm.memcpy.p0.p0.i64(ptr %t317, ptr %t315, i64 %t316, i1 false)
  %t318 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t319 = insertvalue { i64, ptr } %t318, ptr %t317, 1
  %t320 = load ptr, ptr %l104, !tbaa !29
  %t321 = getelementptr %"compiler/emit:Emitter", ptr %t320, i32 0, i32 57
  %t322 = load { i64, ptr }, ptr %t321, !tbaa !27
  store { i64, ptr } %t322, ptr %l110, !tbaa !27
  %t324 = load ptr, ptr %l104, !tbaa !29
  %t325 = getelementptr %"compiler/emit:Emitter", ptr %t324, i32 0, i32 57
  store { i64, ptr } %t319, ptr %t325, !tbaa !27
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e57
  br i1 %t326, label %bb77, label %bb78
bb77:
  %t328 = load { i64, ptr }, ptr %l110
  %t329 = extractvalue { i64, ptr } %t328, 1
  call void @__olang_region_release(ptr %t329)
  store { i64, ptr } zeroinitializer, ptr %l110
  br label %bb78
bb78:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 49
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t8, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %a1, { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunk(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca i1
  %l14 = alloca i32
  %l15 = alloca i1
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i8
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca i32
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca { i64, [2 x i64] }
  %l74 = alloca i32
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca %"std/prelude/text:StringBuilder"
  %l85 = alloca %"std/prelude/text:StringBuilder"
  %l88 = alloca i1
  %l92 = alloca i32
  %l96 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l110 = alloca i64
  %l113 = alloca i1
  %l124 = alloca i64
  %l127 = alloca i64
  %l156 = alloca i1
  %l162 = alloca i64
  %l168 = alloca i64
  %l182 = alloca ptr
  %l185 = alloca i32
  %l186 = alloca { i64, ptr }
  %l189 = alloca { i64, ptr }
  %l195 = alloca i64
  %l198 = alloca i64
  %l234 = alloca ptr
  %l236 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l256 = alloca i1
  %l257 = alloca ptr
  %l258 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l264 = alloca ptr
  %l266 = alloca i1
  %l267 = alloca { i64, ptr }
  %l268 = alloca ptr
  %l269 = alloca { i64, ptr }
  %l270 = alloca i64
  %l271 = alloca i64
  %l274 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l277 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l280 = alloca { i64, ptr }
  %l286 = alloca i1
  %l287 = alloca i1
  %l290 = alloca i32
  %l293 = alloca i32
  %l299 = alloca ptr
  %l300 = alloca { i64, ptr }
  %l301 = alloca i64
  %l302 = alloca i64
  %l305 = alloca { i64, ptr }
  %l307 = alloca ptr
  %l308 = alloca { i64, [2 x i64] }
  %l309 = alloca i32
  %l310 = alloca %"compiler/source:Span"
  %l311 = alloca %"compiler/mir:Fn"
  %l314 = alloca %"compiler/emit:fnEm"
  %l318 = alloca i32
  %l321 = alloca i32
  %l324 = alloca i32
  %l328 = alloca i1
  %l332 = alloca i1
  %l335 = alloca i1
  %l337 = alloca { i64, ptr }
  %l338 = alloca { i64, ptr }
  %l339 = alloca [1 x i8]
  %l344 = alloca { i64, ptr }
  %l349 = alloca { i64, ptr }
  %l350 = alloca { i64, ptr }
  %l356 = alloca { i64, ptr }
  %l358 = alloca i64
  %l360 = alloca i64
  %l361 = alloca { i64, ptr }
  %l364 = alloca { i64, ptr }
  %l367 = alloca { i64, ptr }
  %l372 = alloca { i64, ptr }
  %l375 = alloca i1
  %l382 = alloca { i64, ptr }
  %l385 = alloca ptr
  %l386 = alloca { i64, ptr }
  %l389 = alloca { i64, ptr }
  %l392 = alloca { i64, ptr }
  %l397 = alloca { i64, ptr }
  %l403 = alloca { i64, ptr }
  %l406 = alloca { i64, ptr }
  %l411 = alloca { i64, ptr }
  %l418 = alloca { i64, ptr }
  %l419 = alloca ptr
  %l420 = alloca { i64, ptr }
  %l421 = alloca ptr
  %l422 = alloca { i64, ptr }
  %l423 = alloca { i64, ptr }
  %l424 = alloca ptr
  %l427 = alloca i32
  %l428 = alloca { i64, ptr }
  %l432 = alloca { i64, ptr }
  %l435 = alloca ptr
  %l438 = alloca { i64, ptr }
  %l441 = alloca ptr
  %l442 = alloca { i64, ptr }
  %l443 = alloca i64
  %l444 = alloca i64
  %l447 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %t19 = alloca { i64, [4 x i64] }, align 8
  %t22 = alloca { i64, [7 x i64] }, align 8
  %t252 = alloca { i64, [7 x i64] }, align 8
  %t720 = alloca %"compiler/mir:Fn", align 8
  %t726 = alloca %"compiler/emit:fnEm", align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load { i64, [2 x i64] }, ptr %l1
  %t10 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t6, { i64, [2 x i64] } %t7)
  store { i64, ptr } %t10, ptr %l47
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l1
  %t16 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  store i32 %t16, ptr %l50
  br label %bb2
bb2:
  %t17 = load i32, ptr %l50, !tbaa !23
  store i32 %t17, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 0
  store i64 0, ptr %t20
  %t21 = load { i64, [4 x i64] }, ptr %t19
  store { i64, [7 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [7 x i64] }, ptr %t22, i32 0, i32 0
  store i64 2, ptr %t23
  %t25 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t21, 0
  %t26 = getelementptr { i64, [7 x i64] }, ptr %t22, i32 0, i32 1
  store { { i64, [4 x i64] } } %t25, ptr %t26
  %t27 = load { i64, [7 x i64] }, ptr %t22
  %t28 = load i32, ptr %l2, !tbaa !23
  %t32 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t18, { i64, [7 x i64] } %t27, i32 %t28)
  store i64 %t32, ptr %l55
  br label %bb3
bb3:
  %t33 = load i64, ptr %l55, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, [2 x i64] }, ptr %l1
  %t36 = load i32, ptr %l5, !tbaa !23
  %t40 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t34, { i64, [2 x i64] } %t35, i32 %t36)
  store i64 %t40, ptr %l59
  br label %bb4
bb4:
  %t41 = load i64, ptr %l59, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load { i64, [2 x i64] }, ptr %l1
  %t46 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t42, { i64, [2 x i64] } %t43)
  store i64 %t46, ptr %l62
  br label %bb5
bb5:
  %t47 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t48 = load i64, ptr %l62, !tbaa !24
  %t50 = icmp eq i64 %t48, %t47
  br i1 %t50, label %bb6, label %bb7
bb6:
  %t52 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  store i64 %t52, ptr %l65, !tbaa !24
  br label %bb8
bb7:
  %t54 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t54, ptr %l65, !tbaa !24
  br label %bb8
bb8:
  %t56 = load i64, ptr %l65, !tbaa !24
  store i64 %t56, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t59 = load i32, ptr %l2, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %s0, ptr %s0, ptr %t57, { i64, ptr } %t58, i32 %t59)
  store { i64, ptr } %t63, ptr %l71
  br label %bb9
bb9:
  %t64 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t64, ptr %l9, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l72, !tbaa !29
  %t66 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t66, ptr %l73
  %t67 = load i32, ptr %l2, !tbaa !23
  store i32 %t67, ptr %l74, !tbaa !23
  %t68 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t68, ptr %l75, !tbaa !27
  %t69 = load i64, ptr %l6, !tbaa !24
  store i64 %t69, ptr %l76, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t72 = call { i64, ptr } @compiler_2femit_2elinkFor(ptr %s0, i64 %t70)
  store { i64, ptr } %t72, ptr %l78
  br label %bb10
bb10:
  %t73 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t80 = load ptr, ptr %l72, !tbaa !29
  %t81 = load { i64, [2 x i64] }, ptr %l73
  %t82 = load i32, ptr %l74, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t84 = load i64, ptr %l76, !tbaa !24
  %t86 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t80, { i64, [2 x i64] } %t81, i32 %t82, { i64, ptr } %t83, i64 %t84, i1 true, { i64, ptr } %t79, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store { i64, ptr } %t86, ptr %l80
  br label %bb11
bb11:
  %t87 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t87, ptr %l10, !tbaa !27
  %t88 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t88, ptr %l81
  br label %bb12
bb12:
  %t89 = load %"std/prelude/text:StringBuilder", ptr %l81
  store %"std/prelude/text:StringBuilder" %t89, ptr %l11
  %t90 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } %t90)
  br label %bb13
bb13:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb14
bb14:
  %t94 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t94, ptr %l85
  br label %bb15
bb15:
  %t95 = load %"std/prelude/text:StringBuilder", ptr %l85
  store %"std/prelude/text:StringBuilder" %t95, ptr %l12
  store i1 true, ptr %l13, !tbaa !21
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, [2 x i64] }, ptr %l1
  %t100 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %t96, { i64, [2 x i64] } %t97)
  store i1 %t100, ptr %l88
  br label %bb16
bb16:
  %t101 = load i1, ptr %l88, !tbaa !21
  br i1 %t101, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l12, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %l13, !tbaa !21
  call void @__olang_scope_close(ptr %s1)
  br label %bb20
bb20:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t104 = load i32, ptr %l2, !tbaa !23
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l92
  br label %bb21
bb21:
  %t108 = load i32, ptr %l92, !tbaa !23
  store i32 %t108, ptr %l14, !tbaa !23
  %t109 = load i32, ptr %l14, !tbaa !23
  %t110 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t113 = icmp ne i32 %t109, %t110
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t115 = load i32, ptr %l14, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t119 = icmp ne i32 %t115, %t116
  store i1 %t119, ptr %l96, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb24
bb24:
  %t121 = load i1, ptr %l96, !tbaa !21
  br i1 %t121, label %bb25, label %bb26
bb25:
  %t122 = load ptr, ptr %l3, !tbaa !29
  %t123 = load i32, ptr %l14, !tbaa !23
  %t126 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t122, i32 %t123)
  store i1 %t126, ptr %l103
  br label %bb27
bb26:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb28
bb27:
  %t127 = load i1, ptr %l103, !tbaa !21
  store i1 %t127, ptr %l100, !tbaa !21
  br label %bb28
bb28:
  %t128 = load i1, ptr %l100, !tbaa !21
  br i1 %t128, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s2
  %t129 = load i1, ptr %l13, !tbaa !21
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb31, label %bb32
bb30:
  br label %bb36
bb31:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s3)
  br label %bb34
bb34:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l12, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb35
bb35:
  store i1 false, ptr %l13, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l3, !tbaa !29
  %t136 = load i32, ptr %l5, !tbaa !23
  %t139 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t135, i32 %t136)
  store i64 %t139, ptr %l110
  br label %bb37
bb37:
  %t140 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t141 = load i64, ptr %l110, !tbaa !24
  %t143 = icmp eq i64 %t141, %t140
  br i1 %t143, label %bb38, label %bb39
bb38:
  %t145 = load i64, ptr %l7, !tbaa !24
  %t146 = load i64, ptr %l6, !tbaa !24
  %t149 = icmp sgt i64 %t145, %t146
  store i1 %t149, ptr %l113, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb40
bb40:
  %t151 = load i1, ptr %l113, !tbaa !21
  store i1 %t151, ptr %l15, !tbaa !21
  %t152 = load i1, ptr %l15, !tbaa !21
  br i1 %t152, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s4
  %t154 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s4, ptr %t154, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb43
bb42:
  br label %bb45
bb43:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l11, { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s4)
  br label %bb45
bb45:
  store i64 0, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l7, !tbaa !24
  store i64 %t157, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t159 = load i64, ptr %l17, !tbaa !24
  %t160 = load i64, ptr %l16, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb46, label %bb47
bb46:
  %t165 = load i64, ptr %l18, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb48, label %bb49
bb47:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb51
bb48:
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l18, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l18, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l127, !tbaa !24
  br label %bb50
bb49:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb50
bb50:
  %t185 = load i64, ptr %l127, !tbaa !24
  store i64 %t185, ptr %l124, !tbaa !24
  br label %bb51
bb51:
  %t186 = load i64, ptr %l124, !tbaa !24
  store i64 %t186, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb52
bb52:
  %t187 = load i64, ptr %l20, !tbaa !24
  %t188 = load i64, ptr %l19, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb53, label %bb54
bb53:
  br label %bb80
bb54:
  br label %bb55
bb55:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load i64, ptr %l20, !tbaa !24
  %t197 = load i64, ptr %l18, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  store i64 %t203, ptr %l21, !tbaa !24
  %t205 = load i1, ptr %l13, !tbaa !21
  %t207 = xor i1 %t205, true
  br i1 %t207, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) })
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s7)
  br label %bb59
bb59:
  store i1 false, ptr %l13, !tbaa !21
  %t210 = load i64, ptr %l21, !tbaa !24
  %t211 = load i64, ptr %l6, !tbaa !24
  %t214 = icmp slt i64 %t210, %t211
  br i1 %t214, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s8
  %t216 = load i64, ptr %l21, !tbaa !24
  %t217 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t220 = call i64 @__olang_fmt_i64(ptr null, i64 %t216)
  %t221 = add i64 %t218, %t220
  %t222 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t221)
  call void @olang_textcopy(ptr %t222, ptr %t217, i64 %t218)
  %t223 = getelementptr i8, ptr %t222, i64 %t218
  %t224 = call i64 @__olang_fmt_i64(ptr %t223, i64 %t216)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t222, 1
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t229 = extractvalue { i64, ptr } %t226, 1
  %t230 = mul i64 %t228, 1
  %t231 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t230)
  call void @llvm.memcpy.p0.p0.i64(ptr %t231, ptr %t229, i64 %t230, i1 false)
  %t232 = insertvalue { i64, ptr } undef, i64 %t228, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t231, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l12, { i64, ptr } %t233)
  br label %bb62
bb61:
  %t236 = load i1, ptr %l15, !tbaa !21
  br i1 %t236, label %bb63, label %bb64
bb62:
  call void @__olang_scope_close(ptr %s8)
  br label %bb78
bb63:
  %t238 = load i64, ptr %l21, !tbaa !24
  %t239 = load i64, ptr %l7, !tbaa !24
  %t241 = sub i64 %t239, 1
  %t244 = icmp eq i64 %t238, %t241
  store i1 %t244, ptr %l156, !tbaa !21
  br label %bb65
bb64:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb65
bb65:
  %t246 = load i1, ptr %l156, !tbaa !21
  br i1 %t246, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s11
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %l12, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb68
bb67:
  %t248 = load i64, ptr %l21, !tbaa !24
  store i64 %t248, ptr %l162, !tbaa !24
  %t249 = load ptr, ptr %l3, !tbaa !29
  %t250 = load { i64, [2 x i64] }, ptr %l1
  %t251 = load i32, ptr %l5, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t252
  %t253 = getelementptr { i64, [7 x i64] }, ptr %t252, i32 0, i32 0
  store i64 0, ptr %t253
  %t255 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t250, 0
  %t257 = insertvalue { { i64, [2 x i64] }, i32 } %t255, i32 %t251, 1
  %t258 = getelementptr { i64, [7 x i64] }, ptr %t252, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t257, ptr %t258
  %t259 = load { i64, [7 x i64] }, ptr %t252
  %t260 = load i32, ptr %l5, !tbaa !23
  %t264 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t249, { i64, [7 x i64] } %t259, i32 %t260)
  store i64 %t264, ptr %l168
  br label %bb69
bb68:
  call void @__olang_scope_close(ptr %s11)
  br label %bb77
bb69:
  %t265 = load i64, ptr %l162, !tbaa !24
  %t266 = load i64, ptr %l168, !tbaa !24
  %t267 = icmp sge i64 %t265, %t266
  br i1 %t267, label %bb70, label %bb71
bb70:
  store %olang.scope zeroinitializer, ptr %s13
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l12, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) })
  br label %bb72
bb71:
  store %olang.scope zeroinitializer, ptr %s14
  %t270 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s14, ptr %s14, ptr %t270, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d76, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s13)
  br label %bb76
bb73:
  %t272 = load i64, ptr %l21, !tbaa !24
  %t273 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t274 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t276 = call i64 @__olang_fmt_i64(ptr null, i64 %t272)
  %t277 = add i64 %t274, %t276
  %t278 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t280 = add i64 %t277, %t279
  %t281 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t280)
  call void @olang_textcopy(ptr %t281, ptr %t273, i64 %t274)
  %t282 = getelementptr i8, ptr %t281, i64 %t274
  %t283 = call i64 @__olang_fmt_i64(ptr %t282, i64 %t272)
  %t284 = getelementptr i8, ptr %t282, i64 %t276
  call void @olang_textcopy(ptr %t284, ptr %t278, i64 %t279)
  %t285 = insertvalue { i64, ptr } undef, i64 %t280, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t281, 1
  %t288 = extractvalue { i64, ptr } %t286, 0
  %t289 = extractvalue { i64, ptr } %t286, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l11, { i64, ptr } %t293)
  br label %bb74
bb74:
  %t296 = load i64, ptr %l21, !tbaa !24
  %t297 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t298 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t300 = call i64 @__olang_fmt_i64(ptr null, i64 %t296)
  %t301 = add i64 %t298, %t300
  %t302 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t301)
  call void @olang_textcopy(ptr %t302, ptr %t297, i64 %t298)
  %t303 = getelementptr i8, ptr %t302, i64 %t298
  %t304 = call i64 @__olang_fmt_i64(ptr %t303, i64 %t296)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t302, 1
  %t308 = extractvalue { i64, ptr } %t306, 0
  %t309 = extractvalue { i64, ptr } %t306, 1
  %t310 = mul i64 %t308, 1
  %t311 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t310)
  call void @llvm.memcpy.p0.p0.i64(ptr %t311, ptr %t309, i64 %t310, i1 false)
  %t312 = insertvalue { i64, ptr } undef, i64 %t308, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t311, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %l12, { i64, ptr } %t313)
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s14)
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t316 = load i64, ptr %l20, !tbaa !24
  %t318 = add i64 %t316, 1
  store i64 %t318, ptr %l20, !tbaa !24
  br label %bb52
bb80:
  %t320 = load ptr, ptr %l3, !tbaa !29
  store ptr %t320, ptr %l182, !tbaa !29
  %t321 = load ptr, ptr %l3, !tbaa !29
  %t322 = load i32, ptr %l2, !tbaa !23
  %t325 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t321, i32 %t322)
  store i32 %t325, ptr %l185
  br label %bb81
bb81:
  %t326 = load ptr, ptr %l182, !tbaa !29
  %t327 = load i32, ptr %l185, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t326, i32 %t327)
  store { i64, ptr } %t328, ptr %l186
  br label %bb82
bb82:
  %t329 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t329, ptr %l22, !tbaa !27
  %t330 = load ptr, ptr %l3, !tbaa !29
  %t331 = load i32, ptr %l2, !tbaa !23
  %t334 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t330, i32 %t331)
  store { i64, ptr } %t334, ptr %l189
  br label %bb83
bb83:
  %t335 = load { i64, ptr }, ptr %l189, !tbaa !27
  store { i64, ptr } %t335, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t336 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  store i64 %t338, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t340 = load i64, ptr %l25, !tbaa !24
  %t341 = load i64, ptr %l24, !tbaa !24
  %t344 = icmp sgt i64 %t340, %t341
  br i1 %t344, label %bb84, label %bb85
bb84:
  %t346 = load i64, ptr %l26, !tbaa !24
  %t348 = icmp sgt i64 %t346, 0
  br i1 %t348, label %bb86, label %bb87
bb85:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb89
bb86:
  %t350 = load i64, ptr %l25, !tbaa !24
  %t351 = load i64, ptr %l24, !tbaa !24
  %t354 = sub i64 %t350, %t351
  %t355 = load i64, ptr %l26, !tbaa !24
  %t358 = add i64 %t354, %t355
  %t360 = sub i64 %t358, 1
  %t361 = load i64, ptr %l26, !tbaa !24
  %t364 = sdiv i64 %t360, %t361
  store i64 %t364, ptr %l198, !tbaa !24
  br label %bb88
bb87:
  store i64 0, ptr %l198, !tbaa !24
  br label %bb88
bb88:
  %t366 = load i64, ptr %l198, !tbaa !24
  store i64 %t366, ptr %l195, !tbaa !24
  br label %bb89
bb89:
  %t367 = load i64, ptr %l195, !tbaa !24
  store i64 %t367, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb90
bb90:
  %t368 = load i64, ptr %l28, !tbaa !24
  %t369 = load i64, ptr %l27, !tbaa !24
  %t372 = icmp slt i64 %t368, %t369
  %t374 = xor i1 %t372, true
  br i1 %t374, label %bb91, label %bb92
bb91:
  br label %bb116
bb92:
  br label %bb93
bb93:
  %t376 = load i64, ptr %l24, !tbaa !24
  %t377 = load i64, ptr %l28, !tbaa !24
  %t378 = load i64, ptr %l26, !tbaa !24
  %t381 = mul i64 %t377, %t378
  %t384 = add i64 %t376, %t381
  store i64 %t384, ptr %l29, !tbaa !24
  %t386 = load i1, ptr %l13, !tbaa !21
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb94, label %bb95
bb94:
  store %olang.scope zeroinitializer, ptr %s20
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s20, ptr %l12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_scope_close(ptr %s20)
  br label %bb97
bb97:
  store i1 false, ptr %l13, !tbaa !21
  %t391 = load i64, ptr %l29, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr i8, ptr %t394, i64 %t391
  %t396 = load i8, ptr %t395, !tbaa !32
  store i8 %t396, ptr %l30, !tbaa !22
  %t398 = load i8, ptr %l30, !tbaa !22
  %t400 = icmp eq i8 %t398, 109
  br i1 %t400, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb102
bb100:
  store %olang.scope zeroinitializer, ptr %s21
  %t402 = load i64, ptr %l29, !tbaa !24
  %t403 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t406 = call i64 @__olang_fmt_i64(ptr null, i64 %t402)
  %t407 = add i64 %t404, %t406
  %t408 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t407)
  call void @olang_textcopy(ptr %t408, ptr %t403, i64 %t404)
  %t409 = getelementptr i8, ptr %t408, i64 %t404
  %t410 = call i64 @__olang_fmt_i64(ptr %t409, i64 %t402)
  %t411 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t412 = insertvalue { i64, ptr } %t411, ptr %t408, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = extractvalue { i64, ptr } %t412, 1
  %t416 = mul i64 %t414, 1
  %t417 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t416)
  call void @llvm.memcpy.p0.p0.i64(ptr %t417, ptr %t415, i64 %t416, i1 false)
  %t418 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t417, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s21, ptr %l12, { i64, ptr } %t419)
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s21)
  br label %bb114
bb102:
  %t422 = load i8, ptr %l30, !tbaa !22
  %t424 = icmp eq i8 %t422, 115
  br i1 %t424, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb107
bb105:
  store %olang.scope zeroinitializer, ptr %s23
  %t426 = load i64, ptr %l29, !tbaa !24
  %t427 = load i64, ptr %l29, !tbaa !24
  %t428 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t429 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t431 = call i64 @__olang_fmt_i64(ptr null, i64 %t426)
  %t432 = add i64 %t429, %t431
  %t433 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t437 = call i64 @__olang_fmt_i64(ptr null, i64 %t427)
  %t438 = add i64 %t435, %t437
  %t439 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t440 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t441 = add i64 %t438, %t440
  %t442 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t441)
  call void @olang_textcopy(ptr %t442, ptr %t428, i64 %t429)
  %t443 = getelementptr i8, ptr %t442, i64 %t429
  %t444 = call i64 @__olang_fmt_i64(ptr %t443, i64 %t426)
  %t445 = getelementptr i8, ptr %t443, i64 %t431
  call void @olang_textcopy(ptr %t445, ptr %t433, i64 %t434)
  %t446 = getelementptr i8, ptr %t445, i64 %t434
  %t447 = call i64 @__olang_fmt_i64(ptr %t446, i64 %t427)
  %t448 = getelementptr i8, ptr %t446, i64 %t437
  call void @olang_textcopy(ptr %t448, ptr %t439, i64 %t440)
  %t449 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t442, 1
  %t452 = extractvalue { i64, ptr } %t450, 0
  %t453 = extractvalue { i64, ptr } %t450, 1
  %t454 = mul i64 %t452, 1
  %t455 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t454)
  call void @llvm.memcpy.p0.p0.i64(ptr %t455, ptr %t453, i64 %t454, i1 false)
  %t456 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t457 = insertvalue { i64, ptr } %t456, ptr %t455, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s23, ptr %l12, { i64, ptr } %t457)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s23)
  br label %bb114
bb107:
  br i1 true, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb113
bb110:
  store %olang.scope zeroinitializer, ptr %s25
  store ptr %l12, ptr %l234, !tbaa !29
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t461, ptr %l236, !tbaa !27
  %t462 = load i64, ptr %l29, !tbaa !24
  %t464 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t465 = load ptr, ptr %t464, !tbaa !27
  %t466 = getelementptr i32, ptr %t465, i64 %t462
  %t467 = load i32, ptr %t466, !tbaa !33
  %t470 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s25, ptr %t460, i32 %t467)
  store { i64, ptr } %t470, ptr %l239
  br label %bb111
bb111:
  %t471 = load i64, ptr %l29, !tbaa !24
  %t472 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 1
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t475 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t476 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t477 = add i64 %t474, %t476
  %t479 = call i64 @__olang_fmt_i64(ptr null, i64 %t471)
  %t480 = add i64 %t477, %t479
  %t481 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t480)
  call void @olang_textcopy(ptr %t481, ptr %t473, i64 %t474)
  %t482 = getelementptr i8, ptr %t481, i64 %t474
  call void @olang_textcopy(ptr %t482, ptr %t475, i64 %t476)
  %t483 = getelementptr i8, ptr %t482, i64 %t476
  %t484 = call i64 @__olang_fmt_i64(ptr %t483, i64 %t471)
  %t485 = insertvalue { i64, ptr } undef, i64 %t480, 0
  %t486 = insertvalue { i64, ptr } %t485, ptr %t481, 1
  %t488 = extractvalue { i64, ptr } %t486, 0
  %t489 = extractvalue { i64, ptr } %t486, 1
  %t490 = mul i64 %t488, 1
  %t491 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t490)
  call void @llvm.memcpy.p0.p0.i64(ptr %t491, ptr %t489, i64 %t490, i1 false)
  %t492 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t493 = insertvalue { i64, ptr } %t492, ptr %t491, 1
  %t494 = load ptr, ptr %l234, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %t494, { i64, ptr } %t493)
  br label %bb112
bb112:
  call void @__olang_scope_close(ptr %s25)
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_afcb0129fb824946_88799b4b9f9e7b3a)
  unreachable
bb114:
  br label %bb115
bb115:
  %t496 = load i64, ptr %l28, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l28, !tbaa !24
  br label %bb90
bb116:
  %t500 = load ptr, ptr %l3, !tbaa !29
  %t501 = load i32, ptr %l5, !tbaa !23
  %t503 = inttoptr i64 0 to ptr
  %t506 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t503, ptr %t500, i32 %t501)
  store { i64, ptr } %t506, ptr %l248
  br label %bb117
bb117:
  %t507 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t507, ptr %l31, !tbaa !27
  %t508 = load ptr, ptr %l3, !tbaa !29
  %t509 = load i32, ptr %l2, !tbaa !23
  %t511 = inttoptr i64 0 to ptr
  %t514 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t511, ptr %t508, i32 %t509)
  store { i64, ptr } %t514, ptr %l252
  br label %bb118
bb118:
  %t515 = load { i64, ptr }, ptr %l252, !tbaa !27
  store { i64, ptr } %t515, ptr %l32, !tbaa !27
  %t516 = load i1, ptr %l15, !tbaa !21
  br i1 %t516, label %bb119, label %bb120
bb119:
  store { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d87, i32 0, i32 1) }, ptr %l254, !tbaa !27
  br label %bb121
bb120:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d88, i32 0, i32 1) }, ptr %l254, !tbaa !27
  br label %bb121
bb121:
  %t518 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t518, ptr %l33, !tbaa !27
  %t519 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t521 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t519, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t521, ptr %l256
  br label %bb122
bb122:
  %t522 = load i1, ptr %l256, !tbaa !21
  br i1 %t522, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s28
  store ptr %l11, ptr %l257, !tbaa !29
  %t523 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t523, ptr %l258, !tbaa !27
  %t525 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s28, ptr %l12)
  store { i64, ptr } %t525, ptr %l260
  br label %bb125
bb124:
  br label %bb136
bb125:
  %t526 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t527 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t528 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t529 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t530 = extractvalue { i64, ptr } %t529, 1
  %t531 = extractvalue { i64, ptr } %t529, 0
  %t532 = add i64 %t528, %t531
  %t533 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t534 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t535 = add i64 %t532, %t534
  %t536 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = add i64 %t535, %t538
  %t540 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t542 = add i64 %t539, %t541
  %t544 = extractvalue { i64, ptr } %t526, 1
  %t545 = extractvalue { i64, ptr } %t526, 0
  %t546 = add i64 %t542, %t545
  %t547 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t546)
  call void @olang_textcopy(ptr %t547, ptr %t527, i64 %t528)
  %t548 = getelementptr i8, ptr %t547, i64 %t528
  call void @olang_textcopy(ptr %t548, ptr %t530, i64 %t531)
  %t549 = getelementptr i8, ptr %t548, i64 %t531
  call void @olang_textcopy(ptr %t549, ptr %t533, i64 %t534)
  %t550 = getelementptr i8, ptr %t549, i64 %t534
  call void @olang_textcopy(ptr %t550, ptr %t537, i64 %t538)
  %t551 = getelementptr i8, ptr %t550, i64 %t538
  call void @olang_textcopy(ptr %t551, ptr %t540, i64 %t541)
  %t552 = getelementptr i8, ptr %t551, i64 %t541
  call void @olang_textcopy(ptr %t552, ptr %t544, i64 %t545)
  %t553 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t554 = insertvalue { i64, ptr } %t553, ptr %t547, 1
  %t556 = extractvalue { i64, ptr } %t554, 0
  %t557 = extractvalue { i64, ptr } %t554, 1
  %t558 = mul i64 %t556, 1
  %t559 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t558)
  call void @llvm.memcpy.p0.p0.i64(ptr %t559, ptr %t557, i64 %t558, i1 false)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  %t562 = load ptr, ptr %l257, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s28, ptr %t562, { i64, ptr } %t561)
  br label %bb126
bb126:
  store ptr %l11, ptr %l264, !tbaa !29
  %t564 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t566 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s28, { i64, ptr } %t564, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d93, i32 0, i32 1) })
  store i1 %t566, ptr %l266
  br label %bb127
bb127:
  %t567 = load i1, ptr %l266, !tbaa !21
  br i1 %t567, label %bb128, label %bb129
bb128:
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d94, i32 0, i32 1) }, ptr %l267, !tbaa !27
  br label %bb130
bb129:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d95, i32 0, i32 1) }, ptr %l267, !tbaa !27
  br label %bb130
bb130:
  %t568 = load ptr, ptr %l264, !tbaa !29
  %t569 = load { i64, ptr }, ptr %l267, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s28, ptr %t568, { i64, ptr } %t569)
  br label %bb131
bb131:
  %t570 = load ptr, ptr %l0, !tbaa !29
  store ptr %t570, ptr %l268, !tbaa !29
  %t571 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t571, ptr %l269, !tbaa !27
  %t572 = load i64, ptr %l8, !tbaa !24
  store i64 %t572, ptr %l270, !tbaa !24
  %t573 = ptrtoint ptr %s28 to i64
  store i64 %t573, ptr %l271, !tbaa !24
  %t574 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t574, label %bb132, label %bb133
bb132:
  %t576 = call ptr @__olang_region_make(ptr %s28)
  %t577 = ptrtoint ptr %t576 to i64
  store i64 %t577, ptr %l271, !tbaa !24
  br label %bb133
bb133:
  %t578 = load i64, ptr %l271
  %t579 = inttoptr i64 %t578 to ptr
  %t581 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t579, ptr %l11)
  store { i64, ptr } %t581, ptr %l274
  br label %bb134
bb134:
  %t582 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t583 = load i64, ptr %l271
  %t584 = inttoptr i64 %t583 to ptr
  %t585 = extractvalue { i64, ptr } %t582, 0
  %t586 = extractvalue { i64, ptr } %t582, 1
  %t587 = mul i64 %t585, 1
  %t588 = call ptr @__olang_scope_alloc(ptr %t584, i64 %t587)
  call void @llvm.memcpy.p0.p0.i64(ptr %t588, ptr %t586, i64 %t587, i1 false)
  %t589 = insertvalue { i64, ptr } undef, i64 %t585, 0
  %t590 = insertvalue { i64, ptr } %t589, ptr %t588, 1
  %t591 = load ptr, ptr %l268, !tbaa !29
  %t592 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t593 = load i64, ptr %l270, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s28, ptr %s28, ptr %t591, { i64, ptr } %t592, i64 %t593, { i64, ptr } %t590, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s28)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb136:
  store ptr %l11, ptr %l276, !tbaa !29
  %t595 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t595, ptr %l277, !tbaa !27
  %t596 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t596, ptr %l278, !tbaa !27
  %t598 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l12)
  store { i64, ptr } %t598, ptr %l280
  br label %bb137
bb137:
  %t599 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t600 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t601 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t602 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t603 = extractvalue { i64, ptr } %t602, 1
  %t604 = extractvalue { i64, ptr } %t602, 0
  %t605 = add i64 %t601, %t604
  %t606 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t607 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t608 = add i64 %t605, %t607
  %t609 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t610 = extractvalue { i64, ptr } %t609, 1
  %t611 = extractvalue { i64, ptr } %t609, 0
  %t612 = add i64 %t608, %t611
  %t613 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t615 = add i64 %t612, %t614
  %t616 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t617 = extractvalue { i64, ptr } %t616, 1
  %t618 = extractvalue { i64, ptr } %t616, 0
  %t619 = add i64 %t615, %t618
  %t620 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t621 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t622 = add i64 %t619, %t621
  %t624 = extractvalue { i64, ptr } %t599, 1
  %t625 = extractvalue { i64, ptr } %t599, 0
  %t626 = add i64 %t622, %t625
  %t627 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t626)
  call void @olang_textcopy(ptr %t627, ptr %t600, i64 %t601)
  %t628 = getelementptr i8, ptr %t627, i64 %t601
  call void @olang_textcopy(ptr %t628, ptr %t603, i64 %t604)
  %t629 = getelementptr i8, ptr %t628, i64 %t604
  call void @olang_textcopy(ptr %t629, ptr %t606, i64 %t607)
  %t630 = getelementptr i8, ptr %t629, i64 %t607
  call void @olang_textcopy(ptr %t630, ptr %t610, i64 %t611)
  %t631 = getelementptr i8, ptr %t630, i64 %t611
  call void @olang_textcopy(ptr %t631, ptr %t613, i64 %t614)
  %t632 = getelementptr i8, ptr %t631, i64 %t614
  call void @olang_textcopy(ptr %t632, ptr %t617, i64 %t618)
  %t633 = getelementptr i8, ptr %t632, i64 %t618
  call void @olang_textcopy(ptr %t633, ptr %t620, i64 %t621)
  %t634 = getelementptr i8, ptr %t633, i64 %t621
  call void @olang_textcopy(ptr %t634, ptr %t624, i64 %t625)
  %t635 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t636 = insertvalue { i64, ptr } %t635, ptr %t627, 1
  %t638 = extractvalue { i64, ptr } %t636, 0
  %t639 = extractvalue { i64, ptr } %t636, 1
  %t640 = mul i64 %t638, 1
  %t641 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t640)
  call void @llvm.memcpy.p0.p0.i64(ptr %t641, ptr %t639, i64 %t640, i1 false)
  %t642 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr %t641, 1
  %t644 = load ptr, ptr %l276, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t644, { i64, ptr } %t643)
  br label %bb138
bb138:
  %t646 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t647 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t650 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t646, { i64, ptr } %t647)
  store i1 %t650, ptr %l286
  br label %bb139
bb139:
  %t651 = load i1, ptr %l286, !tbaa !21
  br i1 %t651, label %bb140, label %bb141
bb140:
  %t652 = load ptr, ptr %l3, !tbaa !29
  %t653 = load i32, ptr %l5, !tbaa !23
  %t656 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t652, i32 %t653)
  store i32 %t656, ptr %l290
  br label %bb142
bb141:
  store i1 false, ptr %l287, !tbaa !21
  br label %bb144
bb142:
  %t657 = load ptr, ptr %l3, !tbaa !29
  %t658 = load i32, ptr %l2, !tbaa !23
  %t661 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t657, i32 %t658)
  store i32 %t661, ptr %l293
  br label %bb143
bb143:
  %t662 = load i32, ptr %l290, !tbaa !23
  %t663 = load i32, ptr %l293, !tbaa !23
  %t664 = icmp eq i32 %t662, %t663
  store i1 %t664, ptr %l287, !tbaa !21
  br label %bb144
bb144:
  %t666 = load i1, ptr %l287, !tbaa !21
  br i1 %t666, label %bb145, label %bb146
bb145:
  store %olang.scope zeroinitializer, ptr %s31
  %t667 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t668 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t669 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t671 = extractvalue { i64, ptr } %t667, 1
  %t672 = extractvalue { i64, ptr } %t667, 0
  %t673 = add i64 %t669, %t672
  %t674 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t675 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t676 = add i64 %t673, %t675
  %t677 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t676)
  call void @olang_textcopy(ptr %t677, ptr %t668, i64 %t669)
  %t678 = getelementptr i8, ptr %t677, i64 %t669
  call void @olang_textcopy(ptr %t678, ptr %t671, i64 %t672)
  %t679 = getelementptr i8, ptr %t678, i64 %t672
  call void @olang_textcopy(ptr %t679, ptr %t674, i64 %t675)
  %t680 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t681 = insertvalue { i64, ptr } %t680, ptr %t677, 1
  %t683 = extractvalue { i64, ptr } %t681, 0
  %t684 = extractvalue { i64, ptr } %t681, 1
  %t685 = mul i64 %t683, 1
  %t686 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t685)
  call void @llvm.memcpy.p0.p0.i64(ptr %t686, ptr %t684, i64 %t685, i1 false)
  %t687 = insertvalue { i64, ptr } undef, i64 %t683, 0
  %t688 = insertvalue { i64, ptr } %t687, ptr %t686, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s31, ptr %l11, { i64, ptr } %t688)
  br label %bb147
bb146:
  br label %bb152
bb147:
  %t691 = load ptr, ptr %l0, !tbaa !29
  store ptr %t691, ptr %l299, !tbaa !29
  %t692 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t692, ptr %l300, !tbaa !27
  %t693 = load i64, ptr %l8, !tbaa !24
  store i64 %t693, ptr %l301, !tbaa !24
  %t694 = ptrtoint ptr %s31 to i64
  store i64 %t694, ptr %l302, !tbaa !24
  %t695 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t695, label %bb148, label %bb149
bb148:
  %t697 = call ptr @__olang_region_make(ptr %s31)
  %t698 = ptrtoint ptr %t697 to i64
  store i64 %t698, ptr %l302, !tbaa !24
  br label %bb149
bb149:
  %t699 = load i64, ptr %l302
  %t700 = inttoptr i64 %t699 to ptr
  %t702 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t700, ptr %l11)
  store { i64, ptr } %t702, ptr %l305
  br label %bb150
bb150:
  %t703 = load { i64, ptr }, ptr %l305, !tbaa !27
  %t704 = load i64, ptr %l302
  %t705 = inttoptr i64 %t704 to ptr
  %t706 = extractvalue { i64, ptr } %t703, 0
  %t707 = extractvalue { i64, ptr } %t703, 1
  %t708 = mul i64 %t706, 1
  %t709 = call ptr @__olang_scope_alloc(ptr %t705, i64 %t708)
  call void @llvm.memcpy.p0.p0.i64(ptr %t709, ptr %t707, i64 %t708, i1 false)
  %t710 = insertvalue { i64, ptr } undef, i64 %t706, 0
  %t711 = insertvalue { i64, ptr } %t710, ptr %t709, 1
  %t712 = load ptr, ptr %l299, !tbaa !29
  %t713 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t714 = load i64, ptr %l301, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s31, ptr %s31, ptr %t712, { i64, ptr } %t713, i64 %t714, { i64, ptr } %t711, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s31)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb152:
  %t716 = load ptr, ptr %l0, !tbaa !29
  store ptr %t716, ptr %l307, !tbaa !29
  %t717 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t717, ptr %l308
  %t718 = load i32, ptr %l2, !tbaa !23
  store i32 %t718, ptr %l309, !tbaa !23
  %t719 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t719, ptr %l310
  br label %bb153
bb153:
  %t721 = load { i64, [2 x i64] }, ptr %l308
  %t722 = load i32, ptr %l309, !tbaa !23
  %t723 = load %"compiler/source:Span", ptr %l310
  call void @compiler_2fmir_3aFn_2ector(ptr %t720, ptr %v0, { i64, [2 x i64] } %t721, i32 %t722, i64 0, %"compiler/source:Span" %t723)
  call void @llvm.memmove.p0.p0.i64(ptr %l311, ptr %t720, i64 800, i1 false)
  br label %bb154
bb154:
  %t724 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t724, ptr %l311, i64 800, i1 false)
  %t725 = load { i64, [2 x i64] }, ptr %l1
  %t727 = load ptr, ptr %l307, !tbaa !29
  call void @compiler_2femit_3afnEm_2ector(ptr %t726, ptr %v0, ptr %v0, ptr %v0, ptr %t727, ptr %t724, { i64, [2 x i64] } %t725)
  call void @llvm.memmove.p0.p0.i64(ptr %l314, ptr %t726, i64 960, i1 false)
  br label %bb155
bb155:
  %t730 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 960, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t730, ptr %l314, i64 960, i1 false)
  store ptr %t730, ptr %l34, !tbaa !29
  %t732 = load ptr, ptr %l3, !tbaa !29
  %t733 = load i32, ptr %l5, !tbaa !23
  %t736 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t732, i32 %t733)
  store i32 %t736, ptr %l318
  br label %bb156
bb156:
  %t737 = load i32, ptr %l318, !tbaa !23
  store i32 %t737, ptr %l35, !tbaa !23
  %t738 = load ptr, ptr %l3, !tbaa !29
  %t739 = load i32, ptr %l2, !tbaa !23
  %t742 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t738, i32 %t739)
  store i32 %t742, ptr %l321
  br label %bb157
bb157:
  %t743 = load i32, ptr %l321, !tbaa !23
  store i32 %t743, ptr %l36, !tbaa !23
  %t744 = load ptr, ptr %l3, !tbaa !29
  %t745 = load i32, ptr %l5, !tbaa !23
  %t748 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t744, i32 %t745)
  store i32 %t748, ptr %l324
  br label %bb158
bb158:
  %t749 = load i32, ptr %l324, !tbaa !23
  store i32 %t749, ptr %l37, !tbaa !23
  %t750 = load i32, ptr %l37, !tbaa !23
  %t751 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t754 = icmp ne i32 %t750, %t751
  br i1 %t754, label %bb159, label %bb160
bb159:
  %t756 = load i32, ptr %l37, !tbaa !23
  %t757 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t760 = icmp ne i32 %t756, %t757
  store i1 %t760, ptr %l328, !tbaa !21
  br label %bb161
bb160:
  store i1 false, ptr %l328, !tbaa !21
  br label %bb161
bb161:
  %t762 = load i1, ptr %l328, !tbaa !21
  br i1 %t762, label %bb162, label %bb163
bb162:
  %t763 = load ptr, ptr %l3, !tbaa !29
  %t764 = load i32, ptr %l37, !tbaa !23
  %t767 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t763, i32 %t764)
  store i1 %t767, ptr %l335
  br label %bb164
bb163:
  store i1 false, ptr %l332, !tbaa !21
  br label %bb165
bb164:
  %t768 = load i1, ptr %l335, !tbaa !21
  %t769 = xor i1 %t768, true
  store i1 %t769, ptr %l332, !tbaa !21
  br label %bb165
bb165:
  %t771 = load i1, ptr %l332, !tbaa !21
  store i1 %t771, ptr %l38, !tbaa !21
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, ptr %l337, !tbaa !27
  %t772 = load { i64, ptr }, ptr %l337, !tbaa !27
  store { i64, ptr } %t772, ptr %l338, !tbaa !27
  %t773 = getelementptr { i64, ptr }, ptr %l338, i32 0, i32 1
  %t774 = load ptr, ptr %t773, !tbaa !27
  %t775 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l339, ptr %t774, i64 %t775, i1 false)
  %t777 = insertvalue { i64, ptr } undef, i64 1, 0
  %t778 = insertvalue { i64, ptr } %t777, ptr %l339, 1
  store { i64, ptr } %t778, ptr %l39, !tbaa !27
  %t780 = load ptr, ptr %l3, !tbaa !29
  %t781 = load i32, ptr %l35, !tbaa !23
  %t784 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t780, i32 %t781)
  store { i64, ptr } %t784, ptr %l344
  br label %bb166
bb166:
  %t785 = load { i64, ptr }, ptr %l344, !tbaa !27
  %t786 = extractvalue { i64, ptr } %t785, 0
  %t788 = icmp sgt i64 %t786, 0
  br i1 %t788, label %bb167, label %bb168
bb167:
  %t790 = load i1, ptr %l38, !tbaa !21
  %t792 = xor i1 %t790, true
  br i1 %t792, label %bb169, label %bb170
bb168:
  br label %bb176
bb169:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l350, !tbaa !27
  %t794 = load { i64, ptr }, ptr %l350, !tbaa !27
  store { i64, ptr } %t794, ptr %l349, !tbaa !27
  br label %bb172
bb170:
  %t796 = load ptr, ptr %l34, !tbaa !29
  %t797 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t798 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t799 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t801 = extractvalue { i64, ptr } %t797, 1
  %t802 = extractvalue { i64, ptr } %t797, 0
  %t803 = add i64 %t799, %t802
  %t804 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t805 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t806 = add i64 %t803, %t805
  %t807 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t806)
  call void @olang_textcopy(ptr %t807, ptr %t798, i64 %t799)
  %t808 = getelementptr i8, ptr %t807, i64 %t799
  call void @olang_textcopy(ptr %t808, ptr %t801, i64 %t802)
  %t809 = getelementptr i8, ptr %t808, i64 %t802
  call void @olang_textcopy(ptr %t809, ptr %t804, i64 %t805)
  %t810 = insertvalue { i64, ptr } undef, i64 %t806, 0
  %t811 = insertvalue { i64, ptr } %t810, ptr %t807, 1
  %t813 = extractvalue { i64, ptr } %t811, 0
  %t814 = extractvalue { i64, ptr } %t811, 1
  %t815 = mul i64 %t813, 1
  %t816 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t815)
  call void @llvm.memcpy.p0.p0.i64(ptr %t816, ptr %t814, i64 %t815, i1 false)
  %t817 = insertvalue { i64, ptr } undef, i64 %t813, 0
  %t818 = insertvalue { i64, ptr } %t817, ptr %t816, 1
  %t821 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t796, { i64, ptr } %t818)
  store { i64, ptr } %t821, ptr %l356
  br label %bb171
bb171:
  %t822 = load { i64, ptr }, ptr %l356, !tbaa !27
  store { i64, ptr } %t822, ptr %l349, !tbaa !27
  br label %bb172
bb172:
  %t823 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 0
  %t825 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t826 = extractvalue { i64, ptr } %t825, 0
  store i64 %t826, ptr %l358, !tbaa !24
  %t828 = load i64, ptr %l358, !tbaa !24
  %t829 = icmp eq i64 %t824, %t828
  br i1 %t829, label %bb173, label %bb174
bb173:
  %t831 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t832 = load ptr, ptr %t831, !tbaa !27
  %t833 = getelementptr { i64, ptr }, ptr %l349, i32 0, i32 1
  %t834 = load ptr, ptr %t833, !tbaa !27
  %t835 = load i64, ptr %l358, !tbaa !24
  %t836 = mul i64 %t835, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t832, ptr %t834, i64 %t836, i1 false)
  br label %bb175
bb174:
  %t837 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t838 = extractvalue { i64, ptr } %t837, 0
  store i64 %t838, ptr %l360, !tbaa !24
  %t839 = load i64, ptr %l360, !tbaa !24
  %t840 = mul i64 %t839, 1
  %t841 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t840)
  %t842 = insertvalue { i64, ptr } undef, i64 %t839, 0
  %t843 = insertvalue { i64, ptr } %t842, ptr %t841, 1
  store { i64, ptr } %t843, ptr %l361, !tbaa !27
  %t844 = getelementptr { i64, ptr }, ptr %l361, i32 0, i32 1
  %t845 = load ptr, ptr %t844, !tbaa !27
  %t846 = getelementptr { i64, ptr }, ptr %l349, i32 0, i32 1
  %t847 = load ptr, ptr %t846, !tbaa !27
  %t848 = load i64, ptr %l360, !tbaa !24
  %t849 = mul i64 %t848, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t845, ptr %t847, i64 %t849, i1 false)
  %t850 = load { i64, ptr }, ptr %l361, !tbaa !27
  store { i64, ptr } %t850, ptr %l39, !tbaa !27
  br label %bb175
bb175:
  br label %bb176
bb176:
  %t851 = load ptr, ptr %l3, !tbaa !29
  %t852 = load i32, ptr %l35, !tbaa !23
  %t855 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t851, i32 %t852)
  store { i64, ptr } %t855, ptr %l364
  br label %bb177
bb177:
  %t856 = load { i64, ptr }, ptr %l364, !tbaa !27
  %t857 = extractvalue { i64, ptr } %t856, 0
  %t859 = icmp sgt i64 %t857, 0
  br i1 %t859, label %bb178, label %bb179
bb178:
  %t861 = load ptr, ptr %l34, !tbaa !29
  %t862 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t863 = load i32, ptr %l35, !tbaa !23
  %t864 = load i32, ptr %l36, !tbaa !23
  %t869 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %s0, ptr %s0, ptr %t861, { i64, ptr } %t862, i32 %t863, i32 %t864)
  store { i64, ptr } %t869, ptr %l372
  br label %bb180
bb179:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l367, !tbaa !27
  br label %bb181
bb180:
  %t870 = load { i64, ptr }, ptr %l372, !tbaa !27
  %t871 = extractvalue { i64, ptr } %t870, 0
  %t872 = extractvalue { i64, ptr } %t870, 1
  %t873 = mul i64 %t871, 1
  %t874 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t873)
  call void @llvm.memcpy.p0.p0.i64(ptr %t874, ptr %t872, i64 %t873, i1 false)
  %t875 = insertvalue { i64, ptr } undef, i64 %t871, 0
  %t876 = insertvalue { i64, ptr } %t875, ptr %t874, 1
  store { i64, ptr } %t876, ptr %l367, !tbaa !27
  br label %bb181
bb181:
  %t878 = load { i64, ptr }, ptr %l367, !tbaa !27
  store { i64, ptr } %t878, ptr %l40, !tbaa !27
  %t879 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t881 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t879, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) })
  store i1 %t881, ptr %l375
  br label %bb182
bb182:
  %t882 = load i1, ptr %l375, !tbaa !21
  br i1 %t882, label %bb183, label %bb184
bb183:
  store %olang.scope zeroinitializer, ptr %s35
  %t883 = load ptr, ptr %l34, !tbaa !29
  %t884 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t885 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t886 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t888 = extractvalue { i64, ptr } %t884, 1
  %t889 = extractvalue { i64, ptr } %t884, 0
  %t890 = add i64 %t886, %t889
  %t891 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t890)
  call void @olang_textcopy(ptr %t891, ptr %t885, i64 %t886)
  %t892 = getelementptr i8, ptr %t891, i64 %t886
  call void @olang_textcopy(ptr %t892, ptr %t888, i64 %t889)
  %t893 = insertvalue { i64, ptr } undef, i64 %t890, 0
  %t894 = insertvalue { i64, ptr } %t893, ptr %t891, 1
  %t896 = extractvalue { i64, ptr } %t894, 0
  %t897 = extractvalue { i64, ptr } %t894, 1
  %t898 = mul i64 %t896, 1
  %t899 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t898)
  call void @llvm.memcpy.p0.p0.i64(ptr %t899, ptr %t897, i64 %t898, i1 false)
  %t900 = insertvalue { i64, ptr } undef, i64 %t896, 0
  %t901 = insertvalue { i64, ptr } %t900, ptr %t899, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s35, ptr %t883, { i64, ptr } %t901)
  br label %bb185
bb184:
  store %olang.scope zeroinitializer, ptr %s37
  %t904 = load ptr, ptr %l3, !tbaa !29
  %t905 = load i32, ptr %l36, !tbaa !23
  %t908 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s37, ptr %t904, i32 %t905)
  store { i64, ptr } %t908, ptr %l382
  br label %bb186
bb185:
  call void @__olang_scope_close(ptr %s35)
  br label %bb206
bb186:
  %t909 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t910 = extractvalue { i64, ptr } %t909, 0
  %t912 = icmp eq i64 %t910, 0
  br i1 %t912, label %bb187, label %bb188
bb187:
  store %olang.scope zeroinitializer, ptr %s38
  %t914 = load ptr, ptr %l34, !tbaa !29
  store ptr %t914, ptr %l385, !tbaa !29
  %t915 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t915, ptr %l386, !tbaa !27
  %t916 = load ptr, ptr %l3, !tbaa !29
  %t917 = load i32, ptr %l35, !tbaa !23
  %t920 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s38, ptr %t916, i32 %t917)
  store { i64, ptr } %t920, ptr %l389
  br label %bb189
bb188:
  store %olang.scope zeroinitializer, ptr %s41
  %t921 = load ptr, ptr %l3, !tbaa !29
  %t922 = load i32, ptr %l35, !tbaa !23
  %t925 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s41, ptr %t921, i32 %t922)
  store { i64, ptr } %t925, ptr %l403
  br label %bb195
bb189:
  %t926 = load { i64, ptr }, ptr %l389, !tbaa !27
  %t927 = extractvalue { i64, ptr } %t926, 0
  %t929 = icmp sgt i64 %t927, 0
  br i1 %t929, label %bb190, label %bb191
bb190:
  %t931 = load ptr, ptr %l34, !tbaa !29
  %t932 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t933 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t934 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t936 = extractvalue { i64, ptr } %t932, 1
  %t937 = extractvalue { i64, ptr } %t932, 0
  %t938 = add i64 %t934, %t937
  %t939 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t940 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t941 = add i64 %t938, %t940
  %t942 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t941)
  call void @olang_textcopy(ptr %t942, ptr %t933, i64 %t934)
  %t943 = getelementptr i8, ptr %t942, i64 %t934
  call void @olang_textcopy(ptr %t943, ptr %t936, i64 %t937)
  %t944 = getelementptr i8, ptr %t943, i64 %t937
  call void @olang_textcopy(ptr %t944, ptr %t939, i64 %t940)
  %t945 = insertvalue { i64, ptr } undef, i64 %t941, 0
  %t946 = insertvalue { i64, ptr } %t945, ptr %t942, 1
  %t948 = extractvalue { i64, ptr } %t946, 0
  %t949 = extractvalue { i64, ptr } %t946, 1
  %t950 = mul i64 %t948, 1
  %t951 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t950)
  call void @llvm.memcpy.p0.p0.i64(ptr %t951, ptr %t949, i64 %t950, i1 false)
  %t952 = insertvalue { i64, ptr } undef, i64 %t948, 0
  %t953 = insertvalue { i64, ptr } %t952, ptr %t951, 1
  %t956 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s38, ptr %s38, ptr %t931, { i64, ptr } %t953)
  store { i64, ptr } %t956, ptr %l397
  br label %bb192
bb191:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l392, !tbaa !27
  br label %bb193
bb192:
  %t957 = load { i64, ptr }, ptr %l397, !tbaa !27
  %t958 = extractvalue { i64, ptr } %t957, 0
  %t959 = extractvalue { i64, ptr } %t957, 1
  %t960 = mul i64 %t958, 1
  %t961 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t960)
  call void @llvm.memcpy.p0.p0.i64(ptr %t961, ptr %t959, i64 %t960, i1 false)
  %t962 = insertvalue { i64, ptr } undef, i64 %t958, 0
  %t963 = insertvalue { i64, ptr } %t962, ptr %t961, 1
  store { i64, ptr } %t963, ptr %l392, !tbaa !27
  br label %bb193
bb193:
  %t965 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t966 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t967 = load { i64, ptr }, ptr %l386, !tbaa !27
  %t968 = extractvalue { i64, ptr } %t967, 1
  %t969 = extractvalue { i64, ptr } %t967, 0
  %t970 = add i64 %t966, %t969
  %t971 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t972 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t973 = add i64 %t970, %t972
  %t974 = load { i64, ptr }, ptr %l392, !tbaa !27
  %t975 = extractvalue { i64, ptr } %t974, 1
  %t976 = extractvalue { i64, ptr } %t974, 0
  %t977 = add i64 %t973, %t976
  %t978 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t977)
  call void @olang_textcopy(ptr %t978, ptr %t965, i64 %t966)
  %t979 = getelementptr i8, ptr %t978, i64 %t966
  call void @olang_textcopy(ptr %t979, ptr %t968, i64 %t969)
  %t980 = getelementptr i8, ptr %t979, i64 %t969
  call void @olang_textcopy(ptr %t980, ptr %t971, i64 %t972)
  %t981 = getelementptr i8, ptr %t980, i64 %t972
  call void @olang_textcopy(ptr %t981, ptr %t975, i64 %t976)
  %t982 = insertvalue { i64, ptr } undef, i64 %t977, 0
  %t983 = insertvalue { i64, ptr } %t982, ptr %t978, 1
  %t985 = extractvalue { i64, ptr } %t983, 0
  %t986 = extractvalue { i64, ptr } %t983, 1
  %t987 = mul i64 %t985, 1
  %t988 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t987)
  call void @llvm.memcpy.p0.p0.i64(ptr %t988, ptr %t986, i64 %t987, i1 false)
  %t989 = insertvalue { i64, ptr } undef, i64 %t985, 0
  %t990 = insertvalue { i64, ptr } %t989, ptr %t988, 1
  %t991 = load ptr, ptr %l385, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s38, ptr %t991, { i64, ptr } %t990)
  br label %bb194
bb194:
  call void @__olang_scope_close(ptr %s38)
  br label %bb205
bb195:
  %t993 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t994 = extractvalue { i64, ptr } %t993, 0
  %t996 = icmp sgt i64 %t994, 0
  br i1 %t996, label %bb196, label %bb197
bb196:
  %t998 = load ptr, ptr %l34, !tbaa !29
  %t999 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1000 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t1001 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t1003 = extractvalue { i64, ptr } %t999, 1
  %t1004 = extractvalue { i64, ptr } %t999, 0
  %t1005 = add i64 %t1001, %t1004
  %t1006 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t1007 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t1008 = add i64 %t1005, %t1007
  %t1009 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1008)
  call void @olang_textcopy(ptr %t1009, ptr %t1000, i64 %t1001)
  %t1010 = getelementptr i8, ptr %t1009, i64 %t1001
  call void @olang_textcopy(ptr %t1010, ptr %t1003, i64 %t1004)
  %t1011 = getelementptr i8, ptr %t1010, i64 %t1004
  call void @olang_textcopy(ptr %t1011, ptr %t1006, i64 %t1007)
  %t1012 = insertvalue { i64, ptr } undef, i64 %t1008, 0
  %t1013 = insertvalue { i64, ptr } %t1012, ptr %t1009, 1
  %t1015 = extractvalue { i64, ptr } %t1013, 0
  %t1016 = extractvalue { i64, ptr } %t1013, 1
  %t1017 = mul i64 %t1015, 1
  %t1018 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1017)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1018, ptr %t1016, i64 %t1017, i1 false)
  %t1019 = insertvalue { i64, ptr } undef, i64 %t1015, 0
  %t1020 = insertvalue { i64, ptr } %t1019, ptr %t1018, 1
  %t1023 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s41, ptr %s41, ptr %t998, { i64, ptr } %t1020)
  store { i64, ptr } %t1023, ptr %l411
  br label %bb198
bb197:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l406, !tbaa !27
  br label %bb199
bb198:
  %t1024 = load { i64, ptr }, ptr %l411, !tbaa !27
  %t1025 = extractvalue { i64, ptr } %t1024, 0
  %t1026 = extractvalue { i64, ptr } %t1024, 1
  %t1027 = mul i64 %t1025, 1
  %t1028 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1027)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1028, ptr %t1026, i64 %t1027, i1 false)
  %t1029 = insertvalue { i64, ptr } undef, i64 %t1025, 0
  %t1030 = insertvalue { i64, ptr } %t1029, ptr %t1028, 1
  store { i64, ptr } %t1030, ptr %l406, !tbaa !27
  br label %bb199
bb199:
  %t1032 = load { i64, ptr }, ptr %l406, !tbaa !27
  store { i64, ptr } %t1032, ptr %l41, !tbaa !27
  %t1033 = load ptr, ptr %l34, !tbaa !29
  %t1034 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t1035 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t1036 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t1037 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t1039 = extractvalue { i64, ptr } %t1034, 1
  %t1040 = extractvalue { i64, ptr } %t1034, 0
  %t1041 = add i64 %t1037, %t1040
  %t1042 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t1043 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t1044 = add i64 %t1041, %t1043
  %t1046 = extractvalue { i64, ptr } %t1035, 1
  %t1047 = extractvalue { i64, ptr } %t1035, 0
  %t1048 = add i64 %t1044, %t1047
  %t1049 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t1050 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t1051 = add i64 %t1048, %t1050
  %t1052 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1051)
  call void @olang_textcopy(ptr %t1052, ptr %t1036, i64 %t1037)
  %t1053 = getelementptr i8, ptr %t1052, i64 %t1037
  call void @olang_textcopy(ptr %t1053, ptr %t1039, i64 %t1040)
  %t1054 = getelementptr i8, ptr %t1053, i64 %t1040
  call void @olang_textcopy(ptr %t1054, ptr %t1042, i64 %t1043)
  %t1055 = getelementptr i8, ptr %t1054, i64 %t1043
  call void @olang_textcopy(ptr %t1055, ptr %t1046, i64 %t1047)
  %t1056 = getelementptr i8, ptr %t1055, i64 %t1047
  call void @olang_textcopy(ptr %t1056, ptr %t1049, i64 %t1050)
  %t1057 = insertvalue { i64, ptr } undef, i64 %t1051, 0
  %t1058 = insertvalue { i64, ptr } %t1057, ptr %t1052, 1
  %t1060 = extractvalue { i64, ptr } %t1058, 0
  %t1061 = extractvalue { i64, ptr } %t1058, 1
  %t1062 = mul i64 %t1060, 1
  %t1063 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1062)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1063, ptr %t1061, i64 %t1062, i1 false)
  %t1064 = insertvalue { i64, ptr } undef, i64 %t1060, 0
  %t1065 = insertvalue { i64, ptr } %t1064, ptr %t1063, 1
  %t1068 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s41, ptr %s41, ptr %t1033, { i64, ptr } %t1065)
  store { i64, ptr } %t1068, ptr %l418
  br label %bb200
bb200:
  %t1069 = load { i64, ptr }, ptr %l418, !tbaa !27
  %t1070 = load ptr, ptr %l34, !tbaa !29
  store ptr %t1070, ptr %l419, !tbaa !29
  %t1071 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1071, ptr %l420, !tbaa !27
  %t1072 = load ptr, ptr %l34, !tbaa !29
  store ptr %t1072, ptr %l421, !tbaa !29
  %t1073 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t1073, ptr %l422, !tbaa !27
  store { i64, ptr } %t1069, ptr %l423, !tbaa !27
  %t1075 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1075, ptr %l424, !tbaa !29
  %t1076 = load ptr, ptr %l3, !tbaa !29
  %t1077 = load i32, ptr %l2, !tbaa !23
  %t1080 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1076, i32 %t1077)
  store i32 %t1080, ptr %l427
  br label %bb201
bb201:
  %t1081 = load ptr, ptr %l424, !tbaa !29
  %t1082 = load i32, ptr %l427, !tbaa !23
  %t1083 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s41, ptr %t1081, i32 %t1082)
  store { i64, ptr } %t1083, ptr %l428
  br label %bb202
bb202:
  %t1084 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t1085 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t1086 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t1087 = load { i64, ptr }, ptr %l422, !tbaa !27
  %t1088 = extractvalue { i64, ptr } %t1087, 1
  %t1089 = extractvalue { i64, ptr } %t1087, 0
  %t1090 = add i64 %t1086, %t1089
  %t1091 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t1092 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t1093 = add i64 %t1090, %t1092
  %t1094 = load { i64, ptr }, ptr %l423, !tbaa !27
  %t1095 = extractvalue { i64, ptr } %t1094, 1
  %t1096 = extractvalue { i64, ptr } %t1094, 0
  %t1097 = add i64 %t1093, %t1096
  %t1098 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t1099 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t1100 = add i64 %t1097, %t1099
  %t1101 = load { i64, ptr }, ptr %l428, !tbaa !27
  %t1102 = extractvalue { i64, ptr } %t1101, 1
  %t1103 = extractvalue { i64, ptr } %t1101, 0
  %t1104 = add i64 %t1100, %t1103
  %t1105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t1106 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t1107 = add i64 %t1104, %t1106
  %t1109 = extractvalue { i64, ptr } %t1084, 1
  %t1110 = extractvalue { i64, ptr } %t1084, 0
  %t1111 = add i64 %t1107, %t1110
  %t1112 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t1113 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t1114 = add i64 %t1111, %t1113
  %t1115 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1114)
  call void @olang_textcopy(ptr %t1115, ptr %t1085, i64 %t1086)
  %t1116 = getelementptr i8, ptr %t1115, i64 %t1086
  call void @olang_textcopy(ptr %t1116, ptr %t1088, i64 %t1089)
  %t1117 = getelementptr i8, ptr %t1116, i64 %t1089
  call void @olang_textcopy(ptr %t1117, ptr %t1091, i64 %t1092)
  %t1118 = getelementptr i8, ptr %t1117, i64 %t1092
  call void @olang_textcopy(ptr %t1118, ptr %t1095, i64 %t1096)
  %t1119 = getelementptr i8, ptr %t1118, i64 %t1096
  call void @olang_textcopy(ptr %t1119, ptr %t1098, i64 %t1099)
  %t1120 = getelementptr i8, ptr %t1119, i64 %t1099
  call void @olang_textcopy(ptr %t1120, ptr %t1102, i64 %t1103)
  %t1121 = getelementptr i8, ptr %t1120, i64 %t1103
  call void @olang_textcopy(ptr %t1121, ptr %t1105, i64 %t1106)
  %t1122 = getelementptr i8, ptr %t1121, i64 %t1106
  call void @olang_textcopy(ptr %t1122, ptr %t1109, i64 %t1110)
  %t1123 = getelementptr i8, ptr %t1122, i64 %t1110
  call void @olang_textcopy(ptr %t1123, ptr %t1112, i64 %t1113)
  %t1124 = insertvalue { i64, ptr } undef, i64 %t1114, 0
  %t1125 = insertvalue { i64, ptr } %t1124, ptr %t1115, 1
  %t1127 = extractvalue { i64, ptr } %t1125, 0
  %t1128 = extractvalue { i64, ptr } %t1125, 1
  %t1129 = mul i64 %t1127, 1
  %t1130 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1130, ptr %t1128, i64 %t1129, i1 false)
  %t1131 = insertvalue { i64, ptr } undef, i64 %t1127, 0
  %t1132 = insertvalue { i64, ptr } %t1131, ptr %t1130, 1
  %t1133 = load ptr, ptr %l421, !tbaa !29
  %t1135 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s41, ptr %s41, ptr %t1133, { i64, ptr } %t1132)
  store { i64, ptr } %t1135, ptr %l432
  br label %bb203
bb203:
  %t1136 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t1137 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t1138 = load { i64, ptr }, ptr %l420, !tbaa !27
  %t1139 = extractvalue { i64, ptr } %t1138, 1
  %t1140 = extractvalue { i64, ptr } %t1138, 0
  %t1141 = add i64 %t1137, %t1140
  %t1142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t1143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t1144 = add i64 %t1141, %t1143
  %t1145 = load { i64, ptr }, ptr %l432, !tbaa !27
  %t1146 = extractvalue { i64, ptr } %t1145, 1
  %t1147 = extractvalue { i64, ptr } %t1145, 0
  %t1148 = add i64 %t1144, %t1147
  %t1149 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1148)
  call void @olang_textcopy(ptr %t1149, ptr %t1136, i64 %t1137)
  %t1150 = getelementptr i8, ptr %t1149, i64 %t1137
  call void @olang_textcopy(ptr %t1150, ptr %t1139, i64 %t1140)
  %t1151 = getelementptr i8, ptr %t1150, i64 %t1140
  call void @olang_textcopy(ptr %t1151, ptr %t1142, i64 %t1143)
  %t1152 = getelementptr i8, ptr %t1151, i64 %t1143
  call void @olang_textcopy(ptr %t1152, ptr %t1146, i64 %t1147)
  %t1153 = insertvalue { i64, ptr } undef, i64 %t1148, 0
  %t1154 = insertvalue { i64, ptr } %t1153, ptr %t1149, 1
  %t1156 = extractvalue { i64, ptr } %t1154, 0
  %t1157 = extractvalue { i64, ptr } %t1154, 1
  %t1158 = mul i64 %t1156, 1
  %t1159 = call ptr @__olang_scope_alloc(ptr %s41, i64 %t1158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1159, ptr %t1157, i64 %t1158, i1 false)
  %t1160 = insertvalue { i64, ptr } undef, i64 %t1156, 0
  %t1161 = insertvalue { i64, ptr } %t1160, ptr %t1159, 1
  %t1162 = load ptr, ptr %l419, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s41, ptr %t1162, { i64, ptr } %t1161)
  br label %bb204
bb204:
  call void @__olang_scope_close(ptr %s41)
  br label %bb205
bb205:
  call void @__olang_scope_close(ptr %s37)
  br label %bb206
bb206:
  store ptr %l11, ptr %l435, !tbaa !29
  %t1164 = load ptr, ptr %l34, !tbaa !29
  %t1166 = getelementptr %"compiler/emit:fnEm", ptr %t1164, i32 0, i32 5
  %t1168 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t1166)
  store { i64, ptr } %t1168, ptr %l438
  br label %bb207
bb207:
  %t1169 = load { i64, ptr }, ptr %l438, !tbaa !27
  %t1170 = extractvalue { i64, ptr } %t1169, 0
  %t1171 = extractvalue { i64, ptr } %t1169, 1
  %t1172 = mul i64 %t1170, 1
  %t1173 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1172)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1173, ptr %t1171, i64 %t1172, i1 false)
  %t1174 = insertvalue { i64, ptr } undef, i64 %t1170, 0
  %t1175 = insertvalue { i64, ptr } %t1174, ptr %t1173, 1
  %t1176 = load ptr, ptr %l435, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1176, { i64, ptr } %t1175)
  br label %bb208
bb208:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb209
bb209:
  %t1179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1179, ptr %l441, !tbaa !29
  %t1180 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t1180, ptr %l442, !tbaa !27
  %t1181 = load i64, ptr %l8, !tbaa !24
  store i64 %t1181, ptr %l443, !tbaa !24
  %t1182 = ptrtoint ptr %s0 to i64
  store i64 %t1182, ptr %l444, !tbaa !24
  %t1183 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t1183, label %bb210, label %bb211
bb210:
  %t1185 = call ptr @__olang_region_make(ptr %s0)
  %t1186 = ptrtoint ptr %t1185 to i64
  store i64 %t1186, ptr %l444, !tbaa !24
  br label %bb211
bb211:
  %t1187 = load i64, ptr %l444
  %t1188 = inttoptr i64 %t1187 to ptr
  %t1190 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t1188, ptr %l11)
  store { i64, ptr } %t1190, ptr %l447
  br label %bb212
bb212:
  %t1191 = load { i64, ptr }, ptr %l447, !tbaa !27
  %t1192 = load i64, ptr %l444
  %t1193 = inttoptr i64 %t1192 to ptr
  %t1194 = extractvalue { i64, ptr } %t1191, 0
  %t1195 = extractvalue { i64, ptr } %t1191, 1
  %t1196 = mul i64 %t1194, 1
  %t1197 = call ptr @__olang_scope_alloc(ptr %t1193, i64 %t1196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1197, ptr %t1195, i64 %t1196, i1 false)
  %t1198 = insertvalue { i64, ptr } undef, i64 %t1194, 0
  %t1199 = insertvalue { i64, ptr } %t1198, ptr %t1197, 1
  %t1200 = load ptr, ptr %l441, !tbaa !29
  %t1201 = load { i64, ptr }, ptr %l442, !tbaa !27
  %t1202 = load i64, ptr %l443, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t1200, { i64, ptr } %t1201, i64 %t1202, { i64, ptr } %t1199, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  br label %bb213
bb213:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d127, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t11, ptr %l11, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l12, !tbaa !24
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l12, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t25, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t26 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t32 = call i64 @__olang_fmt_i64(ptr null, i64 %t28)
  %t33 = add i64 %t30, %t32
  %t34 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t29, i64 %t30)
  %t38 = getelementptr i8, ptr %t37, i64 %t30
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t28)
  %t40 = getelementptr i8, ptr %t38, i64 %t32
  call void @olang_textcopy(ptr %t40, ptr %t34, i64 %t35)
  %t41 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t37, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t52 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s0, ptr %s0, ptr %t27, { i64, ptr } %t49, i64 1)
  store { i64, ptr } %t52, ptr %l18
  br label %bb5
bb5:
  %t53 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t53, ptr %l4, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = mul i64 8, %t55
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t57)
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t58, i64 %t59)
  %t64 = getelementptr i8, ptr %t63, i64 %t59
  %t65 = call i64 @__olang_fmt_i64(ptr %t64, i64 %t57)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %v1, ptr %s0, ptr %s0, ptr %t54, { i64, ptr } %t74, { i64, ptr } %a1, { i64, ptr } %t76, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb6
bb6:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i64, ptr %l3, !tbaa !24
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t86 = call i64 @__olang_fmt_i64(ptr null, i64 %t82)
  %t87 = add i64 %t84, %t86
  %t88 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t89 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t90 = add i64 %t87, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  %t93 = call i64 @__olang_fmt_i64(ptr %t92, i64 %t82)
  %t94 = getelementptr i8, ptr %t92, i64 %t86
  call void @olang_textcopy(ptr %t94, ptr %t88, i64 %t89)
  %t95 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t91, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = extractvalue { i64, ptr } %t96, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t108 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v2, ptr %s0, ptr %v2, ptr %v2, ptr %t81, { i64, ptr } %t103, { i64, ptr } %t104, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store { i64, ptr } %t108, ptr %l31
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t109 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t109, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %lp5 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d135, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebf16Bits(ptr %v0, ptr %v1, ptr %v4, ptr %t5, { i64, ptr } %t6, i1 true)
  store { i64, ptr } %t9, ptr %l10
  br label %bb4
bb3:
  br label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t10, ptr %rv
  br label %ret
bb5:
  %t11 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v3, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) })
  store i1 %t13, ptr %l12
  br label %bb6
bb6:
  %t14 = load i1, ptr %l12, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v1, ptr %s0, ptr %t15, { i64, ptr } %t16)
  store { i64, ptr } %t19, ptr %l16
  br label %bb9
bb8:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t22, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l13, !tbaa !27
  br label %bb10
bb9:
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t28, ptr %l13, !tbaa !27
  br label %bb10
bb10:
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t31, 1
  %t38 = extractvalue { i64, ptr } %t31, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t44 = extractvalue { i64, ptr } %t29, 1
  %t45 = extractvalue { i64, ptr } %t29, 0
  %t46 = add i64 %t42, %t45
  %t47 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = extractvalue { i64, ptr } %t33, 1
  %t52 = extractvalue { i64, ptr } %t33, 0
  %t53 = add i64 %t49, %t52
  %t54 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t53)
  call void @olang_textcopy(ptr %t54, ptr %t34, i64 %t35)
  %t55 = getelementptr i8, ptr %t54, i64 %t35
  call void @olang_textcopy(ptr %t55, ptr %t37, i64 %t38)
  %t56 = getelementptr i8, ptr %t55, i64 %t38
  call void @olang_textcopy(ptr %t56, ptr %t40, i64 %t41)
  %t57 = getelementptr i8, ptr %t56, i64 %t41
  call void @olang_textcopy(ptr %t57, ptr %t44, i64 %t45)
  %t58 = getelementptr i8, ptr %t57, i64 %t45
  call void @olang_textcopy(ptr %t58, ptr %t47, i64 %t48)
  %t59 = getelementptr i8, ptr %t58, i64 %t48
  call void @olang_textcopy(ptr %t59, ptr %t51, i64 %t52)
  %t60 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t54, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = extractvalue { i64, ptr } %t61, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t71 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v4, ptr %v4, ptr %t30, { i64, ptr } %t68)
  store { i64, ptr } %t71, ptr %l25
  br label %bb11
bb11:
  %t72 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 16, i64 8)
  store ptr %t72, ptr %lp5
  %t73 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t74 = load ptr, ptr %lp5
  store { i64, ptr } %t73, ptr %t74, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t75, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d140, i32 0, i32 1) })
  store i1 %t77, ptr %l27
  br label %bb12
bb12:
  %t78 = load i1, ptr %l27, !tbaa !21
  br i1 %t78, label %bb13, label %bb14
bb13:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %lp5
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v4, ptr %v4, ptr %t79, { i64, ptr } %t81)
  store { i64, ptr } %t84, ptr %l31
  br label %bb15
bb14:
  %t85 = load ptr, ptr %lp5
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l28, !tbaa !27
  br label %bb16
bb15:
  %t88 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t88, ptr %l28, !tbaa !27
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstItem(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %lp10 = alloca ptr
  %l11 = alloca { { i64, ptr }, i64 }
  %lp12 = alloca ptr
  %l13 = alloca i64
  %l22 = alloca { i64, [1 x i64] }
  %l30 = alloca { i64, ptr }
  %l33 = alloca i32
  %l36 = alloca i1
  %l37 = alloca i32
  %l40 = alloca i32
  %l44 = alloca i32
  %l48 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca i1
  %l62 = alloca i1
  %l65 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca { { i64, ptr }, { i64, ptr }, i64 }
  %l73 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca { { i64, ptr }, i64 }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca i1
  %l93 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/mir:Fn", ptr %t12, i32 0, i32 19
  %t15 = load i32, ptr %l2, !tbaa !23
  %t17 = sext i32 %t15 to i64
  %t20 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t14, i64 %t17)
  store { i64, [1 x i64] } %t20, ptr %l22
  br label %bb1
bb1:
  %t21 = load { i64, [1 x i64] }, ptr %l22
  store { i64, [1 x i64] } %t21, ptr %l4
  %t22 = load { i64, [1 x i64] }, ptr %l4
  %t24 = extractvalue { i64, [1 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 0
  br i1 %t25, label %bb2, label %bb3
bb2:
  %t27 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  store i64 %t29, ptr %l5, !tbaa !24
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/emit:fnEm", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load i32, ptr %l1, !tbaa !23
  %t36 = load i64, ptr %l5, !tbaa !24
  %t40 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %t34, i32 %t35, i64 %t36)
  store { i64, ptr } %t40, ptr %l30
  br label %bb5
bb5:
  %t41 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t41, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb42
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t42, i32 %t43)
  store i32 %t46, ptr %l33
  br label %bb10
bb10:
  %t47 = load i32, ptr %l33, !tbaa !23
  store i32 %t47, ptr %l6, !tbaa !23
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t49 = load i32, ptr %l6, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t48, i32 %t49)
  store i1 %t52, ptr %l36
  br label %bb11
bb11:
  %t53 = load i1, ptr %l36, !tbaa !21
  br i1 %t53, label %bb12, label %bb13
bb12:
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t55 = load i32, ptr %l6, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l40
  br label %bb14
bb13:
  %t59 = load i32, ptr %l6, !tbaa !23
  store i32 %t59, ptr %l37, !tbaa !23
  br label %bb15
bb14:
  %t61 = load i32, ptr %l40, !tbaa !23
  store i32 %t61, ptr %l37, !tbaa !23
  br label %bb15
bb15:
  %t62 = load i32, ptr %l37, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t63, i32 %t62)
  store i32 %t67, ptr %l44
  br label %bb16
bb16:
  %t68 = load i32, ptr %l44, !tbaa !23
  store i32 %t68, ptr %l8, !tbaa !23
  %t69 = load i32, ptr %l8, !tbaa !23
  %t70 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t73 = icmp eq i32 %t69, %t70
  br i1 %t73, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l48, !tbaa !29
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t77 = load i32, ptr %l1, !tbaa !23
  %t79 = inttoptr i64 0 to ptr
  %t82 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s3, ptr %t79, ptr %t76, i32 %t77)
  store { i64, ptr } %t82, ptr %l52
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t83 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t85 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = add i64 %t84, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t83, i64 %t84)
  %t90 = getelementptr i8, ptr %t89, i64 %t84
  call void @olang_textcopy(ptr %t90, ptr %t86, i64 %t87)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t89, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %t100, { i64, ptr } %t99)
  br label %bb20
bb20:
  store { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d142, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t102, ptr %l56, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l57, !tbaa !24
  %t105 = load i64, ptr %l57, !tbaa !24
  %t106 = mul i64 %t105, 1
  %t107 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l58, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = load i64, ptr %l57, !tbaa !24
  %t115 = mul i64 %t114, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t111, ptr %t113, i64 %t115, i1 false)
  %t116 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t116, ptr %l56, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  %t117 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
bb21:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i32, ptr %l8, !tbaa !23
  %t122 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t118, i32 %t119)
  store i1 %t122, ptr %l61
  br label %bb22
bb22:
  %t123 = load i1, ptr %l61, !tbaa !21
  br i1 %t123, label %bb23, label %bb24
bb23:
  %t124 = load ptr, ptr %l3, !tbaa !29
  %t125 = load i32, ptr %l6, !tbaa !23
  %t128 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t124, i32 %t125)
  store i1 %t128, ptr %l65
  br label %bb25
bb24:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb26
bb25:
  %t129 = load i1, ptr %l65, !tbaa !21
  %t130 = xor i1 %t129, true
  store i1 %t130, ptr %l62, !tbaa !21
  br label %bb26
bb26:
  %t132 = load i1, ptr %l62, !tbaa !21
  br i1 %t132, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s5
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l67, !tbaa !29
  %t134 = load ptr, ptr %l3, !tbaa !29
  %t135 = load i32, ptr %l8, !tbaa !23
  %t138 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t134, i32 %t135)
  store i32 %t138, ptr %l70
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t139 = load i32, ptr %l2, !tbaa !23
  %t140 = load ptr, ptr %l67, !tbaa !29
  %t141 = load i32, ptr %l70, !tbaa !23
  %t143 = call { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %s5, ptr %t140, i32 %t141, i32 %t139)
  store { { i64, ptr }, { i64, ptr }, i64 } %t143, ptr %l72
  br label %bb30
bb30:
  %t144 = load { { i64, ptr }, { i64, ptr }, i64 }, ptr %l72
  store { { i64, ptr }, { i64, ptr }, i64 } %t144, ptr %l9
  %t145 = getelementptr { { i64, ptr }, { i64, ptr }, i64 }, ptr %l9, i32 0, i32 1
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l73, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 0
  store i64 %t148, ptr %l74, !tbaa !24
  %t149 = load i64, ptr %l74, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l75, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = load i64, ptr %l74, !tbaa !24
  %t159 = mul i64 %t158, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t155, ptr %t157, i64 %t159, i1 false)
  %t160 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t160, ptr %lp10
  %t161 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t162 = load ptr, ptr %lp10
  store { i64, ptr } %t161, ptr %t162, !tbaa !27
  %t163 = load ptr, ptr %lp10
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t164, ptr %rv
  br label %ret
bb31:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l77, !tbaa !29
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t168 = load i32, ptr %l8, !tbaa !23
  %t171 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t167, i32 %t168)
  store i32 %t171, ptr %l80
  br label %bb32
bb32:
  %t172 = load i32, ptr %l2, !tbaa !23
  %t173 = load ptr, ptr %l77, !tbaa !29
  %t174 = load i32, ptr %l80, !tbaa !23
  %t176 = call { { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstGlobal(ptr %v0, ptr %s2, ptr %s2, ptr %t173, i32 %t174, i32 %t172, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d143, i32 0, i32 1) })
  store { { i64, ptr }, i64 } %t176, ptr %l82
  br label %bb33
bb33:
  %t177 = load { { i64, ptr }, i64 }, ptr %l82
  store { { i64, ptr }, i64 } %t177, ptr %l11
  %t178 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !27
  store { i64, ptr } %t179, ptr %l83, !tbaa !27
  %t180 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 0
  store i64 %t181, ptr %l84, !tbaa !24
  %t182 = load i64, ptr %l84, !tbaa !24
  %t183 = mul i64 %t182, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t183)
  %t185 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  store { i64, ptr } %t186, ptr %l85, !tbaa !27
  %t187 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l84, !tbaa !24
  %t192 = mul i64 %t191, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t188, ptr %t190, i64 %t192, i1 false)
  %t193 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t193, ptr %lp12
  %t194 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t195 = load ptr, ptr %lp12
  store { i64, ptr } %t194, ptr %t195, !tbaa !27
  %t196 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 1
  %t197 = load i64, ptr %t196, !tbaa !24
  store i64 %t197, ptr %l13, !tbaa !24
  %t199 = load ptr, ptr %l3, !tbaa !29
  %t200 = load i32, ptr %l6, !tbaa !23
  %t203 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t199, i32 %t200)
  store i1 %t203, ptr %l89
  br label %bb34
bb34:
  %t204 = load i1, ptr %l89, !tbaa !21
  br i1 %t204, label %bb35, label %bb36
bb35:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l8, !tbaa !23
  %t209 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t205, i32 %t206)
  store i1 %t209, ptr %l93
  br label %bb37
bb36:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb38
bb37:
  %t210 = load i1, ptr %l93, !tbaa !21
  store i1 %t210, ptr %l90, !tbaa !21
  br label %bb38
bb38:
  %t211 = load i1, ptr %l90, !tbaa !21
  br i1 %t211, label %bb39, label %bb40
bb39:
  %t212 = load ptr, ptr %lp12
  %t213 = load { i64, ptr }, ptr %t212, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t213, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t215 = load i64, ptr %l13, !tbaa !24
  %t216 = load ptr, ptr %lp12
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  %t218 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t221 = call i64 @__olang_fmt_i64(ptr null, i64 %t215)
  %t222 = add i64 %t219, %t221
  %t223 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t217, 1
  %t228 = extractvalue { i64, ptr } %t217, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t233 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t232)
  call void @olang_textcopy(ptr %t233, ptr %t218, i64 %t219)
  %t234 = getelementptr i8, ptr %t233, i64 %t219
  %t235 = call i64 @__olang_fmt_i64(ptr %t234, i64 %t215)
  %t236 = getelementptr i8, ptr %t234, i64 %t221
  call void @olang_textcopy(ptr %t236, ptr %t223, i64 %t224)
  %t237 = getelementptr i8, ptr %t236, i64 %t224
  call void @olang_textcopy(ptr %t237, ptr %t227, i64 %t228)
  %t238 = getelementptr i8, ptr %t237, i64 %t228
  call void @olang_textcopy(ptr %t238, ptr %t230, i64 %t231)
  %t239 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t240 = insertvalue { i64, ptr } %t239, ptr %t233, 1
  call void @__olang_scope_close(ptr %s2)
  store { i64, ptr } %t240, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_3de177096d03f952_4b04555d717d3dfe)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca { i64, [1 x i64] }
  %l25 = alloca i32
  %l28 = alloca i32
  %l46 = alloca ptr
  %l55 = alloca i8
  %l60 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/emit:fnEm", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/mir:Fn", ptr %t6, i32 0, i32 19
  %t11 = sext i32 %a1 to i64
  %t14 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t8, i64 %t11)
  store { i64, [1 x i64] } %t14, ptr %l17
  br label %bb2
bb2:
  %t15 = load { i64, [1 x i64] }, ptr %l17
  store { i64, [1 x i64] } %t15, ptr %l3
  %t16 = load { i64, [1 x i64] }, ptr %l3
  %t18 = extractvalue { i64, [1 x i64] } %t16, 0
  %t19 = icmp eq i64 %t18, 1
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t22 = getelementptr { %"compiler/mir:Range" }, ptr %t21, i32 0, i32 0
  %t23 = load %"compiler/mir:Range", ptr %t22
  store %"compiler/mir:Range" %t23, ptr %l4
  br label %bb5
bb4:
  br label %bb20
bb5:
  store i32 0, ptr %l5, !tbaa !23
  %t25 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l6, !tbaa !23
  store i32 1, ptr %l7, !tbaa !23
  %t28 = load i32, ptr %l6, !tbaa !23
  %t29 = load i32, ptr %l5, !tbaa !23
  %t32 = icmp sgt i32 %t28, %t29
  br i1 %t32, label %bb6, label %bb7
bb6:
  %t34 = load i32, ptr %l7, !tbaa !23
  %t36 = icmp sgt i32 %t34, 0
  br i1 %t36, label %bb8, label %bb9
bb7:
  store i32 0, ptr %l25, !tbaa !23
  br label %bb11
bb8:
  %t38 = load i32, ptr %l6, !tbaa !23
  %t39 = load i32, ptr %l5, !tbaa !23
  %t42 = sub i32 %t38, %t39
  %t43 = load i32, ptr %l7, !tbaa !23
  %t46 = add i32 %t42, %t43
  %t48 = sub i32 %t46, 1
  %t49 = load i32, ptr %l7, !tbaa !23
  %t52 = sdiv i32 %t48, %t49
  store i32 %t52, ptr %l28, !tbaa !23
  br label %bb10
bb9:
  store i32 0, ptr %l28, !tbaa !23
  br label %bb10
bb10:
  %t54 = load i32, ptr %l28, !tbaa !23
  store i32 %t54, ptr %l25, !tbaa !23
  br label %bb11
bb11:
  %t55 = load i32, ptr %l25, !tbaa !23
  store i32 %t55, ptr %l8, !tbaa !23
  store i32 0, ptr %l9, !tbaa !23
  br label %bb12
bb12:
  %t56 = load i32, ptr %l9, !tbaa !23
  %t57 = load i32, ptr %l8, !tbaa !23
  %t60 = icmp slt i32 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t64 = load i32, ptr %l5, !tbaa !23
  %t65 = load i32, ptr %l9, !tbaa !23
  %t66 = load i32, ptr %l7, !tbaa !23
  %t69 = mul i32 %t65, %t66
  %t72 = add i32 %t64, %t69
  store ptr %l2, ptr %l46, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/emit:fnEm", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/mir:Fn", ptr %t77, i32 0, i32 21
  %t80 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  %t86 = sext i32 %t72 to i64
  %t89 = add i64 %t83, %t86
  %t92 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %t79, i64 %t89)
  store i8 %t92, ptr %l55
  br label %bb16
bb16:
  %t93 = load i8, ptr %l55, !tbaa !22
  %t94 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t94, i8 %t93)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t96 = load i32, ptr %l9, !tbaa !23
  %t98 = add i32 %t96, 1
  store i32 %t98, ptr %l9, !tbaa !23
  br label %bb12
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
  call void @__olang_check_failed(ptr @olang_loc_a00373ca27d5619a_9315010cb9ead296)
  unreachable
bb25:
  %t101 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t101, ptr %l60
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t102 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %lp5 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sgt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %t6)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t18 = extractvalue { i64, ptr } %t7, 1
  %t19 = extractvalue { i64, ptr } %t7, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = call i64 @__olang_fmt_i64(ptr null, i64 %t8)
  %t26 = add i64 %t23, %t25
  %t27 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t26)
  call void @olang_textcopy(ptr %t27, ptr %t9, i64 %t10)
  %t28 = getelementptr i8, ptr %t27, i64 %t10
  %t29 = call i64 @__olang_fmt_i64(ptr %t28, i64 %t6)
  %t30 = getelementptr i8, ptr %t28, i64 %t12
  call void @olang_textcopy(ptr %t30, ptr %t14, i64 %t15)
  %t31 = getelementptr i8, ptr %t30, i64 %t15
  call void @olang_textcopy(ptr %t31, ptr %t18, i64 %t19)
  %t32 = getelementptr i8, ptr %t31, i64 %t19
  call void @olang_textcopy(ptr %t32, ptr %t21, i64 %t22)
  %t33 = getelementptr i8, ptr %t32, i64 %t22
  %t34 = call i64 @__olang_fmt_i64(ptr %t33, i64 %t8)
  %t35 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t27, 1
  %t38 = extractvalue { i64, ptr } %t36, 0
  %t39 = extractvalue { i64, ptr } %t36, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t46 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t5, { i64, ptr } %t43)
  store { i64, ptr } %t46, ptr %l15
  br label %bb3
bb2:
  %t47 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 1
  %t50 = extractvalue { i64, ptr } %t47, 0
  %t51 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t50)
  call void @olang_textcopy(ptr %t51, ptr %t49, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l8, !tbaa !27
  br label %bb4
bb3:
  %t55 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t55, ptr %l8, !tbaa !27
  br label %bb4
bb4:
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t56, ptr %lp5
  %t57 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t58 = load ptr, ptr %lp5
  store { i64, ptr } %t57, ptr %t58, !tbaa !27
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  br i1 %t63, label %bb5, label %bb6
bb5:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l2, !tbaa !24
  %t67 = load ptr, ptr %lp5
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t69 = load i64, ptr %l4, !tbaa !24
  %t70 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t73 = call i64 @__olang_fmt_i64(ptr null, i64 %t66)
  %t74 = add i64 %t71, %t73
  %t75 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t77 = add i64 %t74, %t76
  %t79 = extractvalue { i64, ptr } %t68, 1
  %t80 = extractvalue { i64, ptr } %t68, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t86 = call i64 @__olang_fmt_i64(ptr null, i64 %t69)
  %t87 = add i64 %t84, %t86
  %t88 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t87)
  call void @olang_textcopy(ptr %t88, ptr %t70, i64 %t71)
  %t89 = getelementptr i8, ptr %t88, i64 %t71
  %t90 = call i64 @__olang_fmt_i64(ptr %t89, i64 %t66)
  %t91 = getelementptr i8, ptr %t89, i64 %t73
  call void @olang_textcopy(ptr %t91, ptr %t75, i64 %t76)
  %t92 = getelementptr i8, ptr %t91, i64 %t76
  call void @olang_textcopy(ptr %t92, ptr %t79, i64 %t80)
  %t93 = getelementptr i8, ptr %t92, i64 %t80
  call void @olang_textcopy(ptr %t93, ptr %t82, i64 %t83)
  %t94 = getelementptr i8, ptr %t93, i64 %t83
  %t95 = call i64 @__olang_fmt_i64(ptr %t94, i64 %t69)
  %t96 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t88, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t107 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t65, { i64, ptr } %t104)
  store { i64, ptr } %t107, ptr %l28
  br label %bb7
bb6:
  %t108 = load ptr, ptr %lp5
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l21, !tbaa !27
  br label %bb8
bb7:
  %t111 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t111, ptr %l21, !tbaa !27
  br label %bb8
bb8:
  %t112 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t112, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %lp20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l33 = alloca i32
  %l37 = alloca i1
  %l40 = alloca i1
  %l45 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca i64
  %l63 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca i32
  %l87 = alloca i32
  %l90 = alloca i64
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l100 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l125 = alloca ptr
  %l133 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l150 = alloca i64
  %l157 = alloca { i64, ptr }
  %l160 = alloca i32
  %l163 = alloca i1
  %l169 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l188 = alloca { i64, ptr }
  %l189 = alloca i64
  %l190 = alloca { i64, ptr }
  %l196 = alloca i64
  %l199 = alloca i64
  %l217 = alloca ptr
  %l218 = alloca i64
  %l219 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l222 = alloca i64
  %l224 = alloca i64
  %l228 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l237 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %a3)
  store i32 %t13, ptr %l33
  br label %bb1
bb1:
  %t14 = load i32, ptr %l33, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t19 = icmp eq i32 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l40
  br label %bb4
bb4:
  %t26 = load i1, ptr %l40, !tbaa !21
  store i1 %t26, ptr %l37, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l37, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 1
  %t31 = extractvalue { i64, ptr } %t28, 0
  %t32 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t30, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t34, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t37 = load i32, ptr %l5, !tbaa !23
  %t40 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t36, i32 %t37)
  store i1 %t40, ptr %l45
  br label %bb9
bb9:
  %t41 = load i1, ptr %l45, !tbaa !21
  br i1 %t41, label %bb10, label %bb11
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l46, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t43, ptr %l47, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t48 = call i64 @__olang_fmt_i64(ptr null, i64 %t44)
  %t49 = add i64 %t46, %t48
  %t50 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t49)
  call void @olang_textcopy(ptr %t50, ptr %t45, i64 %t46)
  %t51 = getelementptr i8, ptr %t50, i64 %t46
  %t52 = call i64 @__olang_fmt_i64(ptr %t51, i64 %t44)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t50, 1
  %t56 = extractvalue { i64, ptr } %t54, 0
  %t57 = extractvalue { i64, ptr } %t54, 1
  %t58 = mul i64 %t56, 1
  %t59 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t58)
  call void @llvm.memcpy.p0.p0.i64(ptr %t59, ptr %t57, i64 %t58, i1 false)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l50, !tbaa !27
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i32, ptr %l5, !tbaa !23
  %t66 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v2, ptr %t62, i32 %t63)
  store { i64, ptr } %t66, ptr %l53
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t67 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l46, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t76 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t78 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebitcast(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %t74, { i64, ptr } %t75, { i64, ptr } %t76, { i64, ptr } %t73)
  store { i64, ptr } %t78, ptr %l55
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  %t79 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t79, ptr %rv
  br label %ret
bb14:
  %t80 = load ptr, ptr %l4, !tbaa !29
  %t81 = load i32, ptr %l5, !tbaa !23
  %t84 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t80, i32 %t81)
  store i1 %t84, ptr %l58
  br label %bb15
bb15:
  %t85 = load i1, ptr %l58, !tbaa !21
  br i1 %t85, label %bb16, label %bb17
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l5, !tbaa !23
  %t90 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t86, i32 %t87)
  store i64 %t90, ptr %l61
  br label %bb18
bb17:
  br label %bb24
bb18:
  %t91 = load i64, ptr %l61, !tbaa !24
  %t92 = mul i64 8, %t91
  store i64 %t92, ptr %l6, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l63, !tbaa !29
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = icmp slt i64 %t95, %t96
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l2, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t108 = call i64 @__olang_fmt_i64(ptr null, i64 %t102)
  %t109 = add i64 %t106, %t108
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t114 = extractvalue { i64, ptr } %t103, 1
  %t115 = extractvalue { i64, ptr } %t103, 0
  %t116 = add i64 %t112, %t115
  %t117 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t119 = add i64 %t116, %t118
  %t121 = call i64 @__olang_fmt_i64(ptr null, i64 %t104)
  %t122 = add i64 %t119, %t121
  %t123 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t122)
  call void @olang_textcopy(ptr %t123, ptr %t105, i64 %t106)
  %t124 = getelementptr i8, ptr %t123, i64 %t106
  %t125 = call i64 @__olang_fmt_i64(ptr %t124, i64 %t102)
  %t126 = getelementptr i8, ptr %t124, i64 %t108
  call void @olang_textcopy(ptr %t126, ptr %t110, i64 %t111)
  %t127 = getelementptr i8, ptr %t126, i64 %t111
  call void @olang_textcopy(ptr %t127, ptr %t114, i64 %t115)
  %t128 = getelementptr i8, ptr %t127, i64 %t115
  call void @olang_textcopy(ptr %t128, ptr %t117, i64 %t118)
  %t129 = getelementptr i8, ptr %t128, i64 %t118
  %t130 = call i64 @__olang_fmt_i64(ptr %t129, i64 %t104)
  %t131 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t123, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } %t132, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t142 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t101, { i64, ptr } %t139)
  store { i64, ptr } %t142, ptr %l74
  br label %bb21
bb20:
  %t143 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t143, ptr %l67, !tbaa !27
  br label %bb22
bb21:
  %t145 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  %t147 = extractvalue { i64, ptr } %t145, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  store { i64, ptr } %t151, ptr %l67, !tbaa !27
  br label %bb22
bb22:
  %t153 = load i32, ptr %l5, !tbaa !23
  %t154 = load ptr, ptr %l63, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t157 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easPacked(ptr %v0, ptr %v1, ptr %v2, ptr %t154, { i64, ptr } %t155, i32 %t153)
  store { i64, ptr } %t157, ptr %l78
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  %t158 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t158, ptr %rv
  br label %ret
bb24:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i32, ptr %l5, !tbaa !23
  %t163 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t159, i32 %t160)
  store i32 %t163, ptr %l81
  br label %bb25
bb25:
  %t164 = load i32, ptr %l81, !tbaa !23
  store i32 %t164, ptr %l7, !tbaa !23
  %t165 = load i32, ptr %l7, !tbaa !23
  %t166 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t169 = icmp ne i32 %t165, %t166
  br i1 %t169, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s7
  %t171 = load ptr, ptr %l4, !tbaa !29
  %t172 = load i32, ptr %l7, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l87
  br label %bb28
bb27:
  br label %bb51
bb28:
  %t176 = load i32, ptr %l87, !tbaa !23
  store i32 %t176, ptr %l8, !tbaa !23
  %t177 = load ptr, ptr %l4, !tbaa !29
  %t178 = load i32, ptr %l8, !tbaa !23
  %t181 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t177, i32 %t178)
  store i64 %t181, ptr %l90
  br label %bb29
bb29:
  %t182 = load i64, ptr %l90, !tbaa !24
  store i64 %t182, ptr %l9, !tbaa !24
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i32, ptr %l7, !tbaa !23
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s7, ptr %t183, i32 %t184)
  store { i64, ptr } %t187, ptr %l93
  br label %bb30
bb30:
  %t188 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t188, ptr %l10, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t189, ptr %l95, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  store i64 %t191, ptr %l96, !tbaa !24
  %t192 = load i64, ptr %l96, !tbaa !24
  %t193 = mul i64 %t192, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t193)
  %t195 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  store { i64, ptr } %t196, ptr %l97, !tbaa !27
  %t197 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = load i64, ptr %l96, !tbaa !24
  %t202 = mul i64 %t201, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %t200, i64 %t202, i1 false)
  %t203 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t203, ptr %lp11
  %t204 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t205 = load ptr, ptr %lp11
  store { i64, ptr } %t204, ptr %t205, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l7, !tbaa !23
  %t210 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t206, i32 %t207)
  store i64 %t210, ptr %l100
  br label %bb31
bb31:
  %t211 = load i64, ptr %l100, !tbaa !24
  store i64 %t211, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t212 = load i64, ptr %l13, !tbaa !24
  %t213 = load i64, ptr %l12, !tbaa !24
  %t216 = icmp sgt i64 %t212, %t213
  br i1 %t216, label %bb32, label %bb33
bb32:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t220 = icmp sgt i64 %t218, 0
  br i1 %t220, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb37
bb34:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t223 = load i64, ptr %l12, !tbaa !24
  %t226 = sub i64 %t222, %t223
  %t227 = load i64, ptr %l14, !tbaa !24
  %t230 = add i64 %t226, %t227
  %t232 = sub i64 %t230, 1
  %t233 = load i64, ptr %l14, !tbaa !24
  %t236 = sdiv i64 %t232, %t233
  store i64 %t236, ptr %l107, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb36
bb36:
  %t238 = load i64, ptr %l107, !tbaa !24
  store i64 %t238, ptr %l104, !tbaa !24
  br label %bb37
bb37:
  %t239 = load i64, ptr %l104, !tbaa !24
  store i64 %t239, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  %t240 = load i64, ptr %l16, !tbaa !24
  %t241 = load i64, ptr %l15, !tbaa !24
  %t244 = icmp slt i64 %t240, %t241
  %t246 = xor i1 %t244, true
  br i1 %t246, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s9)
  br label %bb50
bb40:
  br label %bb41
bb41:
  %t248 = load i64, ptr %l12, !tbaa !24
  %t249 = load i64, ptr %l16, !tbaa !24
  %t250 = load i64, ptr %l14, !tbaa !24
  %t253 = mul i64 %t249, %t250
  %t256 = add i64 %t248, %t253
  store i64 %t256, ptr %l17, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l125, !tbaa !29
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t261 = load i64, ptr %l2, !tbaa !24
  %t262 = load i64, ptr %l17, !tbaa !24
  %t263 = load i64, ptr %l9, !tbaa !24
  %t266 = mul i64 %t262, %t263
  %t267 = load i64, ptr %l9, !tbaa !24
  %t273 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecut(ptr %v0, ptr %v1, ptr %s9, ptr %t259, { i64, ptr } %t260, i64 %t261, i64 %t266, i64 %t267)
  store { i64, ptr } %t273, ptr %l133
  br label %bb42
bb42:
  %t274 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t275 = extractvalue { i64, ptr } %t274, 0
  %t276 = extractvalue { i64, ptr } %t274, 1
  %t277 = mul i64 %t275, 1
  %t278 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t277)
  call void @llvm.memcpy.p0.p0.i64(ptr %t278, ptr %t276, i64 %t277, i1 false)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  %t281 = load i64, ptr %l9, !tbaa !24
  %t282 = load i32, ptr %l8, !tbaa !23
  %t283 = load ptr, ptr %l125, !tbaa !29
  %t287 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efromBits(ptr %v0, ptr %s9, ptr %s9, ptr %t283, { i64, ptr } %t280, i64 %t281, i32 %t282)
  store { i64, ptr } %t287, ptr %l137
  br label %bb43
bb43:
  %t288 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t288, ptr %l18, !tbaa !27
  %t289 = load ptr, ptr %l0, !tbaa !29
  store ptr %t289, ptr %l138, !tbaa !29
  %t290 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t290, ptr %l139, !tbaa !27
  %t291 = load ptr, ptr %lp11
  %t292 = load { i64, ptr }, ptr %t291, !tbaa !27
  store { i64, ptr } %t292, ptr %l140, !tbaa !27
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l8, !tbaa !23
  %t297 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s9, ptr %t293, i32 %t294)
  store { i64, ptr } %t297, ptr %l143
  br label %bb44
bb44:
  %t298 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t299 = load i64, ptr %l17, !tbaa !24
  %t300 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t301 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t302 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = extractvalue { i64, ptr } %t302, 0
  %t305 = add i64 %t301, %t304
  %t306 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t307 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t308 = add i64 %t305, %t307
  %t309 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t312 = add i64 %t308, %t311
  %t313 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t314 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t315 = add i64 %t312, %t314
  %t316 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = add i64 %t315, %t318
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t322 = add i64 %t319, %t321
  %t324 = extractvalue { i64, ptr } %t298, 1
  %t325 = extractvalue { i64, ptr } %t298, 0
  %t326 = add i64 %t322, %t325
  %t327 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t331 = call i64 @__olang_fmt_i64(ptr null, i64 %t299)
  %t332 = add i64 %t329, %t331
  %t333 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t332)
  call void @olang_textcopy(ptr %t333, ptr %t300, i64 %t301)
  %t334 = getelementptr i8, ptr %t333, i64 %t301
  call void @olang_textcopy(ptr %t334, ptr %t303, i64 %t304)
  %t335 = getelementptr i8, ptr %t334, i64 %t304
  call void @olang_textcopy(ptr %t335, ptr %t306, i64 %t307)
  %t336 = getelementptr i8, ptr %t335, i64 %t307
  call void @olang_textcopy(ptr %t336, ptr %t310, i64 %t311)
  %t337 = getelementptr i8, ptr %t336, i64 %t311
  call void @olang_textcopy(ptr %t337, ptr %t313, i64 %t314)
  %t338 = getelementptr i8, ptr %t337, i64 %t314
  call void @olang_textcopy(ptr %t338, ptr %t317, i64 %t318)
  %t339 = getelementptr i8, ptr %t338, i64 %t318
  call void @olang_textcopy(ptr %t339, ptr %t320, i64 %t321)
  %t340 = getelementptr i8, ptr %t339, i64 %t321
  call void @olang_textcopy(ptr %t340, ptr %t324, i64 %t325)
  %t341 = getelementptr i8, ptr %t340, i64 %t325
  call void @olang_textcopy(ptr %t341, ptr %t327, i64 %t328)
  %t342 = getelementptr i8, ptr %t341, i64 %t328
  %t343 = call i64 @__olang_fmt_i64(ptr %t342, i64 %t299)
  %t344 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t333, 1
  %t347 = extractvalue { i64, ptr } %t345, 0
  %t348 = extractvalue { i64, ptr } %t345, 1
  %t349 = mul i64 %t347, 1
  %t350 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t349)
  call void @llvm.memcpy.p0.p0.i64(ptr %t350, ptr %t348, i64 %t349, i1 false)
  %t351 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t350, 1
  %t353 = load ptr, ptr %l138, !tbaa !29
  %t355 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t353, { i64, ptr } %t352)
  store { i64, ptr } %t355, ptr %l148
  br label %bb45
bb45:
  %t356 = load ptr, ptr %lp11
  %t357 = load { i64, ptr }, ptr %t356, !tbaa !27
  %t358 = extractvalue { i64, ptr } %t357, 0
  %t359 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 0
  store i64 %t360, ptr %l150, !tbaa !24
  %t362 = load i64, ptr %l150, !tbaa !24
  %t363 = icmp eq i64 %t358, %t362
  br i1 %t363, label %bb46, label %bb47
bb46:
  %t365 = load ptr, ptr %lp11
  %t366 = getelementptr { i64, ptr }, ptr %t365, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !27
  %t368 = getelementptr { i64, ptr }, ptr %l148, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = load i64, ptr %l150, !tbaa !24
  %t371 = mul i64 %t370, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t367, ptr %t369, i64 %t371, i1 false)
  br label %bb48
bb47:
  %t372 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t373 = load ptr, ptr %lp11
  store { i64, ptr } %t372, ptr %t373, !tbaa !27
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s9)
  br label %bb49
bb49:
  %t374 = load i64, ptr %l16, !tbaa !24
  %t376 = add i64 %t374, 1
  store i64 %t376, ptr %l16, !tbaa !24
  br label %bb38
bb50:
  %t378 = load ptr, ptr %lp11
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t379, ptr %rv
  br label %ret
bb51:
  %t381 = load ptr, ptr %l4, !tbaa !29
  %t382 = load i32, ptr %l5, !tbaa !23
  %t385 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t381, i32 %t382)
  store { i64, ptr } %t385, ptr %l157
  br label %bb52
bb52:
  %t386 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t386, ptr %l19, !tbaa !27
  %t387 = load ptr, ptr %l4, !tbaa !29
  %t388 = load i32, ptr %l5, !tbaa !23
  %t391 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t387, i32 %t388)
  store i32 %t391, ptr %l160
  br label %bb53
bb53:
  %t392 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t393 = load i32, ptr %l160, !tbaa !23
  %t395 = icmp eq i32 %t393, %t392
  br i1 %t395, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l163, !tbaa !21
  br label %bb56
bb55:
  %t397 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t399 = extractvalue { i64, ptr } %t397, 0
  %t401 = icmp eq i64 %t399, 0
  store i1 %t401, ptr %l163, !tbaa !21
  br label %bb56
bb56:
  %t403 = load i1, ptr %l163, !tbaa !21
  br i1 %t403, label %bb57, label %bb58
bb57:
  %t404 = load i64, ptr %l2, !tbaa !24
  %t406 = icmp slt i64 %t404, 32
  br i1 %t406, label %bb59, label %bb60
bb58:
  br label %bb67
bb59:
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t409 = load i64, ptr %l2, !tbaa !24
  %t410 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t411 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t412 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t414 = call i64 @__olang_fmt_i64(ptr null, i64 %t409)
  %t415 = add i64 %t412, %t414
  %t416 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t418 = add i64 %t415, %t417
  %t420 = extractvalue { i64, ptr } %t410, 1
  %t421 = extractvalue { i64, ptr } %t410, 0
  %t422 = add i64 %t418, %t421
  %t423 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t424 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t425 = add i64 %t422, %t424
  %t426 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t425)
  call void @olang_textcopy(ptr %t426, ptr %t411, i64 %t412)
  %t427 = getelementptr i8, ptr %t426, i64 %t412
  %t428 = call i64 @__olang_fmt_i64(ptr %t427, i64 %t409)
  %t429 = getelementptr i8, ptr %t427, i64 %t414
  call void @olang_textcopy(ptr %t429, ptr %t416, i64 %t417)
  %t430 = getelementptr i8, ptr %t429, i64 %t417
  call void @olang_textcopy(ptr %t430, ptr %t420, i64 %t421)
  %t431 = getelementptr i8, ptr %t430, i64 %t421
  call void @olang_textcopy(ptr %t431, ptr %t423, i64 %t424)
  %t432 = insertvalue { i64, ptr } undef, i64 %t425, 0
  %t433 = insertvalue { i64, ptr } %t432, ptr %t426, 1
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = extractvalue { i64, ptr } %t433, 1
  %t437 = mul i64 %t435, 1
  %t438 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t437)
  call void @llvm.memcpy.p0.p0.i64(ptr %t438, ptr %t436, i64 %t437, i1 false)
  %t439 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t438, 1
  %t443 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t408, { i64, ptr } %t440)
  store { i64, ptr } %t443, ptr %l175
  br label %bb61
bb60:
  %t444 = load i64, ptr %l2, !tbaa !24
  %t446 = icmp sgt i64 %t444, 32
  br i1 %t446, label %bb62, label %bb63
bb61:
  %t448 = load { i64, ptr }, ptr %l175, !tbaa !27
  store { i64, ptr } %t448, ptr %l169, !tbaa !27
  br label %bb66
bb62:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t450 = load i64, ptr %l2, !tbaa !24
  %t451 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t452 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t453 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t455 = call i64 @__olang_fmt_i64(ptr null, i64 %t450)
  %t456 = add i64 %t453, %t455
  %t457 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t461 = extractvalue { i64, ptr } %t451, 1
  %t462 = extractvalue { i64, ptr } %t451, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t467 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t466)
  call void @olang_textcopy(ptr %t467, ptr %t452, i64 %t453)
  %t468 = getelementptr i8, ptr %t467, i64 %t453
  %t469 = call i64 @__olang_fmt_i64(ptr %t468, i64 %t450)
  %t470 = getelementptr i8, ptr %t468, i64 %t455
  call void @olang_textcopy(ptr %t470, ptr %t457, i64 %t458)
  %t471 = getelementptr i8, ptr %t470, i64 %t458
  call void @olang_textcopy(ptr %t471, ptr %t461, i64 %t462)
  %t472 = getelementptr i8, ptr %t471, i64 %t462
  call void @olang_textcopy(ptr %t472, ptr %t464, i64 %t465)
  %t473 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t467, 1
  %t476 = extractvalue { i64, ptr } %t474, 0
  %t477 = extractvalue { i64, ptr } %t474, 1
  %t478 = mul i64 %t476, 1
  %t479 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t478)
  call void @llvm.memcpy.p0.p0.i64(ptr %t479, ptr %t477, i64 %t478, i1 false)
  %t480 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t481 = insertvalue { i64, ptr } %t480, ptr %t479, 1
  %t484 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t449, { i64, ptr } %t481)
  store { i64, ptr } %t484, ptr %l184
  br label %bb64
bb63:
  %t485 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t485, 1
  %t488 = extractvalue { i64, ptr } %t485, 0
  %t489 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t488)
  call void @olang_textcopy(ptr %t489, ptr %t487, i64 %t488)
  %t490 = insertvalue { i64, ptr } undef, i64 %t488, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t489, 1
  store { i64, ptr } %t491, ptr %l178, !tbaa !27
  br label %bb65
bb64:
  %t493 = load { i64, ptr }, ptr %l184, !tbaa !27
  store { i64, ptr } %t493, ptr %l178, !tbaa !27
  br label %bb65
bb65:
  %t494 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t494, ptr %l169, !tbaa !27
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t495 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t495, ptr %rv
  br label %ret
bb67:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, ptr %l187, !tbaa !27
  %t496 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t496, ptr %l188, !tbaa !27
  %t497 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t497, 0
  store i64 %t498, ptr %l189, !tbaa !24
  %t499 = load i64, ptr %l189, !tbaa !24
  %t500 = mul i64 %t499, 1
  %t501 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t500)
  %t502 = insertvalue { i64, ptr } undef, i64 %t499, 0
  %t503 = insertvalue { i64, ptr } %t502, ptr %t501, 1
  store { i64, ptr } %t503, ptr %l190, !tbaa !27
  %t504 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t505 = load ptr, ptr %t504, !tbaa !27
  %t506 = getelementptr { i64, ptr }, ptr %l188, i32 0, i32 1
  %t507 = load ptr, ptr %t506, !tbaa !27
  %t508 = load i64, ptr %l189, !tbaa !24
  %t509 = mul i64 %t508, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t505, ptr %t507, i64 %t509, i1 false)
  %t510 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t510, ptr %lp20
  %t511 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t512 = load ptr, ptr %lp20
  store { i64, ptr } %t511, ptr %t512, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t513 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t513, 0
  store i64 %t515, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t517 = load i64, ptr %l22, !tbaa !24
  %t518 = load i64, ptr %l21, !tbaa !24
  %t521 = icmp sgt i64 %t517, %t518
  br i1 %t521, label %bb68, label %bb69
bb68:
  %t523 = load i64, ptr %l23, !tbaa !24
  %t525 = icmp sgt i64 %t523, 0
  br i1 %t525, label %bb70, label %bb71
bb69:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb73
bb70:
  %t527 = load i64, ptr %l22, !tbaa !24
  %t528 = load i64, ptr %l21, !tbaa !24
  %t531 = sub i64 %t527, %t528
  %t532 = load i64, ptr %l23, !tbaa !24
  %t535 = add i64 %t531, %t532
  %t537 = sub i64 %t535, 1
  %t538 = load i64, ptr %l23, !tbaa !24
  %t541 = sdiv i64 %t537, %t538
  store i64 %t541, ptr %l199, !tbaa !24
  br label %bb72
bb71:
  store i64 0, ptr %l199, !tbaa !24
  br label %bb72
bb72:
  %t543 = load i64, ptr %l199, !tbaa !24
  store i64 %t543, ptr %l196, !tbaa !24
  br label %bb73
bb73:
  %t544 = load i64, ptr %l196, !tbaa !24
  store i64 %t544, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb74
bb74:
  store %olang.scope zeroinitializer, ptr %s17
  %t545 = load i64, ptr %l25, !tbaa !24
  %t546 = load i64, ptr %l24, !tbaa !24
  %t549 = icmp slt i64 %t545, %t546
  %t551 = xor i1 %t549, true
  br i1 %t551, label %bb75, label %bb76
bb75:
  call void @__olang_scope_close(ptr %s17)
  br label %bb85
bb76:
  br label %bb77
bb77:
  %t553 = load i64, ptr %l21, !tbaa !24
  %t554 = load i64, ptr %l25, !tbaa !24
  %t555 = load i64, ptr %l23, !tbaa !24
  %t558 = mul i64 %t554, %t555
  %t561 = add i64 %t553, %t558
  store i64 %t561, ptr %l26, !tbaa !24
  %t563 = load ptr, ptr %l0, !tbaa !29
  store ptr %t563, ptr %l217, !tbaa !29
  %t564 = load i64, ptr %l2, !tbaa !24
  store i64 %t564, ptr %l218, !tbaa !24
  %t565 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t565, ptr %l219, !tbaa !27
  %t566 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t566, ptr %l220, !tbaa !27
  %t567 = load i64, ptr %l26, !tbaa !24
  %t569 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t570 = load ptr, ptr %t569, !tbaa !27
  %t571 = getelementptr i64, ptr %t570, i64 %t567
  %t572 = load i64, ptr %t571, !tbaa !34
  store i64 %t572, ptr %l222, !tbaa !24
  %t573 = load i64, ptr %l2, !tbaa !24
  %t575 = call i64 @compiler_2femit_2ebmaskOf(i64 %t573)
  store i64 %t575, ptr %l224
  br label %bb78
bb78:
  %t576 = load i64, ptr %l222, !tbaa !24
  %t577 = load i64, ptr %l224, !tbaa !24
  %t578 = and i64 %t576, %t577
  %t579 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t580 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t581 = load i64, ptr %l218, !tbaa !24
  %t582 = call i64 @__olang_fmt_i64(ptr null, i64 %t581)
  %t583 = add i64 %t580, %t582
  %t584 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t585 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t586 = add i64 %t583, %t585
  %t587 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = extractvalue { i64, ptr } %t587, 0
  %t590 = add i64 %t586, %t589
  %t591 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t592 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t593 = add i64 %t590, %t592
  %t595 = call i64 @__olang_fmt_i64(ptr null, i64 %t578)
  %t596 = add i64 %t593, %t595
  %t597 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t596)
  call void @olang_textcopy(ptr %t597, ptr %t579, i64 %t580)
  %t598 = getelementptr i8, ptr %t597, i64 %t580
  %t599 = call i64 @__olang_fmt_i64(ptr %t598, i64 %t581)
  %t600 = getelementptr i8, ptr %t598, i64 %t582
  call void @olang_textcopy(ptr %t600, ptr %t584, i64 %t585)
  %t601 = getelementptr i8, ptr %t600, i64 %t585
  call void @olang_textcopy(ptr %t601, ptr %t588, i64 %t589)
  %t602 = getelementptr i8, ptr %t601, i64 %t589
  call void @olang_textcopy(ptr %t602, ptr %t591, i64 %t592)
  %t603 = getelementptr i8, ptr %t602, i64 %t592
  %t604 = call i64 @__olang_fmt_i64(ptr %t603, i64 %t578)
  %t605 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t606 = insertvalue { i64, ptr } %t605, ptr %t597, 1
  %t608 = extractvalue { i64, ptr } %t606, 0
  %t609 = extractvalue { i64, ptr } %t606, 1
  %t610 = mul i64 %t608, 1
  %t611 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t610)
  call void @llvm.memcpy.p0.p0.i64(ptr %t611, ptr %t609, i64 %t610, i1 false)
  %t612 = insertvalue { i64, ptr } undef, i64 %t608, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t611, 1
  %t614 = load ptr, ptr %l217, !tbaa !29
  %t616 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s17, ptr %s17, ptr %t614, { i64, ptr } %t613)
  store { i64, ptr } %t616, ptr %l228
  br label %bb79
bb79:
  %t617 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = load i64, ptr %l26, !tbaa !24
  %t621 = load ptr, ptr %lp20
  %t622 = load { i64, ptr }, ptr %t621, !tbaa !27
  %t623 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t624 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t626 = extractvalue { i64, ptr } %t617, 1
  %t627 = extractvalue { i64, ptr } %t617, 0
  %t628 = add i64 %t624, %t627
  %t629 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t630 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t631 = add i64 %t628, %t630
  %t633 = call i64 @__olang_fmt_i64(ptr null, i64 %t620)
  %t634 = add i64 %t631, %t633
  %t635 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 1
  %t636 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d172, i32 0, i32 1) }, 0
  %t637 = add i64 %t634, %t636
  %t639 = extractvalue { i64, ptr } %t622, 1
  %t640 = extractvalue { i64, ptr } %t622, 0
  %t641 = add i64 %t637, %t640
  %t642 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t641)
  call void @olang_textcopy(ptr %t642, ptr %t623, i64 %t624)
  %t643 = getelementptr i8, ptr %t642, i64 %t624
  call void @olang_textcopy(ptr %t643, ptr %t626, i64 %t627)
  %t644 = getelementptr i8, ptr %t643, i64 %t627
  call void @olang_textcopy(ptr %t644, ptr %t629, i64 %t630)
  %t645 = getelementptr i8, ptr %t644, i64 %t630
  %t646 = call i64 @__olang_fmt_i64(ptr %t645, i64 %t620)
  %t647 = getelementptr i8, ptr %t645, i64 %t633
  call void @olang_textcopy(ptr %t647, ptr %t635, i64 %t636)
  %t648 = getelementptr i8, ptr %t647, i64 %t636
  call void @olang_textcopy(ptr %t648, ptr %t639, i64 %t640)
  %t649 = insertvalue { i64, ptr } undef, i64 %t641, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t642, 1
  %t652 = extractvalue { i64, ptr } %t650, 0
  %t653 = extractvalue { i64, ptr } %t650, 1
  %t654 = mul i64 %t652, 1
  %t655 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t654)
  call void @llvm.memcpy.p0.p0.i64(ptr %t655, ptr %t653, i64 %t654, i1 false)
  %t656 = insertvalue { i64, ptr } undef, i64 %t652, 0
  %t657 = insertvalue { i64, ptr } %t656, ptr %t655, 1
  %t660 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t618, { i64, ptr } %t657)
  store { i64, ptr } %t660, ptr %l235
  br label %bb80
bb80:
  %t661 = load ptr, ptr %lp20
  %t662 = load { i64, ptr }, ptr %t661, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t662, 0
  %t664 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t665 = extractvalue { i64, ptr } %t664, 0
  store i64 %t665, ptr %l237, !tbaa !24
  %t667 = load i64, ptr %l237, !tbaa !24
  %t668 = icmp eq i64 %t663, %t667
  br i1 %t668, label %bb81, label %bb82
bb81:
  %t670 = load ptr, ptr %lp20
  %t671 = getelementptr { i64, ptr }, ptr %t670, i32 0, i32 1
  %t672 = load ptr, ptr %t671, !tbaa !27
  %t673 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t674 = load ptr, ptr %t673, !tbaa !27
  %t675 = load i64, ptr %l237, !tbaa !24
  %t676 = mul i64 %t675, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t672, ptr %t674, i64 %t676, i1 false)
  br label %bb83
bb82:
  %t677 = load { i64, ptr }, ptr %l235, !tbaa !27
  %t678 = load ptr, ptr %lp20
  store { i64, ptr } %t677, ptr %t678, !tbaa !27
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s17)
  br label %bb84
bb84:
  %t679 = load i64, ptr %l25, !tbaa !24
  %t681 = add i64 %t679, 1
  store i64 %t681, ptr %l25, !tbaa !24
  br label %bb74
bb85:
  %t683 = load ptr, ptr %lp20
  %t684 = load { i64, ptr }, ptr %t683, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t684, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2epadTo(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [7 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i64
  %l13 = alloca i64
  %rv = alloca i64
  store { i64, [7 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t8, ptr %l2
  %t10 = getelementptr { i64, [7 x i64] }, ptr %l1, i32 0, i32 1
  %t11 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11
  store i32 %t12, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t16 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load { i64, [2 x i64] }, ptr %l2
  %t19 = load i32, ptr %l3, !tbaa !23
  %t23 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t17, { i64, [2 x i64] } %t18, i32 %t19)
  store i64 %t23, ptr %l13
  br label %bb4
bb4:
  %t24 = load i64, ptr %l13, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_496cd21b134a4626_34cb2ee199c6502a)
  unreachable
bb10:
  %t25 = load i64, ptr %l4, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2equoted(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t4, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d173, i32 0, i32 1) })
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:fnEm", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d174, i32 0, i32 1) })
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:fnEm", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t14, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d175, i32 0, i32 1) })
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t23 = extractvalue { i64, ptr } %t17, 1
  %t24 = extractvalue { i64, ptr } %t17, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d177, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d177, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t30 = extractvalue { i64, ptr } %t18, 1
  %t31 = extractvalue { i64, ptr } %t18, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d178, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d178, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t37 = call i64 @__olang_fmt_i64(ptr null, i64 %t19)
  %t38 = add i64 %t35, %t37
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @olang_textcopy(ptr %t42, ptr %t20, i64 %t21)
  %t43 = getelementptr i8, ptr %t42, i64 %t21
  call void @olang_textcopy(ptr %t43, ptr %t23, i64 %t24)
  %t44 = getelementptr i8, ptr %t43, i64 %t24
  call void @olang_textcopy(ptr %t44, ptr %t26, i64 %t27)
  %t45 = getelementptr i8, ptr %t44, i64 %t27
  call void @olang_textcopy(ptr %t45, ptr %t30, i64 %t31)
  %t46 = getelementptr i8, ptr %t45, i64 %t31
  call void @olang_textcopy(ptr %t46, ptr %t33, i64 %t34)
  %t47 = getelementptr i8, ptr %t46, i64 %t34
  %t48 = call i64 @__olang_fmt_i64(ptr %t47, i64 %t19)
  %t49 = getelementptr i8, ptr %t47, i64 %t37
  call void @olang_textcopy(ptr %t49, ptr %t39, i64 %t40)
  %t50 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t42, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t61 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t16, { i64, ptr } %t58)
  store { i64, ptr } %t61, ptr %l19
  br label %bb4
bb4:
  %t62 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t62, ptr %l5, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t69 = extractvalue { i64, ptr } %t64, 1
  %t70 = extractvalue { i64, ptr } %t64, 0
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d181, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d181, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = extractvalue { i64, ptr } %t65, 1
  %t77 = extractvalue { i64, ptr } %t65, 0
  %t78 = add i64 %t74, %t77
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t66, i64 %t67)
  %t83 = getelementptr i8, ptr %t82, i64 %t67
  call void @olang_textcopy(ptr %t83, ptr %t69, i64 %t70)
  %t84 = getelementptr i8, ptr %t83, i64 %t70
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  call void @olang_textcopy(ptr %t85, ptr %t76, i64 %t77)
  %t86 = getelementptr i8, ptr %t85, i64 %t77
  call void @olang_textcopy(ptr %t86, ptr %t79, i64 %t80)
  %t87 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t82, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = extractvalue { i64, ptr } %t88, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t98 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t63, { i64, ptr } %t95)
  store { i64, ptr } %t98, ptr %l25
  br label %bb5
bb5:
  %t99 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t108 = extractvalue { i64, ptr } %t99, 1
  %t109 = extractvalue { i64, ptr } %t99, 0
  %t110 = add i64 %t106, %t109
  %t111 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t115 = extractvalue { i64, ptr } %t102, 1
  %t116 = extractvalue { i64, ptr } %t102, 0
  %t117 = add i64 %t113, %t116
  %t118 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t122 = extractvalue { i64, ptr } %t103, 1
  %t123 = extractvalue { i64, ptr } %t103, 0
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t129 = call i64 @__olang_fmt_i64(ptr null, i64 %t104)
  %t130 = add i64 %t127, %t129
  %t131 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t133 = add i64 %t130, %t132
  %t134 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t133)
  call void @olang_textcopy(ptr %t134, ptr %t105, i64 %t106)
  %t135 = getelementptr i8, ptr %t134, i64 %t106
  call void @olang_textcopy(ptr %t135, ptr %t108, i64 %t109)
  %t136 = getelementptr i8, ptr %t135, i64 %t109
  call void @olang_textcopy(ptr %t136, ptr %t111, i64 %t112)
  %t137 = getelementptr i8, ptr %t136, i64 %t112
  call void @olang_textcopy(ptr %t137, ptr %t115, i64 %t116)
  %t138 = getelementptr i8, ptr %t137, i64 %t116
  call void @olang_textcopy(ptr %t138, ptr %t118, i64 %t119)
  %t139 = getelementptr i8, ptr %t138, i64 %t119
  call void @olang_textcopy(ptr %t139, ptr %t122, i64 %t123)
  %t140 = getelementptr i8, ptr %t139, i64 %t123
  call void @olang_textcopy(ptr %t140, ptr %t125, i64 %t126)
  %t141 = getelementptr i8, ptr %t140, i64 %t126
  %t142 = call i64 @__olang_fmt_i64(ptr %t141, i64 %t104)
  %t143 = getelementptr i8, ptr %t141, i64 %t129
  call void @olang_textcopy(ptr %t143, ptr %t131, i64 %t132)
  %t144 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t134, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = extractvalue { i64, ptr } %t145, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t155 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t100, { i64, ptr } %t152)
  store { i64, ptr } %t155, ptr %l33
  br label %bb6
bb6:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t159 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t162 = extractvalue { i64, ptr } %t157, 1
  %t163 = extractvalue { i64, ptr } %t157, 0
  %t164 = add i64 %t160, %t163
  %t165 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t169 = extractvalue { i64, ptr } %t158, 1
  %t170 = extractvalue { i64, ptr } %t158, 0
  %t171 = add i64 %t167, %t170
  %t172 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t174 = add i64 %t171, %t173
  %t175 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t174)
  call void @olang_textcopy(ptr %t175, ptr %t159, i64 %t160)
  %t176 = getelementptr i8, ptr %t175, i64 %t160
  call void @olang_textcopy(ptr %t176, ptr %t162, i64 %t163)
  %t177 = getelementptr i8, ptr %t176, i64 %t163
  call void @olang_textcopy(ptr %t177, ptr %t165, i64 %t166)
  %t178 = getelementptr i8, ptr %t177, i64 %t166
  call void @olang_textcopy(ptr %t178, ptr %t169, i64 %t170)
  %t179 = getelementptr i8, ptr %t178, i64 %t170
  call void @olang_textcopy(ptr %t179, ptr %t172, i64 %t173)
  %t180 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t175, 1
  %t183 = extractvalue { i64, ptr } %t181, 0
  %t184 = extractvalue { i64, ptr } %t181, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t156, { i64, ptr } %t188)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca [1 x i8]
  %l45 = alloca i64
  %l48 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca i64
  %l79 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l88 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t7, i32 %a2)
  store { i64, ptr } %t13, ptr %l24
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t14, ptr %l5, !tbaa !27
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t17 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t20 = extractvalue { i64, ptr } %t16, 1
  %t21 = extractvalue { i64, ptr } %t16, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t17, i64 %t18)
  %t27 = getelementptr i8, ptr %t26, i64 %t18
  call void @olang_textcopy(ptr %t27, ptr %t20, i64 %t21)
  %t28 = getelementptr i8, ptr %t27, i64 %t21
  call void @olang_textcopy(ptr %t28, ptr %t23, i64 %t24)
  %t29 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t26, 1
  %t32 = extractvalue { i64, ptr } %t30, 0
  %t33 = extractvalue { i64, ptr } %t30, 1
  %t34 = mul i64 %t32, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t34)
  call void @llvm.memcpy.p0.p0.i64(ptr %t35, ptr %t33, i64 %t34, i1 false)
  %t36 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  %t40 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t15, { i64, ptr } %t37)
  store { i64, ptr } %t40, ptr %l29
  br label %bb2
bb2:
  %t41 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t41, ptr %l6, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t47 = extractvalue { i64, ptr } %t43, 1
  %t48 = extractvalue { i64, ptr } %t43, 0
  %t49 = add i64 %t45, %t48
  %t50 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t52 = add i64 %t49, %t51
  %t53 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t52)
  call void @olang_textcopy(ptr %t53, ptr %t44, i64 %t45)
  %t54 = getelementptr i8, ptr %t53, i64 %t45
  call void @olang_textcopy(ptr %t54, ptr %t47, i64 %t48)
  %t55 = getelementptr i8, ptr %t54, i64 %t48
  call void @olang_textcopy(ptr %t55, ptr %t50, i64 %t51)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t53, 1
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t60 = extractvalue { i64, ptr } %t57, 1
  %t61 = mul i64 %t59, 1
  %t62 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t61)
  call void @llvm.memcpy.p0.p0.i64(ptr %t62, ptr %t60, i64 %t61, i1 false)
  %t63 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  %t67 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t42, { i64, ptr } %t64)
  store { i64, ptr } %t67, ptr %l34
  br label %bb3
bb3:
  %t68 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t68, ptr %l7, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d195, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t69, ptr %l36, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 1, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %l37, 1
  store { i64, ptr } %t75, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t77, 0
  store i64 %t79, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t81 = load i64, ptr %l10, !tbaa !24
  %t82 = load i64, ptr %l9, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb4, label %bb5
bb4:
  %t87 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb9
bb6:
  %t91 = load i64, ptr %l10, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l11, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l11, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l48, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb8
bb8:
  %t107 = load i64, ptr %l48, !tbaa !24
  store i64 %t107, ptr %l45, !tbaa !24
  br label %bb9
bb9:
  %t108 = load i64, ptr %l45, !tbaa !24
  store i64 %t108, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t109 = load i64, ptr %l13, !tbaa !24
  %t110 = load i64, ptr %l12, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb12:
  br label %bb13
bb13:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l14, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/emit:fnEm", ptr %t127, i32 0, i32 0
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t132, ptr %l69, !tbaa !27
  %t133 = load i64, ptr %l14, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i32, ptr %t136, i64 %t133
  %t138 = load i32, ptr %t137, !tbaa !33
  %t142 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %t130, i32 %a3, i32 %t138)
  store i64 %t142, ptr %l72
  br label %bb14
bb14:
  %t143 = load i64, ptr %l72, !tbaa !24
  store i64 %t143, ptr %l15, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t146 = load i64, ptr %l14, !tbaa !24
  %t148 = add i64 %t146, 1
  %t149 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t152 = extractvalue { i64, ptr } %t145, 1
  %t153 = extractvalue { i64, ptr } %t145, 0
  %t154 = add i64 %t150, %t153
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t159 = call i64 @__olang_fmt_i64(ptr null, i64 %t148)
  %t160 = add i64 %t157, %t159
  %t161 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t160)
  call void @olang_textcopy(ptr %t161, ptr %t149, i64 %t150)
  %t162 = getelementptr i8, ptr %t161, i64 %t150
  call void @olang_textcopy(ptr %t162, ptr %t152, i64 %t153)
  %t163 = getelementptr i8, ptr %t162, i64 %t153
  call void @olang_textcopy(ptr %t163, ptr %t155, i64 %t156)
  %t164 = getelementptr i8, ptr %t163, i64 %t156
  %t165 = call i64 @__olang_fmt_i64(ptr %t164, i64 %t148)
  %t166 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t161, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t177 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s4, ptr %s4, ptr %t144, { i64, ptr } %t174)
  store { i64, ptr } %t177, ptr %l79
  br label %bb15
bb15:
  %t178 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l15, !tbaa !24
  %t182 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t183 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t186 = extractvalue { i64, ptr } %t178, 1
  %t187 = extractvalue { i64, ptr } %t178, 0
  %t188 = add i64 %t184, %t187
  %t189 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t191 = add i64 %t188, %t190
  %t193 = call i64 @__olang_fmt_i64(ptr null, i64 %t181)
  %t194 = add i64 %t191, %t193
  %t195 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t199 = extractvalue { i64, ptr } %t182, 1
  %t200 = extractvalue { i64, ptr } %t182, 0
  %t201 = add i64 %t197, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t183, i64 %t184)
  %t203 = getelementptr i8, ptr %t202, i64 %t184
  call void @olang_textcopy(ptr %t203, ptr %t186, i64 %t187)
  %t204 = getelementptr i8, ptr %t203, i64 %t187
  call void @olang_textcopy(ptr %t204, ptr %t189, i64 %t190)
  %t205 = getelementptr i8, ptr %t204, i64 %t190
  %t206 = call i64 @__olang_fmt_i64(ptr %t205, i64 %t181)
  %t207 = getelementptr i8, ptr %t205, i64 %t193
  call void @olang_textcopy(ptr %t207, ptr %t195, i64 %t196)
  %t208 = getelementptr i8, ptr %t207, i64 %t196
  call void @olang_textcopy(ptr %t208, ptr %t199, i64 %t200)
  %t209 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t202, 1
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = extractvalue { i64, ptr } %t210, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t220 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t179, { i64, ptr } %t217)
  store { i64, ptr } %t220, ptr %l86
  br label %bb16
bb16:
  %t221 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  %t223 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  store i64 %t224, ptr %l88, !tbaa !24
  %t226 = load i64, ptr %l88, !tbaa !24
  %t227 = icmp eq i64 %t222, %t226
  br i1 %t227, label %bb17, label %bb18
bb17:
  %t229 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t232 = load ptr, ptr %t231, !tbaa !27
  %t233 = load i64, ptr %l88, !tbaa !24
  %t234 = mul i64 %t233, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t230, ptr %t232, i64 %t234, i1 false)
  br label %bb19
bb18:
  %t235 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t235, ptr %l8, !tbaa !27
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s4)
  br label %bb20
bb20:
  %t236 = load i64, ptr %l13, !tbaa !24
  %t238 = add i64 %t236, 1
  store i64 %t238, ptr %l13, !tbaa !24
  br label %bb10
bb21:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t242 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d200, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d200, i32 0, i32 1) }, 0
  %t245 = extractvalue { i64, ptr } %t241, 1
  %t246 = extractvalue { i64, ptr } %t241, 0
  %t247 = add i64 %t243, %t246
  %t248 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d201, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d201, i32 0, i32 1) }, 0
  %t250 = add i64 %t247, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t242, i64 %t243)
  %t252 = getelementptr i8, ptr %t251, i64 %t243
  call void @olang_textcopy(ptr %t252, ptr %t245, i64 %t246)
  %t253 = getelementptr i8, ptr %t252, i64 %t246
  call void @olang_textcopy(ptr %t253, ptr %t248, i64 %t249)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t251, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  %t265 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t240, { i64, ptr } %t262)
  store { i64, ptr } %t265, ptr %l96
  br label %bb22
bb22:
  %t266 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t266, ptr %l17, !tbaa !27
  %t267 = load ptr, ptr %l0, !tbaa !29
  store ptr %t267, ptr %l97, !tbaa !29
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t270 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d202, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d202, i32 0, i32 1) }, 0
  %t273 = extractvalue { i64, ptr } %t269, 1
  %t274 = extractvalue { i64, ptr } %t269, 0
  %t275 = add i64 %t271, %t274
  %t276 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) }, 0
  %t278 = add i64 %t275, %t277
  %t279 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t278)
  call void @olang_textcopy(ptr %t279, ptr %t270, i64 %t271)
  %t280 = getelementptr i8, ptr %t279, i64 %t271
  call void @olang_textcopy(ptr %t280, ptr %t273, i64 %t274)
  %t281 = getelementptr i8, ptr %t280, i64 %t274
  call void @olang_textcopy(ptr %t281, ptr %t276, i64 %t277)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t279, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = extractvalue { i64, ptr } %t283, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t293 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t268, { i64, ptr } %t290)
  store { i64, ptr } %t293, ptr %l102
  br label %bb23
bb23:
  %t294 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t295 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t297 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = add i64 %t296, %t299
  %t301 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t302 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t303 = add i64 %t300, %t302
  %t305 = extractvalue { i64, ptr } %t294, 1
  %t306 = extractvalue { i64, ptr } %t294, 0
  %t307 = add i64 %t303, %t306
  %t308 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t307)
  call void @olang_textcopy(ptr %t308, ptr %t295, i64 %t296)
  %t309 = getelementptr i8, ptr %t308, i64 %t296
  call void @olang_textcopy(ptr %t309, ptr %t298, i64 %t299)
  %t310 = getelementptr i8, ptr %t309, i64 %t299
  call void @olang_textcopy(ptr %t310, ptr %t301, i64 %t302)
  %t311 = getelementptr i8, ptr %t310, i64 %t302
  call void @olang_textcopy(ptr %t311, ptr %t305, i64 %t306)
  %t312 = insertvalue { i64, ptr } undef, i64 %t307, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t308, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = extractvalue { i64, ptr } %t313, 1
  %t317 = mul i64 %t315, 1
  %t318 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t317)
  call void @llvm.memcpy.p0.p0.i64(ptr %t318, ptr %t316, i64 %t317, i1 false)
  %t319 = insertvalue { i64, ptr } undef, i64 %t315, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  %t321 = load ptr, ptr %l97, !tbaa !29
  %t323 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t321, { i64, ptr } %t320)
  store { i64, ptr } %t323, ptr %l106
  br label %bb24
bb24:
  %t324 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t328 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t329 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t331 = extractvalue { i64, ptr } %t326, 1
  %t332 = extractvalue { i64, ptr } %t326, 0
  %t333 = add i64 %t329, %t332
  %t334 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t336 = add i64 %t333, %t335
  %t338 = extractvalue { i64, ptr } %t324, 1
  %t339 = extractvalue { i64, ptr } %t324, 0
  %t340 = add i64 %t336, %t339
  %t341 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t340)
  call void @olang_textcopy(ptr %t341, ptr %t328, i64 %t329)
  %t342 = getelementptr i8, ptr %t341, i64 %t329
  call void @olang_textcopy(ptr %t342, ptr %t331, i64 %t332)
  %t343 = getelementptr i8, ptr %t342, i64 %t332
  call void @olang_textcopy(ptr %t343, ptr %t334, i64 %t335)
  %t344 = getelementptr i8, ptr %t343, i64 %t335
  call void @olang_textcopy(ptr %t344, ptr %t338, i64 %t339)
  %t345 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t346 = insertvalue { i64, ptr } %t345, ptr %t341, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } %t346, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t356 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t325, { i64, ptr } %t353)
  store { i64, ptr } %t356, ptr %l112
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t357 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t357, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2esuspend(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2, %"compiler/mir:Range" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l3 = alloca %"compiler/mir:Range"
  %l6 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l16 = alloca { i64, [1 x i64] }
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i32
  %l76 = alloca i32
  %l102 = alloca { i64, [1 x i64] }
  %l111 = alloca i1
  %l113 = alloca i1
  %l117 = alloca i1
  %l119 = alloca i1
  %l124 = alloca %"compiler/mir:ScopeInfo"
  %l136 = alloca i64
  %l138 = alloca i64
  %l143 = alloca i64
  %l151 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l166 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l177 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:fnEm", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/mir:Fn", ptr %t13, i32 0, i32 1
  %t16 = load i32, ptr %t15, !tbaa !23
  %t18 = inttoptr i64 0 to ptr
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t18, ptr %t7, i32 %t16)
  store { i64, ptr } %t21, ptr %l33
  br label %bb1
bb1:
  %t22 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t22, ptr %l6, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:fnEm", ptr %t23, i32 0, i32 11
  %t26 = load i1, ptr %t25, !tbaa !21
  br i1 %t26, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l36, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/emit:fnEm", ptr %t30, i32 0, i32 29
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t33, 1
  %t38 = extractvalue { i64, ptr } %t33, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d209, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d209, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @olang_textcopy(ptr %t43, ptr %t34, i64 %t35)
  %t44 = getelementptr i8, ptr %t43, i64 %t35
  call void @olang_textcopy(ptr %t44, ptr %t37, i64 %t38)
  %t45 = getelementptr i8, ptr %t44, i64 %t38
  call void @olang_textcopy(ptr %t45, ptr %t40, i64 %t41)
  %t46 = insertvalue { i64, ptr } undef, i64 %t42, 0
  %t47 = insertvalue { i64, ptr } %t46, ptr %t43, 1
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t50 = extractvalue { i64, ptr } %t47, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  %t57 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t29, { i64, ptr } %t54)
  store { i64, ptr } %t57, ptr %l42
  br label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l51, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l52, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/emit:fnEm", ptr %t61, i32 0, i32 9
  %t64 = load i32, ptr %t63, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t60, i32 %t64)
  store { i64, ptr } %t67, ptr %l56
  br label %bb8
bb4:
  %t68 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l36, !tbaa !29
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %s1, ptr %t75, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d210, i32 0, i32 1) }, { i64, ptr } %t74, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store { i64, ptr } %t77, ptr %l44
  br label %bb5
bb5:
  %t78 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/emit:fnEm", ptr %t81, i32 0, i32 9
  %t84 = load i32, ptr %t83, !tbaa !23
  %t85 = load { i64, [4 x i64] }, ptr %l1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s1, ptr %s1, ptr %t79, { i64, ptr } %t78, i32 %t84, { i64, [4 x i64] } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d211, i32 0, i32 1) })
  br label %bb6
bb6:
  %t90 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s1, ptr %s1, ptr %s1, ptr %s1, ptr %t90, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d212, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d213, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d214, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb12
bb8:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, [4 x i64] }, ptr %l1
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/emit:fnEm", ptr %t94, i32 0, i32 9
  %t97 = load i32, ptr %t96, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s3, ptr %t92, { i64, [4 x i64] } %t93, i32 %t97)
  store { i64, ptr } %t101, ptr %l61
  br label %bb9
bb9:
  %t102 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t104 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = add i64 %t103, %t106
  %t108 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t110 = add i64 %t107, %t109
  %t111 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = add i64 %t110, %t113
  %t115 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t118 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = extractvalue { i64, ptr } %t118, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t102, i64 %t103)
  %t126 = getelementptr i8, ptr %t125, i64 %t103
  call void @olang_textcopy(ptr %t126, ptr %t105, i64 %t106)
  %t127 = getelementptr i8, ptr %t126, i64 %t106
  call void @olang_textcopy(ptr %t127, ptr %t108, i64 %t109)
  %t128 = getelementptr i8, ptr %t127, i64 %t109
  call void @olang_textcopy(ptr %t128, ptr %t112, i64 %t113)
  %t129 = getelementptr i8, ptr %t128, i64 %t113
  call void @olang_textcopy(ptr %t129, ptr %t115, i64 %t116)
  %t130 = getelementptr i8, ptr %t129, i64 %t116
  call void @olang_textcopy(ptr %t130, ptr %t119, i64 %t120)
  %t131 = getelementptr i8, ptr %t130, i64 %t120
  call void @olang_textcopy(ptr %t131, ptr %t122, i64 %t123)
  %t132 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t133 = insertvalue { i64, ptr } %t132, ptr %t125, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = extractvalue { i64, ptr } %t133, 1
  %t137 = mul i64 %t135, 1
  %t138 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t137)
  call void @llvm.memcpy.p0.p0.i64(ptr %t138, ptr %t136, i64 %t137, i1 false)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t138, 1
  %t141 = load ptr, ptr %l51, !tbaa !29
  %t143 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %s3, ptr %t141, { i64, ptr } %t140)
  store { i64, ptr } %t143, ptr %l64
  br label %bb10
bb10:
  %t144 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s3, ptr %s3, ptr %s3, ptr %t145, { i64, ptr } %t146, { i64, ptr } %t144, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d219, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  %t151 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %l68
  br label %bb13
bb13:
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l9
  store i32 0, ptr %l10, !tbaa !23
  %t153 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t154 = load i32, ptr %t153, !tbaa !23
  store i32 %t154, ptr %l11, !tbaa !23
  store i32 1, ptr %l12, !tbaa !23
  %t156 = load i32, ptr %l11, !tbaa !23
  %t157 = load i32, ptr %l10, !tbaa !23
  %t160 = icmp sgt i32 %t156, %t157
  br i1 %t160, label %bb14, label %bb15
bb14:
  %t162 = load i32, ptr %l12, !tbaa !23
  %t164 = icmp sgt i32 %t162, 0
  br i1 %t164, label %bb16, label %bb17
bb15:
  store i32 0, ptr %l73, !tbaa !23
  br label %bb19
bb16:
  %t166 = load i32, ptr %l11, !tbaa !23
  %t167 = load i32, ptr %l10, !tbaa !23
  %t170 = sub i32 %t166, %t167
  %t171 = load i32, ptr %l12, !tbaa !23
  %t174 = add i32 %t170, %t171
  %t176 = sub i32 %t174, 1
  %t177 = load i32, ptr %l12, !tbaa !23
  %t180 = sdiv i32 %t176, %t177
  store i32 %t180, ptr %l76, !tbaa !23
  br label %bb18
bb17:
  store i32 0, ptr %l76, !tbaa !23
  br label %bb18
bb18:
  %t182 = load i32, ptr %l76, !tbaa !23
  store i32 %t182, ptr %l73, !tbaa !23
  br label %bb19
bb19:
  %t183 = load i32, ptr %l73, !tbaa !23
  store i32 %t183, ptr %l13, !tbaa !23
  store i32 0, ptr %l14, !tbaa !23
  br label %bb20
bb20:
  %t184 = load i32, ptr %l14, !tbaa !23
  %t185 = load i32, ptr %l13, !tbaa !23
  %t188 = icmp slt i32 %t184, %t185
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb21, label %bb22
bb21:
  br label %bb48
bb22:
  br label %bb23
bb23:
  %t192 = load i32, ptr %l10, !tbaa !23
  %t193 = load i32, ptr %l14, !tbaa !23
  %t194 = load i32, ptr %l12, !tbaa !23
  %t197 = mul i32 %t193, %t194
  %t200 = add i32 %t192, %t197
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/emit:fnEm", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/mir:Fn", ptr %t205, i32 0, i32 12
  %t208 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 0
  %t209 = load i32, ptr %t208, !tbaa !23
  %t211 = sext i32 %t209 to i64
  %t214 = sext i32 %t200 to i64
  %t217 = add i64 %t211, %t214
  %t220 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t207, i64 %t217)
  store { i64, [1 x i64] } %t220, ptr %l102
  br label %bb24
bb24:
  %t221 = load { i64, [1 x i64] }, ptr %l102
  store { i64, [1 x i64] } %t221, ptr %l16
  %t222 = load { i64, [1 x i64] }, ptr %l16
  %t224 = extractvalue { i64, [1 x i64] } %t222, 0
  %t225 = icmp eq i64 %t224, 0
  br i1 %t225, label %bb25, label %bb26
bb25:
  %t227 = getelementptr { i64, [1 x i64] }, ptr %l16, i32 0, i32 1
  %t228 = getelementptr { i32 }, ptr %t227, i32 0, i32 0
  %t229 = load i32, ptr %t228
  store i32 %t229, ptr %l17, !tbaa !23
  br label %bb27
bb26:
  br label %bb41
bb27:
  %t231 = load i32, ptr %l17, !tbaa !23
  %t233 = sext i32 %t231 to i64
  store i64 %t233, ptr %l18, !tbaa !24
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/emit:fnEm", ptr %t235, i32 0, i32 25
  %t238 = load i64, ptr %l18, !tbaa !24
  %t241 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t237, i64 %t238)
  store i1 %t241, ptr %l111
  br label %bb28
bb28:
  %t242 = load i1, ptr %l111, !tbaa !21
  %t243 = xor i1 %t242, true
  br i1 %t243, label %bb29, label %bb30
bb29:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/emit:fnEm", ptr %t245, i32 0, i32 24
  %t248 = load i64, ptr %l18, !tbaa !24
  %t251 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t247, i64 %t248)
  store i1 %t251, ptr %l117
  br label %bb31
bb30:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb32
bb31:
  %t252 = load i1, ptr %l117, !tbaa !21
  %t253 = xor i1 %t252, true
  store i1 %t253, ptr %l113, !tbaa !21
  br label %bb32
bb32:
  %t255 = load i1, ptr %l113, !tbaa !21
  br i1 %t255, label %bb33, label %bb34
bb33:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/emit:fnEm", ptr %t256, i32 0, i32 1
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/mir:Fn", ptr %t259, i32 0, i32 8
  %t262 = load i64, ptr %l18, !tbaa !24
  %t265 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t261, i64 %t262)
  store %"compiler/mir:ScopeInfo" %t265, ptr %l124
  br label %bb35
bb34:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb36
bb35:
  %t266 = getelementptr %"compiler/mir:ScopeInfo", ptr %l124, i32 0, i32 0
  %t267 = load i32, ptr %t266, !range !{i32 0, i32 7}
  %t269 = trunc i64 6 to i32
  %t270 = icmp eq i32 %t267, %t269
  %t272 = xor i1 %t270, true
  store i1 %t272, ptr %l119, !tbaa !21
  br label %bb36
bb36:
  %t274 = load i1, ptr %l119, !tbaa !21
  br i1 %t274, label %bb37, label %bb38
bb37:
  %t275 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t275)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_97d51a883f8cc986_4828fb3e43690a82)
  unreachable
bb46:
  br label %bb47
bb47:
  %t278 = load i32, ptr %l14, !tbaa !23
  %t280 = add i32 %t278, 1
  store i32 %t280, ptr %l14, !tbaa !23
  br label %bb20
bb48:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/emit:fnEm", ptr %t282, i32 0, i32 0
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t287 = getelementptr %"compiler/emit:Emitter", ptr %t285, i32 0, i32 4
  %t288 = load i1, ptr %t287, !tbaa !21
  br i1 %t288, label %bb49, label %bb50
bb49:
  store ptr %l9, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb51
bb50:
  br label %bb60
bb51:
  %t291 = load i64, ptr %l20, !tbaa !24
  store i64 %t291, ptr %l136, !tbaa !24
  %t292 = load ptr, ptr %l19, !tbaa !29
  %t294 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t292)
  store i64 %t294, ptr %l138
  br label %bb52
bb52:
  %t295 = load i64, ptr %l136, !tbaa !24
  %t296 = load i64, ptr %l138, !tbaa !24
  %t297 = icmp slt i64 %t295, %t296
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb53, label %bb54
bb53:
  br label %bb59
bb54:
  br label %bb55
bb55:
  %t301 = load ptr, ptr %l19, !tbaa !29
  %t302 = load i64, ptr %l20, !tbaa !24
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t301, i64 %t302)
  store i64 %t305, ptr %l143
  br label %bb56
bb56:
  %t306 = load i64, ptr %l143, !tbaa !24
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t310 = trunc i64 %t306 to i32
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %t307, i32 %t310)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t314 = load i64, ptr %l20, !tbaa !24
  %t316 = add i64 %t314, 1
  store i64 %t316, ptr %l20, !tbaa !24
  br label %bb51
bb59:
  br label %bb60
bb60:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t318, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d220, i32 0, i32 1) })
  store { i64, ptr } %t320, ptr %l151
  br label %bb61
bb61:
  %t321 = load { i64, ptr }, ptr %l151, !tbaa !27
  store { i64, ptr } %t321, ptr %l22, !tbaa !27
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t324 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t322, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d221, i32 0, i32 1) })
  store { i64, ptr } %t324, ptr %l153
  br label %bb62
bb62:
  %t325 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t325, ptr %l23, !tbaa !27
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t328 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s0, ptr %s0, ptr %t326, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d222, i32 0, i32 1) })
  store { i64, ptr } %t328, ptr %l155
  br label %bb63
bb63:
  %t329 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t329, ptr %l24, !tbaa !27
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t332 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t333 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t334 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t335 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t337 = extractvalue { i64, ptr } %t331, 1
  %t338 = extractvalue { i64, ptr } %t331, 0
  %t339 = add i64 %t335, %t338
  %t340 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t341 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t342 = add i64 %t339, %t341
  %t344 = extractvalue { i64, ptr } %t332, 1
  %t345 = extractvalue { i64, ptr } %t332, 0
  %t346 = add i64 %t342, %t345
  %t347 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t349 = add i64 %t346, %t348
  %t351 = extractvalue { i64, ptr } %t333, 1
  %t352 = extractvalue { i64, ptr } %t333, 0
  %t353 = add i64 %t349, %t352
  %t354 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t355 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t356 = add i64 %t353, %t355
  %t357 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t356)
  call void @olang_textcopy(ptr %t357, ptr %t334, i64 %t335)
  %t358 = getelementptr i8, ptr %t357, i64 %t335
  call void @olang_textcopy(ptr %t358, ptr %t337, i64 %t338)
  %t359 = getelementptr i8, ptr %t358, i64 %t338
  call void @olang_textcopy(ptr %t359, ptr %t340, i64 %t341)
  %t360 = getelementptr i8, ptr %t359, i64 %t341
  call void @olang_textcopy(ptr %t360, ptr %t344, i64 %t345)
  %t361 = getelementptr i8, ptr %t360, i64 %t345
  call void @olang_textcopy(ptr %t361, ptr %t347, i64 %t348)
  %t362 = getelementptr i8, ptr %t361, i64 %t348
  call void @olang_textcopy(ptr %t362, ptr %t351, i64 %t352)
  %t363 = getelementptr i8, ptr %t362, i64 %t352
  call void @olang_textcopy(ptr %t363, ptr %t354, i64 %t355)
  %t364 = insertvalue { i64, ptr } undef, i64 %t356, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t357, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = extractvalue { i64, ptr } %t365, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t330, { i64, ptr } %t372)
  br label %bb64
bb64:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t375, { i64, ptr } %t376)
  br label %bb65
bb65:
  %t379 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2erehold(ptr %v0, ptr %s0, ptr %t379, ptr %l9)
  br label %bb66
bb66:
  %t382 = load ptr, ptr %l0, !tbaa !29
  store ptr %t382, ptr %l166, !tbaa !29
  %t385 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s0, i32 %a2)
  store { i64, ptr } %t385, ptr %l168
  br label %bb67
bb67:
  %t386 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d227, i32 0, i32 1) }, 1
  %t387 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d227, i32 0, i32 1) }, 0
  %t388 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = extractvalue { i64, ptr } %t388, 0
  %t391 = add i64 %t387, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t386, i64 %t387)
  %t393 = getelementptr i8, ptr %t392, i64 %t387
  call void @olang_textcopy(ptr %t393, ptr %t389, i64 %t390)
  %t394 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t392, 1
  %t397 = extractvalue { i64, ptr } %t395, 0
  %t398 = extractvalue { i64, ptr } %t395, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  %t403 = load ptr, ptr %l166, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t403, { i64, ptr } %t402)
  br label %bb68
bb68:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s0, ptr %t405, { i64, ptr } %t406)
  br label %bb69
bb69:
  %t409 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2erehold(ptr %v0, ptr %s0, ptr %t409, ptr %l9)
  br label %bb70
bb70:
  %t412 = load ptr, ptr %l0, !tbaa !29
  store ptr %t412, ptr %l175, !tbaa !29
  %t415 = call { i64, ptr } @compiler_2femit_2eblockName(ptr %s0, i32 %a4)
  store { i64, ptr } %t415, ptr %l177
  br label %bb71
bb71:
  %t416 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t418 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = add i64 %t417, %t420
  %t422 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t421)
  call void @olang_textcopy(ptr %t422, ptr %t416, i64 %t417)
  %t423 = getelementptr i8, ptr %t422, i64 %t417
  call void @olang_textcopy(ptr %t423, ptr %t419, i64 %t420)
  %t424 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t422, 1
  %t427 = extractvalue { i64, ptr } %t425, 0
  %t428 = extractvalue { i64, ptr } %t425, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t429)
  call void @llvm.memcpy.p0.p0.i64(ptr %t430, ptr %t428, i64 %t429, i1 false)
  %t431 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  %t433 = load ptr, ptr %l175, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t433, { i64, ptr } %t432)
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPop(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t7 = sext i32 %a1 to i64
  %t8 = call i64 @__olang_fmt_i64(ptr null, i64 %t7)
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  %t15 = call i64 @__olang_fmt_i64(ptr %t14, i64 %t7)
  %t16 = getelementptr i8, ptr %t14, i64 %t8
  call void @olang_textcopy(ptr %t16, ptr %t10, i64 %t11)
  %t17 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t13, 1
  %t20 = extractvalue { i64, ptr } %t18, 0
  %t21 = extractvalue { i64, ptr } %t18, 1
  %t22 = mul i64 %t20, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @llvm.memcpy.p0.p0.i64(ptr %t23, ptr %t21, i64 %t22, i1 false)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t28 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t2, { i64, ptr } %t25)
  store { i64, ptr } %t28, ptr %l8
  br label %bb1
bb1:
  %t29 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  %t31 = extractvalue { i64, ptr } %t29, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t36, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d231, i32 0, i32 1) }, { i64, ptr } %t35, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) })
  store { i64, ptr } %t38, ptr %l10
  br label %bb2
bb2:
  %t39 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t40, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d232, i32 0, i32 1) }, { i64, ptr } %t39, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d233, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d131, i32 0, i32 1) })
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2evalueTarget(ptr %v0, ptr %a0, %"compiler/mir:Task" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Task"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l20 = alloca %"compiler/mir:Lvalue"
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l28 = alloca i1
  %l31 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Task" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 7
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  %t5 = icmp eq i32 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/emit:fnEm", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l3, !tbaa !29
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/emit:fnEm", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/mir:Fn", ptr %t21, i32 0, i32 13
  %t24 = getelementptr %"compiler/mir:Task", ptr %l1, i32 0, i32 3
  %t25 = getelementptr %"compiler/mir:Range", ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t32 = add i64 %t28, %a2
  %t35 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t23, i64 %t32)
  store %"compiler/mir:Lvalue" %t35, ptr %l20
  br label %bb4
bb4:
  %t36 = load ptr, ptr %l12, !tbaa !29
  %t37 = load %"compiler/mir:Lvalue", ptr %l20
  %t38 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %t36, %"compiler/mir:Lvalue" %t37)
  store i32 %t38, ptr %l21
  br label %bb5
bb5:
  %t39 = load ptr, ptr %l11, !tbaa !29
  %t40 = load i32, ptr %l21, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t41, ptr %l22
  br label %bb6
bb6:
  %t42 = load i32, ptr %l22, !tbaa !23
  store i32 %t42, ptr %l4, !tbaa !23
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t44 = load i32, ptr %l4, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l25
  br label %bb7
bb7:
  %t48 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t50 = trunc i64 19 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t54 = load i32, ptr %l4, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l31
  br label %bb10
bb9:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb11
bb10:
  %t58 = load i32, ptr %l31, !tbaa !23
  %t59 = icmp eq i32 %t58, 0
  store i1 %t59, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t61 = load i1, ptr %l28, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/emit:Object" @compiler_2femit_3aObject_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %rv = alloca %"compiler/emit:Object"
  br label %start
start:
  br label %bb0
bb0:
  %t8 = insertvalue %"compiler/emit:Object" undef, { i64, ptr } %a0, 0
  %t10 = insertvalue %"compiler/emit:Object" %t8, i32 %a1, 1
  %t12 = insertvalue %"compiler/emit:Object" %t10, { i64, ptr } %a2, 2
  %t14 = insertvalue %"compiler/emit:Object" %t12, i64 -1, 3
  store %"compiler/emit:Object" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/emit:Object", ptr %rv
  ret %"compiler/emit:Object" %rr
}

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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c".destruct" }>, align 8
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
@.d1 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c".lambda" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d3 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".init" }>, align 8
@.d4 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c".contract" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".adapter" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".k" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"global" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"constant" }>, align 8
@.d11 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"internal constant" }>, align 8
@.d12 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"internal global" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d14 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d18 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" x i8] c\22" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\22" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".k" }>, align 8
@.d25 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".k" }>, align 8
@.d26 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d28 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"ptr getelementptr (i8, ptr " }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" <{ " }>, align 8
@.d33 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" }> <{ " }>, align 8
@.d34 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c" }>, align " }>, align 8
@.d35 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d36 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" (" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d44 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"not lowered: " }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d45 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"entry:\0A  ret void\0A}\0A\0A" }>, align 8
@.d46 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_check_failed" }>, align 8
@.d47 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not lowered" }>, align 8
@.d48 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"not lowered" }>, align 8
@.d49 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d50 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" alwaysinline" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".walk" }>, align 8
@.d52 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"G_2e" }>, align 8
@.d53 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"the runtime's text (std/runtime/runtime.ll could not be filled in)" }>, align 8
@olang_2esole_2ecompiler__2femit__2ecompiler__2femit__3aEmitter__2eruntimeItems_2elocal_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_region_drop(ptr) noinline
@.d58 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"define " }>, align 8
@.d62 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d63 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"%olang.builder = type { ptr, i64, i64, ptr, ptr }\0A" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e57 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d64 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_san_init" }>, align 8
@.d65 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"  call void @__olang_san_init()\0A" }>, align 8
@.d66 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"entry:\0A" }>, align 8
@.d67 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %env" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d69 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr %out" }>, align 8
@.d70 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d71 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"  %tail = alloca %olang.scope\0A  store %olang.scope zeroinitializer, ptr %tail\0A" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d73 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %v" }>, align 8
@.d74 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ptr %tail" }>, align 8
@.d75 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr null" }>, align 8
@.d76 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_prog_scope" }>, align 8
@.d77 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_prog_scope = external thread_local(initialexec) global ptr" }>, align 8
@.d78 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"  %g" }>, align 8
@.d79 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c" = load ptr, ptr @__olang_prog_scope\0A" }>, align 8
@.d80 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %g" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d82 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %a" }>, align 8
@.d83 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"ptr %a" }>, align 8
@.d84 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"c, ptr %a" }>, align 8
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d86 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
@.d87 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"  call void @__olang_scope_close(ptr %tail)\0A" }>, align 8
@.d88 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d89 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d90 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"  call void @" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d92 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d93 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d94 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"  ret void\0A}\0A\0A" }>, align 8
@.d95 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"  ret i32 0\0A}\0A\0A" }>, align 8
@.d96 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  %r = call " }>, align 8
@.d97 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d99 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d100 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"  ret " }>, align 8
@.d101 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %r\0A}\0A\0A" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d103 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%r" }>, align 8
@.d104 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d105 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" %r, 0" }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d108 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret i32 " }>, align 8
@.d109 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d110 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" %r, 1" }>, align 8
@.d111 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%r" }>, align 8
@.d112 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d114 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d115 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" %r, 1" }>, align 8
@.d116 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%r" }>, align 8
@.d117 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d118 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d120 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d122 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d124 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d125 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d126 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}\0A\0A" }>, align 8
@.d127 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d129 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d130 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d131 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d132 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d133 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d136 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d137 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"bitcast " }>, align 8
@.d138 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d139 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d140 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d141 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a constant element of a " }>, align 8
@.d142 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"zeroinitializer" }>, align 8
@.d143 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d144 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"{ i64 " }>, align 8
@.d145 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d147 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"lshr i" }>, align 8
@.d148 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d149 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d150 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"trunc i" }>, align 8
@.d151 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d152 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" to i" }>, align 8
@.d153 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d154 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"zext i" }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d156 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" to i" }>, align 8
@.d157 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d158 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d159 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d160 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d161 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"zext i" }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d163 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d164 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"trunc i" }>, align 8
@.d165 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d166 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i32" }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d168 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"icmp eq i" }>, align 8
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d170 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d171 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d172 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32 " }>, align 8
@.d173 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_rd_quote" }>, align 8
@.d174 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_sb_room" }>, align 8
@.d175 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_sb_add" }>, align 8
@.d176 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"call i64 @__olang_rd_quote(ptr null, i64 0, ptr " }>, align 8
@.d177 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d178 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i8 " }>, align 8
@.d179 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d180 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_sb_room(ptr " }>, align 8
@.d181 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d182 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d183 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call i64 @__olang_rd_quote(ptr " }>, align 8
@.d184 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i64 0, ptr " }>, align 8
@.d185 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d186 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i8 " }>, align 8
@.d187 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d188 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @__olang_sb_add(ptr " }>, align 8
@.d189 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d190 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d191 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"lshr i32 " }>, align 8
@.d192 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 16" }>, align 8
@.d193 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"and i32 " }>, align 8
@.d194 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", 65535" }>, align 8
@.d195 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d196 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d197 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d198 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d199 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32 " }>, align 8
@.d200 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq i32 " }>, align 8
@.d201 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d202 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shl i32 " }>, align 8
@.d203 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", 16" }>, align 8
@.d204 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"or i32 " }>, align 8
@.d205 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d206 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d207 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d208 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d209 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", ptr %prom, i32 0, i32 2" }>, align 8
@.d210 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d211 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d212 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d213 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d214 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d215 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d216 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" zeroinitializer, " }>, align 8
@.d217 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d219 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rv" }>, align 8
@.d220 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"call i8 @llvm.coro.suspend(token none, i1 false)" }>, align 8
@.d221 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"gen.res" }>, align 8
@.d222 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"gen.drop" }>, align 8
@.d223 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"switch i8 " }>, align 8
@.d224 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c", label %gen.end [ i8 0, label %" }>, align 8
@.d225 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" i8 1, label %" }>, align 8
@.d226 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d227 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d228 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d229 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"getelementptr %olang.unwind, ptr %u" }>, align 8
@.d230 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 0" }>, align 8
@.d231 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d232 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d233 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"@__olang_unwind_top" }>, align 8
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
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstanceProfName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_708d0e5229213e92_b8dbbceffe09cee = external constant [0 x i8]
@olang_loc_adcc4a96e8e96893_813fe5cdd5223daf = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eemitAll(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2edbgTail(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eattributes(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eLen_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2eRef_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eLen_3cU8_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ehexByte(ptr %v0, i8 %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_672626b841abebed_e9d6bd273cfd5371 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclared(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2elinkFor(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGlobalInit(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2estub(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewalkStub(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewriteBody(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisGenFn(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestParts(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eEmbedded(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ef8ce655497c6e66_70bdfc36b0b8c4fa = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ealiased(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fruntime_2eText(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1, i1 %a2, i1 %a3, i1 %a4)
declare { i64, ptr } @compiler_2fruntime_2eDecls(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2edeclaredSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_afcb0129fb824946_88799b4b9f9e7b3a = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebf16Bits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { { i64, ptr }, { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstInit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare { { i64, ptr }, i64 } @compiler_2femit_2ecompiler_2femit_3afnEm_2econstGlobal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3)
@olang_loc_3de177096d03f952_4b04555d717d3dfe = external constant [0 x i8]
@olang_loc_a00373ca27d5619a_9315010cb9ead296 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ebmaskOf(i64 %a0)
@olang_loc_496cd21b134a4626_34cb2ee199c6502a = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_97d51a883f8cc986_4828fb3e43690a82 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2erehold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2femit_2eblockName(ptr %v0, i32 %a0)
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)

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
