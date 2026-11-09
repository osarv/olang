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
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:cDecls" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eExportErrors(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l36 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l53 = alloca i32
  %l56 = alloca i32
  %l59 = alloca i64
  %l61 = alloca i64
  %l66 = alloca i32
  %l70 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l17
  br label %bb1
bb1:
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t7, ptr %lp2
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t9 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %s1, ptr %t10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l19
  br label %bb2
bb2:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t14 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %t14
  store ptr %t14, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t16 = load i64, ptr %l4, !tbaa !24
  store i64 %t16, ptr %l21, !tbaa !24
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t17)
  store i64 %t19, ptr %l23
  br label %bb4
bb4:
  %t20 = load i64, ptr %l21, !tbaa !24
  %t21 = load i64, ptr %l23, !tbaa !24
  %t22 = icmp slt i64 %t20, %t21
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb39
bb6:
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t26, i64 %t27)
  store i64 %t30, ptr %l28
  br label %bb8
bb8:
  %t31 = load i64, ptr %l28, !tbaa !24
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l29, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  store ptr %t33, ptr %l30, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/emit:Emitter", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/lower:Lowerer", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t45 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t40, i64 %t31)
  store ptr %t45, ptr %l36
  br label %bb9
bb9:
  %t46 = load ptr, ptr %l36, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Body", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t50, i32 %t49)
  store i32 %t52, ptr %l39
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l29, !tbaa !29
  %t54 = load i32, ptr %l39, !tbaa !23
  %t55 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t53, i32 %t54)
  store { i64, ptr } %t55, ptr %l40
  br label %bb11
bb11:
  %t56 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t56, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t57 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  store i64 %t59, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t61 = load i64, ptr %l7, !tbaa !24
  %t62 = load i64, ptr %l8, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb13, label %bb14
bb13:
  br label %bb37
bb14:
  br label %bb15
bb15:
  %t69 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t69, ptr %l47, !tbaa !27
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i32, ptr %t73, i64 %t70
  %t75 = load i32, ptr %t74, !tbaa !33
  store i32 %t75, ptr %l9, !tbaa !23
  %t77 = load i32, ptr %l9, !tbaa !23
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  %t81 = icmp ne i32 %t77, %t78
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t84 = load i32, ptr %l9, !tbaa !23
  %t87 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t83, i32 %t84)
  store i32 %t87, ptr %l56
  br label %bb18
bb17:
  %t88 = load i32, ptr %l9, !tbaa !23
  store i32 %t88, ptr %l53, !tbaa !23
  br label %bb19
bb18:
  %t90 = load i32, ptr %l56, !tbaa !23
  store i32 %t90, ptr %l53, !tbaa !23
  br label %bb19
bb19:
  %t91 = load i32, ptr %l53, !tbaa !23
  store i32 %t91, ptr %l10, !tbaa !23
  store i1 false, ptr %l11, !tbaa !21
  %t92 = load ptr, ptr %lp2
  store ptr %t92, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t94 = load i64, ptr %l13, !tbaa !24
  store i64 %t94, ptr %l59, !tbaa !24
  %t95 = load ptr, ptr %l12, !tbaa !29
  %t97 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t95)
  store i64 %t97, ptr %l61
  br label %bb21
bb21:
  %t98 = load i64, ptr %l59, !tbaa !24
  %t99 = load i64, ptr %l61, !tbaa !24
  %t100 = icmp slt i64 %t98, %t99
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t104 = load ptr, ptr %l12, !tbaa !29
  %t105 = load i64, ptr %l13, !tbaa !24
  %t108 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t104, i64 %t105)
  store i32 %t108, ptr %l66
  br label %bb25
bb25:
  %t109 = load i32, ptr %l66, !tbaa !23
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = load i32, ptr %l10, !tbaa !23
  %t116 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t110, i32 %t109, i32 %t112)
  store i1 %t116, ptr %l70
  br label %bb26
bb26:
  %t117 = load i1, ptr %l70, !tbaa !21
  br i1 %t117, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t120 = add i64 %t118, 1
  store i64 %t120, ptr %l13, !tbaa !24
  br label %bb20
bb31:
  %t122 = load i1, ptr %l11, !tbaa !21
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb32, label %bb33
bb32:
  %t126 = load ptr, ptr %lp2
  %t127 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t126, i32 %t127)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l7, !tbaa !24
  br label %bb12
bb37:
  br label %bb38
bb38:
  %t134 = load i64, ptr %l4, !tbaa !24
  %t136 = add i64 %t134, 1
  store i64 %t136, ptr %l4, !tbaa !24
  br label %bb3
bb39:
  call void @__olang_scope_close(ptr %s1)
  %t138 = load ptr, ptr %lp2
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t138
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eattributes(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr @G_2ecompiler_2femit_2etbaaTree, !tbaa !27
  %t4 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 11
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t1, 1
  %t8 = extractvalue { i64, ptr } %t1, 0
  %t9 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 40, ptr getelementptr inbounds (<{ i64, [40 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t13 = extractvalue { i64, ptr } %t5, 1
  %t14 = extractvalue { i64, ptr } %t5, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t7, i64 %t8)
  %t20 = getelementptr i8, ptr %t19, i64 %t8
  call void @olang_textcopy(ptr %t20, ptr %t9, i64 %t10)
  %t21 = getelementptr i8, ptr %t20, i64 %t10
  call void @olang_textcopy(ptr %t21, ptr %t13, i64 %t14)
  %t22 = getelementptr i8, ptr %t21, i64 %t14
  call void @olang_textcopy(ptr %t22, ptr %t16, i64 %t17)
  %t23 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t19, 1
  store { i64, ptr } %t24, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l23 = alloca i32
  %l26 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i32
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca i1
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l49 = alloca i32
  %l51 = alloca { i64, ptr }
  %l54 = alloca i32
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l64 = alloca i1
  %l67 = alloca i32
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l115 = alloca i64
  %l116 = alloca { i64, ptr }
  %l119 = alloca i1
  %l122 = alloca i32
  %l123 = alloca ptr
  %l124 = alloca ptr
  %l127 = alloca i32
  %l128 = alloca i32
  %l129 = alloca { i64, ptr }
  %l136 = alloca i1
  %l139 = alloca ptr
  %l140 = alloca i64
  %l146 = alloca ptr
  %l147 = alloca i64
  %l156 = alloca i32
  %l159 = alloca i1
  %l160 = alloca ptr
  %l163 = alloca i32
  %l164 = alloca i32
  %l167 = alloca ptr
  %l168 = alloca ptr
  %l171 = alloca i32
  %l172 = alloca i32
  %l173 = alloca { i64, ptr }
  %l180 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca i64
  %l192 = alloca i1
  %l193 = alloca ptr
  %l196 = alloca i32
  %l197 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l205 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i64
  %l210 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l219 = alloca %"std/prelude/text:StringBuilder"
  %l225 = alloca i64
  %l228 = alloca i64
  %l247 = alloca { i64, ptr }
  %l250 = alloca i32
  %l253 = alloca i32
  %l256 = alloca ptr
  %l257 = alloca ptr
  %l260 = alloca i32
  %l262 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l268 = alloca i32
  %l269 = alloca i64
  %l272 = alloca ptr
  %l274 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l286 = alloca ptr
  %l287 = alloca i64
  %l289 = alloca { i64, ptr }
  %l291 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l297 = alloca { i64, ptr }
  %l298 = alloca i64
  %l299 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s33 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l23
  br label %bb1
bb1:
  %t11 = load i32, ptr %l23, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l27, !tbaa !29
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i32, ptr %l1, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l30
  br label %bb4
bb3:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb6
bb4:
  %t22 = load ptr, ptr %l27, !tbaa !29
  %t23 = load i32, ptr %l30, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t22, i32 %t23)
  store i32 %t24, ptr %l31
  br label %bb5
bb5:
  %t25 = load i32, ptr %l31, !range !{i32 0, i32 6}
  %t27 = trunc i64 4 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l26, !tbaa !21
  br i1 %t30, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l34, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  store ptr %t32, ptr %l35, !tbaa !29
  %t33 = load ptr, ptr %l3, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l38
  br label %bb9
bb8:
  br label %bb18
bb9:
  %t38 = load ptr, ptr %l35, !tbaa !29
  %t39 = load i32, ptr %l38, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t40, ptr %l39
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l34, !tbaa !29
  %t42 = load i32, ptr %l39, !tbaa !23
  %t43 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v0, ptr %t41, i32 %t42)
  store { i64, ptr } %t43, ptr %l40
  br label %bb11
bb11:
  %t44 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t45 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t44, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t45, ptr %l41
  br label %bb12
bb12:
  %t46 = load i1, ptr %l41, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t47, ptr %l43, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l44, !tbaa !24
  %t50 = load i64, ptr %l44, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l45, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l44, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t61, ptr %l43, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t62 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l46, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t65 = load i32, ptr %l1, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l49
  br label %bb16
bb16:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load ptr, ptr %l46, !tbaa !29
  %t71 = load i32, ptr %l49, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %v2, ptr %t70, i32 %t71, ptr %t69)
  store { i64, ptr } %t73, ptr %l51
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  %t74 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t74, ptr %rv
  br label %ret
bb18:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l54
  br label %bb19
bb19:
  %t80 = load i32, ptr %l54, !tbaa !23
  store i32 %t80, ptr %l4, !tbaa !23
  %t81 = load i32, ptr %l4, !tbaa !23
  %t82 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t85 = icmp eq i32 %t81, %t82
  br i1 %t85, label %bb20, label %bb21
bb20:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t87, ptr %l59, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l60, !tbaa !24
  %t90 = load i64, ptr %l60, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l61, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l60, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t101, ptr %l59, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t102, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t104 = load i32, ptr %l4, !tbaa !23
  %t107 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t103, i32 %t104)
  store i1 %t107, ptr %l64
  br label %bb23
bb23:
  %t108 = load i1, ptr %l64, !tbaa !21
  br i1 %t108, label %bb24, label %bb25
bb24:
  %t109 = load ptr, ptr %l3, !tbaa !29
  %t110 = load i32, ptr %l4, !tbaa !23
  %t113 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t109, i32 %t110)
  store i32 %t113, ptr %l67
  br label %bb26
bb25:
  br label %bb76
bb26:
  %t114 = load i32, ptr %l67, !range !{i32 0, i32 33}
  store i32 %t114, ptr %l5
  %t115 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t117 = trunc i64 3 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l71, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t120, ptr %l68, !tbaa !27
  br label %bb75
bb30:
  %t122 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t124 = trunc i64 4 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l75, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l75, !tbaa !27
  store { i64, ptr } %t127, ptr %l68, !tbaa !27
  br label %bb75
bb34:
  %t129 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t131 = trunc i64 5 to i32
  %t132 = icmp eq i32 %t129, %t131
  br i1 %t132, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l79, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t134, ptr %l68, !tbaa !27
  br label %bb75
bb38:
  %t136 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t138 = trunc i64 6 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l83, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t141, ptr %l68, !tbaa !27
  br label %bb75
bb42:
  %t143 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t145 = trunc i64 7 to i32
  %t146 = icmp eq i32 %t143, %t145
  br i1 %t146, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l87, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t148, ptr %l68, !tbaa !27
  br label %bb75
bb46:
  %t150 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t152 = trunc i64 8 to i32
  %t153 = icmp eq i32 %t150, %t152
  br i1 %t153, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l91, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l91, !tbaa !27
  store { i64, ptr } %t155, ptr %l68, !tbaa !27
  br label %bb75
bb50:
  %t157 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t159 = trunc i64 9 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l95, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t162, ptr %l68, !tbaa !27
  br label %bb75
bb54:
  %t164 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t166 = trunc i64 10 to i32
  %t167 = icmp eq i32 %t164, %t166
  br i1 %t167, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb58
bb57:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l99, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t169, ptr %l68, !tbaa !27
  br label %bb75
bb58:
  %t171 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t173 = trunc i64 11 to i32
  %t174 = icmp eq i32 %t171, %t173
  br i1 %t174, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t176, ptr %l68, !tbaa !27
  br label %bb75
bb62:
  %t178 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t180 = trunc i64 12 to i32
  %t181 = icmp eq i32 %t178, %t180
  br i1 %t181, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l107, !tbaa !27
  %t183 = load { i64, ptr }, ptr %l107, !tbaa !27
  store { i64, ptr } %t183, ptr %l68, !tbaa !27
  br label %bb75
bb66:
  %t185 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t187 = trunc i64 13 to i32
  %t188 = icmp eq i32 %t185, %t187
  br i1 %t188, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l111, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t190, ptr %l68, !tbaa !27
  br label %bb75
bb70:
  br i1 true, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l113, !tbaa !27
  %t192 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t192, ptr %l68, !tbaa !27
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_7501426141a31c89_886bbfd36634f705)
  unreachable
bb75:
  %t194 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t195 = extractvalue { i64, ptr } %t194, 0
  store i64 %t195, ptr %l115, !tbaa !24
  %t196 = load i64, ptr %l115, !tbaa !24
  %t197 = mul i64 %t196, 1
  %t198 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t197)
  %t199 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t198, 1
  store { i64, ptr } %t200, ptr %l116, !tbaa !27
  %t201 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t204 = load ptr, ptr %t203, !tbaa !27
  %t205 = load i64, ptr %l115, !tbaa !24
  %t206 = mul i64 %t205, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t202, ptr %t204, i64 %t206, i1 false)
  %t207 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t207, ptr %l68, !tbaa !27
  %t208 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t208, ptr %rv
  br label %ret
bb76:
  %t209 = load ptr, ptr %l3, !tbaa !29
  %t210 = load i32, ptr %l4, !tbaa !23
  %t213 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t209, i32 %t210)
  store i1 %t213, ptr %l119
  br label %bb77
bb77:
  %t214 = load i1, ptr %l119, !tbaa !21
  br i1 %t214, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s17
  %t215 = load ptr, ptr %l3, !tbaa !29
  %t216 = load i32, ptr %l4, !tbaa !23
  %t219 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t215, i32 %t216)
  store i32 %t219, ptr %l122
  br label %bb80
bb79:
  br label %bb94
bb80:
  %t220 = load i32, ptr %l122, !tbaa !23
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l123, !tbaa !29
  %t222 = load ptr, ptr %l3, !tbaa !29
  store ptr %t222, ptr %l124, !tbaa !29
  %t223 = load ptr, ptr %l3, !tbaa !29
  %t227 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t223, i32 %t220)
  store i32 %t227, ptr %l127
  br label %bb81
bb81:
  %t228 = load ptr, ptr %l124, !tbaa !29
  %t229 = load i32, ptr %l127, !tbaa !23
  %t230 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t228, i32 %t229)
  store i32 %t230, ptr %l128
  br label %bb82
bb82:
  %t231 = load ptr, ptr %l123, !tbaa !29
  %t232 = load i32, ptr %l128, !tbaa !23
  %t233 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s17, ptr %t231, i32 %t232)
  store { i64, ptr } %t233, ptr %l129
  br label %bb83
bb83:
  %t234 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 1
  %t236 = extractvalue { i64, ptr } %t234, 0
  %t237 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t236)
  call void @olang_textcopy(ptr %t237, ptr %t235, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l7, !tbaa !27
  %t241 = load ptr, ptr %l2, !tbaa !29
  %t243 = getelementptr %"compiler/emit:cDecls", ptr %t241, i32 0, i32 2
  %t244 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t245 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t246 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t248 = extractvalue { i64, ptr } %t244, 1
  %t249 = extractvalue { i64, ptr } %t244, 0
  %t250 = add i64 %t246, %t249
  %t251 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t250)
  call void @olang_textcopy(ptr %t251, ptr %t245, i64 %t246)
  %t252 = getelementptr i8, ptr %t251, i64 %t246
  call void @olang_textcopy(ptr %t252, ptr %t248, i64 %t249)
  %t253 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t251, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = extractvalue { i64, ptr } %t254, 1
  %t258 = mul i64 %t256, 1
  %t259 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t258)
  call void @llvm.memcpy.p0.p0.i64(ptr %t259, ptr %t257, i64 %t258, i1 false)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t259, 1
  %t264 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v1, ptr %s17, ptr %t243, { i64, ptr } %t261)
  store i1 %t264, ptr %l136
  br label %bb84
bb84:
  %t265 = load i1, ptr %l136, !tbaa !21
  %t266 = xor i1 %t265, true
  br i1 %t266, label %bb85, label %bb86
bb85:
  %t268 = load ptr, ptr %l2, !tbaa !29
  %t270 = getelementptr %"compiler/emit:cDecls", ptr %t268, i32 0, i32 2
  store ptr %t270, ptr %l139, !tbaa !29
  %t271 = ptrtoint ptr %v1 to i64
  store i64 %t271, ptr %l140, !tbaa !24
  %t272 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t272, label %bb87, label %bb88
bb86:
  br label %bb93
bb87:
  %t274 = call ptr @__olang_region_make(ptr %v1)
  %t275 = ptrtoint ptr %t274 to i64
  store i64 %t275, ptr %l140, !tbaa !24
  br label %bb88
bb88:
  %t276 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t277 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t280 = extractvalue { i64, ptr } %t276, 1
  %t281 = extractvalue { i64, ptr } %t276, 0
  %t282 = add i64 %t278, %t281
  %t283 = load i64, ptr %l140
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = call ptr @__olang_scope_alloc(ptr %t284, i64 %t282)
  call void @olang_textcopy(ptr %t285, ptr %t277, i64 %t278)
  %t286 = getelementptr i8, ptr %t285, i64 %t278
  call void @olang_textcopy(ptr %t286, ptr %t280, i64 %t281)
  %t287 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t285, 1
  %t290 = load i64, ptr %l140
  %t291 = inttoptr i64 %t290 to ptr
  %t292 = extractvalue { i64, ptr } %t288, 0
  %t293 = extractvalue { i64, ptr } %t288, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %t291, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t298 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v1, ptr %v1, ptr %t298, { i64, ptr } %t297, i1 true)
  br label %bb89
bb89:
  %t300 = load ptr, ptr %l2, !tbaa !29
  %t302 = getelementptr %"compiler/emit:cDecls", ptr %t300, i32 0, i32 0
  store ptr %t302, ptr %l146, !tbaa !29
  %t303 = ptrtoint ptr %v1 to i64
  store i64 %t303, ptr %l147, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t304, label %bb90, label %bb91
bb90:
  %t306 = call ptr @__olang_region_make(ptr %v1)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l147, !tbaa !24
  br label %bb91
bb91:
  %t308 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t308, 1
  %t311 = extractvalue { i64, ptr } %t308, 0
  %t312 = load i64, ptr %l147
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  call void @olang_textcopy(ptr %t314, ptr %t310, i64 %t311)
  %t315 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t314, 1
  %t318 = load i64, ptr %l147
  %t319 = inttoptr i64 %t318 to ptr
  %t320 = extractvalue { i64, ptr } %t316, 0
  %t321 = extractvalue { i64, ptr } %t316, 1
  %t322 = mul i64 %t320, 1
  %t323 = call ptr @__olang_scope_alloc(ptr %t319, i64 %t322)
  call void @llvm.memcpy.p0.p0.i64(ptr %t323, ptr %t321, i64 %t322, i1 false)
  %t324 = insertvalue { i64, ptr } undef, i64 %t320, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t323, 1
  %t326 = load ptr, ptr %l146, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t326, { i64, ptr } %t325)
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t328 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t328, 1
  %t331 = extractvalue { i64, ptr } %t328, 0
  %t332 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t335 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t334)
  call void @olang_textcopy(ptr %t335, ptr %t330, i64 %t331)
  %t336 = getelementptr i8, ptr %t335, i64 %t331
  call void @olang_textcopy(ptr %t336, ptr %t332, i64 %t333)
  %t337 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t335, 1
  call void @__olang_scope_close(ptr %s17)
  store { i64, ptr } %t338, ptr %rv
  br label %ret
bb94:
  %t340 = load ptr, ptr %l3, !tbaa !29
  %t341 = load i32, ptr %l4, !tbaa !23
  %t344 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t340, i32 %t341)
  store i32 %t344, ptr %l156
  br label %bb95
bb95:
  %t345 = load i32, ptr %l156, !range !{i32 0, i32 33}
  %t347 = trunc i64 18 to i32
  %t348 = icmp eq i32 %t345, %t347
  br i1 %t348, label %bb96, label %bb97
bb96:
  %t350 = load ptr, ptr %l3, !tbaa !29
  store ptr %t350, ptr %l160, !tbaa !29
  %t351 = load ptr, ptr %l3, !tbaa !29
  %t352 = load i32, ptr %l4, !tbaa !23
  %t355 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t351, i32 %t352)
  store i32 %t355, ptr %l163
  br label %bb98
bb97:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb100
bb98:
  %t356 = load ptr, ptr %l160, !tbaa !29
  %t357 = load i32, ptr %l163, !tbaa !23
  %t358 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t356, i32 %t357)
  store i32 %t358, ptr %l164
  br label %bb99
bb99:
  %t359 = load i32, ptr %l164, !range !{i32 0, i32 6}
  %t361 = trunc i64 0 to i32
  %t362 = icmp eq i32 %t359, %t361
  store i1 %t362, ptr %l159, !tbaa !21
  br label %bb100
bb100:
  %t364 = load i1, ptr %l159, !tbaa !21
  br i1 %t364, label %bb101, label %bb102
bb101:
  store %olang.scope zeroinitializer, ptr %s24
  %t365 = load ptr, ptr %l0, !tbaa !29
  store ptr %t365, ptr %l167, !tbaa !29
  %t366 = load ptr, ptr %l3, !tbaa !29
  store ptr %t366, ptr %l168, !tbaa !29
  %t367 = load ptr, ptr %l3, !tbaa !29
  %t368 = load i32, ptr %l4, !tbaa !23
  %t371 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t367, i32 %t368)
  store i32 %t371, ptr %l171
  br label %bb103
bb102:
  br label %bb154
bb103:
  %t372 = load ptr, ptr %l168, !tbaa !29
  %t373 = load i32, ptr %l171, !tbaa !23
  %t374 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t372, i32 %t373)
  store i32 %t374, ptr %l172
  br label %bb104
bb104:
  %t375 = load ptr, ptr %l167, !tbaa !29
  %t376 = load i32, ptr %l172, !tbaa !23
  %t377 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s24, ptr %t375, i32 %t376)
  store { i64, ptr } %t377, ptr %l173
  br label %bb105
bb105:
  %t378 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t379 = extractvalue { i64, ptr } %t378, 1
  %t380 = extractvalue { i64, ptr } %t378, 0
  %t381 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t380)
  call void @olang_textcopy(ptr %t381, ptr %t379, i64 %t380)
  %t382 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  %t384 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t384, ptr %lp8
  %t386 = load ptr, ptr %lp8
  store { i64, ptr } %t383, ptr %t386, !tbaa !27
  %t387 = load ptr, ptr %l2, !tbaa !29
  %t389 = getelementptr %"compiler/emit:cDecls", ptr %t387, i32 0, i32 2
  %t390 = load ptr, ptr %lp8
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  %t392 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t393 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t395 = extractvalue { i64, ptr } %t391, 1
  %t396 = extractvalue { i64, ptr } %t391, 0
  %t397 = add i64 %t393, %t396
  %t398 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t397)
  call void @olang_textcopy(ptr %t398, ptr %t392, i64 %t393)
  %t399 = getelementptr i8, ptr %t398, i64 %t393
  call void @olang_textcopy(ptr %t399, ptr %t395, i64 %t396)
  %t400 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t401 = insertvalue { i64, ptr } %t400, ptr %t398, 1
  %t403 = extractvalue { i64, ptr } %t401, 0
  %t404 = extractvalue { i64, ptr } %t401, 1
  %t405 = mul i64 %t403, 1
  %t406 = call ptr @__olang_scope_alloc(ptr %s24, i64 %t405)
  call void @llvm.memcpy.p0.p0.i64(ptr %t406, ptr %t404, i64 %t405, i1 false)
  %t407 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t406, 1
  %t411 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v1, ptr %s24, ptr %t389, { i64, ptr } %t408)
  store i1 %t411, ptr %l180
  br label %bb106
