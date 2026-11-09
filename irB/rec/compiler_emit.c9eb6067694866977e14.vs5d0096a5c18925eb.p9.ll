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
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/cabi:Way" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
define dso_local i64 @compiler_2femit_2ebmaskOf(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = shl i64 1, %t7
  %t10 = sub i64 %t8, 1
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eabiDiffers(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i32
  %l24 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = inttoptr i64 0 to ptr
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t9, ptr %t6, i32 %t7)
  store { i64, ptr } %t12, ptr %l9
  br label %bb1
bb1:
  %t13 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  %t15 = extractvalue { i64, ptr } %t13, 1
  %t16 = mul i64 %t14, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @llvm.memcpy.p0.p0.i64(ptr %t17, ptr %t15, i64 %t16, i1 false)
  %t18 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l10, !tbaa !27
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t23 = inttoptr i64 0 to ptr
  %t26 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t23, ptr %t20, i32 %t21)
  store { i64, ptr } %t26, ptr %l14
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 0
  %t29 = extractvalue { i64, ptr } %t27, 1
  %t30 = mul i64 %t28, 1
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @llvm.memcpy.p0.p0.i64(ptr %t31, ptr %t29, i64 %t30, i1 false)
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t31, 1
  %t34 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t34, { i64, ptr } %t33)
  store i1 %t36, ptr %l16
  br label %bb3
bb3:
  %t37 = load i1, ptr %l16, !tbaa !21
  %t38 = xor i1 %t37, true
  br i1 %t38, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb5:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t41 = load i32, ptr %l1, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l21
  br label %bb6
bb6:
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l24
  br label %bb7
bb7:
  %t50 = load i32, ptr %l21, !tbaa !23
  %t51 = load i32, ptr %l24, !tbaa !23
  %t52 = icmp ne i32 %t50, %t51
  store i1 %t52, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load i1, ptr %l18, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 59
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = add i64 %t9, 1
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 59
  store i64 %t11, ptr %t14, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgPair(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i64
  %l35 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca i64
  %l76 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load i64, ptr %l14, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/emit:Emitter", ptr %t5, i32 0, i32 66
  %t8 = load i32, ptr %l1, !tbaa !23
  %t10 = sext i32 %t8 to i64
  %t11 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t7, i64 %t10, i64 %t11)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l21
  br label %bb3
bb3:
  %t18 = load i64, ptr %l21, !tbaa !24
  store i64 %t18, ptr %l7, !tbaa !24
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t23 = icmp ne i32 %t19, %t20
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l27
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t30 = load i64, ptr %l27, !tbaa !24
  store i64 %t30, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l29
  br label %bb8
bb8:
  %t34 = load i64, ptr %l29, !tbaa !24
  store i64 %t34, ptr %l8, !tbaa !24
  %t35 = load i32, ptr %l5, !tbaa !23
  %t36 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t39 = icmp ne i32 %t35, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l35
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t46 = load i64, ptr %l35, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l37
  br label %bb12
bb12:
  %t50 = load i64, ptr %l37, !tbaa !24
  store i64 %t50, ptr %l8, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l38, !tbaa !29
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l39, !tbaa !24
  %t53 = load i64, ptr %l9, !tbaa !24
  %t55 = icmp sge i64 %t53, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t57)
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t58, i64 %t59)
  %t64 = getelementptr i8, ptr %t63, i64 %t59
  %t65 = call i64 @__olang_fmt_i64(ptr %t64, i64 %t57)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t63, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  store { i64, ptr } %t74, ptr %l42, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l42, !tbaa !27
  br label %bb15
bb15:
  %t76 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t78 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = extractvalue { i64, ptr } %t78, 0
  %t81 = add i64 %t77, %t80
  %t82 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t76, i64 %t77)
  %t86 = getelementptr i8, ptr %t85, i64 %t77
  call void @olang_textcopy(ptr %t86, ptr %t79, i64 %t80)
  %t87 = getelementptr i8, ptr %t86, i64 %t80
  call void @olang_textcopy(ptr %t87, ptr %t82, i64 %t83)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t85, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load ptr, ptr %l38, !tbaa !29
  %t98 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s2, ptr %t97, i64 %t98, { i64, ptr } %t96)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l49
  br label %bb18
bb18:
  %t103 = load i64, ptr %l49, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t104)
  store i64 %t106, ptr %l51
  br label %bb19
bb19:
  %t107 = load i64, ptr %l51, !tbaa !24
  store i64 %t107, ptr %l11, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l53
  br label %bb20
bb20:
  %t111 = load i64, ptr %l53, !tbaa !24
  store i64 %t111, ptr %l12, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t117 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t119 = extractvalue { i64, ptr } %a2, 1
  %t120 = extractvalue { i64, ptr } %a2, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t126 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t127 = add i64 %t124, %t126
  %t128 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t130 = add i64 %t127, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t116, i64 %t117)
  %t132 = getelementptr i8, ptr %t131, i64 %t117
  call void @olang_textcopy(ptr %t132, ptr %t119, i64 %t120)
  %t133 = getelementptr i8, ptr %t132, i64 %t120
  call void @olang_textcopy(ptr %t133, ptr %t122, i64 %t123)
  %t134 = getelementptr i8, ptr %t133, i64 %t123
  %t135 = call i64 @__olang_fmt_i64(ptr %t134, i64 %t115)
  %t136 = getelementptr i8, ptr %t134, i64 %t126
  call void @olang_textcopy(ptr %t136, ptr %t128, i64 %t129)
  %t137 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t131, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t112, i64 %t113, { i64, ptr } %t145)
  br label %bb21
bb21:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i64, ptr %l11, !tbaa !24
  %t152 = load i64, ptr %l8, !tbaa !24
  %t153 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t154 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t156 = extractvalue { i64, ptr } %a4, 1
  %t157 = extractvalue { i64, ptr } %a4, 0
  %t158 = add i64 %t154, %t157
  %t159 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t163 = call i64 @__olang_fmt_i64(ptr null, i64 %t152)
  %t164 = add i64 %t161, %t163
  %t165 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t166 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t167 = add i64 %t164, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t153, i64 %t154)
  %t169 = getelementptr i8, ptr %t168, i64 %t154
  call void @olang_textcopy(ptr %t169, ptr %t156, i64 %t157)
  %t170 = getelementptr i8, ptr %t169, i64 %t157
  call void @olang_textcopy(ptr %t170, ptr %t159, i64 %t160)
  %t171 = getelementptr i8, ptr %t170, i64 %t160
  %t172 = call i64 @__olang_fmt_i64(ptr %t171, i64 %t152)
  %t173 = getelementptr i8, ptr %t171, i64 %t163
  call void @olang_textcopy(ptr %t173, ptr %t165, i64 %t166)
  %t174 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t168, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t149, i64 %t150, { i64, ptr } %t182)
  br label %bb22
bb22:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l12, !tbaa !24
  %t188 = load i64, ptr %l10, !tbaa !24
  %t189 = load i64, ptr %l11, !tbaa !24
  %t190 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t193 = call i64 @__olang_fmt_i64(ptr null, i64 %t188)
  %t194 = add i64 %t191, %t193
  %t195 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t196 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t197 = add i64 %t194, %t196
  %t199 = call i64 @__olang_fmt_i64(ptr null, i64 %t189)
  %t200 = add i64 %t197, %t199
  %t201 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t203 = add i64 %t200, %t202
  %t204 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t203)
  call void @olang_textcopy(ptr %t204, ptr %t190, i64 %t191)
  %t205 = getelementptr i8, ptr %t204, i64 %t191
  %t206 = call i64 @__olang_fmt_i64(ptr %t205, i64 %t188)
  %t207 = getelementptr i8, ptr %t205, i64 %t193
  call void @olang_textcopy(ptr %t207, ptr %t195, i64 %t196)
  %t208 = getelementptr i8, ptr %t207, i64 %t196
  %t209 = call i64 @__olang_fmt_i64(ptr %t208, i64 %t189)
  %t210 = getelementptr i8, ptr %t208, i64 %t199
  call void @olang_textcopy(ptr %t210, ptr %t201, i64 %t202)
  %t211 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t204, 1
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t215 = extractvalue { i64, ptr } %t212, 1
  %t216 = mul i64 %t214, 1
  %t217 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t216)
  call void @llvm.memcpy.p0.p0.i64(ptr %t217, ptr %t215, i64 %t216, i1 false)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t217, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t186, i64 %t187, { i64, ptr } %t219)
  br label %bb23
bb23:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l72, !tbaa !29
  %t224 = load i64, ptr %l6, !tbaa !24
  store i64 %t224, ptr %l73, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i32, ptr %l1, !tbaa !23
  %t229 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %s0, ptr %t225, i32 %t226)
  store { i64, ptr } %t229, ptr %l76
  br label %bb24
bb24:
  %t230 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  %t232 = extractvalue { i64, ptr } %t230, 1
  %t233 = mul i64 %t231, 1
  %t234 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t233)
  call void @llvm.memcpy.p0.p0.i64(ptr %t234, ptr %t232, i64 %t233, i1 false)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = call { i64, ptr } @compiler_2femit_2eescape(ptr %s0, ptr %s0, { i64, ptr } %t236)
  store { i64, ptr } %t238, ptr %l78
  br label %bb25
bb25:
  %t239 = load i64, ptr %l12, !tbaa !24
  %t240 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t241 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t242 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = extractvalue { i64, ptr } %t242, 0
  %t245 = add i64 %t241, %t244
  %t246 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t247 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t248 = add i64 %t245, %t247
  %t250 = call i64 @__olang_fmt_i64(ptr null, i64 %t239)
  %t251 = add i64 %t248, %t250
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t254 = add i64 %t251, %t253
  %t255 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t254)
  call void @olang_textcopy(ptr %t255, ptr %t240, i64 %t241)
  %t256 = getelementptr i8, ptr %t255, i64 %t241
  call void @olang_textcopy(ptr %t256, ptr %t243, i64 %t244)
  %t257 = getelementptr i8, ptr %t256, i64 %t244
  call void @olang_textcopy(ptr %t257, ptr %t246, i64 %t247)
  %t258 = getelementptr i8, ptr %t257, i64 %t247
  %t259 = call i64 @__olang_fmt_i64(ptr %t258, i64 %t239)
  %t260 = getelementptr i8, ptr %t258, i64 %t250
  call void @olang_textcopy(ptr %t260, ptr %t252, i64 %t253)
  %t261 = insertvalue { i64, ptr } undef, i64 %t254, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t255, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l72, !tbaa !29
  %t271 = load i64, ptr %l73, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t270, i64 %t271, { i64, ptr } %t269)
  br label %bb26
bb26:
  %t273 = load i64, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t273, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzHarness(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l45 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l63 = alloca i64
  %l66 = alloca i64
  %l69 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l89 = alloca ptr
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l106 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l115 = alloca ptr
  %l118 = alloca { i64, ptr }
  %l126 = alloca i64
  %l129 = alloca ptr
  %l131 = alloca i64
  %l136 = alloca ptr
  %l138 = alloca i64
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l147 = alloca i64
  %l149 = alloca i64
  %l154 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l158 = alloca { i64, ptr }
  %l164 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca { i64, ptr }
  %l174 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l188 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l194 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l202 = alloca { i64, ptr }
  %l226 = alloca ptr
  %l230 = alloca i64
  %l231 = alloca i64
  %l234 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %t220 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l22, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l23
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l23)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l25
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l22, !tbaa !29
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzSelected(ptr %v0, ptr %s0, ptr %s0, ptr %t5, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l26
  br label %bb2
bb2:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l4
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t10, ptr %l28
  br label %bb3
bb3:
  %t11 = load i64, ptr %l28, !tbaa !24
  %t12 = icmp ne i64 %t11, 1
  br i1 %t12, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l30
  br label %bb6
bb5:
  br label %bb27
bb6:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l5
  store ptr %l4, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 %t17, ptr %l32, !tbaa !24
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t18)
  store i64 %t20, ptr %l34
  br label %bb8
bb8:
  %t21 = load i64, ptr %l32, !tbaa !24
  %t22 = load i64, ptr %l34, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t28 = load i64, ptr %l7, !tbaa !24
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l39
  br label %bb12
bb12:
  %t32 = load i64, ptr %l39, !tbaa !24
  store i64 %t32, ptr %l8, !tbaa !24
  store ptr %l5, ptr %l40, !tbaa !29
  %t33 = ptrtoint ptr %s1 to i64
  store i64 %t33, ptr %l41, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t34, label %bb13, label %bb14
bb13:
  %t36 = call ptr @__olang_region_make(ptr %s1)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l41, !tbaa !24
  br label %bb14
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = load i64, ptr %l41
  %t41 = inttoptr i64 %t40 to ptr
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %t41, ptr %t38, i64 %t39)
  store { i64, ptr } %t44, ptr %l45
  br label %bb15
bb15:
  %t45 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t46 = load i64, ptr %l41
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = extractvalue { i64, ptr } %t45, 0
  %t49 = extractvalue { i64, ptr } %t45, 1
  %t50 = mul i64 %t48, 1
  %t51 = call ptr @__olang_scope_alloc(ptr %t47, i64 %t50)
  call void @llvm.memcpy.p0.p0.i64(ptr %t51, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  %t54 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s1, ptr %s1, ptr %t54, { i64, ptr } %t53)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l7, !tbaa !24
  br label %bb7
bb18:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l49, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t62, ptr %l51
  br label %bb19
bb19:
  %t63 = load i64, ptr %l51, !tbaa !24
  %t64 = icmp eq i64 %t63, 0
  br i1 %t64, label %bb20, label %bb21
bb20:
  %t66 = extractvalue { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t67 = extractvalue { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t68 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t67)
  call void @olang_textcopy(ptr %t68, ptr %t66, i64 %t67)
  %t69 = insertvalue { i64, ptr } undef, i64 %t67, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = extractvalue { i64, ptr } %t70, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l53, !tbaa !27
  br label %bb23
bb21:
  %t80 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s1, ptr %v0, ptr %v0, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store { i64, ptr } %t80, ptr %l57
  br label %bb22
bb22:
  %t81 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  %t83 = extractvalue { i64, ptr } %t81, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l53, !tbaa !27
  br label %bb23
bb23:
  %t89 = load ptr, ptr %l49, !tbaa !29
  %t90 = getelementptr %"compiler/emit:Emitter", ptr %t89, i32 0, i32 54
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l59, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t93 = load ptr, ptr %l49, !tbaa !29
  %t94 = getelementptr %"compiler/emit:Emitter", ptr %t93, i32 0, i32 54
  store { i64, ptr } %t92, ptr %t94, !tbaa !27
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e54
  br i1 %t95, label %bb24, label %bb25
bb24:
  %t97 = load { i64, ptr }, ptr %l59
  %t98 = extractvalue { i64, ptr } %t97, 1
  call void @__olang_region_release(ptr %t98)
  store { i64, ptr } zeroinitializer, ptr %l59
  br label %bb25
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l61, !tbaa !29
  %t101 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t101, ptr %l63
  br label %bb26
bb26:
  %t102 = load i64, ptr %l63, !tbaa !24
  %t103 = load ptr, ptr %l61, !tbaa !29
  %t104 = getelementptr %"compiler/emit:Emitter", ptr %t103, i32 0, i32 53
  store i64 %t102, ptr %t104, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb27:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/emit:Emitter", ptr %t105, i32 0, i32 53
  store i64 1, ptr %t107, !tbaa !24
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l4, i64 0)
  store i64 %t109, ptr %l66
  br label %bb28
bb28:
  %t110 = load i64, ptr %l66, !tbaa !24
  store i64 %t110, ptr %l9, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i64, ptr %l9, !tbaa !24
  %t115 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %s0, ptr %t111, i64 %t112)
  store { i64, ptr } %t115, ptr %l69
  br label %bb29
bb29:
  %t116 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t116, ptr %l10, !tbaa !27
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/emit:Emitter", ptr %t117, i32 0, i32 0
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/load:Loader", ptr %t123, i32 0, i32 10
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/emit:Emitter", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/load:Loader", ptr %t132, i32 0, i32 12
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t125, i64 %t135)
  store ptr %t138, ptr %l78
  br label %bb30
bb30:
  %t139 = load ptr, ptr %l78, !tbaa !29
  %t141 = getelementptr %"compiler/load:Module", ptr %t139, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l11, !tbaa !27
  %t144 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t148 = call { i64, ptr } @compiler_2femit_2efuzzCorpus(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t144, { i64, ptr } %t145)
  store { i64, ptr } %t148, ptr %l83
  br label %bb31
bb31:
  %t149 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t149, ptr %l12, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/emit:Emitter", ptr %t150, i32 0, i32 52
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l85, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t156 = call { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %s0, ptr %s0, { i64, ptr } %t154)
  store { i64, ptr } %t156, ptr %l87
  br label %bb32
bb32:
  %t157 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t162 = add i64 %t159, %t161
  %t163 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t158, i64 %t159)
  %t168 = getelementptr i8, ptr %t167, i64 %t159
  call void @olang_textcopy(ptr %t168, ptr %t160, i64 %t161)
  %t169 = getelementptr i8, ptr %t168, i64 %t161
  call void @olang_textcopy(ptr %t169, ptr %t164, i64 %t165)
  %t170 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t167, 1
  store { i64, ptr } %t171, ptr %l13, !tbaa !27
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l89, !tbaa !29
  %t174 = ptrtoint ptr %v0 to i64
  store i64 %t174, ptr %l90, !tbaa !24
  %t175 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e55
  br i1 %t175, label %bb33, label %bb34
bb33:
  %t177 = call ptr @__olang_region_make(ptr %v0)
  %t178 = ptrtoint ptr %t177 to i64
  store i64 %t178, ptr %l90, !tbaa !24
  br label %bb34
bb34:
  %t179 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 1
  %t182 = extractvalue { i64, ptr } %t179, 0
  %t183 = load i64, ptr %l90
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = call ptr @__olang_scope_alloc(ptr %t184, i64 %t182)
  call void @olang_textcopy(ptr %t185, ptr %t181, i64 %t182)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  %t189 = load i64, ptr %l90
  %t190 = inttoptr i64 %t189 to ptr
  %t191 = extractvalue { i64, ptr } %t187, 0
  %t192 = extractvalue { i64, ptr } %t187, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %t190, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = load ptr, ptr %l89, !tbaa !29
  %t198 = getelementptr %"compiler/emit:Emitter", ptr %t197, i32 0, i32 55
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  store { i64, ptr } %t199, ptr %l95, !tbaa !27
  %t201 = load ptr, ptr %l89, !tbaa !29
  %t202 = getelementptr %"compiler/emit:Emitter", ptr %t201, i32 0, i32 55
  store { i64, ptr } %t196, ptr %t202, !tbaa !27
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e55
  br i1 %t203, label %bb35, label %bb36
bb35:
  %t205 = load { i64, ptr }, ptr %l95
  %t206 = extractvalue { i64, ptr } %t205, 1
  call void @__olang_region_release(ptr %t206)
  store { i64, ptr } zeroinitializer, ptr %l95
  br label %bb36
bb36:
  %t207 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSource(ptr %v0, ptr %t207)
  br label %bb37
bb37:
  %t209 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t209, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb38
bb38:
  %t211 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t211, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb39
bb39:
  %t213 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t213, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) }, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb40
bb40:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i64, ptr %l9, !tbaa !24
  %t218 = trunc i64 %t216 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t220
  %t221 = getelementptr { i64, [2 x i64] }, ptr %t220, i32 0, i32 0
  store i64 0, ptr %t221
  %t223 = insertvalue { i32 } undef, i32 %t218, 0
  %t224 = getelementptr { i64, [2 x i64] }, ptr %t220, i32 0, i32 1
  store { i32 } %t223, ptr %t224
  %t225 = load { i64, [2 x i64] }, ptr %t220
  %t228 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t215, { i64, [2 x i64] } %t225)
  store { i64, ptr } %t228, ptr %l106
  br label %bb41
bb41:
  %t229 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t231 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t231, 1
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t234 = add i64 %t230, %t233
  %t235 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t229, i64 %t230)
  %t236 = getelementptr i8, ptr %t235, i64 %t230
  call void @olang_textcopy(ptr %t236, ptr %t232, i64 %t233)
  %t237 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t235, 1
  store { i64, ptr } %t238, ptr %l14, !tbaa !27
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t244 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t240, { i64, ptr } %t241)
  store { i64, ptr } %t244, ptr %l110
  br label %bb42
bb42:
  %t245 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t245, ptr %l15, !tbaa !27
  %t246 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t246, { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d26, i32 0, i32 1) })
  br label %bb43
bb43:
  %t248 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t248, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb44
bb44:
  %t250 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t250, { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d28, i32 0, i32 1) })
  br label %bb45
bb45:
  %t252 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t252, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb46
bb46:
  %t254 = load ptr, ptr %l3, !tbaa !29
  store ptr %t254, ptr %l115, !tbaa !29
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t259 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v0, ptr %s0, ptr %t255, { i64, ptr } %t256)
  store { i64, ptr } %t259, ptr %l118
  br label %bb47
bb47:
  %t260 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t261 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t263 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t271 = extractvalue { i64, ptr } %t260, 1
  %t272 = extractvalue { i64, ptr } %t260, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t276)
  call void @olang_textcopy(ptr %t277, ptr %t261, i64 %t262)
  %t278 = getelementptr i8, ptr %t277, i64 %t262
  call void @olang_textcopy(ptr %t278, ptr %t264, i64 %t265)
  %t279 = getelementptr i8, ptr %t278, i64 %t265
  call void @olang_textcopy(ptr %t279, ptr %t267, i64 %t268)
  %t280 = getelementptr i8, ptr %t279, i64 %t268
  call void @olang_textcopy(ptr %t280, ptr %t271, i64 %t272)
  %t281 = getelementptr i8, ptr %t280, i64 %t272
  call void @olang_textcopy(ptr %t281, ptr %t274, i64 %t275)
  %t282 = insertvalue { i64, ptr } undef, i64 %t276, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t277, 1
  %t285 = extractvalue { i64, ptr } %t283, 0
  %t286 = extractvalue { i64, ptr } %t283, 1
  %t287 = mul i64 %t285, 1
  %t288 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load ptr, ptr %l115, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t291, { i64, ptr } %t290)
  br label %bb48
bb48:
  %t293 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t293, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb49
bb49:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v3, ptr %t295, ptr %t296)
  br label %bb50
bb50:
  %t300 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %l2)
  store i64 %t300, ptr %l126
  br label %bb51
bb51:
  %t301 = load i64, ptr %l126, !tbaa !24
  %t302 = icmp sgt i64 %t301, 0
  br i1 %t302, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s10
  %t304 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t304, { i64, ptr } { i64 90, ptr getelementptr inbounds (<{ i64, [90 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb54
bb53:
  br label %bb64
bb54:
  %t306 = load ptr, ptr %l3, !tbaa !29
  store ptr %t306, ptr %l129, !tbaa !29
  %t308 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %l2)
  store i64 %t308, ptr %l131
  br label %bb55
bb55:
  %t309 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t310 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t311 = load i64, ptr %l131, !tbaa !24
  %t312 = call i64 @__olang_fmt_i64(ptr null, i64 %t311)
  %t313 = add i64 %t310, %t312
  %t314 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t315 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t316 = add i64 %t313, %t315
  %t317 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t316)
  call void @olang_textcopy(ptr %t317, ptr %t309, i64 %t310)
  %t318 = getelementptr i8, ptr %t317, i64 %t310
  %t319 = call i64 @__olang_fmt_i64(ptr %t318, i64 %t311)
  %t320 = getelementptr i8, ptr %t318, i64 %t312
  call void @olang_textcopy(ptr %t320, ptr %t314, i64 %t315)
  %t321 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t317, 1
  %t324 = extractvalue { i64, ptr } %t322, 0
  %t325 = extractvalue { i64, ptr } %t322, 1
  %t326 = mul i64 %t324, 1
  %t327 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t326)
  call void @llvm.memcpy.p0.p0.i64(ptr %t327, ptr %t325, i64 %t326, i1 false)
  %t328 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t327, 1
  %t330 = load ptr, ptr %l129, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t330, { i64, ptr } %t329)
  br label %bb56
bb56:
  %t332 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t332, { i64, ptr } { i64 75, ptr getelementptr inbounds (<{ i64, [75 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb57
bb57:
  %t334 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t334, { i64, ptr } { i64 107, ptr getelementptr inbounds (<{ i64, [107 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb58
bb58:
  %t336 = load ptr, ptr %l3, !tbaa !29
  store ptr %t336, ptr %l136, !tbaa !29
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %l2)
  store i64 %t338, ptr %l138
  br label %bb59
bb59:
  %t339 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t341 = load i64, ptr %l138, !tbaa !24
  %t342 = call i64 @__olang_fmt_i64(ptr null, i64 %t341)
  %t343 = add i64 %t340, %t342
  %t344 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t345 = extractvalue { i64, ptr } { i64 51, ptr getelementptr inbounds (<{ i64, [51 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t346 = add i64 %t343, %t345
  %t347 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t346)
  call void @olang_textcopy(ptr %t347, ptr %t339, i64 %t340)
  %t348 = getelementptr i8, ptr %t347, i64 %t340
  %t349 = call i64 @__olang_fmt_i64(ptr %t348, i64 %t341)
  %t350 = getelementptr i8, ptr %t348, i64 %t342
  call void @olang_textcopy(ptr %t350, ptr %t344, i64 %t345)
  %t351 = insertvalue { i64, ptr } undef, i64 %t346, 0
  %t352 = insertvalue { i64, ptr } %t351, ptr %t347, 1
  %t354 = extractvalue { i64, ptr } %t352, 0
  %t355 = extractvalue { i64, ptr } %t352, 1
  %t356 = mul i64 %t354, 1
  %t357 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t356)
  call void @llvm.memcpy.p0.p0.i64(ptr %t357, ptr %t355, i64 %t356, i1 false)
  %t358 = insertvalue { i64, ptr } undef, i64 %t354, 0
  %t359 = insertvalue { i64, ptr } %t358, ptr %t357, 1
  %t360 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t360, { i64, ptr } %t359)
  br label %bb60
bb60:
  %t362 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t362, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d41, i32 0, i32 1) })
  br label %bb61
bb61:
  %t364 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t364, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb62
bb62:
  %t366 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s10, ptr %t366, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb64
bb64:
  store %olang.scope zeroinitializer, ptr %s13
  %t368 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t370 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2edirsOf(ptr %s0, ptr %s13, { i64, ptr } %t368)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t370, ptr %l145
  br label %bb65
bb65:
  %t371 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  %t372 = call ptr @__olang_scope_alloc_a(ptr %s13, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t371, ptr %t372
  store ptr %t372, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb66
bb66:
  store %olang.scope zeroinitializer, ptr %s14
  %t374 = load i64, ptr %l17, !tbaa !24
  store i64 %t374, ptr %l147, !tbaa !24
  %t375 = load ptr, ptr %l16, !tbaa !29
  %t377 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s13, ptr %t375)
  store i64 %t377, ptr %l149
  br label %bb67
bb67:
  %t378 = load i64, ptr %l147, !tbaa !24
  %t379 = load i64, ptr %l149, !tbaa !24
  %t380 = icmp slt i64 %t378, %t379
  %t382 = xor i1 %t380, true
  br i1 %t382, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s14)
  br label %bb75
bb69:
  br label %bb70
bb70:
  %t384 = load ptr, ptr %l16, !tbaa !29
  %t385 = load i64, ptr %l17, !tbaa !24
  %t388 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s13, ptr %s13, ptr %t384, i64 %t385)
  store { i64, ptr } %t388, ptr %l154
  br label %bb71
bb71:
  %t389 = load { i64, ptr }, ptr %l154, !tbaa !27
  %t390 = load ptr, ptr %l3, !tbaa !29
  store ptr %t390, ptr %l155, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t395 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s13, ptr %s14, ptr %t391, { i64, ptr } %t389)
  store { i64, ptr } %t395, ptr %l158
  br label %bb72
bb72:
  %t396 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t397 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t398 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t399 = extractvalue { i64, ptr } %t398, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = add i64 %t397, %t400
  %t402 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t403 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t404 = add i64 %t401, %t403
  %t405 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t404)
  call void @olang_textcopy(ptr %t405, ptr %t396, i64 %t397)
  %t406 = getelementptr i8, ptr %t405, i64 %t397
  call void @olang_textcopy(ptr %t406, ptr %t399, i64 %t400)
  %t407 = getelementptr i8, ptr %t406, i64 %t400
  call void @olang_textcopy(ptr %t407, ptr %t402, i64 %t403)
  %t408 = insertvalue { i64, ptr } undef, i64 %t404, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr %t405, 1
  %t411 = extractvalue { i64, ptr } %t409, 0
  %t412 = extractvalue { i64, ptr } %t409, 1
  %t413 = mul i64 %t411, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t413)
  call void @llvm.memcpy.p0.p0.i64(ptr %t414, ptr %t412, i64 %t413, i1 false)
  %t415 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  %t417 = load ptr, ptr %l155, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s14, ptr %t417, { i64, ptr } %t416)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s14)
  br label %bb74
bb74:
  %t419 = load i64, ptr %l17, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l17, !tbaa !24
  br label %bb66
bb75:
  call void @__olang_scope_close(ptr %s13)
  store %olang.scope zeroinitializer, ptr %s17
  %t423 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t425 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2edirsOf(ptr %s0, ptr %s17, { i64, ptr } %t423)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t425, ptr %l164
  br label %bb76
bb76:
  %t426 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l164
  %t427 = call ptr @__olang_scope_alloc_a(ptr %s17, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t426, ptr %t427
  store ptr %t427, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb77
bb77:
  store %olang.scope zeroinitializer, ptr %s18
  %t429 = load i64, ptr %l20, !tbaa !24
  store i64 %t429, ptr %l166, !tbaa !24
  %t430 = load ptr, ptr %l19, !tbaa !29
  %t432 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s17, ptr %t430)
  store i64 %t432, ptr %l168
  br label %bb78
bb78:
  %t433 = load i64, ptr %l166, !tbaa !24
  %t434 = load i64, ptr %l168, !tbaa !24
  %t435 = icmp slt i64 %t433, %t434
  %t437 = xor i1 %t435, true
  br i1 %t437, label %bb79, label %bb80
bb79:
  call void @__olang_scope_close(ptr %s18)
  br label %bb86
bb80:
  br label %bb81
bb81:
  %t439 = load ptr, ptr %l19, !tbaa !29
  %t440 = load i64, ptr %l20, !tbaa !24
  %t443 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s17, ptr %s17, ptr %t439, i64 %t440)
  store { i64, ptr } %t443, ptr %l173
  br label %bb82
bb82:
  %t444 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t445 = load ptr, ptr %l3, !tbaa !29
  store ptr %t445, ptr %l174, !tbaa !29
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t450 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s17, ptr %s18, ptr %t446, { i64, ptr } %t444)
  store { i64, ptr } %t450, ptr %l177
  br label %bb83
bb83:
  %t451 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t453 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t454 = extractvalue { i64, ptr } %t453, 1
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t460 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t459)
  call void @olang_textcopy(ptr %t460, ptr %t451, i64 %t452)
  %t461 = getelementptr i8, ptr %t460, i64 %t452
  call void @olang_textcopy(ptr %t461, ptr %t454, i64 %t455)
  %t462 = getelementptr i8, ptr %t461, i64 %t455
  call void @olang_textcopy(ptr %t462, ptr %t457, i64 %t458)
  %t463 = insertvalue { i64, ptr } undef, i64 %t459, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t460, 1
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t467 = extractvalue { i64, ptr } %t464, 1
  %t468 = mul i64 %t466, 1
  %t469 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t468)
  call void @llvm.memcpy.p0.p0.i64(ptr %t469, ptr %t467, i64 %t468, i1 false)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t469, 1
  %t472 = load ptr, ptr %l174, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s18, ptr %t472, { i64, ptr } %t471)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s18)
  br label %bb85
bb85:
  %t474 = load i64, ptr %l20, !tbaa !24
  %t476 = add i64 %t474, 1
  store i64 %t476, ptr %l20, !tbaa !24
  br label %bb77
bb86:
  call void @__olang_scope_close(ptr %s17)
  %t478 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t478, { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb87
bb87:
  %t480 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t480, { i64, ptr } { i64 91, ptr getelementptr inbounds (<{ i64, [91 x i8] }>, ptr @.d49, i32 0, i32 1) })
  br label %bb88
bb88:
  %t482 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t482, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb89
bb89:
  %t484 = load ptr, ptr %l3, !tbaa !29
  store ptr %t484, ptr %l185, !tbaa !29
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t486 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t489 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t485, { i64, ptr } %t486)
  store { i64, ptr } %t489, ptr %l188
  br label %bb90
bb90:
  %t490 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t491 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t492 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t493 = extractvalue { i64, ptr } %t492, 1
  %t494 = extractvalue { i64, ptr } %t492, 0
  %t495 = add i64 %t491, %t494
  %t496 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t497 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t498 = add i64 %t495, %t497
  %t499 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t498)
  call void @olang_textcopy(ptr %t499, ptr %t490, i64 %t491)
  %t500 = getelementptr i8, ptr %t499, i64 %t491
  call void @olang_textcopy(ptr %t500, ptr %t493, i64 %t494)
  %t501 = getelementptr i8, ptr %t500, i64 %t494
  call void @olang_textcopy(ptr %t501, ptr %t496, i64 %t497)
  %t502 = insertvalue { i64, ptr } undef, i64 %t498, 0
  %t503 = insertvalue { i64, ptr } %t502, ptr %t499, 1
  %t505 = extractvalue { i64, ptr } %t503, 0
  %t506 = extractvalue { i64, ptr } %t503, 1
  %t507 = mul i64 %t505, 1
  %t508 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t507)
  call void @llvm.memcpy.p0.p0.i64(ptr %t508, ptr %t506, i64 %t507, i1 false)
  %t509 = insertvalue { i64, ptr } undef, i64 %t505, 0
  %t510 = insertvalue { i64, ptr } %t509, ptr %t508, 1
  %t511 = load ptr, ptr %l185, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t511, { i64, ptr } %t510)
  br label %bb91
bb91:
  %t513 = load ptr, ptr %l3, !tbaa !29
  store ptr %t513, ptr %l191, !tbaa !29
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t518 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t514, { i64, ptr } %t515)
  store { i64, ptr } %t518, ptr %l194
  br label %bb92
bb92:
  %t519 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t520 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t521 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t522 = extractvalue { i64, ptr } %t521, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = add i64 %t520, %t523
  %t525 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t527 = add i64 %t524, %t526
  %t528 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t527)
  call void @olang_textcopy(ptr %t528, ptr %t519, i64 %t520)
  %t529 = getelementptr i8, ptr %t528, i64 %t520
  call void @olang_textcopy(ptr %t529, ptr %t522, i64 %t523)
  %t530 = getelementptr i8, ptr %t529, i64 %t523
  call void @olang_textcopy(ptr %t530, ptr %t525, i64 %t526)
  %t531 = insertvalue { i64, ptr } undef, i64 %t527, 0
  %t532 = insertvalue { i64, ptr } %t531, ptr %t528, 1
  %t534 = extractvalue { i64, ptr } %t532, 0
  %t535 = extractvalue { i64, ptr } %t532, 1
  %t536 = mul i64 %t534, 1
  %t537 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t536)
  call void @llvm.memcpy.p0.p0.i64(ptr %t537, ptr %t535, i64 %t536, i1 false)
  %t538 = insertvalue { i64, ptr } undef, i64 %t534, 0
  %t539 = insertvalue { i64, ptr } %t538, ptr %t537, 1
  %t540 = load ptr, ptr %l191, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t540, { i64, ptr } %t539)
  br label %bb93
bb93:
  %t542 = load ptr, ptr %l3, !tbaa !29
  store ptr %t542, ptr %l197, !tbaa !29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t545 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t546 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t548 = extractvalue { i64, ptr } %t544, 1
  %t549 = extractvalue { i64, ptr } %t544, 0
  %t550 = add i64 %t546, %t549
  %t551 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t552 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t553 = add i64 %t550, %t552
  %t554 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t553)
  call void @olang_textcopy(ptr %t554, ptr %t545, i64 %t546)
  %t555 = getelementptr i8, ptr %t554, i64 %t546
  call void @olang_textcopy(ptr %t555, ptr %t548, i64 %t549)
  %t556 = getelementptr i8, ptr %t555, i64 %t549
  call void @olang_textcopy(ptr %t556, ptr %t551, i64 %t552)
  %t557 = insertvalue { i64, ptr } undef, i64 %t553, 0
  %t558 = insertvalue { i64, ptr } %t557, ptr %t554, 1
  %t560 = extractvalue { i64, ptr } %t558, 0
  %t561 = extractvalue { i64, ptr } %t558, 1
  %t562 = mul i64 %t560, 1
  %t563 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t562)
  call void @llvm.memcpy.p0.p0.i64(ptr %t563, ptr %t561, i64 %t562, i1 false)
  %t564 = insertvalue { i64, ptr } undef, i64 %t560, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t563, 1
  %t568 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t543, { i64, ptr } %t565)
  store { i64, ptr } %t568, ptr %l202
  br label %bb94
bb94:
  %t569 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t570 = extractvalue { i64, ptr } { i64 55, ptr getelementptr inbounds (<{ i64, [55 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t571 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 1
  %t573 = extractvalue { i64, ptr } %t571, 0
  %t574 = add i64 %t570, %t573
  %t575 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t577 = add i64 %t574, %t576
  %t578 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t577)
  call void @olang_textcopy(ptr %t578, ptr %t569, i64 %t570)
  %t579 = getelementptr i8, ptr %t578, i64 %t570
  call void @olang_textcopy(ptr %t579, ptr %t572, i64 %t573)
  %t580 = getelementptr i8, ptr %t579, i64 %t573
  call void @olang_textcopy(ptr %t580, ptr %t575, i64 %t576)
  %t581 = insertvalue { i64, ptr } undef, i64 %t577, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t578, 1
  %t584 = extractvalue { i64, ptr } %t582, 0
  %t585 = extractvalue { i64, ptr } %t582, 1
  %t586 = mul i64 %t584, 1
  %t587 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t586)
  call void @llvm.memcpy.p0.p0.i64(ptr %t587, ptr %t585, i64 %t586, i1 false)
  %t588 = insertvalue { i64, ptr } undef, i64 %t584, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t587, 1
  %t590 = load ptr, ptr %l197, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t590, { i64, ptr } %t589)
  br label %bb95
bb95:
  %t592 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t592, { i64, ptr } { i64 87, ptr getelementptr inbounds (<{ i64, [87 x i8] }>, ptr @.d59, i32 0, i32 1) })
  br label %bb96
bb96:
  %t594 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t594, { i64, ptr } { i64 78, ptr getelementptr inbounds (<{ i64, [78 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb97
bb97:
  %t596 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t596, { i64, ptr } { i64 100, ptr getelementptr inbounds (<{ i64, [100 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb98
bb98:
  %t598 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t598, { i64, ptr } { i64 94, ptr getelementptr inbounds (<{ i64, [94 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb99
bb99:
  %t600 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t600, { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb100
bb100:
  %t602 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t602, { i64, ptr } { i64 102, ptr getelementptr inbounds (<{ i64, [102 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb101
bb101:
  %t604 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t604, { i64, ptr } { i64 71, ptr getelementptr inbounds (<{ i64, [71 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb102
bb102:
  %t606 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t606, { i64, ptr } { i64 105, ptr getelementptr inbounds (<{ i64, [105 x i8] }>, ptr @.d66, i32 0, i32 1) })
  br label %bb103
bb103:
  %t608 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t608, { i64, ptr } { i64 84, ptr getelementptr inbounds (<{ i64, [84 x i8] }>, ptr @.d67, i32 0, i32 1) })
  br label %bb104
bb104:
  %t610 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t610, { i64, ptr } { i64 86, ptr getelementptr inbounds (<{ i64, [86 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb105
bb105:
  %t612 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t612, { i64, ptr } { i64 74, ptr getelementptr inbounds (<{ i64, [74 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb106
bb106:
  %t614 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t614, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb107
bb107:
  %t616 = load ptr, ptr %l3, !tbaa !29
  %t617 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t618 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t619 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t621 = extractvalue { i64, ptr } %t617, 1
  %t622 = extractvalue { i64, ptr } %t617, 0
  %t623 = add i64 %t619, %t622
  %t624 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t625 = extractvalue { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t626 = add i64 %t623, %t625
  %t627 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t626)
  call void @olang_textcopy(ptr %t627, ptr %t618, i64 %t619)
  %t628 = getelementptr i8, ptr %t627, i64 %t619
  call void @olang_textcopy(ptr %t628, ptr %t621, i64 %t622)
  %t629 = getelementptr i8, ptr %t628, i64 %t622
  call void @olang_textcopy(ptr %t629, ptr %t624, i64 %t625)
  %t630 = insertvalue { i64, ptr } undef, i64 %t626, 0
  %t631 = insertvalue { i64, ptr } %t630, ptr %t627, 1
  %t633 = extractvalue { i64, ptr } %t631, 0
  %t634 = extractvalue { i64, ptr } %t631, 1
  %t635 = mul i64 %t633, 1
  %t636 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t635)
  call void @llvm.memcpy.p0.p0.i64(ptr %t636, ptr %t634, i64 %t635, i1 false)
  %t637 = insertvalue { i64, ptr } undef, i64 %t633, 0
  %t638 = insertvalue { i64, ptr } %t637, ptr %t636, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t616, { i64, ptr } %t638)
  br label %bb108
bb108:
  %t641 = load ptr, ptr %l3, !tbaa !29
  %t642 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t643 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t644 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t646 = extractvalue { i64, ptr } %t642, 1
  %t647 = extractvalue { i64, ptr } %t642, 0
  %t648 = add i64 %t644, %t647
  %t649 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t650 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t651 = add i64 %t648, %t650
  %t652 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t651)
  call void @olang_textcopy(ptr %t652, ptr %t643, i64 %t644)
  %t653 = getelementptr i8, ptr %t652, i64 %t644
  call void @olang_textcopy(ptr %t653, ptr %t646, i64 %t647)
  %t654 = getelementptr i8, ptr %t653, i64 %t647
  call void @olang_textcopy(ptr %t654, ptr %t649, i64 %t650)
  %t655 = insertvalue { i64, ptr } undef, i64 %t651, 0
  %t656 = insertvalue { i64, ptr } %t655, ptr %t652, 1
  %t658 = extractvalue { i64, ptr } %t656, 0
  %t659 = extractvalue { i64, ptr } %t656, 1
  %t660 = mul i64 %t658, 1
  %t661 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t660)
  call void @llvm.memcpy.p0.p0.i64(ptr %t661, ptr %t659, i64 %t660, i1 false)
  %t662 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t663 = insertvalue { i64, ptr } %t662, ptr %t661, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t641, { i64, ptr } %t663)
  br label %bb109
bb109:
  %t666 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s0, ptr %t666, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d75, i32 0, i32 1) })
  br label %bb110
bb110:
  %t668 = load ptr, ptr %l0, !tbaa !29
  store ptr %t668, ptr %l226, !tbaa !29
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t671 = getelementptr %"compiler/emit:Emitter", ptr %t669, i32 0, i32 0
  %t672 = load ptr, ptr %t671, !tbaa !29
  %t674 = getelementptr %"compiler/generic:Program", ptr %t672, i32 0, i32 0
  %t675 = load ptr, ptr %t674, !tbaa !29
  %t677 = getelementptr %"compiler/load:Loader", ptr %t675, i32 0, i32 12
  %t678 = load i64, ptr %t677, !tbaa !24
  store i64 %t678, ptr %l230, !tbaa !24
  %t679 = ptrtoint ptr %s0 to i64
  store i64 %t679, ptr %l231, !tbaa !24
  %t680 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t680, label %bb111, label %bb112
bb111:
  %t682 = call ptr @__olang_region_make(ptr %s0)
  %t683 = ptrtoint ptr %t682 to i64
  store i64 %t683, ptr %l231, !tbaa !24
  br label %bb112
bb112:
  %t684 = load ptr, ptr %l3, !tbaa !29
  %t685 = load i64, ptr %l231
  %t686 = inttoptr i64 %t685 to ptr
  %t688 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v3, ptr %t686, ptr %t684)
  store { i64, ptr } %t688, ptr %l234
  br label %bb113
bb113:
  %t689 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t690 = load i64, ptr %l231
  %t691 = inttoptr i64 %t690 to ptr
  %t692 = extractvalue { i64, ptr } %t689, 0
  %t693 = extractvalue { i64, ptr } %t689, 1
  %t694 = mul i64 %t692, 1
  %t695 = call ptr @__olang_scope_alloc(ptr %t691, i64 %t694)
  call void @llvm.memcpy.p0.p0.i64(ptr %t695, ptr %t693, i64 %t694, i1 false)
  %t696 = insertvalue { i64, ptr } undef, i64 %t692, 0
  %t697 = insertvalue { i64, ptr } %t696, ptr %t695, 1
  %t698 = load ptr, ptr %l226, !tbaa !29
  %t699 = load i64, ptr %l230, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t698, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d76, i32 0, i32 1) }, i64 %t699, { i64, ptr } %t697, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egroupReached(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca i64
  %l19 = alloca i64
  %l24 = alloca i64
  %l30 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l39 = alloca i64
  %l42 = alloca i64
  %l60 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i64
  %l79 = alloca i64
  %l85 = alloca i64
  %l92 = alloca i1
  %l102 = alloca i1
  %l106 = alloca i1
  %l109 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l17, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l19
  br label %bb3
bb3:
  %t7 = load i64, ptr %l17, !tbaa !24
  %t8 = load i64, ptr %l19, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb4, label %bb5
bb4:
  br label %bb58
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l24
  br label %bb7
bb7:
  %t18 = load i64, ptr %l24, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = add i64 %t19, 1
  store i64 %t21, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:Emitter", ptr %t23, i32 0, i32 19
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t25, i64 %t26)
  store { i64, ptr } %t29, ptr %l30
  br label %bb8
bb8:
  %t30 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t30, ptr %l6, !tbaa !27
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v0, ptr %t31, i64 %t32)
  store { i64, ptr } %t35, ptr %l33
  br label %bb9
bb9:
  %t36 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t36, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l9, !tbaa !24
  store i64 3, ptr %l10, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp sgt i64 %t41, %t42
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load i64, ptr %l10, !tbaa !24
  %t49 = icmp sgt i64 %t47, 0
  br i1 %t49, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb15
bb12:
  %t51 = load i64, ptr %l9, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = sub i64 %t51, %t52
  %t56 = load i64, ptr %l10, !tbaa !24
  %t59 = add i64 %t55, %t56
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l10, !tbaa !24
  %t65 = sdiv i64 %t61, %t62
  store i64 %t65, ptr %l42, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb14
bb14:
  %t67 = load i64, ptr %l42, !tbaa !24
  store i64 %t67, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t68 = load i64, ptr %l39, !tbaa !24
  store i64 %t68, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb16
bb16:
  %t69 = load i64, ptr %l12, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = icmp slt i64 %t69, %t70
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb17, label %bb18
bb17:
  br label %bb56
bb18:
  br label %bb19
bb19:
  %t77 = load i64, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l12, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = mul i64 %t78, %t79
  %t85 = add i64 %t77, %t82
  store i64 %t85, ptr %l13, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t87, ptr %l60, !tbaa !27
  %t88 = load i64, ptr %l13, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i64, ptr %t91, i64 %t88
  %t93 = load i64, ptr %t92, !tbaa !34
  %t95 = icmp ne i64 %t93, 0
  br i1 %t95, label %bb20, label %bb21
bb20:
  br label %bb55
bb21:
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l64, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t98, ptr %l65, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t99, ptr %l66, !tbaa !27
  %t100 = load i64, ptr %l13, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr i64, ptr %t105, i64 %t102
  %t107 = load i64, ptr %t106, !tbaa !34
  store i64 %t107, ptr %l69, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t108, ptr %l70, !tbaa !27
  %t109 = load i64, ptr %l13, !tbaa !24
  %t111 = add i64 %t109, 2
  %t113 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  %t116 = load i64, ptr %t115, !tbaa !34
  store i64 %t116, ptr %l73, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l74, !tbaa !24
  %t119 = load i64, ptr %l69, !tbaa !24
  %t120 = icmp sge i64 %t119, 0
  br i1 %t120, label %bb23, label %bb24
bb23:
  %t122 = load i64, ptr %l69, !tbaa !24
  %t123 = load i64, ptr %l73, !tbaa !24
  %t124 = icmp sle i64 %t122, %t123
  br i1 %t124, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a1eabe23aa69b04_ffa3b54339734f38)
  unreachable
bb25:
  %t126 = load i64, ptr %l73, !tbaa !24
  %t127 = load i64, ptr %l74, !tbaa !24
  %t128 = icmp sle i64 %t126, %t127
  br i1 %t128, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_a1eabe23aa69b04_ffa3b54339734f38)
  unreachable
bb27:
  %t130 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l69, !tbaa !24
  %t133 = load i64, ptr %l73, !tbaa !24
  %t134 = getelementptr i8, ptr %t131, i64 %t132
  %t135 = sub i64 %t133, %t132
  %t136 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t134, 1
  %t138 = load ptr, ptr %l64, !tbaa !29
  %t140 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v0, ptr %t138, { i64, ptr } %t137)
  store i64 %t140, ptr %l79
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_a1eabe23aa69b04_ffa3b54339734f38)
  unreachable
bb29:
  %t141 = load i64, ptr %l79, !tbaa !24
  store i64 %t141, ptr %l14, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp slt i64 %t142, 0
  br i1 %t144, label %bb30, label %bb31
bb30:
  br label %bb55
bb31:
  br label %bb32
bb32:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/emit:Emitter", ptr %t146, i32 0, i32 20
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l85
  br label %bb33
bb33:
  %t153 = load i64, ptr %l85, !tbaa !24
  store i64 %t153, ptr %l15, !tbaa !24
  %t154 = load i64, ptr %l15, !tbaa !24
  %t155 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  %t158 = icmp eq i64 %t154, %t155
  br i1 %t158, label %bb34, label %bb35
bb34:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/emit:Emitter", ptr %t160, i32 0, i32 77
  %t163 = load i64, ptr %l14, !tbaa !24
  %t166 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t162, i64 %t163)
  store i1 %t166, ptr %l92
  br label %bb36
bb35:
  %t167 = load i64, ptr %l15, !tbaa !24
  %t168 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t171 = icmp eq i64 %t167, %t168
  br i1 %t171, label %bb42, label %bb43
bb36:
  %t173 = load i1, ptr %l92, !tbaa !21
  br i1 %t173, label %bb37, label %bb38
bb37:
  br label %bb55
bb38:
  br label %bb39
bb39:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/emit:Emitter", ptr %t174, i32 0, i32 77
  %t177 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t176, i64 %t177, i64 %a1)
  br label %bb40
bb40:
  %t182 = load ptr, ptr %l2, !tbaa !29
  %t183 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t182, i64 %t183)
  br label %bb41
bb41:
  br label %bb54
bb42:
  store i1 true, ptr %l102, !tbaa !21
  br label %bb44
bb43:
  %t186 = load i64, ptr %l15, !tbaa !24
  %t187 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t190 = icmp eq i64 %t186, %t187
  store i1 %t190, ptr %l102, !tbaa !21
  br label %bb44
bb44:
  %t192 = load i1, ptr %l102, !tbaa !21
  br i1 %t192, label %bb45, label %bb46
bb45:
  %t193 = load i64, ptr %l14, !tbaa !24
  %t196 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %s0, ptr %l3, i64 %t193)
  store i1 %t196, ptr %l109
  br label %bb47
bb46:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb48
bb47:
  %t197 = load i1, ptr %l109, !tbaa !21
  %t198 = xor i1 %t197, true
  store i1 %t198, ptr %l106, !tbaa !21
  br label %bb48
bb48:
  %t200 = load i1, ptr %l106, !tbaa !21
  br i1 %t200, label %bb49, label %bb50
bb49:
  %t201 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %s0, ptr %l3, i64 %t201, i1 true)
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t205 = load i64, ptr %l14, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t204, i64 %t205)
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t208 = load i64, ptr %l12, !tbaa !24
  %t210 = add i64 %t208, 1
  store i64 %t210, ptr %l12, !tbaa !24
  br label %bb16
bb56:
  br label %bb57
bb57:
  br label %bb2
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehasEnv(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb14
bb4:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 0
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  store i32 %t13, ptr %l2, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t16 = load i32, ptr %l2, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t21 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %a0, i64 %t18)
  store i1 %t21, ptr %l12
  br label %bb8
bb8:
  %t22 = load i1, ptr %l12, !tbaa !21
  store i1 %t22, ptr %l3, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_22c0ecf0dfd2f0b7_2552f1950a299d53)
  unreachable
bb14:
  %t23 = load i1, ptr %l3, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l8 = alloca ptr
  %l11 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t7, i64 %a1)
  store ptr %t12, ptr %l8
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 1
  %t16 = load { i64, [2 x i64] }, ptr %t15
  %t20 = extractvalue { i64, [2 x i64] } %t16, 0
  %t21 = icmp eq i64 %t20, 4
  br i1 %t21, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_7f6c4a9881f0c77f_244fd8f3f85b2bab)
  unreachable
bb10:
  %t23 = load i1, ptr %l11, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erecodeText(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca [1 x i8]
  %l34 = alloca i64
  %l37 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca i64
  %l66 = alloca { i64, ptr }
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca i64
  %l84 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t4, i32 %a3)
  store { i64, ptr } %t10, ptr %l18
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t18 = extractvalue { i64, ptr } %t13, 1
  %t19 = extractvalue { i64, ptr } %t13, 0
  %t20 = add i64 %t16, %t19
  %t21 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t25 = extractvalue { i64, ptr } %t14, 1
  %t26 = extractvalue { i64, ptr } %t14, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t15, i64 %t16)
  %t32 = getelementptr i8, ptr %t31, i64 %t16
  call void @olang_textcopy(ptr %t32, ptr %t18, i64 %t19)
  %t33 = getelementptr i8, ptr %t32, i64 %t19
  call void @olang_textcopy(ptr %t33, ptr %t21, i64 %t22)
  %t34 = getelementptr i8, ptr %t33, i64 %t22
  call void @olang_textcopy(ptr %t34, ptr %t25, i64 %t26)
  %t35 = getelementptr i8, ptr %t34, i64 %t26
  call void @olang_textcopy(ptr %t35, ptr %t28, i64 %t29)
  %t36 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t31, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = extractvalue { i64, ptr } %t37, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t12, { i64, ptr } %t44)
  br label %bb2
bb2:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t47, ptr %l25, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t49, i64 %t50, i1 false)
  %t52 = insertvalue { i64, ptr } undef, i64 1, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %l26, 1
  store { i64, ptr } %t53, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb3, label %bb4
bb3:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb8
bb5:
  %t69 = load i64, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l8, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l10, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l37, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb7
bb7:
  %t85 = load i64, ptr %l37, !tbaa !24
  store i64 %t85, ptr %l34, !tbaa !24
  br label %bb8
bb8:
  %t86 = load i64, ptr %l34, !tbaa !24
  store i64 %t86, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t87 = load i64, ptr %l12, !tbaa !24
  %t88 = load i64, ptr %l11, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb11:
  br label %bb12
bb12:
  %t95 = load i64, ptr %l8, !tbaa !24
  %t96 = load i64, ptr %l12, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l13, !tbaa !24
  %t105 = load ptr, ptr %l1, !tbaa !29
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l13, !tbaa !24
  %t109 = add i64 %t107, 1
  %t110 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t113 = call i64 @__olang_fmt_i64(ptr null, i64 %t106)
  %t114 = add i64 %t111, %t113
  %t115 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t119 = call i64 @__olang_fmt_i64(ptr null, i64 %t109)
  %t120 = add i64 %t117, %t119
  %t121 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t123 = add i64 %t120, %t122
  %t124 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t123)
  call void @olang_textcopy(ptr %t124, ptr %t110, i64 %t111)
  %t125 = getelementptr i8, ptr %t124, i64 %t111
  %t126 = call i64 @__olang_fmt_i64(ptr %t125, i64 %t106)
  %t127 = getelementptr i8, ptr %t125, i64 %t113
  call void @olang_textcopy(ptr %t127, ptr %t115, i64 %t116)
  %t128 = getelementptr i8, ptr %t127, i64 %t116
  %t129 = call i64 @__olang_fmt_i64(ptr %t128, i64 %t109)
  %t130 = getelementptr i8, ptr %t128, i64 %t119
  call void @olang_textcopy(ptr %t130, ptr %t121, i64 %t122)
  %t131 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t124, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } %t132, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t105, { i64, ptr } %t139)
  br label %bb13
bb13:
  %t142 = load ptr, ptr %l1, !tbaa !29
  store ptr %t142, ptr %l61, !tbaa !29
  %t143 = load i64, ptr %l13, !tbaa !24
  store i64 %t143, ptr %l62, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  store i64 %t144, ptr %l63, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t147, ptr %l66, !tbaa !27
  %t148 = load i64, ptr %l13, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t148
  %t153 = load i32, ptr %t152, !tbaa !33
  %t157 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %t145, i32 %a4, i32 %t153)
  store i64 %t157, ptr %l69
  br label %bb14
bb14:
  %t158 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t159 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t161 = load i64, ptr %l62, !tbaa !24
  %t162 = call i64 @__olang_fmt_i64(ptr null, i64 %t161)
  %t163 = add i64 %t160, %t162
  %t164 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t166 = add i64 %t163, %t165
  %t167 = load i64, ptr %l63, !tbaa !24
  %t168 = call i64 @__olang_fmt_i64(ptr null, i64 %t167)
  %t169 = add i64 %t166, %t168
  %t170 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = load i64, ptr %l69, !tbaa !24
  %t174 = call i64 @__olang_fmt_i64(ptr null, i64 %t173)
  %t175 = add i64 %t172, %t174
  %t176 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t180 = extractvalue { i64, ptr } %t158, 1
  %t181 = extractvalue { i64, ptr } %t158, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t159, i64 %t160)
  %t187 = getelementptr i8, ptr %t186, i64 %t160
  %t188 = call i64 @__olang_fmt_i64(ptr %t187, i64 %t161)
  %t189 = getelementptr i8, ptr %t187, i64 %t162
  call void @olang_textcopy(ptr %t189, ptr %t164, i64 %t165)
  %t190 = getelementptr i8, ptr %t189, i64 %t165
  %t191 = call i64 @__olang_fmt_i64(ptr %t190, i64 %t167)
  %t192 = getelementptr i8, ptr %t190, i64 %t168
  call void @olang_textcopy(ptr %t192, ptr %t170, i64 %t171)
  %t193 = getelementptr i8, ptr %t192, i64 %t171
  %t194 = call i64 @__olang_fmt_i64(ptr %t193, i64 %t173)
  %t195 = getelementptr i8, ptr %t193, i64 %t174
  call void @olang_textcopy(ptr %t195, ptr %t176, i64 %t177)
  %t196 = getelementptr i8, ptr %t195, i64 %t177
  call void @olang_textcopy(ptr %t196, ptr %t180, i64 %t181)
  %t197 = getelementptr i8, ptr %t196, i64 %t181
  call void @olang_textcopy(ptr %t197, ptr %t183, i64 %t184)
  %t198 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t186, 1
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t202 = extractvalue { i64, ptr } %t199, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t207 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s3, ptr %t207, { i64, ptr } %t206)
  br label %bb15
bb15:
  %t209 = load i64, ptr %l13, !tbaa !24
  %t210 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t213 = call i64 @__olang_fmt_i64(ptr null, i64 %t209)
  %t214 = add i64 %t211, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t210, i64 %t211)
  %t216 = getelementptr i8, ptr %t215, i64 %t211
  %t217 = call i64 @__olang_fmt_i64(ptr %t216, i64 %t209)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t215, 1
  store { i64, ptr } %t219, ptr %l74, !tbaa !27
  %t220 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t223 = extractvalue { i64, ptr } %t222, 0
  store i64 %t223, ptr %l76, !tbaa !24
  %t225 = load i64, ptr %l76, !tbaa !24
  %t226 = icmp eq i64 %t221, %t225
  br i1 %t226, label %bb16, label %bb17
bb16:
  %t228 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = load i64, ptr %l76, !tbaa !24
  %t233 = mul i64 %t232, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t229, ptr %t231, i64 %t233, i1 false)
  br label %bb18
bb17:
  %t234 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t234, ptr %l7, !tbaa !27
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t235 = load i64, ptr %l12, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l12, !tbaa !24
  br label %bb9
bb20:
  %t239 = load ptr, ptr %l1, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t241 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t244 = extractvalue { i64, ptr } %t240, 1
  %t245 = extractvalue { i64, ptr } %t240, 0
  %t246 = add i64 %t242, %t245
  %t247 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t248 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t249 = add i64 %t246, %t248
  %t250 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t249)
  call void @olang_textcopy(ptr %t250, ptr %t241, i64 %t242)
  %t251 = getelementptr i8, ptr %t250, i64 %t242
  call void @olang_textcopy(ptr %t251, ptr %t244, i64 %t245)
  %t252 = getelementptr i8, ptr %t251, i64 %t245
  call void @olang_textcopy(ptr %t252, ptr %t247, i64 %t248)
  %t253 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t250, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = extractvalue { i64, ptr } %t254, 1
  %t258 = mul i64 %t256, 1
  %t259 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t258)
  call void @llvm.memcpy.p0.p0.i64(ptr %t259, ptr %t257, i64 %t258, i1 false)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t239, { i64, ptr } %t261)
  br label %bb21
bb21:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d92, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t264 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t264, ptr %l85, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  store i64 %t266, ptr %l86, !tbaa !24
  %t267 = load i64, ptr %l86, !tbaa !24
  %t268 = mul i64 %t267, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t268)
  %t270 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  store { i64, ptr } %t271, ptr %l87, !tbaa !27
  %t272 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = load i64, ptr %l86, !tbaa !24
  %t277 = mul i64 %t276, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t273, ptr %t275, i64 %t277, i1 false)
  %t278 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t278, ptr %l85, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t279 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t279, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2evisit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/load:Import"
  %l9 = alloca i1
  %l17 = alloca ptr
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca %"compiler/load:Import"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v1, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v1, ptr %t7, i64 %t8, i1 true)
  br label %bb5
bb5:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:Emitter", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/generic:Program", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/load:Loader", ptr %t17, i32 0, i32 10
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 11
  store ptr %t26, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l5, !tbaa !24
  store i64 %t28, ptr %l20, !tbaa !24
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l22
  br label %bb8
bb8:
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = load i64, ptr %l22, !tbaa !24
  %t34 = icmp slt i64 %t32, %t33
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/load:Import" %t42, ptr %l27
  br label %bb12
bb12:
  %t43 = load %"compiler/load:Import", ptr %l27
  store %"compiler/load:Import" %t43, ptr %l6
  %t44 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 5
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/load:Import", ptr %l6, i32 0, i32 5
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2evisit(ptr %v0, ptr %v1, ptr %v2, ptr %t49, i64 %t51, ptr %t52, ptr %t53)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l5, !tbaa !24
  br label %bb7
bb18:
  %t62 = load ptr, ptr %l3, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t62, i64 %t63)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l18 = alloca { i64, [1 x i64] }
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { { i64, ptr }, i32 }
  %l26 = alloca i64
  %l27 = alloca { { i64, ptr }, i32 }
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l48 = alloca i64
  %l52 = alloca i32
  %l63 = alloca { i64, ptr }
  %l65 = alloca i64
  %l75 = alloca i32
  %l78 = alloca i32
  %l104 = alloca { i64, [1 x i64] }
  %l107 = alloca i32
  %l111 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l119 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l126 = alloca i64
  %l128 = alloca { i64, ptr }
  %l136 = alloca i32
  %l137 = alloca ptr
  %l138 = alloca ptr
  %l141 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l152 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l158 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca { i64, ptr }
  %l161 = alloca i32
  %l162 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l169 = alloca { { i64, ptr }, i32 }
  %l170 = alloca { i64, ptr }
  %l172 = alloca i64
  %l174 = alloca i64
  %l175 = alloca { i64, ptr }
  %l182 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l185 = alloca i32
  %l188 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l195 = alloca { { i64, ptr }, i32 }
  %l196 = alloca { i64, ptr }
  %l198 = alloca i64
  %l200 = alloca i64
  %l201 = alloca { i64, ptr }
  %l207 = alloca i32
  %l209 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l219 = alloca i1
  %l224 = alloca { i64, ptr }
  %l226 = alloca i64
  %l230 = alloca ptr
  %l233 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l239 = alloca i64
  %l242 = alloca ptr
  %l245 = alloca i32
  %l246 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l255 = alloca ptr
  %l257 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, i32 }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d93, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t9, ptr %l36, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l37, !tbaa !24
  %t12 = load i64, ptr %l37, !tbaa !24
  %t13 = mul i64 %t12, 1
  %t14 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l38, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = load i64, ptr %l37, !tbaa !24
  %t22 = mul i64 %t21, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %t20, i64 %t22, i1 false)
  %t23 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t23, ptr %lp3
  %t24 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t25 = load ptr, ptr %lp3
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  store i1 false, ptr %l5, !tbaa !21
  store i1 false, ptr %l6, !tbaa !21
  %t28 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t29 = load { i64, [2 x i64] }, ptr %t28
  store { i64, [2 x i64] } %t29, ptr %l7
  %t31 = load { i64, [2 x i64] }, ptr %l7
  %t33 = extractvalue { i64, [2 x i64] } %t31, 0
  %t34 = icmp eq i64 %t33, 1
  br i1 %t34, label %bb1, label %bb2
bb1:
  %t36 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t37 = getelementptr { i32 }, ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l8, !tbaa !23
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l8, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %v1, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l46
  br label %bb4
bb4:
  %t45 = load ptr, ptr %lp3
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  %t48 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l48, !tbaa !24
  %t51 = load i64, ptr %l48, !tbaa !24
  %t52 = icmp eq i64 %t47, %t51
  br i1 %t52, label %bb5, label %bb6
bb5:
  %t54 = load ptr, ptr %lp3
  %t55 = getelementptr { i64, ptr }, ptr %t54, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l48, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  br label %bb7
bb6:
  %t61 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t62 = load ptr, ptr %lp3
  store { i64, ptr } %t61, ptr %t62, !tbaa !27
  br label %bb7
bb7:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l8, !tbaa !23
  %t67 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l52
  br label %bb8
bb8:
  %t68 = load i32, ptr %l52, !tbaa !23
  store i32 %t68, ptr %l4, !tbaa !23
  br label %bb23
bb9:
  %t69 = load { i64, [2 x i64] }, ptr %l7
  %t71 = extractvalue { i64, [2 x i64] } %t69, 0
  %t72 = icmp eq i64 %t71, 2
  br i1 %t72, label %bb10, label %bb11
bb10:
  %t74 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t75 = getelementptr { i64, i32, i32 }, ptr %t74, i32 0, i32 0
  %t76 = load i64, ptr %t75
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t79 = getelementptr { i64, i32, i32 }, ptr %t78, i32 0, i32 1
  %t80 = load i32, ptr %t79
  store i32 %t80, ptr %l10, !tbaa !23
  %t82 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t83 = getelementptr { i64, i32, i32 }, ptr %t82, i32 0, i32 2
  %t84 = load i32, ptr %t83
  store i32 %t84, ptr %l11, !tbaa !23
  br label %bb12
bb11:
  br label %bb17
bb12:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/emit:fnEm", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t90 = load i64, ptr %l9, !tbaa !24
  %t91 = load i32, ptr %l10, !tbaa !23
  %t92 = load i32, ptr %l11, !tbaa !23
  %t97 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobal(ptr %v0, ptr %v1, ptr %t89, i64 %t90, i32 %t91, i32 %t92)
  store { i64, ptr } %t97, ptr %l63
  br label %bb13
bb13:
  %t98 = load ptr, ptr %lp3
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  store i64 %t102, ptr %l65, !tbaa !24
  %t104 = load i64, ptr %l65, !tbaa !24
  %t105 = icmp eq i64 %t100, %t104
  br i1 %t105, label %bb14, label %bb15
bb14:
  %t107 = load ptr, ptr %lp3
  %t108 = getelementptr { i64, ptr }, ptr %t107, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = load i64, ptr %l65, !tbaa !24
  %t113 = mul i64 %t112, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t109, ptr %t111, i64 %t113, i1 false)
  br label %bb16
bb15:
  %t114 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t115 = load ptr, ptr %lp3
  store { i64, ptr } %t114, ptr %t115, !tbaa !27
  br label %bb16
bb16:
  %t116 = load i32, ptr %l11, !tbaa !23
  store i32 %t116, ptr %l4, !tbaa !23
  br label %bb23
bb17:
  %t118 = load { i64, [2 x i64] }, ptr %l7
  %t120 = extractvalue { i64, [2 x i64] } %t118, 0
  %t121 = icmp eq i64 %t120, 0
  br i1 %t121, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t123 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s3, ptr %t123, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d94, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_a45e6d34f8d75be7_fb9ba052a05cfc3b)
  unreachable
bb23:
  store i32 0, ptr %l12, !tbaa !23
  %t125 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t126 = getelementptr %"compiler/mir:Range", ptr %t125, i32 0, i32 1
  %t127 = load i32, ptr %t126, !tbaa !23
  store i32 %t127, ptr %l13, !tbaa !23
  store i32 1, ptr %l14, !tbaa !23
  %t129 = load i32, ptr %l13, !tbaa !23
  %t130 = load i32, ptr %l12, !tbaa !23
  %t133 = icmp sgt i32 %t129, %t130
  br i1 %t133, label %bb24, label %bb25
bb24:
  %t135 = load i32, ptr %l14, !tbaa !23
  %t137 = icmp sgt i32 %t135, 0
  br i1 %t137, label %bb26, label %bb27
bb25:
  store i32 0, ptr %l75, !tbaa !23
  br label %bb29
bb26:
  %t139 = load i32, ptr %l13, !tbaa !23
  %t140 = load i32, ptr %l12, !tbaa !23
  %t143 = sub i32 %t139, %t140
  %t144 = load i32, ptr %l14, !tbaa !23
  %t147 = add i32 %t143, %t144
  %t149 = sub i32 %t147, 1
  %t150 = load i32, ptr %l14, !tbaa !23
  %t153 = sdiv i32 %t149, %t150
  store i32 %t153, ptr %l78, !tbaa !23
  br label %bb28
bb27:
  store i32 0, ptr %l78, !tbaa !23
  br label %bb28
bb28:
  %t155 = load i32, ptr %l78, !tbaa !23
  store i32 %t155, ptr %l75, !tbaa !23
  br label %bb29
bb29:
  %t156 = load i32, ptr %l75, !tbaa !23
  store i32 %t156, ptr %l15, !tbaa !23
  store i32 0, ptr %l16, !tbaa !23
  br label %bb30
bb30:
  %t157 = load i32, ptr %l16, !tbaa !23
  %t158 = load i32, ptr %l15, !tbaa !23
  %t161 = icmp slt i32 %t157, %t158
  %t163 = xor i1 %t161, true
  br i1 %t163, label %bb31, label %bb32
bb31:
  br label %bb118
bb32:
  br label %bb33
bb33:
  %t165 = load i32, ptr %l12, !tbaa !23
  %t166 = load i32, ptr %l16, !tbaa !23
  %t167 = load i32, ptr %l14, !tbaa !23
  %t170 = mul i32 %t166, %t167
  %t173 = add i32 %t165, %t170
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/emit:fnEm", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/mir:Fn", ptr %t178, i32 0, i32 10
  %t181 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t182 = getelementptr %"compiler/mir:Range", ptr %t181, i32 0, i32 0
  %t183 = load i32, ptr %t182, !tbaa !23
  %t185 = sext i32 %t183 to i64
  %t188 = sext i32 %t173 to i64
  %t191 = add i64 %t185, %t188
  %t194 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t180, i64 %t191)
  store { i64, [1 x i64] } %t194, ptr %l104
  br label %bb34
bb34:
  %t195 = load { i64, [1 x i64] }, ptr %l104
  store { i64, [1 x i64] } %t195, ptr %l18
  %t196 = load ptr, ptr %l2, !tbaa !29
  %t197 = load i32, ptr %l4, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l107
  br label %bb35
bb35:
  %t201 = load i32, ptr %l107, !tbaa !23
  store i32 %t201, ptr %l19, !tbaa !23
  %t202 = load { i64, [1 x i64] }, ptr %l18
  %t204 = extractvalue { i64, [1 x i64] } %t202, 0
  %t205 = icmp eq i64 %t204, 0
  br i1 %t205, label %bb36, label %bb37
bb36:
  %t207 = getelementptr { i64, [1 x i64] }, ptr %l18, i32 0, i32 1
  %t208 = getelementptr { i64 }, ptr %t207, i32 0, i32 0
  %t209 = load i64, ptr %t208
  store i64 %t209, ptr %l20, !tbaa !24
  br label %bb38
bb37:
  br label %bb46
bb38:
  store %olang.scope zeroinitializer, ptr %s6
  %t211 = load ptr, ptr %l2, !tbaa !29
  store ptr %t211, ptr %l111, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i32, ptr %l19, !tbaa !23
  %t216 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t212, i32 %t213)
  store i32 %t216, ptr %l114
  br label %bb39
bb39:
  %t217 = load ptr, ptr %l111, !tbaa !29
  %t218 = load i32, ptr %l114, !tbaa !23
  %t219 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t217, i32 %t218)
  store { i64, ptr } %t219, ptr %l115
  br label %bb40
bb40:
  %t220 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t220, ptr %l21, !tbaa !27
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l116, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l19, !tbaa !23
  %t226 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s6, ptr %t222, i32 %t223)
  store { i64, ptr } %t226, ptr %l119
  br label %bb41
bb41:
  %t227 = load ptr, ptr %lp3
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  %t229 = load i64, ptr %l20, !tbaa !24
  %t230 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t232 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = add i64 %t231, %t234
  %t236 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t238 = add i64 %t235, %t237
  %t240 = extractvalue { i64, ptr } %t228, 1
  %t241 = extractvalue { i64, ptr } %t228, 0
  %t242 = add i64 %t238, %t241
  %t243 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t247 = call i64 @__olang_fmt_i64(ptr null, i64 %t229)
  %t248 = add i64 %t245, %t247
  %t249 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t248)
  call void @olang_textcopy(ptr %t249, ptr %t230, i64 %t231)
  %t250 = getelementptr i8, ptr %t249, i64 %t231
  call void @olang_textcopy(ptr %t250, ptr %t233, i64 %t234)
  %t251 = getelementptr i8, ptr %t250, i64 %t234
  call void @olang_textcopy(ptr %t251, ptr %t236, i64 %t237)
  %t252 = getelementptr i8, ptr %t251, i64 %t237
  call void @olang_textcopy(ptr %t252, ptr %t240, i64 %t241)
  %t253 = getelementptr i8, ptr %t252, i64 %t241
  call void @olang_textcopy(ptr %t253, ptr %t243, i64 %t244)
  %t254 = getelementptr i8, ptr %t253, i64 %t244
  %t255 = call i64 @__olang_fmt_i64(ptr %t254, i64 %t229)
  %t256 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t249, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } %t257, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  %t265 = load ptr, ptr %l116, !tbaa !29
  %t267 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t265, { i64, ptr } %t264)
  store { i64, ptr } %t267, ptr %l124
  br label %bb42
bb42:
  %t268 = load ptr, ptr %lp3
  %t269 = load { i64, ptr }, ptr %t268, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 0
  %t271 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t272 = extractvalue { i64, ptr } %t271, 0
  store i64 %t272, ptr %l126, !tbaa !24
  %t274 = load i64, ptr %l126, !tbaa !24
  %t275 = icmp eq i64 %t270, %t274
  br i1 %t275, label %bb43, label %bb44
bb43:
  %t277 = load ptr, ptr %lp3
  %t278 = getelementptr { i64, ptr }, ptr %t277, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = load i64, ptr %l126, !tbaa !24
  %t283 = mul i64 %t282, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t279, ptr %t281, i64 %t283, i1 false)
  br label %bb45
bb44:
  %t284 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t285 = load ptr, ptr %lp3
  store { i64, ptr } %t284, ptr %t285, !tbaa !27
  br label %bb45
bb45:
  %t286 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t286, ptr %l128, !tbaa !27
  %t287 = load i64, ptr %l20, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr i32, ptr %t290, i64 %t287
  %t292 = load i32, ptr %t291, !tbaa !33
  store i32 %t292, ptr %l4, !tbaa !23
  store i1 false, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s6)
  br label %bb116
bb46:
  %t294 = load { i64, [1 x i64] }, ptr %l18
  %t296 = extractvalue { i64, [1 x i64] } %t294, 0
  %t297 = icmp eq i64 %t296, 1
  br i1 %t297, label %bb47, label %bb48
bb47:
  %t299 = getelementptr { i64, [1 x i64] }, ptr %l18, i32 0, i32 1
  %t300 = getelementptr { i32 }, ptr %t299, i32 0, i32 0
  %t301 = load i32, ptr %t300
  store i32 %t301, ptr %l22, !tbaa !23
  br label %bb49
bb48:
  br label %bb65
bb49:
  store %olang.scope zeroinitializer, ptr %s8
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i32, ptr %l22, !tbaa !23
  %t307 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %t303, i32 %t304)
  store i32 %t307, ptr %l136
  br label %bb50
bb50:
  %t308 = load i32, ptr %l136, !tbaa !23
  store i32 %t308, ptr %l23, !tbaa !23
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l137, !tbaa !29
  %t310 = load ptr, ptr %l0, !tbaa !29
  store ptr %t310, ptr %l138, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load i32, ptr %l23, !tbaa !23
  %t315 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s8, ptr %t311, i32 %t312)
  store { i64, ptr } %t315, ptr %l141
  br label %bb51
bb51:
  %t316 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t316, 0
  %t318 = extractvalue { i64, ptr } %t316, 1
  %t319 = mul i64 %t317, 1
  %t320 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t319)
  call void @llvm.memcpy.p0.p0.i64(ptr %t320, ptr %t318, i64 %t319, i1 false)
  %t321 = insertvalue { i64, ptr } undef, i64 %t317, 0
  %t322 = insertvalue { i64, ptr } %t321, ptr %t320, 1
  store { i64, ptr } %t322, ptr %l142, !tbaa !27
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i32, ptr %l22, !tbaa !23
  %t327 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %s8, ptr %t323, i32 %t324)
  store { i64, ptr } %t327, ptr %l145
  br label %bb52
bb52:
  %t328 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 0
  %t330 = extractvalue { i64, ptr } %t328, 1
  %t331 = mul i64 %t329, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t331)
  call void @llvm.memcpy.p0.p0.i64(ptr %t332, ptr %t330, i64 %t331, i1 false)
  %t333 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l146, !tbaa !27
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/emit:fnEm", ptr %t335, i32 0, i32 0
  %t338 = load ptr, ptr %t337, !tbaa !29
  %t339 = load i32, ptr %l23, !tbaa !23
  %t342 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %s8, ptr %t338, i32 %t339, i1 false)
  store { i64, ptr } %t342, ptr %l150
  br label %bb53
bb53:
  %t343 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  %t345 = extractvalue { i64, ptr } %t343, 1
  %t346 = mul i64 %t344, 1
  %t347 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t346)
  call void @llvm.memcpy.p0.p0.i64(ptr %t347, ptr %t345, i64 %t346, i1 false)
  %t348 = insertvalue { i64, ptr } undef, i64 %t344, 0
  %t349 = insertvalue { i64, ptr } %t348, ptr %t347, 1
  %t350 = load ptr, ptr %l138, !tbaa !29
  %t351 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t352 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t354 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s8, ptr %s8, ptr %s8, ptr %s8, ptr %t350, { i64, ptr } %t351, { i64, ptr } %t352, { i64, ptr } %t349)
  store { i64, ptr } %t354, ptr %l152
  br label %bb54
bb54:
  %t355 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t356 = extractvalue { i64, ptr } %t355, 0
  %t357 = extractvalue { i64, ptr } %t355, 1
  %t358 = mul i64 %t356, 1
  %t359 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t358)
  call void @llvm.memcpy.p0.p0.i64(ptr %t359, ptr %t357, i64 %t358, i1 false)
  %t360 = insertvalue { i64, ptr } undef, i64 %t356, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t359, 1
  %t362 = load i32, ptr %l23, !tbaa !23
  %t363 = load ptr, ptr %l137, !tbaa !29
  %t366 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s8, ptr %s8, ptr %t363, { i64, ptr } %t361, i32 %t362)
  store { i64, ptr } %t366, ptr %l155
  br label %bb55
bb55:
  %t367 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t367, ptr %l24, !tbaa !27
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load i32, ptr %l4, !tbaa !23
  %t372 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t368, i32 %t369)
  store i1 %t372, ptr %l158
  br label %bb56
bb56:
  %t373 = load i1, ptr %l158, !tbaa !21
  br i1 %t373, label %bb57, label %bb58
bb57:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb59
bb58:
  br label %bb59
bb59:
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l159, !tbaa !29
  %t375 = load ptr, ptr %lp3
  %t376 = load { i64, ptr }, ptr %t375, !tbaa !27
  store { i64, ptr } %t376, ptr %l160, !tbaa !27
  %t377 = load i32, ptr %l4, !tbaa !23
  store i32 %t377, ptr %l161, !tbaa !23
  %t378 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t378, ptr %l162, !tbaa !27
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t381 = getelementptr %"compiler/emit:fnEm", ptr %t379, i32 0, i32 0
  %t382 = load ptr, ptr %t381, !tbaa !29
  %t383 = load i1, ptr %l5, !tbaa !21
  %t384 = load i1, ptr %l6, !tbaa !21
  %t388 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edescTag(ptr %v0, ptr %s8, ptr %t382, i1 %t383, i1 %t384)
  store { i64, ptr } %t388, ptr %l167
  br label %bb60
bb60:
  %t389 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 0
  %t391 = extractvalue { i64, ptr } %t389, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t396 = load ptr, ptr %l159, !tbaa !29
  %t397 = load { i64, ptr }, ptr %l160, !tbaa !27
  %t398 = load i32, ptr %l161, !tbaa !23
  %t399 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t401 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %s8, ptr %s8, ptr %s8, ptr %t396, { i64, ptr } %t397, i32 %t398, { i64, ptr } %t399, { i64, ptr } %t395)
  store { { i64, ptr }, i32 } %t401, ptr %l169
  br label %bb61
bb61:
  %t402 = load { { i64, ptr }, i32 }, ptr %l169
  store { { i64, ptr }, i32 } %t402, ptr %l25
  %t403 = getelementptr { { i64, ptr }, i32 }, ptr %l25, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l170, !tbaa !27
  %t405 = load ptr, ptr %lp3
  %t406 = load { i64, ptr }, ptr %t405, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 0
  %t408 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t408, 0
  store i64 %t409, ptr %l172, !tbaa !24
  %t411 = load i64, ptr %l172, !tbaa !24
  %t412 = icmp eq i64 %t407, %t411
  br i1 %t412, label %bb62, label %bb63
bb62:
  %t414 = load ptr, ptr %lp3
  %t415 = getelementptr { i64, ptr }, ptr %t414, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = load i64, ptr %l172, !tbaa !24
  %t420 = mul i64 %t419, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t416, ptr %t418, i64 %t420, i1 false)
  br label %bb64
bb63:
  %t421 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t422 = extractvalue { i64, ptr } %t421, 0
  store i64 %t422, ptr %l174, !tbaa !24
  %t423 = load i64, ptr %l174, !tbaa !24
  %t424 = mul i64 %t423, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t424)
  %t426 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  store { i64, ptr } %t427, ptr %l175, !tbaa !27
  %t428 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t429 = load ptr, ptr %t428, !tbaa !27
  %t430 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t431 = load ptr, ptr %t430, !tbaa !27
  %t432 = load i64, ptr %l174, !tbaa !24
  %t433 = mul i64 %t432, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t429, ptr %t431, i64 %t433, i1 false)
  %t434 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t435 = load ptr, ptr %lp3
  store { i64, ptr } %t434, ptr %t435, !tbaa !27
  br label %bb64
bb64:
  %t436 = getelementptr { { i64, ptr }, i32 }, ptr %l25, i32 0, i32 1
  %t437 = load i32, ptr %t436, !tbaa !23
  store i32 %t437, ptr %l4, !tbaa !23
  store i1 true, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s8)
  br label %bb116
bb65:
  %t439 = load { i64, [1 x i64] }, ptr %l18
  %t441 = extractvalue { i64, [1 x i64] } %t439, 0
  %t442 = icmp eq i64 %t441, 2
  br i1 %t442, label %bb66, label %bb67
bb66:
  %t444 = getelementptr { i64, [1 x i64] }, ptr %l18, i32 0, i32 1
  %t445 = getelementptr { i64 }, ptr %t444, i32 0, i32 0
  %t446 = load i64, ptr %t445
  store i64 %t446, ptr %l26, !tbaa !24
  br label %bb68
bb67:
  br label %bb78
bb68:
  store %olang.scope zeroinitializer, ptr %s10
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load i32, ptr %l4, !tbaa !23
  %t452 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t448, i32 %t449)
  store i1 %t452, ptr %l182
  br label %bb69
bb69:
  %t453 = load i1, ptr %l182, !tbaa !21
  br i1 %t453, label %bb70, label %bb71
bb70:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb72
bb71:
  br label %bb72
bb72:
  %t454 = load ptr, ptr %l0, !tbaa !29
  store ptr %t454, ptr %l183, !tbaa !29
  %t455 = load ptr, ptr %lp3
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  store { i64, ptr } %t456, ptr %l184, !tbaa !27
  %t457 = load i32, ptr %l4, !tbaa !23
  store i32 %t457, ptr %l185, !tbaa !23
  %t458 = load i64, ptr %l26, !tbaa !24
  %t460 = call i64 @__olang_fmt_i64(ptr null, i64 %t458)
  %t461 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t460)
  %t462 = call i64 @__olang_fmt_i64(ptr %t461, i64 %t458)
  %t463 = insertvalue { i64, ptr } undef, i64 %t460, 0
  %t464 = insertvalue { i64, ptr } %t463, ptr %t461, 1
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t467 = extractvalue { i64, ptr } %t464, 1
  %t468 = mul i64 %t466, 1
  %t469 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t468)
  call void @llvm.memcpy.p0.p0.i64(ptr %t469, ptr %t467, i64 %t468, i1 false)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t469, 1
  store { i64, ptr } %t471, ptr %l188, !tbaa !27
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/emit:fnEm", ptr %t472, i32 0, i32 0
  %t475 = load ptr, ptr %t474, !tbaa !29
  %t476 = load i1, ptr %l5, !tbaa !21
  %t477 = load i1, ptr %l6, !tbaa !21
  %t481 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edescTag(ptr %v0, ptr %s10, ptr %t475, i1 %t476, i1 %t477)
  store { i64, ptr } %t481, ptr %l193
  br label %bb73
bb73:
  %t482 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t482, 0
  %t484 = extractvalue { i64, ptr } %t482, 1
  %t485 = mul i64 %t483, 1
  %t486 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t485)
  call void @llvm.memcpy.p0.p0.i64(ptr %t486, ptr %t484, i64 %t485, i1 false)
  %t487 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t486, 1
  %t489 = load ptr, ptr %l183, !tbaa !29
  %t490 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t491 = load i32, ptr %l185, !tbaa !23
  %t492 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t494 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %s10, ptr %s10, ptr %s10, ptr %t489, { i64, ptr } %t490, i32 %t491, { i64, ptr } %t492, { i64, ptr } %t488)
  store { { i64, ptr }, i32 } %t494, ptr %l195
  br label %bb74
bb74:
  %t495 = load { { i64, ptr }, i32 }, ptr %l195
  store { { i64, ptr }, i32 } %t495, ptr %l27
  %t496 = getelementptr { { i64, ptr }, i32 }, ptr %l27, i32 0, i32 0
  %t497 = load { i64, ptr }, ptr %t496, !tbaa !27
  store { i64, ptr } %t497, ptr %l196, !tbaa !27
  %t498 = load ptr, ptr %lp3
  %t499 = load { i64, ptr }, ptr %t498, !tbaa !27
  %t500 = extractvalue { i64, ptr } %t499, 0
  %t501 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t502 = extractvalue { i64, ptr } %t501, 0
  store i64 %t502, ptr %l198, !tbaa !24
  %t504 = load i64, ptr %l198, !tbaa !24
  %t505 = icmp eq i64 %t500, %t504
  br i1 %t505, label %bb75, label %bb76
bb75:
  %t507 = load ptr, ptr %lp3
  %t508 = getelementptr { i64, ptr }, ptr %t507, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !27
  %t510 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t511 = load ptr, ptr %t510, !tbaa !27
  %t512 = load i64, ptr %l198, !tbaa !24
  %t513 = mul i64 %t512, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t509, ptr %t511, i64 %t513, i1 false)
  br label %bb77
bb76:
  %t514 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t515 = extractvalue { i64, ptr } %t514, 0
  store i64 %t515, ptr %l200, !tbaa !24
  %t516 = load i64, ptr %l200, !tbaa !24
  %t517 = mul i64 %t516, 1
  %t518 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t517)
  %t519 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t520 = insertvalue { i64, ptr } %t519, ptr %t518, 1
  store { i64, ptr } %t520, ptr %l201, !tbaa !27
  %t521 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t524 = load ptr, ptr %t523, !tbaa !27
  %t525 = load i64, ptr %l200, !tbaa !24
  %t526 = mul i64 %t525, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t522, ptr %t524, i64 %t526, i1 false)
  %t527 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t528 = load ptr, ptr %lp3
  store { i64, ptr } %t527, ptr %t528, !tbaa !27
  br label %bb77
bb77:
  %t529 = getelementptr { { i64, ptr }, i32 }, ptr %l27, i32 0, i32 1
  %t530 = load i32, ptr %t529, !tbaa !23
  store i32 %t530, ptr %l4, !tbaa !23
  store i1 true, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s10)
  br label %bb116
bb78:
  %t532 = load { i64, [1 x i64] }, ptr %l18
  %t534 = extractvalue { i64, [1 x i64] } %t532, 0
  %t535 = icmp eq i64 %t534, 3
  br i1 %t535, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb95
bb81:
  store %olang.scope zeroinitializer, ptr %s13
  %t537 = load ptr, ptr %l2, !tbaa !29
  %t538 = load i32, ptr %l19, !tbaa !23
  %t541 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t537, i32 %t538)
  store i32 %t541, ptr %l207
  br label %bb82
bb82:
  %t542 = load i32, ptr %l207, !tbaa !23
  store i32 %t542, ptr %l28, !tbaa !23
  %t543 = load i1, ptr %l6, !tbaa !21
  br i1 %t543, label %bb83, label %bb84
bb83:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d98, i32 0, i32 1) }, ptr %l209, !tbaa !27
  br label %bb86
bb84:
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t547 = getelementptr %"compiler/emit:fnEm", ptr %t545, i32 0, i32 0
  %t548 = load ptr, ptr %t547, !tbaa !29
  %t549 = load i32, ptr %l19, !tbaa !23
  %t550 = load i1, ptr %l5, !tbaa !21
  %t554 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %s13, ptr %t548, i32 %t549, i1 %t550)
  store { i64, ptr } %t554, ptr %l214
  br label %bb85
bb85:
  %t555 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t556 = extractvalue { i64, ptr } %t555, 0
  %t557 = extractvalue { i64, ptr } %t555, 1
  %t558 = mul i64 %t556, 1
  %t559 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t558)
  call void @llvm.memcpy.p0.p0.i64(ptr %t559, ptr %t557, i64 %t558, i1 false)
  %t560 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t561 = insertvalue { i64, ptr } %t560, ptr %t559, 1
  store { i64, ptr } %t561, ptr %l209, !tbaa !27
  br label %bb86
bb86:
  %t563 = load { i64, ptr }, ptr %l209, !tbaa !27
  store { i64, ptr } %t563, ptr %l29, !tbaa !27
  %t564 = load i32, ptr %l28, !tbaa !23
  store i32 %t564, ptr %l4, !tbaa !23
  %t566 = load ptr, ptr %l0, !tbaa !29
  %t567 = load i32, ptr %l28, !tbaa !23
  %t570 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t566, i32 %t567)
  store i1 %t570, ptr %l219
  br label %bb87
bb87:
  %t571 = load i1, ptr %l219, !tbaa !21
  %t572 = xor i1 %t571, true
  br i1 %t572, label %bb88, label %bb89
bb88:
  %t574 = load ptr, ptr %l0, !tbaa !29
  %t575 = load ptr, ptr %lp3
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !27
  %t577 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t581 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %s13, ptr %v1, ptr %t574, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, { i64, ptr } %t576, { i64, ptr } %t577)
  store { i64, ptr } %t581, ptr %l224
  br label %bb90
bb89:
  br label %bb94
bb90:
  %t582 = load ptr, ptr %lp3
  %t583 = load { i64, ptr }, ptr %t582, !tbaa !27
  %t584 = extractvalue { i64, ptr } %t583, 0
  %t585 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t586 = extractvalue { i64, ptr } %t585, 0
  store i64 %t586, ptr %l226, !tbaa !24
  %t588 = load i64, ptr %l226, !tbaa !24
  %t589 = icmp eq i64 %t584, %t588
  br i1 %t589, label %bb91, label %bb92
bb91:
  %t591 = load ptr, ptr %lp3
  %t592 = getelementptr { i64, ptr }, ptr %t591, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t595 = load ptr, ptr %t594, !tbaa !27
  %t596 = load i64, ptr %l226, !tbaa !24
  %t597 = mul i64 %t596, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t593, ptr %t595, i64 %t597, i1 false)
  br label %bb93
bb92:
  %t598 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t599 = load ptr, ptr %lp3
  store { i64, ptr } %t598, ptr %t599, !tbaa !27
  br label %bb93
bb93:
  store i1 false, ptr %l6, !tbaa !21
  store i1 false, ptr %l5, !tbaa !21
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s13)
  br label %bb116
bb95:
  %t600 = load { i64, [1 x i64] }, ptr %l18
  %t602 = extractvalue { i64, [1 x i64] } %t600, 0
  %t603 = icmp eq i64 %t602, 4
  br i1 %t603, label %bb96, label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb115
bb98:
  store %olang.scope zeroinitializer, ptr %s15
  %t605 = load ptr, ptr %l0, !tbaa !29
  store ptr %t605, ptr %l230, !tbaa !29
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load i32, ptr %l19, !tbaa !23
  %t610 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s15, ptr %t606, i32 %t607)
  store { i64, ptr } %t610, ptr %l233
  br label %bb99
bb99:
  %t611 = load ptr, ptr %lp3
  %t612 = load { i64, ptr }, ptr %t611, !tbaa !27
  %t613 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t615 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t616 = extractvalue { i64, ptr } %t615, 1
  %t617 = extractvalue { i64, ptr } %t615, 0
  %t618 = add i64 %t614, %t617
  %t619 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t620 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t621 = add i64 %t618, %t620
  %t623 = extractvalue { i64, ptr } %t612, 1
  %t624 = extractvalue { i64, ptr } %t612, 0
  %t625 = add i64 %t621, %t624
  %t626 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t627 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t628 = add i64 %t625, %t627
  %t629 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t628)
  call void @olang_textcopy(ptr %t629, ptr %t613, i64 %t614)
  %t630 = getelementptr i8, ptr %t629, i64 %t614
  call void @olang_textcopy(ptr %t630, ptr %t616, i64 %t617)
  %t631 = getelementptr i8, ptr %t630, i64 %t617
  call void @olang_textcopy(ptr %t631, ptr %t619, i64 %t620)
  %t632 = getelementptr i8, ptr %t631, i64 %t620
  call void @olang_textcopy(ptr %t632, ptr %t623, i64 %t624)
  %t633 = getelementptr i8, ptr %t632, i64 %t624
  call void @olang_textcopy(ptr %t633, ptr %t626, i64 %t627)
  %t634 = insertvalue { i64, ptr } undef, i64 %t628, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t629, 1
  %t637 = extractvalue { i64, ptr } %t635, 0
  %t638 = extractvalue { i64, ptr } %t635, 1
  %t639 = mul i64 %t637, 1
  %t640 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t639)
  call void @llvm.memcpy.p0.p0.i64(ptr %t640, ptr %t638, i64 %t639, i1 false)
  %t641 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t640, 1
  %t643 = load ptr, ptr %l230, !tbaa !29
  %t645 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t643, { i64, ptr } %t642)
  store { i64, ptr } %t645, ptr %l237
  br label %bb100
bb100:
  %t646 = load ptr, ptr %lp3
  %t647 = load { i64, ptr }, ptr %t646, !tbaa !27
  %t648 = extractvalue { i64, ptr } %t647, 0
  %t649 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t650 = extractvalue { i64, ptr } %t649, 0
  store i64 %t650, ptr %l239, !tbaa !24
  %t652 = load i64, ptr %l239, !tbaa !24
  %t653 = icmp eq i64 %t648, %t652
  br i1 %t653, label %bb101, label %bb102
bb101:
  %t655 = load ptr, ptr %lp3
  %t656 = getelementptr { i64, ptr }, ptr %t655, i32 0, i32 1
  %t657 = load ptr, ptr %t656, !tbaa !27
  %t658 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t659 = load ptr, ptr %t658, !tbaa !27
  %t660 = load i64, ptr %l239, !tbaa !24
  %t661 = mul i64 %t660, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t657, ptr %t659, i64 %t661, i1 false)
  br label %bb103
bb102:
  %t662 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t663 = load ptr, ptr %lp3
  store { i64, ptr } %t662, ptr %t663, !tbaa !27
  br label %bb103
bb103:
  %t664 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t664, ptr %l4, !tbaa !23
  %t666 = load ptr, ptr %l2, !tbaa !29
  store ptr %t666, ptr %l242, !tbaa !29
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t668 = load i32, ptr %l19, !tbaa !23
  %t671 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %t667, i32 %t668)
  store i32 %t671, ptr %l245
  br label %bb104
bb104:
  %t672 = load ptr, ptr %l242, !tbaa !29
  %t673 = load i32, ptr %l245, !tbaa !23
  %t674 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t672, i32 %t673)
  store { i64, ptr } %t674, ptr %l246
  br label %bb105
bb105:
  %t675 = load { i64, ptr }, ptr %l246, !tbaa !27
  store { i64, ptr } %t675, ptr %l30, !tbaa !27
  %t676 = load { i64, [1 x i64] }, ptr %l18
  %t678 = extractvalue { i64, [1 x i64] } %t676, 0
  %t679 = icmp eq i64 %t678, 4
  br i1 %t679, label %bb106, label %bb107
bb106:
  %t681 = getelementptr { i64, [1 x i64] }, ptr %l18, i32 0, i32 1
  %t682 = getelementptr { i64 }, ptr %t681, i32 0, i32 0
  %t683 = load i64, ptr %t682
  store i64 %t683, ptr %l31, !tbaa !24
  br label %bb108
bb107:
  br label %bb109
bb108:
  %t685 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t685, ptr %l250, !tbaa !27
  %t686 = load i64, ptr %l31, !tbaa !24
  %t688 = getelementptr { i64, ptr }, ptr %l250, i32 0, i32 1
  %t689 = load ptr, ptr %t688, !tbaa !27
  %t690 = getelementptr i32, ptr %t689, i64 %t686
  %t691 = load i32, ptr %t690, !tbaa !33
  store i32 %t691, ptr %l4, !tbaa !23
  br label %bb114
bb109:
  br i1 true, label %bb110, label %bb111
bb110:
  br label %bb112
bb111:
  br label %bb113
bb112:
  br label %bb114
bb113:
  call void @__olang_check_failed(ptr @olang_loc_f0091f918c975106_bc2d594a86836fba)
  unreachable
bb114:
  store i1 true, ptr %l6, !tbaa !21
  call void @__olang_scope_close(ptr %s15)
  br label %bb116
bb115:
  call void @__olang_check_failed(ptr @olang_loc_44ab2decf02f961d_3f31a3219a480a51)
  unreachable
bb116:
  br label %bb117
bb117:
  %t693 = load i32, ptr %l16, !tbaa !23
  %t695 = add i32 %t693, 1
  store i32 %t695, ptr %l16, !tbaa !23
  br label %bb30
bb118:
  %t697 = load ptr, ptr %l0, !tbaa !29
  store ptr %t697, ptr %l255, !tbaa !29
  %t698 = load i1, ptr %l6, !tbaa !21
  br i1 %t698, label %bb119, label %bb120
bb119:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l257, !tbaa !27
  br label %bb122
bb120:
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t702 = getelementptr %"compiler/emit:fnEm", ptr %t700, i32 0, i32 0
  %t703 = load ptr, ptr %t702, !tbaa !29
  %t704 = load i32, ptr %l4, !tbaa !23
  %t705 = load i1, ptr %l5, !tbaa !21
  %t709 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %v0, ptr %t703, i32 %t704, i1 %t705)
  store { i64, ptr } %t709, ptr %l262
  br label %bb121
bb121:
  %t710 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t711 = extractvalue { i64, ptr } %t710, 0
  %t712 = extractvalue { i64, ptr } %t710, 1
  %t713 = mul i64 %t711, 1
  %t714 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t713)
  call void @llvm.memcpy.p0.p0.i64(ptr %t714, ptr %t712, i64 %t713, i1 false)
  %t715 = insertvalue { i64, ptr } undef, i64 %t711, 0
  %t716 = insertvalue { i64, ptr } %t715, ptr %t714, 1
  store { i64, ptr } %t716, ptr %l257, !tbaa !27
  br label %bb122
bb122:
  %t718 = load ptr, ptr %l255, !tbaa !29
  %t719 = getelementptr %"compiler/emit:fnEm", ptr %t718, i32 0, i32 15
  %t720 = load { i64, ptr }, ptr %t719, !tbaa !27
  store { i64, ptr } %t720, ptr %l264, !tbaa !27
  %t721 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t722 = load ptr, ptr %l255, !tbaa !29
  %t723 = getelementptr %"compiler/emit:fnEm", ptr %t722, i32 0, i32 15
  store { i64, ptr } %t721, ptr %t723, !tbaa !27
  %t724 = load i1, ptr @olang_2esole_2ecompiler_2femit_3afnEm_2e15
  br i1 %t724, label %bb123, label %bb124
bb123:
  %t726 = load { i64, ptr }, ptr %l264
  %t727 = extractvalue { i64, ptr } %t726, 1
  call void @__olang_region_release(ptr %t727)
  store { i64, ptr } zeroinitializer, ptr %l264
  br label %bb124
bb124:
  %t728 = load ptr, ptr %lp3
  %t729 = load { i64, ptr }, ptr %t728, !tbaa !27
  %t730 = load i32, ptr %l4, !tbaa !23
  %t732 = insertvalue { { i64, ptr }, i32 } undef, { i64, ptr } %t729, 0
  %t734 = insertvalue { { i64, ptr }, i32 } %t732, i32 %t730, 1
  store { { i64, ptr }, i32 } %t734, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i32 }, ptr %rv
  ret { { i64, ptr }, i32 } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ebf16Bits(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a1, 1
  %t7 = extractvalue { i64, ptr } %a1, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
  call void @olang_textcopy(ptr %t12, ptr %t3, i64 %t4)
  %t13 = getelementptr i8, ptr %t12, i64 %t4
  call void @olang_textcopy(ptr %t13, ptr %t6, i64 %t7)
  %t14 = getelementptr i8, ptr %t13, i64 %t7
  call void @olang_textcopy(ptr %t14, ptr %t9, i64 %t10)
  %t15 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t12, 1
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t19 = extractvalue { i64, ptr } %t16, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t26 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t1, { i64, ptr } %t23)
  store { i64, ptr } %t26, ptr %l8
  br label %bb1
bb1:
  %t27 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t27, ptr %lp3
  %t28 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t29 = load ptr, ptr %lp3
  store { i64, ptr } %t28, ptr %t29, !tbaa !27
  br i1 %a2, label %bb2, label %bb3
bb2:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %lp3
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  %t37 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v2, ptr %v2, ptr %t32, { i64, ptr } %t34)
  store { i64, ptr } %t37, ptr %l13
  br label %bb4
bb3:
  %t38 = load ptr, ptr %lp3
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  store { i64, ptr } %t39, ptr %l10, !tbaa !27
  br label %bb5
bb4:
  %t41 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t41, ptr %l10, !tbaa !27
  br label %bb5
bb5:
  %t42 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecompare(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %lp13 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i1
  %l70 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t9, i32 %t10)
  store { i64, ptr } %t13, ptr %l19
  br label %bb1
bb1:
  %t14 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t14, ptr %l6, !tbaa !27
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l22
  br label %bb2
bb2:
  %t20 = load i1, ptr %l22, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t23 = trunc i64 13 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb4:
  br label %bb31
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d106, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb8:
  %t26 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t28 = trunc i64 14 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d107, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb12:
  %t31 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t33 = trunc i64 15 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb16:
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t38 = trunc i64 16 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d109, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb20:
  %t41 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t43 = trunc i64 17 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6e49a9d5ca45ccf_9b1f33edb40f22e3)
  unreachable
bb29:
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t52 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t55 = extractvalue { i64, ptr } %t46, 1
  %t56 = extractvalue { i64, ptr } %t46, 0
  %t57 = add i64 %t53, %t56
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t60 = add i64 %t57, %t59
  %t62 = extractvalue { i64, ptr } %t49, 1
  %t63 = extractvalue { i64, ptr } %t49, 0
  %t64 = add i64 %t60, %t63
  %t65 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t69 = extractvalue { i64, ptr } %t50, 1
  %t70 = extractvalue { i64, ptr } %t50, 0
  %t71 = add i64 %t67, %t70
  %t72 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t74 = add i64 %t71, %t73
  %t76 = extractvalue { i64, ptr } %t51, 1
  %t77 = extractvalue { i64, ptr } %t51, 0
  %t78 = add i64 %t74, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t52, i64 %t53)
  %t80 = getelementptr i8, ptr %t79, i64 %t53
  call void @olang_textcopy(ptr %t80, ptr %t55, i64 %t56)
  %t81 = getelementptr i8, ptr %t80, i64 %t56
  call void @olang_textcopy(ptr %t81, ptr %t58, i64 %t59)
  %t82 = getelementptr i8, ptr %t81, i64 %t59
  call void @olang_textcopy(ptr %t82, ptr %t62, i64 %t63)
  %t83 = getelementptr i8, ptr %t82, i64 %t63
  call void @olang_textcopy(ptr %t83, ptr %t65, i64 %t66)
  %t84 = getelementptr i8, ptr %t83, i64 %t66
  call void @olang_textcopy(ptr %t84, ptr %t69, i64 %t70)
  %t85 = getelementptr i8, ptr %t84, i64 %t70
  call void @olang_textcopy(ptr %t85, ptr %t72, i64 %t73)
  %t86 = getelementptr i8, ptr %t85, i64 %t73
  call void @olang_textcopy(ptr %t86, ptr %t76, i64 %t77)
  %t87 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t79, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = extractvalue { i64, ptr } %t88, 1
  %t92 = mul i64 %t90, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t92)
  call void @llvm.memcpy.p0.p0.i64(ptr %t93, ptr %t91, i64 %t92, i1 false)
  %t94 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  %t98 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t47, { i64, ptr } %t95)
  store { i64, ptr } %t98, ptr %l41
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb31:
  %t100 = load ptr, ptr %l5, !tbaa !29
  %t101 = load i32, ptr %l2, !tbaa !23
  %t104 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t100, i32 %t101)
  store i1 %t104, ptr %l44
  br label %bb32
bb32:
  %t105 = load i1, ptr %l44, !tbaa !21
  br i1 %t105, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb35
bb34:
  %t106 = load i32, ptr %l2, !tbaa !23
  %t107 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t110 = icmp eq i32 %t106, %t107
  store i1 %t110, ptr %l45, !tbaa !21
  br label %bb35
bb35:
  %t112 = load i1, ptr %l45, !tbaa !21
  store i1 %t112, ptr %l8, !tbaa !21
  %t113 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t115 = trunc i64 13 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d115, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb72
bb39:
  %t118 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t120 = trunc i64 14 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d116, i32 0, i32 1) }, ptr %l49, !tbaa !27
  br label %bb72
bb43:
  %t123 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t125 = trunc i64 15 to i32
  %t126 = icmp eq i32 %t123, %t125
  br i1 %t126, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb50
bb46:
  %t128 = load i1, ptr %l8, !tbaa !21
  br i1 %t128, label %bb47, label %bb48
bb47:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d117, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb49
bb48:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d118, i32 0, i32 1) }, ptr %l57, !tbaa !27
  br label %bb49
bb49:
  %t130 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t130, ptr %l49, !tbaa !27
  br label %bb72
bb50:
  %t131 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t133 = trunc i64 16 to i32
  %t134 = icmp eq i32 %t131, %t133
  br i1 %t134, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb57
bb53:
  %t136 = load i1, ptr %l8, !tbaa !21
  br i1 %t136, label %bb54, label %bb55
bb54:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, ptr %l61, !tbaa !27
  br label %bb56
bb55:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l61, !tbaa !27
  br label %bb56
bb56:
  %t138 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t138, ptr %l49, !tbaa !27
  br label %bb72
bb57:
  %t139 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t141 = trunc i64 17 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb64
bb60:
  %t144 = load i1, ptr %l8, !tbaa !21
  br i1 %t144, label %bb61, label %bb62
bb61:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d121, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb63
bb62:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l65, !tbaa !27
  br label %bb63
bb63:
  %t146 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t146, ptr %l49, !tbaa !27
  br label %bb72
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t147 = load i1, ptr %l8, !tbaa !21
  br i1 %t147, label %bb68, label %bb69
bb68:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb70
bb69:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d124, i32 0, i32 1) }, ptr %l67, !tbaa !27
  br label %bb70
bb70:
  %t149 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t149, ptr %l49, !tbaa !27
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_d5c68ab0446e2c8e_fefb10127a7e44e2)
  unreachable
bb72:
  %t150 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t150, ptr %l9, !tbaa !27
  %t151 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t153 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t151, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d125, i32 0, i32 1) })
  store i1 %t153, ptr %l69
  br label %bb73
bb73:
  %t154 = load i1, ptr %l69, !tbaa !21
  br i1 %t154, label %bb74, label %bb75
bb74:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb77
bb75:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t155, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d126, i32 0, i32 1) })
  store i1 %t157, ptr %l72
  br label %bb76
bb76:
  %t158 = load i1, ptr %l72, !tbaa !21
  store i1 %t158, ptr %l70, !tbaa !21
  br label %bb77
bb77:
  %t159 = load i1, ptr %l70, !tbaa !21
  br i1 %t159, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s15
  %t160 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t162 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s15, { i64, ptr } %t160, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d127, i32 0, i32 1) })
  store i1 %t162, ptr %l74
  br label %bb80
bb79:
  br label %bb95
bb80:
  %t163 = load i1, ptr %l74, !tbaa !21
  br i1 %t163, label %bb81, label %bb82
bb81:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d128, i32 0, i32 1) }, ptr %l75, !tbaa !27
  br label %bb83
bb82:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l75, !tbaa !27
  br label %bb83
bb83:
  %t164 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l76, !tbaa !29
  store { i64, ptr } %t164, ptr %l77, !tbaa !27
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = extractvalue { i64, ptr } %t168, 0
  %t175 = add i64 %t171, %t174
  %t176 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t178 = add i64 %t175, %t177
  %t180 = extractvalue { i64, ptr } %t169, 1
  %t181 = extractvalue { i64, ptr } %t169, 0
  %t182 = add i64 %t178, %t181
  %t183 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t184 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t185 = add i64 %t182, %t184
  %t186 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t185)
  call void @olang_textcopy(ptr %t186, ptr %t170, i64 %t171)
  %t187 = getelementptr i8, ptr %t186, i64 %t171
  call void @olang_textcopy(ptr %t187, ptr %t173, i64 %t174)
  %t188 = getelementptr i8, ptr %t187, i64 %t174
  call void @olang_textcopy(ptr %t188, ptr %t176, i64 %t177)
  %t189 = getelementptr i8, ptr %t188, i64 %t177
  call void @olang_textcopy(ptr %t189, ptr %t180, i64 %t181)
  %t190 = getelementptr i8, ptr %t189, i64 %t181
  call void @olang_textcopy(ptr %t190, ptr %t183, i64 %t184)
  %t191 = insertvalue { i64, ptr } undef, i64 %t185, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t186, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t202 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t167, { i64, ptr } %t199)
  store { i64, ptr } %t202, ptr %l83
  br label %bb84
bb84:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t206 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t209 = extractvalue { i64, ptr } %t204, 1
  %t210 = extractvalue { i64, ptr } %t204, 0
  %t211 = add i64 %t207, %t210
  %t212 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t216 = extractvalue { i64, ptr } %t205, 1
  %t217 = extractvalue { i64, ptr } %t205, 0
  %t218 = add i64 %t214, %t217
  %t219 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t220 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t221 = add i64 %t218, %t220
  %t222 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t221)
  call void @olang_textcopy(ptr %t222, ptr %t206, i64 %t207)
  %t223 = getelementptr i8, ptr %t222, i64 %t207
  call void @olang_textcopy(ptr %t223, ptr %t209, i64 %t210)
  %t224 = getelementptr i8, ptr %t223, i64 %t210
  call void @olang_textcopy(ptr %t224, ptr %t212, i64 %t213)
  %t225 = getelementptr i8, ptr %t224, i64 %t213
  call void @olang_textcopy(ptr %t225, ptr %t216, i64 %t217)
  %t226 = getelementptr i8, ptr %t225, i64 %t217
  call void @olang_textcopy(ptr %t226, ptr %t219, i64 %t220)
  %t227 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t222, 1
  %t230 = extractvalue { i64, ptr } %t228, 0
  %t231 = extractvalue { i64, ptr } %t228, 1
  %t232 = mul i64 %t230, 1
  %t233 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t232)
  call void @llvm.memcpy.p0.p0.i64(ptr %t233, ptr %t231, i64 %t232, i1 false)
  %t234 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t235 = insertvalue { i64, ptr } %t234, ptr %t233, 1
  %t238 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t203, { i64, ptr } %t235)
  store { i64, ptr } %t238, ptr %l89
  br label %bb85
bb85:
  %t239 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t241 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t241, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = add i64 %t240, %t243
  %t245 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t246 = extractvalue { i64, ptr } %t245, 1
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t248 = add i64 %t244, %t247
  %t249 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t250 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t251 = add i64 %t248, %t250
  %t252 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 1
  %t254 = extractvalue { i64, ptr } %t252, 0
  %t255 = add i64 %t251, %t254
  %t256 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t255)
  call void @olang_textcopy(ptr %t256, ptr %t239, i64 %t240)
  %t257 = getelementptr i8, ptr %t256, i64 %t240
  call void @olang_textcopy(ptr %t257, ptr %t242, i64 %t243)
  %t258 = getelementptr i8, ptr %t257, i64 %t243
  call void @olang_textcopy(ptr %t258, ptr %t246, i64 %t247)
  %t259 = getelementptr i8, ptr %t258, i64 %t247
  call void @olang_textcopy(ptr %t259, ptr %t249, i64 %t250)
  %t260 = getelementptr i8, ptr %t259, i64 %t250
  call void @olang_textcopy(ptr %t260, ptr %t253, i64 %t254)
  %t261 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t256, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l76, !tbaa !29
  %t272 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t270, { i64, ptr } %t269)
  store { i64, ptr } %t272, ptr %l92
  br label %bb86
bb86:
  %t273 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t273, ptr %l11, !tbaa !27
  %t274 = load ptr, ptr %l0, !tbaa !29
  store ptr %t274, ptr %l93, !tbaa !29
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t278 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t281 = extractvalue { i64, ptr } %t276, 1
  %t282 = extractvalue { i64, ptr } %t276, 0
  %t283 = add i64 %t279, %t282
  %t284 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t288 = extractvalue { i64, ptr } %t277, 1
  %t289 = extractvalue { i64, ptr } %t277, 0
  %t290 = add i64 %t286, %t289
  %t291 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t292 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t293 = add i64 %t290, %t292
  %t294 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t293)
  call void @olang_textcopy(ptr %t294, ptr %t278, i64 %t279)
  %t295 = getelementptr i8, ptr %t294, i64 %t279
  call void @olang_textcopy(ptr %t295, ptr %t281, i64 %t282)
  %t296 = getelementptr i8, ptr %t295, i64 %t282
  call void @olang_textcopy(ptr %t296, ptr %t284, i64 %t285)
  %t297 = getelementptr i8, ptr %t296, i64 %t285
  call void @olang_textcopy(ptr %t297, ptr %t288, i64 %t289)
  %t298 = getelementptr i8, ptr %t297, i64 %t289
  call void @olang_textcopy(ptr %t298, ptr %t291, i64 %t292)
  %t299 = insertvalue { i64, ptr } undef, i64 %t293, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t294, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t310 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t275, { i64, ptr } %t307)
  store { i64, ptr } %t310, ptr %l99
  br label %bb87
bb87:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t313 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t314 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t315 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t317 = extractvalue { i64, ptr } %t312, 1
  %t318 = extractvalue { i64, ptr } %t312, 0
  %t319 = add i64 %t315, %t318
  %t320 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t322 = add i64 %t319, %t321
  %t324 = extractvalue { i64, ptr } %t313, 1
  %t325 = extractvalue { i64, ptr } %t313, 0
  %t326 = add i64 %t322, %t325
  %t327 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t329 = add i64 %t326, %t328
  %t330 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t329)
  call void @olang_textcopy(ptr %t330, ptr %t314, i64 %t315)
  %t331 = getelementptr i8, ptr %t330, i64 %t315
  call void @olang_textcopy(ptr %t331, ptr %t317, i64 %t318)
  %t332 = getelementptr i8, ptr %t331, i64 %t318
  call void @olang_textcopy(ptr %t332, ptr %t320, i64 %t321)
  %t333 = getelementptr i8, ptr %t332, i64 %t321
  call void @olang_textcopy(ptr %t333, ptr %t324, i64 %t325)
  %t334 = getelementptr i8, ptr %t333, i64 %t325
  call void @olang_textcopy(ptr %t334, ptr %t327, i64 %t328)
  %t335 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t330, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  %t346 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t311, { i64, ptr } %t343)
  store { i64, ptr } %t346, ptr %l105
  br label %bb88
bb88:
  %t347 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t349 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t349, 1
  %t351 = extractvalue { i64, ptr } %t349, 0
  %t352 = add i64 %t348, %t351
  %t353 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t355 = add i64 %t352, %t354
  %t356 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = extractvalue { i64, ptr } %t356, 0
  %t359 = add i64 %t355, %t358
  %t360 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t359)
  call void @olang_textcopy(ptr %t360, ptr %t347, i64 %t348)
  %t361 = getelementptr i8, ptr %t360, i64 %t348
  call void @olang_textcopy(ptr %t361, ptr %t350, i64 %t351)
  %t362 = getelementptr i8, ptr %t361, i64 %t351
  call void @olang_textcopy(ptr %t362, ptr %t353, i64 %t354)
  %t363 = getelementptr i8, ptr %t362, i64 %t354
  call void @olang_textcopy(ptr %t363, ptr %t357, i64 %t358)
  %t364 = insertvalue { i64, ptr } undef, i64 %t359, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t360, 1
  %t367 = extractvalue { i64, ptr } %t365, 0
  %t368 = extractvalue { i64, ptr } %t365, 1
  %t369 = mul i64 %t367, 1
  %t370 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t369)
  call void @llvm.memcpy.p0.p0.i64(ptr %t370, ptr %t368, i64 %t369, i1 false)
  %t371 = insertvalue { i64, ptr } undef, i64 %t367, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t370, 1
  %t373 = load ptr, ptr %l93, !tbaa !29
  %t375 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t373, { i64, ptr } %t372)
  store { i64, ptr } %t375, ptr %l108
  br label %bb89
bb89:
  %t376 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t378 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t380 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t381 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t383 = extractvalue { i64, ptr } %t378, 1
  %t384 = extractvalue { i64, ptr } %t378, 0
  %t385 = add i64 %t381, %t384
  %t386 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, 1
  %t387 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) }, 0
  %t388 = add i64 %t385, %t387
  %t390 = extractvalue { i64, ptr } %t376, 1
  %t391 = extractvalue { i64, ptr } %t376, 0
  %t392 = add i64 %t388, %t391
  %t393 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t392)
  call void @olang_textcopy(ptr %t393, ptr %t380, i64 %t381)
  %t394 = getelementptr i8, ptr %t393, i64 %t381
  call void @olang_textcopy(ptr %t394, ptr %t383, i64 %t384)
  %t395 = getelementptr i8, ptr %t394, i64 %t384
  call void @olang_textcopy(ptr %t395, ptr %t386, i64 %t387)
  %t396 = getelementptr i8, ptr %t395, i64 %t387
  call void @olang_textcopy(ptr %t396, ptr %t390, i64 %t391)
  %t397 = insertvalue { i64, ptr } undef, i64 %t392, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t393, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = extractvalue { i64, ptr } %t398, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  %t408 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t377, { i64, ptr } %t405)
  store { i64, ptr } %t408, ptr %l114
  br label %bb90
bb90:
  %t409 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 16, i64 8)
  store ptr %t409, ptr %lp13
  %t410 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t411 = load ptr, ptr %lp13
  store { i64, ptr } %t410, ptr %t411, !tbaa !27
  %t412 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t414 = trunc i64 13 to i32
  %t415 = icmp eq i32 %t412, %t414
  br i1 %t415, label %bb91, label %bb92
bb91:
  %t417 = load ptr, ptr %lp13
  %t418 = load { i64, ptr }, ptr %t417, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t418, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load ptr, ptr %lp13
  %t422 = load { i64, ptr }, ptr %t421, !tbaa !27
  %t423 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d148, i32 0, i32 1) }, 1
  %t424 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d148, i32 0, i32 1) }, 0
  %t426 = extractvalue { i64, ptr } %t422, 1
  %t427 = extractvalue { i64, ptr } %t422, 0
  %t428 = add i64 %t424, %t427
  %t429 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t430 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t431 = add i64 %t428, %t430
  %t432 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t431)
  call void @olang_textcopy(ptr %t432, ptr %t423, i64 %t424)
  %t433 = getelementptr i8, ptr %t432, i64 %t424
  call void @olang_textcopy(ptr %t433, ptr %t426, i64 %t427)
  %t434 = getelementptr i8, ptr %t433, i64 %t427
  call void @olang_textcopy(ptr %t434, ptr %t429, i64 %t430)
  %t435 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t432, 1
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t446 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t420, { i64, ptr } %t443)
  store { i64, ptr } %t446, ptr %l122
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t447 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t447, ptr %rv
  br label %ret
bb95:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t450 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t451 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t452 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t453 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t454 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t456 = extractvalue { i64, ptr } %t449, 1
  %t457 = extractvalue { i64, ptr } %t449, 0
  %t458 = add i64 %t454, %t457
  %t459 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t460 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t461 = add i64 %t458, %t460
  %t463 = extractvalue { i64, ptr } %t450, 1
  %t464 = extractvalue { i64, ptr } %t450, 0
  %t465 = add i64 %t461, %t464
  %t466 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t467 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t468 = add i64 %t465, %t467
  %t470 = extractvalue { i64, ptr } %t451, 1
  %t471 = extractvalue { i64, ptr } %t451, 0
  %t472 = add i64 %t468, %t471
  %t473 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t474 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t475 = add i64 %t472, %t474
  %t477 = extractvalue { i64, ptr } %t452, 1
  %t478 = extractvalue { i64, ptr } %t452, 0
  %t479 = add i64 %t475, %t478
  %t480 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t479)
  call void @olang_textcopy(ptr %t480, ptr %t453, i64 %t454)
  %t481 = getelementptr i8, ptr %t480, i64 %t454
  call void @olang_textcopy(ptr %t481, ptr %t456, i64 %t457)
  %t482 = getelementptr i8, ptr %t481, i64 %t457
  call void @olang_textcopy(ptr %t482, ptr %t459, i64 %t460)
  %t483 = getelementptr i8, ptr %t482, i64 %t460
  call void @olang_textcopy(ptr %t483, ptr %t463, i64 %t464)
  %t484 = getelementptr i8, ptr %t483, i64 %t464
  call void @olang_textcopy(ptr %t484, ptr %t466, i64 %t467)
  %t485 = getelementptr i8, ptr %t484, i64 %t467
  call void @olang_textcopy(ptr %t485, ptr %t470, i64 %t471)
  %t486 = getelementptr i8, ptr %t485, i64 %t471
  call void @olang_textcopy(ptr %t486, ptr %t473, i64 %t474)
  %t487 = getelementptr i8, ptr %t486, i64 %t474
  call void @olang_textcopy(ptr %t487, ptr %t477, i64 %t478)
  %t488 = insertvalue { i64, ptr } undef, i64 %t479, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t480, 1
  %t491 = extractvalue { i64, ptr } %t489, 0
  %t492 = extractvalue { i64, ptr } %t489, 1
  %t493 = mul i64 %t491, 1
  %t494 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t493)
  call void @llvm.memcpy.p0.p0.i64(ptr %t494, ptr %t492, i64 %t493, i1 false)
  %t495 = insertvalue { i64, ptr } undef, i64 %t491, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t494, 1
  %t499 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v3, ptr %v3, ptr %t448, { i64, ptr } %t496)
  store { i64, ptr } %t499, ptr %l130
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  %t500 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t500, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { { i64, ptr }, { i64, ptr } }
  %lp25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l32 = alloca i32
  %l35 = alloca i32
  %l38 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i32
  %l47 = alloca i1
  %l50 = alloca i32
  %l53 = alloca i1
  %l58 = alloca i1
  %l63 = alloca { i64, ptr }
  %l66 = alloca i1
  %l71 = alloca i1
  %l72 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l84 = alloca i1
  %l89 = alloca i64
  %l92 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i64
  %l109 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l113 = alloca i1
  %l114 = alloca i1
  %l118 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l126 = alloca i1
  %l128 = alloca i1
  %l129 = alloca i1
  %l132 = alloca i64
  %l137 = alloca { i64, ptr }
  %l139 = alloca i1
  %l141 = alloca i1
  %l146 = alloca i64
  %l148 = alloca ptr
  %l151 = alloca i1
  %l152 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l159 = alloca i64
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l163 = alloca [5 x i8]
  %l166 = alloca { i64, ptr }
  %l167 = alloca i64
  %l168 = alloca { i64, ptr }
  %l171 = alloca i1
  %l177 = alloca { i64, ptr }
  %l179 = alloca i64
  %l185 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l194 = alloca i64
  %l203 = alloca { i64, ptr }
  %l205 = alloca i1
  %l207 = alloca i1
  %l208 = alloca ptr
  %l211 = alloca i1
  %l212 = alloca { i64, ptr }
  %l217 = alloca { i64, ptr }
  %l224 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l231 = alloca i1
  %l234 = alloca i1
  %l235 = alloca ptr
  %l238 = alloca i1
  %l239 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l248 = alloca i1
  %l249 = alloca i1
  %l251 = alloca ptr
  %l254 = alloca i1
  %l255 = alloca { i64, ptr }
  %l261 = alloca { i64, ptr }
  %l264 = alloca i1
  %l265 = alloca i1
  %l268 = alloca i1
  %l270 = alloca i1
  %l271 = alloca i1
  %l273 = alloca i1
  %l274 = alloca ptr
  %l279 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l284 = alloca i1
  %l290 = alloca { i64, ptr }
  %l292 = alloca i1
  %l294 = alloca i1
  %l299 = alloca { i64, ptr }
  %l301 = alloca i1
  %l302 = alloca ptr
  %l307 = alloca { i64, ptr }
  %l309 = alloca { i64, ptr }
  %l315 = alloca { i64, ptr }
  %l316 = alloca ptr
  %l319 = alloca i64
  %l322 = alloca i64
  %l324 = alloca { i64, ptr }
  %l330 = alloca { i64, ptr }
  %l331 = alloca ptr
  %l334 = alloca i1
  %l335 = alloca i32
  %l338 = alloca i32
  %l340 = alloca i32
  %l341 = alloca ptr
  %l344 = alloca i1
  %l345 = alloca i32
  %l348 = alloca i32
  %l350 = alloca i32
  %l354 = alloca i1
  %l360 = alloca i1
  %l361 = alloca i1
  %l364 = alloca i1
  %l366 = alloca i1
  %l369 = alloca i1
  %l373 = alloca i32
  %l376 = alloca i64
  %l377 = alloca ptr
  %l379 = alloca { i64, ptr }
  %l380 = alloca { i64, ptr }
  %l381 = alloca i64
  %l384 = alloca i64
  %l389 = alloca { i64, ptr }
  %l390 = alloca ptr
  %l393 = alloca { i64, ptr }
  %l402 = alloca { i64, ptr }
  %l406 = alloca { { i64, ptr }, { i64, ptr } }
  %l407 = alloca { i64, ptr }
  %l408 = alloca i64
  %l409 = alloca { i64, ptr }
  %l413 = alloca i1
  %l416 = alloca i1
  %l418 = alloca ptr
  %l421 = alloca { i64, ptr }
  %l424 = alloca { i64, ptr }
  %l428 = alloca { i64, ptr }
  %l429 = alloca ptr
  %l433 = alloca { i64, ptr }
  %l437 = alloca { i64, ptr }
  %l440 = alloca { i64, ptr }
  %l441 = alloca { i64, ptr }
  %l442 = alloca i64
  %l443 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s40 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
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
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l32
  br label %bb1
bb1:
  %t14 = load i32, ptr %l32, !tbaa !23
  store i32 %t14, ptr %l5, !tbaa !23
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l35
  br label %bb2
bb2:
  %t20 = load i32, ptr %l35, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l5, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l38
  br label %bb3
bb3:
  %t26 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t26, ptr %l7, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l6, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t27, i32 %t28)
  store { i64, ptr } %t31, ptr %l41
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t32, ptr %l8, !tbaa !27
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t34 = load i32, ptr %l5, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l44
  br label %bb5
bb5:
  %t38 = load i32, ptr %l44, !range !{i32 0, i32 33}
  %t40 = trunc i64 21 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t44 = load i32, ptr %l6, !tbaa !23
  %t47 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t43, i32 %t44)
  store i32 %t47, ptr %l50
  br label %bb8
bb7:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb9
bb8:
  %t48 = load i32, ptr %l50, !range !{i32 0, i32 33}
  %t50 = trunc i64 21 to i32
  %t51 = icmp eq i32 %t48, %t50
  store i1 %t51, ptr %l47, !tbaa !21
  br label %bb9
bb9:
  %t53 = load i1, ptr %l47, !tbaa !21
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/emit:fnEm", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i32, ptr %l5, !tbaa !23
  %t59 = load i32, ptr %l6, !tbaa !23
  %t63 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eabiDiffers(ptr %v0, ptr %t57, i32 %t58, i32 %t59)
  store i1 %t63, ptr %l58
  br label %bb12
bb11:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb13
bb12:
  %t64 = load i1, ptr %l58, !tbaa !21
  store i1 %t64, ptr %l53, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l53, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t68 = load i32, ptr %l5, !tbaa !23
  %t69 = load i32, ptr %l6, !tbaa !23
  %t74 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eadapt(ptr %v0, ptr %v1, ptr %v2, ptr %t66, { i64, ptr } %t67, i32 %t68, i32 %t69)
  store { i64, ptr } %t74, ptr %l63
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
bb17:
  %t76 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t80 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t76, { i64, ptr } %t77)
  store i1 %t80, ptr %l66
  br label %bb18
bb18:
  %t81 = load i1, ptr %l66, !tbaa !21
  br i1 %t81, label %bb19, label %bb20
bb19:
  %t82 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = extractvalue { i64, ptr } %t82, 0
  %t86 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t85)
  call void @olang_textcopy(ptr %t86, ptr %t84, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t88, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l4, !tbaa !29
  %t91 = load i32, ptr %l5, !tbaa !23
  %t94 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t90, i32 %t91)
  store i1 %t94, ptr %l71
  br label %bb22
bb22:
  %t95 = load i1, ptr %l71, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb25
bb24:
  %t96 = load i32, ptr %l5, !tbaa !23
  %t97 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t100 = icmp eq i32 %t96, %t97
  store i1 %t100, ptr %l72, !tbaa !21
  br label %bb25
bb25:
  %t102 = load i1, ptr %l72, !tbaa !21
  store i1 %t102, ptr %l9, !tbaa !21
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t104 = load i32, ptr %l6, !tbaa !23
  %t107 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t103, i32 %t104)
  store i1 %t107, ptr %l78
  br label %bb26
bb26:
  %t108 = load i1, ptr %l78, !tbaa !21
  br i1 %t108, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb29
bb28:
  %t109 = load i32, ptr %l6, !tbaa !23
  %t110 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t113 = icmp eq i32 %t109, %t110
  store i1 %t113, ptr %l79, !tbaa !21
  br label %bb29
bb29:
  %t115 = load i1, ptr %l79, !tbaa !21
  store i1 %t115, ptr %l10, !tbaa !21
  %t116 = load i1, ptr %l9, !tbaa !21
  br i1 %t116, label %bb30, label %bb31
bb30:
  %t118 = load i1, ptr %l10, !tbaa !21
  store i1 %t118, ptr %l84, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb32
bb32:
  %t120 = load i1, ptr %l84, !tbaa !21
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t121 = load i32, ptr %l5, !tbaa !23
  %t122 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t125 = icmp ne i32 %t121, %t122
  br i1 %t125, label %bb35, label %bb36
bb34:
  br label %bb55
bb35:
  %t127 = load ptr, ptr %l4, !tbaa !29
  %t128 = load i32, ptr %l5, !tbaa !23
  %t131 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t127, i32 %t128)
  store i64 %t131, ptr %l92
  br label %bb37
bb36:
  store i64 1, ptr %l89, !tbaa !24
  br label %bb38
bb37:
  %t132 = load i64, ptr %l92, !tbaa !24
  store i64 %t132, ptr %l89, !tbaa !24
  br label %bb38
bb38:
  %t133 = load i64, ptr %l89, !tbaa !24
  store i64 %t133, ptr %l11, !tbaa !24
  %t134 = load i32, ptr %l6, !tbaa !23
  %t135 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t138 = icmp ne i32 %t134, %t135
  br i1 %t138, label %bb39, label %bb40
bb39:
  %t140 = load ptr, ptr %l4, !tbaa !29
  %t141 = load i32, ptr %l6, !tbaa !23
  %t144 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t140, i32 %t141)
  store i64 %t144, ptr %l99
  br label %bb41
bb40:
  store i64 1, ptr %l96, !tbaa !24
  br label %bb42
bb41:
  %t145 = load i64, ptr %l99, !tbaa !24
  store i64 %t145, ptr %l96, !tbaa !24
  br label %bb42
bb42:
  %t146 = load i64, ptr %l96, !tbaa !24
  %t147 = load i64, ptr %l11, !tbaa !24
  %t151 = icmp sgt i64 %t147, %t146
  br i1 %t151, label %bb43, label %bb44
bb43:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t156 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t157 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t160 = extractvalue { i64, ptr } %t154, 1
  %t161 = extractvalue { i64, ptr } %t154, 0
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t167 = extractvalue { i64, ptr } %t155, 1
  %t168 = extractvalue { i64, ptr } %t155, 0
  %t169 = add i64 %t165, %t168
  %t170 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t174 = extractvalue { i64, ptr } %t156, 1
  %t175 = extractvalue { i64, ptr } %t156, 0
  %t176 = add i64 %t172, %t175
  %t177 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t176)
  call void @olang_textcopy(ptr %t177, ptr %t157, i64 %t158)
  %t178 = getelementptr i8, ptr %t177, i64 %t158
  call void @olang_textcopy(ptr %t178, ptr %t160, i64 %t161)
  %t179 = getelementptr i8, ptr %t178, i64 %t161
  call void @olang_textcopy(ptr %t179, ptr %t163, i64 %t164)
  %t180 = getelementptr i8, ptr %t179, i64 %t164
  call void @olang_textcopy(ptr %t180, ptr %t167, i64 %t168)
  %t181 = getelementptr i8, ptr %t180, i64 %t168
  call void @olang_textcopy(ptr %t181, ptr %t170, i64 %t171)
  %t182 = getelementptr i8, ptr %t181, i64 %t171
  call void @olang_textcopy(ptr %t182, ptr %t174, i64 %t175)
  %t183 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t177, 1
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t187 = extractvalue { i64, ptr } %t184, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  %t194 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t153, { i64, ptr } %t191)
  store { i64, ptr } %t194, ptr %l109
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t195 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t195, ptr %rv
  br label %ret
bb46:
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l110, !tbaa !29
  %t197 = load ptr, ptr %l4, !tbaa !29
  %t198 = load i32, ptr %l5, !tbaa !23
  %t201 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t197, i32 %t198)
  store i1 %t201, ptr %l113
  br label %bb47
bb47:
  %t202 = load i1, ptr %l113, !tbaa !21
  br i1 %t202, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l114, !tbaa !21
  br label %bb50
bb49:
  %t203 = load i32, ptr %l5, !tbaa !23
  %t204 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t207 = icmp eq i32 %t203, %t204
  store i1 %t207, ptr %l114, !tbaa !21
  br label %bb50
bb50:
  %t209 = load i1, ptr %l114, !tbaa !21
  br i1 %t209, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d156, i32 0, i32 1) }, ptr %l118, !tbaa !27
  br label %bb53
bb52:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l118, !tbaa !27
  br label %bb53
bb53:
  %t210 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t211 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 1
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t217 = extractvalue { i64, ptr } %t210, 1
  %t218 = extractvalue { i64, ptr } %t210, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d158, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = extractvalue { i64, ptr } %t211, 1
  %t225 = extractvalue { i64, ptr } %t211, 0
  %t226 = add i64 %t222, %t225
  %t227 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t231 = extractvalue { i64, ptr } %t212, 1
  %t232 = extractvalue { i64, ptr } %t212, 0
  %t233 = add i64 %t229, %t232
  %t234 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t233)
  call void @olang_textcopy(ptr %t234, ptr %t214, i64 %t215)
  %t235 = getelementptr i8, ptr %t234, i64 %t215
  call void @olang_textcopy(ptr %t235, ptr %t217, i64 %t218)
  %t236 = getelementptr i8, ptr %t235, i64 %t218
  call void @olang_textcopy(ptr %t236, ptr %t220, i64 %t221)
  %t237 = getelementptr i8, ptr %t236, i64 %t221
  call void @olang_textcopy(ptr %t237, ptr %t224, i64 %t225)
  %t238 = getelementptr i8, ptr %t237, i64 %t225
  call void @olang_textcopy(ptr %t238, ptr %t227, i64 %t228)
  %t239 = getelementptr i8, ptr %t238, i64 %t228
  call void @olang_textcopy(ptr %t239, ptr %t231, i64 %t232)
  %t240 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t234, 1
  %t243 = extractvalue { i64, ptr } %t241, 0
  %t244 = extractvalue { i64, ptr } %t241, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load ptr, ptr %l110, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t249, { i64, ptr } %t248)
  store { i64, ptr } %t251, ptr %l124
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  %t252 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t252, ptr %rv
  br label %ret
bb55:
  %t253 = load i1, ptr %l9, !tbaa !21
  br i1 %t253, label %bb56, label %bb57
bb56:
  %t255 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t257 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t255, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d160, i32 0, i32 1) })
  store i1 %t257, ptr %l128
  br label %bb58
bb57:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb59
bb58:
  %t258 = load i1, ptr %l128, !tbaa !21
  store i1 %t258, ptr %l126, !tbaa !21
  br label %bb59
bb59:
  %t259 = load i1, ptr %l126, !tbaa !21
  br i1 %t259, label %bb60, label %bb61
bb60:
  %t260 = load ptr, ptr %l4, !tbaa !29
  %t261 = load i32, ptr %l5, !tbaa !23
  %t264 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t260, i32 %t261)
  store i64 %t264, ptr %l132
  br label %bb62
bb61:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb63
bb62:
  %t265 = load i64, ptr %l132, !tbaa !24
  %t266 = icmp sgt i64 %t265, 64
  store i1 %t266, ptr %l129, !tbaa !21
  br label %bb63
bb63:
  %t268 = load i1, ptr %l129, !tbaa !21
  br i1 %t268, label %bb64, label %bb65
bb64:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t271 = load i32, ptr %l5, !tbaa !23
  %t275 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewideToBF16(ptr %v0, ptr %v1, ptr %v2, ptr %t269, { i64, ptr } %t270, i32 %t271)
  store { i64, ptr } %t275, ptr %l137
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t276 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t276, ptr %rv
  br label %ret
bb67:
  %t277 = load i1, ptr %l9, !tbaa !21
  br i1 %t277, label %bb68, label %bb69
bb68:
  %t279 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t279, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d161, i32 0, i32 1) })
  store i1 %t281, ptr %l141
  br label %bb70
bb69:
  store i1 false, ptr %l139, !tbaa !21
  br label %bb71
bb70:
  %t282 = load i1, ptr %l141, !tbaa !21
  store i1 %t282, ptr %l139, !tbaa !21
  br label %bb71
bb71:
  %t283 = load i1, ptr %l139, !tbaa !21
  br i1 %t283, label %bb72, label %bb73
bb72:
  store %olang.scope zeroinitializer, ptr %s9
  %t284 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t284, 1
  %t287 = extractvalue { i64, ptr } %t284, 0
  %t288 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t287)
  call void @olang_textcopy(ptr %t288, ptr %t286, i64 %t287)
  %t289 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  store { i64, ptr } %t290, ptr %l13, !tbaa !27
  %t292 = load ptr, ptr %l4, !tbaa !29
  %t293 = load i32, ptr %l5, !tbaa !23
  %t296 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t292, i32 %t293)
  store i64 %t296, ptr %l146
  br label %bb74
bb73:
  br label %bb101
bb74:
  %t297 = load i64, ptr %l146, !tbaa !24
  %t298 = icmp slt i64 %t297, 64
  br i1 %t298, label %bb75, label %bb76
bb75:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l148, !tbaa !29
  %t301 = load ptr, ptr %l4, !tbaa !29
  %t302 = load i32, ptr %l5, !tbaa !23
  %t305 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t301, i32 %t302)
  store i1 %t305, ptr %l151
  br label %bb77
bb76:
  br label %bb85
bb77:
  %t306 = load i1, ptr %l151, !tbaa !21
  br i1 %t306, label %bb78, label %bb79
bb78:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d162, i32 0, i32 1) }, ptr %l152, !tbaa !27
  br label %bb80
bb79:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d163, i32 0, i32 1) }, ptr %l152, !tbaa !27
  br label %bb80
bb80:
  %t307 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t308 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t309 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 1
  %t311 = extractvalue { i64, ptr } %t309, 0
  %t313 = extractvalue { i64, ptr } %t307, 1
  %t314 = extractvalue { i64, ptr } %t307, 0
  %t315 = add i64 %t311, %t314
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t318 = add i64 %t315, %t317
  %t320 = extractvalue { i64, ptr } %t308, 1
  %t321 = extractvalue { i64, ptr } %t308, 0
  %t322 = add i64 %t318, %t321
  %t323 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t325 = add i64 %t322, %t324
  %t326 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t325)
  call void @olang_textcopy(ptr %t326, ptr %t310, i64 %t311)
  %t327 = getelementptr i8, ptr %t326, i64 %t311
  call void @olang_textcopy(ptr %t327, ptr %t313, i64 %t314)
  %t328 = getelementptr i8, ptr %t327, i64 %t314
  call void @olang_textcopy(ptr %t328, ptr %t316, i64 %t317)
  %t329 = getelementptr i8, ptr %t328, i64 %t317
  call void @olang_textcopy(ptr %t329, ptr %t320, i64 %t321)
  %t330 = getelementptr i8, ptr %t329, i64 %t321
  call void @olang_textcopy(ptr %t330, ptr %t323, i64 %t324)
  %t331 = insertvalue { i64, ptr } undef, i64 %t325, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t326, 1
  %t334 = extractvalue { i64, ptr } %t332, 0
  %t335 = extractvalue { i64, ptr } %t332, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t340 = load ptr, ptr %l148, !tbaa !29
  %t342 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t340, { i64, ptr } %t339)
  store { i64, ptr } %t342, ptr %l157
  br label %bb81
bb81:
  %t343 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t344 = extractvalue { i64, ptr } %t343, 0
  %t345 = load { i64, ptr }, ptr %l157, !tbaa !27
  %t346 = extractvalue { i64, ptr } %t345, 0
  store i64 %t346, ptr %l159, !tbaa !24
  %t348 = load i64, ptr %l159, !tbaa !24
  %t349 = icmp eq i64 %t344, %t348
  br i1 %t349, label %bb82, label %bb83
bb82:
  %t351 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t352 = load ptr, ptr %t351, !tbaa !27
  %t353 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = load i64, ptr %l159, !tbaa !24
  %t356 = mul i64 %t355, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t352, ptr %t354, i64 %t356, i1 false)
  br label %bb84
bb83:
  %t357 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t357, ptr %l13, !tbaa !27
  br label %bb84
bb84:
  br label %bb85
bb85:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d166, i32 0, i32 1) }, ptr %l161, !tbaa !27
  %t358 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t358, ptr %l162, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = mul i64 5, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l163, ptr %t360, i64 %t361, i1 false)
  %t363 = insertvalue { i64, ptr } undef, i64 5, 0
  %t364 = insertvalue { i64, ptr } %t363, ptr %l163, 1
  store { i64, ptr } %t364, ptr %l14, !tbaa !27
  %t366 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t366, ptr %l166, !tbaa !27
  %t367 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t368 = extractvalue { i64, ptr } %t367, 0
  store i64 %t368, ptr %l167, !tbaa !24
  %t369 = load i64, ptr %l167, !tbaa !24
  %t370 = mul i64 %t369, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t370)
  %t372 = insertvalue { i64, ptr } undef, i64 %t369, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  store { i64, ptr } %t373, ptr %l168, !tbaa !27
  %t374 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t375 = load ptr, ptr %t374, !tbaa !27
  %t376 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = load i64, ptr %l167, !tbaa !24
  %t379 = mul i64 %t378, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t375, ptr %t377, i64 %t379, i1 false)
  %t380 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t380, ptr %l15, !tbaa !27
  %t381 = load ptr, ptr %l4, !tbaa !29
  %t382 = load i32, ptr %l5, !tbaa !23
  %t385 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t381, i32 %t382)
  store i1 %t385, ptr %l171
  br label %bb86
bb86:
  %t386 = load i1, ptr %l171, !tbaa !21
  %t387 = xor i1 %t386, true
  br i1 %t387, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s13
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t390 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t391 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t392 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t394 = extractvalue { i64, ptr } %t390, 1
  %t395 = extractvalue { i64, ptr } %t390, 0
  %t396 = add i64 %t392, %t395
  %t397 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t398 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t399 = add i64 %t396, %t398
  %t400 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t399)
  call void @olang_textcopy(ptr %t400, ptr %t391, i64 %t392)
  %t401 = getelementptr i8, ptr %t400, i64 %t392
  call void @olang_textcopy(ptr %t401, ptr %t394, i64 %t395)
  %t402 = getelementptr i8, ptr %t401, i64 %t395
  call void @olang_textcopy(ptr %t402, ptr %t397, i64 %t398)
  %t403 = insertvalue { i64, ptr } undef, i64 %t399, 0
  %t404 = insertvalue { i64, ptr } %t403, ptr %t400, 1
  %t406 = extractvalue { i64, ptr } %t404, 0
  %t407 = extractvalue { i64, ptr } %t404, 1
  %t408 = mul i64 %t406, 1
  %t409 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t408)
  call void @llvm.memcpy.p0.p0.i64(ptr %t409, ptr %t407, i64 %t408, i1 false)
  %t410 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t409, 1
  %t414 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t389, { i64, ptr } %t411)
  store { i64, ptr } %t414, ptr %l177
  br label %bb89
bb88:
  br label %bb98
bb89:
  %t415 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t415, 0
  %t417 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 0
  store i64 %t418, ptr %l179, !tbaa !24
  %t420 = load i64, ptr %l179, !tbaa !24
  %t421 = icmp eq i64 %t416, %t420
  br i1 %t421, label %bb90, label %bb91
bb90:
  %t423 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = load i64, ptr %l179, !tbaa !24
  %t428 = mul i64 %t427, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t424, ptr %t426, i64 %t428, i1 false)
  br label %bb92
bb91:
  %t429 = load { i64, ptr }, ptr %l177, !tbaa !27
  store { i64, ptr } %t429, ptr %l14, !tbaa !27
  br label %bb92
bb92:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t432 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t433 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t435 = extractvalue { i64, ptr } %t431, 1
  %t436 = extractvalue { i64, ptr } %t431, 0
  %t437 = add i64 %t433, %t436
  %t438 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t437)
  call void @olang_textcopy(ptr %t438, ptr %t432, i64 %t433)
  %t439 = getelementptr i8, ptr %t438, i64 %t433
  call void @olang_textcopy(ptr %t439, ptr %t435, i64 %t436)
  %t440 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t441 = insertvalue { i64, ptr } %t440, ptr %t438, 1
  %t443 = extractvalue { i64, ptr } %t441, 0
  %t444 = extractvalue { i64, ptr } %t441, 1
  %t445 = mul i64 %t443, 1
  %t446 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t445)
  call void @llvm.memcpy.p0.p0.i64(ptr %t446, ptr %t444, i64 %t445, i1 false)
  %t447 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t448 = insertvalue { i64, ptr } %t447, ptr %t446, 1
  %t451 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s13, ptr %s13, ptr %t430, { i64, ptr } %t448)
  store { i64, ptr } %t451, ptr %l185
  br label %bb93
bb93:
  %t452 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t456 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t457 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t460 = extractvalue { i64, ptr } %t454, 1
  %t461 = extractvalue { i64, ptr } %t454, 0
  %t462 = add i64 %t458, %t461
  %t463 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t464 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t465 = add i64 %t462, %t464
  %t467 = extractvalue { i64, ptr } %t452, 1
  %t468 = extractvalue { i64, ptr } %t452, 0
  %t469 = add i64 %t465, %t468
  %t470 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d171, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d171, i32 0, i32 1) }, 0
  %t472 = add i64 %t469, %t471
  %t474 = extractvalue { i64, ptr } %t456, 1
  %t475 = extractvalue { i64, ptr } %t456, 0
  %t476 = add i64 %t472, %t475
  %t477 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t476)
  call void @olang_textcopy(ptr %t477, ptr %t457, i64 %t458)
  %t478 = getelementptr i8, ptr %t477, i64 %t458
  call void @olang_textcopy(ptr %t478, ptr %t460, i64 %t461)
  %t479 = getelementptr i8, ptr %t478, i64 %t461
  call void @olang_textcopy(ptr %t479, ptr %t463, i64 %t464)
  %t480 = getelementptr i8, ptr %t479, i64 %t464
  call void @olang_textcopy(ptr %t480, ptr %t467, i64 %t468)
  %t481 = getelementptr i8, ptr %t480, i64 %t468
  call void @olang_textcopy(ptr %t481, ptr %t470, i64 %t471)
  %t482 = getelementptr i8, ptr %t481, i64 %t471
  call void @olang_textcopy(ptr %t482, ptr %t474, i64 %t475)
  %t483 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t477, 1
  %t486 = extractvalue { i64, ptr } %t484, 0
  %t487 = extractvalue { i64, ptr } %t484, 1
  %t488 = mul i64 %t486, 1
  %t489 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t488)
  call void @llvm.memcpy.p0.p0.i64(ptr %t489, ptr %t487, i64 %t488, i1 false)
  %t490 = insertvalue { i64, ptr } undef, i64 %t486, 0
  %t491 = insertvalue { i64, ptr } %t490, ptr %t489, 1
  %t494 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t453, { i64, ptr } %t491)
  store { i64, ptr } %t494, ptr %l192
  br label %bb94
bb94:
  %t495 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t496 = extractvalue { i64, ptr } %t495, 0
  %t497 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t497, 0
  store i64 %t498, ptr %l194, !tbaa !24
  %t500 = load i64, ptr %l194, !tbaa !24
  %t501 = icmp eq i64 %t496, %t500
  br i1 %t501, label %bb95, label %bb96
bb95:
  %t503 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t504 = load ptr, ptr %t503, !tbaa !27
  %t505 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t506 = load ptr, ptr %t505, !tbaa !27
  %t507 = load i64, ptr %l194, !tbaa !24
  %t508 = mul i64 %t507, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t504, ptr %t506, i64 %t508, i1 false)
  br label %bb97
bb96:
  %t509 = load { i64, ptr }, ptr %l192, !tbaa !27
  store { i64, ptr } %t509, ptr %l15, !tbaa !27
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s13)
  br label %bb98
bb98:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t512 = getelementptr %"compiler/emit:fnEm", ptr %t510, i32 0, i32 0
  %t513 = load ptr, ptr %t512, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s9, ptr %t513, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d172, i32 0, i32 1) })
  br label %bb99
bb99:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t517 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t518 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d173, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d173, i32 0, i32 1) }, 0
  %t521 = extractvalue { i64, ptr } %t516, 1
  %t522 = extractvalue { i64, ptr } %t516, 0
  %t523 = add i64 %t519, %t522
  %t524 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t525 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t526 = add i64 %t523, %t525
  %t528 = extractvalue { i64, ptr } %t517, 1
  %t529 = extractvalue { i64, ptr } %t517, 0
  %t530 = add i64 %t526, %t529
  %t531 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 1
  %t532 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d175, i32 0, i32 1) }, 0
  %t533 = add i64 %t530, %t532
  %t534 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t533)
  call void @olang_textcopy(ptr %t534, ptr %t518, i64 %t519)
  %t535 = getelementptr i8, ptr %t534, i64 %t519
  call void @olang_textcopy(ptr %t535, ptr %t521, i64 %t522)
  %t536 = getelementptr i8, ptr %t535, i64 %t522
  call void @olang_textcopy(ptr %t536, ptr %t524, i64 %t525)
  %t537 = getelementptr i8, ptr %t536, i64 %t525
  call void @olang_textcopy(ptr %t537, ptr %t528, i64 %t529)
  %t538 = getelementptr i8, ptr %t537, i64 %t529
  call void @olang_textcopy(ptr %t538, ptr %t531, i64 %t532)
  %t539 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t540 = insertvalue { i64, ptr } %t539, ptr %t534, 1
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t543 = extractvalue { i64, ptr } %t540, 1
  %t544 = mul i64 %t542, 1
  %t545 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t544)
  call void @llvm.memcpy.p0.p0.i64(ptr %t545, ptr %t543, i64 %t544, i1 false)
  %t546 = insertvalue { i64, ptr } undef, i64 %t542, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t545, 1
  %t550 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t515, { i64, ptr } %t547)
  store { i64, ptr } %t550, ptr %l203
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t551 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t551, ptr %rv
  br label %ret
bb101:
  %t552 = load i1, ptr %l9, !tbaa !21
  br i1 %t552, label %bb102, label %bb103
bb102:
  %t554 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t556 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t554, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) })
  store i1 %t556, ptr %l207
  br label %bb104
bb103:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb105
bb104:
  %t557 = load i1, ptr %l207, !tbaa !21
  store i1 %t557, ptr %l205, !tbaa !21
  br label %bb105
bb105:
  %t558 = load i1, ptr %l205, !tbaa !21
  br i1 %t558, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s18
  %t559 = load ptr, ptr %l0, !tbaa !29
  store ptr %t559, ptr %l208, !tbaa !29
  %t560 = load ptr, ptr %l4, !tbaa !29
  %t561 = load i32, ptr %l5, !tbaa !23
  %t564 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t560, i32 %t561)
  store i1 %t564, ptr %l211
  br label %bb108
bb107:
  br label %bb116
bb108:
  %t565 = load i1, ptr %l211, !tbaa !21
  br i1 %t565, label %bb109, label %bb110
bb109:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l212, !tbaa !27
  br label %bb111
bb110:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d178, i32 0, i32 1) }, ptr %l212, !tbaa !27
  br label %bb111
bb111:
  %t566 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t567 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t568 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t568, 1
  %t570 = extractvalue { i64, ptr } %t568, 0
  %t572 = extractvalue { i64, ptr } %t566, 1
  %t573 = extractvalue { i64, ptr } %t566, 0
  %t574 = add i64 %t570, %t573
  %t575 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d179, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d179, i32 0, i32 1) }, 0
  %t577 = add i64 %t574, %t576
  %t579 = extractvalue { i64, ptr } %t567, 1
  %t580 = extractvalue { i64, ptr } %t567, 0
  %t581 = add i64 %t577, %t580
  %t582 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t584 = add i64 %t581, %t583
  %t585 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t584)
  call void @olang_textcopy(ptr %t585, ptr %t569, i64 %t570)
  %t586 = getelementptr i8, ptr %t585, i64 %t570
  call void @olang_textcopy(ptr %t586, ptr %t572, i64 %t573)
  %t587 = getelementptr i8, ptr %t586, i64 %t573
  call void @olang_textcopy(ptr %t587, ptr %t575, i64 %t576)
  %t588 = getelementptr i8, ptr %t587, i64 %t576
  call void @olang_textcopy(ptr %t588, ptr %t579, i64 %t580)
  %t589 = getelementptr i8, ptr %t588, i64 %t580
  call void @olang_textcopy(ptr %t589, ptr %t582, i64 %t583)
  %t590 = insertvalue { i64, ptr } undef, i64 %t584, 0
  %t591 = insertvalue { i64, ptr } %t590, ptr %t585, 1
  %t593 = extractvalue { i64, ptr } %t591, 0
  %t594 = extractvalue { i64, ptr } %t591, 1
  %t595 = mul i64 %t593, 1
  %t596 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t595)
  call void @llvm.memcpy.p0.p0.i64(ptr %t596, ptr %t594, i64 %t595, i1 false)
  %t597 = insertvalue { i64, ptr } undef, i64 %t593, 0
  %t598 = insertvalue { i64, ptr } %t597, ptr %t596, 1
  %t599 = load ptr, ptr %l208, !tbaa !29
  %t601 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s18, ptr %s18, ptr %t599, { i64, ptr } %t598)
  store { i64, ptr } %t601, ptr %l217
  br label %bb112
bb112:
  %t602 = load { i64, ptr }, ptr %l217, !tbaa !27
  store { i64, ptr } %t602, ptr %l17, !tbaa !27
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = getelementptr %"compiler/emit:fnEm", ptr %t603, i32 0, i32 0
  %t606 = load ptr, ptr %t605, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s18, ptr %s18, ptr %t606, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d181, i32 0, i32 1) }, { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d182, i32 0, i32 1) })
  br label %bb113
bb113:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t609 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t610 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t611 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t613 = extractvalue { i64, ptr } %t609, 1
  %t614 = extractvalue { i64, ptr } %t609, 0
  %t615 = add i64 %t611, %t614
  %t616 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 1
  %t617 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d184, i32 0, i32 1) }, 0
  %t618 = add i64 %t615, %t617
  %t619 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t618)
  call void @olang_textcopy(ptr %t619, ptr %t610, i64 %t611)
  %t620 = getelementptr i8, ptr %t619, i64 %t611
  call void @olang_textcopy(ptr %t620, ptr %t613, i64 %t614)
  %t621 = getelementptr i8, ptr %t620, i64 %t614
  call void @olang_textcopy(ptr %t621, ptr %t616, i64 %t617)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t619, 1
  %t625 = extractvalue { i64, ptr } %t623, 0
  %t626 = extractvalue { i64, ptr } %t623, 1
  %t627 = mul i64 %t625, 1
  %t628 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t627)
  call void @llvm.memcpy.p0.p0.i64(ptr %t628, ptr %t626, i64 %t627, i1 false)
  %t629 = insertvalue { i64, ptr } undef, i64 %t625, 0
  %t630 = insertvalue { i64, ptr } %t629, ptr %t628, 1
  %t633 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s18, ptr %s18, ptr %t608, { i64, ptr } %t630)
  store { i64, ptr } %t633, ptr %l224
  br label %bb114
bb114:
  %t634 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t637 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d185, i32 0, i32 1) }, 1
  %t638 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d185, i32 0, i32 1) }, 0
  %t640 = extractvalue { i64, ptr } %t634, 1
  %t641 = extractvalue { i64, ptr } %t634, 0
  %t642 = add i64 %t638, %t641
  %t643 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d186, i32 0, i32 1) }, 1
  %t644 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  %t645 = add i64 %t642, %t644
  %t646 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t645)
  call void @olang_textcopy(ptr %t646, ptr %t637, i64 %t638)
  %t647 = getelementptr i8, ptr %t646, i64 %t638
  call void @olang_textcopy(ptr %t647, ptr %t640, i64 %t641)
  %t648 = getelementptr i8, ptr %t647, i64 %t641
  call void @olang_textcopy(ptr %t648, ptr %t643, i64 %t644)
  %t649 = insertvalue { i64, ptr } undef, i64 %t645, 0
  %t650 = insertvalue { i64, ptr } %t649, ptr %t646, 1
  %t652 = extractvalue { i64, ptr } %t650, 0
  %t653 = extractvalue { i64, ptr } %t650, 1
  %t654 = mul i64 %t652, 1
  %t655 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t654)
  call void @llvm.memcpy.p0.p0.i64(ptr %t655, ptr %t653, i64 %t654, i1 false)
  %t656 = insertvalue { i64, ptr } undef, i64 %t652, 0
  %t657 = insertvalue { i64, ptr } %t656, ptr %t655, 1
  %t660 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t635, { i64, ptr } %t657)
  store { i64, ptr } %t660, ptr %l229
  br label %bb115
bb115:
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  %t661 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t661, ptr %rv
  br label %ret
bb116:
  %t662 = load i1, ptr %l9, !tbaa !21
  br i1 %t662, label %bb117, label %bb118
bb117:
  %t664 = load ptr, ptr %l4, !tbaa !29
  %t665 = load i32, ptr %l6, !tbaa !23
  %t668 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t664, i32 %t665)
  store i1 %t668, ptr %l234
  br label %bb119
bb118:
  store i1 false, ptr %l231, !tbaa !21
  br label %bb120
bb119:
  %t669 = load i1, ptr %l234, !tbaa !21
  store i1 %t669, ptr %l231, !tbaa !21
  br label %bb120
bb120:
  %t670 = load i1, ptr %l231, !tbaa !21
  br i1 %t670, label %bb121, label %bb122
bb121:
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l235, !tbaa !29
  %t672 = load ptr, ptr %l4, !tbaa !29
  %t673 = load i32, ptr %l5, !tbaa !23
  %t676 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t672, i32 %t673)
  store i1 %t676, ptr %l238
  br label %bb123
bb122:
  br label %bb128
bb123:
  %t677 = load i1, ptr %l238, !tbaa !21
  br i1 %t677, label %bb124, label %bb125
bb124:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d187, i32 0, i32 1) }, ptr %l239, !tbaa !27
  br label %bb126
bb125:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d188, i32 0, i32 1) }, ptr %l239, !tbaa !27
  br label %bb126
bb126:
  %t678 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t679 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t680 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t681 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t682 = extractvalue { i64, ptr } %t681, 1
  %t683 = extractvalue { i64, ptr } %t681, 0
  %t685 = extractvalue { i64, ptr } %t678, 1
  %t686 = extractvalue { i64, ptr } %t678, 0
  %t687 = add i64 %t683, %t686
  %t688 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t689 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t690 = add i64 %t687, %t689
  %t692 = extractvalue { i64, ptr } %t679, 1
  %t693 = extractvalue { i64, ptr } %t679, 0
  %t694 = add i64 %t690, %t693
  %t695 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d190, i32 0, i32 1) }, 1
  %t696 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d190, i32 0, i32 1) }, 0
  %t697 = add i64 %t694, %t696
  %t699 = extractvalue { i64, ptr } %t680, 1
  %t700 = extractvalue { i64, ptr } %t680, 0
  %t701 = add i64 %t697, %t700
  %t702 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t701)
  call void @olang_textcopy(ptr %t702, ptr %t682, i64 %t683)
  %t703 = getelementptr i8, ptr %t702, i64 %t683
  call void @olang_textcopy(ptr %t703, ptr %t685, i64 %t686)
  %t704 = getelementptr i8, ptr %t703, i64 %t686
  call void @olang_textcopy(ptr %t704, ptr %t688, i64 %t689)
  %t705 = getelementptr i8, ptr %t704, i64 %t689
  call void @olang_textcopy(ptr %t705, ptr %t692, i64 %t693)
  %t706 = getelementptr i8, ptr %t705, i64 %t693
  call void @olang_textcopy(ptr %t706, ptr %t695, i64 %t696)
  %t707 = getelementptr i8, ptr %t706, i64 %t696
  call void @olang_textcopy(ptr %t707, ptr %t699, i64 %t700)
  %t708 = insertvalue { i64, ptr } undef, i64 %t701, 0
  %t709 = insertvalue { i64, ptr } %t708, ptr %t702, 1
  %t711 = extractvalue { i64, ptr } %t709, 0
  %t712 = extractvalue { i64, ptr } %t709, 1
  %t713 = mul i64 %t711, 1
  %t714 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t713)
  call void @llvm.memcpy.p0.p0.i64(ptr %t714, ptr %t712, i64 %t713, i1 false)
  %t715 = insertvalue { i64, ptr } undef, i64 %t711, 0
  %t716 = insertvalue { i64, ptr } %t715, ptr %t714, 1
  %t717 = load ptr, ptr %l235, !tbaa !29
  %t719 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t717, { i64, ptr } %t716)
  store { i64, ptr } %t719, ptr %l245
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s0)
  %t720 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t720, ptr %rv
  br label %ret
bb128:
  %t721 = load ptr, ptr %l4, !tbaa !29
  %t722 = load i32, ptr %l5, !tbaa !23
  %t725 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t721, i32 %t722)
  store i1 %t725, ptr %l248
  br label %bb129
bb129:
  %t726 = load i1, ptr %l248, !tbaa !21
  br i1 %t726, label %bb130, label %bb131
bb130:
  %t727 = load i1, ptr %l10, !tbaa !21
  store i1 %t727, ptr %l249, !tbaa !21
  br label %bb132
bb131:
  store i1 false, ptr %l249, !tbaa !21
  br label %bb132
bb132:
  %t729 = load i1, ptr %l249, !tbaa !21
  br i1 %t729, label %bb133, label %bb134
bb133:
  %t730 = load ptr, ptr %l0, !tbaa !29
  store ptr %t730, ptr %l251, !tbaa !29
  %t731 = load ptr, ptr %l4, !tbaa !29
  %t732 = load i32, ptr %l6, !tbaa !23
  %t735 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t731, i32 %t732)
  store i1 %t735, ptr %l254
  br label %bb135
bb134:
  br label %bb140
bb135:
  %t736 = load i1, ptr %l254, !tbaa !21
  br i1 %t736, label %bb136, label %bb137
bb136:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d191, i32 0, i32 1) }, ptr %l255, !tbaa !27
  br label %bb138
bb137:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d192, i32 0, i32 1) }, ptr %l255, !tbaa !27
  br label %bb138
bb138:
  %t737 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t738 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t739 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t740 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t741 = extractvalue { i64, ptr } %t740, 1
  %t742 = extractvalue { i64, ptr } %t740, 0
  %t744 = extractvalue { i64, ptr } %t737, 1
  %t745 = extractvalue { i64, ptr } %t737, 0
  %t746 = add i64 %t742, %t745
  %t747 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t748 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t749 = add i64 %t746, %t748
  %t751 = extractvalue { i64, ptr } %t738, 1
  %t752 = extractvalue { i64, ptr } %t738, 0
  %t753 = add i64 %t749, %t752
  %t754 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t755 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t756 = add i64 %t753, %t755
  %t758 = extractvalue { i64, ptr } %t739, 1
  %t759 = extractvalue { i64, ptr } %t739, 0
  %t760 = add i64 %t756, %t759
  %t761 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t760)
  call void @olang_textcopy(ptr %t761, ptr %t741, i64 %t742)
  %t762 = getelementptr i8, ptr %t761, i64 %t742
  call void @olang_textcopy(ptr %t762, ptr %t744, i64 %t745)
  %t763 = getelementptr i8, ptr %t762, i64 %t745
  call void @olang_textcopy(ptr %t763, ptr %t747, i64 %t748)
  %t764 = getelementptr i8, ptr %t763, i64 %t748
  call void @olang_textcopy(ptr %t764, ptr %t751, i64 %t752)
  %t765 = getelementptr i8, ptr %t764, i64 %t752
  call void @olang_textcopy(ptr %t765, ptr %t754, i64 %t755)
  %t766 = getelementptr i8, ptr %t765, i64 %t755
  call void @olang_textcopy(ptr %t766, ptr %t758, i64 %t759)
  %t767 = insertvalue { i64, ptr } undef, i64 %t760, 0
  %t768 = insertvalue { i64, ptr } %t767, ptr %t761, 1
  %t770 = extractvalue { i64, ptr } %t768, 0
  %t771 = extractvalue { i64, ptr } %t768, 1
  %t772 = mul i64 %t770, 1
  %t773 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t772)
  call void @llvm.memcpy.p0.p0.i64(ptr %t773, ptr %t771, i64 %t772, i1 false)
  %t774 = insertvalue { i64, ptr } undef, i64 %t770, 0
  %t775 = insertvalue { i64, ptr } %t774, ptr %t773, 1
  %t776 = load ptr, ptr %l251, !tbaa !29
  %t778 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t776, { i64, ptr } %t775)
  store { i64, ptr } %t778, ptr %l261
  br label %bb139
bb139:
  call void @__olang_scope_close(ptr %s0)
  %t779 = load { i64, ptr }, ptr %l261, !tbaa !27
  store { i64, ptr } %t779, ptr %rv
  br label %ret
bb140:
  %t780 = load ptr, ptr %l4, !tbaa !29
  %t781 = load i32, ptr %l5, !tbaa !23
  %t784 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t780, i32 %t781)
  store i1 %t784, ptr %l264
  br label %bb141
bb141:
  %t785 = load i1, ptr %l264, !tbaa !21
  br i1 %t785, label %bb142, label %bb143
bb142:
  %t786 = load ptr, ptr %l4, !tbaa !29
  %t787 = load i32, ptr %l6, !tbaa !23
  %t790 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t786, i32 %t787)
  store i1 %t790, ptr %l268
  br label %bb144
bb143:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb145
bb144:
  %t791 = load i1, ptr %l268, !tbaa !21
  store i1 %t791, ptr %l265, !tbaa !21
  br label %bb145
bb145:
  %t792 = load i1, ptr %l265, !tbaa !21
  br i1 %t792, label %bb146, label %bb147
bb146:
  store %olang.scope zeroinitializer, ptr %s26
  %t793 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t795 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s26, { i64, ptr } %t793, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d195, i32 0, i32 1) })
  store i1 %t795, ptr %l270
  br label %bb148
bb147:
  br label %bb185
bb148:
  %t796 = load i1, ptr %l270, !tbaa !21
  br i1 %t796, label %bb149, label %bb150
bb149:
  %t797 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t799 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s26, { i64, ptr } %t797, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d196, i32 0, i32 1) })
  store i1 %t799, ptr %l273
  br label %bb151
bb150:
  store i1 false, ptr %l271, !tbaa !21
  br label %bb152
bb151:
  %t800 = load i1, ptr %l273, !tbaa !21
  store i1 %t800, ptr %l271, !tbaa !21
  br label %bb152
bb152:
  %t801 = load i1, ptr %l271, !tbaa !21
  br i1 %t801, label %bb153, label %bb154
bb153:
  store %olang.scope zeroinitializer, ptr %s27
  %t802 = load ptr, ptr %l0, !tbaa !29
  store ptr %t802, ptr %l274, !tbaa !29
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t804 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t806 = extractvalue { i64, ptr } %t804, 1
  %t807 = extractvalue { i64, ptr } %t804, 0
  %t808 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t807)
  call void @olang_textcopy(ptr %t808, ptr %t806, i64 %t807)
  %t809 = insertvalue { i64, ptr } undef, i64 %t807, 0
  %t810 = insertvalue { i64, ptr } %t809, ptr %t808, 1
  %t812 = extractvalue { i64, ptr } %t810, 0
  %t813 = extractvalue { i64, ptr } %t810, 1
  %t814 = mul i64 %t812, 1
  %t815 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t814)
  call void @llvm.memcpy.p0.p0.i64(ptr %t815, ptr %t813, i64 %t814, i1 false)
  %t816 = insertvalue { i64, ptr } undef, i64 %t812, 0
  %t817 = insertvalue { i64, ptr } %t816, ptr %t815, 1
  %t820 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %s27, ptr %s27, ptr %s27, ptr %t803, { i64, ptr } %t817, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d197, i32 0, i32 1) })
  store { i64, ptr } %t820, ptr %l279
  br label %bb155
bb154:
  br label %bb157
bb155:
  %t821 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t822 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t823 = load { i64, ptr }, ptr %l279, !tbaa !27
  %t824 = extractvalue { i64, ptr } %t823, 1
  %t825 = extractvalue { i64, ptr } %t823, 0
  %t826 = add i64 %t822, %t825
  %t827 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d199, i32 0, i32 1) }, 1
  %t828 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d199, i32 0, i32 1) }, 0
  %t829 = add i64 %t826, %t828
  %t830 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t829)
  call void @olang_textcopy(ptr %t830, ptr %t821, i64 %t822)
  %t831 = getelementptr i8, ptr %t830, i64 %t822
  call void @olang_textcopy(ptr %t831, ptr %t824, i64 %t825)
  %t832 = getelementptr i8, ptr %t831, i64 %t825
  call void @olang_textcopy(ptr %t832, ptr %t827, i64 %t828)
  %t833 = insertvalue { i64, ptr } undef, i64 %t829, 0
  %t834 = insertvalue { i64, ptr } %t833, ptr %t830, 1
  %t836 = extractvalue { i64, ptr } %t834, 0
  %t837 = extractvalue { i64, ptr } %t834, 1
  %t838 = mul i64 %t836, 1
  %t839 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t838)
  call void @llvm.memcpy.p0.p0.i64(ptr %t839, ptr %t837, i64 %t838, i1 false)
  %t840 = insertvalue { i64, ptr } undef, i64 %t836, 0
  %t841 = insertvalue { i64, ptr } %t840, ptr %t839, 1
  %t842 = load ptr, ptr %l274, !tbaa !29
  %t844 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t842, { i64, ptr } %t841)
  store { i64, ptr } %t844, ptr %l282
  br label %bb156
bb156:
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t845 = load { i64, ptr }, ptr %l282, !tbaa !27
  store { i64, ptr } %t845, ptr %rv
  br label %ret
bb157:
  %t846 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t848 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s26, { i64, ptr } %t846, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d200, i32 0, i32 1) })
  store i1 %t848, ptr %l284
  br label %bb158
bb158:
  %t849 = load i1, ptr %l284, !tbaa !21
  br i1 %t849, label %bb159, label %bb160
bb159:
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t851 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t853 = extractvalue { i64, ptr } %t851, 1
  %t854 = extractvalue { i64, ptr } %t851, 0
  %t855 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t854)
  call void @olang_textcopy(ptr %t855, ptr %t853, i64 %t854)
  %t856 = insertvalue { i64, ptr } undef, i64 %t854, 0
  %t857 = insertvalue { i64, ptr } %t856, ptr %t855, 1
  %t859 = extractvalue { i64, ptr } %t857, 0
  %t860 = extractvalue { i64, ptr } %t857, 1
  %t861 = mul i64 %t859, 1
  %t862 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t861)
  call void @llvm.memcpy.p0.p0.i64(ptr %t862, ptr %t860, i64 %t861, i1 false)
  %t863 = insertvalue { i64, ptr } undef, i64 %t859, 0
  %t864 = insertvalue { i64, ptr } %t863, ptr %t862, 1
  %t865 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t869 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v2, ptr %s0, ptr %v2, ptr %t850, { i64, ptr } %t864, { i64, ptr } %t865)
  store { i64, ptr } %t869, ptr %l290
  br label %bb161
bb160:
  br label %bb162
bb161:
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t870 = load { i64, ptr }, ptr %l290, !tbaa !27
  store { i64, ptr } %t870, ptr %rv
  br label %ret
bb162:
  %t871 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t873 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s26, { i64, ptr } %t871, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d201, i32 0, i32 1) })
  store i1 %t873, ptr %l292
  br label %bb163
bb163:
  %t874 = load i1, ptr %l292, !tbaa !21
  br i1 %t874, label %bb164, label %bb165
bb164:
  store %olang.scope zeroinitializer, ptr %s32
  %t875 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t877 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s32, { i64, ptr } %t875, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d202, i32 0, i32 1) })
  store i1 %t877, ptr %l294
  br label %bb166
bb165:
  br label %bb178
bb166:
  %t878 = load i1, ptr %l294, !tbaa !21
  br i1 %t878, label %bb167, label %bb168
bb167:
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t880 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t882 = extractvalue { i64, ptr } %t880, 1
  %t883 = extractvalue { i64, ptr } %t880, 0
  %t884 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t883)
  call void @olang_textcopy(ptr %t884, ptr %t882, i64 %t883)
  %t885 = insertvalue { i64, ptr } undef, i64 %t883, 0
  %t886 = insertvalue { i64, ptr } %t885, ptr %t884, 1
  %t888 = extractvalue { i64, ptr } %t886, 0
  %t889 = extractvalue { i64, ptr } %t886, 1
  %t890 = mul i64 %t888, 1
  %t891 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t890)
  call void @llvm.memcpy.p0.p0.i64(ptr %t891, ptr %t889, i64 %t890, i1 false)
  %t892 = insertvalue { i64, ptr } undef, i64 %t888, 0
  %t893 = insertvalue { i64, ptr } %t892, ptr %t891, 1
  %t896 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v2, ptr %v2, ptr %t879, { i64, ptr } %t893)
  store { i64, ptr } %t896, ptr %l299
  br label %bb169
bb168:
  br label %bb170
bb169:
  call void @__olang_scope_close(ptr %s32)
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t897 = load { i64, ptr }, ptr %l299, !tbaa !27
  store { i64, ptr } %t897, ptr %rv
  br label %ret
bb170:
  %t898 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t900 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s32, { i64, ptr } %t898, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d203, i32 0, i32 1) })
  store i1 %t900, ptr %l301
  br label %bb171
bb171:
  %t901 = load i1, ptr %l301, !tbaa !21
  br i1 %t901, label %bb172, label %bb173
bb172:
  %t902 = load ptr, ptr %l0, !tbaa !29
  store ptr %t902, ptr %l302, !tbaa !29
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t904 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t905 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d204, i32 0, i32 1) }, 1
  %t906 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d204, i32 0, i32 1) }, 0
  %t908 = extractvalue { i64, ptr } %t904, 1
  %t909 = extractvalue { i64, ptr } %t904, 0
  %t910 = add i64 %t906, %t909
  %t911 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d205, i32 0, i32 1) }, 1
  %t912 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d205, i32 0, i32 1) }, 0
  %t913 = add i64 %t910, %t912
  %t914 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t913)
  call void @olang_textcopy(ptr %t914, ptr %t905, i64 %t906)
  %t915 = getelementptr i8, ptr %t914, i64 %t906
  call void @olang_textcopy(ptr %t915, ptr %t908, i64 %t909)
  %t916 = getelementptr i8, ptr %t915, i64 %t909
  call void @olang_textcopy(ptr %t916, ptr %t911, i64 %t912)
  %t917 = insertvalue { i64, ptr } undef, i64 %t913, 0
  %t918 = insertvalue { i64, ptr } %t917, ptr %t914, 1
  %t920 = extractvalue { i64, ptr } %t918, 0
  %t921 = extractvalue { i64, ptr } %t918, 1
  %t922 = mul i64 %t920, 1
  %t923 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t922)
  call void @llvm.memcpy.p0.p0.i64(ptr %t923, ptr %t921, i64 %t922, i1 false)
  %t924 = insertvalue { i64, ptr } undef, i64 %t920, 0
  %t925 = insertvalue { i64, ptr } %t924, ptr %t923, 1
  %t928 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t903, { i64, ptr } %t925)
  store { i64, ptr } %t928, ptr %l307
  br label %bb174
bb173:
  br label %bb176
bb174:
  %t929 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t930 = extractvalue { i64, ptr } %t929, 0
  %t931 = extractvalue { i64, ptr } %t929, 1
  %t932 = mul i64 %t930, 1
  %t933 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t932)
  call void @llvm.memcpy.p0.p0.i64(ptr %t933, ptr %t931, i64 %t932, i1 false)
  %t934 = insertvalue { i64, ptr } undef, i64 %t930, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  %t936 = load ptr, ptr %l302, !tbaa !29
  %t938 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v2, ptr %v2, ptr %t936, { i64, ptr } %t935)
  store { i64, ptr } %t938, ptr %l309
  br label %bb175
bb175:
  call void @__olang_scope_close(ptr %s32)
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t939 = load { i64, ptr }, ptr %l309, !tbaa !27
  store { i64, ptr } %t939, ptr %rv
  br label %ret
bb176:
  %t940 = load ptr, ptr %l0, !tbaa !29
  %t941 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t942 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t943 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d206, i32 0, i32 1) }, 1
  %t944 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d206, i32 0, i32 1) }, 0
  %t946 = extractvalue { i64, ptr } %t941, 1
  %t947 = extractvalue { i64, ptr } %t941, 0
  %t948 = add i64 %t944, %t947
  %t949 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 1
  %t950 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d207, i32 0, i32 1) }, 0
  %t951 = add i64 %t948, %t950
  %t953 = extractvalue { i64, ptr } %t942, 1
  %t954 = extractvalue { i64, ptr } %t942, 0
  %t955 = add i64 %t951, %t954
  %t956 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d208, i32 0, i32 1) }, 1
  %t957 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d208, i32 0, i32 1) }, 0
  %t958 = add i64 %t955, %t957
  %t959 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t958)
  call void @olang_textcopy(ptr %t959, ptr %t943, i64 %t944)
  %t960 = getelementptr i8, ptr %t959, i64 %t944
  call void @olang_textcopy(ptr %t960, ptr %t946, i64 %t947)
  %t961 = getelementptr i8, ptr %t960, i64 %t947
  call void @olang_textcopy(ptr %t961, ptr %t949, i64 %t950)
  %t962 = getelementptr i8, ptr %t961, i64 %t950
  call void @olang_textcopy(ptr %t962, ptr %t953, i64 %t954)
  %t963 = getelementptr i8, ptr %t962, i64 %t954
  call void @olang_textcopy(ptr %t963, ptr %t956, i64 %t957)
  %t964 = insertvalue { i64, ptr } undef, i64 %t958, 0
  %t965 = insertvalue { i64, ptr } %t964, ptr %t959, 1
  %t967 = extractvalue { i64, ptr } %t965, 0
  %t968 = extractvalue { i64, ptr } %t965, 1
  %t969 = mul i64 %t967, 1
  %t970 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t969)
  call void @llvm.memcpy.p0.p0.i64(ptr %t970, ptr %t968, i64 %t969, i1 false)
  %t971 = insertvalue { i64, ptr } undef, i64 %t967, 0
  %t972 = insertvalue { i64, ptr } %t971, ptr %t970, 1
  %t975 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t940, { i64, ptr } %t972)
  store { i64, ptr } %t975, ptr %l315
  br label %bb177
bb177:
  call void @__olang_scope_close(ptr %s32)
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t976 = load { i64, ptr }, ptr %l315, !tbaa !27
  store { i64, ptr } %t976, ptr %rv
  br label %ret
bb178:
  %t977 = load ptr, ptr %l0, !tbaa !29
  store ptr %t977, ptr %l316, !tbaa !29
  %t978 = load ptr, ptr %l4, !tbaa !29
  %t979 = load i32, ptr %l6, !tbaa !23
  %t982 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t978, i32 %t979)
  store i64 %t982, ptr %l319
  br label %bb179
bb179:
  %t983 = load ptr, ptr %l4, !tbaa !29
  %t984 = load i32, ptr %l5, !tbaa !23
  %t987 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t983, i32 %t984)
  store i64 %t987, ptr %l322
  br label %bb180
bb180:
  %t988 = load i64, ptr %l319, !tbaa !24
  %t989 = load i64, ptr %l322, !tbaa !24
  %t990 = icmp sgt i64 %t988, %t989
  br i1 %t990, label %bb181, label %bb182
bb181:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d209, i32 0, i32 1) }, ptr %l324, !tbaa !27
  br label %bb183
bb182:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d210, i32 0, i32 1) }, ptr %l324, !tbaa !27
  br label %bb183
bb183:
  %t992 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t993 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t994 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t995 = load { i64, ptr }, ptr %l324, !tbaa !27
  %t996 = extractvalue { i64, ptr } %t995, 1
  %t997 = extractvalue { i64, ptr } %t995, 0
  %t999 = extractvalue { i64, ptr } %t992, 1
  %t1000 = extractvalue { i64, ptr } %t992, 0
  %t1001 = add i64 %t997, %t1000
  %t1002 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 1
  %t1003 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d211, i32 0, i32 1) }, 0
  %t1004 = add i64 %t1001, %t1003
  %t1006 = extractvalue { i64, ptr } %t993, 1
  %t1007 = extractvalue { i64, ptr } %t993, 0
  %t1008 = add i64 %t1004, %t1007
  %t1009 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t1010 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t1011 = add i64 %t1008, %t1010
  %t1013 = extractvalue { i64, ptr } %t994, 1
  %t1014 = extractvalue { i64, ptr } %t994, 0
  %t1015 = add i64 %t1011, %t1014
  %t1016 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1015)
  call void @olang_textcopy(ptr %t1016, ptr %t996, i64 %t997)
  %t1017 = getelementptr i8, ptr %t1016, i64 %t997
  call void @olang_textcopy(ptr %t1017, ptr %t999, i64 %t1000)
  %t1018 = getelementptr i8, ptr %t1017, i64 %t1000
  call void @olang_textcopy(ptr %t1018, ptr %t1002, i64 %t1003)
  %t1019 = getelementptr i8, ptr %t1018, i64 %t1003
  call void @olang_textcopy(ptr %t1019, ptr %t1006, i64 %t1007)
  %t1020 = getelementptr i8, ptr %t1019, i64 %t1007
  call void @olang_textcopy(ptr %t1020, ptr %t1009, i64 %t1010)
  %t1021 = getelementptr i8, ptr %t1020, i64 %t1010
  call void @olang_textcopy(ptr %t1021, ptr %t1013, i64 %t1014)
  %t1022 = insertvalue { i64, ptr } undef, i64 %t1015, 0
  %t1023 = insertvalue { i64, ptr } %t1022, ptr %t1016, 1
  %t1025 = extractvalue { i64, ptr } %t1023, 0
  %t1026 = extractvalue { i64, ptr } %t1023, 1
  %t1027 = mul i64 %t1025, 1
  %t1028 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1027)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1028, ptr %t1026, i64 %t1027, i1 false)
  %t1029 = insertvalue { i64, ptr } undef, i64 %t1025, 0
  %t1030 = insertvalue { i64, ptr } %t1029, ptr %t1028, 1
  %t1031 = load ptr, ptr %l316, !tbaa !29
  %t1033 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t1031, { i64, ptr } %t1030)
  store { i64, ptr } %t1033, ptr %l330
  br label %bb184
bb184:
  call void @__olang_scope_close(ptr %s26)
  call void @__olang_scope_close(ptr %s0)
  %t1034 = load { i64, ptr }, ptr %l330, !tbaa !27
  store { i64, ptr } %t1034, ptr %rv
  br label %ret
bb185:
  %t1035 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1035, ptr %l331, !tbaa !29
  %t1036 = load ptr, ptr %l4, !tbaa !29
  %t1037 = load i32, ptr %l5, !tbaa !23
  %t1040 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1036, i32 %t1037)
  store i1 %t1040, ptr %l334
  br label %bb186
bb186:
  %t1041 = load i1, ptr %l334, !tbaa !21
  br i1 %t1041, label %bb187, label %bb188
bb187:
  %t1042 = load ptr, ptr %l4, !tbaa !29
  %t1043 = load i32, ptr %l5, !tbaa !23
  %t1046 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1042, i32 %t1043)
  store i32 %t1046, ptr %l338
  br label %bb189
bb188:
  %t1047 = load i32, ptr %l5, !tbaa !23
  store i32 %t1047, ptr %l335, !tbaa !23
  br label %bb190
bb189:
  %t1049 = load i32, ptr %l338, !tbaa !23
  store i32 %t1049, ptr %l335, !tbaa !23
  br label %bb190
bb190:
  %t1050 = load ptr, ptr %l331, !tbaa !29
  %t1051 = load i32, ptr %l335, !tbaa !23
  %t1052 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t1050, i32 %t1051)
  store i32 %t1052, ptr %l340
  br label %bb191
bb191:
  %t1053 = load i32, ptr %l340, !tbaa !23
  store i32 %t1053, ptr %l19, !tbaa !23
  %t1054 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1054, ptr %l341, !tbaa !29
  %t1055 = load ptr, ptr %l4, !tbaa !29
  %t1056 = load i32, ptr %l6, !tbaa !23
  %t1059 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1055, i32 %t1056)
  store i1 %t1059, ptr %l344
  br label %bb192
bb192:
  %t1060 = load i1, ptr %l344, !tbaa !21
  br i1 %t1060, label %bb193, label %bb194
bb193:
  %t1061 = load ptr, ptr %l4, !tbaa !29
  %t1062 = load i32, ptr %l6, !tbaa !23
  %t1065 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t1061, i32 %t1062)
  store i32 %t1065, ptr %l348
  br label %bb195
bb194:
  %t1066 = load i32, ptr %l6, !tbaa !23
  store i32 %t1066, ptr %l345, !tbaa !23
  br label %bb196
bb195:
  %t1068 = load i32, ptr %l348, !tbaa !23
  store i32 %t1068, ptr %l345, !tbaa !23
  br label %bb196
bb196:
  %t1069 = load ptr, ptr %l341, !tbaa !29
  %t1070 = load i32, ptr %l345, !tbaa !23
  %t1071 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t1069, i32 %t1070)
  store i32 %t1071, ptr %l350
  br label %bb197
bb197:
  %t1072 = load i32, ptr %l350, !tbaa !23
  store i32 %t1072, ptr %l20, !tbaa !23
  %t1073 = load i32, ptr %l19, !tbaa !23
  %t1074 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1077 = icmp ne i32 %t1073, %t1074
  br i1 %t1077, label %bb198, label %bb199
bb198:
  %t1079 = load i32, ptr %l20, !tbaa !23
  %t1080 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1083 = icmp ne i32 %t1079, %t1080
  store i1 %t1083, ptr %l354, !tbaa !21
  br label %bb200
bb199:
  store i1 false, ptr %l354, !tbaa !21
  br label %bb200
bb200:
  %t1085 = load i1, ptr %l354, !tbaa !21
  br i1 %t1085, label %bb201, label %bb202
bb201:
  store %olang.scope zeroinitializer, ptr %s39
  %t1086 = load ptr, ptr %l0, !tbaa !29
  %t1087 = load i32, ptr %l19, !tbaa !23
  %t1090 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t1086, i32 %t1087)
  store i1 %t1090, ptr %l360
  br label %bb203
bb202:
  br label %bb235
bb203:
  %t1091 = load i1, ptr %l360, !tbaa !21
  br i1 %t1091, label %bb204, label %bb205
bb204:
  %t1092 = load ptr, ptr %l4, !tbaa !29
  %t1093 = load i32, ptr %l5, !tbaa !23
  %t1096 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1092, i32 %t1093)
  store i1 %t1096, ptr %l364
  br label %bb206
bb205:
  store i1 false, ptr %l361, !tbaa !21
  br label %bb207
bb206:
  %t1097 = load i1, ptr %l364, !tbaa !21
  %t1098 = xor i1 %t1097, true
  store i1 %t1098, ptr %l361, !tbaa !21
  br label %bb207
bb207:
  %t1100 = load i1, ptr %l361, !tbaa !21
  br i1 %t1100, label %bb208, label %bb209
bb208:
  %t1101 = load ptr, ptr %l0, !tbaa !29
  %t1102 = load i32, ptr %l20, !tbaa !23
  %t1105 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t1101, i32 %t1102)
  store i1 %t1105, ptr %l369
  br label %bb210
bb209:
  store i1 false, ptr %l366, !tbaa !21
  br label %bb211
bb210:
  %t1106 = load i1, ptr %l369, !tbaa !21
  %t1107 = xor i1 %t1106, true
  store i1 %t1107, ptr %l366, !tbaa !21
  br label %bb211
bb211:
  %t1109 = load i1, ptr %l366, !tbaa !21
  br i1 %t1109, label %bb212, label %bb213
bb212:
  store %olang.scope zeroinitializer, ptr %s40
  %t1110 = load ptr, ptr %l4, !tbaa !29
  %t1111 = load i32, ptr %l19, !tbaa !23
  %t1114 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t1110, i32 %t1111)
  store i32 %t1114, ptr %l373
  br label %bb214
bb213:
  br label %bb222
bb214:
  %t1115 = load i32, ptr %l373, !tbaa !23
  store i32 %t1115, ptr %l21, !tbaa !23
  %t1116 = load ptr, ptr %l0, !tbaa !29
  %t1117 = load i32, ptr %l19, !tbaa !23
  %t1120 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %t1116, i32 %t1117)
  store i64 %t1120, ptr %l376
  br label %bb215
bb215:
  %t1121 = load i64, ptr %l376, !tbaa !24
  store i64 %t1121, ptr %l22, !tbaa !24
  %t1122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1122, ptr %l377, !tbaa !29
  %t1123 = load ptr, ptr %l0, !tbaa !29
  %t1125 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %s40, ptr %t1123)
  store { i64, ptr } %t1125, ptr %l379
  br label %bb216
bb216:
  %t1126 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t1127 = extractvalue { i64, ptr } %t1126, 0
  %t1128 = extractvalue { i64, ptr } %t1126, 1
  %t1129 = mul i64 %t1127, 1
  %t1130 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1129)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1130, ptr %t1128, i64 %t1129, i1 false)
  %t1131 = insertvalue { i64, ptr } undef, i64 %t1127, 0
  %t1132 = insertvalue { i64, ptr } %t1131, ptr %t1130, 1
  store { i64, ptr } %t1132, ptr %l380, !tbaa !27
  %t1133 = load i64, ptr %l22, !tbaa !24
  store i64 %t1133, ptr %l381, !tbaa !24
  %t1134 = load ptr, ptr %l0, !tbaa !29
  %t1135 = load i32, ptr %l21, !tbaa !23
  %t1138 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t1134, i32 %t1135)
  store i64 %t1138, ptr %l384
  br label %bb217
bb217:
  %t1139 = load i64, ptr %l381, !tbaa !24
  %t1140 = load i64, ptr %l384, !tbaa !24
  %t1141 = mul i64 %t1139, %t1140
  %t1143 = call i64 @__olang_fmt_i64(ptr null, i64 %t1141)
  %t1144 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1143)
  %t1145 = call i64 @__olang_fmt_i64(ptr %t1144, i64 %t1141)
  %t1146 = insertvalue { i64, ptr } undef, i64 %t1143, 0
  %t1147 = insertvalue { i64, ptr } %t1146, ptr %t1144, 1
  %t1149 = extractvalue { i64, ptr } %t1147, 0
  %t1150 = extractvalue { i64, ptr } %t1147, 1
  %t1151 = mul i64 %t1149, 1
  %t1152 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1151)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1152, ptr %t1150, i64 %t1151, i1 false)
  %t1153 = insertvalue { i64, ptr } undef, i64 %t1149, 0
  %t1154 = insertvalue { i64, ptr } %t1153, ptr %t1152, 1
  %t1155 = load i32, ptr %l21, !tbaa !23
  %t1156 = load ptr, ptr %l377, !tbaa !29
  %t1157 = load { i64, ptr }, ptr %l380, !tbaa !27
  %t1160 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %s40, ptr %s40, ptr %s40, ptr %t1156, { i64, ptr } %t1157, { i64, ptr } %t1154, i32 %t1155, i1 false)
  store { i64, ptr } %t1160, ptr %l389
  br label %bb218
bb218:
  %t1161 = load { i64, ptr }, ptr %l389, !tbaa !27
  store { i64, ptr } %t1161, ptr %l23, !tbaa !27
  %t1162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1162, ptr %l390, !tbaa !29
  %t1163 = load ptr, ptr %l0, !tbaa !29
  %t1164 = load i32, ptr %l19, !tbaa !23
  %t1167 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s40, ptr %t1163, i32 %t1164)
  store { i64, ptr } %t1167, ptr %l393
  br label %bb219
bb219:
  %t1168 = load { i64, ptr }, ptr %l393, !tbaa !27
  %t1169 = extractvalue { i64, ptr } %t1168, 0
  %t1170 = extractvalue { i64, ptr } %t1168, 1
  %t1171 = mul i64 %t1169, 1
  %t1172 = call ptr @__olang_scope_alloc(ptr %s40, i64 %t1171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1172, ptr %t1170, i64 %t1171, i1 false)
  %t1173 = insertvalue { i64, ptr } undef, i64 %t1169, 0
  %t1174 = insertvalue { i64, ptr } %t1173, ptr %t1172, 1
  %t1175 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t1176 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t1177 = load ptr, ptr %l390, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s40, ptr %v1, ptr %s40, ptr %s40, ptr %t1177, { i64, ptr } %t1174, { i64, ptr } %t1175, { i64, ptr } %t1176, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb220
bb220:
  %t1181 = load ptr, ptr %l0, !tbaa !29
  %t1182 = load i64, ptr %l22, !tbaa !24
  %t1184 = call i64 @__olang_fmt_i64(ptr null, i64 %t1182)
  %t1185 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1184)
  %t1186 = call i64 @__olang_fmt_i64(ptr %t1185, i64 %t1182)
  %t1187 = insertvalue { i64, ptr } undef, i64 %t1184, 0
  %t1188 = insertvalue { i64, ptr } %t1187, ptr %t1185, 1
  %t1190 = extractvalue { i64, ptr } %t1188, 0
  %t1191 = extractvalue { i64, ptr } %t1188, 1
  %t1192 = mul i64 %t1190, 1
  %t1193 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1193, ptr %t1191, i64 %t1192, i1 false)
  %t1194 = insertvalue { i64, ptr } undef, i64 %t1190, 0
  %t1195 = insertvalue { i64, ptr } %t1194, ptr %t1193, 1
  %t1196 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t1200 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v2, ptr %s40, ptr %v2, ptr %t1181, { i64, ptr } %t1195, { i64, ptr } %t1196)
  store { i64, ptr } %t1200, ptr %l402
  br label %bb221
bb221:
  call void @__olang_scope_close(ptr %s40)
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s0)
  %t1201 = load { i64, ptr }, ptr %l402, !tbaa !27
  store { i64, ptr } %t1201, ptr %rv
  br label %ret
bb222:
  %t1202 = load ptr, ptr %l0, !tbaa !29
  %t1203 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t1204 = load i32, ptr %l5, !tbaa !23
  %t1208 = call { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %s39, ptr %t1202, { i64, ptr } %t1203, i32 %t1204)
  store { { i64, ptr }, { i64, ptr } } %t1208, ptr %l406
  br label %bb223
bb223:
  %t1209 = load { { i64, ptr }, { i64, ptr } }, ptr %l406
  store { { i64, ptr }, { i64, ptr } } %t1209, ptr %l24
  %t1210 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l24, i32 0, i32 0
  %t1211 = load { i64, ptr }, ptr %t1210, !tbaa !27
  store { i64, ptr } %t1211, ptr %l407, !tbaa !27
  %t1212 = load { i64, ptr }, ptr %l407, !tbaa !27
  %t1213 = extractvalue { i64, ptr } %t1212, 0
  store i64 %t1213, ptr %l408, !tbaa !24
  %t1214 = load i64, ptr %l408, !tbaa !24
  %t1215 = mul i64 %t1214, 1
  %t1216 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1215)
  %t1217 = insertvalue { i64, ptr } undef, i64 %t1214, 0
  %t1218 = insertvalue { i64, ptr } %t1217, ptr %t1216, 1
  store { i64, ptr } %t1218, ptr %l409, !tbaa !27
  %t1219 = getelementptr { i64, ptr }, ptr %l409, i32 0, i32 1
  %t1220 = load ptr, ptr %t1219, !tbaa !27
  %t1221 = getelementptr { i64, ptr }, ptr %l407, i32 0, i32 1
  %t1222 = load ptr, ptr %t1221, !tbaa !27
  %t1223 = load i64, ptr %l408, !tbaa !24
  %t1224 = mul i64 %t1223, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1220, ptr %t1222, i64 %t1224, i1 false)
  %t1225 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t1225, ptr %lp25
  %t1226 = load { i64, ptr }, ptr %l409, !tbaa !27
  %t1227 = load ptr, ptr %lp25
  store { i64, ptr } %t1226, ptr %t1227, !tbaa !27
  %t1228 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l24, i32 0, i32 1
  %t1229 = load { i64, ptr }, ptr %t1228, !tbaa !27
  store { i64, ptr } %t1229, ptr %l26, !tbaa !27
  %t1231 = load ptr, ptr %l0, !tbaa !29
  %t1232 = load i32, ptr %l20, !tbaa !23
  %t1235 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %t1231, i32 %t1232)
  store i1 %t1235, ptr %l413
  br label %bb224
bb224:
  %t1236 = load i1, ptr %l413, !tbaa !21
  br i1 %t1236, label %bb225, label %bb226
bb225:
  %t1237 = load ptr, ptr %l4, !tbaa !29
  %t1238 = load i32, ptr %l6, !tbaa !23
  %t1241 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t1237, i32 %t1238)
  store i1 %t1241, ptr %l416
  br label %bb227
bb226:
  br label %bb233
bb227:
  %t1242 = load i1, ptr %l416, !tbaa !21
  br i1 %t1242, label %bb228, label %bb229
bb228:
  %t1243 = load ptr, ptr %lp25
  %t1244 = load { i64, ptr }, ptr %t1243, !tbaa !27
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t1244, ptr %rv
  br label %ret
bb229:
  br label %bb230
bb230:
  %t1246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1246, ptr %l418, !tbaa !29
  %t1247 = load ptr, ptr %l0, !tbaa !29
  %t1248 = load i32, ptr %l20, !tbaa !23
  %t1251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v2, ptr %t1247, i32 %t1248)
  store { i64, ptr } %t1251, ptr %l421
  br label %bb231
bb231:
  %t1252 = load { i64, ptr }, ptr %l421, !tbaa !27
  %t1253 = extractvalue { i64, ptr } %t1252, 0
  %t1254 = extractvalue { i64, ptr } %t1252, 1
  %t1255 = mul i64 %t1253, 1
  %t1256 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1256, ptr %t1254, i64 %t1255, i1 false)
  %t1257 = insertvalue { i64, ptr } undef, i64 %t1253, 0
  %t1258 = insertvalue { i64, ptr } %t1257, ptr %t1256, 1
  %t1259 = load ptr, ptr %lp25
  %t1260 = load { i64, ptr }, ptr %t1259, !tbaa !27
  %t1261 = load ptr, ptr %l418, !tbaa !29
  %t1264 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t1261, { i64, ptr } %t1258, { i64, ptr } %t1260, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t1264, ptr %l424
  br label %bb232
bb232:
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s0)
  %t1265 = load { i64, ptr }, ptr %l424, !tbaa !27
  store { i64, ptr } %t1265, ptr %rv
  br label %ret
bb233:
  %t1266 = load ptr, ptr %l0, !tbaa !29
  %t1267 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t1268 = load ptr, ptr %lp25
  %t1269 = load { i64, ptr }, ptr %t1268, !tbaa !27
  %t1273 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s39, ptr %v2, ptr %v2, ptr %t1266, { i64, ptr } %t1267, { i64, ptr } %t1269)
  store { i64, ptr } %t1273, ptr %l428
  br label %bb234
bb234:
  call void @__olang_scope_close(ptr %s39)
  call void @__olang_scope_close(ptr %s0)
  %t1274 = load { i64, ptr }, ptr %l428, !tbaa !27
  store { i64, ptr } %t1274, ptr %rv
  br label %ret
bb235:
  %t1275 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1275, ptr %l429, !tbaa !29
  %t1276 = load ptr, ptr %l4, !tbaa !29
  %t1277 = load i32, ptr %l2, !tbaa !23
  %t1279 = inttoptr i64 0 to ptr
  %t1282 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t1279, ptr %t1276, i32 %t1277)
  store { i64, ptr } %t1282, ptr %l433
  br label %bb236
bb236:
  %t1283 = load ptr, ptr %l4, !tbaa !29
  %t1284 = load i32, ptr %l3, !tbaa !23
  %t1286 = inttoptr i64 0 to ptr
  %t1289 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t1286, ptr %t1283, i32 %t1284)
  store { i64, ptr } %t1289, ptr %l437
  br label %bb237
bb237:
  %t1290 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d215, i32 0, i32 1) }, 1
  %t1291 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d215, i32 0, i32 1) }, 0
  %t1292 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t1293 = extractvalue { i64, ptr } %t1292, 1
  %t1294 = extractvalue { i64, ptr } %t1292, 0
  %t1295 = add i64 %t1291, %t1294
  %t1296 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t1297 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t1298 = add i64 %t1295, %t1297
  %t1299 = load { i64, ptr }, ptr %l437, !tbaa !27
  %t1300 = extractvalue { i64, ptr } %t1299, 1
  %t1301 = extractvalue { i64, ptr } %t1299, 0
  %t1302 = add i64 %t1298, %t1301
  %t1303 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1302)
  call void @olang_textcopy(ptr %t1303, ptr %t1290, i64 %t1291)
  %t1304 = getelementptr i8, ptr %t1303, i64 %t1291
  call void @olang_textcopy(ptr %t1304, ptr %t1293, i64 %t1294)
  %t1305 = getelementptr i8, ptr %t1304, i64 %t1294
  call void @olang_textcopy(ptr %t1305, ptr %t1296, i64 %t1297)
  %t1306 = getelementptr i8, ptr %t1305, i64 %t1297
  call void @olang_textcopy(ptr %t1306, ptr %t1300, i64 %t1301)
  %t1307 = insertvalue { i64, ptr } undef, i64 %t1302, 0
  %t1308 = insertvalue { i64, ptr } %t1307, ptr %t1303, 1
  %t1310 = extractvalue { i64, ptr } %t1308, 0
  %t1311 = extractvalue { i64, ptr } %t1308, 1
  %t1312 = mul i64 %t1310, 1
  %t1313 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1312)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1313, ptr %t1311, i64 %t1312, i1 false)
  %t1314 = insertvalue { i64, ptr } undef, i64 %t1310, 0
  %t1315 = insertvalue { i64, ptr } %t1314, ptr %t1313, 1
  %t1316 = load ptr, ptr %l429, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s0, ptr %t1316, { i64, ptr } %t1315)
  br label %bb238
bb238:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d217, i32 0, i32 1) }, ptr %l440, !tbaa !27
  %t1318 = load { i64, ptr }, ptr %l440, !tbaa !27
  store { i64, ptr } %t1318, ptr %l441, !tbaa !27
  %t1319 = load { i64, ptr }, ptr %l441, !tbaa !27
  %t1320 = extractvalue { i64, ptr } %t1319, 0
  store i64 %t1320, ptr %l442, !tbaa !24
  %t1321 = load i64, ptr %l442, !tbaa !24
  %t1322 = mul i64 %t1321, 1
  %t1323 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1322)
  %t1324 = insertvalue { i64, ptr } undef, i64 %t1321, 0
  %t1325 = insertvalue { i64, ptr } %t1324, ptr %t1323, 1
  store { i64, ptr } %t1325, ptr %l443, !tbaa !27
  %t1326 = getelementptr { i64, ptr }, ptr %l443, i32 0, i32 1
  %t1327 = load ptr, ptr %t1326, !tbaa !27
  %t1328 = getelementptr { i64, ptr }, ptr %l441, i32 0, i32 1
  %t1329 = load ptr, ptr %t1328, !tbaa !27
  %t1330 = load i64, ptr %l442, !tbaa !24
  %t1331 = mul i64 %t1330, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1327, ptr %t1329, i64 %t1331, i1 false)
  %t1332 = load { i64, ptr }, ptr %l443, !tbaa !27
  store { i64, ptr } %t1332, ptr %l441, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t1333 = load { i64, ptr }, ptr %l441, !tbaa !27
  store { i64, ptr } %t1333, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eenvType(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
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
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca ptr
  %l56 = alloca i32
  %l58 = alloca %"compiler/mir:Local"
  %l60 = alloca { i64, ptr }
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l98 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t6, ptr %l17
  br label %bb1
bb1:
  %t7 = load %"std/prelude/text:StringBuilder", ptr %l17
  store %"std/prelude/text:StringBuilder" %t7, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d218, i32 0, i32 1) })
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t9, i32 0, i32 5
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l21
  br label %bb3
bb3:
  %t14 = load i64, ptr %l21, !tbaa !24
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
  store i64 0, ptr %l25, !tbaa !24
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
  store i64 %t39, ptr %l28, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l28, !tbaa !24
  store i64 %t41, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t63 = icmp sgt i64 %t61, 0
  br i1 %t63, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d219, i32 0, i32 1) })
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb17
bb17:
  store ptr %l2, ptr %l49, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l50, !tbaa !29
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/mir:Fn", ptr %t67, i32 0, i32 7
  store ptr %t69, ptr %l52, !tbaa !29
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/mir:Fn", ptr %t70, i32 0, i32 5
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t72, i64 %t73)
  store i32 %t76, ptr %l56
  br label %bb18
bb18:
  %t77 = load i32, ptr %l56, !tbaa !23
  %t78 = sext i32 %t77 to i64
  %t79 = load ptr, ptr %l52, !tbaa !29
  %t81 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t79, i64 %t78)
  store %"compiler/mir:Local" %t81, ptr %l58
  br label %bb19
bb19:
  %t82 = getelementptr %"compiler/mir:Local", ptr %l58, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t84 = load ptr, ptr %l50, !tbaa !29
  %t86 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %t84, i32 %t83)
  store { i64, ptr } %t86, ptr %l60
  br label %bb20
bb20:
  %t87 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t94, { i64, ptr } %t93)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t96 = load i64, ptr %l7, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l7, !tbaa !24
  br label %bb10
bb23:
  store i64 0, ptr %l9, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/emit:fnEm", ptr %t100, i32 0, i32 0
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/mir:Fn", ptr %t104, i32 0, i32 0
  %t107 = load { i64, [2 x i64] }, ptr %t106
  %t110 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %t103, { i64, [2 x i64] } %t107)
  store i64 %t110, ptr %l68
  br label %bb24
bb24:
  %t111 = load i64, ptr %l68, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb25, label %bb26
bb25:
  %t118 = load i64, ptr %l11, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb30
bb27:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t126 = sub i64 %t122, %t123
  %t127 = load i64, ptr %l11, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t132 = sub i64 %t130, 1
  %t133 = load i64, ptr %l11, !tbaa !24
  %t136 = sdiv i64 %t132, %t133
  store i64 %t136, ptr %l75, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb29
bb29:
  %t138 = load i64, ptr %l75, !tbaa !24
  store i64 %t138, ptr %l72, !tbaa !24
  br label %bb30
bb30:
  %t139 = load i64, ptr %l72, !tbaa !24
  store i64 %t139, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t140 = load i64, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l12, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb33:
  br label %bb34
bb34:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t149 = load i64, ptr %l13, !tbaa !24
  %t150 = load i64, ptr %l11, !tbaa !24
  %t153 = mul i64 %t149, %t150
  %t156 = add i64 %t148, %t153
  store i64 %t156, ptr %l14, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l2, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d220, i32 0, i32 1) })
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s6)
  br label %bb36
bb36:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l13, !tbaa !24
  br label %bb31
bb37:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d221, i32 0, i32 1) })
  br label %bb38
bb38:
  %t165 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t165, ptr %l98
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t166 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t166, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enewArray(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l30 = alloca i32
  %l33 = alloca i1
  %l34 = alloca i32
  %l37 = alloca i32
  %l39 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca i32
  %l44 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l76 = alloca i1
  %l80 = alloca { i64, ptr }
  %l83 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l102 = alloca i1
  %l108 = alloca i1
  %l109 = alloca i1
  %l112 = alloca i1
  %l120 = alloca { i64, ptr }
  %l122 = alloca i64
  %l128 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l136 = alloca i64
  %l141 = alloca i1
  %l146 = alloca { i64, ptr }
  %l148 = alloca i64
  %l152 = alloca i1
  %l154 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l164 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l212 = alloca ptr
  %l217 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store { i64, [4 x i64] } %a3, ptr %l3
  store { i64, [4 x i64] } %a4, ptr %l4
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
  store ptr %t7, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i32, ptr %l2, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t9, i32 %t10)
  store i32 %t13, ptr %l30
  br label %bb1
bb1:
  %t14 = load i32, ptr %l30, !tbaa !23
  store i32 %t14, ptr %l6, !tbaa !23
  %t15 = load ptr, ptr %l5, !tbaa !29
  %t16 = load i32, ptr %l6, !tbaa !23
  %t19 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l33
  br label %bb2
bb2:
  %t20 = load i1, ptr %l33, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t22 = load i32, ptr %l6, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l37
  br label %bb5
bb4:
  %t26 = load i32, ptr %l6, !tbaa !23
  store i32 %t26, ptr %l34, !tbaa !23
  br label %bb6
bb5:
  %t28 = load i32, ptr %l37, !tbaa !23
  store i32 %t28, ptr %l34, !tbaa !23
  br label %bb6
bb6:
  %t29 = load i32, ptr %l34, !tbaa !23
  %t30 = load ptr, ptr %l5, !tbaa !29
  store ptr %t30, ptr %l39, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t31, i32 %t29)
  store i32 %t35, ptr %l42
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l39, !tbaa !29
  %t37 = load i32, ptr %l42, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t38, ptr %l43
  br label %bb8
bb8:
  %t39 = load i32, ptr %l43, !tbaa !23
  store i32 %t39, ptr %l8, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l44, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, [4 x i64] }, ptr %l3
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t47 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t41, { i64, [4 x i64] } %t42, i32 %t43)
  store { i64, ptr } %t47, ptr %l48
  br label %bb9
bb9:
  %t48 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  %t50 = extractvalue { i64, ptr } %t48, 1
  %t51 = mul i64 %t49, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l49, !tbaa !27
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load { i64, [4 x i64] }, ptr %l3
  %t59 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t55, { i64, [4 x i64] } %t56)
  store i32 %t59, ptr %l52
  br label %bb10
bb10:
  %t60 = load ptr, ptr %l44, !tbaa !29
  %t61 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t62 = load i32, ptr %l52, !tbaa !23
  %t63 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %s0, ptr %s0, ptr %t60, { i64, ptr } %t61, i32 %t62)
  store { i64, ptr } %t63, ptr %l53
  br label %bb11
bb11:
  %t64 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t64, ptr %l9, !tbaa !27
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l54, !tbaa !29
  %t66 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t66, ptr %l55, !tbaa !27
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l8, !tbaa !23
  %t71 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t67, i32 %t68)
  store i64 %t71, ptr %l58
  br label %bb12
bb12:
  %t72 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t74 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t77 = add i64 %t73, %t76
  %t78 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t81 = load i64, ptr %l58, !tbaa !24
  %t82 = call i64 @__olang_fmt_i64(ptr null, i64 %t81)
  %t83 = add i64 %t80, %t82
  %t84 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t72, i64 %t73)
  %t85 = getelementptr i8, ptr %t84, i64 %t73
  call void @olang_textcopy(ptr %t85, ptr %t75, i64 %t76)
  %t86 = getelementptr i8, ptr %t85, i64 %t76
  call void @olang_textcopy(ptr %t86, ptr %t78, i64 %t79)
  %t87 = getelementptr i8, ptr %t86, i64 %t79
  %t88 = call i64 @__olang_fmt_i64(ptr %t87, i64 %t81)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t84, 1
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t93 = extractvalue { i64, ptr } %t90, 1
  %t94 = mul i64 %t92, 1
  %t95 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t94)
  call void @llvm.memcpy.p0.p0.i64(ptr %t95, ptr %t93, i64 %t94, i1 false)
  %t96 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t98 = load ptr, ptr %l54, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t98, { i64, ptr } %t97)
  store { i64, ptr } %t100, ptr %l61
  br label %bb13
bb13:
  %t101 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t101, ptr %l10, !tbaa !27
  %t102 = load { i64, [4 x i64] }, ptr %l4
  %t104 = extractvalue { i64, [4 x i64] } %t102, 0
  %t105 = icmp eq i64 %t104, 2
  br i1 %t105, label %bb14, label %bb15
bb14:
  %t107 = getelementptr { i64, [4 x i64] }, ptr %l4, i32 0, i32 1
  %t108 = getelementptr { i32, i64 }, ptr %t107, i32 0, i32 1
  %t109 = load i64, ptr %t108
  store i64 %t109, ptr %l11, !tbaa !24
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t111 = load i64, ptr %l11, !tbaa !24
  %t113 = icmp eq i64 %t111, 0
  store i1 %t113, ptr %l62, !tbaa !21
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7367d2b2f6aa7e57_e9ab633458e0a533)
  unreachable
bb22:
  %t115 = load i1, ptr %l62, !tbaa !21
  store i1 %t115, ptr %l12, !tbaa !21
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t120 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s0, ptr %t116, { i64, [1 x i64] } %a1)
  store { i64, ptr } %t120, ptr %l70
  br label %bb23
bb23:
  %t121 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t121, ptr %l13, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d224, i32 0, i32 1) }, ptr %l71, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t122, ptr %l72, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l73, !tbaa !24
  %t125 = load i64, ptr %l73, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l74, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l73, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t136, ptr %l14, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t137, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d225, i32 0, i32 1) })
  store i1 %t139, ptr %l76
  br label %bb24
bb24:
  %t140 = load i1, ptr %l76, !tbaa !21
  br i1 %t140, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/emit:fnEm", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s4, ptr %t144, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d226, i32 0, i32 1) })
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t146, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d227, i32 0, i32 1) }, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d228, i32 0, i32 1) })
  store { i64, ptr } %t148, ptr %l80
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t149 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t149, ptr %rv
  br label %ret
bb29:
  %t150 = load { i64, [4 x i64] }, ptr %l4
  %t152 = extractvalue { i64, [4 x i64] } %t150, 0
  %t153 = icmp eq i64 %t152, 0
  br i1 %t153, label %bb30, label %bb31
bb30:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/emit:fnEm", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/emit:Emitter", ptr %t158, i32 0, i32 49
  %t161 = load i1, ptr %t160, !tbaa !21
  %t163 = xor i1 %t161, true
  store i1 %t163, ptr %l83, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb32
bb32:
  %t165 = load i1, ptr %l83, !tbaa !21
  br i1 %t165, label %bb33, label %bb34
bb33:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l88, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t167, ptr %l89, !tbaa !27
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t170 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t171 = load i32, ptr %l8, !tbaa !23
  %t176 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t168, { i64, ptr } %t169, { i64, ptr } %t170, i32 %t171, i1 false)
  store { i64, ptr } %t176, ptr %l94
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t177 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t177, 0
  %t179 = extractvalue { i64, ptr } %t177, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t184 = load ptr, ptr %l88, !tbaa !29
  %t185 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t187 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %v1, ptr %v1, ptr %t184, { i64, ptr } %t185, { i64, ptr } %t183)
  store { i64, ptr } %t187, ptr %l96
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t188 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t188, ptr %rv
  br label %ret
bb37:
  %t189 = load { i64, [4 x i64] }, ptr %l4
  %t191 = extractvalue { i64, [4 x i64] } %t189, 0
  %t192 = icmp eq i64 %t191, 0
  br i1 %t192, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb40
bb39:
  br label %bb40
bb40:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/emit:fnEm", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = getelementptr %"compiler/emit:Emitter", ptr %t197, i32 0, i32 49
  %t200 = load i1, ptr %t199, !tbaa !21
  br i1 %t200, label %bb41, label %bb42
bb41:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/emit:fnEm", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/emit:fnEm", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = getelementptr %"compiler/mir:Fn", ptr %t209, i32 0, i32 2
  %t212 = load i64, ptr %t211, !tbaa !24
  %t215 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eretires(ptr %v0, ptr %t205, i64 %t212)
  store i1 %t215, ptr %l108
  br label %bb43
bb42:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb48
bb43:
  %t216 = load i1, ptr %l108, !tbaa !21
  br i1 %t216, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb47
bb45:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l2, !tbaa !23
  %t221 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ebufferCopy(ptr %v0, ptr %t217, i32 %t218)
  store i1 %t221, ptr %l112
  br label %bb46
bb46:
  %t222 = load i1, ptr %l112, !tbaa !21
  store i1 %t222, ptr %l109, !tbaa !21
  br label %bb47
bb47:
  %t223 = load i1, ptr %l109, !tbaa !21
  store i1 %t223, ptr %l102, !tbaa !21
  br label %bb48
bb48:
  %t224 = load i1, ptr %l102, !tbaa !21
  br i1 %t224, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s7
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/emit:fnEm", ptr %t225, i32 0, i32 0
  %t228 = load ptr, ptr %t227, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s7, ptr %t228, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d229, i32 0, i32 1) })
  br label %bb51
bb50:
  %t230 = load i1, ptr %l12, !tbaa !21
  br i1 %t230, label %bb60, label %bb61
bb51:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t234 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t235 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t238 = extractvalue { i64, ptr } %t233, 1
  %t239 = extractvalue { i64, ptr } %t233, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t245 = extractvalue { i64, ptr } %t234, 1
  %t246 = extractvalue { i64, ptr } %t234, 0
  %t247 = add i64 %t243, %t246
  %t248 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d232, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d232, i32 0, i32 1) }, 0
  %t250 = add i64 %t247, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t235, i64 %t236)
  %t252 = getelementptr i8, ptr %t251, i64 %t236
  call void @olang_textcopy(ptr %t252, ptr %t238, i64 %t239)
  %t253 = getelementptr i8, ptr %t252, i64 %t239
  call void @olang_textcopy(ptr %t253, ptr %t241, i64 %t242)
  %t254 = getelementptr i8, ptr %t253, i64 %t242
  call void @olang_textcopy(ptr %t254, ptr %t245, i64 %t246)
  %t255 = getelementptr i8, ptr %t254, i64 %t246
  call void @olang_textcopy(ptr %t255, ptr %t248, i64 %t249)
  %t256 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t251, 1
  %t259 = extractvalue { i64, ptr } %t257, 0
  %t260 = extractvalue { i64, ptr } %t257, 1
  %t261 = mul i64 %t259, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t261)
  call void @llvm.memcpy.p0.p0.i64(ptr %t262, ptr %t260, i64 %t261, i1 false)
  %t263 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  %t267 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t232, { i64, ptr } %t264)
  store { i64, ptr } %t267, ptr %l120
  br label %bb52
bb52:
  %t268 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t269 = extractvalue { i64, ptr } %t268, 0
  %t270 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t271 = extractvalue { i64, ptr } %t270, 0
  store i64 %t271, ptr %l122, !tbaa !24
  %t273 = load i64, ptr %l122, !tbaa !24
  %t274 = icmp eq i64 %t269, %t273
  br i1 %t274, label %bb53, label %bb54
bb53:
  %t276 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = load i64, ptr %l122, !tbaa !24
  %t281 = mul i64 %t280, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t277, ptr %t279, i64 %t281, i1 false)
  br label %bb55
bb54:
  %t282 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t282, ptr %l14, !tbaa !27
  br label %bb55
bb55:
  %t283 = load i1, ptr %l12, !tbaa !21
  br i1 %t283, label %bb56, label %bb57
bb56:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t287 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t291 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t285, { i64, ptr } %t286, { i64, ptr } %t287)
  store { i64, ptr } %t291, ptr %l128
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  %t292 = load { i64, ptr }, ptr %l128, !tbaa !27
  store { i64, ptr } %t292, ptr %rv
  br label %ret
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb67
bb60:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t295 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t296 = load i32, ptr %l8, !tbaa !23
  %t301 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t293, { i64, ptr } %t294, { i64, ptr } %t295, i32 %t296, i1 true)
  store { i64, ptr } %t301, ptr %l134
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t302 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t302, 0
  %t304 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 0
  store i64 %t305, ptr %l136, !tbaa !24
  %t307 = load i64, ptr %l136, !tbaa !24
  %t308 = icmp eq i64 %t303, %t307
  br i1 %t308, label %bb63, label %bb64
bb63:
  %t310 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = load i64, ptr %l136, !tbaa !24
  %t315 = mul i64 %t314, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t311, ptr %t313, i64 %t315, i1 false)
  br label %bb65
bb64:
  %t316 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t316, ptr %l14, !tbaa !27
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t317 = load i1, ptr %l12, !tbaa !21
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb68, label %bb69
bb68:
  store %olang.scope zeroinitializer, ptr %s12
  %t321 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t323 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s12, { i64, ptr } %t321, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d233, i32 0, i32 1) })
  store i1 %t323, ptr %l141
  br label %bb70
bb69:
  br label %bb105
bb70:
  %t324 = load i1, ptr %l141, !tbaa !21
  br i1 %t324, label %bb71, label %bb72
bb71:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t327 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t328 = load i32, ptr %l8, !tbaa !23
  %t333 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t325, { i64, ptr } %t326, { i64, ptr } %t327, i32 %t328, i1 false)
  store { i64, ptr } %t333, ptr %l146
  br label %bb73
bb72:
  br label %bb77
bb73:
  %t334 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t334, 0
  %t336 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t337 = extractvalue { i64, ptr } %t336, 0
  store i64 %t337, ptr %l148, !tbaa !24
  %t339 = load i64, ptr %l148, !tbaa !24
  %t340 = icmp eq i64 %t335, %t339
  br i1 %t340, label %bb74, label %bb75
bb74:
  %t342 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = load i64, ptr %l148, !tbaa !24
  %t347 = mul i64 %t346, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t343, ptr %t345, i64 %t347, i1 false)
  br label %bb76
bb75:
  %t348 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t348, ptr %l14, !tbaa !27
  br label %bb76
bb76:
  br label %bb77
bb77:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l8, !tbaa !23
  %t353 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t349, i32 %t350)
  store i1 %t353, ptr %l152
  br label %bb78
bb78:
  %t354 = load i1, ptr %l152, !tbaa !21
  store i1 %t354, ptr %l15, !tbaa !21
  %t355 = load i1, ptr %l15, !tbaa !21
  br i1 %t355, label %bb79, label %bb80
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d234, i32 0, i32 1) }, ptr %l154, !tbaa !27
  br label %bb82
bb80:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load { i64, [4 x i64] }, ptr %l4
  %t359 = load i32, ptr %l8, !tbaa !23
  %t363 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s12, ptr %t357, { i64, [4 x i64] } %t358, i32 %t359)
  store { i64, ptr } %t363, ptr %l158
  br label %bb81
bb81:
  %t364 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 0
  %t366 = extractvalue { i64, ptr } %t364, 1
  %t367 = mul i64 %t365, 1
  %t368 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t367)
  call void @llvm.memcpy.p0.p0.i64(ptr %t368, ptr %t366, i64 %t367, i1 false)
  %t369 = insertvalue { i64, ptr } undef, i64 %t365, 0
  %t370 = insertvalue { i64, ptr } %t369, ptr %t368, 1
  store { i64, ptr } %t370, ptr %l154, !tbaa !27
  br label %bb82
bb82:
  %t372 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t372, ptr %l16, !tbaa !27
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load i32, ptr %l8, !tbaa !23
  %t377 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s12, ptr %t373, i32 %t374)
  store { i64, ptr } %t377, ptr %l162
  br label %bb83
bb83:
  %t378 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t378, ptr %l17, !tbaa !27
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t381 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s12, ptr %s12, ptr %t379, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d235, i32 0, i32 1) }, i64 0)
  store { i64, ptr } %t381, ptr %l164
  br label %bb84
bb84:
  %t382 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t382, ptr %l18, !tbaa !27
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load { i64, ptr }, ptr %l18, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s12, ptr %s12, ptr %s12, ptr %s12, ptr %t383, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d236, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d237, i32 0, i32 1) }, { i64, ptr } %t384, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb85
bb85:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s12, ptr %s12, ptr %t387, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d238, i32 0, i32 1) })
  store { i64, ptr } %t389, ptr %l168
  br label %bb86
bb86:
  %t390 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t390, ptr %l19, !tbaa !27
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s12, ptr %s12, ptr %t391, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d239, i32 0, i32 1) })
  store { i64, ptr } %t393, ptr %l170
  br label %bb87
bb87:
  %t394 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t394, ptr %l20, !tbaa !27
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %s12, ptr %s12, ptr %t395, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d240, i32 0, i32 1) })
  store { i64, ptr } %t397, ptr %l172
  br label %bb88
bb88:
  %t398 = load { i64, ptr }, ptr %l172, !tbaa !27
  store { i64, ptr } %t398, ptr %l21, !tbaa !27
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t401 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t404 = extractvalue { i64, ptr } %t400, 1
  %t405 = extractvalue { i64, ptr } %t400, 0
  %t406 = add i64 %t402, %t405
  %t407 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t406)
  call void @olang_textcopy(ptr %t407, ptr %t401, i64 %t402)
  %t408 = getelementptr i8, ptr %t407, i64 %t402
  call void @olang_textcopy(ptr %t408, ptr %t404, i64 %t405)
  %t409 = insertvalue { i64, ptr } undef, i64 %t406, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t407, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = extractvalue { i64, ptr } %t410, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s12, ptr %t399, { i64, ptr } %t417)
  br label %bb89
bb89:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t421 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s12, ptr %t420, { i64, ptr } %t421)
  br label %bb90
bb90:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t428 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s12, ptr %s12, ptr %s12, ptr %s12, ptr %t424, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d242, i32 0, i32 1) }, { i64, ptr } %t425, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t428, ptr %l181
  br label %bb91
bb91:
  %t429 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t429, ptr %l22, !tbaa !27
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t433 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d243, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d243, i32 0, i32 1) }, 0
  %t436 = extractvalue { i64, ptr } %t431, 1
  %t437 = extractvalue { i64, ptr } %t431, 0
  %t438 = add i64 %t434, %t437
  %t439 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d244, i32 0, i32 1) }, 1
  %t440 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d244, i32 0, i32 1) }, 0
  %t441 = add i64 %t438, %t440
  %t443 = extractvalue { i64, ptr } %t432, 1
  %t444 = extractvalue { i64, ptr } %t432, 0
  %t445 = add i64 %t441, %t444
  %t446 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t445)
  call void @olang_textcopy(ptr %t446, ptr %t433, i64 %t434)
  %t447 = getelementptr i8, ptr %t446, i64 %t434
  call void @olang_textcopy(ptr %t447, ptr %t436, i64 %t437)
  %t448 = getelementptr i8, ptr %t447, i64 %t437
  call void @olang_textcopy(ptr %t448, ptr %t439, i64 %t440)
  %t449 = getelementptr i8, ptr %t448, i64 %t440
  call void @olang_textcopy(ptr %t449, ptr %t443, i64 %t444)
  %t450 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t446, 1
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = extractvalue { i64, ptr } %t451, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t461 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t430, { i64, ptr } %t458)
  store { i64, ptr } %t461, ptr %l187
  br label %bb92
bb92:
  %t462 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t466 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t467 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t468 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t470 = extractvalue { i64, ptr } %t462, 1
  %t471 = extractvalue { i64, ptr } %t462, 0
  %t472 = add i64 %t468, %t471
  %t473 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t474 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t475 = add i64 %t472, %t474
  %t477 = extractvalue { i64, ptr } %t465, 1
  %t478 = extractvalue { i64, ptr } %t465, 0
  %t479 = add i64 %t475, %t478
  %t480 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t481 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t482 = add i64 %t479, %t481
  %t484 = extractvalue { i64, ptr } %t466, 1
  %t485 = extractvalue { i64, ptr } %t466, 0
  %t486 = add i64 %t482, %t485
  %t487 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t486)
  call void @olang_textcopy(ptr %t487, ptr %t467, i64 %t468)
  %t488 = getelementptr i8, ptr %t487, i64 %t468
  call void @olang_textcopy(ptr %t488, ptr %t470, i64 %t471)
  %t489 = getelementptr i8, ptr %t488, i64 %t471
  call void @olang_textcopy(ptr %t489, ptr %t473, i64 %t474)
  %t490 = getelementptr i8, ptr %t489, i64 %t474
  call void @olang_textcopy(ptr %t490, ptr %t477, i64 %t478)
  %t491 = getelementptr i8, ptr %t490, i64 %t478
  call void @olang_textcopy(ptr %t491, ptr %t480, i64 %t481)
  %t492 = getelementptr i8, ptr %t491, i64 %t481
  call void @olang_textcopy(ptr %t492, ptr %t484, i64 %t485)
  %t493 = insertvalue { i64, ptr } undef, i64 %t486, 0
  %t494 = insertvalue { i64, ptr } %t493, ptr %t487, 1
  %t496 = extractvalue { i64, ptr } %t494, 0
  %t497 = extractvalue { i64, ptr } %t494, 1
  %t498 = mul i64 %t496, 1
  %t499 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t498)
  call void @llvm.memcpy.p0.p0.i64(ptr %t499, ptr %t497, i64 %t498, i1 false)
  %t500 = insertvalue { i64, ptr } undef, i64 %t496, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t499, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s12, ptr %t463, { i64, ptr } %t501)
  br label %bb93
bb93:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s12, ptr %t504, { i64, ptr } %t505)
  br label %bb94
bb94:
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t510 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t511 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t512 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t513 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t515 = extractvalue { i64, ptr } %t509, 1
  %t516 = extractvalue { i64, ptr } %t509, 0
  %t517 = add i64 %t513, %t516
  %t518 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t519 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t520 = add i64 %t517, %t519
  %t522 = extractvalue { i64, ptr } %t510, 1
  %t523 = extractvalue { i64, ptr } %t510, 0
  %t524 = add i64 %t520, %t523
  %t525 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t526 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t527 = add i64 %t524, %t526
  %t529 = extractvalue { i64, ptr } %t511, 1
  %t530 = extractvalue { i64, ptr } %t511, 0
  %t531 = add i64 %t527, %t530
  %t532 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t531)
  call void @olang_textcopy(ptr %t532, ptr %t512, i64 %t513)
  %t533 = getelementptr i8, ptr %t532, i64 %t513
  call void @olang_textcopy(ptr %t533, ptr %t515, i64 %t516)
  %t534 = getelementptr i8, ptr %t533, i64 %t516
  call void @olang_textcopy(ptr %t534, ptr %t518, i64 %t519)
  %t535 = getelementptr i8, ptr %t534, i64 %t519
  call void @olang_textcopy(ptr %t535, ptr %t522, i64 %t523)
  %t536 = getelementptr i8, ptr %t535, i64 %t523
  call void @olang_textcopy(ptr %t536, ptr %t525, i64 %t526)
  %t537 = getelementptr i8, ptr %t536, i64 %t526
  call void @olang_textcopy(ptr %t537, ptr %t529, i64 %t530)
  %t538 = insertvalue { i64, ptr } undef, i64 %t531, 0
  %t539 = insertvalue { i64, ptr } %t538, ptr %t532, 1
  %t541 = extractvalue { i64, ptr } %t539, 0
  %t542 = extractvalue { i64, ptr } %t539, 1
  %t543 = mul i64 %t541, 1
  %t544 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t543)
  call void @llvm.memcpy.p0.p0.i64(ptr %t544, ptr %t542, i64 %t543, i1 false)
  %t545 = insertvalue { i64, ptr } undef, i64 %t541, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t544, 1
  %t549 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t508, { i64, ptr } %t546)
  store { i64, ptr } %t549, ptr %l202
  br label %bb95
bb95:
  %t550 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t550, ptr %l24, !tbaa !27
  %t551 = load i1, ptr %l15, !tbaa !21
  br i1 %t551, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s18
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t555 = load i32, ptr %l8, !tbaa !23
  %t556 = load { i64, [4 x i64] }, ptr %l4
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s12, ptr %s18, ptr %t553, { i64, ptr } %t554, i32 %t555, { i64, [4 x i64] } %t556, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d250, i32 0, i32 1) })
  br label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s19
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t562 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t563 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t564 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s12, ptr %s12, ptr %s12, ptr %s19, ptr %t561, { i64, ptr } %t562, { i64, ptr } %t563, { i64, ptr } %t564, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb99
bb98:
  call void @__olang_scope_close(ptr %s18)
  br label %bb100
bb99:
  call void @__olang_scope_close(ptr %s19)
  br label %bb100
bb100:
  %t569 = load ptr, ptr %l0, !tbaa !29
  store ptr %t569, ptr %l212, !tbaa !29
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t571 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t572 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d251, i32 0, i32 1) }, 1
  %t573 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d251, i32 0, i32 1) }, 0
  %t575 = extractvalue { i64, ptr } %t571, 1
  %t576 = extractvalue { i64, ptr } %t571, 0
  %t577 = add i64 %t573, %t576
  %t578 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t579 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t580 = add i64 %t577, %t579
  %t581 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t580)
  call void @olang_textcopy(ptr %t581, ptr %t572, i64 %t573)
  %t582 = getelementptr i8, ptr %t581, i64 %t573
  call void @olang_textcopy(ptr %t582, ptr %t575, i64 %t576)
  %t583 = getelementptr i8, ptr %t582, i64 %t576
  call void @olang_textcopy(ptr %t583, ptr %t578, i64 %t579)
  %t584 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t581, 1
  %t587 = extractvalue { i64, ptr } %t585, 0
  %t588 = extractvalue { i64, ptr } %t585, 1
  %t589 = mul i64 %t587, 1
  %t590 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t589)
  call void @llvm.memcpy.p0.p0.i64(ptr %t590, ptr %t588, i64 %t589, i1 false)
  %t591 = insertvalue { i64, ptr } undef, i64 %t587, 0
  %t592 = insertvalue { i64, ptr } %t591, ptr %t590, 1
  %t595 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s12, ptr %s12, ptr %t570, { i64, ptr } %t592)
  store { i64, ptr } %t595, ptr %l217
  br label %bb101
bb101:
  %t596 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t597 = extractvalue { i64, ptr } %t596, 0
  %t598 = extractvalue { i64, ptr } %t596, 1
  %t599 = mul i64 %t597, 1
  %t600 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t599)
  call void @llvm.memcpy.p0.p0.i64(ptr %t600, ptr %t598, i64 %t599, i1 false)
  %t601 = insertvalue { i64, ptr } undef, i64 %t597, 0
  %t602 = insertvalue { i64, ptr } %t601, ptr %t600, 1
  %t603 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t604 = load ptr, ptr %l212, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s12, ptr %s12, ptr %s12, ptr %s12, ptr %t604, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d253, i32 0, i32 1) }, { i64, ptr } %t602, { i64, ptr } %t603, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb102
bb102:
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t608 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t609 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d254, i32 0, i32 1) }, 1
  %t610 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d254, i32 0, i32 1) }, 0
  %t612 = extractvalue { i64, ptr } %t608, 1
  %t613 = extractvalue { i64, ptr } %t608, 0
  %t614 = add i64 %t610, %t613
  %t615 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t614)
  call void @olang_textcopy(ptr %t615, ptr %t609, i64 %t610)
  %t616 = getelementptr i8, ptr %t615, i64 %t610
  call void @olang_textcopy(ptr %t616, ptr %t612, i64 %t613)
  %t617 = insertvalue { i64, ptr } undef, i64 %t614, 0
  %t618 = insertvalue { i64, ptr } %t617, ptr %t615, 1
  %t620 = extractvalue { i64, ptr } %t618, 0
  %t621 = extractvalue { i64, ptr } %t618, 1
  %t622 = mul i64 %t620, 1
  %t623 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t622)
  call void @llvm.memcpy.p0.p0.i64(ptr %t623, ptr %t621, i64 %t622, i1 false)
  %t624 = insertvalue { i64, ptr } undef, i64 %t620, 0
  %t625 = insertvalue { i64, ptr } %t624, ptr %t623, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s12, ptr %t607, { i64, ptr } %t625)
  br label %bb103
bb103:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s12, ptr %t628, { i64, ptr } %t629)
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s12)
  br label %bb105
bb105:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t633 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t634 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t638 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t632, { i64, ptr } %t633, { i64, ptr } %t634)
  store { i64, ptr } %t638, ptr %l229
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s0)
  %t639 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t639, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eoverflows(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %lp22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l29 = alloca { i64, [4 x i64] }
  %l32 = alloca i32
  %l35 = alloca i32
  %l38 = alloca i32
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca i1
  %l51 = alloca i64
  %l58 = alloca ptr
  %l61 = alloca { i64, [4 x i64] }
  %l63 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca { i64, ptr }
  %l106 = alloca ptr
  %l109 = alloca { i64, [4 x i64] }
  %l111 = alloca { i64, ptr }
  %l112 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l121 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l163 = alloca i1
  %l169 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l186 = alloca { i64, ptr }
  %l187 = alloca i1
  %l190 = alloca i1
  %l193 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l196 = alloca { i64, ptr }
  %l198 = alloca ptr
  %l201 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l207 = alloca i64
  %l214 = alloca { i64, ptr }
  %l216 = alloca i64
  %l223 = alloca { i64, ptr }
  %l224 = alloca ptr
  %l225 = alloca i32
  %l227 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l230 = alloca { i64, ptr }
  %l231 = alloca i64
  %l232 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.builder
  %s30room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store ptr %t7, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/mir:Range", ptr %l3
  %t13 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t9, %"compiler/mir:Range" %t10, i64 0)
  store { i64, [4 x i64] } %t13, ptr %l29
  br label %bb1
bb1:
  %t14 = load { i64, [4 x i64] }, ptr %l29
  store { i64, [4 x i64] } %t14, ptr %l5
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [4 x i64] }, ptr %l5
  %t19 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t15, { i64, [4 x i64] } %t16)
  store i32 %t19, ptr %l32
  br label %bb2
bb2:
  %t20 = load i32, ptr %l32, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i32, ptr %l6, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l35
  br label %bb3
bb3:
  %t26 = load i32, ptr %l35, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l38
  br label %bb4
bb4:
  %t32 = load i32, ptr %l38, !tbaa !23
  store i32 %t32, ptr %l8, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l7, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s0, ptr %t33, i32 %t34)
  store { i64, ptr } %t37, ptr %l41
  br label %bb5
bb5:
  %t38 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t38, ptr %l9, !tbaa !27
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load { i64, [4 x i64] }, ptr %l5
  %t41 = load i32, ptr %l6, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t39, { i64, [4 x i64] } %t40, i32 %t41)
  store { i64, ptr } %t45, ptr %l45
  br label %bb6
bb6:
  %t46 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t46, ptr %l10, !tbaa !27
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t48 = load i32, ptr %l7, !tbaa !23
  %t51 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l48
  br label %bb7
bb7:
  %t52 = load i1, ptr %l48, !tbaa !21
  store i1 %t52, ptr %l11, !tbaa !21
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t54 = load i32, ptr %l7, !tbaa !23
  %t57 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t57, ptr %l51
  br label %bb8
bb8:
  %t58 = load i64, ptr %l51, !tbaa !24
  store i64 %t58, ptr %l12, !tbaa !24
  %t59 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t61 = trunc i64 3 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t64 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t66 = trunc i64 4 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t69 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t71 = trunc i64 5 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb37
bb15:
  store %olang.scope zeroinitializer, ptr %s1
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l58, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/mir:Range", ptr %l3
  %t79 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t75, %"compiler/mir:Range" %t76, i64 1)
  store { i64, [4 x i64] } %t79, ptr %l61
  br label %bb16
bb16:
  %t80 = load i32, ptr %l6, !tbaa !23
  %t81 = load ptr, ptr %l58, !tbaa !29
  %t82 = load { i64, [4 x i64] }, ptr %l61
  %t84 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s1, ptr %t81, { i64, [4 x i64] } %t82, i32 %t80)
  store { i64, ptr } %t84, ptr %l63
  br label %bb17
bb17:
  %t85 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t85, ptr %l13, !tbaa !27
  %t86 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t88 = trunc i64 3 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d255, i32 0, i32 1) }, ptr %l64, !tbaa !27
  br label %bb30
bb21:
  %t91 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t93 = trunc i64 4 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d256, i32 0, i32 1) }, ptr %l64, !tbaa !27
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d257, i32 0, i32 1) }, ptr %l64, !tbaa !27
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_7d1301c542cf69c7_2a1b7d2f181cc69b)
  unreachable
bb30:
  %t96 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t96, ptr %l14, !tbaa !27
  %t97 = load i1, ptr %l11, !tbaa !21
  br i1 %t97, label %bb31, label %bb32
bb31:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d258, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb33
bb32:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d259, i32 0, i32 1) }, ptr %l70, !tbaa !27
  br label %bb33
bb33:
  %t99 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t100 = load i64, ptr %l12, !tbaa !24
  %t101 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d260, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d260, i32 0, i32 1) }, 0
  %t103 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 1
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t106 = add i64 %t102, %t105
  %t108 = extractvalue { i64, ptr } %t99, 1
  %t109 = extractvalue { i64, ptr } %t99, 0
  %t110 = add i64 %t106, %t109
  %t111 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d261, i32 0, i32 1) }, 1
  %t112 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d261, i32 0, i32 1) }, 0
  %t113 = add i64 %t110, %t112
  %t115 = call i64 @__olang_fmt_i64(ptr null, i64 %t100)
  %t116 = add i64 %t113, %t115
  %t117 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t116)
  call void @olang_textcopy(ptr %t117, ptr %t101, i64 %t102)
  %t118 = getelementptr i8, ptr %t117, i64 %t102
  call void @olang_textcopy(ptr %t118, ptr %t104, i64 %t105)
  %t119 = getelementptr i8, ptr %t118, i64 %t105
  call void @olang_textcopy(ptr %t119, ptr %t108, i64 %t109)
  %t120 = getelementptr i8, ptr %t119, i64 %t109
  call void @olang_textcopy(ptr %t120, ptr %t111, i64 %t112)
  %t121 = getelementptr i8, ptr %t120, i64 %t112
  %t122 = call i64 @__olang_fmt_i64(ptr %t121, i64 %t100)
  %t123 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t117, 1
  store { i64, ptr } %t124, ptr %l15, !tbaa !27
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/emit:fnEm", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t135 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t138 = extractvalue { i64, ptr } %t131, 1
  %t139 = extractvalue { i64, ptr } %t131, 0
  %t140 = add i64 %t136, %t139
  %t141 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t142 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t143 = add i64 %t140, %t142
  %t145 = extractvalue { i64, ptr } %t132, 1
  %t146 = extractvalue { i64, ptr } %t132, 0
  %t147 = add i64 %t143, %t146
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d264, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d264, i32 0, i32 1) }, 0
  %t150 = add i64 %t147, %t149
  %t152 = extractvalue { i64, ptr } %t133, 1
  %t153 = extractvalue { i64, ptr } %t133, 0
  %t154 = add i64 %t150, %t153
  %t155 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t159 = extractvalue { i64, ptr } %t134, 1
  %t160 = extractvalue { i64, ptr } %t134, 0
  %t161 = add i64 %t157, %t160
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t164 = add i64 %t161, %t163
  %t165 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t164)
  call void @olang_textcopy(ptr %t165, ptr %t135, i64 %t136)
  %t166 = getelementptr i8, ptr %t165, i64 %t136
  call void @olang_textcopy(ptr %t166, ptr %t138, i64 %t139)
  %t167 = getelementptr i8, ptr %t166, i64 %t139
  call void @olang_textcopy(ptr %t167, ptr %t141, i64 %t142)
  %t168 = getelementptr i8, ptr %t167, i64 %t142
  call void @olang_textcopy(ptr %t168, ptr %t145, i64 %t146)
  %t169 = getelementptr i8, ptr %t168, i64 %t146
  call void @olang_textcopy(ptr %t169, ptr %t148, i64 %t149)
  %t170 = getelementptr i8, ptr %t169, i64 %t149
  call void @olang_textcopy(ptr %t170, ptr %t152, i64 %t153)
  %t171 = getelementptr i8, ptr %t170, i64 %t153
  call void @olang_textcopy(ptr %t171, ptr %t155, i64 %t156)
  %t172 = getelementptr i8, ptr %t171, i64 %t156
  call void @olang_textcopy(ptr %t172, ptr %t159, i64 %t160)
  %t173 = getelementptr i8, ptr %t172, i64 %t160
  call void @olang_textcopy(ptr %t173, ptr %t162, i64 %t163)
  %t174 = insertvalue { i64, ptr } undef, i64 %t164, 0
  %t175 = insertvalue { i64, ptr } %t174, ptr %t165, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = extractvalue { i64, ptr } %t175, 1
  %t179 = mul i64 %t177, 1
  %t180 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t179)
  call void @llvm.memcpy.p0.p0.i64(ptr %t180, ptr %t178, i64 %t179, i1 false)
  %t181 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t180, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s1, ptr %s1, ptr %t129, { i64, ptr } %t130, { i64, ptr } %t182)
  br label %bb34
bb34:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t191 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t192 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t193 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t196 = extractvalue { i64, ptr } %t187, 1
  %t197 = extractvalue { i64, ptr } %t187, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d268, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d268, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = extractvalue { i64, ptr } %t188, 1
  %t204 = extractvalue { i64, ptr } %t188, 0
  %t205 = add i64 %t201, %t204
  %t206 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d269, i32 0, i32 1) }, 0
  %t208 = add i64 %t205, %t207
  %t210 = extractvalue { i64, ptr } %t189, 1
  %t211 = extractvalue { i64, ptr } %t189, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t217 = extractvalue { i64, ptr } %t190, 1
  %t218 = extractvalue { i64, ptr } %t190, 0
  %t219 = add i64 %t215, %t218
  %t220 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t221 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t222 = add i64 %t219, %t221
  %t224 = extractvalue { i64, ptr } %t191, 1
  %t225 = extractvalue { i64, ptr } %t191, 0
  %t226 = add i64 %t222, %t225
  %t227 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t228 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t229 = add i64 %t226, %t228
  %t231 = extractvalue { i64, ptr } %t192, 1
  %t232 = extractvalue { i64, ptr } %t192, 0
  %t233 = add i64 %t229, %t232
  %t234 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 1
  %t235 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d272, i32 0, i32 1) }, 0
  %t236 = add i64 %t233, %t235
  %t237 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t193, i64 %t194)
  %t238 = getelementptr i8, ptr %t237, i64 %t194
  call void @olang_textcopy(ptr %t238, ptr %t196, i64 %t197)
  %t239 = getelementptr i8, ptr %t238, i64 %t197
  call void @olang_textcopy(ptr %t239, ptr %t199, i64 %t200)
  %t240 = getelementptr i8, ptr %t239, i64 %t200
  call void @olang_textcopy(ptr %t240, ptr %t203, i64 %t204)
  %t241 = getelementptr i8, ptr %t240, i64 %t204
  call void @olang_textcopy(ptr %t241, ptr %t206, i64 %t207)
  %t242 = getelementptr i8, ptr %t241, i64 %t207
  call void @olang_textcopy(ptr %t242, ptr %t210, i64 %t211)
  %t243 = getelementptr i8, ptr %t242, i64 %t211
  call void @olang_textcopy(ptr %t243, ptr %t213, i64 %t214)
  %t244 = getelementptr i8, ptr %t243, i64 %t214
  call void @olang_textcopy(ptr %t244, ptr %t217, i64 %t218)
  %t245 = getelementptr i8, ptr %t244, i64 %t218
  call void @olang_textcopy(ptr %t245, ptr %t220, i64 %t221)
  %t246 = getelementptr i8, ptr %t245, i64 %t221
  call void @olang_textcopy(ptr %t246, ptr %t224, i64 %t225)
  %t247 = getelementptr i8, ptr %t246, i64 %t225
  call void @olang_textcopy(ptr %t247, ptr %t227, i64 %t228)
  %t248 = getelementptr i8, ptr %t247, i64 %t228
  call void @olang_textcopy(ptr %t248, ptr %t231, i64 %t232)
  %t249 = getelementptr i8, ptr %t248, i64 %t232
  call void @olang_textcopy(ptr %t249, ptr %t234, i64 %t235)
  %t250 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t237, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = extractvalue { i64, ptr } %t251, 1
  %t255 = mul i64 %t253, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t256, ptr %t254, i64 %t255, i1 false)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t261 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s1, ptr %s1, ptr %t186, { i64, ptr } %t258)
  store { i64, ptr } %t261, ptr %l92
  br label %bb35
bb35:
  %t262 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t266 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d273, i32 0, i32 1) }, 1
  %t267 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d273, i32 0, i32 1) }, 0
  %t269 = extractvalue { i64, ptr } %t264, 1
  %t270 = extractvalue { i64, ptr } %t264, 0
  %t271 = add i64 %t267, %t270
  %t272 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d274, i32 0, i32 1) }, 1
  %t273 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d274, i32 0, i32 1) }, 0
  %t274 = add i64 %t271, %t273
  %t276 = extractvalue { i64, ptr } %t262, 1
  %t277 = extractvalue { i64, ptr } %t262, 0
  %t278 = add i64 %t274, %t277
  %t279 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d275, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d275, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t282 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t281)
  call void @olang_textcopy(ptr %t282, ptr %t266, i64 %t267)
  %t283 = getelementptr i8, ptr %t282, i64 %t267
  call void @olang_textcopy(ptr %t283, ptr %t269, i64 %t270)
  %t284 = getelementptr i8, ptr %t283, i64 %t270
  call void @olang_textcopy(ptr %t284, ptr %t272, i64 %t273)
  %t285 = getelementptr i8, ptr %t284, i64 %t273
  call void @olang_textcopy(ptr %t285, ptr %t276, i64 %t277)
  %t286 = getelementptr i8, ptr %t285, i64 %t277
  call void @olang_textcopy(ptr %t286, ptr %t279, i64 %t280)
  %t287 = insertvalue { i64, ptr } undef, i64 %t281, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t282, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = extractvalue { i64, ptr } %t288, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t298 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t263, { i64, ptr } %t295)
  store { i64, ptr } %t298, ptr %l98
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t299 = load { i64, ptr }, ptr %l98, !tbaa !27
  store { i64, ptr } %t299, ptr %rv
  br label %ret
bb37:
  %t300 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t302 = trunc i64 6 to i32
  %t303 = icmp eq i32 %t300, %t302
  br i1 %t303, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb50
bb40:
  store %olang.scope zeroinitializer, ptr %s9
  %t305 = load i1, ptr %l11, !tbaa !21
  br i1 %t305, label %bb41, label %bb42
bb41:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d276, i32 0, i32 1) }, ptr %l102, !tbaa !27
  %t307 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t307, ptr %l103, !tbaa !27
  %t308 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t309 = extractvalue { i64, ptr } %t308, 0
  store i64 %t309, ptr %l104, !tbaa !24
  %t310 = load i64, ptr %l104, !tbaa !24
  %t311 = mul i64 %t310, 1
  %t312 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t311)
  %t313 = insertvalue { i64, ptr } undef, i64 %t310, 0
  %t314 = insertvalue { i64, ptr } %t313, ptr %t312, 1
  store { i64, ptr } %t314, ptr %l105, !tbaa !27
  %t315 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !27
  %t317 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = load i64, ptr %l104, !tbaa !24
  %t320 = mul i64 %t319, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t316, ptr %t318, i64 %t320, i1 false)
  %t321 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t321, ptr %l103, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t322 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t322, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t323 = load ptr, ptr %l0, !tbaa !29
  store ptr %t323, ptr %l106, !tbaa !29
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load %"compiler/mir:Range", ptr %l3
  %t328 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t324, %"compiler/mir:Range" %t325, i64 1)
  store { i64, [4 x i64] } %t328, ptr %l109
  br label %bb44
bb44:
  %t329 = load i32, ptr %l6, !tbaa !23
  %t330 = load ptr, ptr %l106, !tbaa !29
  %t331 = load { i64, [4 x i64] }, ptr %l109
  %t333 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s9, ptr %t330, { i64, [4 x i64] } %t331, i32 %t329)
  store { i64, ptr } %t333, ptr %l111
  br label %bb45
bb45:
  %t334 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t334, ptr %l17, !tbaa !27
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l112, !tbaa !29
  %t336 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t336, ptr %l113, !tbaa !27
  %t337 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t337, ptr %l114, !tbaa !27
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t340 = load i64, ptr %l12, !tbaa !24
  %t342 = sub i64 %t340, 1
  %t343 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) }, 1
  %t344 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) }, 0
  %t346 = extractvalue { i64, ptr } %t339, 1
  %t347 = extractvalue { i64, ptr } %t339, 0
  %t348 = add i64 %t344, %t347
  %t349 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d278, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d278, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = call i64 @__olang_fmt_i64(ptr null, i64 %t342)
  %t354 = add i64 %t351, %t353
  %t355 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t354)
  call void @olang_textcopy(ptr %t355, ptr %t343, i64 %t344)
  %t356 = getelementptr i8, ptr %t355, i64 %t344
  call void @olang_textcopy(ptr %t356, ptr %t346, i64 %t347)
  %t357 = getelementptr i8, ptr %t356, i64 %t347
  call void @olang_textcopy(ptr %t357, ptr %t349, i64 %t350)
  %t358 = getelementptr i8, ptr %t357, i64 %t350
  %t359 = call i64 @__olang_fmt_i64(ptr %t358, i64 %t342)
  %t360 = insertvalue { i64, ptr } undef, i64 %t354, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t355, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = extractvalue { i64, ptr } %t361, 1
  %t365 = mul i64 %t363, 1
  %t366 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t365)
  call void @llvm.memcpy.p0.p0.i64(ptr %t366, ptr %t364, i64 %t365, i1 false)
  %t367 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t366, 1
  %t371 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t338, { i64, ptr } %t368)
  store { i64, ptr } %t371, ptr %l121
  br label %bb46
bb46:
  %t372 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d279, i32 0, i32 1) }, 1
  %t373 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d279, i32 0, i32 1) }, 0
  %t374 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t375 = extractvalue { i64, ptr } %t374, 1
  %t376 = extractvalue { i64, ptr } %t374, 0
  %t377 = add i64 %t373, %t376
  %t378 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t380 = add i64 %t377, %t379
  %t381 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t381, 1
  %t383 = extractvalue { i64, ptr } %t381, 0
  %t384 = add i64 %t380, %t383
  %t385 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t386 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t387 = add i64 %t384, %t386
  %t388 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = extractvalue { i64, ptr } %t388, 0
  %t391 = add i64 %t387, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t372, i64 %t373)
  %t393 = getelementptr i8, ptr %t392, i64 %t373
  call void @olang_textcopy(ptr %t393, ptr %t375, i64 %t376)
  %t394 = getelementptr i8, ptr %t393, i64 %t376
  call void @olang_textcopy(ptr %t394, ptr %t378, i64 %t379)
  %t395 = getelementptr i8, ptr %t394, i64 %t379
  call void @olang_textcopy(ptr %t395, ptr %t382, i64 %t383)
  %t396 = getelementptr i8, ptr %t395, i64 %t383
  call void @olang_textcopy(ptr %t396, ptr %t385, i64 %t386)
  %t397 = getelementptr i8, ptr %t396, i64 %t386
  call void @olang_textcopy(ptr %t397, ptr %t389, i64 %t390)
  %t398 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t399 = insertvalue { i64, ptr } %t398, ptr %t392, 1
  %t401 = extractvalue { i64, ptr } %t399, 0
  %t402 = extractvalue { i64, ptr } %t399, 1
  %t403 = mul i64 %t401, 1
  %t404 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t403)
  call void @llvm.memcpy.p0.p0.i64(ptr %t404, ptr %t402, i64 %t403, i1 false)
  %t405 = insertvalue { i64, ptr } undef, i64 %t401, 0
  %t406 = insertvalue { i64, ptr } %t405, ptr %t404, 1
  %t407 = load ptr, ptr %l112, !tbaa !29
  %t409 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t407, { i64, ptr } %t406)
  store { i64, ptr } %t409, ptr %l124
  br label %bb47
bb47:
  %t410 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t410, ptr %l18, !tbaa !27
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t413 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t414 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d282, i32 0, i32 1) }, 1
  %t415 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d282, i32 0, i32 1) }, 0
  %t417 = extractvalue { i64, ptr } %t412, 1
  %t418 = extractvalue { i64, ptr } %t412, 0
  %t419 = add i64 %t415, %t418
  %t420 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d283, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d283, i32 0, i32 1) }, 0
  %t422 = add i64 %t419, %t421
  %t424 = extractvalue { i64, ptr } %t413, 1
  %t425 = extractvalue { i64, ptr } %t413, 0
  %t426 = add i64 %t422, %t425
  %t427 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d284, i32 0, i32 1) }, 0
  %t429 = add i64 %t426, %t428
  %t430 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t429)
  call void @olang_textcopy(ptr %t430, ptr %t414, i64 %t415)
  %t431 = getelementptr i8, ptr %t430, i64 %t415
  call void @olang_textcopy(ptr %t431, ptr %t417, i64 %t418)
  %t432 = getelementptr i8, ptr %t431, i64 %t418
  call void @olang_textcopy(ptr %t432, ptr %t420, i64 %t421)
  %t433 = getelementptr i8, ptr %t432, i64 %t421
  call void @olang_textcopy(ptr %t433, ptr %t424, i64 %t425)
  %t434 = getelementptr i8, ptr %t433, i64 %t425
  call void @olang_textcopy(ptr %t434, ptr %t427, i64 %t428)
  %t435 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t436 = insertvalue { i64, ptr } %t435, ptr %t430, 1
  %t438 = extractvalue { i64, ptr } %t436, 0
  %t439 = extractvalue { i64, ptr } %t436, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t446 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s9, ptr %s9, ptr %t411, { i64, ptr } %t443)
  store { i64, ptr } %t446, ptr %l130
  br label %bb48
bb48:
  %t447 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t449 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t451 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d285, i32 0, i32 1) }, 1
  %t452 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d285, i32 0, i32 1) }, 0
  %t454 = extractvalue { i64, ptr } %t449, 1
  %t455 = extractvalue { i64, ptr } %t449, 0
  %t456 = add i64 %t452, %t455
  %t457 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d286, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d286, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t461 = extractvalue { i64, ptr } %t447, 1
  %t462 = extractvalue { i64, ptr } %t447, 0
  %t463 = add i64 %t459, %t462
  %t464 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t463)
  call void @olang_textcopy(ptr %t464, ptr %t451, i64 %t452)
  %t465 = getelementptr i8, ptr %t464, i64 %t452
  call void @olang_textcopy(ptr %t465, ptr %t454, i64 %t455)
  %t466 = getelementptr i8, ptr %t465, i64 %t455
  call void @olang_textcopy(ptr %t466, ptr %t457, i64 %t458)
  %t467 = getelementptr i8, ptr %t466, i64 %t458
  call void @olang_textcopy(ptr %t467, ptr %t461, i64 %t462)
  %t468 = insertvalue { i64, ptr } undef, i64 %t463, 0
  %t469 = insertvalue { i64, ptr } %t468, ptr %t464, 1
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t472 = extractvalue { i64, ptr } %t469, 1
  %t473 = mul i64 %t471, 1
  %t474 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t473)
  call void @llvm.memcpy.p0.p0.i64(ptr %t474, ptr %t472, i64 %t473, i1 false)
  %t475 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t474, 1
  %t479 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t448, { i64, ptr } %t476)
  store { i64, ptr } %t479, ptr %l136
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t480 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t480, ptr %rv
  br label %ret
bb50:
  %t481 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t483 = trunc i64 0 to i32
  %t484 = icmp eq i32 %t481, %t483
  br i1 %t484, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb60
bb53:
  store %olang.scope zeroinitializer, ptr %s15
  %t486 = load i1, ptr %l11, !tbaa !21
  br i1 %t486, label %bb54, label %bb55
bb54:
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t490 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t491 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d287, i32 0, i32 1) }, 1
  %t492 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d287, i32 0, i32 1) }, 0
  %t494 = extractvalue { i64, ptr } %t489, 1
  %t495 = extractvalue { i64, ptr } %t489, 0
  %t496 = add i64 %t492, %t495
  %t497 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t498 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t499 = add i64 %t496, %t498
  %t501 = extractvalue { i64, ptr } %t490, 1
  %t502 = extractvalue { i64, ptr } %t490, 0
  %t503 = add i64 %t499, %t502
  %t504 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t506 = add i64 %t503, %t505
  %t507 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t506)
  call void @olang_textcopy(ptr %t507, ptr %t491, i64 %t492)
  %t508 = getelementptr i8, ptr %t507, i64 %t492
  call void @olang_textcopy(ptr %t508, ptr %t494, i64 %t495)
  %t509 = getelementptr i8, ptr %t508, i64 %t495
  call void @olang_textcopy(ptr %t509, ptr %t497, i64 %t498)
  %t510 = getelementptr i8, ptr %t509, i64 %t498
  call void @olang_textcopy(ptr %t510, ptr %t501, i64 %t502)
  %t511 = getelementptr i8, ptr %t510, i64 %t502
  call void @olang_textcopy(ptr %t511, ptr %t504, i64 %t505)
  %t512 = insertvalue { i64, ptr } undef, i64 %t506, 0
  %t513 = insertvalue { i64, ptr } %t512, ptr %t507, 1
  %t515 = extractvalue { i64, ptr } %t513, 0
  %t516 = extractvalue { i64, ptr } %t513, 1
  %t517 = mul i64 %t515, 1
  %t518 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t517)
  call void @llvm.memcpy.p0.p0.i64(ptr %t518, ptr %t516, i64 %t517, i1 false)
  %t519 = insertvalue { i64, ptr } undef, i64 %t515, 0
  %t520 = insertvalue { i64, ptr } %t519, ptr %t518, 1
  %t523 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t488, { i64, ptr } %t520)
  store { i64, ptr } %t523, ptr %l145
  br label %bb56
bb55:
  br label %bb57
bb56:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t524 = load { i64, ptr }, ptr %l145, !tbaa !27
  store { i64, ptr } %t524, ptr %rv
  br label %ret
bb57:
  %t525 = load ptr, ptr %l0, !tbaa !29
  store ptr %t525, ptr %l146, !tbaa !29
  %t526 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t526, ptr %l147, !tbaa !27
  %t527 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t527, ptr %l148, !tbaa !27
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t530 = load i64, ptr %l12, !tbaa !24
  %t532 = sub i64 %t530, 1
  %t533 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 1
  %t534 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d290, i32 0, i32 1) }, 0
  %t536 = extractvalue { i64, ptr } %t529, 1
  %t537 = extractvalue { i64, ptr } %t529, 0
  %t538 = add i64 %t534, %t537
  %t539 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d291, i32 0, i32 1) }, 1
  %t540 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d291, i32 0, i32 1) }, 0
  %t541 = add i64 %t538, %t540
  %t543 = call i64 @__olang_fmt_i64(ptr null, i64 %t532)
  %t544 = add i64 %t541, %t543
  %t545 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t544)
  call void @olang_textcopy(ptr %t545, ptr %t533, i64 %t534)
  %t546 = getelementptr i8, ptr %t545, i64 %t534
  call void @olang_textcopy(ptr %t546, ptr %t536, i64 %t537)
  %t547 = getelementptr i8, ptr %t546, i64 %t537
  call void @olang_textcopy(ptr %t547, ptr %t539, i64 %t540)
  %t548 = getelementptr i8, ptr %t547, i64 %t540
  %t549 = call i64 @__olang_fmt_i64(ptr %t548, i64 %t532)
  %t550 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t551 = insertvalue { i64, ptr } %t550, ptr %t545, 1
  %t553 = extractvalue { i64, ptr } %t551, 0
  %t554 = extractvalue { i64, ptr } %t551, 1
  %t555 = mul i64 %t553, 1
  %t556 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t555)
  call void @llvm.memcpy.p0.p0.i64(ptr %t556, ptr %t554, i64 %t555, i1 false)
  %t557 = insertvalue { i64, ptr } undef, i64 %t553, 0
  %t558 = insertvalue { i64, ptr } %t557, ptr %t556, 1
  %t561 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t528, { i64, ptr } %t558)
  store { i64, ptr } %t561, ptr %l155
  br label %bb58
bb58:
  %t562 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d292, i32 0, i32 1) }, 1
  %t563 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d292, i32 0, i32 1) }, 0
  %t564 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t565 = extractvalue { i64, ptr } %t564, 1
  %t566 = extractvalue { i64, ptr } %t564, 0
  %t567 = add i64 %t563, %t566
  %t568 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 1
  %t569 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d293, i32 0, i32 1) }, 0
  %t570 = add i64 %t567, %t569
  %t571 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 1
  %t573 = extractvalue { i64, ptr } %t571, 0
  %t574 = add i64 %t570, %t573
  %t575 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d294, i32 0, i32 1) }, 1
  %t576 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d294, i32 0, i32 1) }, 0
  %t577 = add i64 %t574, %t576
  %t578 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t579 = extractvalue { i64, ptr } %t578, 1
  %t580 = extractvalue { i64, ptr } %t578, 0
  %t581 = add i64 %t577, %t580
  %t582 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t581)
  call void @olang_textcopy(ptr %t582, ptr %t562, i64 %t563)
  %t583 = getelementptr i8, ptr %t582, i64 %t563
  call void @olang_textcopy(ptr %t583, ptr %t565, i64 %t566)
  %t584 = getelementptr i8, ptr %t583, i64 %t566
  call void @olang_textcopy(ptr %t584, ptr %t568, i64 %t569)
  %t585 = getelementptr i8, ptr %t584, i64 %t569
  call void @olang_textcopy(ptr %t585, ptr %t572, i64 %t573)
  %t586 = getelementptr i8, ptr %t585, i64 %t573
  call void @olang_textcopy(ptr %t586, ptr %t575, i64 %t576)
  %t587 = getelementptr i8, ptr %t586, i64 %t576
  call void @olang_textcopy(ptr %t587, ptr %t579, i64 %t580)
  %t588 = insertvalue { i64, ptr } undef, i64 %t581, 0
  %t589 = insertvalue { i64, ptr } %t588, ptr %t582, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = extractvalue { i64, ptr } %t589, 1
  %t593 = mul i64 %t591, 1
  %t594 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t593)
  call void @llvm.memcpy.p0.p0.i64(ptr %t594, ptr %t592, i64 %t593, i1 false)
  %t595 = insertvalue { i64, ptr } undef, i64 %t591, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t594, 1
  %t597 = load ptr, ptr %l146, !tbaa !29
  %t599 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t597, { i64, ptr } %t596)
  store { i64, ptr } %t599, ptr %l158
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s15)
  call void @__olang_scope_close(ptr %s0)
  %t600 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t600, ptr %rv
  br label %ret
bb60:
  %t601 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t603 = trunc i64 20 to i32
  %t604 = icmp eq i32 %t601, %t603
  br i1 %t604, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb89
bb63:
  store %olang.scope zeroinitializer, ptr %s20
  %t606 = load ptr, ptr %l4, !tbaa !29
  %t607 = load i32, ptr %l7, !tbaa !23
  %t610 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t606, i32 %t607)
  store i1 %t610, ptr %l163
  br label %bb64
bb64:
  %t611 = load i1, ptr %l163, !tbaa !21
  br i1 %t611, label %bb65, label %bb66
bb65:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t614 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t615 = load i32, ptr %l7, !tbaa !23
  %t616 = load i32, ptr %l8, !tbaa !23
  %t622 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efloatOverflows(ptr %v0, ptr %s0, ptr %s0, ptr %v1, ptr %t612, { i64, ptr } %t613, { i64, ptr } %t614, i32 %t615, i32 %t616)
  store { i64, ptr } %t622, ptr %l169
  br label %bb67
bb66:
  br label %bb68
bb67:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t623 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t623, ptr %rv
  br label %ret
bb68:
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t625 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t626 = load i32, ptr %l6, !tbaa !23
  %t627 = load i32, ptr %l2, !tbaa !23
  %t632 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econvert(ptr %v0, ptr %s0, ptr %s20, ptr %t624, { i64, ptr } %t625, i32 %t626, i32 %t627)
  store { i64, ptr } %t632, ptr %l174
  br label %bb69
bb69:
  %t633 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t633, ptr %l20, !tbaa !27
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t635 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t636 = load i32, ptr %l2, !tbaa !23
  %t637 = load i32, ptr %l6, !tbaa !23
  %t642 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2econvert(ptr %v0, ptr %s20, ptr %s20, ptr %t634, { i64, ptr } %t635, i32 %t636, i32 %t637)
  store { i64, ptr } %t642, ptr %l179
  br label %bb70
bb70:
  %t643 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t645 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t647 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t648 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d295, i32 0, i32 1) }, 1
  %t649 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d295, i32 0, i32 1) }, 0
  %t651 = extractvalue { i64, ptr } %t645, 1
  %t652 = extractvalue { i64, ptr } %t645, 0
  %t653 = add i64 %t649, %t652
  %t654 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t655 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t656 = add i64 %t653, %t655
  %t658 = extractvalue { i64, ptr } %t643, 1
  %t659 = extractvalue { i64, ptr } %t643, 0
  %t660 = add i64 %t656, %t659
  %t661 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t662 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t663 = add i64 %t660, %t662
  %t665 = extractvalue { i64, ptr } %t647, 1
  %t666 = extractvalue { i64, ptr } %t647, 0
  %t667 = add i64 %t663, %t666
  %t668 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t667)
  call void @olang_textcopy(ptr %t668, ptr %t648, i64 %t649)
  %t669 = getelementptr i8, ptr %t668, i64 %t649
  call void @olang_textcopy(ptr %t669, ptr %t651, i64 %t652)
  %t670 = getelementptr i8, ptr %t669, i64 %t652
  call void @olang_textcopy(ptr %t670, ptr %t654, i64 %t655)
  %t671 = getelementptr i8, ptr %t670, i64 %t655
  call void @olang_textcopy(ptr %t671, ptr %t658, i64 %t659)
  %t672 = getelementptr i8, ptr %t671, i64 %t659
  call void @olang_textcopy(ptr %t672, ptr %t661, i64 %t662)
  %t673 = getelementptr i8, ptr %t672, i64 %t662
  call void @olang_textcopy(ptr %t673, ptr %t665, i64 %t666)
  %t674 = insertvalue { i64, ptr } undef, i64 %t667, 0
  %t675 = insertvalue { i64, ptr } %t674, ptr %t668, 1
  %t677 = extractvalue { i64, ptr } %t675, 0
  %t678 = extractvalue { i64, ptr } %t675, 1
  %t679 = mul i64 %t677, 1
  %t680 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t679)
  call void @llvm.memcpy.p0.p0.i64(ptr %t680, ptr %t678, i64 %t679, i1 false)
  %t681 = insertvalue { i64, ptr } undef, i64 %t677, 0
  %t682 = insertvalue { i64, ptr } %t681, ptr %t680, 1
  %t685 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t644, { i64, ptr } %t682)
  store { i64, ptr } %t685, ptr %l186
  br label %bb71
bb71:
  %t686 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t686, ptr %lp22
  %t687 = load { i64, ptr }, ptr %l186, !tbaa !27
  %t688 = load ptr, ptr %lp22
  store { i64, ptr } %t687, ptr %t688, !tbaa !27
  %t689 = load i1, ptr %l11, !tbaa !21
  store i1 %t689, ptr %l187, !tbaa !21
  %t690 = load ptr, ptr %l4, !tbaa !29
  %t691 = load i32, ptr %l8, !tbaa !23
  %t694 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t690, i32 %t691)
  store i1 %t694, ptr %l190
  br label %bb72
bb72:
  %t695 = load i1, ptr %l187, !tbaa !21
  %t696 = load i1, ptr %l190, !tbaa !21
  %t697 = icmp eq i1 %t695, %t696
  br i1 %t697, label %bb73, label %bb74
bb73:
  %t699 = load ptr, ptr %lp22
  %t700 = load { i64, ptr }, ptr %t699, !tbaa !27
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t700, ptr %rv
  br label %ret
bb74:
  br label %bb75
bb75:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d298, i32 0, i32 1) }, ptr %l193, !tbaa !27
  %t702 = load { i64, ptr }, ptr %l193, !tbaa !27
  store { i64, ptr } %t702, ptr %l194, !tbaa !27
  %t703 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t704 = extractvalue { i64, ptr } %t703, 0
  store i64 %t704, ptr %l195, !tbaa !24
  %t705 = load i64, ptr %l195, !tbaa !24
  %t706 = mul i64 %t705, 1
  %t707 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t706)
  %t708 = insertvalue { i64, ptr } undef, i64 %t705, 0
  %t709 = insertvalue { i64, ptr } %t708, ptr %t707, 1
  store { i64, ptr } %t709, ptr %l196, !tbaa !27
  %t710 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t711 = load ptr, ptr %t710, !tbaa !27
  %t712 = getelementptr { i64, ptr }, ptr %l194, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !27
  %t714 = load i64, ptr %l195, !tbaa !24
  %t715 = mul i64 %t714, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t711, ptr %t713, i64 %t715, i1 false)
  %t716 = load { i64, ptr }, ptr %l196, !tbaa !27
  store { i64, ptr } %t716, ptr %l23, !tbaa !27
  %t717 = load i1, ptr %l11, !tbaa !21
  br i1 %t717, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s24
  %t719 = load ptr, ptr %l0, !tbaa !29
  store ptr %t719, ptr %l198, !tbaa !29
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load i32, ptr %l8, !tbaa !23
  %t724 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s24, ptr %t720, i32 %t721)
  store { i64, ptr } %t724, ptr %l201
  br label %bb78
bb77:
  %t725 = load ptr, ptr %l0, !tbaa !29
  %t726 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t727 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t728 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t729 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t731 = extractvalue { i64, ptr } %t726, 1
  %t732 = extractvalue { i64, ptr } %t726, 0
  %t733 = add i64 %t729, %t732
  %t734 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t735 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t736 = add i64 %t733, %t735
  %t738 = extractvalue { i64, ptr } %t727, 1
  %t739 = extractvalue { i64, ptr } %t727, 0
  %t740 = add i64 %t736, %t739
  %t741 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t742 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t743 = add i64 %t740, %t742
  %t744 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t743)
  call void @olang_textcopy(ptr %t744, ptr %t728, i64 %t729)
  %t745 = getelementptr i8, ptr %t744, i64 %t729
  call void @olang_textcopy(ptr %t745, ptr %t731, i64 %t732)
  %t746 = getelementptr i8, ptr %t745, i64 %t732
  call void @olang_textcopy(ptr %t746, ptr %t734, i64 %t735)
  %t747 = getelementptr i8, ptr %t746, i64 %t735
  call void @olang_textcopy(ptr %t747, ptr %t738, i64 %t739)
  %t748 = getelementptr i8, ptr %t747, i64 %t739
  call void @olang_textcopy(ptr %t748, ptr %t741, i64 %t742)
  %t749 = insertvalue { i64, ptr } undef, i64 %t743, 0
  %t750 = insertvalue { i64, ptr } %t749, ptr %t744, 1
  %t752 = extractvalue { i64, ptr } %t750, 0
  %t753 = extractvalue { i64, ptr } %t750, 1
  %t754 = mul i64 %t752, 1
  %t755 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t754)
  call void @llvm.memcpy.p0.p0.i64(ptr %t755, ptr %t753, i64 %t754, i1 false)
  %t756 = insertvalue { i64, ptr } undef, i64 %t752, 0
  %t757 = insertvalue { i64, ptr } %t756, ptr %t755, 1
  %t760 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s20, ptr %s20, ptr %t725, { i64, ptr } %t757)
  store { i64, ptr } %t760, ptr %l214
  br label %bb83
bb78:
  %t761 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t762 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t763 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t764 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t765 = extractvalue { i64, ptr } %t764, 1
  %t766 = extractvalue { i64, ptr } %t764, 0
  %t767 = add i64 %t763, %t766
  %t768 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t769 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t770 = add i64 %t767, %t769
  %t772 = extractvalue { i64, ptr } %t761, 1
  %t773 = extractvalue { i64, ptr } %t761, 0
  %t774 = add i64 %t770, %t773
  %t775 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t776 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t777 = add i64 %t774, %t776
  %t778 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t777)
  call void @olang_textcopy(ptr %t778, ptr %t762, i64 %t763)
  %t779 = getelementptr i8, ptr %t778, i64 %t763
  call void @olang_textcopy(ptr %t779, ptr %t765, i64 %t766)
  %t780 = getelementptr i8, ptr %t779, i64 %t766
  call void @olang_textcopy(ptr %t780, ptr %t768, i64 %t769)
  %t781 = getelementptr i8, ptr %t780, i64 %t769
  call void @olang_textcopy(ptr %t781, ptr %t772, i64 %t773)
  %t782 = getelementptr i8, ptr %t781, i64 %t773
  call void @olang_textcopy(ptr %t782, ptr %t775, i64 %t776)
  %t783 = insertvalue { i64, ptr } undef, i64 %t777, 0
  %t784 = insertvalue { i64, ptr } %t783, ptr %t778, 1
  %t786 = extractvalue { i64, ptr } %t784, 0
  %t787 = extractvalue { i64, ptr } %t784, 1
  %t788 = mul i64 %t786, 1
  %t789 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t788)
  call void @llvm.memcpy.p0.p0.i64(ptr %t789, ptr %t787, i64 %t788, i1 false)
  %t790 = insertvalue { i64, ptr } undef, i64 %t786, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t789, 1
  %t792 = load ptr, ptr %l198, !tbaa !29
  %t794 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s20, ptr %s20, ptr %t792, { i64, ptr } %t791)
  store { i64, ptr } %t794, ptr %l205
  br label %bb79
bb79:
  %t795 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t796 = extractvalue { i64, ptr } %t795, 0
  %t797 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t798 = extractvalue { i64, ptr } %t797, 0
  store i64 %t798, ptr %l207, !tbaa !24
  %t800 = load i64, ptr %l207, !tbaa !24
  %t801 = icmp eq i64 %t796, %t800
  br i1 %t801, label %bb80, label %bb81
bb80:
  %t803 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t804 = load ptr, ptr %t803, !tbaa !27
  %t805 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t806 = load ptr, ptr %t805, !tbaa !27
  %t807 = load i64, ptr %l207, !tbaa !24
  %t808 = mul i64 %t807, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t804, ptr %t806, i64 %t808, i1 false)
  br label %bb82
bb81:
  %t809 = load { i64, ptr }, ptr %l205, !tbaa !27
  store { i64, ptr } %t809, ptr %l23, !tbaa !27
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s24)
  br label %bb87
bb83:
  %t810 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t811 = extractvalue { i64, ptr } %t810, 0
  %t812 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t813 = extractvalue { i64, ptr } %t812, 0
  store i64 %t813, ptr %l216, !tbaa !24
  %t815 = load i64, ptr %l216, !tbaa !24
  %t816 = icmp eq i64 %t811, %t815
  br i1 %t816, label %bb84, label %bb85
bb84:
  %t818 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t819 = load ptr, ptr %t818, !tbaa !27
  %t820 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t821 = load ptr, ptr %t820, !tbaa !27
  %t822 = load i64, ptr %l216, !tbaa !24
  %t823 = mul i64 %t822, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t819, ptr %t821, i64 %t823, i1 false)
  br label %bb86
bb85:
  %t824 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t824, ptr %l23, !tbaa !27
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t825 = load ptr, ptr %l0, !tbaa !29
  %t826 = load ptr, ptr %lp22
  %t827 = load { i64, ptr }, ptr %t826, !tbaa !27
  %t828 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t829 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t830 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t832 = extractvalue { i64, ptr } %t827, 1
  %t833 = extractvalue { i64, ptr } %t827, 0
  %t834 = add i64 %t830, %t833
  %t835 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) }, 1
  %t836 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d306, i32 0, i32 1) }, 0
  %t837 = add i64 %t834, %t836
  %t839 = extractvalue { i64, ptr } %t828, 1
  %t840 = extractvalue { i64, ptr } %t828, 0
  %t841 = add i64 %t837, %t840
  %t842 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t841)
  call void @olang_textcopy(ptr %t842, ptr %t829, i64 %t830)
  %t843 = getelementptr i8, ptr %t842, i64 %t830
  call void @olang_textcopy(ptr %t843, ptr %t832, i64 %t833)
  %t844 = getelementptr i8, ptr %t843, i64 %t833
  call void @olang_textcopy(ptr %t844, ptr %t835, i64 %t836)
  %t845 = getelementptr i8, ptr %t844, i64 %t836
  call void @olang_textcopy(ptr %t845, ptr %t839, i64 %t840)
  %t846 = insertvalue { i64, ptr } undef, i64 %t841, 0
  %t847 = insertvalue { i64, ptr } %t846, ptr %t842, 1
  %t849 = extractvalue { i64, ptr } %t847, 0
  %t850 = extractvalue { i64, ptr } %t847, 1
  %t851 = mul i64 %t849, 1
  %t852 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t851)
  call void @llvm.memcpy.p0.p0.i64(ptr %t852, ptr %t850, i64 %t851, i1 false)
  %t853 = insertvalue { i64, ptr } undef, i64 %t849, 0
  %t854 = insertvalue { i64, ptr } %t853, ptr %t852, 1
  %t857 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t825, { i64, ptr } %t854)
  store { i64, ptr } %t857, ptr %l223
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s20)
  call void @__olang_scope_close(ptr %s0)
  %t858 = load { i64, ptr }, ptr %l223, !tbaa !27
  store { i64, ptr } %t858, ptr %rv
  br label %ret
bb89:
  br i1 true, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb95
bb92:
  store %olang.scope zeroinitializer, ptr %s29
  %t859 = load ptr, ptr %l0, !tbaa !29
  store ptr %t859, ptr %l224, !tbaa !29
  %t860 = load i32, ptr %l1, !range !{i32 0, i32 52}
  store i32 %t860, ptr %l225
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s30
  store ptr %s30room, ptr %s30
  %t861 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t862 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s30, ptr %t861, i64 %t862)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s30, ptr %l225, i64 0)
  br label %bb93
bb93:
  %t864 = load ptr, ptr %s30
  %t865 = getelementptr %olang.builder, ptr %s30, i32 0, i32 1
  %t866 = load i64, ptr %t865
  %t867 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t866)
  call void @olang_textcopy(ptr %t867, ptr %t864, i64 %t866)
  %t868 = insertvalue { i64, ptr } undef, i64 %t866, 0
  %t869 = insertvalue { i64, ptr } %t868, ptr %t867, 1
  store { i64, ptr } %t869, ptr %l227, !tbaa !27
  %t870 = getelementptr %olang.builder, ptr %s30, i32 0, i32 3
  %t871 = load ptr, ptr %t870
  %t872 = icmp ne ptr %t871, null
  br i1 %t872, label %sbgrew.873, label %sbdone.874
sbgrew.873:
  call void @__olang_sb_done(ptr %s30)
  br label %sbdone.874
sbdone.874:
  %t875 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t876 = extractvalue { i64, ptr } %t875, 0
  %t877 = extractvalue { i64, ptr } %t875, 1
  %t878 = mul i64 %t876, 1
  %t879 = call ptr @__olang_scope_alloc(ptr %s29, i64 %t878)
  call void @llvm.memcpy.p0.p0.i64(ptr %t879, ptr %t877, i64 %t878, i1 false)
  %t880 = insertvalue { i64, ptr } undef, i64 %t876, 0
  %t881 = insertvalue { i64, ptr } %t880, ptr %t879, 1
  %t882 = load ptr, ptr %l224, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s29, ptr %t882, { i64, ptr } %t881)
  br label %bb94
bb94:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d308, i32 0, i32 1) }, ptr %l229, !tbaa !27
  %t884 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t884, ptr %l230, !tbaa !27
  %t885 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t886 = extractvalue { i64, ptr } %t885, 0
  store i64 %t886, ptr %l231, !tbaa !24
  %t887 = load i64, ptr %l231, !tbaa !24
  %t888 = mul i64 %t887, 1
  %t889 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t888)
  %t890 = insertvalue { i64, ptr } undef, i64 %t887, 0
  %t891 = insertvalue { i64, ptr } %t890, ptr %t889, 1
  store { i64, ptr } %t891, ptr %l232, !tbaa !27
  %t892 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !27
  %t894 = getelementptr { i64, ptr }, ptr %l230, i32 0, i32 1
  %t895 = load ptr, ptr %t894, !tbaa !27
  %t896 = load i64, ptr %l231, !tbaa !24
  %t897 = mul i64 %t896, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t893, ptr %t895, i64 %t897, i1 false)
  %t898 = load { i64, ptr }, ptr %l232, !tbaa !27
  store { i64, ptr } %t898, ptr %l230, !tbaa !27
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s0)
  %t899 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t899, ptr %rv
  br label %ret
bb95:
  call void @__olang_check_failed(ptr @olang_loc_9185a77390ef7566_ed985a49c11fac9a)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epartsResult(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/cabi:Way" %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/cabi:Way"
  %l2 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l22 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca [5 x i8]
  %l51 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l78 = alloca i64
  %l80 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l86 = alloca i64
  %l89 = alloca { i64, ptr }
  %l90 = alloca i64
  %l91 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l101 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l109 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store %"compiler/cabi:Way" %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l18, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t15 = call i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %t7, ptr %l1, i32 %t11)
  store i64 %t15, ptr %l22
  br label %bb1
bb1:
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d309, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d309, i32 0, i32 1) }, 0
  %t18 = load i64, ptr %l22, !tbaa !24
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %t18)
  %t20 = add i64 %t17, %t19
  %t21 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t23 = add i64 %t20, %t22
  %t24 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t16, i64 %t17)
  %t25 = getelementptr i8, ptr %t24, i64 %t17
  %t26 = call i64 @__olang_fmt_i64(ptr %t25, i64 %t18)
  %t27 = getelementptr i8, ptr %t25, i64 %t19
  call void @olang_textcopy(ptr %t27, ptr %t21, i64 %t22)
  %t28 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t24, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = extractvalue { i64, ptr } %t29, 1
  %t33 = mul i64 %t31, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  call void @llvm.memcpy.p0.p0.i64(ptr %t34, ptr %t32, i64 %t33, i1 false)
  %t35 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  %t37 = load ptr, ptr %l18, !tbaa !29
  %t39 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s0, ptr %s0, ptr %t37, { i64, ptr } %t36, i64 8)
  store { i64, ptr } %t39, ptr %l25
  br label %bb2
bb2:
  %t40 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l26, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/emit:fnEm", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s0, ptr %t45, i32 %t46)
  store { i64, ptr } %t49, ptr %l30
  br label %bb3
bb3:
  %t50 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  %t58 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t59 = load ptr, ptr %l26, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %v2, ptr %s0, ptr %s0, ptr %t59, { i64, ptr } %t56, { i64, ptr } %a3, { i64, ptr } %t58, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb4
bb4:
  %t64 = call { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v1, ptr %s0, ptr %l1)
  store { i64, ptr } %t64, ptr %l35
  br label %bb5
bb5:
  %t65 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t65, ptr %l6, !tbaa !27
  %t66 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t66)
  store i64 %t68, ptr %l37
  br label %bb6
bb6:
  %t69 = load i64, ptr %l37, !tbaa !24
  %t70 = icmp eq i64 %t69, 1
  br i1 %t70, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t72, ptr %l39, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t79 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s2, ptr %s2, ptr %t73, { i64, ptr } %t74, { i64, ptr } %t75, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t79, ptr %l43
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t80 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = add i64 %t85, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t81, i64 %t82)
  %t91 = getelementptr i8, ptr %t90, i64 %t82
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t90, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t94, ptr %rv
  br label %ret
bb10:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d312, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t96, ptr %l46, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = mul i64 5, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 5, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %l47, 1
  store { i64, ptr } %t102, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t104 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t106 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t104)
  store i64 %t106, ptr %l51
  br label %bb11
bb11:
  %t107 = load i64, ptr %l51, !tbaa !24
  store i64 %t107, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = load i64, ptr %l8, !tbaa !24
  %t112 = icmp sgt i64 %t108, %t109
  br i1 %t112, label %bb12, label %bb13
bb12:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb17
bb14:
  %t118 = load i64, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l8, !tbaa !24
  %t122 = sub i64 %t118, %t119
  %t123 = load i64, ptr %l10, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = sub i64 %t126, 1
  %t129 = load i64, ptr %l10, !tbaa !24
  %t132 = sdiv i64 %t128, %t129
  store i64 %t132, ptr %l58, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb16
bb16:
  %t134 = load i64, ptr %l58, !tbaa !24
  store i64 %t134, ptr %l55, !tbaa !24
  br label %bb17
bb17:
  %t135 = load i64, ptr %l55, !tbaa !24
  store i64 %t135, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t136 = load i64, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb20:
  br label %bb21
bb21:
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  store i64 %t152, ptr %l13, !tbaa !24
  %t154 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t155 = load i64, ptr %l13, !tbaa !24
  %t158 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t154, i64 %t155)
  store i64 %t158, ptr %l78
  br label %bb22
bb22:
  %t159 = load i64, ptr %l78, !tbaa !24
  %t160 = icmp eq i64 %t159, 0
  br i1 %t160, label %bb23, label %bb24
bb23:
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t162, ptr %l80, !tbaa !27
  br label %bb27
bb24:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l82, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t165, ptr %l83, !tbaa !27
  %t166 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 2
  %t167 = load i64, ptr %l13, !tbaa !24
  %t170 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t166, i64 %t167)
  store i64 %t170, ptr %l86
  br label %bb25
bb25:
  %t171 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t173 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = load i64, ptr %l86, !tbaa !24
  %t181 = call i64 @__olang_fmt_i64(ptr null, i64 %t180)
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t171, i64 %t172)
  %t184 = getelementptr i8, ptr %t183, i64 %t172
  call void @olang_textcopy(ptr %t184, ptr %t174, i64 %t175)
  %t185 = getelementptr i8, ptr %t184, i64 %t175
  call void @olang_textcopy(ptr %t185, ptr %t177, i64 %t178)
  %t186 = getelementptr i8, ptr %t185, i64 %t178
  %t187 = call i64 @__olang_fmt_i64(ptr %t186, i64 %t180)
  %t188 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t189 = insertvalue { i64, ptr } %t188, ptr %t183, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = extractvalue { i64, ptr } %t189, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = load ptr, ptr %l82, !tbaa !29
  %t199 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s5, ptr %s5, ptr %t197, { i64, ptr } %t196)
  store { i64, ptr } %t199, ptr %l89
  br label %bb26
bb26:
  %t200 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t200, ptr %l80, !tbaa !27
  br label %bb27
bb27:
  %t201 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t201, 0
  store i64 %t202, ptr %l90, !tbaa !24
  %t203 = load i64, ptr %l90, !tbaa !24
  %t204 = mul i64 %t203, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t204)
  %t206 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  store { i64, ptr } %t207, ptr %l91, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = load i64, ptr %l90, !tbaa !24
  %t213 = mul i64 %t212, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t209, ptr %t211, i64 %t213, i1 false)
  %t214 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t214, ptr %l14, !tbaa !27
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l92, !tbaa !29
  %t216 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t216, ptr %l93, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t217, ptr %l94, !tbaa !27
  %t218 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t219 = load i64, ptr %l13, !tbaa !24
  %t222 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %s5, ptr %t218, i64 %t219)
  store { i64, ptr } %t222, ptr %l97
  br label %bb28
bb28:
  %t223 = load ptr, ptr %l0, !tbaa !29
  store ptr %t223, ptr %l98, !tbaa !29
  %t224 = getelementptr %"compiler/cabi:Way", ptr %l1, i32 0, i32 1
  %t225 = load i64, ptr %l13, !tbaa !24
  %t228 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t224, i64 %t225)
  store { i64, ptr } %t228, ptr %l101
  br label %bb29
bb29:
  %t229 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t230 = load ptr, ptr %l98, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t233 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %s5, ptr %s5, ptr %s5, ptr %t230, { i64, ptr } %t231, { i64, ptr } %t229, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t233, ptr %l103
  br label %bb30
bb30:
  %t234 = load i64, ptr %l13, !tbaa !24
  %t235 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d315, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d315, i32 0, i32 1) }, 0
  %t237 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = add i64 %t243, %t246
  %t248 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t250 = add i64 %t247, %t249
  %t251 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 1
  %t253 = extractvalue { i64, ptr } %t251, 0
  %t254 = add i64 %t250, %t253
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t256 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t257 = add i64 %t254, %t256
  %t258 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t266 = call i64 @__olang_fmt_i64(ptr null, i64 %t234)
  %t267 = add i64 %t264, %t266
  %t268 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t267)
  call void @olang_textcopy(ptr %t268, ptr %t235, i64 %t236)
  %t269 = getelementptr i8, ptr %t268, i64 %t236
  call void @olang_textcopy(ptr %t269, ptr %t238, i64 %t239)
  %t270 = getelementptr i8, ptr %t269, i64 %t239
  call void @olang_textcopy(ptr %t270, ptr %t241, i64 %t242)
  %t271 = getelementptr i8, ptr %t270, i64 %t242
  call void @olang_textcopy(ptr %t271, ptr %t245, i64 %t246)
  %t272 = getelementptr i8, ptr %t271, i64 %t246
  call void @olang_textcopy(ptr %t272, ptr %t248, i64 %t249)
  %t273 = getelementptr i8, ptr %t272, i64 %t249
  call void @olang_textcopy(ptr %t273, ptr %t252, i64 %t253)
  %t274 = getelementptr i8, ptr %t273, i64 %t253
  call void @olang_textcopy(ptr %t274, ptr %t255, i64 %t256)
  %t275 = getelementptr i8, ptr %t274, i64 %t256
  call void @olang_textcopy(ptr %t275, ptr %t259, i64 %t260)
  %t276 = getelementptr i8, ptr %t275, i64 %t260
  call void @olang_textcopy(ptr %t276, ptr %t262, i64 %t263)
  %t277 = getelementptr i8, ptr %t276, i64 %t263
  %t278 = call i64 @__olang_fmt_i64(ptr %t277, i64 %t234)
  %t279 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t268, 1
  %t282 = extractvalue { i64, ptr } %t280, 0
  %t283 = extractvalue { i64, ptr } %t280, 1
  %t284 = mul i64 %t282, 1
  %t285 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t284)
  call void @llvm.memcpy.p0.p0.i64(ptr %t285, ptr %t283, i64 %t284, i1 false)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t285, 1
  %t288 = load ptr, ptr %l92, !tbaa !29
  %t290 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t288, { i64, ptr } %t287)
  store { i64, ptr } %t290, ptr %l107
  br label %bb31
bb31:
  %t291 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t294 = extractvalue { i64, ptr } %t293, 0
  store i64 %t294, ptr %l109, !tbaa !24
  %t296 = load i64, ptr %l109, !tbaa !24
  %t297 = icmp eq i64 %t292, %t296
  br i1 %t297, label %bb32, label %bb33
bb32:
  %t299 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = load i64, ptr %l109, !tbaa !24
  %t304 = mul i64 %t303, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t300, ptr %t302, i64 %t304, i1 false)
  br label %bb34
bb33:
  %t305 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t305, ptr %l7, !tbaa !27
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb35:
  %t306 = load i64, ptr %l12, !tbaa !24
  %t308 = add i64 %t306, 1
  store i64 %t308, ptr %l12, !tbaa !24
  br label %bb18
bb36:
  %t310 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t311 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t310, 1
  %t314 = extractvalue { i64, ptr } %t310, 0
  %t315 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d318, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d318, i32 0, i32 1) }, 0
  %t317 = add i64 %t314, %t316
  %t319 = extractvalue { i64, ptr } %t311, 1
  %t320 = extractvalue { i64, ptr } %t311, 0
  %t321 = add i64 %t317, %t320
  %t322 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t321)
  call void @olang_textcopy(ptr %t322, ptr %t313, i64 %t314)
  %t323 = getelementptr i8, ptr %t322, i64 %t314
  call void @olang_textcopy(ptr %t323, ptr %t315, i64 %t316)
  %t324 = getelementptr i8, ptr %t323, i64 %t316
  call void @olang_textcopy(ptr %t324, ptr %t319, i64 %t320)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t322, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t326, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca i64
  %l16 = alloca i64
  %l21 = alloca i32
  %l27 = alloca i32
  %l39 = alloca i32
  %l42 = alloca i32
  %l62 = alloca i32
  %l71 = alloca { i64, [1 x i64] }
  %l75 = alloca ptr
  %l78 = alloca i32
  %l79 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l90 = alloca i32
  %l91 = alloca i32
  %l96 = alloca i32
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 0
  %t10 = load { i64, [2 x i64] }, ptr %t9
  store { i64, [2 x i64] } %t10, ptr %l3
  %t12 = load { i64, [2 x i64] }, ptr %l3
  %t14 = extractvalue { i64, [2 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 1
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l4, !tbaa !23
  %t25 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l27
  br label %bb4
bb4:
  %t26 = load i32, ptr %l27, !tbaa !23
  store i32 %t26, ptr %l21, !tbaa !23
  br label %bb14
bb5:
  %t27 = load { i64, [2 x i64] }, ptr %l3
  %t29 = extractvalue { i64, [2 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 2
  br i1 %t30, label %bb6, label %bb7
bb6:
  %t32 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t33 = getelementptr { i64, i32, i32 }, ptr %t32, i32 0, i32 2
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t36 = load i32, ptr %l5, !tbaa !23
  store i32 %t36, ptr %l21, !tbaa !23
  br label %bb14
bb9:
  %t38 = load { i64, [2 x i64] }, ptr %l3
  %t40 = extractvalue { i64, [2 x i64] } %t38, 0
  %t41 = icmp eq i64 %t40, 0
  br i1 %t41, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t43 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t43, ptr %l21, !tbaa !23
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a9fd7c50d16728b3_9acdaaf90805b30f)
  unreachable
bb14:
  %t45 = load i32, ptr %l21, !tbaa !23
  store i32 %t45, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  %t46 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t47 = getelementptr %"compiler/mir:Range", ptr %t46, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  store i32 %t48, ptr %l8, !tbaa !23
  store i32 1, ptr %l9, !tbaa !23
  %t50 = load i32, ptr %l8, !tbaa !23
  %t51 = load i32, ptr %l7, !tbaa !23
  %t54 = icmp sgt i32 %t50, %t51
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load i32, ptr %l9, !tbaa !23
  %t58 = icmp sgt i32 %t56, 0
  br i1 %t58, label %bb17, label %bb18
bb16:
  store i32 0, ptr %l39, !tbaa !23
  br label %bb20
bb17:
  %t60 = load i32, ptr %l8, !tbaa !23
  %t61 = load i32, ptr %l7, !tbaa !23
  %t64 = sub i32 %t60, %t61
  %t65 = load i32, ptr %l9, !tbaa !23
  %t68 = add i32 %t64, %t65
  %t70 = sub i32 %t68, 1
  %t71 = load i32, ptr %l9, !tbaa !23
  %t74 = sdiv i32 %t70, %t71
  store i32 %t74, ptr %l42, !tbaa !23
  br label %bb19
bb18:
  store i32 0, ptr %l42, !tbaa !23
  br label %bb19
bb19:
  %t76 = load i32, ptr %l42, !tbaa !23
  store i32 %t76, ptr %l39, !tbaa !23
  br label %bb20
bb20:
  %t77 = load i32, ptr %l39, !tbaa !23
  store i32 %t77, ptr %l10, !tbaa !23
  store i32 0, ptr %l11, !tbaa !23
  br label %bb21
bb21:
  %t78 = load i32, ptr %l11, !tbaa !23
  %t79 = load i32, ptr %l10, !tbaa !23
  %t82 = icmp slt i32 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb54
bb23:
  br label %bb24
bb24:
  %t86 = load i32, ptr %l7, !tbaa !23
  %t87 = load i32, ptr %l11, !tbaa !23
  %t88 = load i32, ptr %l9, !tbaa !23
  %t91 = mul i32 %t87, %t88
  %t94 = add i32 %t86, %t91
  store i32 %t94, ptr %l12, !tbaa !23
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i32, ptr %l6, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l62
  br label %bb25
bb25:
  %t101 = load i32, ptr %l62, !tbaa !23
  store i32 %t101, ptr %l13, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/emit:fnEm", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/mir:Fn", ptr %t105, i32 0, i32 10
  %t108 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t109 = getelementptr %"compiler/mir:Range", ptr %t108, i32 0, i32 0
  %t110 = load i32, ptr %t109, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t113 = load i32, ptr %l12, !tbaa !23
  %t115 = sext i32 %t113 to i64
  %t118 = add i64 %t112, %t115
  %t121 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t107, i64 %t118)
  store { i64, [1 x i64] } %t121, ptr %l71
  br label %bb26
bb26:
  %t122 = load { i64, [1 x i64] }, ptr %l71
  store { i64, [1 x i64] } %t122, ptr %l14
  %t123 = load { i64, [1 x i64] }, ptr %l14
  %t125 = extractvalue { i64, [1 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 0
  br i1 %t126, label %bb27, label %bb28
bb27:
  %t128 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t129 = getelementptr { i64 }, ptr %t128, i32 0, i32 0
  %t130 = load i64, ptr %t129
  store i64 %t130, ptr %l15, !tbaa !24
  br label %bb29
bb28:
  br label %bb32
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t132 = load ptr, ptr %l2, !tbaa !29
  store ptr %t132, ptr %l75, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l13, !tbaa !23
  %t137 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t133, i32 %t134)
  store i32 %t137, ptr %l78
  br label %bb30
bb30:
  %t138 = load ptr, ptr %l75, !tbaa !29
  %t139 = load i32, ptr %l78, !tbaa !23
  %t140 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s6, ptr %t138, i32 %t139)
  store { i64, ptr } %t140, ptr %l79
  br label %bb31
bb31:
  %t141 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t141, ptr %l80, !tbaa !27
  %t142 = load i64, ptr %l15, !tbaa !24
  %t144 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i32, ptr %t145, i64 %t142
  %t147 = load i32, ptr %t146, !tbaa !33
  store i32 %t147, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb32:
  %t149 = load { i64, [1 x i64] }, ptr %l14
  %t151 = extractvalue { i64, [1 x i64] } %t149, 0
  %t152 = icmp eq i64 %t151, 1
  br i1 %t152, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  %t154 = load { i64, [1 x i64] }, ptr %l14
  %t156 = extractvalue { i64, [1 x i64] } %t154, 0
  %t157 = icmp eq i64 %t156, 2
  br i1 %t157, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t159 = load ptr, ptr %l2, !tbaa !29
  store ptr %t159, ptr %l87, !tbaa !29
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l6, !tbaa !23
  %t164 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t160, i32 %t161)
  store i32 %t164, ptr %l90
  br label %bb38
bb38:
  %t165 = load ptr, ptr %l87, !tbaa !29
  %t166 = load i32, ptr %l90, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t165, i32 %t166)
  store i32 %t167, ptr %l91
  br label %bb39
bb39:
  %t168 = load i32, ptr %l91, !tbaa !23
  store i32 %t168, ptr %l6, !tbaa !23
  br label %bb52
bb40:
  %t169 = load { i64, [1 x i64] }, ptr %l14
  %t171 = extractvalue { i64, [1 x i64] } %t169, 0
  %t172 = icmp eq i64 %t171, 3
  br i1 %t172, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb45
bb43:
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t175 = load i32, ptr %l13, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l96
  br label %bb44
bb44:
  %t179 = load i32, ptr %l96, !tbaa !23
  store i32 %t179, ptr %l6, !tbaa !23
  br label %bb52
bb45:
  %t180 = load { i64, [1 x i64] }, ptr %l14
  %t182 = extractvalue { i64, [1 x i64] } %t180, 0
  %t183 = icmp eq i64 %t182, 4
  br i1 %t183, label %bb46, label %bb47
bb46:
  %t185 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t186 = getelementptr { i64 }, ptr %t185, i32 0, i32 0
  %t187 = load i64, ptr %t186
  store i64 %t187, ptr %l16, !tbaa !24
  br label %bb48
bb47:
  br label %bb51
bb48:
  store %olang.scope zeroinitializer, ptr %s9
  %t189 = load ptr, ptr %l2, !tbaa !29
  store ptr %t189, ptr %l100, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i32, ptr %l13, !tbaa !23
  %t194 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %t190, i32 %t191)
  store i32 %t194, ptr %l103
  br label %bb49
bb49:
  %t195 = load ptr, ptr %l100, !tbaa !29
  %t196 = load i32, ptr %l103, !tbaa !23
  %t197 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t195, i32 %t196)
  store { i64, ptr } %t197, ptr %l104
  br label %bb50
bb50:
  %t198 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t198, ptr %l105, !tbaa !27
  %t199 = load i64, ptr %l16, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i32, ptr %t202, i64 %t199
  %t204 = load i32, ptr %t203, !tbaa !33
  store i32 %t204, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_da5eecb7fc4b7f32_631a48f48836cece)
  unreachable
bb52:
  br label %bb53
bb53:
  %t206 = load i32, ptr %l11, !tbaa !23
  %t208 = add i32 %t206, 1
  store i32 %t208, ptr %l11, !tbaa !23
  br label %bb21
bb54:
  %t210 = load i32, ptr %l6, !tbaa !23
  store i32 %t210, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etailCopies(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l52 = alloca %"compiler/mir:BasicBlock"
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l66 = alloca i64
  %l70 = alloca i64
  %l73 = alloca i64
  %l95 = alloca i1
  %l100 = alloca { i64, [1 x i64] }
  %l107 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i64
  %l110 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 28
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d319, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t6, ptr %l17, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l18, !tbaa !24
  %t9 = load i64, ptr %l18, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l19, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l18, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t20, ptr %l17, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/mir:Fn", ptr %t25, i32 0, i32 9
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l23
  br label %bb4
bb4:
  %t30 = load i64, ptr %l23, !tbaa !24
  store i64 %t30, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  br i1 %t35, label %bb5, label %bb6
bb5:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp sgt i64 %t37, 0
  br i1 %t39, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb10
bb7:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = sub i64 %t41, %t42
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t51 = sub i64 %t49, 1
  %t52 = load i64, ptr %l4, !tbaa !24
  %t55 = sdiv i64 %t51, %t52
  store i64 %t55, ptr %l30, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb9
bb9:
  %t57 = load i64, ptr %l30, !tbaa !24
  store i64 %t57, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t58 = load i64, ptr %l27, !tbaa !24
  store i64 %t58, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t59 = load i64, ptr %l6, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t75 = add i64 %t67, %t72
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/emit:fnEm", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/mir:Fn", ptr %t80, i32 0, i32 9
  %t86 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s3, ptr %t82, i64 %t75)
  store %"compiler/mir:BasicBlock" %t86, ptr %l52
  br label %bb15
bb15:
  %t87 = getelementptr %"compiler/mir:BasicBlock", ptr %l52, i32 0, i32 1
  %t88 = load { i64, [8 x i64] }, ptr %t87
  %t90 = extractvalue { i64, [8 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 6
  br i1 %t91, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb18
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t93 = load i64, ptr %l6, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l6, !tbaa !24
  br label %bb11
bb20:
  %t97 = load i1, ptr %l1, !tbaa !21
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d320, i32 0, i32 1) }, ptr %l59, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t101, ptr %l60, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  store i64 %t103, ptr %l61, !tbaa !24
  %t104 = load i64, ptr %l61, !tbaa !24
  %t105 = mul i64 %t104, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t105)
  %t107 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  store { i64, ptr } %t108, ptr %l62, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = load i64, ptr %l61, !tbaa !24
  %t114 = mul i64 %t113, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t110, ptr %t112, i64 %t114, i1 false)
  %t115 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t115, ptr %l60, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l8, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/emit:fnEm", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/mir:Fn", ptr %t120, i32 0, i32 6
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l66
  br label %bb24
bb24:
  %t125 = load i64, ptr %l66, !tbaa !24
  store i64 %t125, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l8, !tbaa !24
  %t130 = icmp sgt i64 %t126, %t127
  br i1 %t130, label %bb25, label %bb26
bb25:
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = icmp sgt i64 %t132, 0
  br i1 %t134, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb30
bb27:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t137 = load i64, ptr %l8, !tbaa !24
  %t140 = sub i64 %t136, %t137
  %t141 = load i64, ptr %l10, !tbaa !24
  %t144 = add i64 %t140, %t141
  %t146 = sub i64 %t144, 1
  %t147 = load i64, ptr %l10, !tbaa !24
  %t150 = sdiv i64 %t146, %t147
  store i64 %t150, ptr %l73, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb29
bb29:
  %t152 = load i64, ptr %l73, !tbaa !24
  store i64 %t152, ptr %l70, !tbaa !24
  br label %bb30
bb30:
  %t153 = load i64, ptr %l70, !tbaa !24
  store i64 %t153, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb31
bb31:
  %t154 = load i64, ptr %l12, !tbaa !24
  %t155 = load i64, ptr %l11, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb32, label %bb33
bb32:
  br label %bb43
bb33:
  br label %bb34
bb34:
  %t162 = load i64, ptr %l8, !tbaa !24
  %t163 = load i64, ptr %l12, !tbaa !24
  %t164 = load i64, ptr %l10, !tbaa !24
  %t167 = mul i64 %t163, %t164
  %t170 = add i64 %t162, %t167
  store i64 %t170, ptr %l13, !tbaa !24
  %t172 = load i64, ptr %l13, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/emit:fnEm", ptr %t173, i32 0, i32 7
  %t176 = load i64, ptr %t175, !tbaa !24
  %t179 = icmp slt i64 %t172, %t176
  br i1 %t179, label %bb35, label %bb36
bb35:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/emit:fnEm", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t186 = getelementptr %"compiler/mir:Fn", ptr %t184, i32 0, i32 6
  %t187 = load i64, ptr %l13, !tbaa !24
  %t190 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t186, i64 %t187)
  store { i64, [1 x i64] } %t190, ptr %l100
  br label %bb37
bb36:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb38
bb37:
  %t191 = load { i64, [1 x i64] }, ptr %l100
  %t193 = extractvalue { i64, [1 x i64] } %t191, 0
  %t194 = icmp eq i64 %t193, 1
  store i1 %t194, ptr %l95, !tbaa !21
  br label %bb38
bb38:
  %t196 = load i1, ptr %l95, !tbaa !21
  br i1 %t196, label %bb39, label %bb40
bb39:
  %t197 = load i64, ptr %l13, !tbaa !24
  %t198 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d321, i32 0, i32 1) }, 1
  %t199 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d321, i32 0, i32 1) }, 0
  %t201 = call i64 @__olang_fmt_i64(ptr null, i64 %t197)
  %t202 = add i64 %t199, %t201
  %t203 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t202)
  call void @olang_textcopy(ptr %t203, ptr %t198, i64 %t199)
  %t204 = getelementptr i8, ptr %t203, i64 %t199
  %t205 = call i64 @__olang_fmt_i64(ptr %t204, i64 %t197)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t203, 1
  store { i64, ptr } %t207, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t209 = load i64, ptr %l12, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l12, !tbaa !24
  br label %bb31
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d322, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t213, ptr %l108, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t214, 0
  store i64 %t215, ptr %l109, !tbaa !24
  %t216 = load i64, ptr %l109, !tbaa !24
  %t217 = mul i64 %t216, 1
  %t218 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t217)
  %t219 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t218, 1
  store { i64, ptr } %t220, ptr %l110, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t224 = load ptr, ptr %t223, !tbaa !27
  %t225 = load i64, ptr %l109, !tbaa !24
  %t226 = mul i64 %t225, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t222, ptr %t224, i64 %t226, i1 false)
  %t227 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t227, ptr %l108, !tbaa !27
  %t228 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t228, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %t4, i32 %a1)
  store { i64, ptr } %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca { { i64, ptr }, i32 }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l26 = alloca { { i64, ptr }, i32 }
  %l31 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l52 = alloca i1
  %l56 = alloca i1
  %l65 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [4 x i64] } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d323, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t6, ptr %l18, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l19, !tbaa !24
  %t9 = load i64, ptr %l19, !tbaa !24
  %t10 = mul i64 %t9, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l20, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l19, !tbaa !24
  %t19 = mul i64 %t18, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t20, ptr %l18, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
bb4:
  %t22 = load { i64, [4 x i64] }, ptr %l1
  %t24 = extractvalue { i64, [4 x i64] } %t22, 0
  %t25 = icmp eq i64 %t24, 1
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t28 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/mir:Lvalue", ptr %t28
  store %"compiler/mir:Lvalue" %t29, ptr %l3
  br label %bb7
bb6:
  br label %bb12
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load %"compiler/mir:Lvalue", ptr %l3
  %t35 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s2, ptr %t31, %"compiler/mir:Lvalue" %t32)
  store { { i64, ptr }, i32 } %t35, ptr %l26
  br label %bb8
bb8:
  %t36 = load { { i64, ptr }, i32 }, ptr %l26
  store { { i64, ptr }, i32 } %t36, ptr %l4
  %t37 = getelementptr { { i64, ptr }, i32 }, ptr %l4, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  %t40 = getelementptr { { i64, ptr }, i32 }, ptr %l4, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  store i32 %t41, ptr %l6, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l6, !tbaa !23
  %t47 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s2, ptr %t43, i32 %t44)
  store { i64, ptr } %t47, ptr %l31
  br label %bb9
bb9:
  %t48 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t48, ptr %l7, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l32, !tbaa !29
  %t50 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t50, ptr %l33, !tbaa !27
  %t51 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t51, ptr %l34, !tbaa !27
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/emit:fnEm", ptr %t52, i32 0, i32 15
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l36, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l6, !tbaa !23
  %t58 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t62 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecaseRange(ptr %v0, ptr %s2, ptr %s2, ptr %t56, i32 %t57, { i64, ptr } %t58)
  store { i64, ptr } %t62, ptr %l40
  br label %bb10
bb10:
  %t63 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = add i64 %t65, %t68
  %t70 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t69)
  call void @olang_textcopy(ptr %t70, ptr %t64, i64 %t65)
  %t71 = getelementptr i8, ptr %t70, i64 %t65
  call void @olang_textcopy(ptr %t71, ptr %t67, i64 %t68)
  %t72 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t70, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = extractvalue { i64, ptr } %t73, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t81 = load ptr, ptr %l32, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %v1, ptr %v1, ptr %t81, { i64, ptr } %t82, { i64, ptr } %t83, { i64, ptr } %t80)
  store { i64, ptr } %t85, ptr %l43
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  %t86 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb12:
  %t87 = load { i64, [4 x i64] }, ptr %l1
  %t89 = extractvalue { i64, [4 x i64] } %t87, 0
  %t90 = icmp eq i64 %t89, 2
  br i1 %t90, label %bb13, label %bb14
bb13:
  %t92 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t93 = getelementptr { i32, i64 }, ptr %t92, i32 0, i32 0
  %t94 = load i32, ptr %t93
  store i32 %t94, ptr %l8, !tbaa !23
  %t96 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t97 = getelementptr { i32, i64 }, ptr %t96, i32 0, i32 1
  %t98 = load i64, ptr %t97
  store i64 %t98, ptr %l9, !tbaa !24
  br label %bb15
bb14:
  br label %bb26
bb15:
  %t100 = load i32, ptr %l8, !tbaa !23
  store i32 %t100, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l8, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t106 = icmp eq i32 %t102, %t103
  br i1 %t106, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb17:
  %t108 = load i32, ptr %l8, !tbaa !23
  %t109 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t112 = icmp eq i32 %t108, %t109
  store i1 %t112, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t114 = load i1, ptr %l52, !tbaa !21
  br i1 %t114, label %bb19, label %bb20
bb19:
  %t115 = load i32, ptr %l2, !tbaa !23
  %t116 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t119 = icmp ne i32 %t115, %t116
  store i1 %t119, ptr %l56, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb21
bb21:
  %t121 = load i1, ptr %l56, !tbaa !21
  br i1 %t121, label %bb22, label %bb23
bb22:
  %t122 = load i32, ptr %l2, !tbaa !23
  store i32 %t122, ptr %l10, !tbaa !23
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/emit:fnEm", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t128 = load i32, ptr %l10, !tbaa !23
  %t129 = load i64, ptr %l9, !tbaa !24
  %t133 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %t127, i32 %t128, i64 %t129)
  store { i64, ptr } %t133, ptr %l65
  br label %bb25
bb25:
  %t134 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t134, ptr %rv
  br label %ret
bb26:
  %t135 = load { i64, [4 x i64] }, ptr %l1
  %t137 = extractvalue { i64, [4 x i64] } %t135, 0
  %t138 = icmp eq i64 %t137, 3
  br i1 %t138, label %bb27, label %bb28
bb27:
  %t140 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t141 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t140, i32 0, i32 0
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l11, !tbaa !23
  %t144 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t145 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t144, i32 0, i32 1
  %t146 = load i32, ptr %t145
  store i32 %t146, ptr %l12, !tbaa !23
  %t148 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t149 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t148, i32 0, i32 2
  %t150 = load i64, ptr %t149
  store i64 %t150, ptr %l13, !tbaa !24
  %t152 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t153 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t152, i32 0, i32 3
  %t154 = load %"compiler/source:Span", ptr %t153
  store %"compiler/source:Span" %t154, ptr %l14
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i32, ptr %l11, !tbaa !23
  %t158 = load i32, ptr %l12, !tbaa !23
  %t159 = load i64, ptr %l13, !tbaa !24
  %t160 = load %"compiler/source:Span", ptr %l14
  %t166 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edata(ptr %v0, ptr %v1, ptr %t156, i32 %t157, i32 %t158, i64 %t159, %"compiler/source:Span" %t160, i1 false)
  store { i64, ptr } %t166, ptr %l77
  br label %bb30
bb30:
  %t167 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t167, ptr %rv
  br label %ret
bb31:
  call void @__olang_check_failed(ptr @olang_loc_543dd1ed9b3aebc7_999a25b1d1163463)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ewalkEnds(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Call"
  %l6 = alloca i32
  %l7 = alloca { i64, [7 x i64] }
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l35 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l36 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l38 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l39 = alloca i32
  %l41 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i32
  %l56 = alloca %"compiler/mir:Call"
  %l63 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i32
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l104 = alloca { i64, ptr }
  %l106 = alloca %"std/prelude/text:StringBuilder"
  %l113 = alloca i32
  %l117 = alloca i1
  %l121 = alloca i1
  %l124 = alloca i1
  %l125 = alloca ptr
  %l128 = alloca { i64, ptr }
  %l135 = alloca i64
  %l139 = alloca i64
  %l142 = alloca i64
  %l164 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l171 = alloca ptr
  %l172 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l184 = alloca %"std/prelude/text:StringBuilder"
  %l194 = alloca i64
  %l197 = alloca i64
  %l224 = alloca ptr
  %l226 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %t324 = alloca { i64, [4 x i64] }, align 8
  %t327 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l1, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 33
  %t13 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t11)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t13, ptr %l35
  br label %bb1
bb1:
  %t14 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l35
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t14, ptr %l2
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t16 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l2)
  %t17 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t16, 1
  %t18 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t16, 0
  store i32 %t18, ptr %l39
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb4, label %ok.20, !prof !99
ok.20:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t17, ptr %l38
  br label %bb3
bb3:
  %t21 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l38
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t21, ptr %l36
  br label %bb6
bb4:
  %t22 = load i32, ptr %l39, !tbaa !23
  %t23 = ashr i32 %t22, 16
  %t25 = icmp eq i32 %t23, 1
  store i1 %t25, ptr %l41, !tbaa !21
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb91
bb6:
  %t26 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l36
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t26, ptr %l3
  %t27 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 0
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t35 = call i64 @__olang_fmt_i64(ptr null, i64 %t31)
  %t36 = add i64 %t33, %t35
  %t37 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t32, i64 %t33)
  %t38 = getelementptr i8, ptr %t37, i64 %t33
  %t39 = call i64 @__olang_fmt_i64(ptr %t38, i64 %t31)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t37, 1
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t44 = extractvalue { i64, ptr } %t41, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %s2, ptr %t30, { i64, ptr } %t48)
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:fnEm", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/mir:Fn", ptr %t54, i32 0, i32 14
  store ptr %t56, ptr %l49, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:fnEm", ptr %t57, i32 0, i32 31
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t59, i64 %t60)
  %t64 = extractvalue { i32, i64 } %t63, 1
  %t65 = extractvalue { i32, i64 } %t63, 0
  store i32 %t65, ptr %l55
  %t66 = icmp ne i32 %t65, 0
  br i1 %t66, label %bb9, label %ok.67, !prof !99
ok.67:
  store i64 %t64, ptr %l54
  br label %bb8
bb8:
  %t68 = load i64, ptr %l54, !tbaa !24
  store i64 %t68, ptr %l50, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d55aab1360531c47_f82e8a31cf9de643)
  unreachable
bb11:
  %t69 = load ptr, ptr %l49, !tbaa !29
  %t70 = load i64, ptr %l50, !tbaa !24
  %t71 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t69, i64 %t70)
  store %"compiler/mir:Call" %t71, ptr %l56
  br label %bb12
bb12:
  %t72 = load %"compiler/mir:Call", ptr %l56
  store %"compiler/mir:Call" %t72, ptr %l5
  %t73 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t73, ptr %l6, !tbaa !23
  %t75 = getelementptr %"compiler/mir:Call", ptr %l5, i32 0, i32 0
  %t76 = load { i64, [7 x i64] }, ptr %t75
  store { i64, [7 x i64] } %t76, ptr %l7
  %t78 = load { i64, [7 x i64] }, ptr %l7
  %t80 = extractvalue { i64, [7 x i64] } %t78, 0
  %t81 = icmp eq i64 %t80, 0
  br i1 %t81, label %bb13, label %bb14
bb13:
  %t83 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t84 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l8, !tbaa !23
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t87 = load i32, ptr %l8, !tbaa !23
  store i32 %t87, ptr %l6, !tbaa !23
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
  call void @__olang_check_failed(ptr @olang_loc_e9cd50c1ae7327e6_bc31e41603ed9ec2)
  unreachable
bb21:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l63, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l64, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l65, !tbaa !29
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t93 = load i32, ptr %l6, !tbaa !23
  %t96 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t92, i32 %t93)
  store i32 %t96, ptr %l68
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l65, !tbaa !29
  %t98 = load i32, ptr %l68, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t97, i32 %t98)
  store i32 %t99, ptr %l69
  br label %bb23
bb23:
  %t100 = load ptr, ptr %l64, !tbaa !29
  %t101 = load i32, ptr %l69, !tbaa !23
  %t102 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t100, i32 %t101)
  store i32 %t102, ptr %l70
  br label %bb24
bb24:
  %t103 = load ptr, ptr %l63, !tbaa !29
  %t104 = load i32, ptr %l70, !tbaa !23
  %t105 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t103, i32 %t104)
  store { i64, ptr } %t105, ptr %l71
  br label %bb25
bb25:
  %t106 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t106, ptr %l72, !tbaa !27
  %t107 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i32, ptr %t108, i64 0
  %t110 = load i32, ptr %t109, !tbaa !33
  store i32 %t110, ptr %l9, !tbaa !23
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/emit:fnEm", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t116 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t115, i32 %t116)
  br label %bb26
bb26:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/emit:fnEm", ptr %t119, i32 0, i32 0
  %t122 = load ptr, ptr %t121, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %t122)
  br label %bb27
bb27:
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t125 = load i32, ptr %l9, !tbaa !23
  %t127 = inttoptr i64 0 to ptr
  %t130 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s2, ptr %t127, ptr %t124, i32 %t125)
  store { i64, ptr } %t130, ptr %l82
  br label %bb28
bb28:
  %t131 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t131, ptr %l10, !tbaa !27
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d325, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d325, i32 0, i32 1) }, 0
  %t137 = call i64 @__olang_fmt_i64(ptr null, i64 %t133)
  %t138 = add i64 %t135, %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t134, i64 %t135)
  %t140 = getelementptr i8, ptr %t139, i64 %t135
  %t141 = call i64 @__olang_fmt_i64(ptr %t140, i64 %t133)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t139, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = extractvalue { i64, ptr } %t143, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t153 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %t132, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d326, i32 0, i32 1) }, { i64, ptr } %t150, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t153, ptr %l87
  br label %bb29
bb29:
  %t154 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t154, ptr %l11, !tbaa !27
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l4, !tbaa !24
  %t157 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t158 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t160 = call i64 @__olang_fmt_i64(ptr null, i64 %t156)
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t157, i64 %t158)
  %t163 = getelementptr i8, ptr %t162, i64 %t158
  %t164 = call i64 @__olang_fmt_i64(ptr %t163, i64 %t156)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t162, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = extractvalue { i64, ptr } %t166, 1
  %t170 = mul i64 %t168, 1
  %t171 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t170)
  call void @llvm.memcpy.p0.p0.i64(ptr %t171, ptr %t169, i64 %t170, i1 false)
  %t172 = insertvalue { i64, ptr } undef, i64 %t168, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t171, 1
  %t176 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %t155, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d328, i32 0, i32 1) }, { i64, ptr } %t173, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t176, ptr %l92
  br label %bb30
bb30:
  %t177 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t177, ptr %l12, !tbaa !27
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t180 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d329, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d329, i32 0, i32 1) }, 0
  %t183 = extractvalue { i64, ptr } %t179, 1
  %t184 = extractvalue { i64, ptr } %t179, 0
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d330, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d330, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t188)
  call void @olang_textcopy(ptr %t189, ptr %t180, i64 %t181)
  %t190 = getelementptr i8, ptr %t189, i64 %t181
  call void @olang_textcopy(ptr %t190, ptr %t183, i64 %t184)
  %t191 = getelementptr i8, ptr %t190, i64 %t184
  call void @olang_textcopy(ptr %t191, ptr %t186, i64 %t187)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t189, 1
  %t195 = extractvalue { i64, ptr } %t193, 0
  %t196 = extractvalue { i64, ptr } %t193, 1
  %t197 = mul i64 %t195, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t198, ptr %t196, i64 %t197, i1 false)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  %t203 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %t178, { i64, ptr } %t200)
  store { i64, ptr } %t203, ptr %l97
  br label %bb31
bb31:
  %t204 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l98, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t209 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d331, i32 0, i32 1) }, 1
  %t210 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d331, i32 0, i32 1) }, 0
  %t212 = extractvalue { i64, ptr } %t207, 1
  %t213 = extractvalue { i64, ptr } %t207, 0
  %t214 = add i64 %t210, %t213
  %t215 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d332, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d332, i32 0, i32 1) }, 0
  %t217 = add i64 %t214, %t216
  %t219 = extractvalue { i64, ptr } %t204, 1
  %t220 = extractvalue { i64, ptr } %t204, 0
  %t221 = add i64 %t217, %t220
  %t222 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d333, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d333, i32 0, i32 1) }, 0
  %t224 = add i64 %t221, %t223
  %t225 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t224)
  call void @olang_textcopy(ptr %t225, ptr %t209, i64 %t210)
  %t226 = getelementptr i8, ptr %t225, i64 %t210
  call void @olang_textcopy(ptr %t226, ptr %t212, i64 %t213)
  %t227 = getelementptr i8, ptr %t226, i64 %t213
  call void @olang_textcopy(ptr %t227, ptr %t215, i64 %t216)
  %t228 = getelementptr i8, ptr %t227, i64 %t216
  call void @olang_textcopy(ptr %t228, ptr %t219, i64 %t220)
  %t229 = getelementptr i8, ptr %t228, i64 %t220
  call void @olang_textcopy(ptr %t229, ptr %t222, i64 %t223)
  %t230 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t225, 1
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t234 = extractvalue { i64, ptr } %t231, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t241 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s2, ptr %s2, ptr %t206, { i64, ptr } %t238)
  store { i64, ptr } %t241, ptr %l104
  br label %bb32
bb32:
  %t242 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  %t244 = extractvalue { i64, ptr } %t242, 1
  %t245 = mul i64 %t243, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t245)
  call void @llvm.memcpy.p0.p0.i64(ptr %t246, ptr %t244, i64 %t245, i1 false)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  %t249 = load ptr, ptr %l98, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %t249, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d334, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d335, i32 0, i32 1) }, { i64, ptr } %t248, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d213, i32 0, i32 1) })
  br label %bb33
bb33:
  %t251 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t251, ptr %l106
  br label %bb34
bb34:
  %t252 = load %"std/prelude/text:StringBuilder", ptr %l106
  store %"std/prelude/text:StringBuilder" %t252, ptr %l14
  %t253 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t254 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t257 = extractvalue { i64, ptr } %t253, 1
  %t258 = extractvalue { i64, ptr } %t253, 0
  %t259 = add i64 %t255, %t258
  %t260 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t259)
  call void @olang_textcopy(ptr %t260, ptr %t254, i64 %t255)
  %t261 = getelementptr i8, ptr %t260, i64 %t255
  call void @olang_textcopy(ptr %t261, ptr %t257, i64 %t258)
  %t262 = insertvalue { i64, ptr } undef, i64 %t259, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t260, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = extractvalue { i64, ptr } %t263, 1
  %t267 = mul i64 %t265, 1
  %t268 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t267)
  call void @llvm.memcpy.p0.p0.i64(ptr %t268, ptr %t266, i64 %t267, i1 false)
  %t269 = insertvalue { i64, ptr } undef, i64 %t265, 0
  %t270 = insertvalue { i64, ptr } %t269, ptr %t268, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l14, { i64, ptr } %t270)
  br label %bb35
bb35:
  %t273 = load ptr, ptr %l1, !tbaa !29
  %t274 = load i32, ptr %l9, !tbaa !23
  %t277 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t273, i32 %t274)
  store i32 %t277, ptr %l113
  br label %bb36
bb36:
  %t278 = load i32, ptr %l113, !tbaa !23
  store i32 %t278, ptr %l15, !tbaa !23
  %t279 = load i32, ptr %l15, !tbaa !23
  %t280 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t283 = icmp ne i32 %t279, %t280
  br i1 %t283, label %bb37, label %bb38
bb37:
  %t285 = load i32, ptr %l15, !tbaa !23
  %t286 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t289 = icmp ne i32 %t285, %t286
  store i1 %t289, ptr %l117, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb39
bb39:
  %t291 = load i1, ptr %l117, !tbaa !21
  br i1 %t291, label %bb40, label %bb41
bb40:
  %t292 = load ptr, ptr %l1, !tbaa !29
  %t293 = load i32, ptr %l15, !tbaa !23
  %t296 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t292, i32 %t293)
  store i1 %t296, ptr %l124
  br label %bb42
bb41:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb43
bb42:
  %t297 = load i1, ptr %l124, !tbaa !21
  store i1 %t297, ptr %l121, !tbaa !21
  br label %bb43
bb43:
  %t298 = load i1, ptr %l121, !tbaa !21
  br i1 %t298, label %bb44, label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s12
  store ptr %l14, ptr %l125, !tbaa !29
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load i32, ptr %l15, !tbaa !23
  %t303 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %s12, ptr %t299, i32 %t300)
  store { i64, ptr } %t303, ptr %l128
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t304 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t305 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t306 = load { i64, ptr }, ptr %l128, !tbaa !27
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = extractvalue { i64, ptr } %t306, 0
  %t309 = add i64 %t305, %t308
  %t310 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t309)
  call void @olang_textcopy(ptr %t310, ptr %t304, i64 %t305)
  %t311 = getelementptr i8, ptr %t310, i64 %t305
  call void @olang_textcopy(ptr %t311, ptr %t307, i64 %t308)
  %t312 = insertvalue { i64, ptr } undef, i64 %t309, 0
  %t313 = insertvalue { i64, ptr } %t312, ptr %t310, 1
  %t315 = extractvalue { i64, ptr } %t313, 0
  %t316 = extractvalue { i64, ptr } %t313, 1
  %t317 = mul i64 %t315, 1
  %t318 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t317)
  call void @llvm.memcpy.p0.p0.i64(ptr %t318, ptr %t316, i64 %t317, i1 false)
  %t319 = insertvalue { i64, ptr } undef, i64 %t315, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  %t321 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s12, ptr %t321, { i64, ptr } %t320)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s12)
  br label %bb48
bb48:
  store i64 0, ptr %l16, !tbaa !24
  %t323 = load ptr, ptr %l1, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t324
  %t325 = getelementptr { i64, [4 x i64] }, ptr %t324, i32 0, i32 0
  store i64 0, ptr %t325
  %t326 = load { i64, [4 x i64] }, ptr %t324
  store { i64, [7 x i64] } zeroinitializer, ptr %t327
  %t328 = getelementptr { i64, [7 x i64] }, ptr %t327, i32 0, i32 0
  store i64 2, ptr %t328
  %t330 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t326, 0
  %t331 = getelementptr { i64, [7 x i64] }, ptr %t327, i32 0, i32 1
  store { { i64, [4 x i64] } } %t330, ptr %t331
  %t332 = load { i64, [7 x i64] }, ptr %t327
  %t333 = load i32, ptr %l9, !tbaa !23
  %t337 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t323, { i64, [7 x i64] } %t332, i32 %t333)
  store i64 %t337, ptr %l135
  br label %bb49
bb49:
  %t338 = load i64, ptr %l135, !tbaa !24
  store i64 %t338, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t339 = load i64, ptr %l17, !tbaa !24
  %t340 = load i64, ptr %l16, !tbaa !24
  %t343 = icmp sgt i64 %t339, %t340
  br i1 %t343, label %bb50, label %bb51
bb50:
  %t345 = load i64, ptr %l18, !tbaa !24
  %t347 = icmp sgt i64 %t345, 0
  br i1 %t347, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb55
bb52:
  %t349 = load i64, ptr %l17, !tbaa !24
  %t350 = load i64, ptr %l16, !tbaa !24
  %t353 = sub i64 %t349, %t350
  %t354 = load i64, ptr %l18, !tbaa !24
  %t357 = add i64 %t353, %t354
  %t359 = sub i64 %t357, 1
  %t360 = load i64, ptr %l18, !tbaa !24
  %t363 = sdiv i64 %t359, %t360
  store i64 %t363, ptr %l142, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb54
bb54:
  %t365 = load i64, ptr %l142, !tbaa !24
  store i64 %t365, ptr %l139, !tbaa !24
  br label %bb55
bb55:
  %t366 = load i64, ptr %l139, !tbaa !24
  store i64 %t366, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s15
  %t367 = load i64, ptr %l20, !tbaa !24
  %t368 = load i64, ptr %l19, !tbaa !24
  %t371 = icmp slt i64 %t367, %t368
  %t373 = xor i1 %t371, true
  br i1 %t373, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s15)
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t375 = load i64, ptr %l16, !tbaa !24
  %t376 = load i64, ptr %l20, !tbaa !24
  %t377 = load i64, ptr %l18, !tbaa !24
  %t380 = mul i64 %t376, %t377
  %t383 = add i64 %t375, %t380
  store i64 %t383, ptr %l21, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s15, ptr %l14, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d338, i32 0, i32 1) })
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s15)
  br label %bb61
bb61:
  %t386 = load i64, ptr %l20, !tbaa !24
  %t388 = add i64 %t386, 1
  store i64 %t388, ptr %l20, !tbaa !24
  br label %bb56
bb62:
  %t390 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t392 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t390, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d339, i32 0, i32 1) })
  store i1 %t392, ptr %l164
  br label %bb63
bb63:
  %t393 = load i1, ptr %l164, !tbaa !21
  br i1 %t393, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s17
  %t394 = load ptr, ptr %l0, !tbaa !29
  store ptr %t394, ptr %l165, !tbaa !29
  %t395 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t395, ptr %l166, !tbaa !27
  %t397 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s17, ptr %l14)
  store { i64, ptr } %t397, ptr %l168
  br label %bb66
bb65:
  store %olang.scope zeroinitializer, ptr %s19
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l171, !tbaa !29
  %t399 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t399, ptr %l172, !tbaa !27
  %t400 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t400, ptr %l173, !tbaa !27
  %t402 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s19, ptr %l14)
  store { i64, ptr } %t402, ptr %l175
  br label %bb68
bb66:
  %t403 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t405 = load { i64, ptr }, ptr %l166, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = add i64 %t404, %t407
  %t409 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 1
  %t410 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d341, i32 0, i32 1) }, 0
  %t411 = add i64 %t408, %t410
  %t412 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t412, 1
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t415 = add i64 %t411, %t414
  %t416 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d342, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d342, i32 0, i32 1) }, 0
  %t418 = add i64 %t415, %t417
  %t419 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t418)
  call void @olang_textcopy(ptr %t419, ptr %t403, i64 %t404)
  %t420 = getelementptr i8, ptr %t419, i64 %t404
  call void @olang_textcopy(ptr %t420, ptr %t406, i64 %t407)
  %t421 = getelementptr i8, ptr %t420, i64 %t407
  call void @olang_textcopy(ptr %t421, ptr %t409, i64 %t410)
  %t422 = getelementptr i8, ptr %t421, i64 %t410
  call void @olang_textcopy(ptr %t422, ptr %t413, i64 %t414)
  %t423 = getelementptr i8, ptr %t422, i64 %t414
  call void @olang_textcopy(ptr %t423, ptr %t416, i64 %t417)
  %t424 = insertvalue { i64, ptr } undef, i64 %t418, 0
  %t425 = insertvalue { i64, ptr } %t424, ptr %t419, 1
  %t427 = extractvalue { i64, ptr } %t425, 0
  %t428 = extractvalue { i64, ptr } %t425, 1
  %t429 = mul i64 %t427, 1
  %t430 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t429)
  call void @llvm.memcpy.p0.p0.i64(ptr %t430, ptr %t428, i64 %t429, i1 false)
  %t431 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t430, 1
  %t433 = load ptr, ptr %l165, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s17, ptr %t433, { i64, ptr } %t432)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s17)
  br label %bb70
bb68:
  %t435 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t436 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t437 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = add i64 %t436, %t439
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d344, i32 0, i32 1) }, 0
  %t443 = add i64 %t440, %t442
  %t444 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t445 = extractvalue { i64, ptr } %t444, 1
  %t446 = extractvalue { i64, ptr } %t444, 0
  %t447 = add i64 %t443, %t446
  %t448 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 1
  %t449 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d345, i32 0, i32 1) }, 0
  %t450 = add i64 %t447, %t449
  %t451 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t452 = extractvalue { i64, ptr } %t451, 1
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = add i64 %t450, %t453
  %t455 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 1
  %t456 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d346, i32 0, i32 1) }, 0
  %t457 = add i64 %t454, %t456
  %t458 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t457)
  call void @olang_textcopy(ptr %t458, ptr %t435, i64 %t436)
  %t459 = getelementptr i8, ptr %t458, i64 %t436
  call void @olang_textcopy(ptr %t459, ptr %t438, i64 %t439)
  %t460 = getelementptr i8, ptr %t459, i64 %t439
  call void @olang_textcopy(ptr %t460, ptr %t441, i64 %t442)
  %t461 = getelementptr i8, ptr %t460, i64 %t442
  call void @olang_textcopy(ptr %t461, ptr %t445, i64 %t446)
  %t462 = getelementptr i8, ptr %t461, i64 %t446
  call void @olang_textcopy(ptr %t462, ptr %t448, i64 %t449)
  %t463 = getelementptr i8, ptr %t462, i64 %t449
  call void @olang_textcopy(ptr %t463, ptr %t452, i64 %t453)
  %t464 = getelementptr i8, ptr %t463, i64 %t453
  call void @olang_textcopy(ptr %t464, ptr %t455, i64 %t456)
  %t465 = insertvalue { i64, ptr } undef, i64 %t457, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t458, 1
  %t468 = extractvalue { i64, ptr } %t466, 0
  %t469 = extractvalue { i64, ptr } %t466, 1
  %t470 = mul i64 %t468, 1
  %t471 = call ptr @__olang_scope_alloc(ptr %s19, i64 %t470)
  call void @llvm.memcpy.p0.p0.i64(ptr %t471, ptr %t469, i64 %t470, i1 false)
  %t472 = insertvalue { i64, ptr } undef, i64 %t468, 0
  %t473 = insertvalue { i64, ptr } %t472, ptr %t471, 1
  %t474 = load ptr, ptr %l171, !tbaa !29
  %t476 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s19, ptr %s19, ptr %t474, { i64, ptr } %t473)
  store { i64, ptr } %t476, ptr %l178
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s19)
  br label %bb70
bb70:
  %t477 = load ptr, ptr %l0, !tbaa !29
  %t478 = load i64, ptr %l4, !tbaa !24
  %t479 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d347, i32 0, i32 1) }, 1
  %t480 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d347, i32 0, i32 1) }, 0
  %t482 = call i64 @__olang_fmt_i64(ptr null, i64 %t478)
  %t483 = add i64 %t480, %t482
  %t484 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t483)
  call void @olang_textcopy(ptr %t484, ptr %t479, i64 %t480)
  %t485 = getelementptr i8, ptr %t484, i64 %t480
  %t486 = call i64 @__olang_fmt_i64(ptr %t485, i64 %t478)
  %t487 = insertvalue { i64, ptr } undef, i64 %t483, 0
  %t488 = insertvalue { i64, ptr } %t487, ptr %t484, 1
  %t490 = extractvalue { i64, ptr } %t488, 0
  %t491 = extractvalue { i64, ptr } %t488, 1
  %t492 = mul i64 %t490, 1
  %t493 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t492)
  call void @llvm.memcpy.p0.p0.i64(ptr %t493, ptr %t491, i64 %t492, i1 false)
  %t494 = insertvalue { i64, ptr } undef, i64 %t490, 0
  %t495 = insertvalue { i64, ptr } %t494, ptr %t493, 1
  %t498 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s2, ptr %s2, ptr %s2, ptr %s2, ptr %t477, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d348, i32 0, i32 1) }, { i64, ptr } %t495, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  store { i64, ptr } %t498, ptr %l183
  br label %bb71
bb71:
  %t499 = load { i64, ptr }, ptr %l183, !tbaa !27
  store { i64, ptr } %t499, ptr %l22, !tbaa !27
  %t500 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t500, ptr %l184
  br label %bb72
bb72:
  %t501 = load %"std/prelude/text:StringBuilder", ptr %l184
  store %"std/prelude/text:StringBuilder" %t501, ptr %l23
  %t502 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t503 = load i64, ptr %l4, !tbaa !24
  %t504 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d349, i32 0, i32 1) }, 1
  %t505 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d349, i32 0, i32 1) }, 0
  %t507 = extractvalue { i64, ptr } %t502, 1
  %t508 = extractvalue { i64, ptr } %t502, 0
  %t509 = add i64 %t505, %t508
  %t510 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d350, i32 0, i32 1) }, 1
  %t511 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d350, i32 0, i32 1) }, 0
  %t512 = add i64 %t509, %t511
  %t514 = call i64 @__olang_fmt_i64(ptr null, i64 %t503)
  %t515 = add i64 %t512, %t514
  %t516 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d351, i32 0, i32 1) }, 1
  %t517 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d351, i32 0, i32 1) }, 0
  %t518 = add i64 %t515, %t517
  %t519 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t518)
  call void @olang_textcopy(ptr %t519, ptr %t504, i64 %t505)
  %t520 = getelementptr i8, ptr %t519, i64 %t505
  call void @olang_textcopy(ptr %t520, ptr %t507, i64 %t508)
  %t521 = getelementptr i8, ptr %t520, i64 %t508
  call void @olang_textcopy(ptr %t521, ptr %t510, i64 %t511)
  %t522 = getelementptr i8, ptr %t521, i64 %t511
  %t523 = call i64 @__olang_fmt_i64(ptr %t522, i64 %t503)
  %t524 = getelementptr i8, ptr %t522, i64 %t514
  call void @olang_textcopy(ptr %t524, ptr %t516, i64 %t517)
  %t525 = insertvalue { i64, ptr } undef, i64 %t518, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t519, 1
  %t528 = extractvalue { i64, ptr } %t526, 0
  %t529 = extractvalue { i64, ptr } %t526, 1
  %t530 = mul i64 %t528, 1
  %t531 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t530)
  call void @llvm.memcpy.p0.p0.i64(ptr %t531, ptr %t529, i64 %t530, i1 false)
  %t532 = insertvalue { i64, ptr } undef, i64 %t528, 0
  %t533 = insertvalue { i64, ptr } %t532, ptr %t531, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l23, { i64, ptr } %t533)
  br label %bb73
bb73:
  store i64 1, ptr %l24, !tbaa !24
  %t536 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l3, i32 0, i32 1
  %t537 = load i64, ptr %t536, !tbaa !24
  store i64 %t537, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t539 = load i64, ptr %l25, !tbaa !24
  %t540 = load i64, ptr %l24, !tbaa !24
  %t543 = icmp sgt i64 %t539, %t540
  br i1 %t543, label %bb74, label %bb75
bb74:
  %t545 = load i64, ptr %l26, !tbaa !24
  %t547 = icmp sgt i64 %t545, 0
  br i1 %t547, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l194, !tbaa !24
  br label %bb79
bb76:
  %t549 = load i64, ptr %l25, !tbaa !24
  %t550 = load i64, ptr %l24, !tbaa !24
  %t553 = sub i64 %t549, %t550
  %t554 = load i64, ptr %l26, !tbaa !24
  %t557 = add i64 %t553, %t554
  %t559 = sub i64 %t557, 1
  %t560 = load i64, ptr %l26, !tbaa !24
  %t563 = sdiv i64 %t559, %t560
  store i64 %t563, ptr %l197, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb78
bb78:
  %t565 = load i64, ptr %l197, !tbaa !24
  store i64 %t565, ptr %l194, !tbaa !24
  br label %bb79
bb79:
  %t566 = load i64, ptr %l194, !tbaa !24
  store i64 %t566, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb80
bb80:
  store %olang.scope zeroinitializer, ptr %s24
  %t567 = load i64, ptr %l28, !tbaa !24
  %t568 = load i64, ptr %l27, !tbaa !24
  %t571 = icmp slt i64 %t567, %t568
  %t573 = xor i1 %t571, true
  br i1 %t573, label %bb81, label %bb82
bb81:
  call void @__olang_scope_close(ptr %s24)
  br label %bb86
bb82:
  br label %bb83
bb83:
  %t575 = load i64, ptr %l24, !tbaa !24
  %t576 = load i64, ptr %l28, !tbaa !24
  %t577 = load i64, ptr %l26, !tbaa !24
  %t580 = mul i64 %t576, %t577
  %t583 = add i64 %t575, %t580
  store i64 %t583, ptr %l29, !tbaa !24
  %t585 = load i64, ptr %l29, !tbaa !24
  %t586 = load i64, ptr %l4, !tbaa !24
  %t587 = load i64, ptr %l29, !tbaa !24
  %t588 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d352, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d352, i32 0, i32 1) }, 0
  %t591 = call i64 @__olang_fmt_i64(ptr null, i64 %t585)
  %t592 = add i64 %t589, %t591
  %t593 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d353, i32 0, i32 1) }, 1
  %t594 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d353, i32 0, i32 1) }, 0
  %t595 = add i64 %t592, %t594
  %t597 = call i64 @__olang_fmt_i64(ptr null, i64 %t586)
  %t598 = add i64 %t595, %t597
  %t599 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d354, i32 0, i32 1) }, 1
  %t600 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d354, i32 0, i32 1) }, 0
  %t601 = add i64 %t598, %t600
  %t603 = call i64 @__olang_fmt_i64(ptr null, i64 %t587)
  %t604 = add i64 %t601, %t603
  %t605 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t604)
  call void @olang_textcopy(ptr %t605, ptr %t588, i64 %t589)
  %t606 = getelementptr i8, ptr %t605, i64 %t589
  %t607 = call i64 @__olang_fmt_i64(ptr %t606, i64 %t585)
  %t608 = getelementptr i8, ptr %t606, i64 %t591
  call void @olang_textcopy(ptr %t608, ptr %t593, i64 %t594)
  %t609 = getelementptr i8, ptr %t608, i64 %t594
  %t610 = call i64 @__olang_fmt_i64(ptr %t609, i64 %t586)
  %t611 = getelementptr i8, ptr %t609, i64 %t597
  call void @olang_textcopy(ptr %t611, ptr %t599, i64 %t600)
  %t612 = getelementptr i8, ptr %t611, i64 %t600
  %t613 = call i64 @__olang_fmt_i64(ptr %t612, i64 %t587)
  %t614 = insertvalue { i64, ptr } undef, i64 %t604, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr %t605, 1
  %t617 = extractvalue { i64, ptr } %t615, 0
  %t618 = extractvalue { i64, ptr } %t615, 1
  %t619 = mul i64 %t617, 1
  %t620 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t619)
  call void @llvm.memcpy.p0.p0.i64(ptr %t620, ptr %t618, i64 %t619, i1 false)
  %t621 = insertvalue { i64, ptr } undef, i64 %t617, 0
  %t622 = insertvalue { i64, ptr } %t621, ptr %t620, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s24, ptr %l23, { i64, ptr } %t622)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s24)
  br label %bb85
bb85:
  %t625 = load i64, ptr %l28, !tbaa !24
  %t627 = add i64 %t625, 1
  store i64 %t627, ptr %l28, !tbaa !24
  br label %bb80
bb86:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s2, ptr %s2, ptr %l23, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d355, i32 0, i32 1) })
  br label %bb87
bb87:
  %t630 = load ptr, ptr %l0, !tbaa !29
  store ptr %t630, ptr %l224, !tbaa !29
  %t632 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s2, ptr %l23)
  store { i64, ptr } %t632, ptr %l226
  br label %bb88
bb88:
  %t633 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t634 = extractvalue { i64, ptr } %t633, 0
  %t635 = extractvalue { i64, ptr } %t633, 1
  %t636 = mul i64 %t634, 1
  %t637 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t636)
  call void @llvm.memcpy.p0.p0.i64(ptr %t637, ptr %t635, i64 %t636, i1 false)
  %t638 = insertvalue { i64, ptr } undef, i64 %t634, 0
  %t639 = insertvalue { i64, ptr } %t638, ptr %t637, 1
  %t640 = load ptr, ptr %l224, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s2, ptr %t640, { i64, ptr } %t639)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s2)
  br label %bb90
bb90:
  br label %bb2
bb91:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ehexByte(ptr %v0, i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d356, i32 0, i32 1) }, ptr %l2, !tbaa !27
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t3 = load i8, ptr %l0, !tbaa !22
  %t5 = lshr i8 %t3, 4
  %t7 = zext i8 %t5 to i64
  %t9 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i8, ptr %t10, i64 %t7
  %t12 = load i8, ptr %t11, !tbaa !32
  %t13 = load i8, ptr %l0, !tbaa !22
  %t15 = and i8 %t13, 15
  %t17 = zext i8 %t15 to i64
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d357, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d357, i32 0, i32 1) }, 0
  %t26 = add i64 %t24, 1
  %t28 = add i64 %t26, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = getelementptr i8, ptr %t29, i64 %t24
  store i8 %t12, ptr %t30
  %t31 = getelementptr i8, ptr %t30, i64 1
  store i8 %t22, ptr %t31
  %t32 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t29, 1
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2etypeDelim(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = icmp eq i8 %t1, 60
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = icmp eq i8 %t5, 44
  store i1 %t7, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 32
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t15 = load i8, ptr %l0, !tbaa !22
  %t17 = icmp eq i8 %t15, 40
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t20 = load i8, ptr %l0, !tbaa !22
  %t22 = icmp eq i8 %t20, 91
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t25 = load i8, ptr %l0, !tbaa !22
  %t27 = icmp eq i8 %t25, 38
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t30 = load i8, ptr %l0, !tbaa !22
  %t32 = icmp eq i8 %t30, 63
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t34 = load i1, ptr %l18, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
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
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d2 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c"!DIDerivedType(tag: DW_TAG_pointer_type, baseType: " }>, align 8
@.d3 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", size: 64)" }>, align 8
@.d4 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22" }>, align 8
@.d5 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d6 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c", size: 64, offset: 0)" }>, align 8
@.d7 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"!DIDerivedType(tag: DW_TAG_member, name: \22" }>, align 8
@.d8 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"\22, baseType: !" }>, align 8
@.d9 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c", size: 64, offset: 64)" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"!{!" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", !" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d13 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"!DICompositeType(tag: DW_TAG_structure_type, name: \22" }>, align 8
@.d14 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"\22, size: 128, elements: !" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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

@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e54 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e55 = weak hidden constant i1 false
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"malloc" }>, align 8
@.d20 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"ptr @malloc(i64)" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"mkdir" }>, align 8
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"i32 @mkdir(ptr, i32)" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"abort" }>, align 8
@.d24 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"void @abort() noreturn" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d26 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"\0Adefine i32 @LLVMFuzzerInitialize(ptr %pargc, ptr %pargv) #0 {\0Aentry:\0A" }>, align 8
@.d27 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c"  %k = alloca i64\0A  %jb = alloca [200 x i8], align 16\0A" }>, align 8
@.d28 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"  %argc = load i32, ptr %pargc\0A  %argv = load ptr, ptr %pargv\0A" }>, align 8
@.d29 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  store i32 %argc, ptr @__olang_argc\0A  store ptr %argv, ptr @__olang_argv\0A" }>, align 8
@.d30 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  store ptr " }>, align 8
@.d31 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c", ptr @__olang_test_file\0A  store ptr " }>, align 8
@.d32 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c", ptr @__olang_test_name\0A" }>, align 8
@.d33 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"  call void @__olang_thread_init()\0A" }>, align 8
@.d34 = private constant <{ i64, [90 x i8] }> <{ i64 0, [90 x i8] c"  store volatile i64 0, ptr %k\0A  br label %gloop\0Agloop:\0A  %gk = load volatile i64, ptr %k\0A" }>, align 8
@.d35 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"  %gm = icmp slt i64 %gk, " }>, align 8
@.d36 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"\0A  br i1 %gm, label %gbody, label %gdone\0Agbody:\0A" }>, align 8
@.d37 = private constant <{ i64, [75 x i8] }> <{ i64 0, [75 x i8] c"  store ptr %jb, ptr @__olang_jmp_target\0A  %gj = call i32 @setjmp(ptr %jb)\0A" }>, align 8
@.d38 = private constant <{ i64, [107 x i8] }> <{ i64 0, [107 x i8] c"  %gz = icmp eq i32 %gj, 0\0A  br i1 %gz, label %grun, label %gnext\0Agrun:\0A  %gk2 = load volatile i64, ptr %k\0A" }>, align 8
@.d39 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  %gp = getelementptr [" }>, align 8
@.d40 = private constant <{ i64, [51 x i8] }> <{ i64 0, [51 x i8] c" x ptr], ptr @olang.harness.inits, i64 0, i64 %gk2\0A" }>, align 8
@.d41 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"  %gf = load ptr, ptr %gp\0A  call void %gf()\0A  br label %gnext\0Agnext:\0A" }>, align 8
@.d42 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"  %gk3 = load volatile i64, ptr %k\0A  %gk4 = add i64 %gk3, 1\0A  store volatile i64 %gk4, ptr %k\0A" }>, align 8
@.d43 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"  br label %gloop\0Agdone:\0A  store ptr null, ptr @__olang_jmp_target\0A" }>, align 8
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
@.d44 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  call i32 @mkdir(ptr " }>, align 8
@.d45 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i32 493)\0A" }>, align 8
@.d46 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  call i32 @mkdir(ptr " }>, align 8
@.d47 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i32 493)\0A" }>, align 8
@.d48 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"  %n = add i32 %argc, 3\0A  %slots = add i32 %argc, 4\0A  %w = sext i32 %slots to i64\0A" }>, align 8
@.d49 = private constant <{ i64, [91 x i8] }> <{ i64 0, [91 x i8] c"  %bytes = mul i64 %w, 8\0A  %mem = call ptr @malloc(i64 %bytes)\0A  %a0 = load ptr, ptr %argv\0A" }>, align 8
@.d50 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"  store ptr %a0, ptr %mem\0A" }>, align 8
@.d51 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"  %m1 = getelementptr ptr, ptr %mem, i64 1\0A  store ptr " }>, align 8
@.d52 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %m1\0A" }>, align 8
@.d53 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"  %m2 = getelementptr ptr, ptr %mem, i64 2\0A  store ptr " }>, align 8
@.d54 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %m2\0A" }>, align 8
@.d55 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"-artifact_prefix=" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d57 = private constant <{ i64, [55 x i8] }> <{ i64 0, [55 x i8] c"  %m3 = getelementptr ptr, ptr %mem, i64 3\0A  store ptr " }>, align 8
@.d58 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %m3\0A" }>, align 8
@.d59 = private constant <{ i64, [87 x i8] }> <{ i64 0, [87 x i8] c"  br label %pre\0Apre:\0A  br label %copy\0Acopy:\0A  %i = phi i32 [ 1, %pre ], [ %i2, %body ]\0A" }>, align 8
@.d60 = private constant <{ i64, [78 x i8] }> <{ i64 0, [78 x i8] c"  %more = icmp slt i32 %i, %argc\0A  br i1 %more, label %body, label %end\0Abody:\0A" }>, align 8
@.d61 = private constant <{ i64, [100 x i8] }> <{ i64 0, [100 x i8] c"  %iw = sext i32 %i to i64\0A  %src = getelementptr ptr, ptr %argv, i64 %iw\0A  %v = load ptr, ptr %src\0A" }>, align 8
@.d62 = private constant <{ i64, [94 x i8] }> <{ i64 0, [94 x i8] c"  %jw = add i64 %iw, 3\0A  %dst = getelementptr ptr, ptr %mem, i64 %jw\0A  store ptr %v, ptr %dst\0A" }>, align 8
@.d63 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"  %i2 = add i32 %i, 1\0A  br label %copy\0Aend:\0A" }>, align 8
@.d64 = private constant <{ i64, [102 x i8] }> <{ i64 0, [102 x i8] c"  %nw = sext i32 %n to i64\0A  %last = getelementptr ptr, ptr %mem, i64 %nw\0A  store ptr null, ptr %last\0A" }>, align 8
@.d65 = private constant <{ i64, [71 x i8] }> <{ i64 0, [71 x i8] c"  store i32 %n, ptr %pargc\0A  store ptr %mem, ptr %pargv\0A  ret i32 0\0A}\0A\0A" }>, align 8
@.d66 = private constant <{ i64, [105 x i8] }> <{ i64 0, [105 x i8] c"define i32 @LLVMFuzzerTestOneInput(ptr %data, i64 %size) #0 {\0Aentry:\0A  %jb = alloca [200 x i8], align 16\0A" }>, align 8
@.d67 = private constant <{ i64, [84 x i8] }> <{ i64 0, [84 x i8] c"  store ptr %data, ptr @__olang_fuzz_data\0A  store i64 %size, ptr @__olang_fuzz_size\0A" }>, align 8
@.d68 = private constant <{ i64, [86 x i8] }> <{ i64 0, [86 x i8] c"  %top = load ptr, ptr @__olang_unwind_top\0A  store ptr %top, ptr @__olang_unwind_mark\0A" }>, align 8
@.d69 = private constant <{ i64, [74 x i8] }> <{ i64 0, [74 x i8] c"  store ptr %jb, ptr @__olang_jmp_target\0A  %j = call i32 @setjmp(ptr %jb)\0A" }>, align 8
@.d70 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"  %z = icmp eq i32 %j, 0\0A  br i1 %z, label %run, label %bad\0Arun:\0A" }>, align 8
@.d71 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  call void " }>, align 8
@.d72 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"()\0A  store ptr null, ptr @__olang_jmp_target\0A  ret i32 0\0Abad:\0A" }>, align 8
@.d73 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"  call void @__olang_test_failed(ptr " }>, align 8
@.d74 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c")\0A  call i32 @fflush(ptr null)\0A  call void @abort()\0A" }>, align 8
@.d75 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"  unreachable\0A}\0A\0A" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d76 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"main" }>, align 8
@.d77 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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

declare void @__olang_check_failed(ptr) cold noreturn
@.d78 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  %rhi = lshr i32 " }>, align 8
@.d79 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", 16\0A  %rw = and i32 " }>, align 8
@.d80 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", 65535\0A" }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d82 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %rh" }>, align 8
@.d83 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" = icmp eq i32 %rhi, " }>, align 8
@.d84 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d85 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %rp" }>, align 8
@.d86 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = select i1 %rh" }>, align 8
@.d87 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i32 " }>, align 8
@.d88 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d89 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%rp" }>, align 8
@.d90 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"  %rs = shl i32 " }>, align 8
@.d91 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c", 16\0A  %rv2 = or i32 %rs, %rw\0A" }>, align 8
@.d92 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%rv2" }>, align 8
@.d93 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d94 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a place with no base" }>, align 8
@.d95 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d96 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d97 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d98 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d100 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d101 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d102 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3afnEm_2e15 = weak hidden constant i1 false
@.d104 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"bitcast bfloat " }>, align 8
@.d105 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i16" }>, align 8
@.d106 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"oeq" }>, align 8
@.d107 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"une" }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"olt" }>, align 8
@.d109 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ole" }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ogt" }>, align 8
@.d111 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"oge" }>, align 8
@.d112 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fcmp " }>, align 8
@.d113 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d114 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d115 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d116 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"ne" }>, align 8
@.d117 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ult" }>, align 8
@.d118 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"slt" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ule" }>, align 8
@.d120 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sle" }>, align 8
@.d121 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ugt" }>, align 8
@.d122 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sgt" }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uge" }>, align 8
@.d124 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sge" }>, align 8
@.d125 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d126 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d127 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ i64, ptr }" }>, align 8
@.d128 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"i64 " }>, align 8
@.d129 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d130 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d131 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d132 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d133 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d134 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d135 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d136 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d137 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d138 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d139 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d140 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d141 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d142 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d143 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d144 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp eq ptr " }>, align 8
@.d145 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d146 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"and i1 " }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d148 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"xor i1 " }>, align 8
@.d149 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", true" }>, align 8
@.d150 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"icmp " }>, align 8
@.d151 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d152 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d153 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"trunc " }>, align 8
@.d154 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d155 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d156 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d157 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d158 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d159 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d160 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d161 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d162 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"zext " }>, align 8
@.d163 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"sext " }>, align 8
@.d164 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d165 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d166 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d167 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp slt i64 " }>, align 8
@.d168 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d169 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"sub i64 0, " }>, align 8
@.d170 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d171 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d172 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_int_bf16" }>, align 8
@.d173 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call bfloat @__olang_int_bf16(i64 " }>, align 8
@.d174 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", i1 " }>, align 8
@.d175 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d177 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"uitofp " }>, align 8
@.d178 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"sitofp " }>, align 8
@.d179 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d180 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" to double" }>, align 8
@.d181 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"llvm.arithmetic.fence.f64" }>, align 8
@.d182 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c"double @llvm.arithmetic.fence.f64(double)" }>, align 8
@.d183 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"call double @llvm.arithmetic.fence.f64(double " }>, align 8
@.d184 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d185 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"fptrunc double " }>, align 8
@.d186 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" to half" }>, align 8
@.d187 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"uitofp " }>, align 8
@.d188 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"sitofp " }>, align 8
@.d189 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d190 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d191 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"fptoui " }>, align 8
@.d192 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"fptosi " }>, align 8
@.d193 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d194 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d195 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d196 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d197 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d198 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"fptrunc float " }>, align 8
@.d199 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" to half" }>, align 8
@.d200 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d201 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"bfloat" }>, align 8
@.d202 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d203 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"half" }>, align 8
@.d204 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"fpext half " }>, align 8
@.d205 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" to float" }>, align 8
@.d206 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fptrunc " }>, align 8
@.d207 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d208 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" to bfloat" }>, align 8
@.d209 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"fpext " }>, align 8
@.d210 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"fptrunc " }>, align 8
@.d211 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d212 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d213 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d214 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d215 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"a conversion from " }>, align 8
@.d216 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" to " }>, align 8
@.d217 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d218 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d219 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d220 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", ptr" }>, align 8
@.d221 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d222 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d223 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d224 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d225 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d226 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_empty_array" }>, align 8
@.d227 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d228 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"getelementptr (i8, ptr @__olang_empty_array, i64 64)" }>, align 8
@.d229 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_san_alloc_own" }>, align 8
@.d230 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_san_alloc_own(ptr " }>, align 8
@.d231 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d232 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d233 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d234 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d235 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d236 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d237 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d238 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fill" }>, align 8
@.d239 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"fillb" }>, align 8
@.d240 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"filld" }>, align 8
@.d241 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d242 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d243 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"icmp slt i64 " }>, align 8
@.d244 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d245 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"br i1 " }>, align 8
@.d246 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", label %" }>, align 8
@.d247 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d248 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d249 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d250 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d251 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"add i64 " }>, align 8
@.d252 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d253 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d254 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"br label %" }>, align 8
@.d255 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"add" }>, align 8
@.d256 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"sub" }>, align 8
@.d257 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"mul" }>, align 8
@.d258 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"u" }>, align 8
@.d259 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d260 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"llvm." }>, align 8
@.d261 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c".with.overflow.i" }>, align 8
@.d262 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d263 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i1 } @" }>, align 8
@.d264 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d265 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d266 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d267 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"call { " }>, align 8
@.d268 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i1 } @" }>, align 8
@.d269 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d271 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d272 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d273 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"extractvalue { " }>, align 8
@.d274 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", i1 } " }>, align 8
@.d275 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d276 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d277 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d278 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" 1, " }>, align 8
@.d279 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d280 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d281 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d282 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d283 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d284 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c", -1" }>, align 8
@.d285 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"and i1 " }>, align 8
@.d286 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d287 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp ne " }>, align 8
@.d288 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d289 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d290 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"shl " }>, align 8
@.d291 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" 1, " }>, align 8
@.d292 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp eq " }>, align 8
@.d293 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d294 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d295 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"icmp ne " }>, align 8
@.d296 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d297 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d298 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d299 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"icmp slt " }>, align 8
@.d300 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d301 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d302 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"icmp slt " }>, align 8
@.d303 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d304 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d305 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"or i1 " }>, align 8
@.d306 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d307 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"an overflow test of " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 52}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 i64 10, label %bb12 i64 11, label %bb13 i64 12, label %bb14 i64 13, label %bb15 i64 14, label %bb16 i64 15, label %bb17 i64 16, label %bb18 i64 17, label %bb19 i64 18, label %bb20 i64 19, label %bb21 i64 20, label %bb22 i64 21, label %bb23 i64 22, label %bb24 i64 23, label %bb25 i64 24, label %bb26 i64 25, label %bb27 i64 26, label %bb28 i64 27, label %bb29 i64 28, label %bb30 i64 29, label %bb31 i64 30, label %bb32 i64 31, label %bb33 i64 32, label %bb34 i64 33, label %bb35 i64 34, label %bb36 i64 35, label %bb37 i64 36, label %bb38 i64 37, label %bb39 i64 38, label %bb40 i64 39, label %bb41 i64 40, label %bb42 i64 41, label %bb43 i64 42, label %bb44 i64 43, label %bb45 i64 44, label %bb46 i64 45, label %bb47 i64 46, label %bb48 i64 47, label %bb49 i64 48, label %bb50 i64 49, label %bb51 i64 50, label %bb52 i64 51, label %bb53 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d358, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d358, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d359, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d359, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d360, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d360, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d361, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d361, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d362, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d362, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d363, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d363, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d364, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d364, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d365, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d365, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d366, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d366, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d367, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d367, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d368, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d368, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d369, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d369, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d370, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d370, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d371, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d371, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d372, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d372, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d373, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d373, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d374, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d374, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d375, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d375, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d376, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d376, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d377, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d377, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d378, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d378, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d379, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d379, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d380, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d380, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d381, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d381, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d382, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d382, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d383, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d383, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d384, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d384, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d385, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d385, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d386, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d386, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d387, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d387, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d388, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d388, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d389, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d389, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d390, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d390, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d391, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d391, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d392, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d392, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d393, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d393, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d394, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d394, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d395, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d395, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d396, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d397, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d397, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d398, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d398, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d399, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d399, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d400, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d400, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d401, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d401, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d402, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d402, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d403, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d403, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d404, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d404, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d405, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d405, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d406, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d406, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d407, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d407, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d408, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d408, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d409, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d409, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d308 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d309 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d310 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d311 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d312 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d313 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"getelementptr i8, ptr " }>, align 8
@.d314 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d315 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d316 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d317 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d318 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d319 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d320 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d321 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%v" }>, align 8
@.d322 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d323 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"undef" }>, align 8
@.d324 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"wend" }>, align 8
@.d325 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%wh" }>, align 8
@.d326 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d327 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%wc" }>, align 8
@.d328 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d329 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @llvm.coro.promise(ptr " }>, align 8
@.d330 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c", i32 8, i1 false)" }>, align 8
@.d331 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"getelementptr { " }>, align 8
@.d332 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 }, ptr " }>, align 8
@.d333 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d334 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d335 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"2" }>, align 8
@.d336 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d337 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d338 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr null" }>, align 8
@.d339 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d340 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call void " }>, align 8
@.d341 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d342 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d343 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d344 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d345 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d346 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d347 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%ws" }>, align 8
@.d348 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d349 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"switch i32 " }>, align 8
@.d350 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %wend" }>, align 8
@.d351 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".c0 [" }>, align 8
@.d352 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" i32 " }>, align 8
@.d353 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", label %wend" }>, align 8
@.d354 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@.d355 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" ]" }>, align 8
@.d356 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"0123456789ABCDEF" }>, align 8
@.d357 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\5C" }>, align 8
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
@.d358 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
@.d359 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d360 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d361 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d362 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d363 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d364 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d365 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d366 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d367 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d368 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d369 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d370 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d371 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d372 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d373 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d374 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d375 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d376 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d377 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d378 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d379 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d380 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d381 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d382 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d383 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d384 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d385 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d386 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d387 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d388 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d389 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d390 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d391 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d392 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d393 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d394 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d395 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d396 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d397 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d398 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d399 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d400 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d401 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d402 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d403 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d404 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d405 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d406 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d407 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d408 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d409 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgType(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgTypeName(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2eescape(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2efuzzSelected(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2efuzzCorpus(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2efuzzSlug(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestSource(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esanInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2edirsOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2erefs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a1eabe23aa69b04_ffa3b54339734f38 = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitemNamed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_22c0ecf0dfd2f0b7_2552f1950a299d53 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7f6c4a9881f0c77f_244fd8f3f85b2bab = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eposition(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2elocalType(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_a45e6d34f8d75be7_fb9ba052a05cfc3b = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etbaa(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edescTag(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eelemAt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_f0091f918c975106_bc2d594a86836fba = external constant [0 x i8]
@olang_loc_44ab2decf02f961d_3f31a3219a480a51 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eopaque16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_6e49a9d5ca45ccf_9b1f33edb40f22e3 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@olang_loc_d5c68ab0446e2c8e_fefb10127a7e44e2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eadapt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewideToBF16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ewidenBF16(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enarrowBF16(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i1 %a4)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { { i64, ptr }, { i64, ptr } } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecapVars(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
@olang_loc_7367d2b2f6aa7e57_e9ab633458e0a533 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eretires(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ebufferCopy(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efresh(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2elabel(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
@olang_loc_7d1301c542cf69c7_2a1b7d2f181cc69b = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2efloatOverflows(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i32 %a4)
@olang_loc_9185a77390ef7566_ed985a49c11fac9a = external constant [0 x i8]
declare i64 @compiler_2fcabi_2eSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcabi_2ePartsType(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a9fd7c50d16728b3_9acdaaf90805b30f = external constant [0 x i8]
@olang_loc_da5eecb7fc4b7f32_631a48f48836cece = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecaseRange(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edata(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4, i1 %a5)
@olang_loc_543dd1ed9b3aebc7_999a25b1d1163463 = external constant [0 x i8]
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d55aab1360531c47_f82e8a31cf9de643 = external constant [0 x i8]
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e9cd50c1ae7327e6_bc31e41603ed9ec2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslot(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