bb106:
  %t412 = load i1, ptr %l180, !tbaa !21
  br i1 %t412, label %bb107, label %bb108
bb107:
  %t413 = load ptr, ptr %lp8
  %t414 = load { i64, ptr }, ptr %t413, !tbaa !27
  call void @__olang_scope_close(ptr %s24)
  store { i64, ptr } %t414, ptr %rv
  br label %ret
bb108:
  br label %bb109
bb109:
  %t416 = load ptr, ptr %l2, !tbaa !29
  %t418 = getelementptr %"compiler/emit:cDecls", ptr %t416, i32 0, i32 2
  store ptr %t418, ptr %l183, !tbaa !29
  %t419 = ptrtoint ptr %v1 to i64
  store i64 %t419, ptr %l184, !tbaa !24
  %t420 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0
  br i1 %t420, label %bb110, label %bb111
bb110:
  %t422 = call ptr @__olang_region_make(ptr %v1)
  %t423 = ptrtoint ptr %t422 to i64
  store i64 %t423, ptr %l184, !tbaa !24
  br label %bb111
bb111:
  %t424 = load ptr, ptr %lp8
  %t425 = load { i64, ptr }, ptr %t424, !tbaa !27
  %t426 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t427 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t429 = extractvalue { i64, ptr } %t425, 1
  %t430 = extractvalue { i64, ptr } %t425, 0
  %t431 = add i64 %t427, %t430
  %t432 = load i64, ptr %l184
  %t433 = inttoptr i64 %t432 to ptr
  %t434 = call ptr @__olang_scope_alloc(ptr %t433, i64 %t431)
  call void @olang_textcopy(ptr %t434, ptr %t426, i64 %t427)
  %t435 = getelementptr i8, ptr %t434, i64 %t427
  call void @olang_textcopy(ptr %t435, ptr %t429, i64 %t430)
  %t436 = insertvalue { i64, ptr } undef, i64 %t431, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t434, 1
  %t439 = load i64, ptr %l184
  %t440 = inttoptr i64 %t439 to ptr
  %t441 = extractvalue { i64, ptr } %t437, 0
  %t442 = extractvalue { i64, ptr } %t437, 1
  %t443 = mul i64 %t441, 1
  %t444 = call ptr @__olang_scope_alloc(ptr %t440, i64 %t443)
  call void @llvm.memcpy.p0.p0.i64(ptr %t444, ptr %t442, i64 %t443, i1 false)
  %t445 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t444, 1
  %t447 = load ptr, ptr %l183, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v1, ptr %v1, ptr %t447, { i64, ptr } %t446, i1 true)
  br label %bb112
bb112:
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/emit:Emitter", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t453 = load i32, ptr %l4, !tbaa !23
  %t456 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t452, i32 %t453)
  store i1 %t456, ptr %l192
  br label %bb113
bb113:
  %t457 = load ptr, ptr %l3, !tbaa !29
  store ptr %t457, ptr %l193, !tbaa !29
  %t458 = load ptr, ptr %l3, !tbaa !29
  %t459 = load i32, ptr %l4, !tbaa !23
  %t462 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t458, i32 %t459)
  store i32 %t462, ptr %l196
  br label %bb114
bb114:
  %t463 = load ptr, ptr %l193, !tbaa !29
  %t464 = load i32, ptr %l196, !tbaa !23
  %t465 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t463, i32 %t464)
  store { i64, ptr } %t465, ptr %l197
  br label %bb115
bb115:
  %t466 = load { i64, ptr }, ptr %l197, !tbaa !27
  store { i64, ptr } %t466, ptr %l9, !tbaa !27
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t468 = load i32, ptr %l4, !tbaa !23
  %t469 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t471 = extractvalue { i64, ptr } %t469, 0
  %t475 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2efieldNames(ptr %v0, ptr %s24, ptr %t467, i32 %t468, i64 %t471)
  store { i64, ptr } %t475, ptr %l202
  br label %bb116
bb116:
  %t476 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t476, ptr %l10, !tbaa !27
  %t477 = load ptr, ptr %l3, !tbaa !29
  %t478 = load i32, ptr %l4, !tbaa !23
  %t481 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t477, i32 %t478)
  store i1 %t481, ptr %l205
  br label %bb117
bb117:
  %t482 = load i1, ptr %l205, !tbaa !21
  br i1 %t482, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s29
  %t483 = load ptr, ptr %l2, !tbaa !29
  %t485 = getelementptr %"compiler/emit:cDecls", ptr %t483, i32 0, i32 1
  store ptr %t485, ptr %l207, !tbaa !29
  %t486 = ptrtoint ptr %v1 to i64
  store i64 %t486, ptr %l208, !tbaa !24
  %t487 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t487, label %bb120, label %bb121
bb119:
  br label %bb124
bb120:
  %t489 = call ptr @__olang_region_make(ptr %v1)
  %t490 = ptrtoint ptr %t489 to i64
  store i64 %t490, ptr %l208, !tbaa !24
  br label %bb121
bb121:
  %t491 = load ptr, ptr %lp8
  %t492 = load { i64, ptr }, ptr %t491, !tbaa !27
  store { i64, ptr } %t492, ptr %l210, !tbaa !27
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t495 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t499 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfields(ptr %v0, ptr %v0, ptr %s24, ptr %s29, ptr %t493, { i64, ptr } %t494, { i64, ptr } %t495)
  store { i64, ptr } %t499, ptr %l214
  br label %bb122
bb122:
  %t500 = load ptr, ptr %lp8
  %t501 = load { i64, ptr }, ptr %t500, !tbaa !27
  %t502 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t503 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t504 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t504, 1
  %t506 = extractvalue { i64, ptr } %t504, 0
  %t507 = add i64 %t503, %t506
  %t508 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t510 = add i64 %t507, %t509
  %t511 = load { i64, ptr }, ptr %l214, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = add i64 %t510, %t513
  %t515 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t519 = extractvalue { i64, ptr } %t501, 1
  %t520 = extractvalue { i64, ptr } %t501, 0
  %t521 = add i64 %t517, %t520
  %t522 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t524 = add i64 %t521, %t523
  %t525 = load i64, ptr %l208
  %t526 = inttoptr i64 %t525 to ptr
  %t527 = call ptr @__olang_scope_alloc(ptr %t526, i64 %t524)
  call void @olang_textcopy(ptr %t527, ptr %t502, i64 %t503)
  %t528 = getelementptr i8, ptr %t527, i64 %t503
  call void @olang_textcopy(ptr %t528, ptr %t505, i64 %t506)
  %t529 = getelementptr i8, ptr %t528, i64 %t506
  call void @olang_textcopy(ptr %t529, ptr %t508, i64 %t509)
  %t530 = getelementptr i8, ptr %t529, i64 %t509
  call void @olang_textcopy(ptr %t530, ptr %t512, i64 %t513)
  %t531 = getelementptr i8, ptr %t530, i64 %t513
  call void @olang_textcopy(ptr %t531, ptr %t515, i64 %t516)
  %t532 = getelementptr i8, ptr %t531, i64 %t516
  call void @olang_textcopy(ptr %t532, ptr %t519, i64 %t520)
  %t533 = getelementptr i8, ptr %t532, i64 %t520
  call void @olang_textcopy(ptr %t533, ptr %t522, i64 %t523)
  %t534 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t527, 1
  %t537 = load i64, ptr %l208
  %t538 = inttoptr i64 %t537 to ptr
  %t539 = extractvalue { i64, ptr } %t535, 0
  %t540 = extractvalue { i64, ptr } %t535, 1
  %t541 = mul i64 %t539, 1
  %t542 = call ptr @__olang_scope_alloc(ptr %t538, i64 %t541)
  call void @llvm.memcpy.p0.p0.i64(ptr %t542, ptr %t540, i64 %t541, i1 false)
  %t543 = insertvalue { i64, ptr } undef, i64 %t539, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t542, 1
  %t545 = load ptr, ptr %l207, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t545, { i64, ptr } %t544)
  br label %bb123
bb123:
  %t547 = load ptr, ptr %lp8
  %t548 = load { i64, ptr }, ptr %t547, !tbaa !27
  call void @__olang_scope_close(ptr %s29)
  call void @__olang_scope_close(ptr %s24)
  store { i64, ptr } %t548, ptr %rv
  br label %ret
bb124:
  %t550 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s24)
  store %"std/prelude/text:StringBuilder" %t550, ptr %l219
  br label %bb125
bb125:
  %t551 = load %"std/prelude/text:StringBuilder", ptr %l219
  store %"std/prelude/text:StringBuilder" %t551, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t552 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t554 = extractvalue { i64, ptr } %t552, 0
  store i64 %t554, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t556 = load i64, ptr %l13, !tbaa !24
  %t557 = load i64, ptr %l12, !tbaa !24
  %t560 = icmp sgt i64 %t556, %t557
  br i1 %t560, label %bb126, label %bb127
bb126:
  %t562 = load i64, ptr %l14, !tbaa !24
  %t564 = icmp sgt i64 %t562, 0
  br i1 %t564, label %bb128, label %bb129
bb127:
  store i64 0, ptr %l225, !tbaa !24
  br label %bb131
bb128:
  %t566 = load i64, ptr %l13, !tbaa !24
  %t567 = load i64, ptr %l12, !tbaa !24
  %t570 = sub i64 %t566, %t567
  %t571 = load i64, ptr %l14, !tbaa !24
  %t574 = add i64 %t570, %t571
  %t576 = sub i64 %t574, 1
  %t577 = load i64, ptr %l14, !tbaa !24
  %t580 = sdiv i64 %t576, %t577
  store i64 %t580, ptr %l228, !tbaa !24
  br label %bb130
bb129:
  store i64 0, ptr %l228, !tbaa !24
  br label %bb130
bb130:
  %t582 = load i64, ptr %l228, !tbaa !24
  store i64 %t582, ptr %l225, !tbaa !24
  br label %bb131
bb131:
  %t583 = load i64, ptr %l225, !tbaa !24
  store i64 %t583, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb132
bb132:
  %t584 = load i64, ptr %l16, !tbaa !24
  %t585 = load i64, ptr %l15, !tbaa !24
  %t588 = icmp slt i64 %t584, %t585
  %t590 = xor i1 %t588, true
  br i1 %t590, label %bb133, label %bb134
bb133:
  br label %bb149
bb134:
  br label %bb135
bb135:
  %t592 = load i64, ptr %l12, !tbaa !24
  %t593 = load i64, ptr %l16, !tbaa !24
  %t594 = load i64, ptr %l14, !tbaa !24
  %t597 = mul i64 %t593, %t594
  %t600 = add i64 %t592, %t597
  store i64 %t600, ptr %l17, !tbaa !24
  %t602 = load ptr, ptr %l3, !tbaa !29
  %t603 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t603, ptr %l247, !tbaa !27
  %t604 = load i64, ptr %l17, !tbaa !24
  %t606 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = getelementptr i32, ptr %t607, i64 %t604
  %t609 = load i32, ptr %t608, !tbaa !33
  %t612 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t602, i32 %t609)
  store i32 %t612, ptr %l250
  br label %bb136
bb136:
  %t613 = load i32, ptr %l250, !tbaa !23
  store i32 %t613, ptr %l18, !tbaa !23
  %t614 = load ptr, ptr %l3, !tbaa !29
  %t615 = load i32, ptr %l18, !tbaa !23
  %t618 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t614, i32 %t615)
  store i32 %t618, ptr %l253
  br label %bb137
bb137:
  %t619 = load i32, ptr %l253, !range !{i32 0, i32 33}
  %t621 = trunc i64 19 to i32
  %t622 = icmp eq i32 %t619, %t621
  br i1 %t622, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s33
  store ptr %l11, ptr %l256, !tbaa !29
  %t624 = load ptr, ptr %l0, !tbaa !29
  store ptr %t624, ptr %l257, !tbaa !29
  %t625 = load ptr, ptr %l3, !tbaa !29
  %t626 = load i32, ptr %l18, !tbaa !23
  %t629 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t625, i32 %t626)
  store i32 %t629, ptr %l260
  br label %bb140
bb139:
  store %olang.scope zeroinitializer, ptr %s35
  store ptr %l11, ptr %l272, !tbaa !29
  %t630 = load ptr, ptr %l0, !tbaa !29
  %t631 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t631, ptr %l274, !tbaa !27
  %t632 = load i64, ptr %l17, !tbaa !24
  %t634 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t635 = load ptr, ptr %t634, !tbaa !27
  %t636 = getelementptr i32, ptr %t635, i64 %t632
  %t637 = load i32, ptr %t636, !tbaa !33
  %t638 = load ptr, ptr %l2, !tbaa !29
  %t642 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s35, ptr %t630, i32 %t637, ptr %t638)
  store { i64, ptr } %t642, ptr %l278
  br label %bb145
bb140:
  %t643 = load ptr, ptr %l2, !tbaa !29
  %t644 = load ptr, ptr %l257, !tbaa !29
  %t645 = load i32, ptr %l260, !tbaa !23
  %t647 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s33, ptr %t644, i32 %t645, ptr %t643)
  store { i64, ptr } %t647, ptr %l262
  br label %bb141
bb141:
  %t648 = load i64, ptr %l17, !tbaa !24
  %t650 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t651 = load ptr, ptr %t650, !tbaa !27
  %t652 = getelementptr { i64, ptr }, ptr %t651, i64 %t648
  %t653 = load { i64, ptr }, ptr %t652, !tbaa !37
  store { i64, ptr } %t653, ptr %l264, !tbaa !27
  %t654 = load ptr, ptr %l3, !tbaa !29
  store ptr %t654, ptr %l265, !tbaa !29
  %t655 = load ptr, ptr %l3, !tbaa !29
  %t656 = load i32, ptr %l18, !tbaa !23
  %t659 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t655, i32 %t656)
  store i32 %t659, ptr %l268
  br label %bb142
bb142:
  %t660 = load ptr, ptr %l265, !tbaa !29
  %t661 = load i32, ptr %l268, !tbaa !23
  %t662 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t660, i32 %t661)
  store i64 %t662, ptr %l269
  br label %bb143
bb143:
  %t663 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t664 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t665 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t666 = extractvalue { i64, ptr } %t665, 1
  %t667 = extractvalue { i64, ptr } %t665, 0
  %t668 = add i64 %t664, %t667
  %t669 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t670 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t671 = add i64 %t668, %t670
  %t672 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t673 = extractvalue { i64, ptr } %t672, 1
  %t674 = extractvalue { i64, ptr } %t672, 0
  %t675 = add i64 %t671, %t674
  %t676 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t677 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t678 = add i64 %t675, %t677
  %t679 = load i64, ptr %l269, !tbaa !24
  %t680 = call i64 @__olang_fmt_i64(ptr null, i64 %t679)
  %t681 = add i64 %t678, %t680
  %t682 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t683 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t684 = add i64 %t681, %t683
  %t685 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t684)
  call void @olang_textcopy(ptr %t685, ptr %t663, i64 %t664)
  %t686 = getelementptr i8, ptr %t685, i64 %t664
  call void @olang_textcopy(ptr %t686, ptr %t666, i64 %t667)
  %t687 = getelementptr i8, ptr %t686, i64 %t667
  call void @olang_textcopy(ptr %t687, ptr %t669, i64 %t670)
  %t688 = getelementptr i8, ptr %t687, i64 %t670
  call void @olang_textcopy(ptr %t688, ptr %t673, i64 %t674)
  %t689 = getelementptr i8, ptr %t688, i64 %t674
  call void @olang_textcopy(ptr %t689, ptr %t676, i64 %t677)
  %t690 = getelementptr i8, ptr %t689, i64 %t677
  %t691 = call i64 @__olang_fmt_i64(ptr %t690, i64 %t679)
  %t692 = getelementptr i8, ptr %t690, i64 %t680
  call void @olang_textcopy(ptr %t692, ptr %t682, i64 %t683)
  %t693 = insertvalue { i64, ptr } undef, i64 %t684, 0
  %t694 = insertvalue { i64, ptr } %t693, ptr %t685, 1
  %t696 = extractvalue { i64, ptr } %t694, 0
  %t697 = extractvalue { i64, ptr } %t694, 1
  %t698 = mul i64 %t696, 1
  %t699 = call ptr @__olang_scope_alloc(ptr %s33, i64 %t698)
  call void @llvm.memcpy.p0.p0.i64(ptr %t699, ptr %t697, i64 %t698, i1 false)
  %t700 = insertvalue { i64, ptr } undef, i64 %t696, 0
  %t701 = insertvalue { i64, ptr } %t700, ptr %t699, 1
  %t702 = load ptr, ptr %l256, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s24, ptr %s33, ptr %t702, { i64, ptr } %t701)
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s33)
  br label %bb147
bb145:
  %t704 = load i64, ptr %l17, !tbaa !24
  %t706 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t707 = load ptr, ptr %t706, !tbaa !27
  %t708 = getelementptr { i64, ptr }, ptr %t707, i64 %t704
  %t709 = load { i64, ptr }, ptr %t708, !tbaa !37
  %t710 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t711 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t712 = load { i64, ptr }, ptr %l278, !tbaa !27
  %t713 = extractvalue { i64, ptr } %t712, 1
  %t714 = extractvalue { i64, ptr } %t712, 0
  %t715 = add i64 %t711, %t714
  %t716 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t717 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t718 = add i64 %t715, %t717
  %t720 = extractvalue { i64, ptr } %t709, 1
  %t721 = extractvalue { i64, ptr } %t709, 0
  %t722 = add i64 %t718, %t721
  %t723 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t724 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t725 = add i64 %t722, %t724
  %t726 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t725)
  call void @olang_textcopy(ptr %t726, ptr %t710, i64 %t711)
  %t727 = getelementptr i8, ptr %t726, i64 %t711
  call void @olang_textcopy(ptr %t727, ptr %t713, i64 %t714)
  %t728 = getelementptr i8, ptr %t727, i64 %t714
  call void @olang_textcopy(ptr %t728, ptr %t716, i64 %t717)
  %t729 = getelementptr i8, ptr %t728, i64 %t717
  call void @olang_textcopy(ptr %t729, ptr %t720, i64 %t721)
  %t730 = getelementptr i8, ptr %t729, i64 %t721
  call void @olang_textcopy(ptr %t730, ptr %t723, i64 %t724)
  %t731 = insertvalue { i64, ptr } undef, i64 %t725, 0
  %t732 = insertvalue { i64, ptr } %t731, ptr %t726, 1
  %t734 = extractvalue { i64, ptr } %t732, 0
  %t735 = extractvalue { i64, ptr } %t732, 1
  %t736 = mul i64 %t734, 1
  %t737 = call ptr @__olang_scope_alloc(ptr %s35, i64 %t736)
  call void @llvm.memcpy.p0.p0.i64(ptr %t737, ptr %t735, i64 %t736, i1 false)
  %t738 = insertvalue { i64, ptr } undef, i64 %t734, 0
  %t739 = insertvalue { i64, ptr } %t738, ptr %t737, 1
  %t740 = load ptr, ptr %l272, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s24, ptr %s35, ptr %t740, { i64, ptr } %t739)
  br label %bb146
bb146:
  call void @__olang_scope_close(ptr %s35)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t742 = load i64, ptr %l16, !tbaa !24
  %t744 = add i64 %t742, 1
  store i64 %t744, ptr %l16, !tbaa !24
  br label %bb132
bb149:
  %t746 = load ptr, ptr %l2, !tbaa !29
  %t748 = getelementptr %"compiler/emit:cDecls", ptr %t746, i32 0, i32 1
  store ptr %t748, ptr %l286, !tbaa !29
  %t749 = ptrtoint ptr %v1 to i64
  store i64 %t749, ptr %l287, !tbaa !24
  %t750 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t750, label %bb150, label %bb151
bb150:
  %t752 = call ptr @__olang_region_make(ptr %v1)
  %t753 = ptrtoint ptr %t752 to i64
  store i64 %t753, ptr %l287, !tbaa !24
  br label %bb151
bb151:
  %t754 = load ptr, ptr %lp8
  %t755 = load { i64, ptr }, ptr %t754, !tbaa !27
  store { i64, ptr } %t755, ptr %l289, !tbaa !27
  %t757 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s24, ptr %s24, ptr %l11)
  store { i64, ptr } %t757, ptr %l291
  br label %bb152
bb152:
  %t758 = load ptr, ptr %lp8
  %t759 = load { i64, ptr }, ptr %t758, !tbaa !27
  %t760 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t761 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t762 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t763 = extractvalue { i64, ptr } %t762, 1
  %t764 = extractvalue { i64, ptr } %t762, 0
  %t765 = add i64 %t761, %t764
  %t766 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t767 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t768 = add i64 %t765, %t767
  %t769 = load { i64, ptr }, ptr %l291, !tbaa !27
  %t770 = extractvalue { i64, ptr } %t769, 1
  %t771 = extractvalue { i64, ptr } %t769, 0
  %t772 = add i64 %t768, %t771
  %t773 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t774 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t775 = add i64 %t772, %t774
  %t777 = extractvalue { i64, ptr } %t759, 1
  %t778 = extractvalue { i64, ptr } %t759, 0
  %t779 = add i64 %t775, %t778
  %t780 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t781 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t782 = add i64 %t779, %t781
  %t783 = load i64, ptr %l287
  %t784 = inttoptr i64 %t783 to ptr
  %t785 = call ptr @__olang_scope_alloc(ptr %t784, i64 %t782)
  call void @olang_textcopy(ptr %t785, ptr %t760, i64 %t761)
  %t786 = getelementptr i8, ptr %t785, i64 %t761
  call void @olang_textcopy(ptr %t786, ptr %t763, i64 %t764)
  %t787 = getelementptr i8, ptr %t786, i64 %t764
  call void @olang_textcopy(ptr %t787, ptr %t766, i64 %t767)
  %t788 = getelementptr i8, ptr %t787, i64 %t767
  call void @olang_textcopy(ptr %t788, ptr %t770, i64 %t771)
  %t789 = getelementptr i8, ptr %t788, i64 %t771
  call void @olang_textcopy(ptr %t789, ptr %t773, i64 %t774)
  %t790 = getelementptr i8, ptr %t789, i64 %t774
  call void @olang_textcopy(ptr %t790, ptr %t777, i64 %t778)
  %t791 = getelementptr i8, ptr %t790, i64 %t778
  call void @olang_textcopy(ptr %t791, ptr %t780, i64 %t781)
  %t792 = insertvalue { i64, ptr } undef, i64 %t782, 0
  %t793 = insertvalue { i64, ptr } %t792, ptr %t785, 1
  %t795 = load i64, ptr %l287
  %t796 = inttoptr i64 %t795 to ptr
  %t797 = extractvalue { i64, ptr } %t793, 0
  %t798 = extractvalue { i64, ptr } %t793, 1
  %t799 = mul i64 %t797, 1
  %t800 = call ptr @__olang_scope_alloc(ptr %t796, i64 %t799)
  call void @llvm.memcpy.p0.p0.i64(ptr %t800, ptr %t798, i64 %t799, i1 false)
  %t801 = insertvalue { i64, ptr } undef, i64 %t797, 0
  %t802 = insertvalue { i64, ptr } %t801, ptr %t800, 1
  %t803 = load ptr, ptr %l286, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t803, { i64, ptr } %t802)
  br label %bb153
bb153:
  %t805 = load ptr, ptr %lp8
  %t806 = load { i64, ptr }, ptr %t805, !tbaa !27
  call void @__olang_scope_close(ptr %s24)
  store { i64, ptr } %t806, ptr %rv
  br label %ret
bb154:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l296, !tbaa !27
  %t808 = load { i64, ptr }, ptr %l296, !tbaa !27
  store { i64, ptr } %t808, ptr %l297, !tbaa !27
  %t809 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t810 = extractvalue { i64, ptr } %t809, 0
  store i64 %t810, ptr %l298, !tbaa !24
  %t811 = load i64, ptr %l298, !tbaa !24
  %t812 = mul i64 %t811, 1
  %t813 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t812)
  %t814 = insertvalue { i64, ptr } undef, i64 %t811, 0
  %t815 = insertvalue { i64, ptr } %t814, ptr %t813, 1
  store { i64, ptr } %t815, ptr %l299, !tbaa !27
  %t816 = getelementptr { i64, ptr }, ptr %l299, i32 0, i32 1
  %t817 = load ptr, ptr %t816, !tbaa !27
  %t818 = getelementptr { i64, ptr }, ptr %l297, i32 0, i32 1
  %t819 = load ptr, ptr %t818, !tbaa !27
  %t820 = load i64, ptr %l298, !tbaa !24
  %t821 = mul i64 %t820, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t817, ptr %t819, i64 %t821, i1 false)
  %t822 = load { i64, ptr }, ptr %l299, !tbaa !27
  store { i64, ptr } %t822, ptr %l297, !tbaa !27
  %t823 = load { i64, ptr }, ptr %l297, !tbaa !27
  store { i64, ptr } %t823, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l21 = alloca ptr
  %l32 = alloca i32
  %l36 = alloca ptr
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l2, !tbaa !23
  br label %bb7
bb2:
  %t10 = load { i64, [2 x i64] }, ptr %l1
  %t12 = extractvalue { i64, [2 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 2
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l2, !tbaa !23
  br label %bb7
bb4:
  %t19 = load { i64, [2 x i64] }, ptr %l1
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 6
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t25 = getelementptr { i32, i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l2, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = load i32, ptr %l2, !tbaa !23
  %t38 = sext i32 %t36 to i64
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t34, i64 %t38)
  store ptr %t41, ptr %l21
  br label %bb8
bb8:
  %t42 = load ptr, ptr %l21, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Body", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  store i32 %t45, ptr %l5, !tbaa !23
  br label %bb20
bb9:
  %t47 = load { i64, [2 x i64] }, ptr %l1
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 3
  br i1 %t50, label %bb10, label %bb11
bb10:
  %t52 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t53 = getelementptr { i32, i32 }, ptr %t52, i32 0, i32 0
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 8}
  store i32 %t54, ptr %l3
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t57 = getelementptr { i32, i32 }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l4, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/emit:Emitter", ptr %t60, i32 0, i32 3
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t65 = load i32, ptr %l4, !tbaa !23
  %t69 = call i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %t63, i32 %t64, i32 %t65)
  store i32 %t69, ptr %l32
  br label %bb13
bb13:
  %t70 = load i32, ptr %l32, !tbaa !23
  store i32 %t70, ptr %l5, !tbaa !23
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/emit:Emitter", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load { i64, [2 x i64] }, ptr %l1
  %t78 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v0, ptr %t74, { i64, [2 x i64] } %t75)
  store ptr %t78, ptr %l36
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l36, !tbaa !29
  %t81 = getelementptr %"compiler/mir:Fn", ptr %t79, i32 0, i32 1
  %t82 = load i32, ptr %t81, !tbaa !23
  store i32 %t82, ptr %l5, !tbaa !23
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_8ec8751bbb52a5fd_3161bca6b1c44ba9)
  unreachable
bb20:
  %t84 = load i32, ptr %l5, !tbaa !23
  store i32 %t84, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgVoidPtr(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 63
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp slt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = getelementptr %"compiler/emit:Emitter", ptr %t13, i32 0, i32 63
  store i64 %t12, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/emit:Emitter", ptr %t16, i32 0, i32 63
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s1, ptr %t15, i64 %t19, { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s1)
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:Emitter", ptr %t22, i32 0, i32 63
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l78 = alloca ptr
  %l89 = alloca i1
  %l93 = alloca i1
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca i64
  %l97 = alloca i64
  %l103 = alloca i1
  %l107 = alloca i1
  %l108 = alloca { i64, ptr }
  %l112 = alloca i1
  %l123 = alloca { i64, ptr }
  %l125 = alloca i64
  %l131 = alloca ptr
  %l132 = alloca { i64, ptr }
  %l133 = alloca i64
  %l136 = alloca i64
  %l137 = alloca i64
  %l148 = alloca ptr
  %l149 = alloca { i64, ptr }
  %l150 = alloca i64
  %l153 = alloca i64
  %l154 = alloca i64
  %l160 = alloca { i64, ptr }
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
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t5 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t4)
  store i1 %t5, ptr %l22
  br label %bb1
bb1:
  %t6 = load i1, ptr %l22, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t11, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t17, ptr %l26
  br label %bb5
bb5:
  %t18 = load %"std/prelude/text:StringBuilder", ptr %l26
  store %"std/prelude/text:StringBuilder" %t18, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = icmp slt i64 %t25, %t26
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb66
bb8:
  br label %bb9
bb9:
  %t33 = load i64, ptr %l5, !tbaa !24
  store i64 %t33, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t35, ptr %l35, !tbaa !27
  %t36 = load i64, ptr %l5, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 %t36
  %t41 = load i8, ptr %t40, !tbaa !32
  %t45 = icmp ne i8 %t41, 58
  br i1 %t45, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l9, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t47, ptr %l41, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l42, !tbaa !24
  %t50 = load i64, ptr %l42, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l43, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l42, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t61, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/emit:Emitter", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/load:Loader", ptr %t68, i32 0, i32 10
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l48
  br label %bb13
bb13:
  %t73 = load i64, ptr %l48, !tbaa !24
  store i64 %t73, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t74 = load i64, ptr %l12, !tbaa !24
  %t75 = load i64, ptr %l11, !tbaa !24
  %t78 = icmp sgt i64 %t74, %t75
  br i1 %t78, label %bb14, label %bb15
bb14:
  %t80 = load i64, ptr %l13, !tbaa !24
  %t82 = icmp sgt i64 %t80, 0
  br i1 %t82, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb19
bb16:
  %t84 = load i64, ptr %l12, !tbaa !24
  %t85 = load i64, ptr %l11, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l13, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t94 = sub i64 %t92, 1
  %t95 = load i64, ptr %l13, !tbaa !24
  %t98 = sdiv i64 %t94, %t95
  store i64 %t98, ptr %l55, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb18
bb18:
  %t100 = load i64, ptr %l55, !tbaa !24
  store i64 %t100, ptr %l52, !tbaa !24
  br label %bb19
bb19:
  %t101 = load i64, ptr %l52, !tbaa !24
  store i64 %t101, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb20
bb20:
  %t102 = load i64, ptr %l15, !tbaa !24
  %t103 = load i64, ptr %l14, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb21, label %bb22
bb21:
  br label %bb53
bb22:
  br label %bb23
bb23:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t111 = load i64, ptr %l15, !tbaa !24
  %t112 = load i64, ptr %l13, !tbaa !24
  %t115 = mul i64 %t111, %t112
  %t118 = add i64 %t110, %t115
  store i64 %t118, ptr %l16, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/emit:Emitter", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 10
  %t129 = load i64, ptr %l16, !tbaa !24
  %t132 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t128, i64 %t129)
  store ptr %t132, ptr %l78
  br label %bb24
bb24:
  %t133 = load ptr, ptr %l78, !tbaa !29
  %t135 = getelementptr %"compiler/load:Module", ptr %t133, i32 0, i32 2
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l17, !tbaa !27
  %t138 = load i64, ptr %l7, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t144 = sub i64 %t138, %t141
  store i64 %t144, ptr %l18, !tbaa !24
  %t146 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t146, 0
  %t149 = load i64, ptr %l9, !tbaa !24
  %t152 = icmp sle i64 %t148, %t149
  br i1 %t152, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb27
bb26:
  %t154 = load i64, ptr %l18, !tbaa !24
  %t155 = load i64, ptr %l3, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  store i1 %t158, ptr %l89, !tbaa !21
  br label %bb27
bb27:
  %t160 = load i1, ptr %l89, !tbaa !21
  br i1 %t160, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb37
bb29:
  %t161 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t161, ptr %l94, !tbaa !27
  %t162 = load i64, ptr %l18, !tbaa !24
  store i64 %t162, ptr %l95, !tbaa !24
  %t163 = load i64, ptr %l7, !tbaa !24
  store i64 %t163, ptr %l96, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  store i64 %t165, ptr %l97, !tbaa !24
  %t166 = load i64, ptr %l95, !tbaa !24
  %t167 = icmp sge i64 %t166, 0
  br i1 %t167, label %bb30, label %bb31
bb30:
  %t169 = load i64, ptr %l95, !tbaa !24
  %t170 = load i64, ptr %l96, !tbaa !24
  %t171 = icmp sle i64 %t169, %t170
  br i1 %t171, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb32:
  %t173 = load i64, ptr %l96, !tbaa !24
  %t174 = load i64, ptr %l97, !tbaa !24
  %t175 = icmp sle i64 %t173, %t174
  br i1 %t175, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb34:
  %t177 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l95, !tbaa !24
  %t180 = load i64, ptr %l96, !tbaa !24
  %t181 = getelementptr i8, ptr %t178, i64 %t179
  %t182 = sub i64 %t180, %t179
  %t183 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  %t185 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %v0, { i64, ptr } %t184, { i64, ptr } %t185)
  store i1 %t188, ptr %l103
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1a9d82a78676b0a6_b4156ec517c232f2)
  unreachable
bb36:
  %t189 = load i1, ptr %l103, !tbaa !21
  %t190 = xor i1 %t189, true
  store i1 %t190, ptr %l93, !tbaa !21
  br label %bb37
bb37:
  %t192 = load i1, ptr %l93, !tbaa !21
  br i1 %t192, label %bb38, label %bb39
bb38:
  br label %bb52
bb39:
  br label %bb40
bb40:
  %t193 = load i64, ptr %l18, !tbaa !24
  %t195 = icmp sgt i64 %t193, 0
  br i1 %t195, label %bb41, label %bb42
bb41:
  %t197 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t197, ptr %l108, !tbaa !27
  %t198 = load i64, ptr %l18, !tbaa !24
  %t200 = sub i64 %t198, 1
  %t202 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i8, ptr %t203, i64 %t200
  %t205 = load i8, ptr %t204, !tbaa !32
  %t207 = call i1 @compiler_2femit_2etypeDelim(i8 %t205)
  store i1 %t207, ptr %l112
  br label %bb43
bb42:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb44
bb43:
  %t208 = load i1, ptr %l112, !tbaa !21
  %t209 = xor i1 %t208, true
  store i1 %t209, ptr %l107, !tbaa !21
  br label %bb44
bb44:
  %t211 = load i1, ptr %l107, !tbaa !21
  br i1 %t211, label %bb45, label %bb46
bb45:
  br label %bb52
bb46:
  br label %bb47
bb47:
  %t212 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t212, 0
  store i64 %t214, ptr %l9, !tbaa !24
  %t216 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t217 = load i64, ptr %l16, !tbaa !24
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/emit:Emitter", ptr %t218, i32 0, i32 0
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = getelementptr %"compiler/generic:Program", ptr %t221, i32 0, i32 0
  %t224 = load ptr, ptr %t223, !tbaa !29
  %t226 = getelementptr %"compiler/load:Loader", ptr %t224, i32 0, i32 12
  %t227 = load i64, ptr %t226, !tbaa !24
  %t230 = icmp eq i64 %t217, %t227
  %t233 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s4, { i64, ptr } %t216, i1 %t230)
  store { i64, ptr } %t233, ptr %l123
  br label %bb48
bb48:
  %t234 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t234, 0
  %t236 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  store i64 %t237, ptr %l125, !tbaa !24
  %t239 = load i64, ptr %l125, !tbaa !24
  %t240 = icmp eq i64 %t235, %t239
  br i1 %t240, label %bb49, label %bb50
bb49:
  %t242 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t245 = load ptr, ptr %t244, !tbaa !27
  %t246 = load i64, ptr %l125, !tbaa !24
  %t247 = mul i64 %t246, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t243, ptr %t245, i64 %t247, i1 false)
  br label %bb51
bb50:
  %t248 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t248, ptr %l10, !tbaa !27
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t249 = load i64, ptr %l15, !tbaa !24
  %t251 = add i64 %t249, 1
  store i64 %t251, ptr %l15, !tbaa !24
  br label %bb20
bb53:
  %t253 = load i64, ptr %l9, !tbaa !24
  %t255 = icmp slt i64 %t253, 0
  br i1 %t255, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb55:
  br label %bb56
bb56:
  store ptr %l2, ptr %l131, !tbaa !29
  %t257 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t257, ptr %l132, !tbaa !27
  %t258 = load i64, ptr %l3, !tbaa !24
  store i64 %t258, ptr %l133, !tbaa !24
  %t259 = load i64, ptr %l7, !tbaa !24
  %t260 = load i64, ptr %l9, !tbaa !24
  %t263 = sub i64 %t259, %t260
  store i64 %t263, ptr %l136, !tbaa !24
  %t264 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t265 = extractvalue { i64, ptr } %t264, 0
  store i64 %t265, ptr %l137, !tbaa !24
  %t266 = load i64, ptr %l133, !tbaa !24
  %t267 = icmp sge i64 %t266, 0
  br i1 %t267, label %bb57, label %bb58
bb57:
  %t269 = load i64, ptr %l133, !tbaa !24
  %t270 = load i64, ptr %l136, !tbaa !24
  %t271 = icmp sle i64 %t269, %t270
  br i1 %t271, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb59:
  %t273 = load i64, ptr %l136, !tbaa !24
  %t274 = load i64, ptr %l137, !tbaa !24
  %t275 = icmp sle i64 %t273, %t274
  br i1 %t275, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb61:
  %t277 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = load i64, ptr %l133, !tbaa !24
  %t280 = load i64, ptr %l136, !tbaa !24
  %t281 = getelementptr i8, ptr %t278, i64 %t279
  %t282 = sub i64 %t280, %t279
  %t283 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t281, 1
  %t285 = load ptr, ptr %l131, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t285, { i64, ptr } %t284)
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_59a9be6f9464903_424bcbda67d6186f)
  unreachable
bb63:
  %t287 = load { i64, ptr }, ptr %l10, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } %t287)
  br label %bb64
bb64:
  %t290 = load i64, ptr %l7, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb65
bb65:
  %t294 = load i64, ptr %l5, !tbaa !24
  %t296 = add i64 %t294, 1
  store i64 %t296, ptr %l5, !tbaa !24
  br label %bb6
bb66:
  store ptr %l2, ptr %l148, !tbaa !29
  %t298 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t298, ptr %l149, !tbaa !27
  %t299 = load i64, ptr %l3, !tbaa !24
  store i64 %t299, ptr %l150, !tbaa !24
  %t300 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t300, 0
  store i64 %t303, ptr %l153, !tbaa !24
  %t304 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 0
  store i64 %t305, ptr %l154, !tbaa !24
  %t306 = load i64, ptr %l150, !tbaa !24
  %t307 = icmp sge i64 %t306, 0
  br i1 %t307, label %bb67, label %bb68
bb67:
  %t309 = load i64, ptr %l150, !tbaa !24
  %t310 = load i64, ptr %l153, !tbaa !24
  %t311 = icmp sle i64 %t309, %t310
  br i1 %t311, label %bb69, label %bb70
bb68:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb69:
  %t313 = load i64, ptr %l153, !tbaa !24
  %t314 = load i64, ptr %l154, !tbaa !24
  %t315 = icmp sle i64 %t313, %t314
  br i1 %t315, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb71:
  %t317 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = load i64, ptr %l150, !tbaa !24
  %t320 = load i64, ptr %l153, !tbaa !24
  %t321 = getelementptr i8, ptr %t318, i64 %t319
  %t322 = sub i64 %t320, %t319
  %t323 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t321, 1
  %t325 = load ptr, ptr %l148, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t325, { i64, ptr } %t324)
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_f7c6dddb13d754e8_bd1e858aa2031304)
  unreachable
bb73:
  %t328 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t328, ptr %l160
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s0)
  %t329 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t329, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esole(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %t1, i64 %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t6, ptr %lp2
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t8 = load ptr, ptr %lp2
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l6, !tbaa !29
  %t10 = load ptr, ptr %lp2
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l7, !tbaa !27
  %t12 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = ptrtoint ptr %s0 to i64
  store i64 %t13, ptr %l9, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = call ptr @__olang_region_make(ptr %s0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t18 = load ptr, ptr %lp2
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t20 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t23 = extractvalue { i64, ptr } %t19, 1
  %t24 = extractvalue { i64, ptr } %t19, 0
  %t25 = add i64 %t21, %t24
  %t26 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t27 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t28 = add i64 %t25, %t27
  %t29 = load i64, ptr %l9
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc(ptr %t30, i64 %t28)
  call void @olang_textcopy(ptr %t31, ptr %t20, i64 %t21)
  %t32 = getelementptr i8, ptr %t31, i64 %t21
  call void @olang_textcopy(ptr %t32, ptr %t23, i64 %t24)
  %t33 = getelementptr i8, ptr %t32, i64 %t24
  call void @olang_textcopy(ptr %t33, ptr %t26, i64 %t27)
  %t34 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  %t37 = load i64, ptr %l9
  %t38 = inttoptr i64 %t37 to ptr
  %t39 = extractvalue { i64, ptr } %t35, 0
  %t40 = extractvalue { i64, ptr } %t35, 1
  %t41 = mul i64 %t39, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %t38, i64 %t41)
  call void @llvm.memcpy.p0.p0.i64(ptr %t42, ptr %t40, i64 %t41, i1 false)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  %t45 = load ptr, ptr %l6, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t47 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t45, { i64, ptr } %t46, i64 %t47, { i64, ptr } %t44, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb4
bb4:
  %t49 = load ptr, ptr %lp2
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t50, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eanchorRegion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l62 = alloca i32
  %l63 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca i32
  %l75 = alloca i32
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l86 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca i64
  %l95 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  store ptr %t7, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t12, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb1
bb1:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t14, ptr %l22, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t15, 0
  store i64 %t16, ptr %l23, !tbaa !24
  %t17 = load i64, ptr %l23, !tbaa !24
  %t18 = mul i64 %t17, 1
  %t19 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t18)
  %t20 = insertvalue { i64, ptr } undef, i64 %t17, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t19, 1
  store { i64, ptr } %t21, ptr %l24, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = load i64, ptr %l23, !tbaa !24
  %t27 = mul i64 %t26, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t23, ptr %t25, i64 %t27, i1 false)
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t28, ptr %lp4
  %t29 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t30 = load ptr, ptr %lp4
  store { i64, ptr } %t29, ptr %t30, !tbaa !27
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %s0, ptr %t31, i32 %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l27
  br label %bb2
bb2:
  %t36 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l5
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t37, i32 %t38)
  store i1 %t41, ptr %l30
  br label %bb3
bb3:
  %t42 = load i1, ptr %l30, !tbaa !21
  br i1 %t42, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l5, ptr %l31, !tbaa !29
  %t43 = icmp sge i64 0, 0
  br i1 %t43, label %bb6, label %bb7
bb5:
  br label %bb11
bb6:
  %t45 = icmp sle i64 0, 1152921504606846975
  br i1 %t45, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_2085f59261c3a546_f9ceea81113e8d2)
  unreachable
bb8:
  %t47 = mul i64 0, 8
  %t48 = insertvalue { i64, ptr } undef, i64 0, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t50 = load ptr, ptr %l31, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %s0, ptr %t50, { i64, ptr } %t49)
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_2085f59261c3a546_f9ceea81113e8d2)
  unreachable
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %l5)
  store i64 %t53, ptr %l36
  br label %bb12
bb12:
  %t54 = load i64, ptr %l36, !tbaa !24
  %t55 = sub i64 %t54, 1
  store i64 %t55, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t57 = load i64, ptr %l6, !tbaa !24
  %t59 = icmp sge i64 %t57, 0
  %t61 = xor i1 %t59, true
  br i1 %t61, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb40
bb15:
  br label %bb16
bb16:
  store { i64, ptr } %a1, ptr %l7, !tbaa !27
  %t65 = load i32, ptr %l2, !tbaa !23
  store i32 %t65, ptr %l8, !tbaa !23
  store %olang.scope zeroinitializer, ptr %s4
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %s0, ptr %s4, ptr %l5, i64 %t67)
  store { i64, ptr } %t70, ptr %l45
  br label %bb17
bb17:
  %t71 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l46, !tbaa !24
  %t73 = load i64, ptr %l46, !tbaa !24
  %t74 = mul i64 %t73, 8
  %t75 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l47, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l46, !tbaa !24
  %t83 = mul i64 %t82, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = mul i64 %t85, 8
  %t88 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l11, !tbaa !24
  br label %bb18
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l11, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb20:
  br label %bb21
bb21:
  %t104 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i64, ptr %t108, i64 %t105
  %t110 = load i64, ptr %t109, !tbaa !34
  store i64 %t110, ptr %l12, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l58, !tbaa !29
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l59, !tbaa !29
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t115 = load i32, ptr %l8, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l62
  br label %bb22
bb22:
  %t119 = load ptr, ptr %l59, !tbaa !29
  %t120 = load i32, ptr %l62, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s5, ptr %t119, i32 %t120)
  store { i64, ptr } %t121, ptr %l63
  br label %bb23
bb23:
  %t122 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t123 = load i64, ptr %l12, !tbaa !24
  %t124 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t126 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t134 = extractvalue { i64, ptr } %t122, 1
  %t135 = extractvalue { i64, ptr } %t122, 0
  %t136 = add i64 %t132, %t135
  %t137 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t139 = add i64 %t136, %t138
  %t141 = call i64 @__olang_fmt_i64(ptr null, i64 %t123)
  %t142 = add i64 %t139, %t141
  %t143 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t142)
  call void @olang_textcopy(ptr %t143, ptr %t124, i64 %t125)
  %t144 = getelementptr i8, ptr %t143, i64 %t125
  call void @olang_textcopy(ptr %t144, ptr %t127, i64 %t128)
  %t145 = getelementptr i8, ptr %t144, i64 %t128
  call void @olang_textcopy(ptr %t145, ptr %t130, i64 %t131)
  %t146 = getelementptr i8, ptr %t145, i64 %t131
  call void @olang_textcopy(ptr %t146, ptr %t134, i64 %t135)
  %t147 = getelementptr i8, ptr %t146, i64 %t135
  call void @olang_textcopy(ptr %t147, ptr %t137, i64 %t138)
  %t148 = getelementptr i8, ptr %t147, i64 %t138
  %t149 = call i64 @__olang_fmt_i64(ptr %t148, i64 %t123)
  %t150 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t143, 1
  %t153 = extractvalue { i64, ptr } %t151, 0
  %t154 = extractvalue { i64, ptr } %t151, 1
  %t155 = mul i64 %t153, 1
  %t156 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t156, ptr %t154, i64 %t155, i1 false)
  %t157 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t156, 1
  %t159 = load ptr, ptr %l58, !tbaa !29
  %t161 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %s3, ptr %t159, { i64, ptr } %t158)
  store { i64, ptr } %t161, ptr %l68
  br label %bb24
bb24:
  %t162 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  %t164 = extractvalue { i64, ptr } %t162, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  store { i64, ptr } %t168, ptr %l7, !tbaa !27
  %t170 = load ptr, ptr %l3, !tbaa !29
  store ptr %t170, ptr %l70, !tbaa !29
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l71, !tbaa !29
  %t172 = load ptr, ptr %l3, !tbaa !29
  %t173 = load i32, ptr %l8, !tbaa !23
  %t176 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t176, ptr %l74
  br label %bb25
bb25:
  %t177 = load ptr, ptr %l71, !tbaa !29
  %t178 = load i32, ptr %l74, !tbaa !23
  %t179 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %t177, i32 %t178)
  store i32 %t179, ptr %l75
  br label %bb26
bb26:
  %t180 = load ptr, ptr %l70, !tbaa !29
  %t181 = load i32, ptr %l75, !tbaa !23
  %t182 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s5, ptr %t180, i32 %t181)
  store { i64, ptr } %t182, ptr %l76
  br label %bb27
bb27:
  %t183 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t183, ptr %l77, !tbaa !27
  %t184 = load i64, ptr %l12, !tbaa !24
  %t186 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t187 = load ptr, ptr %t186, !tbaa !27
  %t188 = getelementptr i32, ptr %t187, i64 %t184
  %t189 = load i32, ptr %t188, !tbaa !33
  store i32 %t189, ptr %l8, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  %t191 = load i64, ptr %l10, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l10, !tbaa !24
  br label %bb18
bb29:
  call void @__olang_scope_close(ptr %s4)
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l82, !tbaa !29
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l83, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l8, !tbaa !23
  %t201 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t197, i32 %t198)
  store { i64, ptr } %t201, ptr %l86
  br label %bb30
bb30:
  %t202 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  %t204 = extractvalue { i64, ptr } %t202, 1
  %t205 = mul i64 %t203, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t205)
  call void @llvm.memcpy.p0.p0.i64(ptr %t206, ptr %t204, i64 %t205, i1 false)
  %t207 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  %t209 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t209, ptr %l88, !tbaa !27
  %t210 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_scope_of(ptr %t211, ptr null)
  %t213 = ptrtoint ptr %t212 to i64
  %t215 = inttoptr i64 %t213 to ptr
  %t216 = load ptr, ptr %l83, !tbaa !29
  %t218 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t219 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s3, ptr %t215, ptr %s3, ptr %s3, ptr %t216, { i64, ptr } %t208, { i64, ptr } %t218, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t219, ptr %l90
  br label %bb31
bb31:
  %t220 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = extractvalue { i64, ptr } %t220, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  %t227 = load i32, ptr %l8, !tbaa !23
  %t228 = load ptr, ptr %l82, !tbaa !29
  %t231 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s3, ptr %s3, ptr %t228, { i64, ptr } %t226, i32 %t227)
  store { i64, ptr } %t231, ptr %l93
  br label %bb32
bb32:
  %t232 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  store i64 %t233, ptr %l94, !tbaa !24
  %t234 = load i64, ptr %l94, !tbaa !24
  %t235 = mul i64 %t234, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t235)
  %t237 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  store { i64, ptr } %t238, ptr %l95, !tbaa !27
  %t239 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !27
  %t243 = load i64, ptr %l94, !tbaa !24
  %t244 = mul i64 %t243, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t240, ptr %t242, i64 %t244, i1 false)
  %t245 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t251 = extractvalue { i64, ptr } %t245, 1
  %t252 = extractvalue { i64, ptr } %t245, 0
  %t253 = add i64 %t249, %t252
  %t254 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t256 = add i64 %t253, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t256)
  call void @olang_textcopy(ptr %t257, ptr %t248, i64 %t249)
  %t258 = getelementptr i8, ptr %t257, i64 %t249
  call void @olang_textcopy(ptr %t258, ptr %t251, i64 %t252)
  %t259 = getelementptr i8, ptr %t258, i64 %t252
  call void @olang_textcopy(ptr %t259, ptr %t254, i64 %t255)
  %t260 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t257, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t271 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %s3, ptr %t246, { i64, ptr } %t268)
  store { i64, ptr } %t271, ptr %l100
  br label %bb33
bb33:
  %t272 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t272, ptr %l14, !tbaa !27
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t275 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t276 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t278 = extractvalue { i64, ptr } %t274, 1
  %t279 = extractvalue { i64, ptr } %t274, 0
  %t280 = add i64 %t276, %t279
  %t281 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t283 = add i64 %t280, %t282
  %t284 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t283)
  call void @olang_textcopy(ptr %t284, ptr %t275, i64 %t276)
  %t285 = getelementptr i8, ptr %t284, i64 %t276
  call void @olang_textcopy(ptr %t285, ptr %t278, i64 %t279)
  %t286 = getelementptr i8, ptr %t285, i64 %t279
  call void @olang_textcopy(ptr %t286, ptr %t281, i64 %t282)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t284, 1
  %t290 = extractvalue { i64, ptr } %t288, 0
  %t291 = extractvalue { i64, ptr } %t288, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t298 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s3, ptr %s3, ptr %t273, { i64, ptr } %t295)
  store { i64, ptr } %t298, ptr %l105
  br label %bb34
bb34:
  %t299 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t303 = load ptr, ptr %lp4
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  %t305 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t308 = extractvalue { i64, ptr } %t299, 1
  %t309 = extractvalue { i64, ptr } %t299, 0
  %t310 = add i64 %t306, %t309
  %t311 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t312 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t313 = add i64 %t310, %t312
  %t315 = extractvalue { i64, ptr } %t302, 1
  %t316 = extractvalue { i64, ptr } %t302, 0
  %t317 = add i64 %t313, %t316
  %t318 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t320 = add i64 %t317, %t319
  %t322 = extractvalue { i64, ptr } %t304, 1
  %t323 = extractvalue { i64, ptr } %t304, 0
  %t324 = add i64 %t320, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t305, i64 %t306)
  %t326 = getelementptr i8, ptr %t325, i64 %t306
  call void @olang_textcopy(ptr %t326, ptr %t308, i64 %t309)
  %t327 = getelementptr i8, ptr %t326, i64 %t309
  call void @olang_textcopy(ptr %t327, ptr %t311, i64 %t312)
  %t328 = getelementptr i8, ptr %t327, i64 %t312
  call void @olang_textcopy(ptr %t328, ptr %t315, i64 %t316)
  %t329 = getelementptr i8, ptr %t328, i64 %t316
  call void @olang_textcopy(ptr %t329, ptr %t318, i64 %t319)
  %t330 = getelementptr i8, ptr %t329, i64 %t319
  call void @olang_textcopy(ptr %t330, ptr %t322, i64 %t323)
  %t331 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t325, 1
  %t334 = extractvalue { i64, ptr } %t332, 0
  %t335 = extractvalue { i64, ptr } %t332, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t342 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v2, ptr %v2, ptr %t300, { i64, ptr } %t339)
  store { i64, ptr } %t342, ptr %l112
  br label %bb35
bb35:
  %t343 = load ptr, ptr %lp4
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t344, 0
  %t346 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 0
  store i64 %t347, ptr %l114, !tbaa !24
  %t349 = load i64, ptr %l114, !tbaa !24
  %t350 = icmp eq i64 %t345, %t349
  br i1 %t350, label %bb36, label %bb37
bb36:
  %t352 = load ptr, ptr %lp4
  %t353 = getelementptr { i64, ptr }, ptr %t352, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = load i64, ptr %l114, !tbaa !24
  %t358 = mul i64 %t357, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t354, ptr %t356, i64 %t358, i1 false)
  br label %bb38
bb37:
  %t359 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t360 = load ptr, ptr %lp4
  store { i64, ptr } %t359, ptr %t360, !tbaa !27
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb39:
  %t361 = load i64, ptr %l6, !tbaa !24
  %t363 = sub i64 %t361, 1
  store i64 %t363, ptr %l6, !tbaa !24
  br label %bb13
bb40:
  %t365 = load ptr, ptr %lp4
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t366, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2easInt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l7 = alloca i64
  %l12 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
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
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t12 = call i64 @__olang_fmt_i64(ptr null, i64 %t8)
  %t13 = add i64 %t10, %t12
  %t14 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t9, i64 %t10)
  %t18 = getelementptr i8, ptr %t17, i64 %t10
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t8)
  %t20 = getelementptr i8, ptr %t18, i64 %t12
  call void @olang_textcopy(ptr %t20, ptr %t14, i64 %t15)
  %t21 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t17, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } %t22, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t32 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %s0, ptr %s0, ptr %t7, { i64, ptr } %t29, i64 1)
  store { i64, ptr } %t32, ptr %l12
  br label %bb2
bb2:
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t39 = call i64 @__olang_fmt_i64(ptr null, i64 %t35)
  %t40 = add i64 %t37, %t39
  %t41 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t43 = add i64 %t40, %t42
  %t44 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t43)
  call void @olang_textcopy(ptr %t44, ptr %t36, i64 %t37)
  %t45 = getelementptr i8, ptr %t44, i64 %t37
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t35)
  %t47 = getelementptr i8, ptr %t45, i64 %t39
  call void @olang_textcopy(ptr %t47, ptr %t41, i64 %t42)
  %t48 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t44, 1
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t52 = extractvalue { i64, ptr } %t49, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %v1, ptr %s0, ptr %s0, ptr %t34, { i64, ptr } %t56, { i64, ptr } %a1, { i64, ptr } %t58, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb3
bb3:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i64, ptr %l3, !tbaa !24
  %t66 = mul i64 8, %t64
  %t67 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t70 = call i64 @__olang_fmt_i64(ptr null, i64 %t66)
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t67, i64 %t68)
  %t73 = getelementptr i8, ptr %t72, i64 %t68
  %t74 = call i64 @__olang_fmt_i64(ptr %t73, i64 %t66)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t72, 1
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t79 = extractvalue { i64, ptr } %t76, 1
  %t80 = mul i64 %t78, 1
  %t81 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t80)
  call void @llvm.memcpy.p0.p0.i64(ptr %t81, ptr %t79, i64 %t80, i1 false)
  %t82 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t81, 1
  %t84 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t88 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v2, ptr %s0, ptr %v2, ptr %v2, ptr %t63, { i64, ptr } %t83, { i64, ptr } %t84, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t88, ptr %l25
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t89 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ebigArena(ptr %v0, ptr %a0) #0 {
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
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 13
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:fnEm", ptr %t6, i32 0, i32 13
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:fnEm", ptr %t9, i32 0, i32 3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t11, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d62, i32 0, i32 1) })
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/emit:fnEm", ptr %t13, i32 0, i32 4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t15, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/emit:fnEm", ptr %t17, i32 0, i32 0
  %t20 = load ptr, ptr %t19, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t20, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d64, i32 0, i32 1) })
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t25, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d65, i32 0, i32 1) })
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecaseRange(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca i32
  %l25 = alloca i1
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l35 = alloca i1
  %l38 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %a2, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i1 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i1, ptr %l7, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l9, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t7, ptr %l10, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t11)
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
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:fnEm", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/emit:Emitter", ptr %t26, i32 0, i32 3
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l3, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t31, i32 %a1)
  store i32 %t35, ptr %l18
  br label %bb5
bb5:
  %t36 = load i32, ptr %l18, !tbaa !23
  store i32 %t36, ptr %l4, !tbaa !23
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l4, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l21
  br label %bb6
bb6:
  %t42 = load i32, ptr %l21, !range !{i32 0, i32 33}
  store i32 %t42, ptr %l5
  %t43 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t45 = trunc i64 18 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t52 = trunc i64 24 to i32
  %t53 = icmp eq i32 %t50, %t52
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l25, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t57 = load i1, ptr %l25, !tbaa !21
  br i1 %t57, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t58, ptr %l30, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l31, !tbaa !24
  %t61 = load i64, ptr %l31, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l32, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l31, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t72, ptr %l30, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t73 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t74 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t76 = trunc i64 18 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb13, label %bb14
bb13:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t80 = load i32, ptr %l4, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l38
  br label %bb15
bb14:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb16
bb15:
  %t84 = load i32, ptr %l38, !tbaa !23
  %t85 = icmp eq i32 %t84, 0
  store i1 %t85, ptr %l35, !tbaa !21
  br label %bb16
bb16:
  %t87 = load i1, ptr %l35, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t88, ptr %l41, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 0
  store i64 %t90, ptr %l42, !tbaa !24
  %t91 = load i64, ptr %l42, !tbaa !24
  %t92 = mul i64 %t91, 1
  %t93 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l43, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l42, !tbaa !24
  %t101 = mul i64 %t100, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t97, ptr %t99, i64 %t101, i1 false)
  %t102 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t102, ptr %l41, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t103 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t103, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l44, !tbaa !29
  %t105 = load ptr, ptr %l3, !tbaa !29
  store ptr %t105, ptr %l45, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i32, ptr %l4, !tbaa !23
  %t110 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l48
  br label %bb20
bb20:
  %t111 = load ptr, ptr %l45, !tbaa !29
  %t112 = load i32, ptr %l48, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t111, i32 %t112)
  store { i64, ptr } %t113, ptr %l49
  br label %bb21
bb21:
  %t114 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  %t116 = load ptr, ptr %l44, !tbaa !29
  %t118 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etagRange(ptr %v0, ptr %v2, ptr %v2, ptr %t116, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d70, i32 0, i32 1) }, i64 %t115)
  store { i64, ptr } %t118, ptr %l51
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t119, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArrayIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l16 = alloca i32
  %l17 = alloca i32
  %l22 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
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
  store ptr %t7, ptr %l13, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %t10, i32 %a3)
  store i32 %t14, ptr %l16
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = load i32, ptr %l16, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load i32, ptr %l17, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t24 = extractvalue { i64, ptr } %t20, 1
  %t25 = extractvalue { i64, ptr } %t20, 0
  %t26 = add i64 %t22, %t25
  %t27 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t29 = add i64 %t26, %t28
  %t30 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t29)
  call void @olang_textcopy(ptr %t30, ptr %t21, i64 %t22)
  %t31 = getelementptr i8, ptr %t30, i64 %t22
  call void @olang_textcopy(ptr %t31, ptr %t24, i64 %t25)
  %t32 = getelementptr i8, ptr %t31, i64 %t25
  call void @olang_textcopy(ptr %t32, ptr %t27, i64 %t28)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t30, 1
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t37 = extractvalue { i64, ptr } %t34, 1
  %t38 = mul i64 %t36, 1
  %t39 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t38)
  call void @llvm.memcpy.p0.p0.i64(ptr %t39, ptr %t37, i64 %t38, i1 false)
  %t40 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t39, 1
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t19, { i64, ptr } %t41)
  store { i64, ptr } %t44, ptr %l22
  br label %bb3
bb3:
  %t45 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t48 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t51 = extractvalue { i64, ptr } %t47, 1
  %t52 = extractvalue { i64, ptr } %t47, 0
  %t53 = add i64 %t49, %t52
  %t54 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t56 = add i64 %t53, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t48, i64 %t49)
  %t58 = getelementptr i8, ptr %t57, i64 %t49
  call void @olang_textcopy(ptr %t58, ptr %t51, i64 %t52)
  %t59 = getelementptr i8, ptr %t58, i64 %t52
  call void @olang_textcopy(ptr %t59, ptr %t54, i64 %t55)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t57, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = extractvalue { i64, ptr } %t61, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t71 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t46, { i64, ptr } %t68)
  store { i64, ptr } %t71, ptr %l27
  br label %bb4
bb4:
  %t72 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t72, ptr %l7, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  store ptr %t73, ptr %l28, !tbaa !29
  %t74 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t74, ptr %l29, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l5, !tbaa !23
  %t79 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t75, i32 %t76)
  store i64 %t79, ptr %l32
  br label %bb5
bb5:
  %t80 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t82 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = add i64 %t81, %t84
  %t86 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t88 = add i64 %t85, %t87
  %t89 = load i64, ptr %l32, !tbaa !24
  %t90 = call i64 @__olang_fmt_i64(ptr null, i64 %t89)
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t80, i64 %t81)
  %t93 = getelementptr i8, ptr %t92, i64 %t81
  call void @olang_textcopy(ptr %t93, ptr %t83, i64 %t84)
  %t94 = getelementptr i8, ptr %t93, i64 %t84
  call void @olang_textcopy(ptr %t94, ptr %t86, i64 %t87)
  %t95 = getelementptr i8, ptr %t94, i64 %t87
  %t96 = call i64 @__olang_fmt_i64(ptr %t95, i64 %t89)
  %t97 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t92, 1
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t101 = extractvalue { i64, ptr } %t98, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load ptr, ptr %l28, !tbaa !29
  %t108 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t106, { i64, ptr } %t105)
  store { i64, ptr } %t108, ptr %l35
  br label %bb6
bb6:
  %t109 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t109, ptr %l8, !tbaa !27
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t113 = load i32, ptr %l5, !tbaa !23
  %t118 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t110, { i64, ptr } %a1, { i64, ptr } %t112, i32 %t113, i1 false)
  store { i64, ptr } %t118, ptr %l40
  br label %bb7
bb7:
  %t119 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t119, ptr %l9, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/emit:fnEm", ptr %t120, i32 0, i32 0
  %t123 = load ptr, ptr %t122, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t123, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d77, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d78, i32 0, i32 1) })
  br label %bb8
bb8:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t128 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t129 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t130 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t132 = extractvalue { i64, ptr } %t126, 1
  %t133 = extractvalue { i64, ptr } %t126, 0
  %t134 = add i64 %t130, %t133
  %t135 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t139 = extractvalue { i64, ptr } %t127, 1
  %t140 = extractvalue { i64, ptr } %t127, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t146 = extractvalue { i64, ptr } %t128, 1
  %t147 = extractvalue { i64, ptr } %t128, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t129, i64 %t130)
  %t153 = getelementptr i8, ptr %t152, i64 %t130
  call void @olang_textcopy(ptr %t153, ptr %t132, i64 %t133)
  %t154 = getelementptr i8, ptr %t153, i64 %t133
  call void @olang_textcopy(ptr %t154, ptr %t135, i64 %t136)
  %t155 = getelementptr i8, ptr %t154, i64 %t136
  call void @olang_textcopy(ptr %t155, ptr %t139, i64 %t140)
  %t156 = getelementptr i8, ptr %t155, i64 %t140
  call void @olang_textcopy(ptr %t156, ptr %t142, i64 %t143)
  %t157 = getelementptr i8, ptr %t156, i64 %t143
  call void @olang_textcopy(ptr %t157, ptr %t146, i64 %t147)
  %t158 = getelementptr i8, ptr %t157, i64 %t147
  call void @olang_textcopy(ptr %t158, ptr %t149, i64 %t150)
  %t159 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t152, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } %t160, 1
  %t164 = mul i64 %t162, 1
  %t165 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t164)
  call void @llvm.memcpy.p0.p0.i64(ptr %t165, ptr %t163, i64 %t164, i1 false)
  %t166 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t165, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t125, { i64, ptr } %t167)
  br label %bb9
bb9:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t172 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t176 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s0, ptr %s0, ptr %v3, ptr %t170, { i64, ptr } %t171, { i64, ptr } %t172)
  store { i64, ptr } %t176, ptr %l52
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t177 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 20
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/emit:fnEm", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l13
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t24 = load i64, ptr %l13, !tbaa !24
  store i64 %t24, ptr %l2, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/emit:fnEm", ptr %t25, i32 0, i32 20
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t27, i64 %t28, i64 %t29)
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/emit:fnEm", ptr %t33, i32 0, i32 21
  %t36 = load i64, ptr %l2, !tbaa !24
  %t37 = load i64, ptr %l1, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/emit:fnEm", ptr %t38, i32 0, i32 18
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t45 = call i64 @__olang_fmt_i64(ptr null, i64 %t36)
  %t46 = add i64 %t43, %t45
  %t47 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t49 = add i64 %t46, %t48
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t37)
  %t52 = add i64 %t49, %t51
  %t53 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t41)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t42, i64 %t43)
  %t63 = getelementptr i8, ptr %t62, i64 %t43
  %t64 = call i64 @__olang_fmt_i64(ptr %t63, i64 %t36)
  %t65 = getelementptr i8, ptr %t63, i64 %t45
  call void @olang_textcopy(ptr %t65, ptr %t47, i64 %t48)
  %t66 = getelementptr i8, ptr %t65, i64 %t48
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t37)
  %t68 = getelementptr i8, ptr %t66, i64 %t51
  call void @olang_textcopy(ptr %t68, ptr %t53, i64 %t54)
  %t69 = getelementptr i8, ptr %t68, i64 %t54
  %t70 = call i64 @__olang_fmt_i64(ptr %t69, i64 %t41)
  %t71 = getelementptr i8, ptr %t69, i64 %t57
  call void @olang_textcopy(ptr %t71, ptr %t59, i64 %t60)
  %t72 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t62, 1
  %t75 = extractvalue { i64, ptr } %t73, 0
  %t76 = extractvalue { i64, ptr } %t73, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t35, { i64, ptr } %t80)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb10:
  %t83 = load i64, ptr %l2, !tbaa !24
  %t84 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t83)
  %t88 = add i64 %t85, %t87
  %t89 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t88)
  call void @olang_textcopy(ptr %t89, ptr %t84, i64 %t85)
  %t90 = getelementptr i8, ptr %t89, i64 %t85
  %t91 = call i64 @__olang_fmt_i64(ptr %t90, i64 %t83)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t89, 1
  store { i64, ptr } %t93, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ederefs(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1) #0 {
entry:
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i32
  %l42 = alloca { i64, [1 x i64] }
  %rv = alloca i1
  store %"compiler/mir:Lvalue" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t2 = getelementptr %"compiler/mir:Range", ptr %t1, i32 0, i32 1
  %t3 = load i32, ptr %t2, !tbaa !23
  store i32 %t3, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l2, !tbaa !23
  %t9 = icmp sgt i32 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i32, ptr %l4, !tbaa !23
  %t13 = icmp sgt i32 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l13, !tbaa !23
  br label %bb6
bb3:
  %t15 = load i32, ptr %l3, !tbaa !23
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = sub i32 %t15, %t16
  %t20 = load i32, ptr %l4, !tbaa !23
  %t23 = add i32 %t19, %t20
  %t25 = sub i32 %t23, 1
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = sdiv i32 %t25, %t26
  store i32 %t29, ptr %l16, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l16, !tbaa !23
  br label %bb5
bb5:
  %t31 = load i32, ptr %l16, !tbaa !23
  store i32 %t31, ptr %l13, !tbaa !23
  br label %bb6
bb6:
  %t32 = load i32, ptr %l13, !tbaa !23
  store i32 %t32, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  %t33 = load i32, ptr %l6, !tbaa !23
  %t34 = load i32, ptr %l5, !tbaa !23
  %t37 = icmp slt i32 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load i32, ptr %l6, !tbaa !23
  %t43 = load i32, ptr %l4, !tbaa !23
  %t46 = mul i32 %t42, %t43
  %t49 = add i32 %t41, %t46
  %t53 = getelementptr %"compiler/emit:fnEm", ptr %a0, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/mir:Fn", ptr %t54, i32 0, i32 10
  %t57 = getelementptr %"compiler/mir:Lvalue", ptr %l1, i32 0, i32 1
  %t58 = getelementptr %"compiler/mir:Range", ptr %t57, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = sext i32 %t59 to i64
  %t64 = sext i32 %t49 to i64
  %t67 = add i64 %t61, %t64
  %t70 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %t56, i64 %t67)
  store { i64, [1 x i64] } %t70, ptr %l42
  br label %bb11
bb11:
  %t71 = load { i64, [1 x i64] }, ptr %l42
  %t74 = extractvalue { i64, [1 x i64] } %t71, 0
  %t75 = icmp eq i64 %t74, 3
  br i1 %t75, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_e9e71ccb75095175_3df52a9a91674c89)
  unreachable
bb20:
  br label %bb21
bb21:
  %t78 = load i32, ptr %l6, !tbaa !23
  %t80 = add i32 %t78, 1
  store i32 %t80, ptr %l6, !tbaa !23
  br label %bb7
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eisFrame(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [1 x i64] } %a1, 0
  %t4 = icmp eq i64 %t3, 3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_d7426df353af1cf1_5409353fb5c530e5)
  unreachable
bb9:
  %t6 = load i1, ptr %l2, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1) #0 {
entry:
  %l1 = alloca { i64, [4 x i64] }
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i32
  %l4 = alloca i32
  %l13 = alloca i32
  %rv = alloca i32
  store { i64, [4 x i64] } %a1, ptr %l1
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
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  br label %bb16
bb4:
  %t8 = load { i64, [4 x i64] }, ptr %l1
  %t10 = extractvalue { i64, [4 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t14 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t13, i32 0, i32 0
  %t15 = load %"compiler/mir:Lvalue", ptr %t14
  store %"compiler/mir:Lvalue" %t15, ptr %l2
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t18 = load %"compiler/mir:Lvalue", ptr %l2
  %t21 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %t18)
  store i32 %t21, ptr %l13
  br label %bb8
bb8:
  %t22 = load i32, ptr %l13, !tbaa !23
  store i32 %t22, ptr %l4, !tbaa !23
  br label %bb16
bb9:
  %t23 = load { i64, [4 x i64] }, ptr %l1
  %t25 = extractvalue { i64, [4 x i64] } %t23, 0
  %t26 = icmp eq i64 %t25, 2
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t29 = getelementptr { i32, i64 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29
  store i32 %t30, ptr %l3, !tbaa !23
  br label %bb14
bb11:
  %t32 = load { i64, [4 x i64] }, ptr %l1
  %t34 = extractvalue { i64, [4 x i64] } %t32, 0
  %t35 = icmp eq i64 %t34, 3
  br i1 %t35, label %bb12, label %bb13
bb12:
  %t37 = getelementptr { i64, [4 x i64] }, ptr %l1, i32 0, i32 1
  %t38 = getelementptr { i32, i32, i64, %"compiler/source:Span" }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l3, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %l4, !tbaa !23
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_34175b6f59aa64d9_d8857486e5aa61ad)
  unreachable
bb16:
  %t43 = load i32, ptr %l4, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erefIs(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i32, ptr %l3, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t16 = icmp eq i64 %t12, %a2
  store i1 %t16, ptr %l4, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b58edc65c6718b49_26c0578031dccca5)
  unreachable
bb9:
  %t18 = load i1, ptr %l4, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l6
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/emit:fnEm", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/emit:Emitter", ptr %t15, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l11
  br label %bb2
bb2:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2estoreParts(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, i32 %a3, { i64, ptr } %a4, i64 %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l29 = alloca i32
  %l32 = alloca i32
  %l59 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l61 = alloca i32
  %l65 = alloca { i64, ptr }
  %l70 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/emit:Emitter", ptr %t4, i32 0, i32 3
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l7, !tbaa !29
  store ptr %t9, ptr %l18, !tbaa !29
  %t10 = load ptr, ptr %l7, !tbaa !29
  store ptr %t10, ptr %l19, !tbaa !29
  %t11 = load ptr, ptr %l7, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l22
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l19, !tbaa !29
  %t17 = load i32, ptr %l22, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t18, ptr %l23
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l18, !tbaa !29
  %t20 = load i32, ptr %l23, !tbaa !23
  %t21 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t19, i32 %t20)
  store { i64, ptr } %t21, ptr %l24
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  store i32 0, ptr %l9, !tbaa !23
  store i32 %a6, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t25 = load i32, ptr %l10, !tbaa !23
  %t26 = load i32, ptr %l9, !tbaa !23
  %t29 = icmp sgt i32 %t25, %t26
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t31 = load i32, ptr %l11, !tbaa !23
  %t33 = icmp sgt i32 %t31, 0
  br i1 %t33, label %bb6, label %bb7
bb5:
  store i32 0, ptr %l29, !tbaa !23
  br label %bb9
bb6:
  %t35 = load i32, ptr %l10, !tbaa !23
  %t36 = load i32, ptr %l9, !tbaa !23
  %t39 = sub i32 %t35, %t36
  %t40 = load i32, ptr %l11, !tbaa !23
  %t43 = add i32 %t39, %t40
  %t45 = sub i32 %t43, 1
  %t46 = load i32, ptr %l11, !tbaa !23
  %t49 = sdiv i32 %t45, %t46
  store i32 %t49, ptr %l32, !tbaa !23
  br label %bb8
bb7:
  store i32 0, ptr %l32, !tbaa !23
  br label %bb8
bb8:
  %t51 = load i32, ptr %l32, !tbaa !23
  store i32 %t51, ptr %l29, !tbaa !23
  br label %bb9
bb9:
  %t52 = load i32, ptr %l29, !tbaa !23
  store i32 %t52, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load i32, ptr %l13, !tbaa !23
  %t54 = load i32, ptr %l12, !tbaa !23
  %t57 = icmp slt i32 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb12:
  br label %bb13
bb13:
  %t61 = load i32, ptr %l9, !tbaa !23
  %t62 = load i32, ptr %l13, !tbaa !23
  %t63 = load i32, ptr %l11, !tbaa !23
  %t66 = mul i32 %t62, %t63
  %t69 = add i32 %t61, %t66
  store i32 %t69, ptr %l14, !tbaa !23
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t73 = load i32, ptr %l14, !tbaa !23
  %t75 = load i32, ptr %l14, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t80 = add i64 %a5, %t77
  %t81 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t84 = extractvalue { i64, ptr } %t72, 1
  %t85 = extractvalue { i64, ptr } %t72, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t91 = sext i32 %t73 to i64
  %t92 = call i64 @__olang_fmt_i64(ptr null, i64 %t91)
  %t93 = add i64 %t89, %t92
  %t94 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t96 = add i64 %t93, %t95
  %t98 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t99 = add i64 %t96, %t98
  %t100 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t102 = add i64 %t99, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t81, i64 %t82)
  %t104 = getelementptr i8, ptr %t103, i64 %t82
  call void @olang_textcopy(ptr %t104, ptr %t84, i64 %t85)
  %t105 = getelementptr i8, ptr %t104, i64 %t85
  call void @olang_textcopy(ptr %t105, ptr %t87, i64 %t88)
  %t106 = getelementptr i8, ptr %t105, i64 %t88
  %t107 = call i64 @__olang_fmt_i64(ptr %t106, i64 %t91)
  %t108 = getelementptr i8, ptr %t106, i64 %t92
  call void @olang_textcopy(ptr %t108, ptr %t94, i64 %t95)
  %t109 = getelementptr i8, ptr %t108, i64 %t95
  %t110 = call i64 @__olang_fmt_i64(ptr %t109, i64 %t80)
  %t111 = getelementptr i8, ptr %t109, i64 %t98
  call void @olang_textcopy(ptr %t111, ptr %t100, i64 %t101)
  %t112 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t103, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t71, { i64, ptr } %t120)
  br label %bb14
bb14:
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l59, !tbaa !29
  %t124 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t124, ptr %l60, !tbaa !27
  %t125 = load i32, ptr %l14, !tbaa !23
  store i32 %t125, ptr %l61, !tbaa !23
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/emit:fnEm", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load i32, ptr %l3, !tbaa !23
  %t133 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s2, ptr %t129, i32 %t130)
  store { i64, ptr } %t133, ptr %l65
  br label %bb15
bb15:
  %t135 = load i32, ptr %l14, !tbaa !23
  %t136 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t138 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = load i32, ptr %l61, !tbaa !23
  %t146 = sext i32 %t145 to i64
  %t147 = call i64 @__olang_fmt_i64(ptr null, i64 %t146)
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = add i64 %t151, %t154
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t157 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t158 = add i64 %t155, %t157
  %t160 = extractvalue { i64, ptr } %a4, 1
  %t161 = extractvalue { i64, ptr } %a4, 0
  %t162 = add i64 %t158, %t161
  %t163 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t167 = sext i32 %t135 to i64
  %t168 = call i64 @__olang_fmt_i64(ptr null, i64 %t167)
  %t169 = add i64 %t165, %t168
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t172)
  call void @olang_textcopy(ptr %t173, ptr %t136, i64 %t137)
  %t174 = getelementptr i8, ptr %t173, i64 %t137
  call void @olang_textcopy(ptr %t174, ptr %t139, i64 %t140)
  %t175 = getelementptr i8, ptr %t174, i64 %t140
  call void @olang_textcopy(ptr %t175, ptr %t142, i64 %t143)
  %t176 = getelementptr i8, ptr %t175, i64 %t143
  %t177 = call i64 @__olang_fmt_i64(ptr %t176, i64 %t146)
  %t178 = getelementptr i8, ptr %t176, i64 %t147
  call void @olang_textcopy(ptr %t178, ptr %t149, i64 %t150)
  %t179 = getelementptr i8, ptr %t178, i64 %t150
  call void @olang_textcopy(ptr %t179, ptr %t153, i64 %t154)
  %t180 = getelementptr i8, ptr %t179, i64 %t154
  call void @olang_textcopy(ptr %t180, ptr %t156, i64 %t157)
  %t181 = getelementptr i8, ptr %t180, i64 %t157
  call void @olang_textcopy(ptr %t181, ptr %t160, i64 %t161)
  %t182 = getelementptr i8, ptr %t181, i64 %t161
  call void @olang_textcopy(ptr %t182, ptr %t163, i64 %t164)
  %t183 = getelementptr i8, ptr %t182, i64 %t164
  %t184 = call i64 @__olang_fmt_i64(ptr %t183, i64 %t167)
  %t185 = getelementptr i8, ptr %t183, i64 %t168
  call void @olang_textcopy(ptr %t185, ptr %t170, i64 %t171)
  %t186 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t173, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t195 = load ptr, ptr %l59, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t195, { i64, ptr } %t194)
  br label %bb16
bb16:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l70, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/emit:fnEm", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t202 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t202, ptr %l73, !tbaa !27
  %t203 = load i32, ptr %l14, !tbaa !23
  %t205 = sext i32 %t203 to i64
  %t206 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i32, ptr %t207, i64 %t205
  %t209 = load i32, ptr %t208, !tbaa !33
  %t212 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s2, ptr %t201, i32 %t209)
  store { i64, ptr } %t212, ptr %l76
  br label %bb17
bb17:
  %t213 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t214 = load i32, ptr %l14, !tbaa !23
  %t215 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t216 = load i32, ptr %l14, !tbaa !23
  %t217 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t219 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t213, 1
  %t228 = extractvalue { i64, ptr } %t213, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t234 = sext i32 %t214 to i64
  %t235 = call i64 @__olang_fmt_i64(ptr null, i64 %t234)
  %t236 = add i64 %t232, %t235
  %t237 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t239 = add i64 %t236, %t238
  %t241 = extractvalue { i64, ptr } %t215, 1
  %t242 = extractvalue { i64, ptr } %t215, 0
  %t243 = add i64 %t239, %t242
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t245 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t246 = add i64 %t243, %t245
  %t248 = sext i32 %t216 to i64
  %t249 = call i64 @__olang_fmt_i64(ptr null, i64 %t248)
  %t250 = add i64 %t246, %t249
  %t251 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t253 = add i64 %t250, %t252
  %t254 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t253)
  call void @olang_textcopy(ptr %t254, ptr %t217, i64 %t218)
  %t255 = getelementptr i8, ptr %t254, i64 %t218
  call void @olang_textcopy(ptr %t255, ptr %t220, i64 %t221)
  %t256 = getelementptr i8, ptr %t255, i64 %t221
  call void @olang_textcopy(ptr %t256, ptr %t223, i64 %t224)
  %t257 = getelementptr i8, ptr %t256, i64 %t224
  call void @olang_textcopy(ptr %t257, ptr %t227, i64 %t228)
  %t258 = getelementptr i8, ptr %t257, i64 %t228
  call void @olang_textcopy(ptr %t258, ptr %t230, i64 %t231)
  %t259 = getelementptr i8, ptr %t258, i64 %t231
  %t260 = call i64 @__olang_fmt_i64(ptr %t259, i64 %t234)
  %t261 = getelementptr i8, ptr %t259, i64 %t235
  call void @olang_textcopy(ptr %t261, ptr %t237, i64 %t238)
  %t262 = getelementptr i8, ptr %t261, i64 %t238
  call void @olang_textcopy(ptr %t262, ptr %t241, i64 %t242)
  %t263 = getelementptr i8, ptr %t262, i64 %t242
  call void @olang_textcopy(ptr %t263, ptr %t244, i64 %t245)
  %t264 = getelementptr i8, ptr %t263, i64 %t245
  %t265 = call i64 @__olang_fmt_i64(ptr %t264, i64 %t248)
  %t266 = getelementptr i8, ptr %t264, i64 %t249
  call void @olang_textcopy(ptr %t266, ptr %t251, i64 %t252)
  %t267 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t254, 1
  %t270 = extractvalue { i64, ptr } %t268, 0
  %t271 = extractvalue { i64, ptr } %t268, 1
  %t272 = mul i64 %t270, 1
  %t273 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t272)
  call void @llvm.memcpy.p0.p0.i64(ptr %t273, ptr %t271, i64 %t272, i1 false)
  %t274 = insertvalue { i64, ptr } undef, i64 %t270, 0
  %t275 = insertvalue { i64, ptr } %t274, ptr %t273, 1
  %t276 = load ptr, ptr %l70, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t276, { i64, ptr } %t275)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t278 = load i32, ptr %l13, !tbaa !23
  %t280 = add i32 %t278, 1
  store i32 %t280, ptr %l13, !tbaa !23
  br label %bb10
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etagRange(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d103, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t5, ptr %l5, !tbaa !27
  br label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t13 = extractvalue { i64, ptr } %t7, 1
  %t14 = extractvalue { i64, ptr } %t7, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = extractvalue { i64, ptr } %t8, 1
  %t21 = extractvalue { i64, ptr } %t8, 0
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = call i64 @__olang_fmt_i64(ptr null, i64 %t9)
  %t28 = add i64 %t25, %t27
  %t29 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t31 = add i64 %t28, %t30
  %t32 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t10, i64 %t11)
  %t33 = getelementptr i8, ptr %t32, i64 %t11
  call void @olang_textcopy(ptr %t33, ptr %t13, i64 %t14)
  %t34 = getelementptr i8, ptr %t33, i64 %t14
  call void @olang_textcopy(ptr %t34, ptr %t16, i64 %t17)
  %t35 = getelementptr i8, ptr %t34, i64 %t17
  call void @olang_textcopy(ptr %t35, ptr %t20, i64 %t21)
  %t36 = getelementptr i8, ptr %t35, i64 %t21
  call void @olang_textcopy(ptr %t36, ptr %t23, i64 %t24)
  %t37 = getelementptr i8, ptr %t36, i64 %t24
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t9)
  %t39 = getelementptr i8, ptr %t37, i64 %t27
  call void @olang_textcopy(ptr %t39, ptr %t29, i64 %t30)
  %t40 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t32, 1
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  br label %bb3
bb3:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t43, 0
  store i64 %t44, ptr %l12, !tbaa !24
  %t45 = load i64, ptr %l12, !tbaa !24
  %t46 = mul i64 %t45, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t46)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  store { i64, ptr } %t49, ptr %l13, !tbaa !27
  %t50 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = load i64, ptr %l12, !tbaa !24
  %t55 = mul i64 %t54, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t51, ptr %t53, i64 %t55, i1 false)
  %t56 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t56, ptr %l5, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2eunwindPush(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d108, i32 0, i32 1) }, { i64, ptr } { i64 67, ptr getelementptr inbounds (<{ i64, [67 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t6, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d110, i32 0, i32 1) }, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d111, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t8, ptr %l7
  br label %bb2
bb2:
  %t9 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store { i64, ptr } %t9, ptr %l9, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l1, !tbaa !23
  %t14 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t17 = sext i32 %t13 to i64
  %t18 = call i64 @__olang_fmt_i64(ptr null, i64 %t17)
  %t19 = add i64 %t15, %t18
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  %t22 = add i64 %t19, %t21
  %t23 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t14, i64 %t15)
  %t24 = getelementptr i8, ptr %t23, i64 %t15
  %t25 = call i64 @__olang_fmt_i64(ptr %t24, i64 %t17)
  %t26 = getelementptr i8, ptr %t24, i64 %t18
  call void @olang_textcopy(ptr %t26, ptr %t20, i64 %t21)
  %t27 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t23, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = extractvalue { i64, ptr } %t28, 1
  %t32 = mul i64 %t30, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @llvm.memcpy.p0.p0.i64(ptr %t33, ptr %t31, i64 %t32, i1 false)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  %t38 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t12, { i64, ptr } %t35)
  store { i64, ptr } %t38, ptr %l14
  br label %bb3
bb3:
  %t39 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  %t41 = extractvalue { i64, ptr } %t39, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  %t46 = load ptr, ptr %l8, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t46, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d114, i32 0, i32 1) }, { i64, ptr } %t47, { i64, ptr } %t45, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb4
bb4:
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l16, !tbaa !29
  %t50 = load i32, ptr %l1, !tbaa !23
  %t51 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t54 = sext i32 %t50 to i64
  %t55 = call i64 @__olang_fmt_i64(ptr null, i64 %t54)
  %t56 = add i64 %t52, %t55
  %t57 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t56)
  call void @olang_textcopy(ptr %t57, ptr %t51, i64 %t52)
  %t58 = getelementptr i8, ptr %t57, i64 %t52
  %t59 = call i64 @__olang_fmt_i64(ptr %t58, i64 %t54)
  %t60 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t57, 1
  %t63 = extractvalue { i64, ptr } %t61, 0
  %t64 = extractvalue { i64, ptr } %t61, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  store { i64, ptr } %t68, ptr %l19, !tbaa !27
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t71 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t74 = sext i32 %t70 to i64
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t74)
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = getelementptr i8, ptr %t80, i64 %t72
  %t82 = call i64 @__olang_fmt_i64(ptr %t81, i64 %t74)
  %t83 = getelementptr i8, ptr %t81, i64 %t75
  call void @olang_textcopy(ptr %t83, ptr %t77, i64 %t78)
  %t84 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t80, 1
  %t87 = extractvalue { i64, ptr } %t85, 0
  %t88 = extractvalue { i64, ptr } %t85, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t95 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t69, { i64, ptr } %t92)
  store { i64, ptr } %t95, ptr %l24
  br label %bb5
bb5:
  %t96 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = extractvalue { i64, ptr } %t96, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l16, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l19, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t103, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d118, i32 0, i32 1) }, { i64, ptr } %t104, { i64, ptr } %t102, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb6
bb6:
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l26, !tbaa !29
  br i1 %a2, label %bb7, label %bb8
bb7:
  %t109 = load i32, ptr %l1, !tbaa !23
  %t110 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t113 = sext i32 %t109 to i64
  %t114 = call i64 @__olang_fmt_i64(ptr null, i64 %t113)
  %t115 = add i64 %t111, %t114
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @olang_textcopy(ptr %t116, ptr %t110, i64 %t111)
  %t117 = getelementptr i8, ptr %t116, i64 %t111
  %t118 = call i64 @__olang_fmt_i64(ptr %t117, i64 %t113)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t116, 1
  %t122 = extractvalue { i64, ptr } %t120, 0
  %t123 = extractvalue { i64, ptr } %t120, 1
  %t124 = mul i64 %t122, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t124)
  call void @llvm.memcpy.p0.p0.i64(ptr %t125, ptr %t123, i64 %t124, i1 false)
  %t126 = insertvalue { i64, ptr } undef, i64 %t122, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l28, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d120, i32 0, i32 1) }, ptr %l28, !tbaa !27
  br label %bb9
bb9:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l1, !tbaa !23
  %t131 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t132 = extractvalue { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t134 = sext i32 %t130 to i64
  %t135 = call i64 @__olang_fmt_i64(ptr null, i64 %t134)
  %t136 = add i64 %t132, %t135
  %t137 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t139 = add i64 %t136, %t138
  %t140 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t139)
  call void @olang_textcopy(ptr %t140, ptr %t131, i64 %t132)
  %t141 = getelementptr i8, ptr %t140, i64 %t132
  %t142 = call i64 @__olang_fmt_i64(ptr %t141, i64 %t134)
  %t143 = getelementptr i8, ptr %t141, i64 %t135
  call void @olang_textcopy(ptr %t143, ptr %t137, i64 %t138)
  %t144 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t140, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = extractvalue { i64, ptr } %t145, 1
  %t149 = mul i64 %t147, 1
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @llvm.memcpy.p0.p0.i64(ptr %t150, ptr %t148, i64 %t149, i1 false)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t155 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t129, { i64, ptr } %t152)
  store { i64, ptr } %t155, ptr %l36
  br label %bb10
bb10:
  %t156 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t163 = load ptr, ptr %l26, !tbaa !29
  %t164 = load { i64, ptr }, ptr %l28, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t163, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d123, i32 0, i32 1) }, { i64, ptr } %t164, { i64, ptr } %t162, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb11
bb11:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load i32, ptr %l1, !tbaa !23
  %t168 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t169 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t171 = sext i32 %t167 to i64
  %t172 = call i64 @__olang_fmt_i64(ptr null, i64 %t171)
  %t173 = add i64 %t169, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t168, i64 %t169)
  %t175 = getelementptr i8, ptr %t174, i64 %t169
  %t176 = call i64 @__olang_fmt_i64(ptr %t175, i64 %t171)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t174, 1
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t181 = extractvalue { i64, ptr } %t178, 1
  %t182 = mul i64 %t180, 1
  %t183 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t182)
  call void @llvm.memcpy.p0.p0.i64(ptr %t183, ptr %t181, i64 %t182, i1 false)
  %t184 = insertvalue { i64, ptr } undef, i64 %t180, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t183, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t166, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d125, i32 0, i32 1) }, { i64, ptr } %t185, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d126, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d60, i32 0, i32 1) })
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l9 = alloca i1
  %l18 = alloca i1
  %l23 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l5, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t18 = icmp eq i32 %t14, %t15
  store i1 %t18, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t20 = load i1, ptr %l9, !tbaa !21
  br i1 %t20, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/emit:fnEm", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/emit:Emitter", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i32, ptr %l1, !tbaa !23
  %t32 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t28, i32 %t29)
  store i1 %t32, ptr %l18
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/emit:fnEm", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/emit:Emitter", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t43, ptr %l23
  br label %bb11
bb11:
  %t44 = load i1, ptr %l23, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l9 = alloca i1
  %l18 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d127, i32 0, i32 1) })
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/emit:fnEm", ptr %t5, i32 0, i32 5
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t7, { i64, ptr } %t8)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/emit:fnEm", ptr %t11, i32 0, i32 19
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d128, i32 0, i32 1) })
  store i1 %t16, ptr %l9
  br label %bb3
bb3:
  %t17 = load i1, ptr %l9, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/emit:fnEm", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/emit:fnEm", ptr %t23, i32 0, i32 19
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t22, { i64, ptr } %t26)
  br label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:fnEm", ptr %t29, i32 0, i32 18
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb7, label %bb8
bb6:
  br label %bb16
bb7:
  %t36 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d129, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t40 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v1, ptr %s2, { i64, ptr } %t36, { i64, ptr } %t39)
  store i1 %t40, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t41 = load i1, ptr %l22, !tbaa !21
  store i1 %t41, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l18, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/emit:fnEm", ptr %t43, i32 0, i32 5
  store ptr %t45, ptr %l24, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %s3, ptr %t46)
  store { i64, ptr } %t48, ptr %l26
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t49 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t49, 0
  %t51 = extractvalue { i64, ptr } %t49, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t56, { i64, ptr } %t55)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/emit:fnEm", ptr %t58, i32 0, i32 5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t60, i8 10)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2edbgTail(ptr %v0, i64 %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t3 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t5 = call i64 @__olang_fmt_i64(ptr null, i64 %a0)
  %t6 = add i64 %t3, %t5
  %t7 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t9 = add i64 %t6, %t8
  %t10 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t2, i64 %t3)
  %t14 = getelementptr i8, ptr %t13, i64 %t3
  %t15 = call i64 @__olang_fmt_i64(ptr %t14, i64 %a0)
  %t16 = getelementptr i8, ptr %t14, i64 %t5
  call void @olang_textcopy(ptr %t16, ptr %t7, i64 %t8)
  %t17 = getelementptr i8, ptr %t16, i64 %t8
  call void @olang_textcopy(ptr %t17, ptr %t10, i64 %t11)
  %t18 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t13, 1
  store { i64, ptr } %t19, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2eprefixOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  %t16 = load i64, ptr %l1, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l15, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l15, !tbaa !24
  store i64 %t31, ptr %l12, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l12, !tbaa !24
  store i64 %t32, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb22
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l33, !tbaa !27
  %t52 = load i64, ptr %l6, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t57)
  store i1 %t59, ptr %l36
  br label %bb11
bb11:
  %t60 = load i1, ptr %l36, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  %t61 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t61, ptr %l37, !tbaa !27
  %t62 = load i64, ptr %l6, !tbaa !24
  store i64 %t62, ptr %l38, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l39, !tbaa !24
  %t65 = icmp sge i64 0, 0
  br i1 %t65, label %bb14, label %bb15
bb13:
  br label %bb20
bb14:
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = icmp sle i64 0, %t67
  br i1 %t68, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb16:
  %t70 = load i64, ptr %l38, !tbaa !24
  %t71 = load i64, ptr %l39, !tbaa !24
  %t72 = icmp sle i64 %t70, %t71
  br i1 %t72, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb18:
  %t74 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = load i64, ptr %l38, !tbaa !24
  %t77 = getelementptr i8, ptr %t75, i64 0
  %t78 = sub i64 %t76, 0
  %t79 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t77, 1
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = extractvalue { i64, ptr } %t80, 0
  %t84 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t83)
  call void @olang_textcopy(ptr %t84, ptr %t82, i64 %t83)
  %t85 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  store { i64, ptr } %t86, ptr %rv
  br label %ret
bb19:
  call void @__olang_check_failed(ptr @olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2)
  unreachable
bb20:
  br label %bb21
bb21:
  %t88 = load i64, ptr %l5, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l5, !tbaa !24
  br label %bb7
bb22:
  %t92 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 1
  %t95 = extractvalue { i64, ptr } %t92, 0
  %t96 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t98 = add i64 %t95, %t97
  %t99 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t98)
  call void @olang_textcopy(ptr %t99, ptr %t94, i64 %t95)
  %t100 = getelementptr i8, ptr %t99, i64 %t95
  call void @olang_textcopy(ptr %t100, ptr %t96, i64 %t97)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t99, 1
  store { i64, ptr } %t102, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_3aEmitter_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i64
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca i1
  %l45 = alloca i1
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i1
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l51 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l52 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca i1
  %l61 = alloca { i64, ptr }
  %l62 = alloca i1
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l69 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l70 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l73 = alloca i1
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca i1
  %l78 = alloca i1
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l80 = alloca i1
  %l81 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l94 = alloca i64
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l102 = alloca i64
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca i64
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca i64
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l118 = alloca i64
  %l120 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l122 = alloca i64
  %l124 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l126 = alloca i64
  %l128 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l130 = alloca i64
  %l132 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca i64
  %l136 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l138 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l139 = alloca i64
  %l141 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l143 = alloca i64
  %l145 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l147 = alloca i64
  %l149 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l151 = alloca i64
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l156 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l157 = alloca i64
  %l159 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l161 = alloca i64
  %l163 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l166 = alloca i64
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca i64
  %l172 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l174 = alloca i64
  %l176 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l178 = alloca i64
  %l180 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l182 = alloca i64
  %l184 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l186 = alloca i64
  %l188 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l190 = alloca i64
  %l192 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l194 = alloca i64
  %l196 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l198 = alloca i64
  %l200 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l202 = alloca i64
  %l204 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l206 = alloca i64
  %l208 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l210 = alloca i64
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca i64
  %l216 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l218 = alloca i64
  %l220 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l222 = alloca i64
  %l224 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l226 = alloca i64
  %l228 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l230 = alloca %"compiler/emit:Emitter"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  store ptr %a1, ptr %l5, !tbaa !29
  store ptr %a2, ptr %l6, !tbaa !29
  store ptr %a3, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  store i1 false, ptr %l11, !tbaa !21
  store i1 false, ptr %l12, !tbaa !21
  store i1 false, ptr %l13, !tbaa !21
  store i1 true, ptr %l14, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t9 = ptrtoint ptr %v4 to i64
  store i64 %t9, ptr %l88, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e12
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v4)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l88, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l88
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l90
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e12
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l88
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb5
bb5:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l16
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l92
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l17
  %t31 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t31, ptr %l93
  br label %bb7
bb7:
  %t32 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t32, ptr %l18
  store i64 -1, ptr %l19, !tbaa !24
  %t33 = ptrtoint ptr %v4 to i64
  store i64 %t33, ptr %l94, !tbaa !24
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e16
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = call ptr @__olang_region_make(ptr %v4)
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l94, !tbaa !24
  br label %bb9
bb9:
  %t38 = load i64, ptr %l94
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t39, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l96
  br label %bb10
bb10:
  %t41 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e16
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load i64, ptr %l94
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr null
  %t51 = icmp eq ptr %t50, %t44
  call void @__olang_region_settle(ptr %t44, i1 %t51)
  br label %bb12
bb12:
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l20
  %t53 = ptrtoint ptr %v4 to i64
  store i64 %t53, ptr %l98, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e17
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = call ptr @__olang_region_make(ptr %v4)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l98, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l98
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t59)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t60, ptr %l100
  br label %bb15
bb15:
  %t61 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e17
  br i1 %t61, label %bb16, label %bb17
bb16:
  %t63 = load i64, ptr %l98
  %t64 = inttoptr i64 %t63 to ptr
  %t65 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65
  %t67 = extractvalue { i64, ptr } %t66, 1
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr null)
  %t69 = icmp ne ptr %t68, null
  %t70 = select i1 %t69, ptr %t68, ptr null
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr %t70
  %t77 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100, i32 0, i32 0
  %t78 = load { i64, ptr }, ptr %t77
  %t79 = extractvalue { i64, ptr } %t78, 1
  %t80 = call ptr @__olang_region_or(ptr %t79, ptr null)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr %t76
  %t83 = icmp eq ptr %t82, %t64
  call void @__olang_region_settle(ptr %t64, i1 %t83)
  br label %bb17
bb17:
  %t84 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l100
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t84, ptr %l21
  %t85 = ptrtoint ptr %v4 to i64
  store i64 %t85, ptr %l102, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e18
  br i1 %t86, label %bb18, label %bb19
bb18:
  %t88 = call ptr @__olang_region_make(ptr %v4)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l102, !tbaa !24
  br label %bb19
bb19:
  %t90 = load i64, ptr %l102
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l104
  br label %bb20
bb20:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e18
  br i1 %t93, label %bb21, label %bb22
bb21:
  %t95 = load i64, ptr %l102
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = icmp ne ptr %t100, null
  %t102 = select i1 %t101, ptr %t100, ptr null
  %t103 = icmp eq ptr %t102, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t103)
  br label %bb22
bb22:
  %t104 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l22
  %t105 = ptrtoint ptr %v4 to i64
  store i64 %t105, ptr %l106, !tbaa !24
  %t106 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e19
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = call ptr @__olang_region_make(ptr %v4)
  %t109 = ptrtoint ptr %t108 to i64
  store i64 %t109, ptr %l106, !tbaa !24
  br label %bb24
bb24:
  %t110 = load i64, ptr %l106
  %t111 = inttoptr i64 %t110 to ptr
  %t112 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t111, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l108
  br label %bb25
bb25:
  %t113 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e19
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = load i64, ptr %l106
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108, i32 0, i32 0
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr null
  %t123 = icmp eq ptr %t122, %t116
  call void @__olang_region_settle(ptr %t116, i1 %t123)
  br label %bb27
bb27:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l23
  %t125 = ptrtoint ptr %v4 to i64
  store i64 %t125, ptr %l110, !tbaa !24
  %t126 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e20
  br i1 %t126, label %bb28, label %bb29
bb28:
  %t128 = call ptr @__olang_region_make(ptr %v4)
  %t129 = ptrtoint ptr %t128 to i64
  store i64 %t129, ptr %l110, !tbaa !24
  br label %bb29
bb29:
  %t130 = load i64, ptr %l110
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t131, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l112
  br label %bb30
bb30:
  %t133 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e20
  br i1 %t133, label %bb31, label %bb32
bb31:
  %t135 = load i64, ptr %l110
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112, i32 0, i32 0
  %t138 = load { i64, ptr }, ptr %t137
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = call ptr @__olang_region_or(ptr %t139, ptr null)
  %t141 = icmp ne ptr %t140, null
  %t142 = select i1 %t141, ptr %t140, ptr null
  %t143 = icmp eq ptr %t142, %t136
  call void @__olang_region_settle(ptr %t136, i1 %t143)
  br label %bb32
bb32:
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l24
  %t145 = ptrtoint ptr %v4 to i64
  store i64 %t145, ptr %l114, !tbaa !24
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e21
  br i1 %t146, label %bb33, label %bb34
bb33:
  %t148 = call ptr @__olang_region_make(ptr %v4)
  %t149 = ptrtoint ptr %t148 to i64
  store i64 %t149, ptr %l114, !tbaa !24
  br label %bb34
bb34:
  %t150 = load i64, ptr %l114
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t151, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l116
  br label %bb35
bb35:
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e21
  br i1 %t153, label %bb36, label %bb37
bb36:
  %t155 = load i64, ptr %l114
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = call ptr @__olang_region_or(ptr %t159, ptr null)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr null
  %t163 = icmp eq ptr %t162, %t156
  call void @__olang_region_settle(ptr %t156, i1 %t163)
  br label %bb37
bb37:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l25
  %t165 = ptrtoint ptr %v4 to i64
  store i64 %t165, ptr %l118, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e22
  br i1 %t166, label %bb38, label %bb39
bb38:
  %t168 = call ptr @__olang_region_make(ptr %v4)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l118, !tbaa !24
  br label %bb39
bb39:
  %t170 = load i64, ptr %l118
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t171)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t172, ptr %l120
  br label %bb40
bb40:
  %t173 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e22
  br i1 %t173, label %bb41, label %bb42
bb41:
  %t175 = load i64, ptr %l118
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr null
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t182
  %t189 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = call ptr @__olang_region_or(ptr %t191, ptr null)
  %t193 = icmp ne ptr %t192, null
  %t194 = select i1 %t193, ptr %t192, ptr %t188
  %t195 = icmp eq ptr %t194, %t176
  call void @__olang_region_settle(ptr %t176, i1 %t195)
  br label %bb42
bb42:
  %t196 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l120
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t196, ptr %l26
  %t197 = ptrtoint ptr %v4 to i64
  store i64 %t197, ptr %l122, !tbaa !24
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e23
  br i1 %t198, label %bb43, label %bb44
bb43:
  %t200 = call ptr @__olang_region_make(ptr %v4)
  %t201 = ptrtoint ptr %t200 to i64
  store i64 %t201, ptr %l122, !tbaa !24
  br label %bb44
bb44:
  %t202 = load i64, ptr %l122
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t203, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t204, ptr %l124
  br label %bb45
bb45:
  %t205 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e23
  br i1 %t205, label %bb46, label %bb47
bb46:
  %t207 = load i64, ptr %l122
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l124, i32 0, i32 0
  %t210 = load { i64, ptr }, ptr %t209
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = call ptr @__olang_region_or(ptr %t211, ptr null)
  %t213 = icmp ne ptr %t212, null
  %t214 = select i1 %t213, ptr %t212, ptr null
  %t215 = icmp eq ptr %t214, %t208
  call void @__olang_region_settle(ptr %t208, i1 %t215)
  br label %bb47
bb47:
  %t216 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l124
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l27
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d135, i32 0, i32 1) }, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  store i1 false, ptr %l30, !tbaa !21
  store i64 0, ptr %l31, !tbaa !24
  %t217 = ptrtoint ptr %v4 to i64
  store i64 %t217, ptr %l126, !tbaa !24
  %t218 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e28
  br i1 %t218, label %bb48, label %bb49
bb48:
  %t220 = call ptr @__olang_region_make(ptr %v4)
  %t221 = ptrtoint ptr %t220 to i64
  store i64 %t221, ptr %l126, !tbaa !24
  br label %bb49
bb49:
  %t222 = load i64, ptr %l126
  %t223 = inttoptr i64 %t222 to ptr
  %t224 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t223)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t224, ptr %l128
  br label %bb50
bb50:
  %t225 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e28
  br i1 %t225, label %bb51, label %bb52
bb51:
  %t227 = load i64, ptr %l126
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 2
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = icmp ne ptr %t232, null
  %t234 = select i1 %t233, ptr %t232, ptr null
  %t235 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 1
  %t236 = load { i64, ptr }, ptr %t235
  %t237 = extractvalue { i64, ptr } %t236, 1
  %t238 = call ptr @__olang_region_or(ptr %t237, ptr null)
  %t239 = icmp ne ptr %t238, null
  %t240 = select i1 %t239, ptr %t238, ptr %t234
  %t241 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 0
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr %t240
  %t247 = icmp eq ptr %t246, %t228
  call void @__olang_region_settle(ptr %t228, i1 %t247)
  br label %bb52
bb52:
  %t248 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t248, ptr %l32
  %t249 = ptrtoint ptr %v4 to i64
  store i64 %t249, ptr %l130, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e29
  br i1 %t250, label %bb53, label %bb54
bb53:
  %t252 = call ptr @__olang_region_make(ptr %v4)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l130, !tbaa !24
  br label %bb54
bb54:
  %t254 = load i64, ptr %l130
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t255, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l132
  br label %bb55
bb55:
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e29
  br i1 %t257, label %bb56, label %bb57
bb56:
  %t259 = load i64, ptr %l130
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr null
  %t267 = icmp eq ptr %t266, %t260
  call void @__olang_region_settle(ptr %t260, i1 %t267)
  br label %bb57
bb57:
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l33
  %t269 = ptrtoint ptr %v4 to i64
  store i64 %t269, ptr %l134, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e30
  br i1 %t270, label %bb58, label %bb59
bb58:
  %t272 = call ptr @__olang_region_make(ptr %v4)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l134, !tbaa !24
  br label %bb59
bb59:
  %t274 = load i64, ptr %l134
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t275)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t276, ptr %l136
  br label %bb60
bb60:
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e30
  br i1 %t277, label %bb61, label %bb62
bb61:
  %t279 = load i64, ptr %l134
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 2
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = icmp ne ptr %t284, null
  %t286 = select i1 %t285, ptr %t284, ptr null
  %t287 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 1
  %t288 = load { i64, ptr }, ptr %t287
  %t289 = extractvalue { i64, ptr } %t288, 1
  %t290 = call ptr @__olang_region_or(ptr %t289, ptr null)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr %t286
  %t293 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 0
  %t294 = load { i64, ptr }, ptr %t293
  %t295 = extractvalue { i64, ptr } %t294, 1
  %t296 = call ptr @__olang_region_or(ptr %t295, ptr null)
  %t297 = icmp ne ptr %t296, null
  %t298 = select i1 %t297, ptr %t296, ptr %t292
  %t299 = icmp eq ptr %t298, %t280
  call void @__olang_region_settle(ptr %t280, i1 %t299)
  br label %bb62
bb62:
  %t300 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t300, ptr %l34
  %t301 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, ptr %l138
  br label %bb63
bb63:
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l138
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l35
  %t303 = ptrtoint ptr %v4 to i64
  store i64 %t303, ptr %l139, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e32
  br i1 %t304, label %bb64, label %bb65
bb64:
  %t306 = call ptr @__olang_region_make(ptr %v4)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l139, !tbaa !24
  br label %bb65
bb65:
  %t308 = load i64, ptr %l139
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t309, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %l141
  br label %bb66
bb66:
  %t311 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e32
  br i1 %t311, label %bb67, label %bb68
bb67:
  %t313 = load i64, ptr %l139
  %t314 = inttoptr i64 %t313 to ptr
  %t315 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141, i32 0, i32 0
  %t316 = load { i64, ptr }, ptr %t315
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = call ptr @__olang_region_or(ptr %t317, ptr null)
  %t319 = icmp ne ptr %t318, null
  %t320 = select i1 %t319, ptr %t318, ptr null
  %t321 = icmp eq ptr %t320, %t314
  call void @__olang_region_settle(ptr %t314, i1 %t321)
  br label %bb68
bb68:
  %t322 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l141
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %l36
  %t323 = ptrtoint ptr %v4 to i64
  store i64 %t323, ptr %l143, !tbaa !24
  %t324 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e33
  br i1 %t324, label %bb69, label %bb70
bb69:
  %t326 = call ptr @__olang_region_make(ptr %v4)
  %t327 = ptrtoint ptr %t326 to i64
  store i64 %t327, ptr %l143, !tbaa !24
  br label %bb70
bb70:
  %t328 = load i64, ptr %l143
  %t329 = inttoptr i64 %t328 to ptr
  %t330 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t329, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t330, ptr %l145
  br label %bb71
bb71:
  %t331 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e33
  br i1 %t331, label %bb72, label %bb73
bb72:
  %t333 = load i64, ptr %l143
  %t334 = inttoptr i64 %t333 to ptr
  %t335 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335
  %t337 = extractvalue { i64, ptr } %t336, 1
  %t338 = call ptr @__olang_region_or(ptr %t337, ptr null)
  %t339 = icmp ne ptr %t338, null
  %t340 = select i1 %t339, ptr %t338, ptr null
  %t341 = icmp eq ptr %t340, %t334
  call void @__olang_region_settle(ptr %t334, i1 %t341)
  br label %bb73
bb73:
  %t342 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l145
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %l37
  %t343 = ptrtoint ptr %v4 to i64
  store i64 %t343, ptr %l147, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e34
  br i1 %t344, label %bb74, label %bb75
bb74:
  %t346 = call ptr @__olang_region_make(ptr %v4)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l147, !tbaa !24
  br label %bb75
bb75:
  %t348 = load i64, ptr %l147
  %t349 = inttoptr i64 %t348 to ptr
  %t350 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t349, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t350, ptr %l149
  br label %bb76
bb76:
  %t351 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e34
  br i1 %t351, label %bb77, label %bb78
bb77:
  %t353 = load i64, ptr %l147
  %t354 = inttoptr i64 %t353 to ptr
  %t355 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l149, i32 0, i32 0
  %t356 = load { i64, ptr }, ptr %t355
  %t357 = extractvalue { i64, ptr } %t356, 1
  %t358 = call ptr @__olang_region_or(ptr %t357, ptr null)
  %t359 = icmp ne ptr %t358, null
  %t360 = select i1 %t359, ptr %t358, ptr null
  %t361 = icmp eq ptr %t360, %t354
  call void @__olang_region_settle(ptr %t354, i1 %t361)
  br label %bb78
bb78:
  %t362 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l149
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t362, ptr %l38
  %t363 = ptrtoint ptr %v4 to i64
  store i64 %t363, ptr %l151, !tbaa !24
  %t364 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e35
  br i1 %t364, label %bb79, label %bb80
bb79:
  %t366 = call ptr @__olang_region_make(ptr %v4)
  %t367 = ptrtoint ptr %t366 to i64
  store i64 %t367, ptr %l151, !tbaa !24
  br label %bb80
bb80:
  %t368 = load i64, ptr %l151
  %t369 = inttoptr i64 %t368 to ptr
  %t370 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t369)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t370, ptr %l153
  br label %bb81
bb81:
  %t371 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e35
  br i1 %t371, label %bb82, label %bb83
bb82:
  %t373 = load i64, ptr %l151
  %t374 = inttoptr i64 %t373 to ptr
  %t375 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 2
  %t376 = load { i64, ptr }, ptr %t375
  %t377 = extractvalue { i64, ptr } %t376, 1
  %t378 = call ptr @__olang_region_or(ptr %t377, ptr null)
  %t379 = icmp ne ptr %t378, null
  %t380 = select i1 %t379, ptr %t378, ptr null
  %t381 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 1
  %t382 = load { i64, ptr }, ptr %t381
  %t383 = extractvalue { i64, ptr } %t382, 1
  %t384 = call ptr @__olang_region_or(ptr %t383, ptr null)
  %t385 = icmp ne ptr %t384, null
  %t386 = select i1 %t385, ptr %t384, ptr %t380
  %t387 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153, i32 0, i32 0
  %t388 = load { i64, ptr }, ptr %t387
  %t389 = extractvalue { i64, ptr } %t388, 1
  %t390 = call ptr @__olang_region_or(ptr %t389, ptr null)
  %t391 = icmp ne ptr %t390, null
  %t392 = select i1 %t391, ptr %t390, ptr %t386
  %t393 = icmp eq ptr %t392, %t374
  call void @__olang_region_settle(ptr %t374, i1 %t393)
  br label %bb83
bb83:
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %l39
  %t395 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t395, ptr %l155
  br label %bb84
bb84:
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l40
  %t397 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v4)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t397, ptr %l156
  br label %bb85
bb85:
  %t398 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t398, ptr %l41
  %t399 = ptrtoint ptr %v4 to i64
  store i64 %t399, ptr %l157, !tbaa !24
  %t400 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e38
  br i1 %t400, label %bb86, label %bb87
bb86:
  %t402 = call ptr @__olang_region_make(ptr %v4)
  %t403 = ptrtoint ptr %t402 to i64
  store i64 %t403, ptr %l157, !tbaa !24
  br label %bb87
bb87:
  %t404 = load i64, ptr %l157
  %t405 = inttoptr i64 %t404 to ptr
  %t406 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t405)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t406, ptr %l159
  br label %bb88
bb88:
  %t407 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e38
  br i1 %t407, label %bb89, label %bb90
bb89:
  %t409 = load i64, ptr %l157
  %t410 = inttoptr i64 %t409 to ptr
  %t411 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 2
  %t412 = load { i64, ptr }, ptr %t411
  %t413 = extractvalue { i64, ptr } %t412, 1
  %t414 = call ptr @__olang_region_or(ptr %t413, ptr null)
  %t415 = icmp ne ptr %t414, null
  %t416 = select i1 %t415, ptr %t414, ptr null
  %t417 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 1
  %t418 = load { i64, ptr }, ptr %t417
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = call ptr @__olang_region_or(ptr %t419, ptr null)
  %t421 = icmp ne ptr %t420, null
  %t422 = select i1 %t421, ptr %t420, ptr %t416
  %t423 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 0
  %t424 = load { i64, ptr }, ptr %t423
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = call ptr @__olang_region_or(ptr %t425, ptr null)
  %t427 = icmp ne ptr %t426, null
  %t428 = select i1 %t427, ptr %t426, ptr %t422
  %t429 = icmp eq ptr %t428, %t410
  call void @__olang_region_settle(ptr %t410, i1 %t429)
  br label %bb90
bb90:
  %t430 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t430, ptr %l42
  %t431 = ptrtoint ptr %v4 to i64
  store i64 %t431, ptr %l161, !tbaa !24
  %t432 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e39
  br i1 %t432, label %bb91, label %bb92
bb91:
  %t434 = call ptr @__olang_region_make(ptr %v4)
  %t435 = ptrtoint ptr %t434 to i64
  store i64 %t435, ptr %l161, !tbaa !24
  br label %bb92
bb92:
  %t436 = load i64, ptr %l161
  %t437 = inttoptr i64 %t436 to ptr
  %t438 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t437)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t438, ptr %l163
  br label %bb93
bb93:
  %t439 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e39
  br i1 %t439, label %bb94, label %bb95
bb94:
  %t441 = load i64, ptr %l161
  %t442 = inttoptr i64 %t441 to ptr
  %t443 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 2
  %t444 = load { i64, ptr }, ptr %t443
  %t445 = extractvalue { i64, ptr } %t444, 1
  %t446 = call ptr @__olang_region_or(ptr %t445, ptr null)
  %t447 = icmp ne ptr %t446, null
  %t448 = select i1 %t447, ptr %t446, ptr null
  %t449 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 1
  %t450 = load { i64, ptr }, ptr %t449
  %t451 = extractvalue { i64, ptr } %t450, 1
  %t452 = call ptr @__olang_region_or(ptr %t451, ptr null)
  %t453 = icmp ne ptr %t452, null
  %t454 = select i1 %t453, ptr %t452, ptr %t448
  %t455 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163, i32 0, i32 0
  %t456 = load { i64, ptr }, ptr %t455
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = call ptr @__olang_region_or(ptr %t457, ptr null)
  %t459 = icmp ne ptr %t458, null
  %t460 = select i1 %t459, ptr %t458, ptr %t454
  %t461 = icmp eq ptr %t460, %t442
  call void @__olang_region_settle(ptr %t442, i1 %t461)
  br label %bb95
bb95:
  %t462 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l163
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t462, ptr %l43
  store i1 false, ptr %l44, !tbaa !21
  store i1 false, ptr %l45, !tbaa !21
  store i64 4611686018427387904, ptr %l46, !tbaa !24
  %t463 = load i64, ptr @G_2ecompiler_2femit_2ePartSize, !tbaa !24
  store i64 %t463, ptr %l47, !tbaa !24
  store i1 false, ptr %l48, !tbaa !21
  %t465 = ptrtoint ptr %v4 to i64
  store i64 %t465, ptr %l166, !tbaa !24
  %t466 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e45
  br i1 %t466, label %bb96, label %bb97
bb96:
  %t468 = call ptr @__olang_region_make(ptr %v4)
  %t469 = ptrtoint ptr %t468 to i64
  store i64 %t469, ptr %l166, !tbaa !24
  br label %bb97
bb97:
  %t470 = load i64, ptr %l166
  %t471 = inttoptr i64 %t470 to ptr
  %t472 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t471, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t472, ptr %l168
  br label %bb98
bb98:
  %t473 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e45
  br i1 %t473, label %bb99, label %bb100
bb99:
  %t475 = load i64, ptr %l166
  %t476 = inttoptr i64 %t475 to ptr
  %t477 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168, i32 0, i32 0
  %t478 = load { i64, ptr }, ptr %t477
  %t479 = extractvalue { i64, ptr } %t478, 1
  %t480 = call ptr @__olang_region_or(ptr %t479, ptr null)
  %t481 = icmp ne ptr %t480, null
  %t482 = select i1 %t481, ptr %t480, ptr null
  %t483 = icmp eq ptr %t482, %t476
  call void @__olang_region_settle(ptr %t476, i1 %t483)
  br label %bb100
bb100:
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %l49
  %t485 = ptrtoint ptr %v4 to i64
  store i64 %t485, ptr %l170, !tbaa !24
  %t486 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e46
  br i1 %t486, label %bb101, label %bb102
bb101:
  %t488 = call ptr @__olang_region_make(ptr %v4)
  %t489 = ptrtoint ptr %t488 to i64
  store i64 %t489, ptr %l170, !tbaa !24
  br label %bb102
bb102:
  %t490 = load i64, ptr %l170
  %t491 = inttoptr i64 %t490 to ptr
  %t492 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %t491)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t492, ptr %l172
  br label %bb103
bb103:
  %t493 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e46
  br i1 %t493, label %bb104, label %bb105
bb104:
  %t495 = load i64, ptr %l170
  %t496 = inttoptr i64 %t495 to ptr
  %t497 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172, i32 0, i32 2
  %t498 = load { i64, ptr }, ptr %t497
  %t499 = extractvalue { i64, ptr } %t498, 1
  %t500 = call ptr @__olang_region_or(ptr %t499, ptr null)
  %t501 = icmp ne ptr %t500, null
  %t502 = select i1 %t501, ptr %t500, ptr null
  %t503 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172, i32 0, i32 1
  %t504 = load { i64, ptr }, ptr %t503
  %t505 = extractvalue { i64, ptr } %t504, 1
  %t506 = call ptr @__olang_region_or(ptr %t505, ptr null)
  %t507 = icmp ne ptr %t506, null
  %t508 = select i1 %t507, ptr %t506, ptr %t502
  %t509 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172, i32 0, i32 0
  %t510 = load { i64, ptr }, ptr %t509
  %t511 = extractvalue { i64, ptr } %t510, 1
  %t512 = call ptr @__olang_region_or(ptr %t511, ptr null)
  %t513 = icmp ne ptr %t512, null
  %t514 = select i1 %t513, ptr %t512, ptr %t508
  %t515 = icmp eq ptr %t514, %t496
  call void @__olang_region_settle(ptr %t496, i1 %t515)
  br label %bb105
bb105:
  %t516 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t516, ptr %l50
  %t517 = ptrtoint ptr %v4 to i64
  store i64 %t517, ptr %l174, !tbaa !24
  %t518 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e47
  br i1 %t518, label %bb106, label %bb107
bb106:
  %t520 = call ptr @__olang_region_make(ptr %v4)
  %t521 = ptrtoint ptr %t520 to i64
  store i64 %t521, ptr %l174, !tbaa !24
  br label %bb107
bb107:
  %t522 = load i64, ptr %l174
  %t523 = inttoptr i64 %t522 to ptr
  %t524 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %t523)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t524, ptr %l176
  br label %bb108
bb108:
  %t525 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e47
  br i1 %t525, label %bb109, label %bb110
bb109:
  %t527 = load i64, ptr %l174
  %t528 = inttoptr i64 %t527 to ptr
  %t529 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l176, i32 0, i32 2
  %t530 = load { i64, ptr }, ptr %t529
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = call ptr @__olang_region_or(ptr %t531, ptr null)
  %t533 = icmp ne ptr %t532, null
  %t534 = select i1 %t533, ptr %t532, ptr null
  %t535 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l176, i32 0, i32 1
  %t536 = load { i64, ptr }, ptr %t535
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = call ptr @__olang_region_or(ptr %t537, ptr null)
  %t539 = icmp ne ptr %t538, null
  %t540 = select i1 %t539, ptr %t538, ptr %t534
  %t541 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l176, i32 0, i32 0
  %t542 = load { i64, ptr }, ptr %t541
  %t543 = extractvalue { i64, ptr } %t542, 1
  %t544 = call ptr @__olang_region_or(ptr %t543, ptr null)
  %t545 = icmp ne ptr %t544, null
  %t546 = select i1 %t545, ptr %t544, ptr %t540
  %t547 = icmp eq ptr %t546, %t528
  call void @__olang_region_settle(ptr %t528, i1 %t547)
  br label %bb110
bb110:
  %t548 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l176
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t548, ptr %l51
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d136, i32 0, i32 1) }, ptr %l52, !tbaa !27
  store i1 false, ptr %l53, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d137, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t549 = ptrtoint ptr %v4 to i64
  store i64 %t549, ptr %l178, !tbaa !24
  %t550 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e51
  br i1 %t550, label %bb111, label %bb112
bb111:
  %t552 = call ptr @__olang_region_make(ptr %v4)
  %t553 = ptrtoint ptr %t552 to i64
  store i64 %t553, ptr %l178, !tbaa !24
  br label %bb112
bb112:
  %t554 = load i64, ptr %l178
  %t555 = inttoptr i64 %t554 to ptr
  %t556 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t555, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t556, ptr %l180
  br label %bb113
bb113:
  %t557 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e51
  br i1 %t557, label %bb114, label %bb115
bb114:
  %t559 = load i64, ptr %l178
  %t560 = inttoptr i64 %t559 to ptr
  %t561 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180, i32 0, i32 0
  %t562 = load { i64, ptr }, ptr %t561
  %t563 = extractvalue { i64, ptr } %t562, 1
  %t564 = call ptr @__olang_region_or(ptr %t563, ptr null)
  %t565 = icmp ne ptr %t564, null
  %t566 = select i1 %t565, ptr %t564, ptr null
  %t567 = icmp eq ptr %t566, %t560
  call void @__olang_region_settle(ptr %t560, i1 %t567)
  br label %bb115
bb115:
  %t568 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l180
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t568, ptr %l55
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d138, i32 0, i32 1) }, ptr %l56, !tbaa !27
  store i64 0, ptr %l57, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d139, i32 0, i32 1) }, ptr %l58, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d140, i32 0, i32 1) }, ptr %l59, !tbaa !27
  store i1 false, ptr %l60, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d141, i32 0, i32 1) }, ptr %l61, !tbaa !27
  store i1 false, ptr %l62, !tbaa !21
  store i64 1000, ptr %l63, !tbaa !24
  store i64 -1, ptr %l64, !tbaa !24
  store i64 -1, ptr %l65, !tbaa !24
  store i64 -1, ptr %l66, !tbaa !24
  store i64 -1, ptr %l67, !tbaa !24
  %t569 = ptrtoint ptr %v4 to i64
  store i64 %t569, ptr %l182, !tbaa !24
  %t570 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e64
  br i1 %t570, label %bb116, label %bb117
bb116:
  %t572 = call ptr @__olang_region_make(ptr %v4)
  %t573 = ptrtoint ptr %t572 to i64
  store i64 %t573, ptr %l182, !tbaa !24
  br label %bb117
bb117:
  %t574 = load i64, ptr %l182
  %t575 = inttoptr i64 %t574 to ptr
  %t576 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t575)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t576, ptr %l184
  br label %bb118
bb118:
  %t577 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e64
  br i1 %t577, label %bb119, label %bb120
bb119:
  %t579 = load i64, ptr %l182
  %t580 = inttoptr i64 %t579 to ptr
  %t581 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 2
  %t582 = load { i64, ptr }, ptr %t581
  %t583 = extractvalue { i64, ptr } %t582, 1
  %t584 = call ptr @__olang_region_or(ptr %t583, ptr null)
  %t585 = icmp ne ptr %t584, null
  %t586 = select i1 %t585, ptr %t584, ptr null
  %t587 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 1
  %t588 = load { i64, ptr }, ptr %t587
  %t589 = extractvalue { i64, ptr } %t588, 1
  %t590 = call ptr @__olang_region_or(ptr %t589, ptr null)
  %t591 = icmp ne ptr %t590, null
  %t592 = select i1 %t591, ptr %t590, ptr %t586
  %t593 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 0
  %t594 = load { i64, ptr }, ptr %t593
  %t595 = extractvalue { i64, ptr } %t594, 1
  %t596 = call ptr @__olang_region_or(ptr %t595, ptr null)
  %t597 = icmp ne ptr %t596, null
  %t598 = select i1 %t597, ptr %t596, ptr %t592
  %t599 = icmp eq ptr %t598, %t580
  call void @__olang_region_settle(ptr %t580, i1 %t599)
  br label %bb120
bb120:
  %t600 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t600, ptr %l68
  %t601 = ptrtoint ptr %v4 to i64
  store i64 %t601, ptr %l186, !tbaa !24
  %t602 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e65
  br i1 %t602, label %bb121, label %bb122
bb121:
  %t604 = call ptr @__olang_region_make(ptr %v4)
  %t605 = ptrtoint ptr %t604 to i64
  store i64 %t605, ptr %l186, !tbaa !24
  br label %bb122
bb122:
  %t606 = load i64, ptr %l186
  %t607 = inttoptr i64 %t606 to ptr
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t607)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l188
  br label %bb123
bb123:
  %t609 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e65
  br i1 %t609, label %bb124, label %bb125
bb124:
  %t611 = load i64, ptr %l186
  %t612 = inttoptr i64 %t611 to ptr
  %t613 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 2
  %t614 = load { i64, ptr }, ptr %t613
  %t615 = extractvalue { i64, ptr } %t614, 1
  %t616 = call ptr @__olang_region_or(ptr %t615, ptr null)
  %t617 = icmp ne ptr %t616, null
  %t618 = select i1 %t617, ptr %t616, ptr null
  %t619 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 1
  %t620 = load { i64, ptr }, ptr %t619
  %t621 = extractvalue { i64, ptr } %t620, 1
  %t622 = call ptr @__olang_region_or(ptr %t621, ptr null)
  %t623 = icmp ne ptr %t622, null
  %t624 = select i1 %t623, ptr %t622, ptr %t618
  %t625 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188, i32 0, i32 0
  %t626 = load { i64, ptr }, ptr %t625
  %t627 = extractvalue { i64, ptr } %t626, 1
  %t628 = call ptr @__olang_region_or(ptr %t627, ptr null)
  %t629 = icmp ne ptr %t628, null
  %t630 = select i1 %t629, ptr %t628, ptr %t624
  %t631 = icmp eq ptr %t630, %t612
  call void @__olang_region_settle(ptr %t612, i1 %t631)
  br label %bb125
bb125:
  %t632 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l188
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t632, ptr %l69
  %t633 = ptrtoint ptr %v4 to i64
  store i64 %t633, ptr %l190, !tbaa !24
  %t634 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e66
  br i1 %t634, label %bb126, label %bb127
bb126:
  %t636 = call ptr @__olang_region_make(ptr %v4)
  %t637 = ptrtoint ptr %t636 to i64
  store i64 %t637, ptr %l190, !tbaa !24
  br label %bb127
bb127:
  %t638 = load i64, ptr %l190
  %t639 = inttoptr i64 %t638 to ptr
  %t640 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t639)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t640, ptr %l192
  br label %bb128
bb128:
  %t641 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e66
  br i1 %t641, label %bb129, label %bb130
bb129:
  %t643 = load i64, ptr %l190
  %t644 = inttoptr i64 %t643 to ptr
  %t645 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 2
  %t646 = load { i64, ptr }, ptr %t645
  %t647 = extractvalue { i64, ptr } %t646, 1
  %t648 = call ptr @__olang_region_or(ptr %t647, ptr null)
  %t649 = icmp ne ptr %t648, null
  %t650 = select i1 %t649, ptr %t648, ptr null
  %t651 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 1
  %t652 = load { i64, ptr }, ptr %t651
  %t653 = extractvalue { i64, ptr } %t652, 1
  %t654 = call ptr @__olang_region_or(ptr %t653, ptr null)
  %t655 = icmp ne ptr %t654, null
  %t656 = select i1 %t655, ptr %t654, ptr %t650
  %t657 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 0
  %t658 = load { i64, ptr }, ptr %t657
  %t659 = extractvalue { i64, ptr } %t658, 1
  %t660 = call ptr @__olang_region_or(ptr %t659, ptr null)
  %t661 = icmp ne ptr %t660, null
  %t662 = select i1 %t661, ptr %t660, ptr %t656
  %t663 = icmp eq ptr %t662, %t644
  call void @__olang_region_settle(ptr %t644, i1 %t663)
  br label %bb130
bb130:
  %t664 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t664, ptr %l70
  %t665 = ptrtoint ptr %v4 to i64
  store i64 %t665, ptr %l194, !tbaa !24
  %t666 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e67
  br i1 %t666, label %bb131, label %bb132
bb131:
  %t668 = call ptr @__olang_region_make(ptr %v4)
  %t669 = ptrtoint ptr %t668 to i64
  store i64 %t669, ptr %l194, !tbaa !24
  br label %bb132
bb132:
  %t670 = load i64, ptr %l194
  %t671 = inttoptr i64 %t670 to ptr
  %t672 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t671)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t672, ptr %l196
  br label %bb133
bb133:
  %t673 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e67
  br i1 %t673, label %bb134, label %bb135
bb134:
  %t675 = load i64, ptr %l194
  %t676 = inttoptr i64 %t675 to ptr
  %t677 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 2
  %t678 = load { i64, ptr }, ptr %t677
  %t679 = extractvalue { i64, ptr } %t678, 1
  %t680 = call ptr @__olang_region_or(ptr %t679, ptr null)
  %t681 = icmp ne ptr %t680, null
  %t682 = select i1 %t681, ptr %t680, ptr null
  %t683 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 1
  %t684 = load { i64, ptr }, ptr %t683
  %t685 = extractvalue { i64, ptr } %t684, 1
  %t686 = call ptr @__olang_region_or(ptr %t685, ptr null)
  %t687 = icmp ne ptr %t686, null
  %t688 = select i1 %t687, ptr %t686, ptr %t682
  %t689 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 0
  %t690 = load { i64, ptr }, ptr %t689
  %t691 = extractvalue { i64, ptr } %t690, 1
  %t692 = call ptr @__olang_region_or(ptr %t691, ptr null)
  %t693 = icmp ne ptr %t692, null
  %t694 = select i1 %t693, ptr %t692, ptr %t688
  %t695 = icmp eq ptr %t694, %t676
  call void @__olang_region_settle(ptr %t676, i1 %t695)
  br label %bb135
bb135:
  %t696 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t696, ptr %l71
  %t697 = ptrtoint ptr %v4 to i64
  store i64 %t697, ptr %l198, !tbaa !24
  %t698 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e68
  br i1 %t698, label %bb136, label %bb137
bb136:
  %t700 = call ptr @__olang_region_make(ptr %v4)
  %t701 = ptrtoint ptr %t700 to i64
  store i64 %t701, ptr %l198, !tbaa !24
  br label %bb137
bb137:
  %t702 = load i64, ptr %l198
  %t703 = inttoptr i64 %t702 to ptr
  %t704 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t703)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t704, ptr %l200
  br label %bb138
bb138:
  %t705 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e68
  br i1 %t705, label %bb139, label %bb140
bb139:
  %t707 = load i64, ptr %l198
  %t708 = inttoptr i64 %t707 to ptr
  %t709 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l200, i32 0, i32 2
  %t710 = load { i64, ptr }, ptr %t709
  %t711 = extractvalue { i64, ptr } %t710, 1
  %t712 = call ptr @__olang_region_or(ptr %t711, ptr null)
  %t713 = icmp ne ptr %t712, null
  %t714 = select i1 %t713, ptr %t712, ptr null
  %t715 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l200, i32 0, i32 1
  %t716 = load { i64, ptr }, ptr %t715
  %t717 = extractvalue { i64, ptr } %t716, 1
  %t718 = call ptr @__olang_region_or(ptr %t717, ptr null)
  %t719 = icmp ne ptr %t718, null
  %t720 = select i1 %t719, ptr %t718, ptr %t714
  %t721 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l200, i32 0, i32 0
  %t722 = load { i64, ptr }, ptr %t721
  %t723 = extractvalue { i64, ptr } %t722, 1
  %t724 = call ptr @__olang_region_or(ptr %t723, ptr null)
  %t725 = icmp ne ptr %t724, null
  %t726 = select i1 %t725, ptr %t724, ptr %t720
  %t727 = icmp eq ptr %t726, %t708
  call void @__olang_region_settle(ptr %t708, i1 %t727)
  br label %bb140
bb140:
  %t728 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l200
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t728, ptr %l72
  store i1 false, ptr %l73, !tbaa !21
  %t729 = ptrtoint ptr %v4 to i64
  store i64 %t729, ptr %l202, !tbaa !24
  %t730 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e70
  br i1 %t730, label %bb141, label %bb142
bb141:
  %t732 = call ptr @__olang_region_make(ptr %v4)
  %t733 = ptrtoint ptr %t732 to i64
  store i64 %t733, ptr %l202, !tbaa !24
  br label %bb142
bb142:
  %t734 = load i64, ptr %l202
  %t735 = inttoptr i64 %t734 to ptr
  %t736 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2ector(ptr %t735, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %l204
  br label %bb143
bb143:
  %t737 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e70
  br i1 %t737, label %bb144, label %bb145
bb144:
  %t739 = load i64, ptr %l202
  %t740 = inttoptr i64 %t739 to ptr
  %t741 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204, i32 0, i32 0
  %t742 = load { i64, ptr }, ptr %t741
  %t743 = extractvalue { i64, ptr } %t742, 1
  %t744 = call ptr @__olang_region_or(ptr %t743, ptr null)
  %t745 = icmp ne ptr %t744, null
  %t746 = select i1 %t745, ptr %t744, ptr null
  %t747 = icmp eq ptr %t746, %t740
  call void @__olang_region_settle(ptr %t740, i1 %t747)
  br label %bb145
bb145:
  %t748 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l204
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t748, ptr %l74
  %t749 = ptrtoint ptr %v4 to i64
  store i64 %t749, ptr %l206, !tbaa !24
  %t750 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e71
  br i1 %t750, label %bb146, label %bb147
bb146:
  %t752 = call ptr @__olang_region_make(ptr %v4)
  %t753 = ptrtoint ptr %t752 to i64
  store i64 %t753, ptr %l206, !tbaa !24
  br label %bb147
bb147:
  %t754 = load i64, ptr %l206
  %t755 = inttoptr i64 %t754 to ptr
  %t756 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t755)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t756, ptr %l208
  br label %bb148
bb148:
  %t757 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e71
  br i1 %t757, label %bb149, label %bb150
bb149:
  %t759 = load i64, ptr %l206
  %t760 = inttoptr i64 %t759 to ptr
  %t761 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 2
  %t762 = load { i64, ptr }, ptr %t761
  %t763 = extractvalue { i64, ptr } %t762, 1
  %t764 = call ptr @__olang_region_or(ptr %t763, ptr null)
  %t765 = icmp ne ptr %t764, null
  %t766 = select i1 %t765, ptr %t764, ptr null
  %t767 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 1
  %t768 = load { i64, ptr }, ptr %t767
  %t769 = extractvalue { i64, ptr } %t768, 1
  %t770 = call ptr @__olang_region_or(ptr %t769, ptr null)
  %t771 = icmp ne ptr %t770, null
  %t772 = select i1 %t771, ptr %t770, ptr %t766
  %t773 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208, i32 0, i32 0
  %t774 = load { i64, ptr }, ptr %t773
  %t775 = extractvalue { i64, ptr } %t774, 1
  %t776 = call ptr @__olang_region_or(ptr %t775, ptr null)
  %t777 = icmp ne ptr %t776, null
  %t778 = select i1 %t777, ptr %t776, ptr %t772
  %t779 = icmp eq ptr %t778, %t760
  call void @__olang_region_settle(ptr %t760, i1 %t779)
  br label %bb150
bb150:
  %t780 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l208
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t780, ptr %l75
  %t781 = ptrtoint ptr %v4 to i64
  store i64 %t781, ptr %l210, !tbaa !24
  %t782 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e72
  br i1 %t782, label %bb151, label %bb152
bb151:
  %t784 = call ptr @__olang_region_make(ptr %v4)
  %t785 = ptrtoint ptr %t784 to i64
  store i64 %t785, ptr %l210, !tbaa !24
  br label %bb152
bb152:
  %t786 = load i64, ptr %l210
  %t787 = inttoptr i64 %t786 to ptr
  %t788 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2ector(ptr %t787, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t788, ptr %l212
  br label %bb153
bb153:
  %t789 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e72
  br i1 %t789, label %bb154, label %bb155
bb154:
  %t791 = load i64, ptr %l210
  %t792 = inttoptr i64 %t791 to ptr
  %t793 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212, i32 0, i32 0
  %t794 = load { i64, ptr }, ptr %t793
  %t795 = extractvalue { i64, ptr } %t794, 1
  %t796 = call ptr @__olang_region_or(ptr %t795, ptr null)
  %t797 = icmp ne ptr %t796, null
  %t798 = select i1 %t797, ptr %t796, ptr null
  %t799 = icmp eq ptr %t798, %t792
  call void @__olang_region_settle(ptr %t792, i1 %t799)
  br label %bb155
bb155:
  %t800 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t800, ptr %l76
  store i1 false, ptr %l77, !tbaa !21
  store i1 false, ptr %l78, !tbaa !21
  %t801 = ptrtoint ptr %v4 to i64
  store i64 %t801, ptr %l214, !tbaa !24
  %t802 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e75
  br i1 %t802, label %bb156, label %bb157
bb156:
  %t804 = call ptr @__olang_region_make(ptr %v4)
  %t805 = ptrtoint ptr %t804 to i64
  store i64 %t805, ptr %l214, !tbaa !24
  br label %bb157
bb157:
  %t806 = load i64, ptr %l214
  %t807 = inttoptr i64 %t806 to ptr
  %t808 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t807)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t808, ptr %l216
  br label %bb158
bb158:
  %t809 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e75
  br i1 %t809, label %bb159, label %bb160
bb159:
  %t811 = load i64, ptr %l214
  %t812 = inttoptr i64 %t811 to ptr
  %t813 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 2
  %t814 = load { i64, ptr }, ptr %t813
  %t815 = extractvalue { i64, ptr } %t814, 1
  %t816 = call ptr @__olang_region_or(ptr %t815, ptr null)
  %t817 = icmp ne ptr %t816, null
  %t818 = select i1 %t817, ptr %t816, ptr null
  %t819 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 1
  %t820 = load { i64, ptr }, ptr %t819
  %t821 = extractvalue { i64, ptr } %t820, 1
  %t822 = call ptr @__olang_region_or(ptr %t821, ptr null)
  %t823 = icmp ne ptr %t822, null
  %t824 = select i1 %t823, ptr %t822, ptr %t818
  %t825 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216, i32 0, i32 0
  %t826 = load { i64, ptr }, ptr %t825
  %t827 = extractvalue { i64, ptr } %t826, 1
  %t828 = call ptr @__olang_region_or(ptr %t827, ptr null)
  %t829 = icmp ne ptr %t828, null
  %t830 = select i1 %t829, ptr %t828, ptr %t824
  %t831 = icmp eq ptr %t830, %t812
  call void @__olang_region_settle(ptr %t812, i1 %t831)
  br label %bb160
bb160:
  %t832 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l216
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t832, ptr %l79
  store i1 false, ptr %l80, !tbaa !21
  %t833 = ptrtoint ptr %v4 to i64
  store i64 %t833, ptr %l218, !tbaa !24
  %t834 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e77
  br i1 %t834, label %bb161, label %bb162
bb161:
  %t836 = call ptr @__olang_region_make(ptr %v4)
  %t837 = ptrtoint ptr %t836 to i64
  store i64 %t837, ptr %l218, !tbaa !24
  br label %bb162
bb162:
  %t838 = load i64, ptr %l218
  %t839 = inttoptr i64 %t838 to ptr
  %t840 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t839)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t840, ptr %l220
  br label %bb163
bb163:
  %t841 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e77
  br i1 %t841, label %bb164, label %bb165
bb164:
  %t843 = load i64, ptr %l218
  %t844 = inttoptr i64 %t843 to ptr
  %t845 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 2
  %t846 = load { i64, ptr }, ptr %t845
  %t847 = extractvalue { i64, ptr } %t846, 1
  %t848 = call ptr @__olang_region_or(ptr %t847, ptr null)
  %t849 = icmp ne ptr %t848, null
  %t850 = select i1 %t849, ptr %t848, ptr null
  %t851 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 1
  %t852 = load { i64, ptr }, ptr %t851
  %t853 = extractvalue { i64, ptr } %t852, 1
  %t854 = call ptr @__olang_region_or(ptr %t853, ptr null)
  %t855 = icmp ne ptr %t854, null
  %t856 = select i1 %t855, ptr %t854, ptr %t850
  %t857 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220, i32 0, i32 0
  %t858 = load { i64, ptr }, ptr %t857
  %t859 = extractvalue { i64, ptr } %t858, 1
  %t860 = call ptr @__olang_region_or(ptr %t859, ptr null)
  %t861 = icmp ne ptr %t860, null
  %t862 = select i1 %t861, ptr %t860, ptr %t856
  %t863 = icmp eq ptr %t862, %t844
  call void @__olang_region_settle(ptr %t844, i1 %t863)
  br label %bb165
bb165:
  %t864 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l220
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t864, ptr %l81
  %t865 = ptrtoint ptr %v4 to i64
  store i64 %t865, ptr %l222, !tbaa !24
  %t866 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e78
  br i1 %t866, label %bb166, label %bb167
bb166:
  %t868 = call ptr @__olang_region_make(ptr %v4)
  %t869 = ptrtoint ptr %t868 to i64
  store i64 %t869, ptr %l222, !tbaa !24
  br label %bb167
bb167:
  %t870 = load i64, ptr %l222
  %t871 = inttoptr i64 %t870 to ptr
  %t872 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t871, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t872, ptr %l224
  br label %bb168
bb168:
  %t873 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e78
  br i1 %t873, label %bb169, label %bb170
bb169:
  %t875 = load i64, ptr %l222
  %t876 = inttoptr i64 %t875 to ptr
  %t877 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224, i32 0, i32 0
  %t878 = load { i64, ptr }, ptr %t877
  %t879 = extractvalue { i64, ptr } %t878, 1
  %t880 = call ptr @__olang_region_or(ptr %t879, ptr null)
  %t881 = icmp ne ptr %t880, null
  %t882 = select i1 %t881, ptr %t880, ptr null
  %t883 = icmp eq ptr %t882, %t876
  call void @__olang_region_settle(ptr %t876, i1 %t883)
  br label %bb170
bb170:
  %t884 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t884, ptr %l82
  %t885 = ptrtoint ptr %v4 to i64
  store i64 %t885, ptr %l226, !tbaa !24
  %t886 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e79
  br i1 %t886, label %bb171, label %bb172
bb171:
  %t888 = call ptr @__olang_region_make(ptr %v4)
  %t889 = ptrtoint ptr %t888 to i64
  store i64 %t889, ptr %l226, !tbaa !24
  br label %bb172
bb172:
  %t890 = load i64, ptr %l226
  %t891 = inttoptr i64 %t890 to ptr
  %t892 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t891)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t892, ptr %l228
  br label %bb173
bb173:
  %t893 = load i1, ptr @olang_2esole_2ecompiler_2femit_3aEmitter_2e79
  br i1 %t893, label %bb174, label %bb175
bb174:
  %t895 = load i64, ptr %l226
  %t896 = inttoptr i64 %t895 to ptr
  %t897 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l228, i32 0, i32 2
  %t898 = load { i64, ptr }, ptr %t897
  %t899 = extractvalue { i64, ptr } %t898, 1
  %t900 = call ptr @__olang_region_or(ptr %t899, ptr null)
  %t901 = icmp ne ptr %t900, null
  %t902 = select i1 %t901, ptr %t900, ptr null
  %t903 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l228, i32 0, i32 1
  %t904 = load { i64, ptr }, ptr %t903
  %t905 = extractvalue { i64, ptr } %t904, 1
  %t906 = call ptr @__olang_region_or(ptr %t905, ptr null)
  %t907 = icmp ne ptr %t906, null
  %t908 = select i1 %t907, ptr %t906, ptr %t902
  %t909 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l228, i32 0, i32 0
  %t910 = load { i64, ptr }, ptr %t909
  %t911 = extractvalue { i64, ptr } %t910, 1
  %t912 = call ptr @__olang_region_or(ptr %t911, ptr null)
  %t913 = icmp ne ptr %t912, null
  %t914 = select i1 %t913, ptr %t912, ptr %t908
  %t915 = icmp eq ptr %t914, %t896
  call void @__olang_region_settle(ptr %t896, i1 %t915)
  br label %bb175
bb175:
  %t916 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l228
  %t917 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 0
  %t918 = load ptr, ptr %l4, !tbaa !29
  store ptr %t918, ptr %t917, !tbaa !29
  %t919 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 1
  %t920 = load ptr, ptr %l5, !tbaa !29
  store ptr %t920, ptr %t919, !tbaa !29
  %t921 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 2
  %t922 = load ptr, ptr %l6, !tbaa !29
  store ptr %t922, ptr %t921, !tbaa !29
  %t923 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 3
  %t924 = load ptr, ptr %l7, !tbaa !29
  store ptr %t924, ptr %t923, !tbaa !29
  %t925 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 4
  %t926 = load i1, ptr %l8, !tbaa !21
  store i1 %t926, ptr %t925, !tbaa !21
  %t927 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 5
  %t928 = load i1, ptr %l9, !tbaa !21
  store i1 %t928, ptr %t927, !tbaa !21
  %t929 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 6
  %t930 = load i1, ptr %l10, !tbaa !21
  store i1 %t930, ptr %t929, !tbaa !21
  %t931 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 7
  %t932 = load i1, ptr %l11, !tbaa !21
  store i1 %t932, ptr %t931, !tbaa !21
  %t933 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 8
  %t934 = load i1, ptr %l12, !tbaa !21
  store i1 %t934, ptr %t933, !tbaa !21
  %t935 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 9
  %t936 = load i1, ptr %l13, !tbaa !21
  store i1 %t936, ptr %t935, !tbaa !21
  %t937 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 10
  %t938 = load i1, ptr %l14, !tbaa !21
  store i1 %t938, ptr %t937, !tbaa !21
  %t939 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 11
  %t940 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t940, ptr %t939, !tbaa !27
  %t941 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 12
  %t942 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t942, ptr %t941
  %t943 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 13
  %t944 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t944, ptr %t943
  %t945 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 14
  %t946 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l18
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t946, ptr %t945
  %t947 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 15
  %t948 = load i64, ptr %l19, !tbaa !24
  store i64 %t948, ptr %t947, !tbaa !24
  %t949 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 16
  %t950 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t950, ptr %t949
  %t951 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 17
  %t952 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t952, ptr %t951
  %t953 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 18
  %t954 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t954, ptr %t953
  %t955 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 19
  %t956 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t956, ptr %t955
  %t957 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 20
  %t958 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t958, ptr %t957
  %t959 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 21
  %t960 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t960, ptr %t959
  %t961 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 22
  %t962 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t962, ptr %t961
  %t963 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 23
  %t964 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t964, ptr %t963
  %t965 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 24
  %t966 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t966, ptr %t965, !tbaa !27
  %t967 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 25
  %t968 = load i64, ptr %l29, !tbaa !24
  store i64 %t968, ptr %t967, !tbaa !24
  %t969 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 26
  %t970 = load i1, ptr %l30, !tbaa !21
  store i1 %t970, ptr %t969, !tbaa !21
  %t971 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 27
  %t972 = load i64, ptr %l31, !tbaa !24
  store i64 %t972, ptr %t971, !tbaa !24
  %t973 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 28
  %t974 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t974, ptr %t973
  %t975 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 29
  %t976 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t976, ptr %t975
  %t977 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 30
  %t978 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t978, ptr %t977
  %t979 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 31
  %t980 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t980, ptr %t979
  %t981 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 32
  %t982 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t982, ptr %t981
  %t983 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 33
  %t984 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t984, ptr %t983
  %t985 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 34
  %t986 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t986, ptr %t985
  %t987 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 35
  %t988 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t988, ptr %t987
  %t989 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 36
  %t990 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t990, ptr %t989
  %t991 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 37
  %t992 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t992, ptr %t991
  %t993 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 38
  %t994 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t994, ptr %t993
  %t995 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 39
  %t996 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t996, ptr %t995
  %t997 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 40
  %t998 = load i1, ptr %l44, !tbaa !21
  store i1 %t998, ptr %t997, !tbaa !21
  %t999 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 41
  %t1000 = load i1, ptr %l45, !tbaa !21
  store i1 %t1000, ptr %t999, !tbaa !21
  %t1001 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 42
  %t1002 = load i64, ptr %l46, !tbaa !24
  store i64 %t1002, ptr %t1001, !tbaa !24
  %t1003 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 43
  %t1004 = load i64, ptr %l47, !tbaa !24
  store i64 %t1004, ptr %t1003, !tbaa !24
  %t1005 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 44
  %t1006 = load i1, ptr %l48, !tbaa !21
  store i1 %t1006, ptr %t1005, !tbaa !21
  %t1007 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 45
  %t1008 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1008, ptr %t1007
  %t1009 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 46
  %t1010 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1010, ptr %t1009
  %t1011 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 47
  %t1012 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l51
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1012, ptr %t1011
  %t1013 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 48
  %t1014 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t1014, ptr %t1013, !tbaa !27
  %t1015 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 49
  %t1016 = load i1, ptr %l53, !tbaa !21
  store i1 %t1016, ptr %t1015, !tbaa !21
  %t1017 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 50
  %t1018 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t1018, ptr %t1017, !tbaa !27
  %t1019 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 51
  %t1020 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1020, ptr %t1019
  %t1021 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 52
  %t1022 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t1022, ptr %t1021, !tbaa !27
  %t1023 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 53
  %t1024 = load i64, ptr %l57, !tbaa !24
  store i64 %t1024, ptr %t1023, !tbaa !24
  %t1025 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 54
  %t1026 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t1026, ptr %t1025, !tbaa !27
  %t1027 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 55
  %t1028 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1028, ptr %t1027, !tbaa !27
  %t1029 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 56
  %t1030 = load i1, ptr %l60, !tbaa !21
  store i1 %t1030, ptr %t1029, !tbaa !21
  %t1031 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 57
  %t1032 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t1032, ptr %t1031, !tbaa !27
  %t1033 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 58
  %t1034 = load i1, ptr %l62, !tbaa !21
  store i1 %t1034, ptr %t1033, !tbaa !21
  %t1035 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 59
  %t1036 = load i64, ptr %l63, !tbaa !24
  store i64 %t1036, ptr %t1035, !tbaa !24
  %t1037 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 60
  %t1038 = load i64, ptr %l64, !tbaa !24
  store i64 %t1038, ptr %t1037, !tbaa !24
  %t1039 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 61
  %t1040 = load i64, ptr %l65, !tbaa !24
  store i64 %t1040, ptr %t1039, !tbaa !24
  %t1041 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 62
  %t1042 = load i64, ptr %l66, !tbaa !24
  store i64 %t1042, ptr %t1041, !tbaa !24
  %t1043 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 63
  %t1044 = load i64, ptr %l67, !tbaa !24
  store i64 %t1044, ptr %t1043, !tbaa !24
  %t1045 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 64
  %t1046 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l68
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1046, ptr %t1045
  %t1047 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 65
  %t1048 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l69
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1048, ptr %t1047
  %t1049 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 66
  %t1050 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l70
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1050, ptr %t1049
  %t1051 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 67
  %t1052 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1052, ptr %t1051
  %t1053 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 68
  %t1054 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1054, ptr %t1053
  %t1055 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 69
  %t1056 = load i1, ptr %l73, !tbaa !21
  store i1 %t1056, ptr %t1055, !tbaa !21
  %t1057 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 70
  %t1058 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1058, ptr %t1057
  %t1059 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 71
  %t1060 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1060, ptr %t1059
  %t1061 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 72
  %t1062 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1062, ptr %t1061
  %t1063 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 73
  %t1064 = load i1, ptr %l77, !tbaa !21
  store i1 %t1064, ptr %t1063, !tbaa !21
  %t1065 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 74
  %t1066 = load i1, ptr %l78, !tbaa !21
  store i1 %t1066, ptr %t1065, !tbaa !21
  %t1067 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 75
  %t1068 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1068, ptr %t1067
  %t1069 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 76
  %t1070 = load i1, ptr %l80, !tbaa !21
  store i1 %t1070, ptr %t1069, !tbaa !21
  %t1071 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 77
  %t1072 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l81
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1072, ptr %t1071
  %t1073 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 78
  %t1074 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1074, ptr %t1073
  %t1075 = getelementptr %"compiler/emit:Emitter", ptr %l230, i32 0, i32 79
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t916, ptr %t1075
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l230, i64 2376, i1 false)
  br label %ret
ret:
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
@.d0 = private constant <{ i64, [40 x i8] }> <{ i64 0, [40 x i8] c"attributes #0 = { null_pointer_is_valid " }>, align 8
@.d1 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" nounwind }\0A" }>, align 8
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
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Char" }>, align 8
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"char" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"bool" }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"int8_t" }>, align 8
@.d6 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int16_t" }>, align 8
@.d7 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int32_t" }>, align 8
@.d8 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int64_t" }>, align 8
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"uint8_t" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"uint16_t" }>, align 8
@.d11 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"uint32_t" }>, align 8
@.d12 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"uint64_t" }>, align 8
@.d13 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"_Float16" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"__bf16" }>, align 8
@.d15 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"float" }>, align 8
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"double" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"f " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"f " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" *" }>, align 8
@.d20 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"s " }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"s " }>, align 8
@.d22 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"typedef struct __attribute__((packed)) " }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" {\0A" }>, align 8
@.d24 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"} " }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c";\0A\0A" }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"];\0A" }>, align 8
@.d30 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d32 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c";\0A" }>, align 8
@.d33 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typedef struct " }>, align 8
@.d34 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" {\0A" }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"} " }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c";\0A\0A" }>, align 8
@.d37 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d38 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"!DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)" }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d41 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d42 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c" = weak hidden constant i1 false\0A" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_region_or" }>, align 8
@.d45 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d46 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d47 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d48 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @__olang_region_or(ptr " }>, align 8
@.d51 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", ptr null)" }>, align 8
@.d52 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"icmp ne ptr " }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", null" }>, align 8
@.d54 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"select i1 " }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d57 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d59 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" x i8]" }>, align 8
@.d60 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d61 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"i" }>, align 8
@.d62 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"  %big = alloca %olang.scope\0A" }>, align 8
@.d63 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"  store %olang.scope zeroinitializer, ptr %big\0A" }>, align 8
@.d64 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d65 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_close" }>, align 8
@.d66 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d67 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d70 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d71 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d72 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d73 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"extractvalue { i64, ptr } " }>, align 8
@.d74 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d75 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"mul i64 " }>, align 8
@.d76 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d77 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"llvm.memcpy.p0.p0.i64" }>, align 8
@.d78 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)" }>, align 8
@.d79 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"call void @llvm.memcpy.p0.p0.i64(ptr " }>, align 8
@.d80 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d81 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d82 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", i1 false)" }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"!" }>, align 8
@.d84 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" = !DILocation(line: " }>, align 8
@.d85 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", column: 1, scope: !" }>, align 8
@.d86 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d87 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", !dbg !" }>, align 8
@.d88 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hd" }>, align 8
@.d89 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d90 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" = load ptr, ptr %f" }>, align 8
@.d91 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d92 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %hx" }>, align 8
@.d93 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d94 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" = extractvalue " }>, align 8
@.d95 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d96 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d98 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"  store " }>, align 8
@.d99 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" %hx" }>, align 8
@.d100 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d101 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %hd" }>, align 8
@.d102 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d103 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d104 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", !range !{" }>, align 8
@.d105 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" 0, " }>, align 8
@.d106 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d108 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_unwind_top" }>, align 8
@.d109 = private constant <{ i64, [67 x i8] }> <{ i64 0, [67 x i8] c"@__olang_unwind_top = external thread_local(initialexec) global ptr" }>, align 8
@.d110 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d111 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"@__olang_unwind_top" }>, align 8
@.d112 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"getelementptr %olang.unwind, ptr %u" }>, align 8
@.d113 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 0" }>, align 8
@.d114 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d115 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%s" }>, align 8
@.d116 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"getelementptr %olang.unwind, ptr %u" }>, align 8
@.d117 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d118 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d119 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%jh" }>, align 8
@.d120 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d121 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"getelementptr %olang.unwind, ptr %u" }>, align 8
@.d122 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 2" }>, align 8
@.d123 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d124 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%u" }>, align 8
@.d125 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d126 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"@__olang_unwind_top" }>, align 8
@.d127 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d128 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d129 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d130 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"!llvm.dbg.cu = !{!" }>, align 8
@.d131 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"}\0A!llvm.module.flags = !{!1, !2}\0A!1 = !{i32 7, !\22Dwarf Version\22, i32 4}\0A" }>, align 8
@.d132 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c"!2 = !{i32 2, !\22Debug Info Version\22, i32 3}\0A" }>, align 8
@.d133 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e12 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e17 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e22 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e23 = weak hidden constant i1 false
@.d135 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"x86_64-pc-linux-gnu" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e28 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e30 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e34 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e35 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e38 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e46 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e47 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0)
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

@.d136 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d137 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e51 = weak hidden constant i1 false
@.d138 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"build/fuzz" }>, align 8
@.d139 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d140 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d141 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2femit_3aEmitter_2e64 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e65 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e66 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e67 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e68 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2femit_3aEmitter_2e70 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e71 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e72 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e75 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e77 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e78 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2femit_3aEmitter_2e79 = weak hidden constant i1 false
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportBodies(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2femit_2etbaaTree = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_7501426141a31c89_886bbfd36634f705 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2efieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecBitfields(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fmir_2eHelperType(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eLowerKey(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_8ec8751bbb52a5fd_3161bca6b1c44ba9 = external constant [0 x i8]
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_1a9d82a78676b0a6_b4156ec517c232f2 = external constant [0 x i8]
declare i1 @compiler_2femit_2etypeDelim(i8 %a0)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
@olang_loc_59a9be6f9464903_424bcbda67d6186f = external constant [0 x i8]
@olang_loc_f7c6dddb13d754e8_bd1e858aa2031304 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2085f59261c3a546_f9ceea81113e8d2 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2efieldList(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloca(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2earrayStorage(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i32 %a3, i1 %a4)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_e9e71ccb75095175_3df52a9a91674c89 = external constant [0 x i8]
@olang_loc_d7426df353af1cf1_5409353fb5c530e5 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplaceType(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_34175b6f59aa64d9_d8857486e5aa61ad = external constant [0 x i8]
@olang_loc_b58edc65c6718b49_26c0578031dccca5 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edbgEntry(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
@olang_loc_1e1ac9afcf25b4a6_b14a079dd13715c2 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2femit_2ePartSize = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\10\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)

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
