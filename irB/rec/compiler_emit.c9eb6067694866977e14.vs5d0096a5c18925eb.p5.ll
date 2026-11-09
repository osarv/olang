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
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:Emitter" = type { ptr, ptr, ptr, ptr, i1, i1, i1, i1, i1, i1, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, i1, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/lower:Lowerer" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i32, i64, i64, i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/emit:fnEm" = type { ptr, ptr, { i64, [2 x i64] }, %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", %"std/prelude/text:StringBuilder", i64, i64, i64, i32, i1, i1, i1, i1, i1, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/text:StringBuilder", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eSoleUnit(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l37 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l50 = alloca %"std/prelude/text:StringBuilder"
  %l51 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca { i64, ptr }
  %l60 = alloca i64
  %l62 = alloca i64
  %l67 = alloca { i64, ptr }
  %l70 = alloca i1
  %l72 = alloca { i64, ptr }
  %l74 = alloca i64
  %l76 = alloca i64
  %l77 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 5
  %t7 = load ptr, ptr %t6, !tbaa !29
  store ptr %t7, ptr %l1, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t13, ptr %l17, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  store i64 %t15, ptr %l18, !tbaa !24
  %t16 = load i64, ptr %l18, !tbaa !24
  %t17 = mul i64 %t16, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t17)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  store { i64, ptr } %t20, ptr %l19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l18, !tbaa !24
  %t26 = mul i64 %t25, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %t24, i64 %t26, i1 false)
  %t27 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t28 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t28, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l20
  br label %bb4
bb4:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l2
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSoleNow(ptr %v0, ptr %s2, ptr %t31)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t33, ptr %l22
  br label %bb5
bb5:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t35 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %t35
  store ptr %t35, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l4, !tbaa !24
  store i64 %t37, ptr %l24, !tbaa !24
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t38)
  store i64 %t40, ptr %l26
  br label %bb7
bb7:
  %t41 = load i64, ptr %l24, !tbaa !24
  %t42 = load i64, ptr %l26, !tbaa !24
  %t43 = icmp slt i64 %t41, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t48 = load i64, ptr %l4, !tbaa !24
  %t51 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t47, i64 %t48)
  store i64 %t51, ptr %l31
  br label %bb11
bb11:
  %t52 = load i64, ptr %l31, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  store ptr %l2, ptr %l32, !tbaa !29
  %t53 = ptrtoint ptr %s0 to i64
  store i64 %t53, ptr %l33, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = call ptr @__olang_region_make(ptr %s0)
  %t57 = ptrtoint ptr %t56 to i64
  store i64 %t57, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l33
  %t61 = inttoptr i64 %t60 to ptr
  %t64 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %t61, ptr %t58, i64 %t59)
  store { i64, ptr } %t64, ptr %l37
  br label %bb14
bb14:
  %t65 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t66 = load i64, ptr %l33
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = extractvalue { i64, ptr } %t65, 0
  %t69 = extractvalue { i64, ptr } %t65, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %t67, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l32, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t74, { i64, ptr } %t73)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l4, !tbaa !24
  br label %bb6
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l2)
  store i64 %t81, ptr %l42
  br label %bb18
bb18:
  %t82 = load i64, ptr %l42, !tbaa !24
  %t83 = icmp eq i64 %t82, 0
  br i1 %t83, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t85, ptr %l45, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  store i64 %t87, ptr %l46, !tbaa !24
  %t88 = load i64, ptr %l46, !tbaa !24
  %t89 = mul i64 %t88, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t89)
  %t91 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  store { i64, ptr } %t92, ptr %l47, !tbaa !27
  %t93 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = load i64, ptr %l46, !tbaa !24
  %t98 = mul i64 %t97, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t94, ptr %t96, i64 %t98, i1 false)
  %t99 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t99, ptr %l45, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t100 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t100, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t101 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_2, 0
  %t102 = insertvalue { ptr, ptr } %t101, ptr null, 1
  %t105 = extractvalue { ptr, ptr } %t102, 0
  %t106 = extractvalue { ptr, ptr } %t102, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %s0, ptr %s0, ptr %l2, ptr %t105, ptr %t106)
  br label %bb22
bb22:
  %t107 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t107, ptr %l50
  br label %bb23
bb23:
  %t108 = load %"std/prelude/text:StringBuilder", ptr %l50
  store %"std/prelude/text:StringBuilder" %t108, ptr %l6
  store ptr %l6, ptr %l51, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %s0, ptr %t109)
  store { i64, ptr } %t111, ptr %l53
  br label %bb24
bb24:
  %t112 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t119, { i64, ptr } %t118)
  br label %bb25
bb25:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t121, ptr %l56, !tbaa !27
  %t122 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l57, !tbaa !24
  %t124 = load i64, ptr %l57, !tbaa !24
  %t125 = mul i64 %t124, 1
  %t126 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t125)
  %t127 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %t126, 1
  store { i64, ptr } %t128, ptr %l58, !tbaa !27
  %t129 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = load i64, ptr %l57, !tbaa !24
  %t134 = mul i64 %t133, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t130, ptr %t132, i64 %t134, i1 false)
  %t135 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t135, ptr %l7, !tbaa !27
  store ptr %l2, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s7
  %t137 = load i64, ptr %l9, !tbaa !24
  store i64 %t137, ptr %l60, !tbaa !24
  %t138 = load ptr, ptr %l8, !tbaa !29
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t138)
  store i64 %t140, ptr %l62
  br label %bb27
bb27:
  %t141 = load i64, ptr %l60, !tbaa !24
  %t142 = load i64, ptr %l62, !tbaa !24
  %t143 = icmp slt i64 %t141, %t142
  %t145 = xor i1 %t143, true
  br i1 %t145, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s7)
  br label %bb41
bb29:
  br label %bb30
bb30:
  %t147 = load ptr, ptr %l8, !tbaa !29
  %t148 = load i64, ptr %l9, !tbaa !24
  %t151 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t147, i64 %t148)
  store { i64, ptr } %t151, ptr %l67
  br label %bb31
bb31:
  %t152 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t152, ptr %l10, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t153, { i64, ptr } %t154)
  store i1 %t157, ptr %l70
  br label %bb32
bb32:
  %t158 = load i1, ptr %l70, !tbaa !21
  br i1 %t158, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb34:
  br label %bb35
bb35:
  %t159 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t159, ptr %l72, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 0
  %t163 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l74, !tbaa !24
  %t166 = load i64, ptr %l74, !tbaa !24
  %t167 = icmp eq i64 %t162, %t166
  br i1 %t167, label %bb36, label %bb37
bb36:
  %t169 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !27
  %t173 = load i64, ptr %l74, !tbaa !24
  %t174 = mul i64 %t173, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t170, ptr %t172, i64 %t174, i1 false)
  br label %bb38
bb37:
  %t175 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  store i64 %t176, ptr %l76, !tbaa !24
  %t177 = load i64, ptr %l76, !tbaa !24
  %t178 = mul i64 %t177, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t178)
  %t180 = insertvalue { i64, ptr } undef, i64 %t177, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  store { i64, ptr } %t181, ptr %l77, !tbaa !27
  %t182 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = load i64, ptr %l76, !tbaa !24
  %t187 = mul i64 %t186, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t183, ptr %t185, i64 %t187, i1 false)
  %t188 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t188, ptr %l7, !tbaa !27
  br label %bb38
bb38:
  %t189 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t193 = extractvalue { i64, ptr } %t189, 1
  %t194 = extractvalue { i64, ptr } %t189, 0
  %t195 = add i64 %t191, %t194
  %t196 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t197 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t198 = add i64 %t195, %t197
  %t199 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t198)
  call void @olang_textcopy(ptr %t199, ptr %t190, i64 %t191)
  %t200 = getelementptr i8, ptr %t199, i64 %t191
  call void @olang_textcopy(ptr %t200, ptr %t193, i64 %t194)
  %t201 = getelementptr i8, ptr %t200, i64 %t194
  call void @olang_textcopy(ptr %t201, ptr %t196, i64 %t197)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t199, 1
  %t205 = extractvalue { i64, ptr } %t203, 0
  %t206 = extractvalue { i64, ptr } %t203, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l6, { i64, ptr } %t210)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb40:
  %t213 = load i64, ptr %l9, !tbaa !24
  %t215 = add i64 %t213, 1
  store i64 %t215, ptr %l9, !tbaa !24
  br label %bb26
bb41:
  %t218 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l6)
  store { i64, ptr } %t218, ptr %l85
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  %t219 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t219, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i32
  %l18 = alloca i64
  %l21 = alloca i64
  %l41 = alloca i32
  %l47 = alloca i32
  %l50 = alloca i1
  %l51 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i32
  %l58 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i32, ptr %l14, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  store i64 0, ptr %l4, !tbaa !24
  store i64 8, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l6, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l6, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l8, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb28
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l9, !tbaa !24
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l41
  br label %bb12
bb12:
  %t63 = load i32, ptr %l41, !range !{i32 0, i32 33}
  %t65 = trunc i64 19 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = load i32, ptr %l3, !tbaa !23
  store i32 %t68, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i32, ptr %l3, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l47
  br label %bb16
bb16:
  %t75 = load i32, ptr %l47, !range !{i32 0, i32 33}
  %t77 = trunc i64 18 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l2, !tbaa !29
  store ptr %t80, ptr %l51, !tbaa !29
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t82 = load i32, ptr %l3, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l54
  br label %bb19
bb18:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb21
bb19:
  %t86 = load ptr, ptr %l51, !tbaa !29
  %t87 = load i32, ptr %l54, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t86, i32 %t87)
  store i32 %t88, ptr %l55
  br label %bb20
bb20:
  %t89 = load i32, ptr %l55, !range !{i32 0, i32 6}
  %t91 = trunc i64 4 to i32
  %t92 = icmp eq i32 %t89, %t91
  store i1 %t92, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t94 = load i1, ptr %l50, !tbaa !21
  br i1 %t94, label %bb22, label %bb23
bb22:
  %t95 = load ptr, ptr %l2, !tbaa !29
  store ptr %t95, ptr %l58, !tbaa !29
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i32, ptr %l3, !tbaa !23
  %t100 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t96, i32 %t97)
  store i32 %t100, ptr %l61
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t101 = load ptr, ptr %l58, !tbaa !29
  %t102 = load i32, ptr %l61, !tbaa !23
  %t103 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t103, ptr %l62
  br label %bb25
bb25:
  %t104 = load i32, ptr %l62, !tbaa !23
  store i32 %t104, ptr %l3, !tbaa !23
  br label %bb27
bb26:
  %t105 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t105, ptr %rv
  br label %ret
bb27:
  %t107 = load i64, ptr %l8, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l8, !tbaa !24
  br label %bb8
bb28:
  %t111 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t111, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecEntryDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i1
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca i64
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l96 = alloca i32
  %l99 = alloca i1
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca i32
  %l107 = alloca i64
  %l113 = alloca i32
  %l116 = alloca ptr
  %l117 = alloca i64
  %l120 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l124 = alloca i32
  %l126 = alloca { i64, ptr }
  %l132 = alloca i32
  %l134 = alloca ptr
  %l135 = alloca i64
  %l142 = alloca i32
  %l145 = alloca i1
  %l146 = alloca ptr
  %l149 = alloca i32
  %l150 = alloca i32
  %l153 = alloca ptr
  %l154 = alloca i64
  %l159 = alloca { i64, ptr }
  %l163 = alloca ptr
  %l164 = alloca i64
  %l167 = alloca { i64, ptr }
  %l171 = alloca { i64, ptr }
  %l175 = alloca ptr
  %l176 = alloca i64
  %l181 = alloca { i64, ptr }
  %l189 = alloca i32
  %l193 = alloca i1
  %l197 = alloca ptr
  %l200 = alloca i32
  %l201 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l206 = alloca [4 x i8]
  %l210 = alloca i1
  %l213 = alloca i1
  %l214 = alloca ptr
  %l217 = alloca i32
  %l218 = alloca i32
  %l219 = alloca ptr
  %l220 = alloca i64
  %l225 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l235 = alloca { i64, ptr }
  %l238 = alloca i64
  %l240 = alloca i64
  %l241 = alloca { i64, ptr }
  %l244 = alloca ptr
  %l245 = alloca i64
  %l250 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l254 = alloca { i64, ptr }
  %l256 = alloca i64
  %l258 = alloca i64
  %l259 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l266 = alloca i64
  %l268 = alloca %"std/prelude/text:StringBuilder"
  %l269 = alloca ptr
  %l272 = alloca { i64, ptr }
  %l281 = alloca i64
  %l285 = alloca i64
  %l287 = alloca i64
  %l293 = alloca { i64, ptr }
  %l303 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t13 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  store ptr %t13, ptr %l35
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l35, !tbaa !29
  store ptr %t14, ptr %l5, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l5, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Func", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  %t22 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s0, ptr %t15, i32 %t19)
  store { i64, ptr } %t22, ptr %l39
  br label %bb2
bb2:
  %t23 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = extractvalue { i64, ptr } %t23, 0
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @olang_textcopy(ptr %t26, ptr %t24, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l6, !tbaa !27
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l41
  br label %bb3
bb3:
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l7
  %t32 = load ptr, ptr %l4, !tbaa !29
  store ptr %t32, ptr %l42, !tbaa !29
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l45
  br label %bb4
bb4:
  %t38 = load ptr, ptr %l42, !tbaa !29
  %t39 = load i32, ptr %l45, !tbaa !23
  %t40 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t38, i32 %t39)
  store { i64, ptr } %t40, ptr %l46
  br label %bb5
bb5:
  %t41 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t41, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = icmp sgt i64 %t46, %t47
  br i1 %t50, label %bb6, label %bb7
bb6:
  %t52 = load i64, ptr %l11, !tbaa !24
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb11
bb8:
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = sub i64 %t56, %t57
  %t61 = load i64, ptr %l11, !tbaa !24
  %t64 = add i64 %t60, %t61
  %t66 = sub i64 %t64, 1
  %t67 = load i64, ptr %l11, !tbaa !24
  %t70 = sdiv i64 %t66, %t67
  store i64 %t70, ptr %l55, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb10
bb10:
  %t72 = load i64, ptr %l55, !tbaa !24
  store i64 %t72, ptr %l52, !tbaa !24
  br label %bb11
bb11:
  %t73 = load i64, ptr %l52, !tbaa !24
  store i64 %t73, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t74 = load i64, ptr %l13, !tbaa !24
  %t75 = load i64, ptr %l12, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb72
bb14:
  br label %bb15
bb15:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t83 = load i64, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = mul i64 %t83, %t84
  %t90 = add i64 %t82, %t87
  store i64 %t90, ptr %l14, !tbaa !24
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load ptr, ptr %l5, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Func", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Sig", ptr %t96, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  %t104 = icmp slt i64 %t92, %t101
  br i1 %t104, label %bb16, label %bb17
bb16:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/ast:Func", ptr %t107, i32 0, i32 3
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Sig", ptr %t110, i32 0, i32 0
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l83, !tbaa !27
  %t114 = load i64, ptr %l14, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 %t114
  %t119 = load ptr, ptr %t118, !tbaa !39
  %t121 = getelementptr %"compiler/ast:Param", ptr %t119, i32 0, i32 1
  %t122 = load i32, ptr %t121, !tbaa !23
  %t125 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %s3, ptr %t106, i32 %t122)
  store { i64, ptr } %t125, ptr %l87
  br label %bb18
bb17:
  %t126 = load i64, ptr %l14, !tbaa !24
  %t127 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t130 = call i64 @__olang_fmt_i64(ptr null, i64 %t126)
  %t131 = add i64 %t128, %t130
  %t132 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t131)
  call void @olang_textcopy(ptr %t132, ptr %t127, i64 %t128)
  %t133 = getelementptr i8, ptr %t132, i64 %t128
  %t134 = call i64 @__olang_fmt_i64(ptr %t133, i64 %t126)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t132, 1
  store { i64, ptr } %t136, ptr %l79, !tbaa !27
  br label %bb19
bb18:
  %t138 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t139, i64 %t140)
  %t142 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l79, !tbaa !27
  br label %bb19
bb19:
  %t145 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t145, ptr %l15, !tbaa !27
  %t146 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t146, ptr %l91, !tbaa !27
  %t147 = load i64, ptr %l14, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i32, ptr %t150, i64 %t147
  %t152 = load i32, ptr %t151, !tbaa !33
  store i32 %t152, ptr %l16, !tbaa !23
  %t154 = load ptr, ptr %l4, !tbaa !29
  %t155 = load i32, ptr %l16, !tbaa !23
  %t158 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t154, i32 %t155)
  store i32 %t158, ptr %l96
  br label %bb20
bb20:
  %t159 = load i32, ptr %l96, !tbaa !23
  store i32 %t159, ptr %l17, !tbaa !23
  %t160 = load ptr, ptr %l4, !tbaa !29
  %t161 = load i32, ptr %l17, !tbaa !23
  %t164 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t160, i32 %t161)
  store i1 %t164, ptr %l99
  br label %bb21
bb21:
  %t165 = load i1, ptr %l99, !tbaa !21
  br i1 %t165, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s6
  %t166 = load ptr, ptr %l4, !tbaa !29
  store ptr %t166, ptr %l100, !tbaa !29
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t168 = load i32, ptr %l17, !tbaa !23
  %t171 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t167, i32 %t168)
  store i32 %t171, ptr %l103
  br label %bb24
bb23:
  br label %bb66
bb24:
  %t172 = load ptr, ptr %l100, !tbaa !29
  %t173 = load i32, ptr %l103, !tbaa !23
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t174, ptr %l104
  br label %bb25
bb25:
  %t175 = load i32, ptr %l104, !tbaa !23
  store i32 %t175, ptr %l18, !tbaa !23
  %t176 = load ptr, ptr %l4, !tbaa !29
  %t177 = load i32, ptr %l17, !tbaa !23
  %t180 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t176, i32 %t177)
  store i64 %t180, ptr %l107
  br label %bb26
bb26:
  %t181 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t182 = load i64, ptr %l107, !tbaa !24
  %t184 = and i64 %t182, %t181
  %t186 = icmp eq i64 %t184, 0
  store i1 %t186, ptr %l19, !tbaa !21
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t189 = load i32, ptr %l18, !tbaa !23
  %t192 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t188, i32 %t189)
  store i32 %t192, ptr %l113
  br label %bb27
bb27:
  %t193 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t195 = trunc i64 19 to i32
  %t196 = icmp eq i32 %t193, %t195
  br i1 %t196, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l7, ptr %l116, !tbaa !29
  %t198 = ptrtoint ptr %s0 to i64
  store i64 %t198, ptr %l117, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t199, label %bb30, label %bb31
bb29:
  br label %bb45
bb30:
  %t201 = call ptr @__olang_region_make(ptr %s0)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l117, !tbaa !24
  br label %bb31
bb31:
  %t203 = load i1, ptr %l19, !tbaa !21
  br i1 %t203, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l120, !tbaa !27
  br label %bb34
bb34:
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l121, !tbaa !29
  %t206 = load ptr, ptr %l4, !tbaa !29
  %t207 = load i32, ptr %l18, !tbaa !23
  %t210 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t206, i32 %t207)
  store i32 %t210, ptr %l124
  br label %bb35
bb35:
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t212 = load ptr, ptr %l121, !tbaa !29
  %t213 = load i32, ptr %l124, !tbaa !23
  %t215 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s7, ptr %t212, i32 %t213, ptr %t211)
  store { i64, ptr } %t215, ptr %l126
  br label %bb36
bb36:
  %t216 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t217 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 1
  %t219 = extractvalue { i64, ptr } %t217, 0
  %t220 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 1
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = add i64 %t219, %t222
  %t224 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t228 = extractvalue { i64, ptr } %t216, 1
  %t229 = extractvalue { i64, ptr } %t216, 0
  %t230 = add i64 %t226, %t229
  %t231 = load i64, ptr %l117
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = call ptr @__olang_scope_alloc(ptr %t232, i64 %t230)
  call void @olang_textcopy(ptr %t233, ptr %t218, i64 %t219)
  %t234 = getelementptr i8, ptr %t233, i64 %t219
  call void @olang_textcopy(ptr %t234, ptr %t221, i64 %t222)
  %t235 = getelementptr i8, ptr %t234, i64 %t222
  call void @olang_textcopy(ptr %t235, ptr %t224, i64 %t225)
  %t236 = getelementptr i8, ptr %t235, i64 %t225
  call void @olang_textcopy(ptr %t236, ptr %t228, i64 %t229)
  %t237 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t233, 1
  %t240 = load i64, ptr %l117
  %t241 = inttoptr i64 %t240 to ptr
  %t242 = extractvalue { i64, ptr } %t238, 0
  %t243 = extractvalue { i64, ptr } %t238, 1
  %t244 = mul i64 %t242, 1
  %t245 = call ptr @__olang_scope_alloc(ptr %t241, i64 %t244)
  call void @llvm.memcpy.p0.p0.i64(ptr %t245, ptr %t243, i64 %t244, i1 false)
  %t246 = insertvalue { i64, ptr } undef, i64 %t242, 0
  %t247 = insertvalue { i64, ptr } %t246, ptr %t245, 1
  %t248 = load ptr, ptr %l116, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t248, { i64, ptr } %t247)
  br label %bb37
bb37:
  %t250 = load ptr, ptr %l4, !tbaa !29
  %t251 = load i32, ptr %l18, !tbaa !23
  %t254 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t250, i32 %t251)
  store i32 %t254, ptr %l132
  br label %bb38
bb38:
  %t255 = load i32, ptr %l132, !tbaa !23
  %t256 = icmp eq i32 %t255, 0
  br i1 %t256, label %bb39, label %bb40
bb39:
  store ptr %l7, ptr %l134, !tbaa !29
  %t258 = ptrtoint ptr %s0 to i64
  store i64 %t258, ptr %l135, !tbaa !24
  %t259 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t259, label %bb41, label %bb42
bb40:
  br label %bb44
bb41:
  %t261 = call ptr @__olang_region_make(ptr %s0)
  %t262 = ptrtoint ptr %t261 to i64
  store i64 %t262, ptr %l135, !tbaa !24
  br label %bb42
bb42:
  %t263 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t264 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t265 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t267 = extractvalue { i64, ptr } %t263, 1
  %t268 = extractvalue { i64, ptr } %t263, 0
  %t269 = add i64 %t265, %t268
  %t270 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t272 = add i64 %t269, %t271
  %t273 = load i64, ptr %l135
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = call ptr @__olang_scope_alloc(ptr %t274, i64 %t272)
  call void @olang_textcopy(ptr %t275, ptr %t264, i64 %t265)
  %t276 = getelementptr i8, ptr %t275, i64 %t265
  call void @olang_textcopy(ptr %t276, ptr %t267, i64 %t268)
  %t277 = getelementptr i8, ptr %t276, i64 %t268
  call void @olang_textcopy(ptr %t277, ptr %t270, i64 %t271)
  %t278 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t275, 1
  %t281 = load i64, ptr %l135
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = extractvalue { i64, ptr } %t279, 0
  %t284 = extractvalue { i64, ptr } %t279, 1
  %t285 = mul i64 %t283, 1
  %t286 = call ptr @__olang_scope_alloc(ptr %t282, i64 %t285)
  call void @llvm.memcpy.p0.p0.i64(ptr %t286, ptr %t284, i64 %t285, i1 false)
  %t287 = insertvalue { i64, ptr } undef, i64 %t283, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr %t286, 1
  %t289 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t289, { i64, ptr } %t288)
  br label %bb43
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  br label %bb71
bb45:
  %t291 = load ptr, ptr %l4, !tbaa !29
  %t292 = load i32, ptr %l18, !tbaa !23
  %t295 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t291, i32 %t292)
  store i32 %t295, ptr %l142
  br label %bb46
bb46:
  %t296 = load i32, ptr %l142, !range !{i32 0, i32 33}
  %t298 = trunc i64 18 to i32
  %t299 = icmp eq i32 %t296, %t298
  br i1 %t299, label %bb47, label %bb48
bb47:
  %t301 = load ptr, ptr %l4, !tbaa !29
  store ptr %t301, ptr %l146, !tbaa !29
  %t302 = load ptr, ptr %l4, !tbaa !29
  %t303 = load i32, ptr %l18, !tbaa !23
  %t306 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t302, i32 %t303)
  store i32 %t306, ptr %l149
  br label %bb49
bb48:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb51
bb49:
  %t307 = load ptr, ptr %l146, !tbaa !29
  %t308 = load i32, ptr %l149, !tbaa !23
  %t309 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t307, i32 %t308)
  store i32 %t309, ptr %l150
  br label %bb50
bb50:
  %t310 = load i32, ptr %l150, !range !{i32 0, i32 6}
  %t312 = trunc i64 5 to i32
  %t313 = icmp eq i32 %t310, %t312
  store i1 %t313, ptr %l145, !tbaa !21
  br label %bb51
bb51:
  %t315 = load i1, ptr %l145, !tbaa !21
  br i1 %t315, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l7, ptr %l153, !tbaa !29
  %t316 = ptrtoint ptr %s0 to i64
  store i64 %t316, ptr %l154, !tbaa !24
  %t317 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t317, label %bb54, label %bb55
bb53:
  br label %bb58
bb54:
  %t319 = call ptr @__olang_region_make(ptr %s0)
  %t320 = ptrtoint ptr %t319 to i64
  store i64 %t320, ptr %l154, !tbaa !24
  br label %bb55
bb55:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load i32, ptr %l16, !tbaa !23
  %t323 = load ptr, ptr %l3, !tbaa !29
  %t327 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s11, ptr %t321, i32 %t322, ptr %t323)
  store { i64, ptr } %t327, ptr %l159
  br label %bb56
bb56:
  %t328 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t329 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = extractvalue { i64, ptr } %t329, 0
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t336 = extractvalue { i64, ptr } %t328, 1
  %t337 = extractvalue { i64, ptr } %t328, 0
  %t338 = add i64 %t334, %t337
  %t339 = load i64, ptr %l154
  %t340 = inttoptr i64 %t339 to ptr
  %t341 = call ptr @__olang_scope_alloc(ptr %t340, i64 %t338)
  call void @olang_textcopy(ptr %t341, ptr %t330, i64 %t331)
  %t342 = getelementptr i8, ptr %t341, i64 %t331
  call void @olang_textcopy(ptr %t342, ptr %t332, i64 %t333)
  %t343 = getelementptr i8, ptr %t342, i64 %t333
  call void @olang_textcopy(ptr %t343, ptr %t336, i64 %t337)
  %t344 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t341, 1
  %t347 = load i64, ptr %l154
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = extractvalue { i64, ptr } %t345, 0
  %t350 = extractvalue { i64, ptr } %t345, 1
  %t351 = mul i64 %t349, 1
  %t352 = call ptr @__olang_scope_alloc(ptr %t348, i64 %t351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t352, ptr %t350, i64 %t351, i1 false)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t355 = load ptr, ptr %l153, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t355, { i64, ptr } %t354)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  br label %bb71
bb58:
  store ptr %l7, ptr %l163, !tbaa !29
  %t357 = ptrtoint ptr %s0 to i64
  store i64 %t357, ptr %l164, !tbaa !24
  %t358 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t358, label %bb59, label %bb60
bb59:
  %t360 = call ptr @__olang_region_make(ptr %s0)
  %t361 = ptrtoint ptr %t360 to i64
  store i64 %t361, ptr %l164, !tbaa !24
  br label %bb60
bb60:
  %t362 = load i1, ptr %l19, !tbaa !21
  br i1 %t362, label %bb61, label %bb62
bb61:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l167, !tbaa !27
  br label %bb63
bb62:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l167, !tbaa !27
  br label %bb63
bb63:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load i32, ptr %l18, !tbaa !23
  %t366 = load ptr, ptr %l3, !tbaa !29
  %t370 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s6, ptr %t364, i32 %t365, ptr %t366)
  store { i64, ptr } %t370, ptr %l171
  br label %bb64
bb64:
  %t371 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t373 = extractvalue { i64, ptr } %t372, 1
  %t374 = extractvalue { i64, ptr } %t372, 0
  %t375 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t376 = extractvalue { i64, ptr } %t375, 1
  %t377 = extractvalue { i64, ptr } %t375, 0
  %t378 = add i64 %t374, %t377
  %t379 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t380 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t381 = add i64 %t378, %t380
  %t383 = extractvalue { i64, ptr } %t371, 1
  %t384 = extractvalue { i64, ptr } %t371, 0
  %t385 = add i64 %t381, %t384
  %t386 = load i64, ptr %l164
  %t387 = inttoptr i64 %t386 to ptr
  %t388 = call ptr @__olang_scope_alloc(ptr %t387, i64 %t385)
  call void @olang_textcopy(ptr %t388, ptr %t373, i64 %t374)
  %t389 = getelementptr i8, ptr %t388, i64 %t374
  call void @olang_textcopy(ptr %t389, ptr %t376, i64 %t377)
  %t390 = getelementptr i8, ptr %t389, i64 %t377
  call void @olang_textcopy(ptr %t390, ptr %t379, i64 %t380)
  %t391 = getelementptr i8, ptr %t390, i64 %t380
  call void @olang_textcopy(ptr %t391, ptr %t383, i64 %t384)
  %t392 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t393 = insertvalue { i64, ptr } %t392, ptr %t388, 1
  %t395 = load i64, ptr %l164
  %t396 = inttoptr i64 %t395 to ptr
  %t397 = extractvalue { i64, ptr } %t393, 0
  %t398 = extractvalue { i64, ptr } %t393, 1
  %t399 = mul i64 %t397, 1
  %t400 = call ptr @__olang_scope_alloc(ptr %t396, i64 %t399)
  call void @llvm.memcpy.p0.p0.i64(ptr %t400, ptr %t398, i64 %t399, i1 false)
  %t401 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t400, 1
  %t403 = load ptr, ptr %l163, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t403, { i64, ptr } %t402)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  br label %bb71
bb66:
  store ptr %l7, ptr %l175, !tbaa !29
  %t405 = ptrtoint ptr %s0 to i64
  store i64 %t405, ptr %l176, !tbaa !24
  %t406 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t406, label %bb67, label %bb68
bb67:
  %t408 = call ptr @__olang_region_make(ptr %s0)
  %t409 = ptrtoint ptr %t408 to i64
  store i64 %t409, ptr %l176, !tbaa !24
  br label %bb68
bb68:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load i32, ptr %l16, !tbaa !23
  %t412 = load ptr, ptr %l3, !tbaa !29
  %t416 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s3, ptr %t410, i32 %t411, ptr %t412)
  store { i64, ptr } %t416, ptr %l181
  br label %bb69
bb69:
  %t417 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t423 = add i64 %t420, %t422
  %t425 = extractvalue { i64, ptr } %t417, 1
  %t426 = extractvalue { i64, ptr } %t417, 0
  %t427 = add i64 %t423, %t426
  %t428 = load i64, ptr %l176
  %t429 = inttoptr i64 %t428 to ptr
  %t430 = call ptr @__olang_scope_alloc(ptr %t429, i64 %t427)
  call void @olang_textcopy(ptr %t430, ptr %t419, i64 %t420)
  %t431 = getelementptr i8, ptr %t430, i64 %t420
  call void @olang_textcopy(ptr %t431, ptr %t421, i64 %t422)
  %t432 = getelementptr i8, ptr %t431, i64 %t422
  call void @olang_textcopy(ptr %t432, ptr %t425, i64 %t426)
  %t433 = insertvalue { i64, ptr } undef, i64 %t427, 0
  %t434 = insertvalue { i64, ptr } %t433, ptr %t430, 1
  %t436 = load i64, ptr %l176
  %t437 = inttoptr i64 %t436 to ptr
  %t438 = extractvalue { i64, ptr } %t434, 0
  %t439 = extractvalue { i64, ptr } %t434, 1
  %t440 = mul i64 %t438, 1
  %t441 = call ptr @__olang_scope_alloc(ptr %t437, i64 %t440)
  call void @llvm.memcpy.p0.p0.i64(ptr %t441, ptr %t439, i64 %t440, i1 false)
  %t442 = insertvalue { i64, ptr } undef, i64 %t438, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t441, 1
  %t444 = load ptr, ptr %l175, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t444, { i64, ptr } %t443)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s3)
  br label %bb71
bb71:
  %t446 = load i64, ptr %l13, !tbaa !24
  %t448 = add i64 %t446, 1
  store i64 %t448, ptr %l13, !tbaa !24
  br label %bb12
bb72:
  %t450 = load ptr, ptr %l4, !tbaa !29
  %t451 = load i32, ptr %l2, !tbaa !23
  %t454 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t450, i32 %t451)
  store i32 %t454, ptr %l189
  br label %bb73
bb73:
  %t455 = load i32, ptr %l189, !tbaa !23
  store i32 %t455, ptr %l20, !tbaa !23
  %t456 = load i32, ptr %l20, !tbaa !23
  %t457 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t460 = icmp ne i32 %t456, %t457
  br i1 %t460, label %bb74, label %bb75
bb74:
  %t462 = load i32, ptr %l20, !tbaa !23
  %t463 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t466 = icmp ne i32 %t462, %t463
  store i1 %t466, ptr %l193, !tbaa !21
  br label %bb76
bb75:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb76
bb76:
  %t468 = load i1, ptr %l193, !tbaa !21
  store i1 %t468, ptr %l21, !tbaa !21
  %t469 = load ptr, ptr %l4, !tbaa !29
  store ptr %t469, ptr %l197, !tbaa !29
  %t470 = load ptr, ptr %l4, !tbaa !29
  %t471 = load i32, ptr %l2, !tbaa !23
  %t474 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t470, i32 %t471)
  store i32 %t474, ptr %l200
  br label %bb77
bb77:
  %t475 = load ptr, ptr %l197, !tbaa !29
  %t476 = load i32, ptr %l200, !tbaa !23
  %t477 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t475, i32 %t476)
  store { i64, ptr } %t477, ptr %l201
  br label %bb78
bb78:
  %t478 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t479 = extractvalue { i64, ptr } %t478, 0
  %t481 = icmp sgt i64 %t479, 0
  store i1 %t481, ptr %l22, !tbaa !21
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l204, !tbaa !27
  %t483 = load { i64, ptr }, ptr %l204, !tbaa !27
  store { i64, ptr } %t483, ptr %l205, !tbaa !27
  %t484 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t485 = load ptr, ptr %t484, !tbaa !27
  %t486 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l206, ptr %t485, i64 %t486, i1 false)
  %t488 = insertvalue { i64, ptr } undef, i64 4, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %l206, 1
  store { i64, ptr } %t489, ptr %l23, !tbaa !27
  %t491 = load i1, ptr %l21, !tbaa !21
  br i1 %t491, label %bb79, label %bb80
bb79:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load i32, ptr %l20, !tbaa !23
  %t497 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportArrayResult(ptr %v0, ptr %t493, i32 %t494)
  store i1 %t497, ptr %l213
  br label %bb81
bb80:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb82
bb81:
  %t498 = load i1, ptr %l213, !tbaa !21
  store i1 %t498, ptr %l210, !tbaa !21
  br label %bb82
bb82:
  %t499 = load i1, ptr %l210, !tbaa !21
  br i1 %t499, label %bb83, label %bb84
bb83:
  store %olang.scope zeroinitializer, ptr %s16
  %t500 = load ptr, ptr %l4, !tbaa !29
  store ptr %t500, ptr %l214, !tbaa !29
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load i32, ptr %l20, !tbaa !23
  %t505 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2earrayOfE(ptr %v0, ptr %t501, i32 %t502)
  store i32 %t505, ptr %l217
  br label %bb85
bb84:
  %t506 = load i1, ptr %l22, !tbaa !21
  br i1 %t506, label %bb102, label %bb103
bb85:
  %t508 = load ptr, ptr %l214, !tbaa !29
  %t509 = load i32, ptr %l217, !tbaa !23
  %t510 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t508, i32 %t509)
  store i32 %t510, ptr %l218
  br label %bb86
bb86:
  %t511 = load i32, ptr %l218, !tbaa !23
  store i32 %t511, ptr %l24, !tbaa !23
  store ptr %l7, ptr %l219, !tbaa !29
  %t512 = ptrtoint ptr %s0 to i64
  store i64 %t512, ptr %l220, !tbaa !24
  %t513 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t513, label %bb87, label %bb88
bb87:
  %t515 = call ptr @__olang_region_make(ptr %s0)
  %t516 = ptrtoint ptr %t515 to i64
  store i64 %t516, ptr %l220, !tbaa !24
  br label %bb88
bb88:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t518 = load i32, ptr %l24, !tbaa !23
  %t519 = load ptr, ptr %l3, !tbaa !29
  %t523 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s16, ptr %t517, i32 %t518, ptr %t519)
  store { i64, ptr } %t523, ptr %l225
  br label %bb89
bb89:
  %t524 = load { i64, ptr }, ptr %l225, !tbaa !27
  %t525 = extractvalue { i64, ptr } %t524, 1
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t527 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t528 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t529 = add i64 %t526, %t528
  %t530 = load i64, ptr %l220
  %t531 = inttoptr i64 %t530 to ptr
  %t532 = call ptr @__olang_scope_alloc(ptr %t531, i64 %t529)
  call void @olang_textcopy(ptr %t532, ptr %t525, i64 %t526)
  %t533 = getelementptr i8, ptr %t532, i64 %t526
  call void @olang_textcopy(ptr %t533, ptr %t527, i64 %t528)
  %t534 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t532, 1
  %t537 = load i64, ptr %l220
  %t538 = inttoptr i64 %t537 to ptr
  %t539 = extractvalue { i64, ptr } %t535, 0
  %t540 = extractvalue { i64, ptr } %t535, 1
  %t541 = mul i64 %t539, 1
  %t542 = call ptr @__olang_scope_alloc(ptr %t538, i64 %t541)
  call void @llvm.memcpy.p0.p0.i64(ptr %t542, ptr %t540, i64 %t541, i1 false)
  %t543 = insertvalue { i64, ptr } undef, i64 %t539, 0
  %t544 = insertvalue { i64, ptr } %t543, ptr %t542, 1
  %t545 = load ptr, ptr %l219, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t545, { i64, ptr } %t544)
  br label %bb90
bb90:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb91
bb91:
  %t548 = load i1, ptr %l22, !tbaa !21
  br i1 %t548, label %bb92, label %bb93
bb92:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb95
bb95:
  %t551 = load i1, ptr %l22, !tbaa !21
  br i1 %t551, label %bb96, label %bb97
bb96:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l233, !tbaa !27
  %t553 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t553, ptr %l232, !tbaa !27
  br label %bb98
bb97:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l235, !tbaa !27
  %t555 = load { i64, ptr }, ptr %l235, !tbaa !27
  store { i64, ptr } %t555, ptr %l232, !tbaa !27
  br label %bb98
bb98:
  %t557 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t558 = extractvalue { i64, ptr } %t557, 0
  %t559 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t560 = extractvalue { i64, ptr } %t559, 0
  store i64 %t560, ptr %l238, !tbaa !24
  %t562 = load i64, ptr %l238, !tbaa !24
  %t563 = icmp eq i64 %t558, %t562
  br i1 %t563, label %bb99, label %bb100
bb99:
  %t565 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = load i64, ptr %l238, !tbaa !24
  %t570 = mul i64 %t569, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t566, ptr %t568, i64 %t570, i1 false)
  br label %bb101
bb100:
  %t571 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t572 = extractvalue { i64, ptr } %t571, 0
  store i64 %t572, ptr %l240, !tbaa !24
  %t573 = load i64, ptr %l240, !tbaa !24
  %t574 = mul i64 %t573, 1
  %t575 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t574)
  %t576 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t577 = insertvalue { i64, ptr } %t576, ptr %t575, 1
  store { i64, ptr } %t577, ptr %l241, !tbaa !27
  %t578 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t581 = load ptr, ptr %t580, !tbaa !27
  %t582 = load i64, ptr %l240, !tbaa !24
  %t583 = mul i64 %t582, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t579, ptr %t581, i64 %t583, i1 false)
  %t584 = load { i64, ptr }, ptr %l241, !tbaa !27
  store { i64, ptr } %t584, ptr %l23, !tbaa !27
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s16)
  br label %bb122
bb102:
  %t585 = load i1, ptr %l21, !tbaa !21
  br i1 %t585, label %bb104, label %bb105
bb103:
  %t587 = load i1, ptr %l21, !tbaa !21
  br i1 %t587, label %bb114, label %bb115
bb104:
  store %olang.scope zeroinitializer, ptr %s21
  store ptr %l7, ptr %l244, !tbaa !29
  %t589 = ptrtoint ptr %s0 to i64
  store i64 %t589, ptr %l245, !tbaa !24
  %t590 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t590, label %bb106, label %bb107
bb105:
  br label %bb110
bb106:
  %t592 = call ptr @__olang_region_make(ptr %s0)
  %t593 = ptrtoint ptr %t592 to i64
  store i64 %t593, ptr %l245, !tbaa !24
  br label %bb107
bb107:
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t595 = load i32, ptr %l20, !tbaa !23
  %t596 = load ptr, ptr %l3, !tbaa !29
  %t600 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s21, ptr %t594, i32 %t595, ptr %t596)
  store { i64, ptr } %t600, ptr %l250
  br label %bb108
bb108:
  %t601 = load { i64, ptr }, ptr %l250, !tbaa !27
  %t602 = extractvalue { i64, ptr } %t601, 1
  %t603 = extractvalue { i64, ptr } %t601, 0
  %t604 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t605 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t606 = add i64 %t603, %t605
  %t607 = load i64, ptr %l245
  %t608 = inttoptr i64 %t607 to ptr
  %t609 = call ptr @__olang_scope_alloc(ptr %t608, i64 %t606)
  call void @olang_textcopy(ptr %t609, ptr %t602, i64 %t603)
  %t610 = getelementptr i8, ptr %t609, i64 %t603
  call void @olang_textcopy(ptr %t610, ptr %t604, i64 %t605)
  %t611 = insertvalue { i64, ptr } undef, i64 %t606, 0
  %t612 = insertvalue { i64, ptr } %t611, ptr %t609, 1
  %t614 = load i64, ptr %l245
  %t615 = inttoptr i64 %t614 to ptr
  %t616 = extractvalue { i64, ptr } %t612, 0
  %t617 = extractvalue { i64, ptr } %t612, 1
  %t618 = mul i64 %t616, 1
  %t619 = call ptr @__olang_scope_alloc(ptr %t615, i64 %t618)
  call void @llvm.memcpy.p0.p0.i64(ptr %t619, ptr %t617, i64 %t618, i1 false)
  %t620 = insertvalue { i64, ptr } undef, i64 %t616, 0
  %t621 = insertvalue { i64, ptr } %t620, ptr %t619, 1
  %t622 = load ptr, ptr %l244, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t622, { i64, ptr } %t621)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s21)
  br label %bb110
bb110:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l253, !tbaa !27
  %t624 = load { i64, ptr }, ptr %l253, !tbaa !27
  store { i64, ptr } %t624, ptr %l254, !tbaa !27
  %t625 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t626 = extractvalue { i64, ptr } %t625, 0
  %t627 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t628 = extractvalue { i64, ptr } %t627, 0
  store i64 %t628, ptr %l256, !tbaa !24
  %t630 = load i64, ptr %l256, !tbaa !24
  %t631 = icmp eq i64 %t626, %t630
  br i1 %t631, label %bb111, label %bb112
bb111:
  %t633 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t634 = load ptr, ptr %t633, !tbaa !27
  %t635 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t636 = load ptr, ptr %t635, !tbaa !27
  %t637 = load i64, ptr %l256, !tbaa !24
  %t638 = mul i64 %t637, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t634, ptr %t636, i64 %t638, i1 false)
  br label %bb113
bb112:
  %t639 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t640 = extractvalue { i64, ptr } %t639, 0
  store i64 %t640, ptr %l258, !tbaa !24
  %t641 = load i64, ptr %l258, !tbaa !24
  %t642 = mul i64 %t641, 1
  %t643 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t642)
  %t644 = insertvalue { i64, ptr } undef, i64 %t641, 0
  %t645 = insertvalue { i64, ptr } %t644, ptr %t643, 1
  store { i64, ptr } %t645, ptr %l259, !tbaa !27
  %t646 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !27
  %t648 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = load i64, ptr %l258, !tbaa !24
  %t651 = mul i64 %t650, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t647, ptr %t649, i64 %t651, i1 false)
  %t652 = load { i64, ptr }, ptr %l259, !tbaa !27
  store { i64, ptr } %t652, ptr %l23, !tbaa !27
  br label %bb113
bb113:
  br label %bb121
bb114:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t654 = load i32, ptr %l20, !tbaa !23
  %t655 = load ptr, ptr %l3, !tbaa !29
  %t659 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %s0, ptr %t653, i32 %t654, ptr %t655)
  store { i64, ptr } %t659, ptr %l264
  br label %bb116
bb115:
  br label %bb120
bb116:
  %t660 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t661 = extractvalue { i64, ptr } %t660, 0
  %t662 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t662, 0
  store i64 %t663, ptr %l266, !tbaa !24
  %t665 = load i64, ptr %l266, !tbaa !24
  %t666 = icmp eq i64 %t661, %t665
  br i1 %t666, label %bb117, label %bb118
bb117:
  %t668 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t669 = load ptr, ptr %t668, !tbaa !27
  %t670 = getelementptr { i64, ptr }, ptr %l264, i32 0, i32 1
  %t671 = load ptr, ptr %t670, !tbaa !27
  %t672 = load i64, ptr %l266, !tbaa !24
  %t673 = mul i64 %t672, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t669, ptr %t671, i64 %t673, i1 false)
  br label %bb119
bb118:
  %t674 = load { i64, ptr }, ptr %l264, !tbaa !27
  store { i64, ptr } %t674, ptr %l23, !tbaa !27
  br label %bb119
bb119:
  br label %bb120
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t675 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t675, ptr %l268
  br label %bb123
bb123:
  %t676 = load %"std/prelude/text:StringBuilder", ptr %l268
  store %"std/prelude/text:StringBuilder" %t676, ptr %l25
  store ptr %l25, ptr %l269, !tbaa !29
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t678 = load i64, ptr %l1, !tbaa !24
  %t681 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignatureText(ptr %v0, ptr %s0, ptr %t677, i64 %t678)
  store { i64, ptr } %t681, ptr %l272
  br label %bb124
bb124:
  %t682 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t683 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t684 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t685 = extractvalue { i64, ptr } %t684, 1
  %t686 = extractvalue { i64, ptr } %t684, 0
  %t687 = add i64 %t683, %t686
  %t688 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t689 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t690 = add i64 %t687, %t689
  %t691 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t690)
  call void @olang_textcopy(ptr %t691, ptr %t682, i64 %t683)
  %t692 = getelementptr i8, ptr %t691, i64 %t683
  call void @olang_textcopy(ptr %t692, ptr %t685, i64 %t686)
  %t693 = getelementptr i8, ptr %t692, i64 %t686
  call void @olang_textcopy(ptr %t693, ptr %t688, i64 %t689)
  %t694 = insertvalue { i64, ptr } undef, i64 %t690, 0
  %t695 = insertvalue { i64, ptr } %t694, ptr %t691, 1
  %t697 = extractvalue { i64, ptr } %t695, 0
  %t698 = extractvalue { i64, ptr } %t695, 1
  %t699 = mul i64 %t697, 1
  %t700 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t699)
  call void @llvm.memcpy.p0.p0.i64(ptr %t700, ptr %t698, i64 %t699, i1 false)
  %t701 = insertvalue { i64, ptr } undef, i64 %t697, 0
  %t702 = insertvalue { i64, ptr } %t701, ptr %t700, 1
  %t703 = load ptr, ptr %l269, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t703, { i64, ptr } %t702)
  br label %bb125
bb125:
  %t705 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t706 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t708 = extractvalue { i64, ptr } %t705, 1
  %t709 = extractvalue { i64, ptr } %t705, 0
  %t710 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t711 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t712 = add i64 %t709, %t711
  %t714 = extractvalue { i64, ptr } %t706, 1
  %t715 = extractvalue { i64, ptr } %t706, 0
  %t716 = add i64 %t712, %t715
  %t717 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t718 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t719 = add i64 %t716, %t718
  %t720 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t719)
  call void @olang_textcopy(ptr %t720, ptr %t708, i64 %t709)
  %t721 = getelementptr i8, ptr %t720, i64 %t709
  call void @olang_textcopy(ptr %t721, ptr %t710, i64 %t711)
  %t722 = getelementptr i8, ptr %t721, i64 %t711
  call void @olang_textcopy(ptr %t722, ptr %t714, i64 %t715)
  %t723 = getelementptr i8, ptr %t722, i64 %t715
  call void @olang_textcopy(ptr %t723, ptr %t717, i64 %t718)
  %t724 = insertvalue { i64, ptr } undef, i64 %t719, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t720, 1
  %t727 = extractvalue { i64, ptr } %t725, 0
  %t728 = extractvalue { i64, ptr } %t725, 1
  %t729 = mul i64 %t727, 1
  %t730 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t729)
  call void @llvm.memcpy.p0.p0.i64(ptr %t730, ptr %t728, i64 %t729, i1 false)
  %t731 = insertvalue { i64, ptr } undef, i64 %t727, 0
  %t732 = insertvalue { i64, ptr } %t731, ptr %t730, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l25, { i64, ptr } %t732)
  br label %bb126
bb126:
  %t736 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t736, ptr %l281
  br label %bb127
bb127:
  %t737 = load i64, ptr %l281, !tbaa !24
  %t738 = icmp eq i64 %t737, 0
  br i1 %t738, label %bb128, label %bb129
bb128:
  store %olang.scope zeroinitializer, ptr %s27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l25, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d29, i32 0, i32 1) })
  br label %bb130
bb129:
  br label %bb131
bb130:
  call void @__olang_scope_close(ptr %s27)
  br label %bb131
bb131:
  store ptr %l7, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb132
bb132:
  %t742 = load i64, ptr %l27, !tbaa !24
  store i64 %t742, ptr %l285, !tbaa !24
  %t743 = load ptr, ptr %l26, !tbaa !29
  %t745 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t743)
  store i64 %t745, ptr %l287
  br label %bb133
bb133:
  %t746 = load i64, ptr %l285, !tbaa !24
  %t747 = load i64, ptr %l287, !tbaa !24
  %t748 = icmp slt i64 %t746, %t747
  %t750 = xor i1 %t748, true
  br i1 %t750, label %bb134, label %bb135
bb134:
  br label %bb144
bb135:
  br label %bb136
bb136:
  %t752 = load i64, ptr %l27, !tbaa !24
  store i64 %t752, ptr %l28, !tbaa !24
  %t754 = load ptr, ptr %l26, !tbaa !29
  %t755 = load i64, ptr %l27, !tbaa !24
  %t758 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t754, i64 %t755)
  store { i64, ptr } %t758, ptr %l293
  br label %bb137
bb137:
  %t759 = load { i64, ptr }, ptr %l293, !tbaa !27
  store { i64, ptr } %t759, ptr %l29, !tbaa !27
  %t760 = load i64, ptr %l28, !tbaa !24
  %t762 = icmp sgt i64 %t760, 0
  br i1 %t762, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s30
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s30, ptr %l25, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  br label %bb140
bb139:
  br label %bb141
bb140:
  call void @__olang_scope_close(ptr %s30)
  br label %bb141
bb141:
  %t765 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l25, { i64, ptr } %t765)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t768 = load i64, ptr %l27, !tbaa !24
  %t770 = add i64 %t768, 1
  store i64 %t770, ptr %l27, !tbaa !24
  br label %bb132
bb144:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l25, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb145
bb145:
  %t774 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l25)
  store { i64, ptr } %t774, ptr %l303
  br label %bb146
bb146:
  call void @__olang_scope_close(ptr %s0)
  %t775 = load { i64, ptr }, ptr %l303, !tbaa !27
  store { i64, ptr } %t775, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbg(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 5
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 7
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgCu(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l8 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 60
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/emit:Emitter", ptr %t8, i32 0, i32 60
  %t11 = load i64, ptr %t10, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t11, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l8, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = getelementptr %"compiler/emit:Emitter", ptr %t18, i32 0, i32 60
  store i64 %t17, ptr %t19, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l11, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/emit:Emitter", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 10
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/emit:Emitter", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 12
  %t39 = load i64, ptr %t38, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t29, i64 %t39)
  store ptr %t42, ptr %l20
  br label %bb5
bb5:
  %t43 = load ptr, ptr %l20, !tbaa !29
  %t45 = getelementptr %"compiler/load:Module", ptr %t43, i32 0, i32 4
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load ptr, ptr %l11, !tbaa !29
  %t49 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFile(ptr %v0, ptr %t47, i64 %t46)
  store i64 %t49, ptr %l23
  br label %bb6
bb6:
  %t50 = load i64, ptr %l23, !tbaa !24
  store i64 %t50, ptr %l1, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/emit:Emitter", ptr %t51, i32 0, i32 5
  %t54 = load i1, ptr %t53, !tbaa !21
  br i1 %t54, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb9
bb8:
  store { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l26, !tbaa !27
  br label %bb9
bb9:
  %t56 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/emit:Emitter", ptr %t58, i32 0, i32 60
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t64 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t65 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t68 = add i64 %t65, %t67
  %t69 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t73 = extractvalue { i64, ptr } %t56, 1
  %t74 = extractvalue { i64, ptr } %t56, 0
  %t75 = add i64 %t71, %t74
  %t76 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t78 = add i64 %t75, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t64, i64 %t65)
  %t80 = getelementptr i8, ptr %t79, i64 %t65
  %t81 = call i64 @__olang_fmt_i64(ptr %t80, i64 %t62)
  %t82 = getelementptr i8, ptr %t80, i64 %t67
  call void @olang_textcopy(ptr %t82, ptr %t69, i64 %t70)
  %t83 = getelementptr i8, ptr %t82, i64 %t70
  call void @olang_textcopy(ptr %t83, ptr %t73, i64 %t74)
  %t84 = getelementptr i8, ptr %t83, i64 %t74
  call void @olang_textcopy(ptr %t84, ptr %t76, i64 %t77)
  %t85 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t79, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } %t86, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %s0, ptr %t57, i64 %t61, { i64, ptr } %t93)
  br label %bb10
bb10:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/emit:Emitter", ptr %t97, i32 0, i32 60
  %t100 = load i64, ptr %t99, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t100, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edescTag(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t3, ptr %l5, !tbaa !27
  %t4 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = mul i64 %t6, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 %t6, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l7, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = load i64, ptr %l6, !tbaa !24
  %t16 = mul i64 %t15, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t12, ptr %t14, i64 %t16, i1 false)
  %t17 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t17, ptr %l5, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  br i1 %a1, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t21, ptr %l9, !tbaa !27
  br label %bb6
bb5:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t23, ptr %l9, !tbaa !27
  br label %bb6
bb6:
  %t25 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t25, 0
  store i64 %t26, ptr %l14, !tbaa !24
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l15, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = load i64, ptr %l14, !tbaa !24
  %t37 = mul i64 %t36, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t33, ptr %t35, i64 %t37, i1 false)
  %t38 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t38, ptr %l9, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t39, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edtorThunk(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"std/prelude/text:StringBuilder"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l35 = alloca i64
  %l41 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l70 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i64
  %l89 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %t81 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load { i64, [2 x i64] }, ptr %l1
  %t10 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s0, ptr %t6, { i64, [2 x i64] } %t7)
  store { i64, ptr } %t10, ptr %l18
  br label %bb1
bb1:
  %t11 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, [2 x i64] }, ptr %l1
  %t16 = call i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  store i32 %t16, ptr %l21
  br label %bb2
bb2:
  %t17 = load i32, ptr %l21, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t18 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t18, ptr %l22
  br label %bb3
bb3:
  %t19 = load %"std/prelude/text:StringBuilder", ptr %l22
  store %"std/prelude/text:StringBuilder" %t19, ptr %l5
  store ptr %l5, ptr %l23, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t20, ptr %l24, !tbaa !27
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t22 = load i32, ptr %l4, !tbaa !23
  %t24 = inttoptr i64 0 to ptr
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t24, ptr %t21, i32 %t22)
  store { i64, ptr } %t27, ptr %l28
  br label %bb4
bb4:
  %t28 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t29 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 1
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t28, 1
  %t47 = extractvalue { i64, ptr } %t28, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t29, i64 %t30)
  %t53 = getelementptr i8, ptr %t52, i64 %t30
  call void @olang_textcopy(ptr %t53, ptr %t32, i64 %t33)
  %t54 = getelementptr i8, ptr %t53, i64 %t33
  call void @olang_textcopy(ptr %t54, ptr %t35, i64 %t36)
  %t55 = getelementptr i8, ptr %t54, i64 %t36
  call void @olang_textcopy(ptr %t55, ptr %t39, i64 %t40)
  %t56 = getelementptr i8, ptr %t55, i64 %t40
  call void @olang_textcopy(ptr %t56, ptr %t42, i64 %t43)
  %t57 = getelementptr i8, ptr %t56, i64 %t43
  call void @olang_textcopy(ptr %t57, ptr %t46, i64 %t47)
  %t58 = getelementptr i8, ptr %t57, i64 %t47
  call void @olang_textcopy(ptr %t58, ptr %t49, i64 %t50)
  %t59 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t52, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = extractvalue { i64, ptr } %t60, 1
  %t64 = mul i64 %t62, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  call void @llvm.memcpy.p0.p0.i64(ptr %t65, ptr %t63, i64 %t64, i1 false)
  %t66 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  %t68 = load ptr, ptr %l23, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t68, { i64, ptr } %t67)
  br label %bb5
bb5:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load { i64, [2 x i64] }, ptr %l1
  %t72 = load i32, ptr %l4, !tbaa !23
  %t76 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %t70, { i64, [2 x i64] } %t71, i32 %t72)
  store i64 %t76, ptr %l35
  br label %bb6
bb6:
  %t77 = load i64, ptr %l35, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load ptr, ptr %l2, !tbaa !29
  %t79 = load { i64, [2 x i64] }, ptr %l1
  %t80 = load i32, ptr %l4, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t81
  %t82 = getelementptr { i64, [7 x i64] }, ptr %t81, i32 0, i32 0
  store i64 0, ptr %t82
  %t84 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t79, 0
  %t86 = insertvalue { { i64, [2 x i64] }, i32 } %t84, i32 %t80, 1
  %t87 = getelementptr { i64, [7 x i64] }, ptr %t81, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t86, ptr %t87
  %t88 = load { i64, [7 x i64] }, ptr %t81
  %t89 = load i32, ptr %l4, !tbaa !23
  %t93 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t78, { i64, [7 x i64] } %t88, i32 %t89)
  store i64 %t93, ptr %l41
  br label %bb7
bb7:
  %t94 = load i64, ptr %l41, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t95 = load i64, ptr %l6, !tbaa !24
  store i64 %t95, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb8, label %bb9
bb8:
  %t103 = load i64, ptr %l10, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb13
bb10:
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l8, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l49, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb12
bb12:
  %t123 = load i64, ptr %l49, !tbaa !24
  store i64 %t123, ptr %l46, !tbaa !24
  br label %bb13
bb13:
  %t124 = load i64, ptr %l46, !tbaa !24
  store i64 %t124, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb14
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t125 = load i64, ptr %l12, !tbaa !24
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb16:
  br label %bb17
bb17:
  %t133 = load i64, ptr %l8, !tbaa !24
  %t134 = load i64, ptr %l12, !tbaa !24
  %t135 = load i64, ptr %l10, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l13, !tbaa !24
  %t143 = load i64, ptr %l13, !tbaa !24
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d44, i32 0, i32 1) })
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  store ptr %l5, ptr %l70, !tbaa !29
  %t148 = load i64, ptr %l13, !tbaa !24
  %t149 = load i64, ptr %l7, !tbaa !24
  %t152 = icmp slt i64 %t148, %t149
  br i1 %t152, label %bb22, label %bb23
bb22:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l74, !tbaa !27
  br label %bb24
bb23:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l74, !tbaa !27
  br label %bb24
bb24:
  %t154 = load ptr, ptr %l70, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l74, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t154, { i64, ptr } %t155)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  %t156 = load i64, ptr %l12, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l12, !tbaa !24
  br label %bb14
bb27:
  %t160 = load i64, ptr %l6, !tbaa !24
  %t162 = icmp sgt i64 %t160, 0
  br i1 %t162, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l5, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb30
bb29:
  br label %bb31
bb30:
  call void @__olang_scope_close(ptr %s6)
  br label %bb31
bb31:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l5, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d48, i32 0, i32 1) })
  br label %bb32
bb32:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l81, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 1
  %t170 = extractvalue { i64, ptr } %t167, 0
  %t171 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t172 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t173 = add i64 %t170, %t172
  %t174 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t169, i64 %t170)
  %t175 = getelementptr i8, ptr %t174, i64 %t170
  call void @olang_textcopy(ptr %t175, ptr %t171, i64 %t172)
  %t176 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t174, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = extractvalue { i64, ptr } %t177, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  store { i64, ptr } %t184, ptr %l84, !tbaa !27
  %t185 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t185, ptr %l85, !tbaa !24
  %t186 = ptrtoint ptr %s0 to i64
  store i64 %t186, ptr %l86, !tbaa !24
  %t187 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t187, label %bb33, label %bb34
bb33:
  %t189 = call ptr @__olang_region_make(ptr %s0)
  %t190 = ptrtoint ptr %t189 to i64
  store i64 %t190, ptr %l86, !tbaa !24
  br label %bb34
bb34:
  %t191 = load i64, ptr %l86
  %t192 = inttoptr i64 %t191 to ptr
  %t194 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t192, ptr %l5)
  store { i64, ptr } %t194, ptr %l89
  br label %bb35
bb35:
  %t195 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t196 = load i64, ptr %l86
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = extractvalue { i64, ptr } %t195, 0
  %t199 = extractvalue { i64, ptr } %t195, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %t197, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t204 = load ptr, ptr %l81, !tbaa !29
  %t205 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t206 = load i64, ptr %l85, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t204, { i64, ptr } %t205, i64 %t206, { i64, ptr } %t203, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i64
  %l15 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i64
  %l31 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, [2 x i64] }, ptr %l1
  %t5 = call i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %t1, { i64, [2 x i64] } %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l7, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/emit:Emitter", ptr %t7, i32 0, i32 22
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t13 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t9, { i64, ptr } %t10)
  store i1 %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load i1, ptr %l15, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load { i64, [2 x i64] }, ptr %l1
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %t15, { i64, [2 x i64] } %t16, i32 %a2, { i64, ptr } %t18, i64 %a4, i1 %a5, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t27, ptr %l22
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t28, ptr %l8, !tbaa !27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/emit:Emitter", ptr %t29, i32 0, i32 68
  store ptr %t31, ptr %l24, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/emit:Emitter", ptr %t32, i32 0, i32 18
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l27
  br label %bb7
bb7:
  %t37 = ptrtoint ptr %v0 to i64
  store i64 %t37, ptr %l28, !tbaa !24
  %t38 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = call ptr @__olang_region_make(ptr %v0)
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t43 = load i64, ptr %l28
  %t44 = inttoptr i64 %t43 to ptr
  %t46 = call { i64, ptr } @compiler_2femit_2efnTypeOf(ptr %s0, ptr %t44, { i64, ptr } %t42)
  store { i64, ptr } %t46, ptr %l31
  br label %bb10
bb10:
  %t47 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t48 = load i64, ptr %l28
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = extractvalue { i64, ptr } %t47, 0
  %t51 = extractvalue { i64, ptr } %t47, 1
  %t52 = mul i64 %t50, 1
  %t53 = call ptr @__olang_scope_alloc(ptr %t49, i64 %t52)
  call void @llvm.memcpy.p0.p0.i64(ptr %t53, ptr %t51, i64 %t52, i1 false)
  %t54 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  %t56 = load ptr, ptr %l24, !tbaa !29
  %t57 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v0, ptr %t56, i64 %t57, { i64, ptr } %t55)
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t59, { i64, ptr } %t60, i64 %t61, { i64, ptr } %a6, { i64, ptr } %t63)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2efvAdapter(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i8
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l44 = alloca i64
  %l49 = alloca i64
  %l53 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca { i64, [2 x i64] }
  %l64 = alloca i32
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/mir:Fn"
  %l69 = alloca %"compiler/emit:fnEm"
  %l72 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca %"std/prelude/text:StringBuilder"
  %l87 = alloca i32
  %l91 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i1
  %l104 = alloca i64
  %l107 = alloca i64
  %l132 = alloca ptr
  %l134 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l142 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca { i64, ptr }
  %l152 = alloca i64
  %l155 = alloca i64
  %l188 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l209 = alloca i32
  %l212 = alloca i32
  %l214 = alloca i1
  %l215 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l221 = alloca ptr
  %l223 = alloca i1
  %l224 = alloca { i64, ptr }
  %l225 = alloca ptr
  %l226 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l229 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l236 = alloca i1
  %l240 = alloca i1
  %l243 = alloca i1
  %l247 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l251 = alloca { i64, ptr }
  %l252 = alloca [1 x i8]
  %l256 = alloca ptr
  %l259 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l272 = alloca i64
  %l275 = alloca { i64, ptr }
  %l277 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l287 = alloca i1
  %l294 = alloca { i64, ptr }
  %l307 = alloca { i64, ptr }
  %l308 = alloca ptr
  %l309 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca { i64, ptr }
  %l312 = alloca { i64, ptr }
  %l313 = alloca ptr
  %l316 = alloca i32
  %l317 = alloca { i64, ptr }
  %l321 = alloca { i64, ptr }
  %l324 = alloca ptr
  %l327 = alloca { i64, ptr }
  %l328 = alloca i64
  %l329 = alloca i64
  %l331 = alloca { i64, ptr }
  %l334 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %t7 = alloca { i64, [4 x i64] }, align 8
  %t10 = alloca { i64, [7 x i64] }, align 8
  %t23 = alloca { i64, [4 x i64] }, align 8
  %t26 = alloca { i64, [7 x i64] }, align 8
  %t47 = alloca { i64, [2 x i64] }, align 8
  %t80 = alloca { i64, [2 x i64] }, align 8
  %t87 = alloca %"compiler/mir:Fn", align 8
  %t92 = alloca { i64, [2 x i64] }, align 8
  %t97 = alloca %"compiler/emit:fnEm", align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  %t6 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t7, i32 0, i32 0
  store i64 0, ptr %t8
  %t9 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [7 x i64] } zeroinitializer, ptr %t10
  %t11 = getelementptr { i64, [7 x i64] }, ptr %t10, i32 0, i32 0
  store i64 2, ptr %t11
  %t13 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t9, 0
  %t14 = getelementptr { i64, [7 x i64] }, ptr %t10, i32 0, i32 1
  store { { i64, [4 x i64] } } %t13, ptr %t14
  %t15 = load { i64, [7 x i64] }, ptr %t10
  %t16 = load i32, ptr %l2, !tbaa !23
  %t20 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t6, { i64, [7 x i64] } %t15, i32 %t16)
  store i64 %t20, ptr %l44
  br label %bb1
bb1:
  %t21 = load i64, ptr %l44, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t23, i32 0, i32 0
  store i64 0, ptr %t24
  %t25 = load { i64, [4 x i64] }, ptr %t23
  store { i64, [7 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [7 x i64] }, ptr %t26, i32 0, i32 0
  store i64 2, ptr %t27
  %t29 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t25, 0
  %t30 = getelementptr { i64, [7 x i64] }, ptr %t26, i32 0, i32 1
  store { { i64, [4 x i64] } } %t29, ptr %t30
  %t31 = load { i64, [7 x i64] }, ptr %t26
  %t32 = load i32, ptr %l1, !tbaa !23
  %t36 = call i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %t22, { i64, [7 x i64] } %t31, i32 %t32)
  store i64 %t36, ptr %l49
  br label %bb2
bb2:
  %t37 = load i64, ptr %l49, !tbaa !24
  store i64 %t37, ptr %l5, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l1, !tbaa !23
  %t40 = load i32, ptr %l2, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %s0, ptr %t38, i32 %t39, i32 %t40)
  store { i64, ptr } %t44, ptr %l53
  br label %bb3
bb3:
  %t45 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t47
  %t48 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 0
  store i64 4, ptr %t48
  %t49 = insertvalue { i64 } undef, i64 0, 0
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t47, i32 0, i32 1
  store { i64 } %t49, ptr %t50
  %t51 = load { i64, [2 x i64] }, ptr %t47
  %t52 = load i32, ptr %l2, !tbaa !23
  %t53 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t54 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t55 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t57 = extractvalue { i64, ptr } %t53, 1
  %t58 = extractvalue { i64, ptr } %t53, 0
  %t59 = add i64 %t55, %t58
  %t60 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t59)
  call void @olang_textcopy(ptr %t60, ptr %t54, i64 %t55)
  %t61 = getelementptr i8, ptr %t60, i64 %t55
  call void @olang_textcopy(ptr %t61, ptr %t57, i64 %t58)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t60, 1
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t66 = extractvalue { i64, ptr } %t63, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  %t71 = load i64, ptr %l4, !tbaa !24
  %t77 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t46, { i64, [2 x i64] } %t51, i32 %t52, { i64, ptr } %t70, i64 %t71, i1 true, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d54, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store { i64, ptr } %t77, ptr %l61
  br label %bb4
bb4:
  %t78 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t78, ptr %l7, !tbaa !27
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l62, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 4, ptr %t81
  %t82 = insertvalue { i64 } undef, i64 0, 0
  %t83 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  store { i64 } %t82, ptr %t83
  %t84 = load { i64, [2 x i64] }, ptr %t80
  store { i64, [2 x i64] } %t84, ptr %l63
  %t85 = load i32, ptr %l2, !tbaa !23
  store i32 %t85, ptr %l64, !tbaa !23
  %t86 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t86, ptr %l65
  br label %bb5
bb5:
  %t88 = load { i64, [2 x i64] }, ptr %l63
  %t89 = load i32, ptr %l64, !tbaa !23
  %t90 = load %"compiler/source:Span", ptr %l65
  call void @compiler_2fmir_3aFn_2ector(ptr %t87, ptr %v0, { i64, [2 x i64] } %t88, i32 %t89, i64 0, %"compiler/source:Span" %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t87, i64 800, i1 false)
  br label %bb6
bb6:
  %t91 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 800, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t91, ptr %l66, i64 800, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 0
  store i64 4, ptr %t93
  %t94 = insertvalue { i64 } undef, i64 0, 0
  %t95 = getelementptr { i64, [2 x i64] }, ptr %t92, i32 0, i32 1
  store { i64 } %t94, ptr %t95
  %t96 = load { i64, [2 x i64] }, ptr %t92
  %t98 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2femit_3afnEm_2ector(ptr %t97, ptr %v0, ptr %v0, ptr %v0, ptr %t98, ptr %t91, { i64, [2 x i64] } %t96)
  call void @llvm.memmove.p0.p0.i64(ptr %l69, ptr %t97, i64 960, i1 false)
  br label %bb7
bb7:
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 960, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t101, ptr %l69, i64 960, i1 false)
  store ptr %t101, ptr %l8, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t103, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d55, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t105, ptr %l72
  br label %bb8
bb8:
  %t106 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t106, ptr %l9, !tbaa !27
  %t107 = load ptr, ptr %l8, !tbaa !29
  store ptr %t107, ptr %l73, !tbaa !29
  %t108 = load ptr, ptr %l8, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t108, { i64, ptr } { i64 50, ptr getelementptr inbounds (<{ i64, [50 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store { i64, ptr } %t110, ptr %l75
  br label %bb9
bb9:
  %t111 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load ptr, ptr %l73, !tbaa !29
  %t120 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t118, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d59, i32 0, i32 1) }, { i64, ptr } %t117, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t120, ptr %l77
  br label %bb10
bb10:
  %t121 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t121, ptr %l10, !tbaa !27
  %t122 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t122, ptr %l78
  br label %bb11
bb11:
  %t123 = load %"std/prelude/text:StringBuilder", ptr %l78
  store %"std/prelude/text:StringBuilder" %t123, ptr %l11
  %t124 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t125 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t128 = extractvalue { i64, ptr } %t124, 1
  %t129 = extractvalue { i64, ptr } %t124, 0
  %t130 = add i64 %t126, %t129
  %t131 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t130)
  call void @olang_textcopy(ptr %t131, ptr %t125, i64 %t126)
  %t132 = getelementptr i8, ptr %t131, i64 %t126
  call void @olang_textcopy(ptr %t132, ptr %t128, i64 %t129)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = extractvalue { i64, ptr } %t134, 1
  %t138 = mul i64 %t136, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t139, ptr %t137, i64 %t138, i1 false)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l11, { i64, ptr } %t141)
  br label %bb12
bb12:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %t144, i32 %t145)
  br label %bb13
bb13:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t149 = load i32, ptr %l1, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l87
  br label %bb14
bb14:
  %t153 = load i32, ptr %l87, !tbaa !23
  store i32 %t153, ptr %l12, !tbaa !23
  %t154 = load i32, ptr %l12, !tbaa !23
  %t155 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t158 = icmp ne i32 %t154, %t155
  br i1 %t158, label %bb15, label %bb16
bb15:
  %t160 = load i32, ptr %l12, !tbaa !23
  %t161 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t164 = icmp ne i32 %t160, %t161
  store i1 %t164, ptr %l91, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb17
bb17:
  %t166 = load i1, ptr %l91, !tbaa !21
  br i1 %t166, label %bb18, label %bb19
bb18:
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t168 = load i32, ptr %l12, !tbaa !23
  %t171 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t167, i32 %t168)
  store i1 %t171, ptr %l98
  br label %bb20
bb19:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb21
bb20:
  %t172 = load i1, ptr %l98, !tbaa !21
  store i1 %t172, ptr %l95, !tbaa !21
  br label %bb21
bb21:
  %t173 = load i1, ptr %l95, !tbaa !21
  br i1 %t173, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l11, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d61, i32 0, i32 1) })
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb25:
  store i64 0, ptr %l13, !tbaa !24
  %t175 = load i64, ptr %l5, !tbaa !24
  store i64 %t175, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t177 = load i64, ptr %l14, !tbaa !24
  %t178 = load i64, ptr %l13, !tbaa !24
  %t181 = icmp sgt i64 %t177, %t178
  br i1 %t181, label %bb26, label %bb27
bb26:
  %t183 = load i64, ptr %l15, !tbaa !24
  %t185 = icmp sgt i64 %t183, 0
  br i1 %t185, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb31
bb28:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = sub i64 %t187, %t188
  %t192 = load i64, ptr %l15, !tbaa !24
  %t195 = add i64 %t191, %t192
  %t197 = sub i64 %t195, 1
  %t198 = load i64, ptr %l15, !tbaa !24
  %t201 = sdiv i64 %t197, %t198
  store i64 %t201, ptr %l107, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb30
bb30:
  %t203 = load i64, ptr %l107, !tbaa !24
  store i64 %t203, ptr %l104, !tbaa !24
  br label %bb31
bb31:
  %t204 = load i64, ptr %l104, !tbaa !24
  store i64 %t204, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb32
bb32:
  %t205 = load i64, ptr %l17, !tbaa !24
  %t206 = load i64, ptr %l16, !tbaa !24
  %t209 = icmp slt i64 %t205, %t206
  %t211 = xor i1 %t209, true
  br i1 %t211, label %bb33, label %bb34
bb33:
  br label %bb43
bb34:
  br label %bb35
bb35:
  %t213 = load i64, ptr %l13, !tbaa !24
  %t214 = load i64, ptr %l17, !tbaa !24
  %t215 = load i64, ptr %l15, !tbaa !24
  %t218 = mul i64 %t214, %t215
  %t221 = add i64 %t213, %t218
  store i64 %t221, ptr %l18, !tbaa !24
  %t223 = load i64, ptr %l18, !tbaa !24
  %t224 = load i64, ptr %l4, !tbaa !24
  %t227 = icmp slt i64 %t223, %t224
  br i1 %t227, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t229 = load i64, ptr %l18, !tbaa !24
  %t230 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t233 = call i64 @__olang_fmt_i64(ptr null, i64 %t229)
  %t234 = add i64 %t231, %t233
  %t235 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t234)
  call void @olang_textcopy(ptr %t235, ptr %t230, i64 %t231)
  %t236 = getelementptr i8, ptr %t235, i64 %t231
  %t237 = call i64 @__olang_fmt_i64(ptr %t236, i64 %t229)
  %t238 = insertvalue { i64, ptr } undef, i64 %t234, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t235, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l11, { i64, ptr } %t246)
  br label %bb38
bb37:
  store %olang.scope zeroinitializer, ptr %s8
  store ptr %l11, ptr %l132, !tbaa !29
  %t249 = load ptr, ptr %l8, !tbaa !29
  %t251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %s8, ptr %t249)
  store { i64, ptr } %t251, ptr %l134
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb39:
  %t252 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t253 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t254 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = extractvalue { i64, ptr } %t254, 0
  %t257 = add i64 %t253, %t256
  %t258 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t257)
  call void @olang_textcopy(ptr %t258, ptr %t252, i64 %t253)
  %t259 = getelementptr i8, ptr %t258, i64 %t253
  call void @olang_textcopy(ptr %t259, ptr %t255, i64 %t256)
  %t260 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t261 = insertvalue { i64, ptr } %t260, ptr %t258, 1
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t264 = extractvalue { i64, ptr } %t261, 1
  %t265 = mul i64 %t263, 1
  %t266 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l132, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %t269, { i64, ptr } %t268)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s8)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t271 = load i64, ptr %l17, !tbaa !24
  %t273 = add i64 %t271, 1
  store i64 %t273, ptr %l17, !tbaa !24
  br label %bb32
bb43:
  %t275 = load ptr, ptr %l3, !tbaa !29
  store ptr %t275, ptr %l139, !tbaa !29
  %t276 = load ptr, ptr %l3, !tbaa !29
  %t277 = load i32, ptr %l2, !tbaa !23
  %t280 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t276, i32 %t277)
  store i32 %t280, ptr %l142
  br label %bb44
bb44:
  %t281 = load ptr, ptr %l139, !tbaa !29
  %t282 = load i32, ptr %l142, !tbaa !23
  %t283 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t281, i32 %t282)
  store { i64, ptr } %t283, ptr %l143
  br label %bb45
bb45:
  %t284 = load { i64, ptr }, ptr %l143, !tbaa !27
  store { i64, ptr } %t284, ptr %l19, !tbaa !27
  %t285 = load ptr, ptr %l3, !tbaa !29
  %t286 = load i32, ptr %l2, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %s0, ptr %t285, i32 %t286)
  store { i64, ptr } %t289, ptr %l146
  br label %bb46
bb46:
  %t290 = load { i64, ptr }, ptr %l146, !tbaa !27
  store { i64, ptr } %t290, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t291 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t293 = extractvalue { i64, ptr } %t291, 0
  store i64 %t293, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t295 = load i64, ptr %l22, !tbaa !24
  %t296 = load i64, ptr %l21, !tbaa !24
  %t299 = icmp sgt i64 %t295, %t296
  br i1 %t299, label %bb47, label %bb48
bb47:
  %t301 = load i64, ptr %l23, !tbaa !24
  %t303 = icmp sgt i64 %t301, 0
  br i1 %t303, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb52
bb49:
  %t305 = load i64, ptr %l22, !tbaa !24
  %t306 = load i64, ptr %l21, !tbaa !24
  %t309 = sub i64 %t305, %t306
  %t310 = load i64, ptr %l23, !tbaa !24
  %t313 = add i64 %t309, %t310
  %t315 = sub i64 %t313, 1
  %t316 = load i64, ptr %l23, !tbaa !24
  %t319 = sdiv i64 %t315, %t316
  store i64 %t319, ptr %l155, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb51
bb51:
  %t321 = load i64, ptr %l155, !tbaa !24
  store i64 %t321, ptr %l152, !tbaa !24
  br label %bb52
bb52:
  %t322 = load i64, ptr %l152, !tbaa !24
  store i64 %t322, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb53
bb53:
  %t323 = load i64, ptr %l25, !tbaa !24
  %t324 = load i64, ptr %l24, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  %t329 = xor i1 %t327, true
  br i1 %t329, label %bb54, label %bb55
bb54:
  br label %bb75
bb55:
  br label %bb56
bb56:
  %t331 = load i64, ptr %l21, !tbaa !24
  %t332 = load i64, ptr %l25, !tbaa !24
  %t333 = load i64, ptr %l23, !tbaa !24
  %t336 = mul i64 %t332, %t333
  %t339 = add i64 %t331, %t336
  store i64 %t339, ptr %l26, !tbaa !24
  %t341 = load i64, ptr %l26, !tbaa !24
  %t343 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr i8, ptr %t344, i64 %t341
  %t346 = load i8, ptr %t345, !tbaa !32
  store i8 %t346, ptr %l27, !tbaa !22
  %t348 = load i8, ptr %l27, !tbaa !22
  %t350 = icmp eq i8 %t348, 109
  br i1 %t350, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb61
bb59:
  store %olang.scope zeroinitializer, ptr %s13
  %t352 = load i64, ptr %l26, !tbaa !24
  %t353 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t356 = call i64 @__olang_fmt_i64(ptr null, i64 %t352)
  %t357 = add i64 %t354, %t356
  %t358 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t357)
  call void @olang_textcopy(ptr %t358, ptr %t353, i64 %t354)
  %t359 = getelementptr i8, ptr %t358, i64 %t354
  %t360 = call i64 @__olang_fmt_i64(ptr %t359, i64 %t352)
  %t361 = insertvalue { i64, ptr } undef, i64 %t357, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t358, 1
  %t364 = extractvalue { i64, ptr } %t362, 0
  %t365 = extractvalue { i64, ptr } %t362, 1
  %t366 = mul i64 %t364, 1
  %t367 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t366)
  call void @llvm.memcpy.p0.p0.i64(ptr %t367, ptr %t365, i64 %t366, i1 false)
  %t368 = insertvalue { i64, ptr } undef, i64 %t364, 0
  %t369 = insertvalue { i64, ptr } %t368, ptr %t367, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l11, { i64, ptr } %t369)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s13)
  br label %bb73
bb61:
  %t372 = load i8, ptr %l27, !tbaa !22
  %t374 = icmp eq i8 %t372, 115
  br i1 %t374, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb66
bb64:
  store %olang.scope zeroinitializer, ptr %s15
  %t376 = load i64, ptr %l26, !tbaa !24
  %t377 = load i64, ptr %l26, !tbaa !24
  %t378 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t379 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t381 = call i64 @__olang_fmt_i64(ptr null, i64 %t376)
  %t382 = add i64 %t379, %t381
  %t383 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t385 = add i64 %t382, %t384
  %t387 = call i64 @__olang_fmt_i64(ptr null, i64 %t377)
  %t388 = add i64 %t385, %t387
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t392 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t391)
  call void @olang_textcopy(ptr %t392, ptr %t378, i64 %t379)
  %t393 = getelementptr i8, ptr %t392, i64 %t379
  %t394 = call i64 @__olang_fmt_i64(ptr %t393, i64 %t376)
  %t395 = getelementptr i8, ptr %t393, i64 %t381
  call void @olang_textcopy(ptr %t395, ptr %t383, i64 %t384)
  %t396 = getelementptr i8, ptr %t395, i64 %t384
  %t397 = call i64 @__olang_fmt_i64(ptr %t396, i64 %t377)
  %t398 = getelementptr i8, ptr %t396, i64 %t387
  call void @olang_textcopy(ptr %t398, ptr %t389, i64 %t390)
  %t399 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t392, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = extractvalue { i64, ptr } %t400, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l11, { i64, ptr } %t407)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s15)
  br label %bb73
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb72
bb69:
  store %olang.scope zeroinitializer, ptr %s17
  store ptr %l11, ptr %l188, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t411, ptr %l190, !tbaa !27
  %t412 = load i64, ptr %l26, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l190, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i32, ptr %t415, i64 %t412
  %t417 = load i32, ptr %t416, !tbaa !33
  %t420 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s17, ptr %t410, i32 %t417)
  store { i64, ptr } %t420, ptr %l193
  br label %bb70
bb70:
  %t421 = load i64, ptr %l26, !tbaa !24
  %t422 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  %t424 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t429 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t430 = add i64 %t427, %t429
  %t432 = call i64 @__olang_fmt_i64(ptr null, i64 %t421)
  %t433 = add i64 %t430, %t432
  %t434 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t433)
  call void @olang_textcopy(ptr %t434, ptr %t422, i64 %t423)
  %t435 = getelementptr i8, ptr %t434, i64 %t423
  call void @olang_textcopy(ptr %t435, ptr %t425, i64 %t426)
  %t436 = getelementptr i8, ptr %t435, i64 %t426
  call void @olang_textcopy(ptr %t436, ptr %t428, i64 %t429)
  %t437 = getelementptr i8, ptr %t436, i64 %t429
  %t438 = call i64 @__olang_fmt_i64(ptr %t437, i64 %t421)
  %t439 = insertvalue { i64, ptr } undef, i64 %t433, 0
  %t440 = insertvalue { i64, ptr } %t439, ptr %t434, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = extractvalue { i64, ptr } %t440, 1
  %t444 = mul i64 %t442, 1
  %t445 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t444)
  call void @llvm.memcpy.p0.p0.i64(ptr %t445, ptr %t443, i64 %t444, i1 false)
  %t446 = insertvalue { i64, ptr } undef, i64 %t442, 0
  %t447 = insertvalue { i64, ptr } %t446, ptr %t445, 1
  %t448 = load ptr, ptr %l188, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %t448, { i64, ptr } %t447)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s17)
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_e3ad71d8c7542caf_f4839b67a89e1c73)
  unreachable
bb73:
  br label %bb74
bb74:
  %t450 = load i64, ptr %l25, !tbaa !24
  %t452 = add i64 %t450, 1
  store i64 %t452, ptr %l25, !tbaa !24
  br label %bb53
bb75:
  %t454 = load ptr, ptr %l3, !tbaa !29
  %t455 = load i32, ptr %l1, !tbaa !23
  %t457 = inttoptr i64 0 to ptr
  %t460 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t457, ptr %t454, i32 %t455)
  store { i64, ptr } %t460, ptr %l202
  br label %bb76
bb76:
  %t461 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t461, ptr %l28, !tbaa !27
  %t462 = load ptr, ptr %l3, !tbaa !29
  %t463 = load i32, ptr %l2, !tbaa !23
  %t465 = inttoptr i64 0 to ptr
  %t468 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t465, ptr %t462, i32 %t463)
  store { i64, ptr } %t468, ptr %l206
  br label %bb77
bb77:
  %t469 = load { i64, ptr }, ptr %l206, !tbaa !27
  store { i64, ptr } %t469, ptr %l29, !tbaa !27
  %t470 = load ptr, ptr %l3, !tbaa !29
  %t471 = load i32, ptr %l1, !tbaa !23
  %t474 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t470, i32 %t471)
  store i32 %t474, ptr %l209
  br label %bb78
bb78:
  %t475 = load i32, ptr %l209, !tbaa !23
  store i32 %t475, ptr %l30, !tbaa !23
  %t476 = load ptr, ptr %l3, !tbaa !29
  %t477 = load i32, ptr %l2, !tbaa !23
  %t480 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t476, i32 %t477)
  store i32 %t480, ptr %l212
  br label %bb79
bb79:
  %t481 = load i32, ptr %l212, !tbaa !23
  store i32 %t481, ptr %l31, !tbaa !23
  %t482 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t484 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t482, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store i1 %t484, ptr %l214
  br label %bb80
bb80:
  %t485 = load i1, ptr %l214, !tbaa !21
  br i1 %t485, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s20
  %t486 = load ptr, ptr %l8, !tbaa !29
  store ptr %t486, ptr %l215, !tbaa !29
  %t487 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t487, ptr %l216, !tbaa !27
  %t489 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s20, ptr %l11)
  store { i64, ptr } %t489, ptr %l218
  br label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s22
  %t490 = load ptr, ptr %l8, !tbaa !29
  store ptr %t490, ptr %l225, !tbaa !29
  %t491 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t491, ptr %l226, !tbaa !27
  %t492 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t492, ptr %l227, !tbaa !27
  %t494 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s22, ptr %l11)
  store { i64, ptr } %t494, ptr %l229
  br label %bb90
bb83:
  %t495 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t496 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t497 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t498 = extractvalue { i64, ptr } %t497, 1
  %t499 = extractvalue { i64, ptr } %t497, 0
  %t500 = add i64 %t496, %t499
  %t501 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t502 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t503 = add i64 %t500, %t502
  %t504 = load { i64, ptr }, ptr %l218, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t504, 1
  %t506 = extractvalue { i64, ptr } %t504, 0
  %t507 = add i64 %t503, %t506
  %t508 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t510 = add i64 %t507, %t509
  %t511 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t510)
  call void @olang_textcopy(ptr %t511, ptr %t495, i64 %t496)
  %t512 = getelementptr i8, ptr %t511, i64 %t496
  call void @olang_textcopy(ptr %t512, ptr %t498, i64 %t499)
  %t513 = getelementptr i8, ptr %t512, i64 %t499
  call void @olang_textcopy(ptr %t513, ptr %t501, i64 %t502)
  %t514 = getelementptr i8, ptr %t513, i64 %t502
  call void @olang_textcopy(ptr %t514, ptr %t505, i64 %t506)
  %t515 = getelementptr i8, ptr %t514, i64 %t506
  call void @olang_textcopy(ptr %t515, ptr %t508, i64 %t509)
  %t516 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t517 = insertvalue { i64, ptr } %t516, ptr %t511, 1
  %t519 = extractvalue { i64, ptr } %t517, 0
  %t520 = extractvalue { i64, ptr } %t517, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t525 = load ptr, ptr %l215, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s20, ptr %t525, { i64, ptr } %t524)
  br label %bb84
bb84:
  %t527 = load ptr, ptr %l8, !tbaa !29
  store ptr %t527, ptr %l221, !tbaa !29
  %t528 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t530 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s20, { i64, ptr } %t528, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) })
  store i1 %t530, ptr %l223
  br label %bb85
bb85:
  %t531 = load i1, ptr %l223, !tbaa !21
  br i1 %t531, label %bb86, label %bb87
bb86:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l224, !tbaa !27
  br label %bb88
bb87:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l224, !tbaa !27
  br label %bb88
bb88:
  %t532 = load ptr, ptr %l221, !tbaa !29
  %t533 = load { i64, ptr }, ptr %l224, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s20, ptr %t532, { i64, ptr } %t533)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s20)
  br label %bb133
bb90:
  %t534 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t535 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t536 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = extractvalue { i64, ptr } %t536, 0
  %t539 = add i64 %t535, %t538
  %t540 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t541 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t542 = add i64 %t539, %t541
  %t543 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t543, 1
  %t545 = extractvalue { i64, ptr } %t543, 0
  %t546 = add i64 %t542, %t545
  %t547 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t548 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t549 = add i64 %t546, %t548
  %t550 = load { i64, ptr }, ptr %l229, !tbaa !27
  %t551 = extractvalue { i64, ptr } %t550, 1
  %t552 = extractvalue { i64, ptr } %t550, 0
  %t553 = add i64 %t549, %t552
  %t554 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t555 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t556 = add i64 %t553, %t555
  %t557 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t556)
  call void @olang_textcopy(ptr %t557, ptr %t534, i64 %t535)
  %t558 = getelementptr i8, ptr %t557, i64 %t535
  call void @olang_textcopy(ptr %t558, ptr %t537, i64 %t538)
  %t559 = getelementptr i8, ptr %t558, i64 %t538
  call void @olang_textcopy(ptr %t559, ptr %t540, i64 %t541)
  %t560 = getelementptr i8, ptr %t559, i64 %t541
  call void @olang_textcopy(ptr %t560, ptr %t544, i64 %t545)
  %t561 = getelementptr i8, ptr %t560, i64 %t545
  call void @olang_textcopy(ptr %t561, ptr %t547, i64 %t548)
  %t562 = getelementptr i8, ptr %t561, i64 %t548
  call void @olang_textcopy(ptr %t562, ptr %t551, i64 %t552)
  %t563 = getelementptr i8, ptr %t562, i64 %t552
  call void @olang_textcopy(ptr %t563, ptr %t554, i64 %t555)
  %t564 = insertvalue { i64, ptr } undef, i64 %t556, 0
  %t565 = insertvalue { i64, ptr } %t564, ptr %t557, 1
  %t567 = extractvalue { i64, ptr } %t565, 0
  %t568 = extractvalue { i64, ptr } %t565, 1
  %t569 = mul i64 %t567, 1
  %t570 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t569)
  call void @llvm.memcpy.p0.p0.i64(ptr %t570, ptr %t568, i64 %t569, i1 false)
  %t571 = insertvalue { i64, ptr } undef, i64 %t567, 0
  %t572 = insertvalue { i64, ptr } %t571, ptr %t570, 1
  %t573 = load ptr, ptr %l225, !tbaa !29
  %t575 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s22, ptr %s22, ptr %t573, { i64, ptr } %t572)
  store { i64, ptr } %t575, ptr %l232
  br label %bb91
bb91:
  %t576 = load { i64, ptr }, ptr %l232, !tbaa !27
  store { i64, ptr } %t576, ptr %l32, !tbaa !27
  %t577 = load i32, ptr %l12, !tbaa !23
  %t578 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t581 = icmp ne i32 %t577, %t578
  br i1 %t581, label %bb92, label %bb93
bb92:
  %t583 = load i32, ptr %l12, !tbaa !23
  %t584 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t587 = icmp ne i32 %t583, %t584
  store i1 %t587, ptr %l236, !tbaa !21
  br label %bb94
bb93:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb94
bb94:
  %t589 = load i1, ptr %l236, !tbaa !21
  br i1 %t589, label %bb95, label %bb96
bb95:
  %t590 = load ptr, ptr %l3, !tbaa !29
  %t591 = load i32, ptr %l12, !tbaa !23
  %t594 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t590, i32 %t591)
  store i1 %t594, ptr %l243
  br label %bb97
bb96:
  store i1 false, ptr %l240, !tbaa !21
  br label %bb98
bb97:
  %t595 = load i1, ptr %l243, !tbaa !21
  %t596 = xor i1 %t595, true
  store i1 %t596, ptr %l240, !tbaa !21
  br label %bb98
bb98:
  %t598 = load i1, ptr %l240, !tbaa !21
  store i1 %t598, ptr %l33, !tbaa !21
  %t599 = load ptr, ptr %l3, !tbaa !29
  %t600 = load i32, ptr %l30, !tbaa !23
  %t603 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s22, ptr %t599, i32 %t600)
  store { i64, ptr } %t603, ptr %l247
  br label %bb99
bb99:
  %t604 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t605 = extractvalue { i64, ptr } %t604, 0
  %t607 = icmp sgt i64 %t605, 0
  store i1 %t607, ptr %l34, !tbaa !21
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d81, i32 0, i32 1) }, ptr %l250, !tbaa !27
  %t609 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t609, ptr %l251, !tbaa !27
  %t610 = getelementptr { i64, ptr }, ptr %l251, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !27
  %t612 = mul i64 1, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l252, ptr %t611, i64 %t612, i1 false)
  %t614 = insertvalue { i64, ptr } undef, i64 1, 0
  %t615 = insertvalue { i64, ptr } %t614, ptr %l252, 1
  store { i64, ptr } %t615, ptr %l35, !tbaa !27
  %t617 = load i1, ptr %l34, !tbaa !21
  br i1 %t617, label %bb100, label %bb101
bb100:
  %t619 = load ptr, ptr %l8, !tbaa !29
  store ptr %t619, ptr %l256, !tbaa !29
  %t620 = load i1, ptr %l33, !tbaa !21
  %t622 = xor i1 %t620, true
  br i1 %t622, label %bb102, label %bb103
bb101:
  br label %bb110
bb102:
  %t624 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t624, ptr %l259, !tbaa !27
  br label %bb105
bb103:
  %t626 = load ptr, ptr %l8, !tbaa !29
  %t627 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t628 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t629 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t630 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t632 = extractvalue { i64, ptr } %t627, 1
  %t633 = extractvalue { i64, ptr } %t627, 0
  %t634 = add i64 %t630, %t633
  %t635 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t636 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t637 = add i64 %t634, %t636
  %t639 = extractvalue { i64, ptr } %t628, 1
  %t640 = extractvalue { i64, ptr } %t628, 0
  %t641 = add i64 %t637, %t640
  %t642 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t643 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t644 = add i64 %t641, %t643
  %t645 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t644)
  call void @olang_textcopy(ptr %t645, ptr %t629, i64 %t630)
  %t646 = getelementptr i8, ptr %t645, i64 %t630
  call void @olang_textcopy(ptr %t646, ptr %t632, i64 %t633)
  %t647 = getelementptr i8, ptr %t646, i64 %t633
  call void @olang_textcopy(ptr %t647, ptr %t635, i64 %t636)
  %t648 = getelementptr i8, ptr %t647, i64 %t636
  call void @olang_textcopy(ptr %t648, ptr %t639, i64 %t640)
  %t649 = getelementptr i8, ptr %t648, i64 %t640
  call void @olang_textcopy(ptr %t649, ptr %t642, i64 %t643)
  %t650 = insertvalue { i64, ptr } undef, i64 %t644, 0
  %t651 = insertvalue { i64, ptr } %t650, ptr %t645, 1
  %t653 = extractvalue { i64, ptr } %t651, 0
  %t654 = extractvalue { i64, ptr } %t651, 1
  %t655 = mul i64 %t653, 1
  %t656 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t655)
  call void @llvm.memcpy.p0.p0.i64(ptr %t656, ptr %t654, i64 %t655, i1 false)
  %t657 = insertvalue { i64, ptr } undef, i64 %t653, 0
  %t658 = insertvalue { i64, ptr } %t657, ptr %t656, 1
  %t661 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s22, ptr %s22, ptr %t626, { i64, ptr } %t658)
  store { i64, ptr } %t661, ptr %l266
  br label %bb104
bb104:
  %t662 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t662, 0
  %t664 = extractvalue { i64, ptr } %t662, 1
  %t665 = mul i64 %t663, 1
  %t666 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t665)
  call void @llvm.memcpy.p0.p0.i64(ptr %t666, ptr %t664, i64 %t665, i1 false)
  %t667 = insertvalue { i64, ptr } undef, i64 %t663, 0
  %t668 = insertvalue { i64, ptr } %t667, ptr %t666, 1
  store { i64, ptr } %t668, ptr %l259, !tbaa !27
  br label %bb105
bb105:
  %t670 = load i32, ptr %l30, !tbaa !23
  %t671 = load i32, ptr %l31, !tbaa !23
  %t672 = load ptr, ptr %l256, !tbaa !29
  %t673 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t676 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %s22, ptr %s22, ptr %t672, { i64, ptr } %t673, i32 %t670, i32 %t671)
  store { i64, ptr } %t676, ptr %l270
  br label %bb106
bb106:
  %t677 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t677, 0
  %t679 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t680 = extractvalue { i64, ptr } %t679, 0
  store i64 %t680, ptr %l272, !tbaa !24
  %t682 = load i64, ptr %l272, !tbaa !24
  %t683 = icmp eq i64 %t678, %t682
  br i1 %t683, label %bb107, label %bb108
bb107:
  %t685 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t686 = load ptr, ptr %t685, !tbaa !27
  %t687 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t688 = load ptr, ptr %t687, !tbaa !27
  %t689 = load i64, ptr %l272, !tbaa !24
  %t690 = mul i64 %t689, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t686, ptr %t688, i64 %t690, i1 false)
  br label %bb109
bb108:
  %t691 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t691, ptr %l35, !tbaa !27
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t692 = load i1, ptr %l33, !tbaa !21
  br i1 %t692, label %bb111, label %bb112
bb111:
  %t694 = load i1, ptr %l34, !tbaa !21
  br i1 %t694, label %bb113, label %bb114
bb112:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d85, i32 0, i32 1) }, ptr %l275, !tbaa !27
  br label %bb117
bb113:
  %t696 = load ptr, ptr %l8, !tbaa !29
  %t697 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t698 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t699 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t700 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t702 = extractvalue { i64, ptr } %t697, 1
  %t703 = extractvalue { i64, ptr } %t697, 0
  %t704 = add i64 %t700, %t703
  %t705 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t706 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t707 = add i64 %t704, %t706
  %t709 = extractvalue { i64, ptr } %t698, 1
  %t710 = extractvalue { i64, ptr } %t698, 0
  %t711 = add i64 %t707, %t710
  %t712 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t699, i64 %t700)
  %t716 = getelementptr i8, ptr %t715, i64 %t700
  call void @olang_textcopy(ptr %t716, ptr %t702, i64 %t703)
  %t717 = getelementptr i8, ptr %t716, i64 %t703
  call void @olang_textcopy(ptr %t717, ptr %t705, i64 %t706)
  %t718 = getelementptr i8, ptr %t717, i64 %t706
  call void @olang_textcopy(ptr %t718, ptr %t709, i64 %t710)
  %t719 = getelementptr i8, ptr %t718, i64 %t710
  call void @olang_textcopy(ptr %t719, ptr %t712, i64 %t713)
  %t720 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t721 = insertvalue { i64, ptr } %t720, ptr %t715, 1
  %t723 = extractvalue { i64, ptr } %t721, 0
  %t724 = extractvalue { i64, ptr } %t721, 1
  %t725 = mul i64 %t723, 1
  %t726 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t725)
  call void @llvm.memcpy.p0.p0.i64(ptr %t726, ptr %t724, i64 %t725, i1 false)
  %t727 = insertvalue { i64, ptr } undef, i64 %t723, 0
  %t728 = insertvalue { i64, ptr } %t727, ptr %t726, 1
  %t731 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s22, ptr %s22, ptr %t696, { i64, ptr } %t728)
  store { i64, ptr } %t731, ptr %l283
  br label %bb115
bb114:
  %t732 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t732, ptr %l277, !tbaa !27
  br label %bb116
bb115:
  %t734 = load { i64, ptr }, ptr %l283, !tbaa !27
  store { i64, ptr } %t734, ptr %l277, !tbaa !27
  br label %bb116
bb116:
  %t735 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t736 = extractvalue { i64, ptr } %t735, 0
  %t737 = extractvalue { i64, ptr } %t735, 1
  %t738 = mul i64 %t736, 1
  %t739 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t738)
  call void @llvm.memcpy.p0.p0.i64(ptr %t739, ptr %t737, i64 %t738, i1 false)
  %t740 = insertvalue { i64, ptr } undef, i64 %t736, 0
  %t741 = insertvalue { i64, ptr } %t740, ptr %t739, 1
  store { i64, ptr } %t741, ptr %l275, !tbaa !27
  br label %bb117
bb117:
  %t743 = load { i64, ptr }, ptr %l275, !tbaa !27
  store { i64, ptr } %t743, ptr %l36, !tbaa !27
  %t744 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t746 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s22, { i64, ptr } %t744, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t746, ptr %l287
  br label %bb118
bb118:
  %t747 = load i1, ptr %l287, !tbaa !21
  br i1 %t747, label %bb119, label %bb120
bb119:
  store %olang.scope zeroinitializer, ptr %s27
  %t748 = load ptr, ptr %l8, !tbaa !29
  %t749 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t750 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t751 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t753 = extractvalue { i64, ptr } %t749, 1
  %t754 = extractvalue { i64, ptr } %t749, 0
  %t755 = add i64 %t751, %t754
  %t756 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t755)
  call void @olang_textcopy(ptr %t756, ptr %t750, i64 %t751)
  %t757 = getelementptr i8, ptr %t756, i64 %t751
  call void @olang_textcopy(ptr %t757, ptr %t753, i64 %t754)
  %t758 = insertvalue { i64, ptr } undef, i64 %t755, 0
  %t759 = insertvalue { i64, ptr } %t758, ptr %t756, 1
  %t761 = extractvalue { i64, ptr } %t759, 0
  %t762 = extractvalue { i64, ptr } %t759, 1
  %t763 = mul i64 %t761, 1
  %t764 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t763)
  call void @llvm.memcpy.p0.p0.i64(ptr %t764, ptr %t762, i64 %t763, i1 false)
  %t765 = insertvalue { i64, ptr } undef, i64 %t761, 0
  %t766 = insertvalue { i64, ptr } %t765, ptr %t764, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s27, ptr %t748, { i64, ptr } %t766)
  br label %bb121
bb120:
  store %olang.scope zeroinitializer, ptr %s29
  %t769 = load ptr, ptr %l3, !tbaa !29
  %t770 = load i32, ptr %l31, !tbaa !23
  %t773 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s29, ptr %t769, i32 %t770)
  store { i64, ptr } %t773, ptr %l294
  br label %bb122
bb121:
  call void @__olang_scope_close(ptr %s27)
  br label %bb132
bb122:
  %t774 = load { i64, ptr }, ptr %l294, !tbaa !27
  %t775 = extractvalue { i64, ptr } %t774, 0
  %t777 = icmp eq i64 %t775, 0
  br i1 %t777, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s30
  %t779 = load ptr, ptr %l8, !tbaa !29
  %t780 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t781 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t782 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t783 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t785 = extractvalue { i64, ptr } %t780, 1
  %t786 = extractvalue { i64, ptr } %t780, 0
  %t787 = add i64 %t783, %t786
  %t788 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t789 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t790 = add i64 %t787, %t789
  %t792 = extractvalue { i64, ptr } %t781, 1
  %t793 = extractvalue { i64, ptr } %t781, 0
  %t794 = add i64 %t790, %t793
  %t795 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t794)
  call void @olang_textcopy(ptr %t795, ptr %t782, i64 %t783)
  %t796 = getelementptr i8, ptr %t795, i64 %t783
  call void @olang_textcopy(ptr %t796, ptr %t785, i64 %t786)
  %t797 = getelementptr i8, ptr %t796, i64 %t786
  call void @olang_textcopy(ptr %t797, ptr %t788, i64 %t789)
  %t798 = getelementptr i8, ptr %t797, i64 %t789
  call void @olang_textcopy(ptr %t798, ptr %t792, i64 %t793)
  %t799 = insertvalue { i64, ptr } undef, i64 %t794, 0
  %t800 = insertvalue { i64, ptr } %t799, ptr %t795, 1
  %t802 = extractvalue { i64, ptr } %t800, 0
  %t803 = extractvalue { i64, ptr } %t800, 1
  %t804 = mul i64 %t802, 1
  %t805 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t804)
  call void @llvm.memcpy.p0.p0.i64(ptr %t805, ptr %t803, i64 %t804, i1 false)
  %t806 = insertvalue { i64, ptr } undef, i64 %t802, 0
  %t807 = insertvalue { i64, ptr } %t806, ptr %t805, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s30, ptr %t779, { i64, ptr } %t807)
  br label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s32
  %t810 = load ptr, ptr %l8, !tbaa !29
  %t811 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t812 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t813 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t814 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t816 = extractvalue { i64, ptr } %t811, 1
  %t817 = extractvalue { i64, ptr } %t811, 0
  %t818 = add i64 %t814, %t817
  %t819 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t820 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t821 = add i64 %t818, %t820
  %t823 = extractvalue { i64, ptr } %t812, 1
  %t824 = extractvalue { i64, ptr } %t812, 0
  %t825 = add i64 %t821, %t824
  %t826 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t827 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t828 = add i64 %t825, %t827
  %t829 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t828)
  call void @olang_textcopy(ptr %t829, ptr %t813, i64 %t814)
  %t830 = getelementptr i8, ptr %t829, i64 %t814
  call void @olang_textcopy(ptr %t830, ptr %t816, i64 %t817)
  %t831 = getelementptr i8, ptr %t830, i64 %t817
  call void @olang_textcopy(ptr %t831, ptr %t819, i64 %t820)
  %t832 = getelementptr i8, ptr %t831, i64 %t820
  call void @olang_textcopy(ptr %t832, ptr %t823, i64 %t824)
  %t833 = getelementptr i8, ptr %t832, i64 %t824
  call void @olang_textcopy(ptr %t833, ptr %t826, i64 %t827)
  %t834 = insertvalue { i64, ptr } undef, i64 %t828, 0
  %t835 = insertvalue { i64, ptr } %t834, ptr %t829, 1
  %t837 = extractvalue { i64, ptr } %t835, 0
  %t838 = extractvalue { i64, ptr } %t835, 1
  %t839 = mul i64 %t837, 1
  %t840 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t839)
  call void @llvm.memcpy.p0.p0.i64(ptr %t840, ptr %t838, i64 %t839, i1 false)
  %t841 = insertvalue { i64, ptr } undef, i64 %t837, 0
  %t842 = insertvalue { i64, ptr } %t841, ptr %t840, 1
  %t845 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s32, ptr %s32, ptr %t810, { i64, ptr } %t842)
  store { i64, ptr } %t845, ptr %l307
  br label %bb126
bb125:
  call void @__olang_scope_close(ptr %s30)
  br label %bb131
bb126:
  %t846 = load { i64, ptr }, ptr %l307, !tbaa !27
  %t847 = load ptr, ptr %l8, !tbaa !29
  store ptr %t847, ptr %l308, !tbaa !29
  %t848 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t848, ptr %l309, !tbaa !27
  %t849 = load ptr, ptr %l8, !tbaa !29
  store ptr %t849, ptr %l310, !tbaa !29
  %t850 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t850, ptr %l311, !tbaa !27
  store { i64, ptr } %t846, ptr %l312, !tbaa !27
  %t852 = load ptr, ptr %l0, !tbaa !29
  store ptr %t852, ptr %l313, !tbaa !29
  %t853 = load ptr, ptr %l3, !tbaa !29
  %t854 = load i32, ptr %l2, !tbaa !23
  %t857 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t853, i32 %t854)
  store i32 %t857, ptr %l316
  br label %bb127
bb127:
  %t858 = load ptr, ptr %l313, !tbaa !29
  %t859 = load i32, ptr %l316, !tbaa !23
  %t860 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %s32, ptr %t858, i32 %t859)
  store { i64, ptr } %t860, ptr %l317
  br label %bb128
bb128:
  %t861 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t862 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t863 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  %t864 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t865 = extractvalue { i64, ptr } %t864, 1
  %t866 = extractvalue { i64, ptr } %t864, 0
  %t867 = add i64 %t863, %t866
  %t868 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t869 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t870 = add i64 %t867, %t869
  %t871 = load { i64, ptr }, ptr %l312, !tbaa !27
  %t872 = extractvalue { i64, ptr } %t871, 1
  %t873 = extractvalue { i64, ptr } %t871, 0
  %t874 = add i64 %t870, %t873
  %t875 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t876 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t877 = add i64 %t874, %t876
  %t878 = load { i64, ptr }, ptr %l317, !tbaa !27
  %t879 = extractvalue { i64, ptr } %t878, 1
  %t880 = extractvalue { i64, ptr } %t878, 0
  %t881 = add i64 %t877, %t880
  %t882 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t883 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t884 = add i64 %t881, %t883
  %t886 = extractvalue { i64, ptr } %t861, 1
  %t887 = extractvalue { i64, ptr } %t861, 0
  %t888 = add i64 %t884, %t887
  %t889 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t890 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t891 = add i64 %t888, %t890
  %t892 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t891)
  call void @olang_textcopy(ptr %t892, ptr %t862, i64 %t863)
  %t893 = getelementptr i8, ptr %t892, i64 %t863
  call void @olang_textcopy(ptr %t893, ptr %t865, i64 %t866)
  %t894 = getelementptr i8, ptr %t893, i64 %t866
  call void @olang_textcopy(ptr %t894, ptr %t868, i64 %t869)
  %t895 = getelementptr i8, ptr %t894, i64 %t869
  call void @olang_textcopy(ptr %t895, ptr %t872, i64 %t873)
  %t896 = getelementptr i8, ptr %t895, i64 %t873
  call void @olang_textcopy(ptr %t896, ptr %t875, i64 %t876)
  %t897 = getelementptr i8, ptr %t896, i64 %t876
  call void @olang_textcopy(ptr %t897, ptr %t879, i64 %t880)
  %t898 = getelementptr i8, ptr %t897, i64 %t880
  call void @olang_textcopy(ptr %t898, ptr %t882, i64 %t883)
  %t899 = getelementptr i8, ptr %t898, i64 %t883
  call void @olang_textcopy(ptr %t899, ptr %t886, i64 %t887)
  %t900 = getelementptr i8, ptr %t899, i64 %t887
  call void @olang_textcopy(ptr %t900, ptr %t889, i64 %t890)
  %t901 = insertvalue { i64, ptr } undef, i64 %t891, 0
  %t902 = insertvalue { i64, ptr } %t901, ptr %t892, 1
  %t904 = extractvalue { i64, ptr } %t902, 0
  %t905 = extractvalue { i64, ptr } %t902, 1
  %t906 = mul i64 %t904, 1
  %t907 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t906)
  call void @llvm.memcpy.p0.p0.i64(ptr %t907, ptr %t905, i64 %t906, i1 false)
  %t908 = insertvalue { i64, ptr } undef, i64 %t904, 0
  %t909 = insertvalue { i64, ptr } %t908, ptr %t907, 1
  %t910 = load ptr, ptr %l310, !tbaa !29
  %t912 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s32, ptr %s32, ptr %t910, { i64, ptr } %t909)
  store { i64, ptr } %t912, ptr %l321
  br label %bb129
bb129:
  %t913 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t914 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t915 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t916 = extractvalue { i64, ptr } %t915, 1
  %t917 = extractvalue { i64, ptr } %t915, 0
  %t918 = add i64 %t914, %t917
  %t919 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t920 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  %t921 = add i64 %t918, %t920
  %t922 = load { i64, ptr }, ptr %l321, !tbaa !27
  %t923 = extractvalue { i64, ptr } %t922, 1
  %t924 = extractvalue { i64, ptr } %t922, 0
  %t925 = add i64 %t921, %t924
  %t926 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t925)
  call void @olang_textcopy(ptr %t926, ptr %t913, i64 %t914)
  %t927 = getelementptr i8, ptr %t926, i64 %t914
  call void @olang_textcopy(ptr %t927, ptr %t916, i64 %t917)
  %t928 = getelementptr i8, ptr %t927, i64 %t917
  call void @olang_textcopy(ptr %t928, ptr %t919, i64 %t920)
  %t929 = getelementptr i8, ptr %t928, i64 %t920
  call void @olang_textcopy(ptr %t929, ptr %t923, i64 %t924)
  %t930 = insertvalue { i64, ptr } undef, i64 %t925, 0
  %t931 = insertvalue { i64, ptr } %t930, ptr %t926, 1
  %t933 = extractvalue { i64, ptr } %t931, 0
  %t934 = extractvalue { i64, ptr } %t931, 1
  %t935 = mul i64 %t933, 1
  %t936 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t935)
  call void @llvm.memcpy.p0.p0.i64(ptr %t936, ptr %t934, i64 %t935, i1 false)
  %t937 = insertvalue { i64, ptr } undef, i64 %t933, 0
  %t938 = insertvalue { i64, ptr } %t937, ptr %t936, 1
  %t939 = load ptr, ptr %l308, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s32, ptr %t939, { i64, ptr } %t938)
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s32)
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s29)
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s22)
  br label %bb133
bb133:
  %t941 = load ptr, ptr %l0, !tbaa !29
  store ptr %t941, ptr %l324, !tbaa !29
  %t942 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t943 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t944 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t946 = extractvalue { i64, ptr } %t942, 1
  %t947 = extractvalue { i64, ptr } %t942, 0
  %t948 = add i64 %t944, %t947
  %t949 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t948)
  call void @olang_textcopy(ptr %t949, ptr %t943, i64 %t944)
  %t950 = getelementptr i8, ptr %t949, i64 %t944
  call void @olang_textcopy(ptr %t950, ptr %t946, i64 %t947)
  %t951 = insertvalue { i64, ptr } undef, i64 %t948, 0
  %t952 = insertvalue { i64, ptr } %t951, ptr %t949, 1
  %t954 = extractvalue { i64, ptr } %t952, 0
  %t955 = extractvalue { i64, ptr } %t952, 1
  %t956 = mul i64 %t954, 1
  %t957 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t956)
  call void @llvm.memcpy.p0.p0.i64(ptr %t957, ptr %t955, i64 %t956, i1 false)
  %t958 = insertvalue { i64, ptr } undef, i64 %t954, 0
  %t959 = insertvalue { i64, ptr } %t958, ptr %t957, 1
  store { i64, ptr } %t959, ptr %l327, !tbaa !27
  %t960 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  store i64 %t960, ptr %l328, !tbaa !24
  %t961 = ptrtoint ptr %s0 to i64
  store i64 %t961, ptr %l329, !tbaa !24
  %t962 = load i1, ptr @olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0
  br i1 %t962, label %bb134, label %bb135
bb134:
  %t964 = call ptr @__olang_region_make(ptr %s0)
  %t965 = ptrtoint ptr %t964 to i64
  store i64 %t965, ptr %l329, !tbaa !24
  br label %bb135
bb135:
  %t966 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t966, ptr %l331, !tbaa !27
  %t967 = load ptr, ptr %l8, !tbaa !29
  %t969 = getelementptr %"compiler/emit:fnEm", ptr %t967, i32 0, i32 5
  %t971 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t969)
  store { i64, ptr } %t971, ptr %l334
  br label %bb136
bb136:
  %t972 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t973 = extractvalue { i64, ptr } %t972, 1
  %t974 = extractvalue { i64, ptr } %t972, 0
  %t975 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t976 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t977 = add i64 %t974, %t976
  %t978 = load { i64, ptr }, ptr %l334, !tbaa !27
  %t979 = extractvalue { i64, ptr } %t978, 1
  %t980 = extractvalue { i64, ptr } %t978, 0
  %t981 = add i64 %t977, %t980
  %t982 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t983 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t984 = add i64 %t981, %t983
  %t985 = load i64, ptr %l329
  %t986 = inttoptr i64 %t985 to ptr
  %t987 = call ptr @__olang_scope_alloc(ptr %t986, i64 %t984)
  call void @olang_textcopy(ptr %t987, ptr %t973, i64 %t974)
  %t988 = getelementptr i8, ptr %t987, i64 %t974
  call void @olang_textcopy(ptr %t988, ptr %t975, i64 %t976)
  %t989 = getelementptr i8, ptr %t988, i64 %t976
  call void @olang_textcopy(ptr %t989, ptr %t979, i64 %t980)
  %t990 = getelementptr i8, ptr %t989, i64 %t980
  call void @olang_textcopy(ptr %t990, ptr %t982, i64 %t983)
  %t991 = insertvalue { i64, ptr } undef, i64 %t984, 0
  %t992 = insertvalue { i64, ptr } %t991, ptr %t987, 1
  %t994 = load i64, ptr %l329
  %t995 = inttoptr i64 %t994 to ptr
  %t996 = extractvalue { i64, ptr } %t992, 0
  %t997 = extractvalue { i64, ptr } %t992, 1
  %t998 = mul i64 %t996, 1
  %t999 = call ptr @__olang_scope_alloc(ptr %t995, i64 %t998)
  call void @llvm.memcpy.p0.p0.i64(ptr %t999, ptr %t997, i64 %t998, i1 false)
  %t1000 = insertvalue { i64, ptr } undef, i64 %t996, 0
  %t1001 = insertvalue { i64, ptr } %t1000, ptr %t999, 1
  %t1002 = load ptr, ptr %l324, !tbaa !29
  %t1003 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t1004 = load i64, ptr %l328, !tbaa !24
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %t1002, { i64, ptr } %t1003, i64 %t1004, { i64, ptr } %t1001, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  br label %bb137
bb137:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenDrop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t4 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  %t7 = extractvalue { i64, ptr } %a1, 1
  %t8 = extractvalue { i64, ptr } %a1, 0
  %t9 = add i64 %t5, %t8
  %t10 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t13 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t12)
  call void @olang_textcopy(ptr %t13, ptr %t4, i64 %t5)
  %t14 = getelementptr i8, ptr %t13, i64 %t5
  call void @olang_textcopy(ptr %t14, ptr %t7, i64 %t8)
  %t15 = getelementptr i8, ptr %t14, i64 %t8
  call void @olang_textcopy(ptr %t15, ptr %t10, i64 %t11)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t13, 1
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t20 = extractvalue { i64, ptr } %t17, 1
  %t21 = mul i64 %t19, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t21)
  call void @llvm.memcpy.p0.p0.i64(ptr %t22, ptr %t20, i64 %t21, i1 false)
  %t23 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t24)
  br label %bb2
bb2:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d107, i32 0, i32 1) })
  br label %bb3
bb3:
  %t29 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t32 = extractvalue { i64, ptr } %a2, 1
  %t33 = extractvalue { i64, ptr } %a2, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t38 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t37)
  call void @olang_textcopy(ptr %t38, ptr %t29, i64 %t30)
  %t39 = getelementptr i8, ptr %t38, i64 %t30
  call void @olang_textcopy(ptr %t39, ptr %t32, i64 %t33)
  %t40 = getelementptr i8, ptr %t39, i64 %t33
  call void @olang_textcopy(ptr %t40, ptr %t35, i64 %t36)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t38, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t49)
  br label %bb4
bb4:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 104, ptr getelementptr inbounds (<{ i64, [104 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb5
bb5:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d111, i32 0, i32 1) })
  br label %bb6
bb6:
  %t55 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l3)
  store { i64, ptr } %t55, ptr %l17
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t56 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2egenNext(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, { i64, ptr } %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i1
  %l10 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l31 = alloca { i64, ptr }
  %l35 = alloca i32
  %l38 = alloca i1
  %l39 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i1
  %l45 = alloca %"std/prelude/text:StringBuilder"
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca { i64, [2 x i64] }
  %l50 = alloca i32
  %l52 = alloca { i64, ptr }
  %l57 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l79 = alloca i64
  %l82 = alloca i64
  %l117 = alloca i1
  %l131 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l165 = alloca i64
  %l168 = alloca i64
  %l205 = alloca i1
  %l219 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %t6)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t9, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = inttoptr i64 0 to ptr
  %t17 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %s0, ptr %t14, ptr %t8, i32 %t12)
  store { i64, ptr } %t17, ptr %l31
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t18, ptr %l8, !tbaa !27
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/mir:Fn", ptr %t20, i32 0, i32 1
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t19, i32 %t23)
  store i32 %t26, ptr %l35
  br label %bb3
bb3:
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t28 = load i32, ptr %l35, !tbaa !23
  %t30 = icmp ne i32 %t28, %t27
  br i1 %t30, label %bb4, label %bb5
bb4:
  %t32 = load ptr, ptr %l7, !tbaa !29
  store ptr %t32, ptr %l39, !tbaa !29
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/mir:Fn", ptr %t34, i32 0, i32 1
  %t37 = load i32, ptr %t36, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t33, i32 %t37)
  store i32 %t40, ptr %l43
  br label %bb6
bb5:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb8
bb6:
  %t41 = load ptr, ptr %l39, !tbaa !29
  %t42 = load i32, ptr %l43, !tbaa !23
  %t43 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t43, ptr %l44
  br label %bb7
bb7:
  %t44 = load i1, ptr %l44, !tbaa !21
  store i1 %t44, ptr %l38, !tbaa !21
  br label %bb8
bb8:
  %t45 = load i1, ptr %l38, !tbaa !21
  store i1 %t45, ptr %l9, !tbaa !21
  %t46 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t46, ptr %l45
  br label %bb9
bb9:
  %t47 = load %"std/prelude/text:StringBuilder", ptr %l45
  store %"std/prelude/text:StringBuilder" %t47, ptr %l10
  store ptr %l10, ptr %l46, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  store ptr %t48, ptr %l47, !tbaa !29
  store { i64, [2 x i64] } %a1, ptr %l48
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr %"compiler/mir:Fn", ptr %t50, i32 0, i32 1
  %t53 = load i32, ptr %t52, !tbaa !23
  store i32 %t53, ptr %l50, !tbaa !23
  %t54 = load i1, ptr %l6, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 1
  %t59 = extractvalue { i64, ptr } %t56, 0
  %t60 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t61 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t62 = add i64 %t59, %t61
  %t63 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t62)
  call void @olang_textcopy(ptr %t63, ptr %t58, i64 %t59)
  %t64 = getelementptr i8, ptr %t63, i64 %t59
  call void @olang_textcopy(ptr %t64, ptr %t60, i64 %t61)
  %t65 = insertvalue { i64, ptr } undef, i64 %t62, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = extractvalue { i64, ptr } %t66, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  store { i64, ptr } %t73, ptr %l52, !tbaa !27
  br label %bb12
bb11:
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t75, ptr %l52, !tbaa !27
  br label %bb12
bb12:
  %t77 = load i64, ptr %l4, !tbaa !24
  store i64 %t77, ptr %l57, !tbaa !24
  %t78 = load i1, ptr %l6, !tbaa !21
  br i1 %t78, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d113, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d114, i32 0, i32 1) }, ptr %l59, !tbaa !27
  br label %bb15
bb15:
  %t80 = load ptr, ptr %l47, !tbaa !29
  %t81 = load { i64, [2 x i64] }, ptr %l48
  %t82 = load i32, ptr %l50, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t84 = load i64, ptr %l57, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t86 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v2, ptr %s0, ptr %s0, ptr %s0, ptr %t80, { i64, [2 x i64] } %t81, i32 %t82, { i64, ptr } %t83, i64 %t84, i1 true, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d115, i32 0, i32 1) }, { i64, ptr } %t85)
  store { i64, ptr } %t86, ptr %l60
  br label %bb16
bb16:
  %t87 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  %t89 = extractvalue { i64, ptr } %t87, 1
  %t90 = mul i64 %t88, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @llvm.memcpy.p0.p0.i64(ptr %t91, ptr %t89, i64 %t90, i1 false)
  %t92 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  %t94 = load ptr, ptr %l46, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t94, { i64, ptr } %t93)
  br label %bb17
bb17:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb18
bb18:
  %t97 = load i1, ptr %l6, !tbaa !21
  br i1 %t97, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t100 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t101 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t103 = extractvalue { i64, ptr } %t99, 1
  %t104 = extractvalue { i64, ptr } %t99, 0
  %t105 = add i64 %t101, %t104
  %t106 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t108 = add i64 %t105, %t107
  %t109 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t108)
  call void @olang_textcopy(ptr %t109, ptr %t100, i64 %t101)
  %t110 = getelementptr i8, ptr %t109, i64 %t101
  call void @olang_textcopy(ptr %t110, ptr %t103, i64 %t104)
  %t111 = getelementptr i8, ptr %t110, i64 %t104
  call void @olang_textcopy(ptr %t111, ptr %t106, i64 %t107)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t109, 1
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = extractvalue { i64, ptr } %t113, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l10, { i64, ptr } %t120)
  br label %bb21
bb20:
  br label %bb49
bb21:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l10, { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d119, i32 0, i32 1) })
  br label %bb22
bb22:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l10, { i64, ptr } { i64 69, ptr getelementptr inbounds (<{ i64, [69 x i8] }>, ptr @.d120, i32 0, i32 1) })
  br label %bb23
bb23:
  %t125 = load i1, ptr %l9, !tbaa !21
  br i1 %t125, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t127 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t128 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t129 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t131 = extractvalue { i64, ptr } %t127, 1
  %t132 = extractvalue { i64, ptr } %t127, 0
  %t133 = add i64 %t129, %t132
  %t134 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t136 = add i64 %t133, %t135
  %t137 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t136)
  call void @olang_textcopy(ptr %t137, ptr %t128, i64 %t129)
  %t138 = getelementptr i8, ptr %t137, i64 %t129
  call void @olang_textcopy(ptr %t138, ptr %t131, i64 %t132)
  %t139 = getelementptr i8, ptr %t138, i64 %t132
  call void @olang_textcopy(ptr %t139, ptr %t134, i64 %t135)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t137, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } %t141, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l10, { i64, ptr } %t148)
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb27:
  store i64 0, ptr %l11, !tbaa !24
  %t151 = load i64, ptr %l4, !tbaa !24
  store i64 %t151, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t153 = load i64, ptr %l12, !tbaa !24
  %t154 = load i64, ptr %l11, !tbaa !24
  %t157 = icmp sgt i64 %t153, %t154
  br i1 %t157, label %bb28, label %bb29
bb28:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t161 = icmp sgt i64 %t159, 0
  br i1 %t161, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l79, !tbaa !24
  br label %bb33
bb30:
  %t163 = load i64, ptr %l12, !tbaa !24
  %t164 = load i64, ptr %l11, !tbaa !24
  %t167 = sub i64 %t163, %t164
  %t168 = load i64, ptr %l13, !tbaa !24
  %t171 = add i64 %t167, %t168
  %t173 = sub i64 %t171, 1
  %t174 = load i64, ptr %l13, !tbaa !24
  %t177 = sdiv i64 %t173, %t174
  store i64 %t177, ptr %l82, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l82, !tbaa !24
  br label %bb32
bb32:
  %t179 = load i64, ptr %l82, !tbaa !24
  store i64 %t179, ptr %l79, !tbaa !24
  br label %bb33
bb33:
  %t180 = load i64, ptr %l79, !tbaa !24
  store i64 %t180, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t181 = load i64, ptr %l15, !tbaa !24
  %t182 = load i64, ptr %l14, !tbaa !24
  %t185 = icmp slt i64 %t181, %t182
  %t187 = xor i1 %t185, true
  br i1 %t187, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t189 = load i64, ptr %l11, !tbaa !24
  %t190 = load i64, ptr %l15, !tbaa !24
  %t191 = load i64, ptr %l13, !tbaa !24
  %t194 = mul i64 %t190, %t191
  %t197 = add i64 %t189, %t194
  store i64 %t197, ptr %l16, !tbaa !24
  %t199 = load i64, ptr %l16, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t201 = load i64, ptr %l16, !tbaa !24
  %t203 = add i64 3, %t201
  %t204 = load i64, ptr %l16, !tbaa !24
  %t205 = load i64, ptr %l16, !tbaa !24
  %t206 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
  %t209 = call i64 @__olang_fmt_i64(ptr null, i64 %t199)
  %t210 = add i64 %t207, %t209
  %t211 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t215 = extractvalue { i64, ptr } %t200, 1
  %t216 = extractvalue { i64, ptr } %t200, 0
  %t217 = add i64 %t213, %t216
  %t218 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t222 = call i64 @__olang_fmt_i64(ptr null, i64 %t203)
  %t223 = add i64 %t220, %t222
  %t224 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t225 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t226 = add i64 %t223, %t225
  %t228 = call i64 @__olang_fmt_i64(ptr null, i64 %t204)
  %t229 = add i64 %t226, %t228
  %t230 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t234 = call i64 @__olang_fmt_i64(ptr null, i64 %t205)
  %t235 = add i64 %t232, %t234
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t238 = add i64 %t235, %t237
  %t239 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t238)
  call void @olang_textcopy(ptr %t239, ptr %t206, i64 %t207)
  %t240 = getelementptr i8, ptr %t239, i64 %t207
  %t241 = call i64 @__olang_fmt_i64(ptr %t240, i64 %t199)
  %t242 = getelementptr i8, ptr %t240, i64 %t209
  call void @olang_textcopy(ptr %t242, ptr %t211, i64 %t212)
  %t243 = getelementptr i8, ptr %t242, i64 %t212
  call void @olang_textcopy(ptr %t243, ptr %t215, i64 %t216)
  %t244 = getelementptr i8, ptr %t243, i64 %t216
  call void @olang_textcopy(ptr %t244, ptr %t218, i64 %t219)
  %t245 = getelementptr i8, ptr %t244, i64 %t219
  %t246 = call i64 @__olang_fmt_i64(ptr %t245, i64 %t203)
  %t247 = getelementptr i8, ptr %t245, i64 %t222
  call void @olang_textcopy(ptr %t247, ptr %t224, i64 %t225)
  %t248 = getelementptr i8, ptr %t247, i64 %t225
  %t249 = call i64 @__olang_fmt_i64(ptr %t248, i64 %t204)
  %t250 = getelementptr i8, ptr %t248, i64 %t228
  call void @olang_textcopy(ptr %t250, ptr %t230, i64 %t231)
  %t251 = getelementptr i8, ptr %t250, i64 %t231
  %t252 = call i64 @__olang_fmt_i64(ptr %t251, i64 %t205)
  %t253 = getelementptr i8, ptr %t251, i64 %t234
  call void @olang_textcopy(ptr %t253, ptr %t236, i64 %t237)
  %t254 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t239, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = extractvalue { i64, ptr } %t255, 1
  %t259 = mul i64 %t257, 1
  %t260 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t259)
  call void @llvm.memcpy.p0.p0.i64(ptr %t260, ptr %t258, i64 %t259, i1 false)
  %t261 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t260, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l10, { i64, ptr } %t262)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t265 = load i64, ptr %l15, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l15, !tbaa !24
  br label %bb34
bb40:
  %t269 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t270 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t271 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t274 = extractvalue { i64, ptr } %t269, 1
  %t275 = extractvalue { i64, ptr } %t269, 0
  %t276 = add i64 %t272, %t275
  %t277 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t278 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t279 = add i64 %t276, %t278
  %t281 = extractvalue { i64, ptr } %t270, 1
  %t282 = extractvalue { i64, ptr } %t270, 0
  %t283 = add i64 %t279, %t282
  %t284 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t286 = add i64 %t283, %t285
  %t287 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t286)
  call void @olang_textcopy(ptr %t287, ptr %t271, i64 %t272)
  %t288 = getelementptr i8, ptr %t287, i64 %t272
  call void @olang_textcopy(ptr %t288, ptr %t274, i64 %t275)
  %t289 = getelementptr i8, ptr %t288, i64 %t275
  call void @olang_textcopy(ptr %t289, ptr %t277, i64 %t278)
  %t290 = getelementptr i8, ptr %t289, i64 %t278
  call void @olang_textcopy(ptr %t290, ptr %t281, i64 %t282)
  %t291 = getelementptr i8, ptr %t290, i64 %t282
  call void @olang_textcopy(ptr %t291, ptr %t284, i64 %t285)
  %t292 = insertvalue { i64, ptr } undef, i64 %t286, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t287, 1
  %t295 = extractvalue { i64, ptr } %t293, 0
  %t296 = extractvalue { i64, ptr } %t293, 1
  %t297 = mul i64 %t295, 1
  %t298 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t297)
  call void @llvm.memcpy.p0.p0.i64(ptr %t298, ptr %t296, i64 %t297, i1 false)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l10, { i64, ptr } %t300)
  br label %bb41
bb41:
  %t303 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t303, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d132, i32 0, i32 1) })
  store i1 %t305, ptr %l117
  br label %bb42
bb42:
  %t306 = load i1, ptr %l117, !tbaa !21
  br i1 %t306, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s11
  %t307 = load ptr, ptr %l2, !tbaa !29
  %t309 = getelementptr %"compiler/mir:Fn", ptr %t307, i32 0, i32 26
  %t310 = load i64, ptr %t309, !tbaa !24
  %t311 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t312 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t314 = call i64 @__olang_fmt_i64(ptr null, i64 %t310)
  %t315 = add i64 %t312, %t314
  %t316 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t317 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t318 = add i64 %t315, %t317
  %t319 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t318)
  call void @olang_textcopy(ptr %t319, ptr %t311, i64 %t312)
  %t320 = getelementptr i8, ptr %t319, i64 %t312
  %t321 = call i64 @__olang_fmt_i64(ptr %t320, i64 %t310)
  %t322 = getelementptr i8, ptr %t320, i64 %t314
  call void @olang_textcopy(ptr %t322, ptr %t316, i64 %t317)
  %t323 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t319, 1
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t327 = extractvalue { i64, ptr } %t324, 1
  %t328 = mul i64 %t326, 1
  %t329 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t328)
  call void @llvm.memcpy.p0.p0.i64(ptr %t329, ptr %t327, i64 %t328, i1 false)
  %t330 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t329, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %l10, { i64, ptr } %t331)
  br label %bb45
bb44:
  store %olang.scope zeroinitializer, ptr %s13
  %t334 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t335 = load ptr, ptr %l2, !tbaa !29
  %t337 = getelementptr %"compiler/mir:Fn", ptr %t335, i32 0, i32 26
  %t338 = load i64, ptr %t337, !tbaa !24
  %t339 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t340 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d135, i32 0, i32 1) }, 1
  %t341 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d135, i32 0, i32 1) }, 0
  %t343 = extractvalue { i64, ptr } %t334, 1
  %t344 = extractvalue { i64, ptr } %t334, 0
  %t345 = add i64 %t341, %t344
  %t346 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t347 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t348 = add i64 %t345, %t347
  %t350 = call i64 @__olang_fmt_i64(ptr null, i64 %t338)
  %t351 = add i64 %t348, %t350
  %t352 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t353 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t354 = add i64 %t351, %t353
  %t356 = extractvalue { i64, ptr } %t339, 1
  %t357 = extractvalue { i64, ptr } %t339, 0
  %t358 = add i64 %t354, %t357
  %t359 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t361 = add i64 %t358, %t360
  %t362 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t361)
  call void @olang_textcopy(ptr %t362, ptr %t340, i64 %t341)
  %t363 = getelementptr i8, ptr %t362, i64 %t341
  call void @olang_textcopy(ptr %t363, ptr %t343, i64 %t344)
  %t364 = getelementptr i8, ptr %t363, i64 %t344
  call void @olang_textcopy(ptr %t364, ptr %t346, i64 %t347)
  %t365 = getelementptr i8, ptr %t364, i64 %t347
  %t366 = call i64 @__olang_fmt_i64(ptr %t365, i64 %t338)
  %t367 = getelementptr i8, ptr %t365, i64 %t350
  call void @olang_textcopy(ptr %t367, ptr %t352, i64 %t353)
  %t368 = getelementptr i8, ptr %t367, i64 %t353
  call void @olang_textcopy(ptr %t368, ptr %t356, i64 %t357)
  %t369 = getelementptr i8, ptr %t368, i64 %t357
  call void @olang_textcopy(ptr %t369, ptr %t359, i64 %t360)
  %t370 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t362, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %l10, { i64, ptr } %t378)
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s11)
  br label %bb47
bb46:
  call void @__olang_scope_close(ptr %s13)
  br label %bb47
bb47:
  %t382 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v4, ptr %l10)
  store { i64, ptr } %t382, ptr %l131
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t383 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t383, ptr %rv
  br label %ret
bb49:
  %t384 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t384, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d139, i32 0, i32 1) })
  br label %bb50
bb50:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l133, !tbaa !29
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l2, !tbaa !29
  %t390 = getelementptr %"compiler/mir:Fn", ptr %t388, i32 0, i32 2
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = load ptr, ptr %l2, !tbaa !29
  %t394 = getelementptr %"compiler/mir:Fn", ptr %t392, i32 0, i32 3
  %t395 = load %"compiler/source:Span", ptr %t394
  %t399 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewhere(ptr %v0, ptr %s0, ptr %t387, i64 %t391, %"compiler/source:Span" %t395)
  store { i64, ptr } %t399, ptr %l139
  br label %bb51
bb51:
  %t401 = call { i64, ptr } @compiler_2fmir_2eExitText(ptr %s0, i32 13)
  store { i64, ptr } %t401, ptr %l141
  br label %bb52
bb52:
  %t402 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t403 = extractvalue { i64, ptr } %t402, 1
  %t404 = extractvalue { i64, ptr } %t402, 0
  %t405 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t406 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
  %t407 = add i64 %t404, %t406
  %t408 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = add i64 %t407, %t410
  %t412 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t413 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t414 = add i64 %t411, %t413
  %t415 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t414)
  call void @olang_textcopy(ptr %t415, ptr %t403, i64 %t404)
  %t416 = getelementptr i8, ptr %t415, i64 %t404
  call void @olang_textcopy(ptr %t416, ptr %t405, i64 %t406)
  %t417 = getelementptr i8, ptr %t416, i64 %t406
  call void @olang_textcopy(ptr %t417, ptr %t409, i64 %t410)
  %t418 = getelementptr i8, ptr %t417, i64 %t410
  call void @olang_textcopy(ptr %t418, ptr %t412, i64 %t413)
  %t419 = insertvalue { i64, ptr } undef, i64 %t414, 0
  %t420 = insertvalue { i64, ptr } %t419, ptr %t415, 1
  %t422 = extractvalue { i64, ptr } %t420, 0
  %t423 = extractvalue { i64, ptr } %t420, 1
  %t424 = mul i64 %t422, 1
  %t425 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t424)
  call void @llvm.memcpy.p0.p0.i64(ptr %t425, ptr %t423, i64 %t424, i1 false)
  %t426 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t427 = insertvalue { i64, ptr } %t426, ptr %t425, 1
  %t428 = load ptr, ptr %l133, !tbaa !29
  %t430 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %s0, ptr %s0, ptr %t428, { i64, ptr } %t427)
  store { i64, ptr } %t430, ptr %l144
  br label %bb53
bb53:
  %t431 = load { i64, ptr }, ptr %l144, !tbaa !27
  store { i64, ptr } %t431, ptr %l17, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t433 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t436 = extractvalue { i64, ptr } %t432, 1
  %t437 = extractvalue { i64, ptr } %t432, 0
  %t438 = add i64 %t434, %t437
  %t439 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t440 = extractvalue { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t441 = add i64 %t438, %t440
  %t442 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t441)
  call void @olang_textcopy(ptr %t442, ptr %t433, i64 %t434)
  %t443 = getelementptr i8, ptr %t442, i64 %t434
  call void @olang_textcopy(ptr %t443, ptr %t436, i64 %t437)
  %t444 = getelementptr i8, ptr %t443, i64 %t437
  call void @olang_textcopy(ptr %t444, ptr %t439, i64 %t440)
  %t445 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t442, 1
  %t448 = extractvalue { i64, ptr } %t446, 0
  %t449 = extractvalue { i64, ptr } %t446, 1
  %t450 = mul i64 %t448, 1
  %t451 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t450)
  call void @llvm.memcpy.p0.p0.i64(ptr %t451, ptr %t449, i64 %t450, i1 false)
  %t452 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t453 = insertvalue { i64, ptr } %t452, ptr %t451, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t453)
  br label %bb54
bb54:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d144, i32 0, i32 1) })
  br label %bb55
bb55:
  %t457 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t458 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 38, ptr getelementptr inbounds (<{ i64, [38 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t461 = extractvalue { i64, ptr } %t457, 1
  %t462 = extractvalue { i64, ptr } %t457, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t467 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t466)
  call void @olang_textcopy(ptr %t467, ptr %t458, i64 %t459)
  %t468 = getelementptr i8, ptr %t467, i64 %t459
  call void @olang_textcopy(ptr %t468, ptr %t461, i64 %t462)
  %t469 = getelementptr i8, ptr %t468, i64 %t462
  call void @olang_textcopy(ptr %t469, ptr %t464, i64 %t465)
  %t470 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t471 = insertvalue { i64, ptr } %t470, ptr %t467, 1
  %t473 = extractvalue { i64, ptr } %t471, 0
  %t474 = extractvalue { i64, ptr } %t471, 1
  %t475 = mul i64 %t473, 1
  %t476 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t475)
  call void @llvm.memcpy.p0.p0.i64(ptr %t476, ptr %t474, i64 %t475, i1 false)
  %t477 = insertvalue { i64, ptr } undef, i64 %t473, 0
  %t478 = insertvalue { i64, ptr } %t477, ptr %t476, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t478)
  br label %bb56
bb56:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d147, i32 0, i32 1) })
  br label %bb57
bb57:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 92, ptr getelementptr inbounds (<{ i64, [92 x i8] }>, ptr @.d148, i32 0, i32 1) })
  br label %bb58
bb58:
  %t483 = load i1, ptr %l9, !tbaa !21
  br i1 %t483, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s18
  %t485 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t486 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t487 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t489 = extractvalue { i64, ptr } %t485, 1
  %t490 = extractvalue { i64, ptr } %t485, 0
  %t491 = add i64 %t487, %t490
  %t492 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t493 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
  %t494 = add i64 %t491, %t493
  %t495 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t494)
  call void @olang_textcopy(ptr %t495, ptr %t486, i64 %t487)
  %t496 = getelementptr i8, ptr %t495, i64 %t487
  call void @olang_textcopy(ptr %t496, ptr %t489, i64 %t490)
  %t497 = getelementptr i8, ptr %t496, i64 %t490
  call void @olang_textcopy(ptr %t497, ptr %t492, i64 %t493)
  %t498 = insertvalue { i64, ptr } undef, i64 %t494, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t495, 1
  %t501 = extractvalue { i64, ptr } %t499, 0
  %t502 = extractvalue { i64, ptr } %t499, 1
  %t503 = mul i64 %t501, 1
  %t504 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t503)
  call void @llvm.memcpy.p0.p0.i64(ptr %t504, ptr %t502, i64 %t503, i1 false)
  %t505 = insertvalue { i64, ptr } undef, i64 %t501, 0
  %t506 = insertvalue { i64, ptr } %t505, ptr %t504, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s18, ptr %l10, { i64, ptr } %t506)
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_scope_close(ptr %s18)
  br label %bb62
bb62:
  store i64 0, ptr %l18, !tbaa !24
  %t509 = load i64, ptr %l4, !tbaa !24
  store i64 %t509, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t511 = load i64, ptr %l19, !tbaa !24
  %t512 = load i64, ptr %l18, !tbaa !24
  %t515 = icmp sgt i64 %t511, %t512
  br i1 %t515, label %bb63, label %bb64
bb63:
  %t517 = load i64, ptr %l20, !tbaa !24
  %t519 = icmp sgt i64 %t517, 0
  br i1 %t519, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l165, !tbaa !24
  br label %bb68
bb65:
  %t521 = load i64, ptr %l19, !tbaa !24
  %t522 = load i64, ptr %l18, !tbaa !24
  %t525 = sub i64 %t521, %t522
  %t526 = load i64, ptr %l20, !tbaa !24
  %t529 = add i64 %t525, %t526
  %t531 = sub i64 %t529, 1
  %t532 = load i64, ptr %l20, !tbaa !24
  %t535 = sdiv i64 %t531, %t532
  store i64 %t535, ptr %l168, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l168, !tbaa !24
  br label %bb67
bb67:
  %t537 = load i64, ptr %l168, !tbaa !24
  store i64 %t537, ptr %l165, !tbaa !24
  br label %bb68
bb68:
  %t538 = load i64, ptr %l165, !tbaa !24
  store i64 %t538, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s21
  %t539 = load i64, ptr %l22, !tbaa !24
  %t540 = load i64, ptr %l21, !tbaa !24
  %t543 = icmp slt i64 %t539, %t540
  %t545 = xor i1 %t543, true
  br i1 %t545, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s21)
  br label %bb75
bb71:
  br label %bb72
bb72:
  %t547 = load i64, ptr %l18, !tbaa !24
  %t548 = load i64, ptr %l22, !tbaa !24
  %t549 = load i64, ptr %l20, !tbaa !24
  %t552 = mul i64 %t548, %t549
  %t555 = add i64 %t547, %t552
  store i64 %t555, ptr %l23, !tbaa !24
  %t557 = load i64, ptr %l23, !tbaa !24
  %t558 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t559 = load i64, ptr %l23, !tbaa !24
  %t561 = add i64 3, %t559
  %t562 = load i64, ptr %l23, !tbaa !24
  %t563 = load i64, ptr %l23, !tbaa !24
  %t564 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t565 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t567 = call i64 @__olang_fmt_i64(ptr null, i64 %t557)
  %t568 = add i64 %t565, %t567
  %t569 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t570 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t571 = add i64 %t568, %t570
  %t573 = extractvalue { i64, ptr } %t558, 1
  %t574 = extractvalue { i64, ptr } %t558, 0
  %t575 = add i64 %t571, %t574
  %t576 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d153, i32 0, i32 1) }, 1
  %t577 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d153, i32 0, i32 1) }, 0
  %t578 = add i64 %t575, %t577
  %t580 = call i64 @__olang_fmt_i64(ptr null, i64 %t561)
  %t581 = add i64 %t578, %t580
  %t582 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d154, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d154, i32 0, i32 1) }, 0
  %t584 = add i64 %t581, %t583
  %t586 = call i64 @__olang_fmt_i64(ptr null, i64 %t562)
  %t587 = add i64 %t584, %t586
  %t588 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d155, i32 0, i32 1) }, 1
  %t589 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d155, i32 0, i32 1) }, 0
  %t590 = add i64 %t587, %t589
  %t592 = call i64 @__olang_fmt_i64(ptr null, i64 %t563)
  %t593 = add i64 %t590, %t592
  %t594 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t595 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t596 = add i64 %t593, %t595
  %t597 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t596)
  call void @olang_textcopy(ptr %t597, ptr %t564, i64 %t565)
  %t598 = getelementptr i8, ptr %t597, i64 %t565
  %t599 = call i64 @__olang_fmt_i64(ptr %t598, i64 %t557)
  %t600 = getelementptr i8, ptr %t598, i64 %t567
  call void @olang_textcopy(ptr %t600, ptr %t569, i64 %t570)
  %t601 = getelementptr i8, ptr %t600, i64 %t570
  call void @olang_textcopy(ptr %t601, ptr %t573, i64 %t574)
  %t602 = getelementptr i8, ptr %t601, i64 %t574
  call void @olang_textcopy(ptr %t602, ptr %t576, i64 %t577)
  %t603 = getelementptr i8, ptr %t602, i64 %t577
  %t604 = call i64 @__olang_fmt_i64(ptr %t603, i64 %t561)
  %t605 = getelementptr i8, ptr %t603, i64 %t580
  call void @olang_textcopy(ptr %t605, ptr %t582, i64 %t583)
  %t606 = getelementptr i8, ptr %t605, i64 %t583
  %t607 = call i64 @__olang_fmt_i64(ptr %t606, i64 %t562)
  %t608 = getelementptr i8, ptr %t606, i64 %t586
  call void @olang_textcopy(ptr %t608, ptr %t588, i64 %t589)
  %t609 = getelementptr i8, ptr %t608, i64 %t589
  %t610 = call i64 @__olang_fmt_i64(ptr %t609, i64 %t563)
  %t611 = getelementptr i8, ptr %t609, i64 %t592
  call void @olang_textcopy(ptr %t611, ptr %t594, i64 %t595)
  %t612 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t613 = insertvalue { i64, ptr } %t612, ptr %t597, 1
  %t615 = extractvalue { i64, ptr } %t613, 0
  %t616 = extractvalue { i64, ptr } %t613, 1
  %t617 = mul i64 %t615, 1
  %t618 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t617)
  call void @llvm.memcpy.p0.p0.i64(ptr %t618, ptr %t616, i64 %t617, i1 false)
  %t619 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t620 = insertvalue { i64, ptr } %t619, ptr %t618, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s21, ptr %l10, { i64, ptr } %t620)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s21)
  br label %bb74
bb74:
  %t623 = load i64, ptr %l22, !tbaa !24
  %t625 = add i64 %t623, 1
  store i64 %t625, ptr %l22, !tbaa !24
  br label %bb69
bb75:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d157, i32 0, i32 1) })
  br label %bb76
bb76:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } { i64 63, ptr getelementptr inbounds (<{ i64, [63 x i8] }>, ptr @.d158, i32 0, i32 1) })
  br label %bb77
bb77:
  %t629 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t630 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t631 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t632 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t634 = extractvalue { i64, ptr } %t629, 1
  %t635 = extractvalue { i64, ptr } %t629, 0
  %t636 = add i64 %t632, %t635
  %t637 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t638 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t639 = add i64 %t636, %t638
  %t641 = extractvalue { i64, ptr } %t630, 1
  %t642 = extractvalue { i64, ptr } %t630, 0
  %t643 = add i64 %t639, %t642
  %t644 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t645 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t646 = add i64 %t643, %t645
  %t647 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t646)
  call void @olang_textcopy(ptr %t647, ptr %t631, i64 %t632)
  %t648 = getelementptr i8, ptr %t647, i64 %t632
  call void @olang_textcopy(ptr %t648, ptr %t634, i64 %t635)
  %t649 = getelementptr i8, ptr %t648, i64 %t635
  call void @olang_textcopy(ptr %t649, ptr %t637, i64 %t638)
  %t650 = getelementptr i8, ptr %t649, i64 %t638
  call void @olang_textcopy(ptr %t650, ptr %t641, i64 %t642)
  %t651 = getelementptr i8, ptr %t650, i64 %t642
  call void @olang_textcopy(ptr %t651, ptr %t644, i64 %t645)
  %t652 = insertvalue { i64, ptr } undef, i64 %t646, 0
  %t653 = insertvalue { i64, ptr } %t652, ptr %t647, 1
  %t655 = extractvalue { i64, ptr } %t653, 0
  %t656 = extractvalue { i64, ptr } %t653, 1
  %t657 = mul i64 %t655, 1
  %t658 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t657)
  call void @llvm.memcpy.p0.p0.i64(ptr %t658, ptr %t656, i64 %t657, i1 false)
  %t659 = insertvalue { i64, ptr } undef, i64 %t655, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t658, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t660)
  br label %bb78
bb78:
  %t663 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t665 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t663, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d162, i32 0, i32 1) })
  store i1 %t665, ptr %l205
  br label %bb79
bb79:
  %t666 = load i1, ptr %l205, !tbaa !21
  br i1 %t666, label %bb80, label %bb81
bb80:
  store %olang.scope zeroinitializer, ptr %s25
  %t667 = load ptr, ptr %l2, !tbaa !29
  %t669 = getelementptr %"compiler/mir:Fn", ptr %t667, i32 0, i32 26
  %t670 = load i64, ptr %t669, !tbaa !24
  %t671 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d163, i32 0, i32 1) }, 1
  %t672 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d163, i32 0, i32 1) }, 0
  %t674 = call i64 @__olang_fmt_i64(ptr null, i64 %t670)
  %t675 = add i64 %t672, %t674
  %t676 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) }, 1
  %t677 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d164, i32 0, i32 1) }, 0
  %t678 = add i64 %t675, %t677
  %t679 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t678)
  call void @olang_textcopy(ptr %t679, ptr %t671, i64 %t672)
  %t680 = getelementptr i8, ptr %t679, i64 %t672
  %t681 = call i64 @__olang_fmt_i64(ptr %t680, i64 %t670)
  %t682 = getelementptr i8, ptr %t680, i64 %t674
  call void @olang_textcopy(ptr %t682, ptr %t676, i64 %t677)
  %t683 = insertvalue { i64, ptr } undef, i64 %t678, 0
  %t684 = insertvalue { i64, ptr } %t683, ptr %t679, 1
  %t686 = extractvalue { i64, ptr } %t684, 0
  %t687 = extractvalue { i64, ptr } %t684, 1
  %t688 = mul i64 %t686, 1
  %t689 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t688)
  call void @llvm.memcpy.p0.p0.i64(ptr %t689, ptr %t687, i64 %t688, i1 false)
  %t690 = insertvalue { i64, ptr } undef, i64 %t686, 0
  %t691 = insertvalue { i64, ptr } %t690, ptr %t689, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l10, { i64, ptr } %t691)
  br label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s27
  %t694 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t695 = load ptr, ptr %l2, !tbaa !29
  %t697 = getelementptr %"compiler/mir:Fn", ptr %t695, i32 0, i32 26
  %t698 = load i64, ptr %t697, !tbaa !24
  %t699 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t700 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 1
  %t701 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d165, i32 0, i32 1) }, 0
  %t703 = extractvalue { i64, ptr } %t694, 1
  %t704 = extractvalue { i64, ptr } %t694, 0
  %t705 = add i64 %t701, %t704
  %t706 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d166, i32 0, i32 1) }, 1
  %t707 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d166, i32 0, i32 1) }, 0
  %t708 = add i64 %t705, %t707
  %t710 = call i64 @__olang_fmt_i64(ptr null, i64 %t698)
  %t711 = add i64 %t708, %t710
  %t712 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t716 = extractvalue { i64, ptr } %t699, 1
  %t717 = extractvalue { i64, ptr } %t699, 0
  %t718 = add i64 %t714, %t717
  %t719 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t720 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t721 = add i64 %t718, %t720
  %t722 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t721)
  call void @olang_textcopy(ptr %t722, ptr %t700, i64 %t701)
  %t723 = getelementptr i8, ptr %t722, i64 %t701
  call void @olang_textcopy(ptr %t723, ptr %t703, i64 %t704)
  %t724 = getelementptr i8, ptr %t723, i64 %t704
  call void @olang_textcopy(ptr %t724, ptr %t706, i64 %t707)
  %t725 = getelementptr i8, ptr %t724, i64 %t707
  %t726 = call i64 @__olang_fmt_i64(ptr %t725, i64 %t698)
  %t727 = getelementptr i8, ptr %t725, i64 %t710
  call void @olang_textcopy(ptr %t727, ptr %t712, i64 %t713)
  %t728 = getelementptr i8, ptr %t727, i64 %t713
  call void @olang_textcopy(ptr %t728, ptr %t716, i64 %t717)
  %t729 = getelementptr i8, ptr %t728, i64 %t717
  call void @olang_textcopy(ptr %t729, ptr %t719, i64 %t720)
  %t730 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t731 = insertvalue { i64, ptr } %t730, ptr %t722, 1
  %t733 = extractvalue { i64, ptr } %t731, 0
  %t734 = extractvalue { i64, ptr } %t731, 1
  %t735 = mul i64 %t733, 1
  %t736 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t735)
  call void @llvm.memcpy.p0.p0.i64(ptr %t736, ptr %t734, i64 %t735, i1 false)
  %t737 = insertvalue { i64, ptr } undef, i64 %t733, 0
  %t738 = insertvalue { i64, ptr } %t737, ptr %t736, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %l10, { i64, ptr } %t738)
  br label %bb83
bb82:
  call void @__olang_scope_close(ptr %s25)
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s27)
  br label %bb84
bb84:
  %t742 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v4, ptr %l10)
  store { i64, ptr } %t742, ptr %l219
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s0)
  %t743 = load { i64, ptr }, ptr %l219, !tbaa !27
  store { i64, ptr } %t743, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eglobalBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l11 = alloca i32
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l45 = alloca ptr
  %l55 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lower:Lowerer", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l15
  br label %bb1
bb1:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l5, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t37 = load i64, ptr %l22, !tbaa !24
  store i64 %t37, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb9, label %bb10
bb9:
  br label %bb29
bb10:
  br label %bb11
bb11:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t48 = load i64, ptr %l7, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/emit:Emitter", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/lower:Lowerer", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = load i64, ptr %l8, !tbaa !24
  %t68 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t63, i64 %t65)
  store ptr %t68, ptr %l45
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l45, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Body", ptr %t69, i32 0, i32 1
  %t72 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t72, ptr %l9
  %t74 = load { i64, [2 x i64] }, ptr %l9
  %t76 = extractvalue { i64, [2 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 6
  br i1 %t77, label %bb13, label %bb14
bb13:
  %t79 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t80 = getelementptr { i64, i32 }, ptr %t79, i32 0, i32 0
  %t81 = load i64, ptr %t80
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = getelementptr { i64, [2 x i64] }, ptr %l9, i32 0, i32 1
  %t84 = getelementptr { i64, i32 }, ptr %t83, i32 0, i32 1
  %t85 = load i32, ptr %t84
  store i32 %t85, ptr %l11, !tbaa !23
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t91 = icmp eq i64 %t87, %a1
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = load i32, ptr %l11, !tbaa !23
  %t97 = icmp eq i32 %t93, %a2
  store i1 %t97, ptr %l55, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb18
bb18:
  %t99 = load i1, ptr %l55, !tbaa !21
  br i1 %t99, label %bb19, label %bb20
bb19:
  %t100 = load i64, ptr %l8, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_2aa1b6f8675f9eff_587e0f89839d7783)
  unreachable
bb27:
  br label %bb28
bb28:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l7, !tbaa !24
  br label %bb8
bb29:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2einstanceProfName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l23 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l58 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l85 = alloca i64
  %l86 = alloca i32
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca { i64, ptr }
  %l97 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i64, ptr %l13, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l17
  br label %bb2
bb2:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/emit:Emitter", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  store ptr %t31, ptr %l23
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l23, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  store { i64, ptr } %t35, ptr %l4, !tbaa !27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/emit:Emitter", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceText(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store { i64, ptr } %t44, ptr %l29
  br label %bb4
bb4:
  %t45 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t45, ptr %l5, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v0, { i64, ptr } %t46, { i64, ptr } %t47)
  store i1 %t50, ptr %l32
  br label %bb5
bb5:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb6, label %bb7
bb6:
  %t52 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  %t60 = icmp sgt i64 %t54, %t57
  store i1 %t60, ptr %l33, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb8
bb8:
  %t62 = load i1, ptr %l33, !tbaa !21
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t63 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t63, ptr %l40, !tbaa !27
  %t64 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l43, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t69, 0
  store i64 %t72, ptr %l46, !tbaa !24
  %t73 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  store i64 %t74, ptr %l47, !tbaa !24
  %t75 = load i64, ptr %l43, !tbaa !24
  %t76 = icmp sge i64 %t75, 0
  br i1 %t76, label %bb11, label %bb12
bb10:
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t78, 1
  %t81 = extractvalue { i64, ptr } %t78, 0
  %t82 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t80, i64 %t81)
  %t83 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = extractvalue { i64, ptr } %t84, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  store { i64, ptr } %t91, ptr %l39, !tbaa !27
  br label %bb17
bb11:
  %t93 = load i64, ptr %l43, !tbaa !24
  %t94 = load i64, ptr %l46, !tbaa !24
  %t95 = icmp sle i64 %t93, %t94
  br i1 %t95, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ac521a7d5a13adec_a148c72f596b2738)
  unreachable
bb13:
  %t97 = load i64, ptr %l46, !tbaa !24
  %t98 = load i64, ptr %l47, !tbaa !24
  %t99 = icmp sle i64 %t97, %t98
  br i1 %t99, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_ac521a7d5a13adec_a148c72f596b2738)
  unreachable
bb15:
  %t101 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l43, !tbaa !24
  %t104 = load i64, ptr %l46, !tbaa !24
  %t105 = getelementptr i8, ptr %t102, i64 %t103
  %t106 = sub i64 %t104, %t103
  %t107 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t105, 1
  store { i64, ptr } %t108, ptr %l39, !tbaa !27
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_ac521a7d5a13adec_a148c72f596b2738)
  unreachable
bb17:
  %t110 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t110, ptr %l6, !tbaa !27
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/emit:Emitter", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = load i64, ptr %l2, !tbaa !24
  %t118 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t114, i64 %t115)
  store ptr %t118, ptr %l58
  br label %bb18
bb18:
  %t119 = load ptr, ptr %l58, !tbaa !29
  store ptr %t119, ptr %l7, !tbaa !29
  %t120 = load ptr, ptr %l7, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = icmp eq ptr %t123, null
  br i1 %t125, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t127 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t128 = load i64, ptr %l3, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/emit:Emitter", ptr %t129, i32 0, i32 0
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = getelementptr %"compiler/generic:Program", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/load:Loader", ptr %t135, i32 0, i32 12
  %t138 = load i64, ptr %t137, !tbaa !24
  %t141 = icmp eq i64 %t128, %t138
  %t144 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s2, { i64, ptr } %t127, i1 %t141)
  store { i64, ptr } %t144, ptr %l69
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t146, ptr %l71, !tbaa !27
  %t147 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t148 = extractvalue { i64, ptr } %t147, 1
  %t149 = call ptr @__olang_scope_of(ptr %t148, ptr null)
  %t150 = ptrtoint ptr %t149 to i64
  %t152 = inttoptr i64 %t150 to ptr
  %t154 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t155 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %t152, ptr %s2, ptr %t145, { i64, ptr } %t154)
  store { i64, ptr } %t155, ptr %l73
  br label %bb22
bb22:
  %t156 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 1
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t162 = add i64 %t158, %t161
  %t163 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t162)
  call void @olang_textcopy(ptr %t163, ptr %t157, i64 %t158)
  %t164 = getelementptr i8, ptr %t163, i64 %t158
  call void @olang_textcopy(ptr %t164, ptr %t160, i64 %t161)
  %t165 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t163, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t166, ptr %rv
  br label %ret
bb23:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load ptr, ptr %l7, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Func", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %t171, !tbaa !23
  %t175 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v0, ptr %t168, i32 %t172)
  store { i64, ptr } %t175, ptr %l78
  br label %bb24
bb24:
  %t176 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t176, ptr %l8, !tbaa !27
  %t177 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t177, ptr %l80, !tbaa !27
  %t178 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t179 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t182 = extractvalue { i64, ptr } %t178, 1
  %t183 = extractvalue { i64, ptr } %t178, 0
  %t184 = add i64 %t180, %t183
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d170, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d170, i32 0, i32 1) }, 0
  %t187 = add i64 %t184, %t186
  %t188 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t187)
  call void @olang_textcopy(ptr %t188, ptr %t179, i64 %t180)
  %t189 = getelementptr i8, ptr %t188, i64 %t180
  call void @olang_textcopy(ptr %t189, ptr %t182, i64 %t183)
  %t190 = getelementptr i8, ptr %t189, i64 %t183
  call void @olang_textcopy(ptr %t190, ptr %t185, i64 %t186)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t188, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  %t200 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_scope_of(ptr %t201, ptr null)
  %t203 = ptrtoint ptr %t202 to i64
  %t205 = inttoptr i64 %t203 to ptr
  %t206 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t208 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %t205, ptr %s0, { i64, ptr } %t206, { i64, ptr } %t199)
  %t209 = extractvalue { i32, i64 } %t208, 1
  %t210 = extractvalue { i32, i64 } %t208, 0
  store i32 %t210, ptr %l86
  %t211 = icmp ne i32 %t210, 0
  br i1 %t211, label %bb26, label %ok.212, !prof !99
ok.212:
  store i64 %t209, ptr %l85
  br label %bb25
bb25:
  %t213 = load i64, ptr %l85, !tbaa !24
  store i64 %t213, ptr %l79, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l79, !tbaa !24
  br label %bb28
bb28:
  %t214 = load i64, ptr %l79, !tbaa !24
  store i64 %t214, ptr %l9, !tbaa !24
  %t215 = load ptr, ptr %l7, !tbaa !29
  %t217 = getelementptr %"compiler/ast:Func", ptr %t215, i32 0, i32 5
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t222 = icmp eq i64 %t220, 0
  br i1 %t222, label %bb29, label %bb30
bb29:
  %t224 = load i64, ptr %l9, !tbaa !24
  %t226 = icmp sge i64 %t224, 0
  store i1 %t226, ptr %l91, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb31
bb31:
  %t228 = load i1, ptr %l91, !tbaa !21
  br i1 %t228, label %bb32, label %bb33
bb32:
  %t229 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t229, ptr %l95, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_scope_of(ptr %t231, ptr null)
  %t233 = ptrtoint ptr %t232 to i64
  %t235 = inttoptr i64 %t233 to ptr
  %t236 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t237 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %t235, ptr %s0, { i64, ptr } %t236, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d171, i32 0, i32 1) })
  store i1 %t237, ptr %l97
  br label %bb34
bb33:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb35
bb34:
  %t238 = load i1, ptr %l97, !tbaa !21
  store i1 %t238, ptr %l94, !tbaa !21
  br label %bb35
bb35:
  %t239 = load i1, ptr %l94, !tbaa !21
  br i1 %t239, label %bb36, label %bb37
bb36:
  %t240 = load ptr, ptr %l0, !tbaa !29
  store ptr %t240, ptr %l98, !tbaa !29
  %t241 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t241, ptr %l99, !tbaa !27
  %t242 = load i64, ptr %l9, !tbaa !24
  %t244 = add i64 %t242, 1
  %t245 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t250 = add i64 %t244, %t247
  store i64 %t250, ptr %l104, !tbaa !24
  %t251 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t252 = extractvalue { i64, ptr } %t251, 0
  store i64 %t252, ptr %l105, !tbaa !24
  %t253 = icmp sge i64 0, 0
  br i1 %t253, label %bb38, label %bb39
bb37:
  br label %bb45
bb38:
  %t255 = load i64, ptr %l104, !tbaa !24
  %t256 = icmp sle i64 0, %t255
  br i1 %t256, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_82b987b8f85b4c99_79258a452f8b7d15)
  unreachable
bb40:
  %t258 = load i64, ptr %l104, !tbaa !24
  %t259 = load i64, ptr %l105, !tbaa !24
  %t260 = icmp sle i64 %t258, %t259
  br i1 %t260, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_82b987b8f85b4c99_79258a452f8b7d15)
  unreachable
bb42:
  %t262 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = load i64, ptr %l104, !tbaa !24
  %t265 = getelementptr i8, ptr %t263, i64 0
  %t266 = sub i64 %t264, 0
  %t267 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t265, 1
  store { i64, ptr } %t268, ptr %l109, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t270 = extractvalue { i64, ptr } %t269, 1
  %t271 = call ptr @__olang_scope_of(ptr %t270, ptr null)
  %t272 = ptrtoint ptr %t271 to i64
  %t274 = inttoptr i64 %t272 to ptr
  %t275 = load ptr, ptr %l98, !tbaa !29
  %t276 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t277 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %t274, ptr %v1, ptr %t275, { i64, ptr } %t276)
  store { i64, ptr } %t277, ptr %l111
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_82b987b8f85b4c99_79258a452f8b7d15)
  unreachable
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t278 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t278, ptr %rv
  br label %ret
bb45:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t280, ptr %l113, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t282 = extractvalue { i64, ptr } %t281, 1
  %t283 = call ptr @__olang_scope_of(ptr %t282, ptr null)
  %t284 = ptrtoint ptr %t283 to i64
  %t286 = inttoptr i64 %t284 to ptr
  %t288 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t289 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %t286, ptr %v1, ptr %t279, { i64, ptr } %t288)
  store { i64, ptr } %t289, ptr %l115
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  %t290 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t290, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eitem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 22
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %t3, { i64, ptr } %t4)
  store i1 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i1, ptr %l8, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/emit:Emitter", ptr %t9, i32 0, i32 22
  store ptr %t11, ptr %l10, !tbaa !29
  %t12 = ptrtoint ptr %v0 to i64
  store i64 %t12, ptr %l11, !tbaa !24
  %t13 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = call ptr @__olang_region_make(ptr %v0)
  %t16 = ptrtoint ptr %t15 to i64
  store i64 %t16, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  %t17 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 1
  %t20 = extractvalue { i64, ptr } %t17, 0
  %t21 = load i64, ptr %l11
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t20)
  call void @olang_textcopy(ptr %t23, ptr %t19, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  %t27 = load i64, ptr %l11
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = extractvalue { i64, ptr } %t25, 0
  %t30 = extractvalue { i64, ptr } %t25, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %t28, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l15, !tbaa !27
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/emit:Emitter", ptr %t35, i32 0, i32 18
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t37)
  store i64 %t39, ptr %l18
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l10, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t42 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v0, ptr %t40, { i64, ptr } %t41, i64 %t42)
  br label %bb8
bb8:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/emit:Emitter", ptr %t43, i32 0, i32 18
  store ptr %t45, ptr %l20, !tbaa !29
  %t46 = ptrtoint ptr %v0 to i64
  store i64 %t46, ptr %l21, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = call ptr @__olang_region_make(ptr %v0)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 1
  %t54 = extractvalue { i64, ptr } %t51, 0
  %t55 = load i64, ptr %l21
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = call ptr @__olang_scope_alloc(ptr %t56, i64 %t54)
  call void @olang_textcopy(ptr %t57, ptr %t53, i64 %t54)
  %t58 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  %t61 = load i64, ptr %l21
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = extractvalue { i64, ptr } %t59, 0
  %t64 = extractvalue { i64, ptr } %t59, 1
  %t65 = mul i64 %t63, 1
  %t66 = call ptr @__olang_scope_alloc(ptr %t62, i64 %t65)
  call void @llvm.memcpy.p0.p0.i64(ptr %t66, ptr %t64, i64 %t65, i1 false)
  %t67 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t66, 1
  %t69 = load ptr, ptr %l20, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t69, { i64, ptr } %t68)
  br label %bb11
bb11:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/emit:Emitter", ptr %t71, i32 0, i32 19
  store ptr %t73, ptr %l27, !tbaa !29
  %t74 = ptrtoint ptr %v0 to i64
  store i64 %t74, ptr %l28, !tbaa !24
  %t75 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t75, label %bb12, label %bb13
bb12:
  %t77 = call ptr @__olang_region_make(ptr %v0)
  %t78 = ptrtoint ptr %t77 to i64
  store i64 %t78, ptr %l28, !tbaa !24
  br label %bb13
bb13:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/emit:Emitter", ptr %t79, i32 0, i32 7
  %t82 = load i1, ptr %t81, !tbaa !21
  br i1 %t82, label %bb14, label %bb15
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/emit:Emitter", ptr %t84, i32 0, i32 5
  %t87 = load i1, ptr %t86, !tbaa !21
  %t89 = xor i1 %t87, true
  store i1 %t89, ptr %l32, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t91 = load i1, ptr %l32, !tbaa !21
  br i1 %t91, label %bb17, label %bb18
bb17:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t96 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFunctions(ptr %v0, ptr %v2, ptr %v0, ptr %t92, { i64, ptr } %t93)
  store { i64, ptr } %t96, ptr %l39
  br label %bb19
bb18:
  %t97 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = extractvalue { i64, ptr } %t97, 0
  %t101 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t100)
  call void @olang_textcopy(ptr %t101, ptr %t99, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l36, !tbaa !27
  br label %bb20
bb19:
  %t105 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t105, ptr %l36, !tbaa !27
  br label %bb20
bb20:
  %t106 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t107 = load i64, ptr %l28
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = extractvalue { i64, ptr } %t106, 0
  %t110 = extractvalue { i64, ptr } %t106, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t115 = load ptr, ptr %l27, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t115, { i64, ptr } %t114)
  br label %bb21
bb21:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/emit:Emitter", ptr %t117, i32 0, i32 20
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t119, i64 %a2)
  br label %bb22
bb22:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/emit:Emitter", ptr %t123, i32 0, i32 21
  store ptr %t125, ptr %l47, !tbaa !29
  %t126 = ptrtoint ptr %v0 to i64
  store i64 %t126, ptr %l48, !tbaa !24
  %t127 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t127, label %bb23, label %bb24
bb23:
  %t129 = call ptr @__olang_region_make(ptr %v0)
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l48, !tbaa !24
  br label %bb24
bb24:
  %t133 = extractvalue { i64, ptr } %a4, 1
  %t134 = extractvalue { i64, ptr } %a4, 0
  %t135 = load i64, ptr %l48
  %t136 = inttoptr i64 %t135 to ptr
  %t137 = call ptr @__olang_scope_alloc(ptr %t136, i64 %t134)
  call void @olang_textcopy(ptr %t137, ptr %t133, i64 %t134)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t141 = load i64, ptr %l48
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = extractvalue { i64, ptr } %t139, 0
  %t144 = extractvalue { i64, ptr } %t139, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t149 = load ptr, ptr %l47, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t149, { i64, ptr } %t148)
  br label %bb25
bb25:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/emit:Emitter", ptr %t151, i32 0, i32 23
  store ptr %t153, ptr %l54, !tbaa !29
  %t154 = ptrtoint ptr %v0 to i64
  store i64 %t154, ptr %l55, !tbaa !24
  %t155 = load i1, ptr @olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1
  br i1 %t155, label %bb26, label %bb27
bb26:
  %t157 = call ptr @__olang_region_make(ptr %v0)
  %t158 = ptrtoint ptr %t157 to i64
  store i64 %t158, ptr %l55, !tbaa !24
  br label %bb27
bb27:
  %t159 = icmp sge i64 0, 0
  br i1 %t159, label %bb28, label %bb29
bb28:
  %t161 = icmp sle i64 0, 1152921504606846975
  br i1 %t161, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ba737aae896990b4_4bf8a4c11dbddb98)
  unreachable
bb30:
  %t163 = mul i64 0, 8
  %t164 = load i64, ptr %l55
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = insertvalue { i64, ptr } undef, i64 0, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t168 = load ptr, ptr %l54, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v0, ptr %t168, { i64, ptr } %t167)
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_ba737aae896990b4_4bf8a4c11dbddb98)
  unreachable
bb32:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2elocBase(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, [2 x i64] }
  %l9 = alloca i32
  %l22 = alloca i1
  %l25 = alloca i1
  %l29 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l42 = alloca i1
  %l49 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l66 = alloca ptr
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i64 -1, ptr %l2, !tbaa !24
  store i1 false, ptr %l3, !tbaa !21
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i32 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i32, ptr %l4, !tbaa !23
  %t12 = sext i32 %t10 to i64
  store i64 %t12, ptr %l2, !tbaa !24
  br label %bb13
bb4:
  %t14 = load { i64, [2 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [2 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 1
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { i32 }, ptr %t19, i32 0, i32 0
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l5, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t23 = load i32, ptr %l5, !tbaa !23
  %t25 = sext i32 %t23 to i64
  store i64 %t25, ptr %l2, !tbaa !24
  store i1 true, ptr %l3, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_1cb2b0b1c80ab6bb_ff3b7bcb0dec81bf)
  unreachable
bb13:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb17
bb15:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %t31, i64 %t32)
  store i1 %t35, ptr %l25
  br label %bb16
bb16:
  %t36 = load i1, ptr %l25, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t39 = load i1, ptr %l22, !tbaa !21
  br i1 %t39, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load { i64, [2 x i64] }, ptr %l1
  %t44 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %t40, { i64, [2 x i64] } %t41)
  store { i64, ptr } %t44, ptr %l29
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb21:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/emit:Emitter", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/lower:Lowerer", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t52, i64 %t54)
  store ptr %t57, ptr %l35
  br label %bb22
bb22:
  %t58 = load ptr, ptr %l35, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Body", ptr %t58, i32 0, i32 4
  %t61 = getelementptr %"compiler/source:Span", ptr %t60, i32 0, i32 0
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  store i64 %t64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l2, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  br label %bb23
bb23:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %t68, i64 %t69)
  store i1 %t72, ptr %l42
  br label %bb24
bb24:
  %t73 = load i1, ptr %l42, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb25, label %bb26
bb25:
  br label %bb39
bb26:
  br label %bb27
bb27:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/emit:Emitter", ptr %t76, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/lower:Lowerer", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t82, i64 %t84)
  store ptr %t87, ptr %l49
  br label %bb28
bb28:
  %t88 = load ptr, ptr %l49, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 1
  %t91 = load { i64, [2 x i64] }, ptr %t90
  store { i64, [2 x i64] } %t91, ptr %l8
  %t93 = load { i64, [2 x i64] }, ptr %l8
  %t95 = extractvalue { i64, [2 x i64] } %t93, 0
  %t96 = icmp eq i64 %t95, 4
  br i1 %t96, label %bb29, label %bb30
bb29:
  %t98 = getelementptr { i64, [2 x i64] }, ptr %l8, i32 0, i32 1
  %t99 = getelementptr { i32 }, ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l9, !tbaa !23
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t102 = load i32, ptr %l9, !tbaa !23
  %t104 = sext i32 %t102 to i64
  store i64 %t104, ptr %l7, !tbaa !24
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb39
bb36:
  call void @__olang_check_failed(ptr @olang_loc_dd4469a9ae312a3a_602f574df5758ebe)
  unreachable
bb37:
  br label %bb38
bb38:
  br label %bb23
bb39:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %s0, ptr %t106, i64 %t107)
  store { i64, ptr } %t110, ptr %l59
  br label %bb40
bb40:
  %t111 = load i64, ptr %l6, !tbaa !24
  store i64 %t111, ptr %l60, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/emit:Emitter", ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/lower:Lowerer", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = load i64, ptr %l7, !tbaa !24
  %t123 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t118, i64 %t120)
  store ptr %t123, ptr %l66
  br label %bb41
bb41:
  %t124 = load ptr, ptr %l66, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Body", ptr %t124, i32 0, i32 4
  %t127 = getelementptr %"compiler/source:Span", ptr %t126, i32 0, i32 0
  %t128 = load i32, ptr %t127, !tbaa !23
  %t130 = sext i32 %t128 to i64
  %t131 = load i64, ptr %l60, !tbaa !24
  %t133 = sub i64 %t131, %t130
  store i64 %t133, ptr %l70, !tbaa !24
  %t134 = load i1, ptr %l3, !tbaa !21
  br i1 %t134, label %bb42, label %bb43
bb42:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d172, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb44
bb43:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d173, i32 0, i32 1) }, ptr %l72, !tbaa !27
  br label %bb44
bb44:
  %t136 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 1
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d174, i32 0, i32 1) }, 0
  %t141 = add i64 %t138, %t140
  %t142 = load i64, ptr %l70, !tbaa !24
  %t143 = call i64 @__olang_fmt_i64(ptr null, i64 %t142)
  %t144 = add i64 %t141, %t143
  %t145 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t137, i64 %t138)
  %t150 = getelementptr i8, ptr %t149, i64 %t138
  call void @olang_textcopy(ptr %t150, ptr %t139, i64 %t140)
  %t151 = getelementptr i8, ptr %t150, i64 %t140
  %t152 = call i64 @__olang_fmt_i64(ptr %t151, i64 %t142)
  %t153 = getelementptr i8, ptr %t151, i64 %t143
  call void @olang_textcopy(ptr %t153, ptr %t146, i64 %t147)
  %t154 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t149, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereusedReachRoot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/load:Import"
  %l11 = alloca i1
  %l14 = alloca i64
  %l21 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l28 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l33 = alloca i1
  %l37 = alloca i64
  %l40 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %l59 = alloca ptr
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca %"compiler/load:Import"
  %l72 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 41
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 71
  %t10 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb3
bb3:
  %t11 = load i64, ptr %l14, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  store i1 %t12, ptr %l11, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l11, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/emit:Emitter", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/load:Loader", ptr %t22, i32 0, i32 10
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l21
  br label %bb8
bb8:
  %t27 = load i64, ptr %l21, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb9, label %bb10
bb9:
  %t30 = load i64, ptr %l21, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l1, !tbaa !27
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6b46e2b64d028668_b921adb3c27b260c)
  unreachable
bb11:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/emit:Emitter", ptr %t38, i32 0, i32 71
  %t42 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eKeys_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t40)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t42, ptr %l27
  br label %bb12
bb12:
  %t43 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l27
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t43, ptr %l3
  br label %bb13
bb13:
  %t45 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l3)
  %t46 = extractvalue { i32, i64 } %t45, 1
  %t47 = extractvalue { i32, i64 } %t45, 0
  store i32 %t47, ptr %l31
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb15, label %ok.49, !prof !99
ok.49:
  store i64 %t46, ptr %l30
  br label %bb14
bb14:
  %t50 = load i64, ptr %l30, !tbaa !24
  store i64 %t50, ptr %l28, !tbaa !24
  br label %bb17
bb15:
  %t51 = load i32, ptr %l31, !tbaa !23
  %t52 = ashr i32 %t51, 16
  %t54 = icmp eq i32 %t52, 1
  store i1 %t54, ptr %l33, !tbaa !21
  br label %bb16
bb16:
  br label %bb20
bb17:
  %t55 = load i64, ptr %l28, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t55)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb13
bb20:
  br label %bb21
bb21:
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t60, ptr %l37
  br label %bb22
bb22:
  %t61 = load i64, ptr %l37, !tbaa !24
  %t62 = icmp sgt i64 %t61, 0
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb23, label %bb24
bb23:
  br label %bb53
bb24:
  br label %bb25
bb25:
  %t67 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l2)
  %t68 = extractvalue { i32, i64 } %t67, 1
  %t69 = extractvalue { i32, i64 } %t67, 0
  store i32 %t69, ptr %l43
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb27, label %ok.71, !prof !99
ok.71:
  store i64 %t68, ptr %l42
  br label %bb26
bb26:
  %t72 = load i64, ptr %l42, !tbaa !24
  store i64 %t72, ptr %l40, !tbaa !24
  br label %bb29
bb27:
  br label %bb28
bb28:
  br label %bb53
bb29:
  %t73 = load i64, ptr %l40, !tbaa !24
  store i64 %t73, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/emit:Emitter", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/load:Loader", ptr %t81, i32 0, i32 12
  %t84 = load i64, ptr %t83, !tbaa !24
  %t87 = icmp eq i64 %t74, %t84
  br i1 %t87, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i1, ptr %t93, i64 %t90
  %t95 = load i1, ptr %t94, !tbaa !31
  br i1 %t95, label %bb33, label %bb34
bb33:
  br label %bb52
bb34:
  br label %bb35
bb35:
  %t97 = load i64, ptr %l5, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i1, ptr %t100, i64 %t97
  store i1 true, ptr %t101, !tbaa !31
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/emit:Emitter", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = getelementptr %"compiler/load:Loader", ptr %t108, i32 0, i32 10
  %t111 = load i64, ptr %l5, !tbaa !24
  %t114 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t110, i64 %t111)
  store ptr %t114, ptr %l59
  br label %bb36
bb36:
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t117 = getelementptr %"compiler/load:Module", ptr %t115, i32 0, i32 11
  store ptr %t117, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb37
bb37:
  %t119 = load i64, ptr %l7, !tbaa !24
  store i64 %t119, ptr %l62, !tbaa !24
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t120)
  store i64 %t122, ptr %l64
  br label %bb38
bb38:
  %t123 = load i64, ptr %l62, !tbaa !24
  %t124 = load i64, ptr %l64, !tbaa !24
  %t125 = icmp slt i64 %t123, %t124
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb39, label %bb40
bb39:
  br label %bb51
bb40:
  br label %bb41
bb41:
  %t129 = load ptr, ptr %l6, !tbaa !29
  %t130 = load i64, ptr %l7, !tbaa !24
  %t133 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t129, i64 %t130)
  store %"compiler/load:Import" %t133, ptr %l69
  br label %bb42
bb42:
  %t134 = load %"compiler/load:Import", ptr %l69
  store %"compiler/load:Import" %t134, ptr %l8
  %t135 = getelementptr %"compiler/load:Import", ptr %l8, i32 0, i32 5
  %t136 = load i64, ptr %t135, !tbaa !24
  %t138 = icmp sge i64 %t136, 0
  br i1 %t138, label %bb43, label %bb44
bb43:
  %t140 = getelementptr %"compiler/load:Import", ptr %l8, i32 0, i32 5
  %t141 = load i64, ptr %t140, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i1, ptr %t144, i64 %t141
  %t146 = load i1, ptr %t145, !tbaa !31
  %t148 = xor i1 %t146, true
  store i1 %t148, ptr %l72, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb45
bb45:
  %t150 = load i1, ptr %l72, !tbaa !21
  br i1 %t150, label %bb46, label %bb47
bb46:
  %t151 = getelementptr %"compiler/load:Import", ptr %l8, i32 0, i32 5
  %t152 = load i64, ptr %t151, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t152)
  br label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t155 = load i64, ptr %l7, !tbaa !24
  %t157 = add i64 %t155, 1
  store i64 %t157, ptr %l7, !tbaa !24
  br label %bb37
bb51:
  br label %bb52
bb52:
  br label %bb21
bb53:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etestName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l42 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/emit:Emitter", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 12
  %t19 = load i64, ptr %t18, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t9, i64 %t19)
  store ptr %t22, ptr %l12
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l12, !tbaa !29
  store ptr %t23, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/load:Module", ptr %t24, i32 0, i32 8
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l14, !tbaa !27
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/emit:Emitter", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/lower:Lowerer", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t34, i64 %a1)
  store ptr %t39, ptr %l20
  br label %bb2
bb2:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t40, i32 0, i32 4
  %t43 = load %"compiler/source:Span", ptr %t42
  %t44 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t46 = call ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v0, { i64, ptr } %t44, %"compiler/source:Span" %t43)
  store ptr %t46, ptr %l23
  br label %bb3
bb3:
  %t47 = load ptr, ptr %l23, !tbaa !29
  store ptr %t47, ptr %l3, !tbaa !29
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = icmp eq ptr %t48, null
  br i1 %t50, label %bb4, label %bb5
bb4:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d175, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t52, ptr %l27, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l28, !tbaa !24
  %t55 = load i64, ptr %l28, !tbaa !24
  %t56 = mul i64 %t55, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l29, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l28, !tbaa !24
  %t65 = mul i64 %t64, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t66, ptr %l27, !tbaa !27
  %t67 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t67, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t68 = load ptr, ptr %l3, !tbaa !29
  store ptr %t68, ptr %l30, !tbaa !29
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = getelementptr %"compiler/load:Module", ptr %t69, i32 0, i32 6
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_d881900b10974f5c_c7362717879c6590)
  unreachable
bb8:
  br label %bb9
bb9:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t78 = getelementptr %"compiler/load:Module", ptr %t76, i32 0, i32 6
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t82 = getelementptr %"compiler/source:Source", ptr %t79, i32 0, i32 1
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/emit:Emitter", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/load:Loader", ptr %t90, i32 0, i32 3
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t94 = load ptr, ptr %l30, !tbaa !29
  %t97 = call { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t94, { i64, ptr } %t83, ptr %t93)
  store { i64, ptr } %t97, ptr %l42
  br label %bb10
bb10:
  %t98 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t98, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ethunkSym(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  %t4 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = inttoptr i64 0 to ptr
  %t11 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s0, ptr %t8, ptr %t5, i32 %a2)
  store { i64, ptr } %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t20 = call { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %s0, ptr %s0, { i64, ptr } %t18)
  store { i64, ptr } %t20, ptr %l10
  br label %bb2
bb2:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 1
  %t25 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d176, i32 0, i32 1) }, 0
  %t26 = add i64 %t23, %t25
  %t27 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t27, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = add i64 %t26, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t24, i64 %t25)
  %t33 = getelementptr i8, ptr %t32, i64 %t25
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etraced(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/emit:Emitter", ptr %t6, i32 0, i32 5
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d177, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t21, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t22 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = load i32, ptr %l1, !tbaa !23
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t27 = icmp eq i32 %t23, %t24
  br i1 %t27, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %s2, ptr %t29, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d178, i32 0, i32 1) })
  br label %bb6
bb5:
  br label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d179, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t31, ptr %l14, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  store i64 %t33, ptr %l15, !tbaa !24
  %t34 = load i64, ptr %l15, !tbaa !24
  %t35 = mul i64 %t34, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t35)
  %t37 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  store { i64, ptr } %t38, ptr %l16, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l15, !tbaa !24
  %t44 = mul i64 %t43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t40, ptr %t42, i64 %t44, i1 false)
  %t45 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t45, ptr %l14, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t46 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/emit:Emitter", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l20
  br label %bb8
bb8:
  %t55 = load i1, ptr %l20, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/emit:Emitter", ptr %t58, i32 0, i32 26
  store i1 true, ptr %t60, !tbaa !21
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l23, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/emit:Emitter", ptr %t62, i32 0, i32 3
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t68 = inttoptr i64 0 to ptr
  %t71 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s3, ptr %t68, ptr %t65, i32 %t66)
  store { i64, ptr } %t71, ptr %l28
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t72 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d180, i32 0, i32 1) }, 1
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d180, i32 0, i32 1) }, 0
  %t74 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t77 = add i64 %t73, %t76
  %t78 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t77)
  call void @olang_textcopy(ptr %t78, ptr %t72, i64 %t73)
  %t79 = getelementptr i8, ptr %t78, i64 %t73
  call void @olang_textcopy(ptr %t79, ptr %t75, i64 %t76)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  %t83 = extractvalue { i64, ptr } %t81, 0
  %t84 = extractvalue { i64, ptr } %t81, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t89 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %s3, ptr %t89, { i64, ptr } %t88)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %t91, i32 %t92)
  br label %bb14
bb14:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/emit:Emitter", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load i32, ptr %l1, !tbaa !23
  %t101 = inttoptr i64 0 to ptr
  %t104 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %s0, ptr %t101, ptr %t98, i32 %t99)
  store { i64, ptr } %t104, ptr %l37
  br label %bb15
bb15:
  %t105 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = extractvalue { i64, ptr } %t105, 0
  %t108 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t107)
  call void @olang_textcopy(ptr %t108, ptr %t106, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t110, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2etypeHome(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i1
  %l18 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 18 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb4:
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l18
  br label %bb5
bb5:
  %t29 = load i32, ptr %l18, !tbaa !23
  %t30 = icmp ne i32 %t29, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t32 = load i1, ptr %l15, !tbaa !21
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t33 = load i64, ptr @G_2ecompiler_2femit_2eHomeInst, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l21, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i32, ptr %l3, !tbaa !23
  %t40 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t36, i32 %t37)
  store i32 %t40, ptr %l24
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i32, ptr %l24, !tbaa !23
  %t43 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t43, ptr %l25
  br label %bb11
bb11:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewrapper(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i32
  %l40 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i32
  %l46 = alloca i1
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l61 = alloca { i64, ptr }
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l82 = alloca %"std/prelude/text:StringBuilder"
  %l83 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l93 = alloca i1
  %l94 = alloca ptr
  %l98 = alloca { i64, ptr }
  %l102 = alloca ptr
  %l103 = alloca { i64, ptr }
  %l107 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:Emitter", ptr %t1, i32 0, i32 19
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store { i64, ptr } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t11 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d181, i32 0, i32 1) })
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
  store i64 %t16, ptr %l17, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l23, !tbaa !27
  store i64 %t21, ptr %l24, !tbaa !24
  %t24 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l25, !tbaa !24
  %t26 = icmp sge i64 0, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l24, !tbaa !24
  %t29 = icmp sle i64 0, %t28
  br i1 %t29, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f5feee0c0f7dd320_8e2d9d91f1e1268c)
  unreachable
bb8:
  %t31 = load i64, ptr %l24, !tbaa !24
  %t32 = load i64, ptr %l25, !tbaa !24
  %t33 = icmp sle i64 %t31, %t32
  br i1 %t33, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_f5feee0c0f7dd320_8e2d9d91f1e1268c)
  unreachable
bb10:
  %t35 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = getelementptr i8, ptr %t36, i64 0
  %t39 = sub i64 %t37, 0
  %t40 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t41 = insertvalue { i64, ptr } %t40, ptr %t38, 1
  store { i64, ptr } %t41, ptr %l5, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/emit:Emitter", ptr %t43, i32 0, i32 18
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t45, i64 %t46)
  store { i64, ptr } %t49, ptr %l33
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f5feee0c0f7dd320_8e2d9d91f1e1268c)
  unreachable
bb12:
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d182, i32 0, i32 1) }, 0
  %t52 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 1
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t55 = add i64 %t51, %t54
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d183, i32 0, i32 1) }, 0
  %t58 = add i64 %t55, %t57
  %t59 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t58)
  call void @olang_textcopy(ptr %t59, ptr %t50, i64 %t51)
  %t60 = getelementptr i8, ptr %t59, i64 %t51
  call void @olang_textcopy(ptr %t60, ptr %t53, i64 %t54)
  %t61 = getelementptr i8, ptr %t60, i64 %t54
  call void @olang_textcopy(ptr %t61, ptr %t56, i64 %t57)
  %t62 = insertvalue { i64, ptr } undef, i64 %t58, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t59, 1
  store { i64, ptr } %t63, ptr %l6, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t69 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } %t66)
  %t70 = extractvalue { i32, i64 } %t69, 1
  %t71 = extractvalue { i32, i64 } %t69, 0
  store i32 %t71, ptr %l39
  %t72 = icmp ne i32 %t71, 0
  br i1 %t72, label %bb14, label %ok.73, !prof !99
ok.73:
  store i64 %t70, ptr %l38
  br label %bb13
bb13:
  %t74 = load i64, ptr %l38, !tbaa !24
  store i64 %t74, ptr %l35, !tbaa !24
  br label %bb16
bb14:
  br label %bb15
bb15:
  store i64 -1, ptr %l35, !tbaa !24
  br label %bb16
bb16:
  %t75 = load i64, ptr %l35, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  %t76 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t78 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %s0, { i64, ptr } %t76, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d184, i32 0, i32 1) })
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l43
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb18, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l42
  br label %bb17
bb17:
  %t83 = load i64, ptr %l42, !tbaa !24
  store i64 %t83, ptr %l40, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  store i64 -1, ptr %l40, !tbaa !24
  br label %bb20
bb20:
  %t84 = load i64, ptr %l40, !tbaa !24
  store i64 %t84, ptr %l8, !tbaa !24
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = icmp slt i64 %t85, 0
  br i1 %t87, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb23
bb22:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l7, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  store i1 %t93, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t95 = load i1, ptr %l46, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d185, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t96, ptr %l51, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  store i64 %t98, ptr %l52, !tbaa !24
  %t99 = load i64, ptr %l52, !tbaa !24
  %t100 = mul i64 %t99, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t100)
  %t102 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  store { i64, ptr } %t103, ptr %l53, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l52, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  %t110 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t110, ptr %l51, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t111 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t112 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t112, ptr %l54, !tbaa !27
  %t113 = load i64, ptr %l7, !tbaa !24
  store i64 %t113, ptr %l55, !tbaa !24
  %t114 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t114, 0
  store i64 %t115, ptr %l56, !tbaa !24
  %t116 = icmp sge i64 0, 0
  br i1 %t116, label %bb27, label %bb28
bb27:
  %t118 = load i64, ptr %l55, !tbaa !24
  %t119 = icmp sle i64 0, %t118
  br i1 %t119, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_fb18e47b3c77ad7d_7c94e7cf0a0fcab9)
  unreachable
bb29:
  %t121 = load i64, ptr %l55, !tbaa !24
  %t122 = load i64, ptr %l56, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_fb18e47b3c77ad7d_7c94e7cf0a0fcab9)
  unreachable
bb31:
  %t125 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = load i64, ptr %l55, !tbaa !24
  %t128 = getelementptr i8, ptr %t126, i64 0
  %t129 = sub i64 %t127, 0
  %t130 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t128, 1
  store { i64, ptr } %t131, ptr %l9, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t133, ptr %l61, !tbaa !27
  %t134 = load i64, ptr %l7, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t140 = add i64 %t134, %t137
  store i64 %t140, ptr %l65, !tbaa !24
  %t141 = load i64, ptr %l8, !tbaa !24
  store i64 %t141, ptr %l66, !tbaa !24
  %t142 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  store i64 %t143, ptr %l67, !tbaa !24
  %t144 = load i64, ptr %l65, !tbaa !24
  %t145 = icmp sge i64 %t144, 0
  br i1 %t145, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_fb18e47b3c77ad7d_7c94e7cf0a0fcab9)
  unreachable
bb33:
  %t147 = load i64, ptr %l65, !tbaa !24
  %t148 = load i64, ptr %l66, !tbaa !24
  %t149 = icmp sle i64 %t147, %t148
  br i1 %t149, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_7f6652826e00de1e_418f3021b2f06a1a)
  unreachable
bb35:
  %t151 = load i64, ptr %l66, !tbaa !24
  %t152 = load i64, ptr %l67, !tbaa !24
  %t153 = icmp sle i64 %t151, %t152
  br i1 %t153, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_7f6652826e00de1e_418f3021b2f06a1a)
  unreachable
bb37:
  %t155 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l65, !tbaa !24
  %t158 = load i64, ptr %l66, !tbaa !24
  %t159 = getelementptr i8, ptr %t156, i64 %t157
  %t160 = sub i64 %t158, %t157
  %t161 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t159, 1
  store { i64, ptr } %t162, ptr %l10, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t164, ptr %l72, !tbaa !27
  %t165 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d186, i32 0, i32 1) }, 0
  store i64 %t165, ptr %l73, !tbaa !24
  %t166 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t170 = sub i64 %t168, 1
  store i64 %t170, ptr %l76, !tbaa !24
  %t171 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 0
  store i64 %t172, ptr %l77, !tbaa !24
  %t173 = load i64, ptr %l73, !tbaa !24
  %t174 = icmp sge i64 %t173, 0
  br i1 %t174, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_7f6652826e00de1e_418f3021b2f06a1a)
  unreachable
bb39:
  %t176 = load i64, ptr %l73, !tbaa !24
  %t177 = load i64, ptr %l76, !tbaa !24
  %t178 = icmp sle i64 %t176, %t177
  br i1 %t178, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_679011f6b0c6ee1b_3818b84a191b3b77)
  unreachable
bb41:
  %t180 = load i64, ptr %l76, !tbaa !24
  %t181 = load i64, ptr %l77, !tbaa !24
  %t182 = icmp sle i64 %t180, %t181
  br i1 %t182, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_679011f6b0c6ee1b_3818b84a191b3b77)
  unreachable
bb43:
  %t184 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = load i64, ptr %l73, !tbaa !24
  %t187 = load i64, ptr %l76, !tbaa !24
  %t188 = getelementptr i8, ptr %t185, i64 %t186
  %t189 = sub i64 %t187, %t186
  %t190 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t188, 1
  store { i64, ptr } %t191, ptr %l11, !tbaa !27
  %t193 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t193, ptr %l82
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_679011f6b0c6ee1b_3818b84a191b3b77)
  unreachable
bb45:
  %t194 = load %"std/prelude/text:StringBuilder", ptr %l82
  store %"std/prelude/text:StringBuilder" %t194, ptr %l12
  store ptr %l12, ptr %l83, !tbaa !29
  %t195 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t195, ptr %l84, !tbaa !27
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/emit:Emitter", ptr %t196, i32 0, i32 18
  %t202 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s0, ptr %t198, i64 %a1)
  store { i64, ptr } %t202, ptr %l88
  br label %bb46
bb46:
  %t203 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d187, i32 0, i32 1) }, 0
  %t209 = add i64 %t206, %t208
  %t210 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t211 = extractvalue { i64, ptr } %t210, 1
  %t212 = extractvalue { i64, ptr } %t210, 0
  %t213 = add i64 %t209, %t212
  %t214 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, 1
  %t215 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d188, i32 0, i32 1) }, 0
  %t216 = add i64 %t213, %t215
  %t218 = extractvalue { i64, ptr } %t203, 1
  %t219 = extractvalue { i64, ptr } %t203, 0
  %t220 = add i64 %t216, %t219
  %t221 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d189, i32 0, i32 1) }, 1
  %t222 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d189, i32 0, i32 1) }, 0
  %t223 = add i64 %t220, %t222
  %t224 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t223)
  call void @olang_textcopy(ptr %t224, ptr %t205, i64 %t206)
  %t225 = getelementptr i8, ptr %t224, i64 %t206
  call void @olang_textcopy(ptr %t225, ptr %t207, i64 %t208)
  %t226 = getelementptr i8, ptr %t225, i64 %t208
  call void @olang_textcopy(ptr %t226, ptr %t211, i64 %t212)
  %t227 = getelementptr i8, ptr %t226, i64 %t212
  call void @olang_textcopy(ptr %t227, ptr %t214, i64 %t215)
  %t228 = getelementptr i8, ptr %t227, i64 %t215
  call void @olang_textcopy(ptr %t228, ptr %t218, i64 %t219)
  %t229 = getelementptr i8, ptr %t228, i64 %t219
  call void @olang_textcopy(ptr %t229, ptr %t221, i64 %t222)
  %t230 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t224, 1
  %t233 = extractvalue { i64, ptr } %t231, 0
  %t234 = extractvalue { i64, ptr } %t231, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load ptr, ptr %l83, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t239, { i64, ptr } %t238)
  br label %bb47
bb47:
  %t241 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t241, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d190, i32 0, i32 1) })
  store i1 %t243, ptr %l93
  br label %bb48
bb48:
  %t244 = load i1, ptr %l93, !tbaa !21
  br i1 %t244, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l12, ptr %l94, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/emit:Emitter", ptr %t245, i32 0, i32 18
  %t248 = load i64, ptr %l2, !tbaa !24
  %t251 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s4, ptr %t247, i64 %t248)
  store { i64, ptr } %t251, ptr %l98
  br label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %l12, ptr %l102, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t252, ptr %l103, !tbaa !27
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/emit:Emitter", ptr %t253, i32 0, i32 18
  %t256 = load i64, ptr %l2, !tbaa !24
  %t259 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s6, ptr %t255, i64 %t256)
  store { i64, ptr } %t259, ptr %l107
  br label %bb53
bb51:
  %t260 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t261 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d191, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d191, i32 0, i32 1) }, 0
  %t263 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t263, 1
  %t265 = extractvalue { i64, ptr } %t263, 0
  %t266 = add i64 %t262, %t265
  %t267 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 1
  %t268 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d192, i32 0, i32 1) }, 0
  %t269 = add i64 %t266, %t268
  %t271 = extractvalue { i64, ptr } %t260, 1
  %t272 = extractvalue { i64, ptr } %t260, 0
  %t273 = add i64 %t269, %t272
  %t274 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d193, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d193, i32 0, i32 1) }, 0
  %t276 = add i64 %t273, %t275
  %t277 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t276)
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
  %t288 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t287)
  call void @llvm.memcpy.p0.p0.i64(ptr %t288, ptr %t286, i64 %t287, i1 false)
  %t289 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t290 = insertvalue { i64, ptr } %t289, ptr %t288, 1
  %t291 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t291, { i64, ptr } %t290)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb53:
  %t293 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t294 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t295 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d194, i32 0, i32 1) }, 1
  %t296 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d194, i32 0, i32 1) }, 0
  %t297 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = add i64 %t296, %t299
  %t301 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d195, i32 0, i32 1) }, 1
  %t302 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d195, i32 0, i32 1) }, 0
  %t303 = add i64 %t300, %t302
  %t304 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t304, 1
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = add i64 %t303, %t306
  %t308 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d196, i32 0, i32 1) }, 1
  %t309 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d196, i32 0, i32 1) }, 0
  %t310 = add i64 %t307, %t309
  %t312 = extractvalue { i64, ptr } %t293, 1
  %t313 = extractvalue { i64, ptr } %t293, 0
  %t314 = add i64 %t310, %t313
  %t315 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d197, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d197, i32 0, i32 1) }, 0
  %t317 = add i64 %t314, %t316
  %t319 = extractvalue { i64, ptr } %t294, 1
  %t320 = extractvalue { i64, ptr } %t294, 0
  %t321 = add i64 %t317, %t320
  %t322 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d198, i32 0, i32 1) }, 1
  %t323 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d198, i32 0, i32 1) }, 0
  %t324 = add i64 %t321, %t323
  %t325 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t324)
  call void @olang_textcopy(ptr %t325, ptr %t295, i64 %t296)
  %t326 = getelementptr i8, ptr %t325, i64 %t296
  call void @olang_textcopy(ptr %t326, ptr %t298, i64 %t299)
  %t327 = getelementptr i8, ptr %t326, i64 %t299
  call void @olang_textcopy(ptr %t327, ptr %t301, i64 %t302)
  %t328 = getelementptr i8, ptr %t327, i64 %t302
  call void @olang_textcopy(ptr %t328, ptr %t305, i64 %t306)
  %t329 = getelementptr i8, ptr %t328, i64 %t306
  call void @olang_textcopy(ptr %t329, ptr %t308, i64 %t309)
  %t330 = getelementptr i8, ptr %t329, i64 %t309
  call void @olang_textcopy(ptr %t330, ptr %t312, i64 %t313)
  %t331 = getelementptr i8, ptr %t330, i64 %t313
  call void @olang_textcopy(ptr %t331, ptr %t315, i64 %t316)
  %t332 = getelementptr i8, ptr %t331, i64 %t316
  call void @olang_textcopy(ptr %t332, ptr %t319, i64 %t320)
  %t333 = getelementptr i8, ptr %t332, i64 %t320
  call void @olang_textcopy(ptr %t333, ptr %t322, i64 %t323)
  %t334 = insertvalue { i64, ptr } undef, i64 %t324, 0
  %t335 = insertvalue { i64, ptr } %t334, ptr %t325, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = extractvalue { i64, ptr } %t335, 1
  %t339 = mul i64 %t337, 1
  %t340 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t339)
  call void @llvm.memcpy.p0.p0.i64(ptr %t340, ptr %t338, i64 %t339, i1 false)
  %t341 = insertvalue { i64, ptr } undef, i64 %t337, 0
  %t342 = insertvalue { i64, ptr } %t341, ptr %t340, 1
  %t343 = load ptr, ptr %l102, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %t343, { i64, ptr } %t342)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s6)
  br label %bb55
bb55:
  %t346 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l12)
  store { i64, ptr } %t346, ptr %l113
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  %t347 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t347, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2ebufferCopy(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l27 = alloca i1
  %l33 = alloca i1
  %l45 = alloca i32
  %l48 = alloca i32
  %l55 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l66 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l72 = alloca i1
  %l73 = alloca i1
  %l75 = alloca i1
  %l76 = alloca { i64, ptr }
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca i1
  %l82 = alloca { i64, ptr }
  %l84 = alloca i1
  %l90 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca { i64, ptr }
  %l100 = alloca i64
  %l104 = alloca i64
  %l107 = alloca i64
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca { i64, ptr }
  %l139 = alloca i32
  %l142 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/emit:fnEm", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 0
  %t7 = load { i64, [2 x i64] }, ptr %t6
  store { i64, [2 x i64] } %t7, ptr %l2
  %t9 = load { i64, [2 x i64] }, ptr %l2
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 3
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb6
bb2:
  %t16 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t17 = getelementptr { i32, i32 }, ptr %t16, i32 0, i32 0
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 8}
  store i32 %t18, ptr %l3
  %t20 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t21 = getelementptr { i32, i32 }, ptr %t20, i32 0, i32 1
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l4, !tbaa !23
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb3, label %bb4
bb3:
  %t31 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t33 = trunc i64 5 to i32
  %t34 = icmp eq i32 %t31, %t33
  %t36 = xor i1 %t34, true
  store i1 %t36, ptr %l33, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t38 = load i1, ptr %l33, !tbaa !21
  store i1 %t38, ptr %l27, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l27, !tbaa !21
  br i1 %t39, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t41 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t42 = getelementptr { i32, i32 }, ptr %t41, i32 0, i32 0
  %t43 = load i32, ptr %t42, !range !{i32 0, i32 8}
  store i32 %t43, ptr %l5
  %t45 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { i32, i32 }, ptr %t45, i32 0, i32 1
  %t47 = load i32, ptr %t46
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/emit:fnEm", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/emit:Emitter", ptr %t52, i32 0, i32 3
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l7, !tbaa !29
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t57, i32 %t47)
  store i32 %t61, ptr %l45
  br label %bb10
bb10:
  %t62 = load i32, ptr %l45, !tbaa !23
  store i32 %t62, ptr %l8, !tbaa !23
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t64 = load i32, ptr %l8, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l48
  br label %bb11
bb11:
  %t68 = load i32, ptr %l48, !range !{i32 0, i32 33}
  %t70 = trunc i64 18 to i32
  %t71 = icmp eq i32 %t68, %t70
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t77 = load i32, ptr %l8, !tbaa !23
  %t80 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t76, i32 %t77)
  store i32 %t80, ptr %l55
  br label %bb15
bb15:
  %t81 = load i32, ptr %l55, !tbaa !23
  store i32 %t81, ptr %l9, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/emit:fnEm", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t87 = getelementptr %"compiler/emit:Emitter", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/load:Loader", ptr %t91, i32 0, i32 3
  %t94 = load ptr, ptr %t93, !tbaa !29
  store ptr %t94, ptr %l60, !tbaa !29
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t96 = load i32, ptr %l9, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t95, i32 %t96)
  store i32 %t99, ptr %l63
  br label %bb16
bb16:
  %t100 = load ptr, ptr %l60, !tbaa !29
  %t101 = load i32, ptr %l63, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t100, i32 %t101)
  store { i64, ptr } %t102, ptr %l64
  br label %bb17
bb17:
  %t103 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t103, ptr %l10, !tbaa !27
  %t104 = load ptr, ptr %l7, !tbaa !29
  %t106 = getelementptr %"compiler/types:Table", ptr %t104, i32 0, i32 14
  store ptr %t106, ptr %l66, !tbaa !29
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t108 = load i32, ptr %l9, !tbaa !23
  %t111 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t107, i32 %t108)
  store i64 %t111, ptr %l69
  br label %bb18
bb18:
  %t112 = load ptr, ptr %l66, !tbaa !29
  %t113 = load i64, ptr %l69, !tbaa !24
  %t114 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store { i64, ptr } %t114, ptr %l70
  br label %bb19
bb19:
  %t115 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t115, ptr %l11, !tbaa !27
  %t116 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t118 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t116, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d199, i32 0, i32 1) })
  store i1 %t118, ptr %l72
  br label %bb20
bb20:
  %t119 = load i1, ptr %l72, !tbaa !21
  br i1 %t119, label %bb21, label %bb22
bb21:
  %t120 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t120, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d200, i32 0, i32 1) })
  store i1 %t122, ptr %l75
  br label %bb23
bb22:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb24
bb23:
  %t123 = load i1, ptr %l75, !tbaa !21
  store i1 %t123, ptr %l73, !tbaa !21
  br label %bb24
bb24:
  %t124 = load i1, ptr %l73, !tbaa !21
  br i1 %t124, label %bb25, label %bb26
bb25:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d201, i32 0, i32 1) }, ptr %l76, !tbaa !27
  br label %bb35
bb26:
  %t125 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t125, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d202, i32 0, i32 1) })
  store i1 %t127, ptr %l78
  br label %bb27
bb27:
  %t128 = load i1, ptr %l78, !tbaa !21
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t129 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t131 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t129, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d203, i32 0, i32 1) })
  store i1 %t131, ptr %l81
  br label %bb30
bb29:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb31
bb30:
  %t132 = load i1, ptr %l81, !tbaa !21
  store i1 %t132, ptr %l79, !tbaa !21
  br label %bb31
bb31:
  %t133 = load i1, ptr %l79, !tbaa !21
  br i1 %t133, label %bb32, label %bb33
bb32:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d204, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb34
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d205, i32 0, i32 1) }, ptr %l82, !tbaa !27
  br label %bb34
bb34:
  %t134 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t134, ptr %l76, !tbaa !27
  br label %bb35
bb35:
  %t135 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t135, ptr %l12, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t137 = load ptr, ptr @__olang_prog_scope
  %t139 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t137, ptr %s0, { i64, ptr } %t136, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d206, i32 0, i32 1) })
  store i1 %t139, ptr %l84
  br label %bb36
bb36:
  %t140 = load i1, ptr %l84, !tbaa !21
  br i1 %t140, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/emit:fnEm", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/emit:Emitter", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t149 = load i32, ptr %l8, !tbaa !23
  %t152 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %s0, ptr %t148, i32 %t149)
  store { i64, ptr } %t152, ptr %l90
  br label %bb40
bb40:
  %t153 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t153, ptr %l13, !tbaa !27
  %t154 = load ptr, ptr %l7, !tbaa !29
  store ptr %t154, ptr %l91, !tbaa !29
  %t155 = load ptr, ptr %l7, !tbaa !29
  %t156 = load i32, ptr %l8, !tbaa !23
  %t159 = call i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l94
  br label %bb41
bb41:
  %t160 = load ptr, ptr %l91, !tbaa !29
  %t161 = load i32, ptr %l94, !tbaa !23
  %t162 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t160, i32 %t161)
  store { i64, ptr } %t162, ptr %l95
  br label %bb42
bb42:
  %t163 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t163, ptr %l14, !tbaa !27
  store i64 0, ptr %l15, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t172 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t166, i64 %t169)
  store i64 %t172, ptr %l100
  br label %bb43
bb43:
  %t173 = load i64, ptr %l100, !tbaa !24
  store i64 %t173, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t174 = load i64, ptr %l16, !tbaa !24
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = icmp sgt i64 %t174, %t175
  br i1 %t178, label %bb44, label %bb45
bb44:
  %t180 = load i64, ptr %l17, !tbaa !24
  %t182 = icmp sgt i64 %t180, 0
  br i1 %t182, label %bb46, label %bb47
bb45:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb49
bb46:
  %t184 = load i64, ptr %l16, !tbaa !24
  %t185 = load i64, ptr %l15, !tbaa !24
  %t188 = sub i64 %t184, %t185
  %t189 = load i64, ptr %l17, !tbaa !24
  %t192 = add i64 %t188, %t189
  %t194 = sub i64 %t192, 1
  %t195 = load i64, ptr %l17, !tbaa !24
  %t198 = sdiv i64 %t194, %t195
  store i64 %t198, ptr %l107, !tbaa !24
  br label %bb48
bb47:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb48
bb48:
  %t200 = load i64, ptr %l107, !tbaa !24
  store i64 %t200, ptr %l104, !tbaa !24
  br label %bb49
bb49:
  %t201 = load i64, ptr %l104, !tbaa !24
  store i64 %t201, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb50
bb50:
  %t202 = load i64, ptr %l19, !tbaa !24
  %t203 = load i64, ptr %l18, !tbaa !24
  %t206 = icmp slt i64 %t202, %t203
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb51, label %bb52
bb51:
  br label %bb62
bb52:
  br label %bb53
bb53:
  %t210 = load i64, ptr %l15, !tbaa !24
  %t211 = load i64, ptr %l19, !tbaa !24
  %t212 = load i64, ptr %l17, !tbaa !24
  %t215 = mul i64 %t211, %t212
  %t218 = add i64 %t210, %t215
  store i64 %t218, ptr %l20, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/emit:fnEm", ptr %t220, i32 0, i32 0
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/emit:Emitter", ptr %t223, i32 0, i32 0
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = getelementptr %"compiler/generic:Program", ptr %t226, i32 0, i32 0
  %t229 = load ptr, ptr %t228, !tbaa !29
  %t231 = getelementptr %"compiler/load:Loader", ptr %t229, i32 0, i32 3
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t233 = load i64, ptr %l20, !tbaa !24
  %t235 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t236 = load ptr, ptr %t235, !tbaa !27
  %t237 = getelementptr i32, ptr %t236, i64 %t233
  %t238 = load i32, ptr %t237, !tbaa !33
  %t241 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t232, i32 %t238)
  store { i64, ptr } %t241, ptr %l132
  br label %bb54
bb54:
  %t242 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t243 = load ptr, ptr @__olang_prog_scope
  %t244 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t246 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %t243, { i64, ptr } %t244, { i64, ptr } %t242)
  store i1 %t246, ptr %l134
  br label %bb55
bb55:
  %t247 = load i1, ptr %l134, !tbaa !21
  br i1 %t247, label %bb56, label %bb57
bb56:
  %t248 = load ptr, ptr %l7, !tbaa !29
  %t249 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t249, ptr %l136, !tbaa !27
  %t250 = load i64, ptr %l20, !tbaa !24
  %t252 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr i32, ptr %t253, i64 %t250
  %t255 = load i32, ptr %t254, !tbaa !33
  %t258 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t248, i32 %t255)
  store i32 %t258, ptr %l139
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t259 = load ptr, ptr %l7, !tbaa !29
  %t263 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t259, i32 %a1)
  store i32 %t263, ptr %l142
  br label %bb59
bb59:
  %t264 = load i32, ptr %l139, !tbaa !23
  %t265 = load i32, ptr %l142, !tbaa !23
  %t266 = icmp eq i32 %t264, %t265
  call void @__olang_scope_close(ptr %s0)
  store i1 %t266, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t268 = load i64, ptr %l19, !tbaa !24
  %t270 = add i64 %t268, 1
  store i64 %t270, ptr %l19, !tbaa !24
  br label %bb50
bb62:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eplainWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %l17 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 8
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, [1 x i64] }, ptr %t13
  store { i64, [1 x i64] } %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 8}
  store i32 %t20, ptr %l4
  br label %bb5
bb4:
  br label %bb27
bb5:
  %t23 = load { i64, [1 x i64] }, ptr %l3
  %t28 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erefIs(ptr %v0, ptr %a0, { i64, [1 x i64] } %t23, i64 %a2)
  store i1 %t28, ptr %l17
  br label %bb6
bb6:
  %t29 = load i1, ptr %l17, !tbaa !21
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t30 = load i32, ptr %l4, !range !{i32 0, i32 8}
  %t32 = trunc i64 0 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb26
bb9:
  br label %bb19
bb10:
  %t35 = load i32, ptr %l4, !range !{i32 0, i32 8}
  %t37 = trunc i64 2 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb11, label %bb12
bb11:
  br label %bb19
bb12:
  %t40 = load i32, ptr %l4, !range !{i32 0, i32 8}
  %t42 = trunc i64 4 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  %t45 = load i32, ptr %l4, !range !{i32 0, i32 8}
  %t47 = trunc i64 5 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  %t50 = load i32, ptr %l4, !range !{i32 0, i32 8}
  %t52 = trunc i64 7 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_efeca4a527577807_589cfb9b46e56fc3)
  unreachable
bb25:
  %t55 = load i1, ptr %l19, !tbaa !21
  store i1 %t55, ptr %l18, !tbaa !21
  br label %bb26
bb26:
  %t56 = load i1, ptr %l18, !tbaa !21
  store i1 %t56, ptr %l5, !tbaa !21
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_be60a18777a318a6_1ca0557f7b352842)
  unreachable
bb32:
  %t57 = load i1, ptr %l5, !tbaa !21
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ervalue(ptr %v0, ptr %v1, ptr %a0, { i64, [15 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [15 x i64] }
  %l3 = alloca ptr
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca i32
  %l7 = alloca %"compiler/mir:Lvalue"
  %l8 = alloca { { i64, ptr }, i32 }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %lp11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca %"compiler/mir:Range"
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca %"compiler/mir:Range"
  %l18 = alloca %"compiler/mir:Lvalue"
  %l19 = alloca { { i64, ptr }, i32 }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i32
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca i64
  %l25 = alloca %"compiler/mir:Range"
  %l26 = alloca { i64, [1 x i64] }
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca i32
  %l29 = alloca i32
  %lp30 = alloca ptr
  %lp31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %lp33 = alloca ptr
  %l34 = alloca { i64, [1 x i64] }
  %l35 = alloca i32
  %l36 = alloca { i64, [4 x i64] }
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca %"compiler/mir:Lvalue"
  %l39 = alloca { i64, [4 x i64] }
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca i32
  %l42 = alloca { i64, [2 x i64] }
  %l43 = alloca i32
  %l44 = alloca { i64, [1 x i64] }
  %l45 = alloca %"compiler/mir:Range"
  %l46 = alloca %"compiler/mir:Range"
  %l47 = alloca { i64, [4 x i64] }
  %l48 = alloca i32
  %l49 = alloca i32
  %l50 = alloca { i64, [1 x i64] }
  %l51 = alloca { i64, [1 x i64] }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, [1 x i64] }
  %l58 = alloca { i64, [4 x i64] }
  %l59 = alloca { i64, [1 x i64] }
  %l62 = alloca { i64, [4 x i64] }
  %l65 = alloca { i64, [1 x i64] }
  %l66 = alloca { i64, [4 x i64] }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca { i64, [1 x i64] }
  %l72 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca { { i64, ptr }, i32 }
  %l74 = alloca { i64, ptr }
  %l75 = alloca { i64, [4 x i64] }
  %l85 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l99 = alloca { { i64, ptr }, i32 }
  %l102 = alloca ptr
  %l105 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l146 = alloca { { i64, ptr }, i32 }
  %l149 = alloca ptr
  %l150 = alloca ptr
  %l153 = alloca i32
  %l154 = alloca i32
  %l155 = alloca { i64, ptr }
  %l160 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l168 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l188 = alloca { i64, ptr }
  %l194 = alloca ptr
  %l197 = alloca i32
  %l198 = alloca i32
  %l202 = alloca ptr
  %l205 = alloca i1
  %l209 = alloca { i64, ptr }
  %l217 = alloca i1
  %l218 = alloca ptr
  %l219 = alloca { i64, [1 x i64] }
  %l222 = alloca i64
  %l224 = alloca { i64, ptr }
  %l227 = alloca i64
  %l230 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l244 = alloca i1
  %l249 = alloca { i64, ptr }
  %l250 = alloca ptr
  %l251 = alloca { i64, [1 x i64] }
  %l254 = alloca i64
  %l256 = alloca { i64, ptr }
  %l259 = alloca i64
  %l262 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l268 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l296 = alloca { i64, ptr }
  %l310 = alloca { i64, ptr }
  %l316 = alloca ptr
  %l320 = alloca { i64, ptr }
  %l324 = alloca { i64, ptr }
  %l331 = alloca i1
  %l334 = alloca { i64, ptr }
  %l337 = alloca { i64, ptr }
  %l340 = alloca { i64, ptr }
  %l341 = alloca ptr
  %l346 = alloca { i64, ptr }
  %l348 = alloca { i64, ptr }
  %l351 = alloca ptr
  %l354 = alloca { i64, ptr }
  %l358 = alloca { i64, ptr }
  %l370 = alloca { i64, ptr }
  %l376 = alloca ptr
  %l379 = alloca { i64, ptr }
  %l382 = alloca { i64, ptr }
  %l387 = alloca { i64, ptr }
  %l394 = alloca ptr
  %l398 = alloca { i64, ptr }
  %l399 = alloca { i64, ptr }
  %l402 = alloca i32
  %l403 = alloca { i64, ptr }
  %l404 = alloca i64
  %l405 = alloca { i64, ptr }
  %l406 = alloca ptr
  %l407 = alloca { i64, ptr }
  %l410 = alloca { i64, ptr }
  %l413 = alloca { i64, ptr }
  %l418 = alloca { i64, ptr }
  %l424 = alloca ptr
  %l428 = alloca { i64, ptr }
  %l429 = alloca { i64, ptr }
  %l432 = alloca i32
  %l433 = alloca { i64, ptr }
  %l434 = alloca i64
  %l435 = alloca { i64, ptr }
  %l440 = alloca { i64, ptr }
  %l445 = alloca { i64, ptr }
  %l454 = alloca { i64, ptr }
  %l455 = alloca ptr
  %l459 = alloca { i64, ptr }
  %l460 = alloca { i64, ptr }
  %l463 = alloca i32
  %l464 = alloca { i64, ptr }
  %l465 = alloca i64
  %l466 = alloca { i64, ptr }
  %l468 = alloca ptr
  %l471 = alloca { i64, ptr }
  %l475 = alloca { i64, ptr }
  %l480 = alloca { i64, ptr }
  %l484 = alloca ptr
  %l488 = alloca { i64, ptr }
  %l491 = alloca { i64, ptr }
  %l495 = alloca ptr
  %l498 = alloca { i64, ptr }
  %l501 = alloca { i64, ptr }
  %l507 = alloca { i64, ptr }
  %l512 = alloca { i64, ptr }
  %l518 = alloca { i64, ptr }
  %l524 = alloca { { i64, ptr }, i32 }
  %l528 = alloca ptr
  %l531 = alloca { i64, ptr }
  %l534 = alloca { i64, ptr }
  %l540 = alloca ptr
  %l544 = alloca { i64, ptr }
  %l547 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s43 = alloca %olang.scope
  %s44 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a1, ptr %l1
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
  %t9 = load { i64, [15 x i64] }, ptr %l1
  %t11 = extractvalue { i64, [15 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t15 = getelementptr { { i64, [4 x i64] } }, ptr %t14, i32 0, i32 0
  %t16 = load { i64, [4 x i64] }, ptr %t15
  store { i64, [4 x i64] } %t16, ptr %l4
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load { i64, [4 x i64] }, ptr %l4
  %t24 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %t18, { i64, [4 x i64] } %t19, i32 %a2)
  store { i64, ptr } %t24, ptr %l85
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb5:
  %t26 = load { i64, [15 x i64] }, ptr %l1
  %t28 = extractvalue { i64, [15 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 1
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t32 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t31, i32 0, i32 0
  %t33 = load %"compiler/mir:Lvalue", ptr %t32
  store %"compiler/mir:Lvalue" %t33, ptr %l5
  %t35 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l6, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/mir:Lvalue", ptr %l5
  %t41 = load i32, ptr %l6, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eref(ptr %v0, ptr %v1, ptr %t39, %"compiler/mir:Lvalue" %t40, i32 %t41)
  store { i64, ptr } %t45, ptr %l93
  br label %bb9
bb9:
  %t46 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb10:
  %t47 = load { i64, [15 x i64] }, ptr %l1
  %t49 = extractvalue { i64, [15 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 2
  br i1 %t50, label %bb11, label %bb12
bb11:
  %t52 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t53 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t52, i32 0, i32 0
  %t54 = load %"compiler/mir:Lvalue", ptr %t53
  store %"compiler/mir:Lvalue" %t54, ptr %l7
  br label %bb13
bb12:
  br label %bb20
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/mir:Lvalue", ptr %l7
  %t60 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s3, ptr %t56, %"compiler/mir:Lvalue" %t57)
  store { { i64, ptr }, i32 } %t60, ptr %l99
  br label %bb14
bb14:
  %t61 = load { { i64, ptr }, i32 }, ptr %l99
  store { { i64, ptr }, i32 } %t61, ptr %l8
  %t62 = getelementptr { { i64, ptr }, i32 }, ptr %l8, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l9, !tbaa !27
  %t65 = getelementptr { { i64, ptr }, i32 }, ptr %l8, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  store i32 %t66, ptr %l10, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l102, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l10, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %t69, i32 %t70)
  store { i64, ptr } %t73, ptr %l105
  br label %bb15
bb15:
  %t74 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = mul i64 %t75, 1
  %t78 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t77)
  call void @llvm.memcpy.p0.p0.i64(ptr %t78, ptr %t76, i64 %t77, i1 false)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t81 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t82 = load ptr, ptr %l102, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %s3, ptr %v1, ptr %v1, ptr %t82, { i64, ptr } %t80, { i64, ptr } %t81, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t85, ptr %l108
  br label %bb16
bb16:
  %t86 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t86, ptr %lp11
  %t87 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t88 = load ptr, ptr %lp11
  store { i64, ptr } %t87, ptr %t88, !tbaa !27
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l109, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l10, !tbaa !23
  %t94 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s3, ptr %t90, i32 %t91)
  store { i64, ptr } %t94, ptr %l112
  br label %bb17
bb17:
  %t95 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 0
  %t97 = extractvalue { i64, ptr } %t95, 1
  %t98 = mul i64 %t96, 1
  %t99 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t98)
  call void @llvm.memcpy.p0.p0.i64(ptr %t99, ptr %t97, i64 %t98, i1 false)
  %t100 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t101 = insertvalue { i64, ptr } %t100, ptr %t99, 1
  store { i64, ptr } %t101, ptr %l113, !tbaa !27
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/emit:fnEm", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t106 = load i32, ptr %l10, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %s3, ptr %t105, i32 %t106, i64 0)
  store { i64, ptr } %t109, ptr %l117
  br label %bb18
bb18:
  %t110 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t118 = load ptr, ptr %l109, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l113, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s3, ptr %s3, ptr %s3, ptr %s3, ptr %t118, { i64, ptr } %t119, { i64, ptr } %t116, { i64, ptr } %t117, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb19
bb19:
  %t122 = load ptr, ptr %lp11
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  store { i64, ptr } %t123, ptr %rv
  br label %ret
bb20:
  %t125 = load { i64, [15 x i64] }, ptr %l1
  %t127 = extractvalue { i64, [15 x i64] } %t125, 0
  %t128 = icmp eq i64 %t127, 3
  br i1 %t128, label %bb21, label %bb22
bb21:
  %t130 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t131 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t130, i32 0, i32 0
  %t132 = load i32, ptr %t131, !range !{i32 0, i32 52}
  store i32 %t132, ptr %l12
  %t134 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t135 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t134, i32 0, i32 1
  %t136 = load i32, ptr %t135
  store i32 %t136, ptr %l13, !tbaa !23
  %t138 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t139 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t138, i32 0, i32 2
  %t140 = load %"compiler/mir:Range", ptr %t139
  store %"compiler/mir:Range" %t140, ptr %l14
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l12, !range !{i32 0, i32 52}
  %t144 = load i32, ptr %l13, !tbaa !23
  %t145 = load %"compiler/mir:Range", ptr %l14
  %t150 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprim(ptr %v0, ptr %v1, ptr %t142, i32 %t143, i32 %t144, %"compiler/mir:Range" %t145)
  store { i64, ptr } %t150, ptr %l130
  br label %bb24
bb24:
  %t151 = load { i64, ptr }, ptr %l130, !tbaa !27
  store { i64, ptr } %t151, ptr %rv
  br label %ret
bb25:
  %t152 = load { i64, [15 x i64] }, ptr %l1
  %t154 = extractvalue { i64, [15 x i64] } %t152, 0
  %t155 = icmp eq i64 %t154, 4
  br i1 %t155, label %bb26, label %bb27
bb26:
  %t157 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t158 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t157, i32 0, i32 0
  %t159 = load i32, ptr %t158, !range !{i32 0, i32 52}
  store i32 %t159, ptr %l15
  %t161 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t162 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t161, i32 0, i32 1
  %t163 = load i32, ptr %t162
  store i32 %t163, ptr %l16, !tbaa !23
  %t165 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t166 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t165, i32 0, i32 2
  %t167 = load %"compiler/mir:Range", ptr %t166
  store %"compiler/mir:Range" %t167, ptr %l17
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l15, !range !{i32 0, i32 52}
  %t171 = load i32, ptr %l16, !tbaa !23
  %t172 = load %"compiler/mir:Range", ptr %l17
  %t177 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eoverflows(ptr %v0, ptr %v1, ptr %t169, i32 %t170, i32 %t171, %"compiler/mir:Range" %t172)
  store { i64, ptr } %t177, ptr %l140
  br label %bb29
bb29:
  %t178 = load { i64, ptr }, ptr %l140, !tbaa !27
  store { i64, ptr } %t178, ptr %rv
  br label %ret
bb30:
  %t179 = load { i64, [15 x i64] }, ptr %l1
  %t181 = extractvalue { i64, [15 x i64] } %t179, 0
  %t182 = icmp eq i64 %t181, 5
  br i1 %t182, label %bb31, label %bb32
bb31:
  %t184 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t185 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t184, i32 0, i32 0
  %t186 = load %"compiler/mir:Lvalue", ptr %t185
  store %"compiler/mir:Lvalue" %t186, ptr %l18
  br label %bb33
bb32:
  br label %bb47
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load %"compiler/mir:Lvalue", ptr %l18
  %t192 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s6, ptr %t188, %"compiler/mir:Lvalue" %t189)
  store { { i64, ptr }, i32 } %t192, ptr %l146
  br label %bb34
bb34:
  %t193 = load { { i64, ptr }, i32 }, ptr %l146
  store { { i64, ptr }, i32 } %t193, ptr %l19
  %t194 = getelementptr { { i64, ptr }, i32 }, ptr %l19, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l20, !tbaa !27
  %t197 = getelementptr { { i64, ptr }, i32 }, ptr %l19, i32 0, i32 1
  %t198 = load i32, ptr %t197, !tbaa !23
  store i32 %t198, ptr %l21, !tbaa !23
  %t200 = load ptr, ptr %l3, !tbaa !29
  store ptr %t200, ptr %l149, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l150, !tbaa !29
  %t202 = load ptr, ptr %l3, !tbaa !29
  %t203 = load i32, ptr %l21, !tbaa !23
  %t206 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t202, i32 %t203)
  store i32 %t206, ptr %l153
  br label %bb35
bb35:
  %t207 = load ptr, ptr %l150, !tbaa !29
  %t208 = load i32, ptr %l153, !tbaa !23
  %t209 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %t207, i32 %t208)
  store i32 %t209, ptr %l154
  br label %bb36
bb36:
  %t210 = load ptr, ptr %l149, !tbaa !29
  %t211 = load i32, ptr %l154, !tbaa !23
  %t212 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s6, ptr %t210, i32 %t211)
  store { i64, ptr } %t212, ptr %l155
  br label %bb37
bb37:
  %t213 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t213, 0
  store i64 %t214, ptr %l22, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/emit:fnEm", ptr %t216, i32 0, i32 0
  %t219 = load ptr, ptr %t218, !tbaa !29
  %t220 = load i32, ptr %l21, !tbaa !23
  %t223 = call i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %t219, i32 %t220)
  store i1 %t223, ptr %l160
  br label %bb38
bb38:
  %t224 = load i1, ptr %l160, !tbaa !21
  br i1 %t224, label %bb39, label %bb40
bb39:
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l161, !tbaa !29
  %t226 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t226, ptr %l162, !tbaa !27
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i64, ptr %l22, !tbaa !24
  %t231 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etagRange(ptr %v0, ptr %v1, ptr %v1, ptr %t227, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d208, i32 0, i32 1) }, i64 %t228)
  store { i64, ptr } %t231, ptr %l165
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t232 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 0
  %t234 = extractvalue { i64, ptr } %t232, 1
  %t235 = mul i64 %t233, 1
  %t236 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t235)
  call void @llvm.memcpy.p0.p0.i64(ptr %t236, ptr %t234, i64 %t235, i1 false)
  %t237 = insertvalue { i64, ptr } undef, i64 %t233, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t236, 1
  %t239 = load ptr, ptr %l161, !tbaa !29
  %t240 = load { i64, ptr }, ptr %l162, !tbaa !27
  %t242 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %s6, ptr %v1, ptr %v1, ptr %t239, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d209, i32 0, i32 1) }, { i64, ptr } %t240, { i64, ptr } %t238)
  store { i64, ptr } %t242, ptr %l167
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s6)
  %t243 = load { i64, ptr }, ptr %l167, !tbaa !27
  store { i64, ptr } %t243, ptr %rv
  br label %ret
bb43:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l168, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  store ptr %t245, ptr %l169, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t246, ptr %l170, !tbaa !27
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load i64, ptr %l22, !tbaa !24
  %t251 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etagRange(ptr %v0, ptr %s6, ptr %s6, ptr %t247, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d210, i32 0, i32 1) }, i64 %t248)
  store { i64, ptr } %t251, ptr %l173
  br label %bb44
bb44:
  %t252 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t253 = extractvalue { i64, ptr } %t252, 0
  %t254 = extractvalue { i64, ptr } %t252, 1
  %t255 = mul i64 %t253, 1
  %t256 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t255)
  call void @llvm.memcpy.p0.p0.i64(ptr %t256, ptr %t254, i64 %t255, i1 false)
  %t257 = insertvalue { i64, ptr } undef, i64 %t253, 0
  %t258 = insertvalue { i64, ptr } %t257, ptr %t256, 1
  %t259 = load ptr, ptr %l169, !tbaa !29
  %t260 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t262 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s6, ptr %s6, ptr %s6, ptr %s6, ptr %t259, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d211, i32 0, i32 1) }, { i64, ptr } %t260, { i64, ptr } %t258)
  store { i64, ptr } %t262, ptr %l175
  br label %bb45
bb45:
  %t263 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d212, i32 0, i32 1) }, 1
  %t264 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d212, i32 0, i32 1) }, 0
  %t265 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 1
  %t267 = extractvalue { i64, ptr } %t265, 0
  %t268 = add i64 %t264, %t267
  %t269 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d213, i32 0, i32 1) }, 1
  %t270 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d213, i32 0, i32 1) }, 0
  %t271 = add i64 %t268, %t270
  %t272 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t271)
  call void @olang_textcopy(ptr %t272, ptr %t263, i64 %t264)
  %t273 = getelementptr i8, ptr %t272, i64 %t264
  call void @olang_textcopy(ptr %t273, ptr %t266, i64 %t267)
  %t274 = getelementptr i8, ptr %t273, i64 %t267
  call void @olang_textcopy(ptr %t274, ptr %t269, i64 %t270)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t272, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = extractvalue { i64, ptr } %t276, 1
  %t280 = mul i64 %t278, 1
  %t281 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t280)
  call void @llvm.memcpy.p0.p0.i64(ptr %t281, ptr %t279, i64 %t280, i1 false)
  %t282 = insertvalue { i64, ptr } undef, i64 %t278, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %t281, 1
  %t284 = load ptr, ptr %l168, !tbaa !29
  %t286 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t284, { i64, ptr } %t283)
  store { i64, ptr } %t286, ptr %l178
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s6)
  %t287 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t287, ptr %rv
  br label %ret
bb47:
  %t288 = load { i64, [15 x i64] }, ptr %l1
  %t290 = extractvalue { i64, [15 x i64] } %t288, 0
  %t291 = icmp eq i64 %t290, 6
  br i1 %t291, label %bb48, label %bb49
bb48:
  %t293 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t294 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t293, i32 0, i32 0
  %t295 = load i32, ptr %t294
  store i32 %t295, ptr %l23, !tbaa !23
  %t297 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t298 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t297, i32 0, i32 1
  %t299 = load i64, ptr %t298
  store i64 %t299, ptr %l24, !tbaa !24
  %t301 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t302 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t301, i32 0, i32 2
  %t303 = load %"compiler/mir:Range", ptr %t302
  store %"compiler/mir:Range" %t303, ptr %l25
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i32, ptr %l23, !tbaa !23
  %t307 = load i64, ptr %l24, !tbaa !24
  %t308 = load %"compiler/mir:Range", ptr %l25
  %t313 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaggregate(ptr %v0, ptr %v1, ptr %t305, i32 %t306, i64 %t307, %"compiler/mir:Range" %t308)
  store { i64, ptr } %t313, ptr %l188
  br label %bb51
bb51:
  %t314 = load { i64, ptr }, ptr %l188, !tbaa !27
  store { i64, ptr } %t314, ptr %rv
  br label %ret
bb52:
  %t315 = load { i64, [15 x i64] }, ptr %l1
  %t317 = extractvalue { i64, [15 x i64] } %t315, 0
  %t318 = icmp eq i64 %t317, 7
  br i1 %t318, label %bb53, label %bb54
bb53:
  %t320 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t321 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t320, i32 0, i32 0
  %t322 = load { i64, [1 x i64] }, ptr %t321
  store { i64, [1 x i64] } %t322, ptr %l26
  %t324 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t325 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t324, i32 0, i32 1
  %t326 = load { i64, [4 x i64] }, ptr %t325
  store { i64, [4 x i64] } %t326, ptr %l27
  %t328 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t329 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t328, i32 0, i32 2
  %t330 = load i32, ptr %t329
  store i32 %t330, ptr %l28, !tbaa !23
  br label %bb55
bb54:
  br label %bb86
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t332 = load ptr, ptr %l3, !tbaa !29
  store ptr %t332, ptr %l194, !tbaa !29
  %t333 = load ptr, ptr %l3, !tbaa !29
  %t334 = load i32, ptr %l28, !tbaa !23
  %t337 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t333, i32 %t334)
  store i32 %t337, ptr %l197
  br label %bb56
bb56:
  %t338 = load ptr, ptr %l194, !tbaa !29
  %t339 = load i32, ptr %l197, !tbaa !23
  %t340 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t338, i32 %t339)
  store i32 %t340, ptr %l198
  br label %bb57
bb57:
  %t341 = load i32, ptr %l198, !tbaa !23
  store i32 %t341, ptr %l29, !tbaa !23
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/emit:fnEm", ptr %t342, i32 0, i32 0
  %t345 = load ptr, ptr %t344, !tbaa !29
  %t347 = getelementptr %"compiler/emit:Emitter", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = call ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v0, ptr %t348)
  store ptr %t350, ptr %l202
  br label %bb58
bb58:
  %t351 = load ptr, ptr %l3, !tbaa !29
  %t352 = load i32, ptr %l29, !tbaa !23
  %t353 = load ptr, ptr %l202, !tbaa !29
  %t356 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v0, ptr %t353, ptr %t351, i32 %t352)
  store i1 %t356, ptr %l205
  br label %bb59
bb59:
  %t357 = load i1, ptr %l205, !tbaa !21
  br i1 %t357, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load { i64, [1 x i64] }, ptr %l26
  %t360 = load i32, ptr %l29, !tbaa !23
  %t364 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2egenAlloc(ptr %v0, ptr %v1, ptr %t358, { i64, [1 x i64] } %t359, i32 %t360)
  store { i64, ptr } %t364, ptr %l209
  br label %bb62
bb61:
  br label %bb64
bb62:
  %t365 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t365, ptr %lp30
  %t366 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t367 = load ptr, ptr %lp30
  store { i64, ptr } %t366, ptr %t367, !tbaa !27
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load ptr, ptr %lp30
  %t370 = load { i64, ptr }, ptr %t369, !tbaa !27
  %t371 = load i32, ptr %l29, !tbaa !23
  %t372 = load { i64, [4 x i64] }, ptr %l27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %s11, ptr %t368, { i64, ptr } %t370, i32 %t371, { i64, [4 x i64] } %t372, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  br label %bb63
bb63:
  %t377 = load ptr, ptr %lp30
  %t378 = load { i64, ptr }, ptr %t377, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s10)
  store { i64, ptr } %t378, ptr %rv
  br label %ret
bb64:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load i32, ptr %l29, !tbaa !23
  %t384 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t380, i32 %t381)
  store i1 %t384, ptr %l217
  br label %bb65
bb65:
  %t385 = load i1, ptr %l217, !tbaa !21
  br i1 %t385, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s12
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l218, !tbaa !29
  %t387 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t387, ptr %l219
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i32, ptr %l29, !tbaa !23
  %t392 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t388, i32 %t389)
  store i64 %t392, ptr %l222
  br label %bb68
bb67:
  br label %bb73
bb68:
  %t393 = load i64, ptr %l222, !tbaa !24
  %t394 = call i64 @__olang_fmt_i64(ptr null, i64 %t393)
  %t395 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t394)
  %t396 = call i64 @__olang_fmt_i64(ptr %t395, i64 %t393)
  %t397 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t395, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = extractvalue { i64, ptr } %t398, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  store { i64, ptr } %t405, ptr %l224, !tbaa !27
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i32, ptr %l29, !tbaa !23
  %t410 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t406, i32 %t407)
  store i64 %t410, ptr %l227
  br label %bb69
bb69:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load i32, ptr %l29, !tbaa !23
  %t415 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %t411, i32 %t412)
  store { i64, ptr } %t415, ptr %l230
  br label %bb70
bb70:
  %t416 = load { i64, ptr }, ptr %l230, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t416, 0
  %t418 = extractvalue { i64, ptr } %t416, 1
  %t419 = mul i64 %t417, 1
  %t420 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t420, ptr %t418, i64 %t419, i1 false)
  %t421 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t423 = load ptr, ptr %l218, !tbaa !29
  %t424 = load { i64, [1 x i64] }, ptr %l219
  %t425 = load { i64, ptr }, ptr %l224, !tbaa !27
  %t426 = load i64, ptr %l227, !tbaa !24
  %t428 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t423, { i64, [1 x i64] } %t424, { i64, ptr } %t425, i64 %t426, { i64, ptr } %t422)
  store { i64, ptr } %t428, ptr %l232
  br label %bb71
bb71:
  %t429 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t429, ptr %lp31
  %t430 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t431 = load ptr, ptr %lp31
  store { i64, ptr } %t430, ptr %t431, !tbaa !27
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load ptr, ptr %lp31
  %t434 = load { i64, ptr }, ptr %t433, !tbaa !27
  %t435 = load i32, ptr %l29, !tbaa !23
  %t436 = load { i64, [4 x i64] }, ptr %l27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %s12, ptr %t432, { i64, ptr } %t434, i32 %t435, { i64, [4 x i64] } %t436, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  br label %bb72
bb72:
  %t441 = load ptr, ptr %lp31
  %t442 = load { i64, ptr }, ptr %t441, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  store { i64, ptr } %t442, ptr %rv
  br label %ret
bb73:
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t445 = load { i64, [4 x i64] }, ptr %l27
  %t446 = load i32, ptr %l29, !tbaa !23
  %t450 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s10, ptr %t444, { i64, [4 x i64] } %t445, i32 %t446)
  store { i64, ptr } %t450, ptr %l241
  br label %bb74
bb74:
  %t451 = load { i64, ptr }, ptr %l241, !tbaa !27
  store { i64, ptr } %t451, ptr %l32, !tbaa !27
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i32, ptr %l29, !tbaa !23
  %t456 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %t452, i32 %t453)
  store i1 %t456, ptr %l244
  br label %bb75
bb75:
  %t457 = load i1, ptr %l244, !tbaa !21
  br i1 %t457, label %bb76, label %bb77
bb76:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load { i64, [1 x i64] }, ptr %l26
  %t460 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t461 = load i32, ptr %l29, !tbaa !23
  %t466 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArray(ptr %v0, ptr %s10, ptr %v1, ptr %t458, { i64, [1 x i64] } %t459, { i64, ptr } %t460, i32 %t461)
  store { i64, ptr } %t466, ptr %l249
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s10)
  %t467 = load { i64, ptr }, ptr %l249, !tbaa !27
  store { i64, ptr } %t467, ptr %rv
  br label %ret
bb79:
  %t468 = load ptr, ptr %l0, !tbaa !29
  store ptr %t468, ptr %l250, !tbaa !29
  %t469 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t469, ptr %l251
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i32, ptr %l29, !tbaa !23
  %t474 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %t470, i32 %t471)
  store i64 %t474, ptr %l254
  br label %bb80
bb80:
  %t475 = load i64, ptr %l254, !tbaa !24
  %t476 = call i64 @__olang_fmt_i64(ptr null, i64 %t475)
  %t477 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t476)
  %t478 = call i64 @__olang_fmt_i64(ptr %t477, i64 %t475)
  %t479 = insertvalue { i64, ptr } undef, i64 %t476, 0
  %t480 = insertvalue { i64, ptr } %t479, ptr %t477, 1
  %t482 = extractvalue { i64, ptr } %t480, 0
  %t483 = extractvalue { i64, ptr } %t480, 1
  %t484 = mul i64 %t482, 1
  %t485 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t484)
  call void @llvm.memcpy.p0.p0.i64(ptr %t485, ptr %t483, i64 %t484, i1 false)
  %t486 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t487 = insertvalue { i64, ptr } %t486, ptr %t485, 1
  store { i64, ptr } %t487, ptr %l256, !tbaa !27
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load i32, ptr %l29, !tbaa !23
  %t492 = call i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %t488, i32 %t489)
  store i64 %t492, ptr %l259
  br label %bb81
bb81:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t494 = load i32, ptr %l29, !tbaa !23
  %t497 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %t493, i32 %t494)
  store { i64, ptr } %t497, ptr %l262
  br label %bb82
bb82:
  %t498 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t499 = extractvalue { i64, ptr } %t498, 0
  %t500 = extractvalue { i64, ptr } %t498, 1
  %t501 = mul i64 %t499, 1
  %t502 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t501)
  call void @llvm.memcpy.p0.p0.i64(ptr %t502, ptr %t500, i64 %t501, i1 false)
  %t503 = insertvalue { i64, ptr } undef, i64 %t499, 0
  %t504 = insertvalue { i64, ptr } %t503, ptr %t502, 1
  %t505 = load ptr, ptr %l250, !tbaa !29
  %t506 = load { i64, [1 x i64] }, ptr %l251
  %t507 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t508 = load i64, ptr %l259, !tbaa !24
  %t510 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t505, { i64, [1 x i64] } %t506, { i64, ptr } %t507, i64 %t508, { i64, ptr } %t504)
  store { i64, ptr } %t510, ptr %l264
  br label %bb83
bb83:
  %t511 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t511, ptr %lp33
  %t512 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t513 = load ptr, ptr %lp33
  store { i64, ptr } %t512, ptr %t513, !tbaa !27
  %t514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t514, ptr %l265, !tbaa !29
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load i32, ptr %l29, !tbaa !23
  %t519 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %s10, ptr %t515, i32 %t516)
  store { i64, ptr } %t519, ptr %l268
  br label %bb84
bb84:
  %t520 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t521 = extractvalue { i64, ptr } %t520, 0
  %t522 = extractvalue { i64, ptr } %t520, 1
  %t523 = mul i64 %t521, 1
  %t524 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t523)
  call void @llvm.memcpy.p0.p0.i64(ptr %t524, ptr %t522, i64 %t523, i1 false)
  %t525 = insertvalue { i64, ptr } undef, i64 %t521, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t524, 1
  %t527 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t528 = load ptr, ptr %lp33
  %t529 = load { i64, ptr }, ptr %t528, !tbaa !27
  %t530 = load ptr, ptr %l265, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s10, ptr %s10, ptr %v1, ptr %s10, ptr %t530, { i64, ptr } %t526, { i64, ptr } %t527, { i64, ptr } %t529, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb85
bb85:
  %t534 = load ptr, ptr %lp33
  %t535 = load { i64, ptr }, ptr %t534, !tbaa !27
  call void @__olang_scope_close(ptr %s10)
  store { i64, ptr } %t535, ptr %rv
  br label %ret
bb86:
  %t537 = load { i64, [15 x i64] }, ptr %l1
  %t539 = extractvalue { i64, [15 x i64] } %t537, 0
  %t540 = icmp eq i64 %t539, 8
  br i1 %t540, label %bb87, label %bb88
bb87:
  %t542 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t543 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t542, i32 0, i32 0
  %t544 = load { i64, [1 x i64] }, ptr %t543
  store { i64, [1 x i64] } %t544, ptr %l34
  %t546 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t547 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t546, i32 0, i32 1
  %t548 = load i32, ptr %t547
  store i32 %t548, ptr %l35, !tbaa !23
  %t550 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t551 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t550, i32 0, i32 2
  %t552 = load { i64, [4 x i64] }, ptr %t551
  store { i64, [4 x i64] } %t552, ptr %l36
  %t554 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t555 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t554, i32 0, i32 3
  %t556 = load { i64, [4 x i64] }, ptr %t555
  store { i64, [4 x i64] } %t556, ptr %l37
  br label %bb89
bb88:
  br label %bb91
bb89:
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t559 = load { i64, [1 x i64] }, ptr %l34
  %t560 = load i32, ptr %l35, !tbaa !23
  %t561 = load { i64, [4 x i64] }, ptr %l36
  %t562 = load { i64, [4 x i64] }, ptr %l37
  %t568 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enewArray(ptr %v0, ptr %v1, ptr %t558, { i64, [1 x i64] } %t559, i32 %t560, { i64, [4 x i64] } %t561, { i64, [4 x i64] } %t562)
  store { i64, ptr } %t568, ptr %l284
  br label %bb90
bb90:
  %t569 = load { i64, ptr }, ptr %l284, !tbaa !27
  store { i64, ptr } %t569, ptr %rv
  br label %ret
bb91:
  %t570 = load { i64, [15 x i64] }, ptr %l1
  %t572 = extractvalue { i64, [15 x i64] } %t570, 0
  %t573 = icmp eq i64 %t572, 9
  br i1 %t573, label %bb92, label %bb93
bb92:
  %t575 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t576 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t575, i32 0, i32 0
  %t577 = load %"compiler/mir:Lvalue", ptr %t576
  store %"compiler/mir:Lvalue" %t577, ptr %l38
  %t579 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t580 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t579, i32 0, i32 1
  %t581 = load { i64, [4 x i64] }, ptr %t580
  store { i64, [4 x i64] } %t581, ptr %l39
  %t583 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t584 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t583, i32 0, i32 2
  %t585 = load { i64, [4 x i64] }, ptr %t584
  store { i64, [4 x i64] } %t585, ptr %l40
  %t587 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t588 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t587, i32 0, i32 3
  %t589 = load i32, ptr %t588
  store i32 %t589, ptr %l41, !tbaa !23
  br label %bb94
bb93:
  br label %bb96
bb94:
  %t591 = load ptr, ptr %l0, !tbaa !29
  %t592 = load %"compiler/mir:Lvalue", ptr %l38
  %t593 = load { i64, [4 x i64] }, ptr %l39
  %t594 = load { i64, [4 x i64] }, ptr %l40
  %t595 = load i32, ptr %l41, !tbaa !23
  %t601 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslice(ptr %v0, ptr %v1, ptr %t591, %"compiler/mir:Lvalue" %t592, { i64, [4 x i64] } %t593, { i64, [4 x i64] } %t594, i32 %t595)
  store { i64, ptr } %t601, ptr %l296
  br label %bb95
bb95:
  %t602 = load { i64, ptr }, ptr %l296, !tbaa !27
  store { i64, ptr } %t602, ptr %rv
  br label %ret
bb96:
  %t603 = load { i64, [15 x i64] }, ptr %l1
  %t605 = extractvalue { i64, [15 x i64] } %t603, 0
  %t606 = icmp eq i64 %t605, 10
  br i1 %t606, label %bb97, label %bb98
bb97:
  %t608 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t609 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t608, i32 0, i32 0
  %t610 = load { i64, [2 x i64] }, ptr %t609
  store { i64, [2 x i64] } %t610, ptr %l42
  %t612 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t613 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t612, i32 0, i32 1
  %t614 = load i32, ptr %t613
  store i32 %t614, ptr %l43, !tbaa !23
  %t616 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t617 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t616, i32 0, i32 2
  %t618 = load { i64, [1 x i64] }, ptr %t617
  store { i64, [1 x i64] } %t618, ptr %l44
  %t620 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t621 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t620, i32 0, i32 3
  %t622 = load %"compiler/mir:Range", ptr %t621
  store %"compiler/mir:Range" %t622, ptr %l45
  %t624 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t625 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t624, i32 0, i32 4
  %t626 = load %"compiler/mir:Range", ptr %t625
  store %"compiler/mir:Range" %t626, ptr %l46
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load { i64, [2 x i64] }, ptr %l42
  %t630 = load i32, ptr %l43, !tbaa !23
  %t631 = load { i64, [1 x i64] }, ptr %l44
  %t632 = load %"compiler/mir:Range", ptr %l45
  %t633 = load %"compiler/mir:Range", ptr %l46
  %t640 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eclosure(ptr %v0, ptr %v1, ptr %t628, { i64, [2 x i64] } %t629, i32 %t630, { i64, [1 x i64] } %t631, %"compiler/mir:Range" %t632, %"compiler/mir:Range" %t633)
  store { i64, ptr } %t640, ptr %l310
  br label %bb100
bb100:
  %t641 = load { i64, ptr }, ptr %l310, !tbaa !27
  store { i64, ptr } %t641, ptr %rv
  br label %ret
bb101:
  %t642 = load { i64, [15 x i64] }, ptr %l1
  %t644 = extractvalue { i64, [15 x i64] } %t642, 0
  %t645 = icmp eq i64 %t644, 11
  br i1 %t645, label %bb102, label %bb103
bb102:
  %t647 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t648 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t647, i32 0, i32 0
  %t649 = load { i64, [4 x i64] }, ptr %t648
  store { i64, [4 x i64] } %t649, ptr %l47
  %t651 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t652 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t651, i32 0, i32 1
  %t653 = load i32, ptr %t652
  store i32 %t653, ptr %l48, !tbaa !23
  %t655 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t656 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t655, i32 0, i32 2
  %t657 = load i32, ptr %t656
  store i32 %t657, ptr %l49, !tbaa !23
  br label %bb104
bb103:
  br label %bb107
bb104:
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l316, !tbaa !29
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t661 = load { i64, [4 x i64] }, ptr %l47
  %t662 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t666 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %t660, { i64, [4 x i64] } %t661, i32 %t662)
  store { i64, ptr } %t666, ptr %l320
  br label %bb105
bb105:
  %t667 = load { i64, ptr }, ptr %l320, !tbaa !27
  %t668 = extractvalue { i64, ptr } %t667, 0
  %t669 = extractvalue { i64, ptr } %t667, 1
  %t670 = mul i64 %t668, 1
  %t671 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t670)
  call void @llvm.memcpy.p0.p0.i64(ptr %t671, ptr %t669, i64 %t670, i1 false)
  %t672 = insertvalue { i64, ptr } undef, i64 %t668, 0
  %t673 = insertvalue { i64, ptr } %t672, ptr %t671, 1
  %t674 = load i32, ptr %l48, !tbaa !23
  %t675 = load i32, ptr %l49, !tbaa !23
  %t676 = load ptr, ptr %l316, !tbaa !29
  %t680 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %v1, ptr %v1, ptr %t676, { i64, ptr } %t673, i32 %t674, i32 %t675)
  store { i64, ptr } %t680, ptr %l324
  br label %bb106
bb106:
  %t681 = load { i64, ptr }, ptr %l324, !tbaa !27
  store { i64, ptr } %t681, ptr %rv
  br label %ret
bb107:
  %t682 = load { i64, [15 x i64] }, ptr %l1
  %t684 = extractvalue { i64, [15 x i64] } %t682, 0
  %t685 = icmp eq i64 %t684, 12
  br i1 %t685, label %bb108, label %bb109
bb108:
  %t687 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t688 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t687, i32 0, i32 0
  %t689 = load { i64, [1 x i64] }, ptr %t688
  store { i64, [1 x i64] } %t689, ptr %l50
  %t691 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t692 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t691, i32 0, i32 1
  %t693 = load { i64, [1 x i64] }, ptr %t692
  store { i64, [1 x i64] } %t693, ptr %l51
  br label %bb110
bb109:
  br label %bb126
bb110:
  store %olang.scope zeroinitializer, ptr %s20
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t696 = load { i64, [1 x i64] }, ptr %l50
  %t699 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %t695, { i64, [1 x i64] } %t696)
  store i1 %t699, ptr %l331
  br label %bb111
bb111:
  %t700 = load i1, ptr %l331, !tbaa !21
  br i1 %t700, label %bb112, label %bb113
bb112:
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t702 = load { i64, [1 x i64] }, ptr %l51
  %t705 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectText(ptr %v0, ptr %v1, ptr %t701, { i64, [1 x i64] } %t702)
  store { i64, ptr } %t705, ptr %l334
  br label %bb114
bb113:
  br label %bb115
bb114:
  call void @__olang_scope_close(ptr %s20)
  %t706 = load { i64, ptr }, ptr %l334, !tbaa !27
  store { i64, ptr } %t706, ptr %rv
  br label %ret
bb115:
  %t707 = load ptr, ptr %l0, !tbaa !29
  %t708 = load { i64, [1 x i64] }, ptr %l50
  %t711 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s20, ptr %t707, { i64, [1 x i64] } %t708)
  store { i64, ptr } %t711, ptr %l337
  br label %bb116
bb116:
  %t712 = load { i64, ptr }, ptr %l337, !tbaa !27
  store { i64, ptr } %t712, ptr %l52, !tbaa !27
  %t713 = load ptr, ptr %l0, !tbaa !29
  %t714 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t717 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s20, ptr %s20, ptr %s20, ptr %s20, ptr %t713, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d215, i32 0, i32 1) }, { i64, ptr } %t714, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t717, ptr %l340
  br label %bb117
bb117:
  %t718 = load { i64, ptr }, ptr %l340, !tbaa !27
  store { i64, ptr } %t718, ptr %l53, !tbaa !27
  %t719 = load ptr, ptr %l0, !tbaa !29
  store ptr %t719, ptr %l341, !tbaa !29
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t722 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d216, i32 0, i32 1) }, 1
  %t723 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d216, i32 0, i32 1) }, 0
  %t725 = extractvalue { i64, ptr } %t721, 1
  %t726 = extractvalue { i64, ptr } %t721, 0
  %t727 = add i64 %t723, %t726
  %t728 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d217, i32 0, i32 1) }, 1
  %t729 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d217, i32 0, i32 1) }, 0
  %t730 = add i64 %t727, %t729
  %t731 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t730)
  call void @olang_textcopy(ptr %t731, ptr %t722, i64 %t723)
  %t732 = getelementptr i8, ptr %t731, i64 %t723
  call void @olang_textcopy(ptr %t732, ptr %t725, i64 %t726)
  %t733 = getelementptr i8, ptr %t732, i64 %t726
  call void @olang_textcopy(ptr %t733, ptr %t728, i64 %t729)
  %t734 = insertvalue { i64, ptr } undef, i64 %t730, 0
  %t735 = insertvalue { i64, ptr } %t734, ptr %t731, 1
  %t737 = extractvalue { i64, ptr } %t735, 0
  %t738 = extractvalue { i64, ptr } %t735, 1
  %t739 = mul i64 %t737, 1
  %t740 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t740, ptr %t738, i64 %t739, i1 false)
  %t741 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t742 = insertvalue { i64, ptr } %t741, ptr %t740, 1
  %t745 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s20, ptr %s20, ptr %t720, { i64, ptr } %t742)
  store { i64, ptr } %t745, ptr %l346
  br label %bb118
bb118:
  %t746 = load { i64, ptr }, ptr %l346, !tbaa !27
  %t747 = extractvalue { i64, ptr } %t746, 0
  %t748 = extractvalue { i64, ptr } %t746, 1
  %t749 = mul i64 %t747, 1
  %t750 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t749)
  call void @llvm.memcpy.p0.p0.i64(ptr %t750, ptr %t748, i64 %t749, i1 false)
  %t751 = insertvalue { i64, ptr } undef, i64 %t747, 0
  %t752 = insertvalue { i64, ptr } %t751, ptr %t750, 1
  %t753 = load ptr, ptr %l341, !tbaa !29
  %t755 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s20, ptr %s20, ptr %s20, ptr %s20, ptr %t753, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d218, i32 0, i32 1) }, { i64, ptr } %t752, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t755, ptr %l348
  br label %bb119
bb119:
  %t756 = load { i64, ptr }, ptr %l348, !tbaa !27
  store { i64, ptr } %t756, ptr %l54, !tbaa !27
  %t757 = load ptr, ptr %l0, !tbaa !29
  %t759 = getelementptr %"compiler/emit:fnEm", ptr %t757, i32 0, i32 0
  %t760 = load ptr, ptr %t759, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s20, ptr %t760, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d219, i32 0, i32 1) })
  br label %bb120
bb120:
  %t762 = load ptr, ptr %l0, !tbaa !29
  store ptr %t762, ptr %l351, !tbaa !29
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t764 = load { i64, [1 x i64] }, ptr %l51
  %t767 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s20, ptr %t763, { i64, [1 x i64] } %t764)
  store { i64, ptr } %t767, ptr %l354
  br label %bb121
bb121:
  %t768 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t769 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d220, i32 0, i32 1) }, 1
  %t770 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d220, i32 0, i32 1) }, 0
  %t771 = load { i64, ptr }, ptr %l354, !tbaa !27
  %t772 = extractvalue { i64, ptr } %t771, 1
  %t773 = extractvalue { i64, ptr } %t771, 0
  %t774 = add i64 %t770, %t773
  %t775 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 1
  %t776 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d221, i32 0, i32 1) }, 0
  %t777 = add i64 %t774, %t776
  %t779 = extractvalue { i64, ptr } %t768, 1
  %t780 = extractvalue { i64, ptr } %t768, 0
  %t781 = add i64 %t777, %t780
  %t782 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 1
  %t783 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d222, i32 0, i32 1) }, 0
  %t784 = add i64 %t781, %t783
  %t785 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t784)
  call void @olang_textcopy(ptr %t785, ptr %t769, i64 %t770)
  %t786 = getelementptr i8, ptr %t785, i64 %t770
  call void @olang_textcopy(ptr %t786, ptr %t772, i64 %t773)
  %t787 = getelementptr i8, ptr %t786, i64 %t773
  call void @olang_textcopy(ptr %t787, ptr %t775, i64 %t776)
  %t788 = getelementptr i8, ptr %t787, i64 %t776
  call void @olang_textcopy(ptr %t788, ptr %t779, i64 %t780)
  %t789 = getelementptr i8, ptr %t788, i64 %t780
  call void @olang_textcopy(ptr %t789, ptr %t782, i64 %t783)
  %t790 = insertvalue { i64, ptr } undef, i64 %t784, 0
  %t791 = insertvalue { i64, ptr } %t790, ptr %t785, 1
  %t793 = extractvalue { i64, ptr } %t791, 0
  %t794 = extractvalue { i64, ptr } %t791, 1
  %t795 = mul i64 %t793, 1
  %t796 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t795)
  call void @llvm.memcpy.p0.p0.i64(ptr %t796, ptr %t794, i64 %t795, i1 false)
  %t797 = insertvalue { i64, ptr } undef, i64 %t793, 0
  %t798 = insertvalue { i64, ptr } %t797, ptr %t796, 1
  %t799 = load ptr, ptr %l351, !tbaa !29
  %t801 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s20, ptr %s20, ptr %t799, { i64, ptr } %t798)
  store { i64, ptr } %t801, ptr %l358
  br label %bb122
bb122:
  %t802 = load { i64, ptr }, ptr %l358, !tbaa !27
  store { i64, ptr } %t802, ptr %l55, !tbaa !27
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t805 = getelementptr %"compiler/emit:fnEm", ptr %t803, i32 0, i32 0
  %t806 = load ptr, ptr %t805, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etextCopy(ptr %v0, ptr %t806)
  br label %bb123
bb123:
  %t808 = load ptr, ptr %l0, !tbaa !29
  %t809 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t810 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t811 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t812 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d223, i32 0, i32 1) }, 1
  %t813 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d223, i32 0, i32 1) }, 0
  %t815 = extractvalue { i64, ptr } %t809, 1
  %t816 = extractvalue { i64, ptr } %t809, 0
  %t817 = add i64 %t813, %t816
  %t818 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 1
  %t819 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d224, i32 0, i32 1) }, 0
  %t820 = add i64 %t817, %t819
  %t822 = extractvalue { i64, ptr } %t810, 1
  %t823 = extractvalue { i64, ptr } %t810, 0
  %t824 = add i64 %t820, %t823
  %t825 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 1
  %t826 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d225, i32 0, i32 1) }, 0
  %t827 = add i64 %t824, %t826
  %t829 = extractvalue { i64, ptr } %t811, 1
  %t830 = extractvalue { i64, ptr } %t811, 0
  %t831 = add i64 %t827, %t830
  %t832 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d226, i32 0, i32 1) }, 1
  %t833 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d226, i32 0, i32 1) }, 0
  %t834 = add i64 %t831, %t833
  %t835 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t834)
  call void @olang_textcopy(ptr %t835, ptr %t812, i64 %t813)
  %t836 = getelementptr i8, ptr %t835, i64 %t813
  call void @olang_textcopy(ptr %t836, ptr %t815, i64 %t816)
  %t837 = getelementptr i8, ptr %t836, i64 %t816
  call void @olang_textcopy(ptr %t837, ptr %t818, i64 %t819)
  %t838 = getelementptr i8, ptr %t837, i64 %t819
  call void @olang_textcopy(ptr %t838, ptr %t822, i64 %t823)
  %t839 = getelementptr i8, ptr %t838, i64 %t823
  call void @olang_textcopy(ptr %t839, ptr %t825, i64 %t826)
  %t840 = getelementptr i8, ptr %t839, i64 %t826
  call void @olang_textcopy(ptr %t840, ptr %t829, i64 %t830)
  %t841 = getelementptr i8, ptr %t840, i64 %t830
  call void @olang_textcopy(ptr %t841, ptr %t832, i64 %t833)
  %t842 = insertvalue { i64, ptr } undef, i64 %t834, 0
  %t843 = insertvalue { i64, ptr } %t842, ptr %t835, 1
  %t845 = extractvalue { i64, ptr } %t843, 0
  %t846 = extractvalue { i64, ptr } %t843, 1
  %t847 = mul i64 %t845, 1
  %t848 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t847)
  call void @llvm.memcpy.p0.p0.i64(ptr %t848, ptr %t846, i64 %t847, i1 false)
  %t849 = insertvalue { i64, ptr } undef, i64 %t845, 0
  %t850 = insertvalue { i64, ptr } %t849, ptr %t848, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s20, ptr %t808, { i64, ptr } %t850)
  br label %bb124
bb124:
  %t853 = load ptr, ptr %l0, !tbaa !29
  %t854 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t855 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t859 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %s20, ptr %s20, ptr %v1, ptr %t853, { i64, ptr } %t854, { i64, ptr } %t855)
  store { i64, ptr } %t859, ptr %l370
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s20)
  %t860 = load { i64, ptr }, ptr %l370, !tbaa !27
  store { i64, ptr } %t860, ptr %rv
  br label %ret
bb126:
  %t861 = load { i64, [15 x i64] }, ptr %l1
  %t863 = extractvalue { i64, [15 x i64] } %t861, 0
  %t864 = icmp eq i64 %t863, 13
  br i1 %t864, label %bb127, label %bb128
bb127:
  %t866 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t867 = getelementptr { { i64, [1 x i64] } }, ptr %t866, i32 0, i32 0
  %t868 = load { i64, [1 x i64] }, ptr %t867
  store { i64, [1 x i64] } %t868, ptr %l56
  br label %bb129
bb128:
  br label %bb134
bb129:
  store %olang.scope zeroinitializer, ptr %s25
  %t870 = load ptr, ptr %l0, !tbaa !29
  %t872 = getelementptr %"compiler/emit:fnEm", ptr %t870, i32 0, i32 0
  %t873 = load ptr, ptr %t872, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s25, ptr %t873, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d227, i32 0, i32 1) })
  br label %bb130
bb130:
  %t875 = load ptr, ptr %l0, !tbaa !29
  store ptr %t875, ptr %l376, !tbaa !29
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t877 = load { i64, [1 x i64] }, ptr %l56
  %t880 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s25, ptr %t876, { i64, [1 x i64] } %t877)
  store { i64, ptr } %t880, ptr %l379
  br label %bb131
bb131:
  %t881 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d228, i32 0, i32 1) }, 1
  %t882 = extractvalue { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d228, i32 0, i32 1) }, 0
  %t883 = load { i64, ptr }, ptr %l379, !tbaa !27
  %t884 = extractvalue { i64, ptr } %t883, 1
  %t885 = extractvalue { i64, ptr } %t883, 0
  %t886 = add i64 %t882, %t885
  %t887 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d229, i32 0, i32 1) }, 1
  %t888 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d229, i32 0, i32 1) }, 0
  %t889 = add i64 %t886, %t888
  %t890 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t889)
  call void @olang_textcopy(ptr %t890, ptr %t881, i64 %t882)
  %t891 = getelementptr i8, ptr %t890, i64 %t882
  call void @olang_textcopy(ptr %t891, ptr %t884, i64 %t885)
  %t892 = getelementptr i8, ptr %t891, i64 %t885
  call void @olang_textcopy(ptr %t892, ptr %t887, i64 %t888)
  %t893 = insertvalue { i64, ptr } undef, i64 %t889, 0
  %t894 = insertvalue { i64, ptr } %t893, ptr %t890, 1
  %t896 = extractvalue { i64, ptr } %t894, 0
  %t897 = extractvalue { i64, ptr } %t894, 1
  %t898 = mul i64 %t896, 1
  %t899 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t898)
  call void @llvm.memcpy.p0.p0.i64(ptr %t899, ptr %t897, i64 %t898, i1 false)
  %t900 = insertvalue { i64, ptr } undef, i64 %t896, 0
  %t901 = insertvalue { i64, ptr } %t900, ptr %t899, 1
  %t902 = load ptr, ptr %l376, !tbaa !29
  %t904 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s25, ptr %s25, ptr %t902, { i64, ptr } %t901)
  store { i64, ptr } %t904, ptr %l382
  br label %bb132
bb132:
  %t905 = load { i64, ptr }, ptr %l382, !tbaa !27
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d230, i32 0, i32 1) }, 1
  %t909 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d230, i32 0, i32 1) }, 0
  %t911 = extractvalue { i64, ptr } %t905, 1
  %t912 = extractvalue { i64, ptr } %t905, 0
  %t913 = add i64 %t909, %t912
  %t914 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d231, i32 0, i32 1) }, 1
  %t915 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d231, i32 0, i32 1) }, 0
  %t916 = add i64 %t913, %t915
  %t917 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t916)
  call void @olang_textcopy(ptr %t917, ptr %t908, i64 %t909)
  %t918 = getelementptr i8, ptr %t917, i64 %t909
  call void @olang_textcopy(ptr %t918, ptr %t911, i64 %t912)
  %t919 = getelementptr i8, ptr %t918, i64 %t912
  call void @olang_textcopy(ptr %t919, ptr %t914, i64 %t915)
  %t920 = insertvalue { i64, ptr } undef, i64 %t916, 0
  %t921 = insertvalue { i64, ptr } %t920, ptr %t917, 1
  %t923 = extractvalue { i64, ptr } %t921, 0
  %t924 = extractvalue { i64, ptr } %t921, 1
  %t925 = mul i64 %t923, 1
  %t926 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t925)
  call void @llvm.memcpy.p0.p0.i64(ptr %t926, ptr %t924, i64 %t925, i1 false)
  %t927 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t928 = insertvalue { i64, ptr } %t927, ptr %t926, 1
  %t931 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t906, { i64, ptr } %t928)
  store { i64, ptr } %t931, ptr %l387
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s25)
  %t932 = load { i64, ptr }, ptr %l387, !tbaa !27
  store { i64, ptr } %t932, ptr %rv
  br label %ret
bb134:
  %t933 = load { i64, [15 x i64] }, ptr %l1
  %t935 = extractvalue { i64, [15 x i64] } %t933, 0
  %t936 = icmp eq i64 %t935, 14
  br i1 %t936, label %bb135, label %bb136
bb135:
  %t938 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t939 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t938, i32 0, i32 0
  %t940 = load { i64, [4 x i64] }, ptr %t939
  store { i64, [4 x i64] } %t940, ptr %l58
  %t942 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t943 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t942, i32 0, i32 1
  %t944 = load { i64, [1 x i64] }, ptr %t943
  store { i64, [1 x i64] } %t944, ptr %l59
  br label %bb137
bb136:
  br label %bb145
bb137:
  store %olang.scope zeroinitializer, ptr %s28
  %t946 = load ptr, ptr %l0, !tbaa !29
  %t948 = getelementptr %"compiler/emit:fnEm", ptr %t946, i32 0, i32 0
  %t949 = load ptr, ptr %t948, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s28, ptr %t949, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d232, i32 0, i32 1) })
  br label %bb138
bb138:
  %t951 = load ptr, ptr %l0, !tbaa !29
  store ptr %t951, ptr %l394, !tbaa !29
  %t952 = load ptr, ptr %l0, !tbaa !29
  %t953 = load { i64, [4 x i64] }, ptr %l58
  %t954 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t958 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s28, ptr %t952, { i64, [4 x i64] } %t953, i32 %t954)
  store { i64, ptr } %t958, ptr %l398
  br label %bb139
bb139:
  %t959 = load { i64, ptr }, ptr %l398, !tbaa !27
  %t960 = extractvalue { i64, ptr } %t959, 0
  %t961 = extractvalue { i64, ptr } %t959, 1
  %t962 = mul i64 %t960, 1
  %t963 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t962)
  call void @llvm.memcpy.p0.p0.i64(ptr %t963, ptr %t961, i64 %t962, i1 false)
  %t964 = insertvalue { i64, ptr } undef, i64 %t960, 0
  %t965 = insertvalue { i64, ptr } %t964, ptr %t963, 1
  store { i64, ptr } %t965, ptr %l399, !tbaa !27
  %t966 = load ptr, ptr %l0, !tbaa !29
  %t967 = load { i64, [4 x i64] }, ptr %l58
  %t970 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t966, { i64, [4 x i64] } %t967)
  store i32 %t970, ptr %l402
  br label %bb140
bb140:
  %t971 = load ptr, ptr %l394, !tbaa !29
  %t972 = load { i64, ptr }, ptr %l399, !tbaa !27
  %t973 = load i32, ptr %l402, !tbaa !23
  %t974 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s28, ptr %s28, ptr %t971, { i64, ptr } %t972, i32 %t973)
  store { i64, ptr } %t974, ptr %l403
  br label %bb141
bb141:
  %t975 = load { i64, ptr }, ptr %l403, !tbaa !27
  %t976 = extractvalue { i64, ptr } %t975, 0
  store i64 %t976, ptr %l404, !tbaa !24
  %t977 = load i64, ptr %l404, !tbaa !24
  %t978 = mul i64 %t977, 1
  %t979 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t978)
  %t980 = insertvalue { i64, ptr } undef, i64 %t977, 0
  %t981 = insertvalue { i64, ptr } %t980, ptr %t979, 1
  store { i64, ptr } %t981, ptr %l405, !tbaa !27
  %t982 = getelementptr { i64, ptr }, ptr %l405, i32 0, i32 1
  %t983 = load ptr, ptr %t982, !tbaa !27
  %t984 = getelementptr { i64, ptr }, ptr %l403, i32 0, i32 1
  %t985 = load ptr, ptr %t984, !tbaa !27
  %t986 = load i64, ptr %l404, !tbaa !24
  %t987 = mul i64 %t986, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t983, ptr %t985, i64 %t987, i1 false)
  %t988 = load { i64, ptr }, ptr %l405, !tbaa !27
  %t989 = load ptr, ptr %l0, !tbaa !29
  store ptr %t989, ptr %l406, !tbaa !29
  store { i64, ptr } %t988, ptr %l407, !tbaa !27
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t992 = load { i64, [1 x i64] }, ptr %l59
  %t995 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s28, ptr %t991, { i64, [1 x i64] } %t992)
  store { i64, ptr } %t995, ptr %l410
  br label %bb142
bb142:
  %t996 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d233, i32 0, i32 1) }, 1
  %t997 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d233, i32 0, i32 1) }, 0
  %t998 = load { i64, ptr }, ptr %l407, !tbaa !27
  %t999 = extractvalue { i64, ptr } %t998, 1
  %t1000 = extractvalue { i64, ptr } %t998, 0
  %t1001 = add i64 %t997, %t1000
  %t1002 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d234, i32 0, i32 1) }, 1
  %t1003 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d234, i32 0, i32 1) }, 0
  %t1004 = add i64 %t1001, %t1003
  %t1005 = load { i64, ptr }, ptr %l410, !tbaa !27
  %t1006 = extractvalue { i64, ptr } %t1005, 1
  %t1007 = extractvalue { i64, ptr } %t1005, 0
  %t1008 = add i64 %t1004, %t1007
  %t1009 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 1
  %t1010 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d235, i32 0, i32 1) }, 0
  %t1011 = add i64 %t1008, %t1010
  %t1012 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1011)
  call void @olang_textcopy(ptr %t1012, ptr %t996, i64 %t997)
  %t1013 = getelementptr i8, ptr %t1012, i64 %t997
  call void @olang_textcopy(ptr %t1013, ptr %t999, i64 %t1000)
  %t1014 = getelementptr i8, ptr %t1013, i64 %t1000
  call void @olang_textcopy(ptr %t1014, ptr %t1002, i64 %t1003)
  %t1015 = getelementptr i8, ptr %t1014, i64 %t1003
  call void @olang_textcopy(ptr %t1015, ptr %t1006, i64 %t1007)
  %t1016 = getelementptr i8, ptr %t1015, i64 %t1007
  call void @olang_textcopy(ptr %t1016, ptr %t1009, i64 %t1010)
  %t1017 = insertvalue { i64, ptr } undef, i64 %t1011, 0
  %t1018 = insertvalue { i64, ptr } %t1017, ptr %t1012, 1
  %t1020 = extractvalue { i64, ptr } %t1018, 0
  %t1021 = extractvalue { i64, ptr } %t1018, 1
  %t1022 = mul i64 %t1020, 1
  %t1023 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t1022)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1023, ptr %t1021, i64 %t1022, i1 false)
  %t1024 = insertvalue { i64, ptr } undef, i64 %t1020, 0
  %t1025 = insertvalue { i64, ptr } %t1024, ptr %t1023, 1
  %t1026 = load ptr, ptr %l406, !tbaa !29
  %t1028 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s28, ptr %s28, ptr %t1026, { i64, ptr } %t1025)
  store { i64, ptr } %t1028, ptr %l413
  br label %bb143
bb143:
  %t1029 = load { i64, ptr }, ptr %l413, !tbaa !27
  %t1030 = load ptr, ptr %l0, !tbaa !29
  %t1032 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d236, i32 0, i32 1) }, 1
  %t1033 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d236, i32 0, i32 1) }, 0
  %t1035 = extractvalue { i64, ptr } %t1029, 1
  %t1036 = extractvalue { i64, ptr } %t1029, 0
  %t1037 = add i64 %t1033, %t1036
  %t1038 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d237, i32 0, i32 1) }, 1
  %t1039 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d237, i32 0, i32 1) }, 0
  %t1040 = add i64 %t1037, %t1039
  %t1041 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1040)
  call void @olang_textcopy(ptr %t1041, ptr %t1032, i64 %t1033)
  %t1042 = getelementptr i8, ptr %t1041, i64 %t1033
  call void @olang_textcopy(ptr %t1042, ptr %t1035, i64 %t1036)
  %t1043 = getelementptr i8, ptr %t1042, i64 %t1036
  call void @olang_textcopy(ptr %t1043, ptr %t1038, i64 %t1039)
  %t1044 = insertvalue { i64, ptr } undef, i64 %t1040, 0
  %t1045 = insertvalue { i64, ptr } %t1044, ptr %t1041, 1
  %t1047 = extractvalue { i64, ptr } %t1045, 0
  %t1048 = extractvalue { i64, ptr } %t1045, 1
  %t1049 = mul i64 %t1047, 1
  %t1050 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1049)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1050, ptr %t1048, i64 %t1049, i1 false)
  %t1051 = insertvalue { i64, ptr } undef, i64 %t1047, 0
  %t1052 = insertvalue { i64, ptr } %t1051, ptr %t1050, 1
  %t1055 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1030, { i64, ptr } %t1052)
  store { i64, ptr } %t1055, ptr %l418
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s28)
  %t1056 = load { i64, ptr }, ptr %l418, !tbaa !27
  store { i64, ptr } %t1056, ptr %rv
  br label %ret
bb145:
  %t1057 = load { i64, [15 x i64] }, ptr %l1
  %t1059 = extractvalue { i64, [15 x i64] } %t1057, 0
  %t1060 = icmp eq i64 %t1059, 15
  br i1 %t1060, label %bb146, label %bb147
bb146:
  %t1062 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1063 = getelementptr { { i64, [4 x i64] } }, ptr %t1062, i32 0, i32 0
  %t1064 = load { i64, [4 x i64] }, ptr %t1063
  store { i64, [4 x i64] } %t1064, ptr %l62
  br label %bb148
bb147:
  br label %bb155
bb148:
  store %olang.scope zeroinitializer, ptr %s31
  %t1066 = load ptr, ptr %l0, !tbaa !29
  %t1068 = getelementptr %"compiler/emit:fnEm", ptr %t1066, i32 0, i32 0
  %t1069 = load ptr, ptr %t1068, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s31, ptr %t1069, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d238, i32 0, i32 1) })
  br label %bb149
bb149:
  %t1071 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1071, ptr %l424, !tbaa !29
  %t1072 = load ptr, ptr %l0, !tbaa !29
  %t1073 = load { i64, [4 x i64] }, ptr %l62
  %t1074 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1078 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s31, ptr %t1072, { i64, [4 x i64] } %t1073, i32 %t1074)
  store { i64, ptr } %t1078, ptr %l428
  br label %bb150
bb150:
  %t1079 = load { i64, ptr }, ptr %l428, !tbaa !27
  %t1080 = extractvalue { i64, ptr } %t1079, 0
  %t1081 = extractvalue { i64, ptr } %t1079, 1
  %t1082 = mul i64 %t1080, 1
  %t1083 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1082)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1083, ptr %t1081, i64 %t1082, i1 false)
  %t1084 = insertvalue { i64, ptr } undef, i64 %t1080, 0
  %t1085 = insertvalue { i64, ptr } %t1084, ptr %t1083, 1
  store { i64, ptr } %t1085, ptr %l429, !tbaa !27
  %t1086 = load ptr, ptr %l0, !tbaa !29
  %t1087 = load { i64, [4 x i64] }, ptr %l62
  %t1090 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1086, { i64, [4 x i64] } %t1087)
  store i32 %t1090, ptr %l432
  br label %bb151
bb151:
  %t1091 = load ptr, ptr %l424, !tbaa !29
  %t1092 = load { i64, ptr }, ptr %l429, !tbaa !27
  %t1093 = load i32, ptr %l432, !tbaa !23
  %t1094 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s31, ptr %s31, ptr %t1091, { i64, ptr } %t1092, i32 %t1093)
  store { i64, ptr } %t1094, ptr %l433
  br label %bb152
bb152:
  %t1095 = load { i64, ptr }, ptr %l433, !tbaa !27
  %t1096 = extractvalue { i64, ptr } %t1095, 0
  store i64 %t1096, ptr %l434, !tbaa !24
  %t1097 = load i64, ptr %l434, !tbaa !24
  %t1098 = mul i64 %t1097, 1
  %t1099 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1098)
  %t1100 = insertvalue { i64, ptr } undef, i64 %t1097, 0
  %t1101 = insertvalue { i64, ptr } %t1100, ptr %t1099, 1
  store { i64, ptr } %t1101, ptr %l435, !tbaa !27
  %t1102 = getelementptr { i64, ptr }, ptr %l435, i32 0, i32 1
  %t1103 = load ptr, ptr %t1102, !tbaa !27
  %t1104 = getelementptr { i64, ptr }, ptr %l433, i32 0, i32 1
  %t1105 = load ptr, ptr %t1104, !tbaa !27
  %t1106 = load i64, ptr %l434, !tbaa !24
  %t1107 = mul i64 %t1106, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1103, ptr %t1105, i64 %t1107, i1 false)
  %t1108 = load { i64, ptr }, ptr %l435, !tbaa !27
  %t1109 = load ptr, ptr %l0, !tbaa !29
  %t1111 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d239, i32 0, i32 1) }, 1
  %t1112 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d239, i32 0, i32 1) }, 0
  %t1114 = extractvalue { i64, ptr } %t1108, 1
  %t1115 = extractvalue { i64, ptr } %t1108, 0
  %t1116 = add i64 %t1112, %t1115
  %t1117 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d240, i32 0, i32 1) }, 1
  %t1118 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d240, i32 0, i32 1) }, 0
  %t1119 = add i64 %t1116, %t1118
  %t1120 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1119)
  call void @olang_textcopy(ptr %t1120, ptr %t1111, i64 %t1112)
  %t1121 = getelementptr i8, ptr %t1120, i64 %t1112
  call void @olang_textcopy(ptr %t1121, ptr %t1114, i64 %t1115)
  %t1122 = getelementptr i8, ptr %t1121, i64 %t1115
  call void @olang_textcopy(ptr %t1122, ptr %t1117, i64 %t1118)
  %t1123 = insertvalue { i64, ptr } undef, i64 %t1119, 0
  %t1124 = insertvalue { i64, ptr } %t1123, ptr %t1120, 1
  %t1126 = extractvalue { i64, ptr } %t1124, 0
  %t1127 = extractvalue { i64, ptr } %t1124, 1
  %t1128 = mul i64 %t1126, 1
  %t1129 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t1128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1129, ptr %t1127, i64 %t1128, i1 false)
  %t1130 = insertvalue { i64, ptr } undef, i64 %t1126, 0
  %t1131 = insertvalue { i64, ptr } %t1130, ptr %t1129, 1
  %t1134 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s31, ptr %s31, ptr %t1109, { i64, ptr } %t1131)
  store { i64, ptr } %t1134, ptr %l440
  br label %bb153
bb153:
  %t1135 = load { i64, ptr }, ptr %l440, !tbaa !27
  %t1136 = load ptr, ptr %l0, !tbaa !29
  %t1138 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d241, i32 0, i32 1) }, 1
  %t1139 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d241, i32 0, i32 1) }, 0
  %t1141 = extractvalue { i64, ptr } %t1135, 1
  %t1142 = extractvalue { i64, ptr } %t1135, 0
  %t1143 = add i64 %t1139, %t1142
  %t1144 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d242, i32 0, i32 1) }, 1
  %t1145 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d242, i32 0, i32 1) }, 0
  %t1146 = add i64 %t1143, %t1145
  %t1147 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1146)
  call void @olang_textcopy(ptr %t1147, ptr %t1138, i64 %t1139)
  %t1148 = getelementptr i8, ptr %t1147, i64 %t1139
  call void @olang_textcopy(ptr %t1148, ptr %t1141, i64 %t1142)
  %t1149 = getelementptr i8, ptr %t1148, i64 %t1142
  call void @olang_textcopy(ptr %t1149, ptr %t1144, i64 %t1145)
  %t1150 = insertvalue { i64, ptr } undef, i64 %t1146, 0
  %t1151 = insertvalue { i64, ptr } %t1150, ptr %t1147, 1
  %t1153 = extractvalue { i64, ptr } %t1151, 0
  %t1154 = extractvalue { i64, ptr } %t1151, 1
  %t1155 = mul i64 %t1153, 1
  %t1156 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1155)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1156, ptr %t1154, i64 %t1155, i1 false)
  %t1157 = insertvalue { i64, ptr } undef, i64 %t1153, 0
  %t1158 = insertvalue { i64, ptr } %t1157, ptr %t1156, 1
  %t1161 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1136, { i64, ptr } %t1158)
  store { i64, ptr } %t1161, ptr %l445
  br label %bb154
bb154:
  call void @__olang_scope_close(ptr %s31)
  %t1162 = load { i64, ptr }, ptr %l445, !tbaa !27
  store { i64, ptr } %t1162, ptr %rv
  br label %ret
bb155:
  %t1163 = load { i64, [15 x i64] }, ptr %l1
  %t1165 = extractvalue { i64, [15 x i64] } %t1163, 0
  %t1166 = icmp eq i64 %t1165, 16
  br i1 %t1166, label %bb156, label %bb157
bb156:
  %t1168 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1169 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t1168, i32 0, i32 0
  %t1170 = load { i64, [1 x i64] }, ptr %t1169
  store { i64, [1 x i64] } %t1170, ptr %l65
  %t1172 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1173 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t1172, i32 0, i32 1
  %t1174 = load { i64, [4 x i64] }, ptr %t1173
  store { i64, [4 x i64] } %t1174, ptr %l66
  br label %bb158
bb157:
  br label %bb169
bb158:
  store %olang.scope zeroinitializer, ptr %s34
  %t1176 = load ptr, ptr %l0, !tbaa !29
  %t1178 = getelementptr %"compiler/emit:fnEm", ptr %t1176, i32 0, i32 0
  %t1179 = load ptr, ptr %t1178, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s34, ptr %t1179, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d243, i32 0, i32 1) })
  br label %bb159
bb159:
  %t1181 = load { i64, [4 x i64] }, ptr %l66
  %t1183 = extractvalue { i64, [4 x i64] } %t1181, 0
  %t1184 = icmp eq i64 %t1183, 0
  br i1 %t1184, label %bb160, label %bb161
bb160:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d244, i32 0, i32 1) }, ptr %l454, !tbaa !27
  br label %bb165
bb161:
  %t1186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1186, ptr %l455, !tbaa !29
  %t1187 = load ptr, ptr %l0, !tbaa !29
  %t1188 = load { i64, [4 x i64] }, ptr %l66
  %t1189 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1193 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s34, ptr %t1187, { i64, [4 x i64] } %t1188, i32 %t1189)
  store { i64, ptr } %t1193, ptr %l459
  br label %bb162
bb162:
  %t1194 = load { i64, ptr }, ptr %l459, !tbaa !27
  %t1195 = extractvalue { i64, ptr } %t1194, 0
  %t1196 = extractvalue { i64, ptr } %t1194, 1
  %t1197 = mul i64 %t1195, 1
  %t1198 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1197)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1198, ptr %t1196, i64 %t1197, i1 false)
  %t1199 = insertvalue { i64, ptr } undef, i64 %t1195, 0
  %t1200 = insertvalue { i64, ptr } %t1199, ptr %t1198, 1
  store { i64, ptr } %t1200, ptr %l460, !tbaa !27
  %t1201 = load ptr, ptr %l0, !tbaa !29
  %t1202 = load { i64, [4 x i64] }, ptr %l66
  %t1205 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t1201, { i64, [4 x i64] } %t1202)
  store i32 %t1205, ptr %l463
  br label %bb163
bb163:
  %t1206 = load ptr, ptr %l455, !tbaa !29
  %t1207 = load { i64, ptr }, ptr %l460, !tbaa !27
  %t1208 = load i32, ptr %l463, !tbaa !23
  %t1209 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %s34, ptr %s34, ptr %t1206, { i64, ptr } %t1207, i32 %t1208)
  store { i64, ptr } %t1209, ptr %l464
  br label %bb164
bb164:
  %t1210 = load { i64, ptr }, ptr %l464, !tbaa !27
  %t1211 = extractvalue { i64, ptr } %t1210, 0
  store i64 %t1211, ptr %l465, !tbaa !24
  %t1212 = load i64, ptr %l465, !tbaa !24
  %t1213 = mul i64 %t1212, 1
  %t1214 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1213)
  %t1215 = insertvalue { i64, ptr } undef, i64 %t1212, 0
  %t1216 = insertvalue { i64, ptr } %t1215, ptr %t1214, 1
  store { i64, ptr } %t1216, ptr %l466, !tbaa !27
  %t1217 = getelementptr { i64, ptr }, ptr %l466, i32 0, i32 1
  %t1218 = load ptr, ptr %t1217, !tbaa !27
  %t1219 = getelementptr { i64, ptr }, ptr %l464, i32 0, i32 1
  %t1220 = load ptr, ptr %t1219, !tbaa !27
  %t1221 = load i64, ptr %l465, !tbaa !24
  %t1222 = mul i64 %t1221, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1218, ptr %t1220, i64 %t1222, i1 false)
  %t1223 = load { i64, ptr }, ptr %l466, !tbaa !27
  %t1224 = extractvalue { i64, ptr } %t1223, 0
  %t1225 = extractvalue { i64, ptr } %t1223, 1
  %t1226 = mul i64 %t1224, 1
  %t1227 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1227, ptr %t1225, i64 %t1226, i1 false)
  %t1228 = insertvalue { i64, ptr } undef, i64 %t1224, 0
  %t1229 = insertvalue { i64, ptr } %t1228, ptr %t1227, 1
  store { i64, ptr } %t1229, ptr %l454, !tbaa !27
  br label %bb165
bb165:
  %t1231 = load { i64, ptr }, ptr %l454, !tbaa !27
  store { i64, ptr } %t1231, ptr %l67, !tbaa !27
  %t1232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1232, ptr %l468, !tbaa !29
  %t1233 = load ptr, ptr %l0, !tbaa !29
  %t1234 = load { i64, [1 x i64] }, ptr %l65
  %t1237 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s34, ptr %t1233, { i64, [1 x i64] } %t1234)
  store { i64, ptr } %t1237, ptr %l471
  br label %bb166
bb166:
  %t1238 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t1239 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d245, i32 0, i32 1) }, 1
  %t1240 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d245, i32 0, i32 1) }, 0
  %t1241 = load { i64, ptr }, ptr %l471, !tbaa !27
  %t1242 = extractvalue { i64, ptr } %t1241, 1
  %t1243 = extractvalue { i64, ptr } %t1241, 0
  %t1244 = add i64 %t1240, %t1243
  %t1245 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d246, i32 0, i32 1) }, 1
  %t1246 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d246, i32 0, i32 1) }, 0
  %t1247 = add i64 %t1244, %t1246
  %t1249 = extractvalue { i64, ptr } %t1238, 1
  %t1250 = extractvalue { i64, ptr } %t1238, 0
  %t1251 = add i64 %t1247, %t1250
  %t1252 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d247, i32 0, i32 1) }, 1
  %t1253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d247, i32 0, i32 1) }, 0
  %t1254 = add i64 %t1251, %t1253
  %t1255 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1254)
  call void @olang_textcopy(ptr %t1255, ptr %t1239, i64 %t1240)
  %t1256 = getelementptr i8, ptr %t1255, i64 %t1240
  call void @olang_textcopy(ptr %t1256, ptr %t1242, i64 %t1243)
  %t1257 = getelementptr i8, ptr %t1256, i64 %t1243
  call void @olang_textcopy(ptr %t1257, ptr %t1245, i64 %t1246)
  %t1258 = getelementptr i8, ptr %t1257, i64 %t1246
  call void @olang_textcopy(ptr %t1258, ptr %t1249, i64 %t1250)
  %t1259 = getelementptr i8, ptr %t1258, i64 %t1250
  call void @olang_textcopy(ptr %t1259, ptr %t1252, i64 %t1253)
  %t1260 = insertvalue { i64, ptr } undef, i64 %t1254, 0
  %t1261 = insertvalue { i64, ptr } %t1260, ptr %t1255, 1
  %t1263 = extractvalue { i64, ptr } %t1261, 0
  %t1264 = extractvalue { i64, ptr } %t1261, 1
  %t1265 = mul i64 %t1263, 1
  %t1266 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t1265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1266, ptr %t1264, i64 %t1265, i1 false)
  %t1267 = insertvalue { i64, ptr } undef, i64 %t1263, 0
  %t1268 = insertvalue { i64, ptr } %t1267, ptr %t1266, 1
  %t1269 = load ptr, ptr %l468, !tbaa !29
  %t1271 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s34, ptr %s34, ptr %t1269, { i64, ptr } %t1268)
  store { i64, ptr } %t1271, ptr %l475
  br label %bb167
bb167:
  %t1272 = load { i64, ptr }, ptr %l475, !tbaa !27
  %t1273 = load ptr, ptr %l0, !tbaa !29
  %t1275 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d248, i32 0, i32 1) }, 1
  %t1276 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d248, i32 0, i32 1) }, 0
  %t1278 = extractvalue { i64, ptr } %t1272, 1
  %t1279 = extractvalue { i64, ptr } %t1272, 0
  %t1280 = add i64 %t1276, %t1279
  %t1281 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d249, i32 0, i32 1) }, 1
  %t1282 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d249, i32 0, i32 1) }, 0
  %t1283 = add i64 %t1280, %t1282
  %t1284 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1283)
  call void @olang_textcopy(ptr %t1284, ptr %t1275, i64 %t1276)
  %t1285 = getelementptr i8, ptr %t1284, i64 %t1276
  call void @olang_textcopy(ptr %t1285, ptr %t1278, i64 %t1279)
  %t1286 = getelementptr i8, ptr %t1285, i64 %t1279
  call void @olang_textcopy(ptr %t1286, ptr %t1281, i64 %t1282)
  %t1287 = insertvalue { i64, ptr } undef, i64 %t1283, 0
  %t1288 = insertvalue { i64, ptr } %t1287, ptr %t1284, 1
  %t1290 = extractvalue { i64, ptr } %t1288, 0
  %t1291 = extractvalue { i64, ptr } %t1288, 1
  %t1292 = mul i64 %t1290, 1
  %t1293 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1293, ptr %t1291, i64 %t1292, i1 false)
  %t1294 = insertvalue { i64, ptr } undef, i64 %t1290, 0
  %t1295 = insertvalue { i64, ptr } %t1294, ptr %t1293, 1
  %t1298 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1273, { i64, ptr } %t1295)
  store { i64, ptr } %t1298, ptr %l480
  br label %bb168
bb168:
  call void @__olang_scope_close(ptr %s34)
  %t1299 = load { i64, ptr }, ptr %l480, !tbaa !27
  store { i64, ptr } %t1299, ptr %rv
  br label %ret
bb169:
  %t1300 = load { i64, [15 x i64] }, ptr %l1
  %t1302 = extractvalue { i64, [15 x i64] } %t1300, 0
  %t1303 = icmp eq i64 %t1302, 17
  br i1 %t1303, label %bb170, label %bb171
bb170:
  %t1305 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1306 = getelementptr { i64 }, ptr %t1305, i32 0, i32 0
  %t1307 = load i64, ptr %t1306
  store i64 %t1307, ptr %l69, !tbaa !24
  br label %bb172
bb171:
  br label %bb175
bb172:
  store %olang.scope zeroinitializer, ptr %s37
  %t1309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1309, ptr %l484, !tbaa !29
  %t1310 = load ptr, ptr %l0, !tbaa !29
  %t1312 = getelementptr %"compiler/emit:fnEm", ptr %t1310, i32 0, i32 0
  %t1313 = load ptr, ptr %t1312, !tbaa !29
  %t1314 = load i64, ptr %l69, !tbaa !24
  %t1317 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esole(ptr %v0, ptr %s37, ptr %t1313, i64 %t1314)
  store { i64, ptr } %t1317, ptr %l488
  br label %bb173
bb173:
  %t1318 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 1
  %t1319 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d250, i32 0, i32 1) }, 0
  %t1320 = load { i64, ptr }, ptr %l488, !tbaa !27
  %t1321 = extractvalue { i64, ptr } %t1320, 1
  %t1322 = extractvalue { i64, ptr } %t1320, 0
  %t1323 = add i64 %t1319, %t1322
  %t1324 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1323)
  call void @olang_textcopy(ptr %t1324, ptr %t1318, i64 %t1319)
  %t1325 = getelementptr i8, ptr %t1324, i64 %t1319
  call void @olang_textcopy(ptr %t1325, ptr %t1321, i64 %t1322)
  %t1326 = insertvalue { i64, ptr } undef, i64 %t1323, 0
  %t1327 = insertvalue { i64, ptr } %t1326, ptr %t1324, 1
  %t1329 = extractvalue { i64, ptr } %t1327, 0
  %t1330 = extractvalue { i64, ptr } %t1327, 1
  %t1331 = mul i64 %t1329, 1
  %t1332 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1331)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1332, ptr %t1330, i64 %t1331, i1 false)
  %t1333 = insertvalue { i64, ptr } undef, i64 %t1329, 0
  %t1334 = insertvalue { i64, ptr } %t1333, ptr %t1332, 1
  %t1335 = load ptr, ptr %l484, !tbaa !29
  %t1337 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t1335, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d251, i32 0, i32 1) }, { i64, ptr } %t1334, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t1337, ptr %l491
  br label %bb174
bb174:
  call void @__olang_scope_close(ptr %s37)
  %t1338 = load { i64, ptr }, ptr %l491, !tbaa !27
  store { i64, ptr } %t1338, ptr %rv
  br label %ret
bb175:
  %t1339 = load { i64, [15 x i64] }, ptr %l1
  %t1341 = extractvalue { i64, [15 x i64] } %t1339, 0
  %t1342 = icmp eq i64 %t1341, 18
  br i1 %t1342, label %bb176, label %bb177
bb176:
  %t1344 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1345 = getelementptr { { i64, [1 x i64] } }, ptr %t1344, i32 0, i32 0
  %t1346 = load { i64, [1 x i64] }, ptr %t1345
  store { i64, [1 x i64] } %t1346, ptr %l70
  br label %bb178
bb177:
  br label %bb181
bb178:
  store %olang.scope zeroinitializer, ptr %s39
  %t1348 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1348, ptr %l495, !tbaa !29
  %t1349 = load ptr, ptr %l0, !tbaa !29
  %t1350 = load { i64, [1 x i64] }, ptr %l70
  %t1353 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s39, ptr %t1349, { i64, [1 x i64] } %t1350)
  store { i64, ptr } %t1353, ptr %l498
  br label %bb179
bb179:
  %t1354 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d252, i32 0, i32 1) }, 1
  %t1355 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d252, i32 0, i32 1) }, 0
  %t1356 = load { i64, ptr }, ptr %l498, !tbaa !27
  %t1357 = extractvalue { i64, ptr } %t1356, 1
  %t1358 = extractvalue { i64, ptr } %t1356, 0
  %t1359 = add i64 %t1355, %t1358
  %t1360 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d253, i32 0, i32 1) }, 1
  %t1361 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d253, i32 0, i32 1) }, 0
  %t1362 = add i64 %t1359, %t1361
  %t1363 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1362)
  call void @olang_textcopy(ptr %t1363, ptr %t1354, i64 %t1355)
  %t1364 = getelementptr i8, ptr %t1363, i64 %t1355
  call void @olang_textcopy(ptr %t1364, ptr %t1357, i64 %t1358)
  %t1365 = getelementptr i8, ptr %t1364, i64 %t1358
  call void @olang_textcopy(ptr %t1365, ptr %t1360, i64 %t1361)
  %t1366 = insertvalue { i64, ptr } undef, i64 %t1362, 0
  %t1367 = insertvalue { i64, ptr } %t1366, ptr %t1363, 1
  %t1369 = extractvalue { i64, ptr } %t1367, 0
  %t1370 = extractvalue { i64, ptr } %t1367, 1
  %t1371 = mul i64 %t1369, 1
  %t1372 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1371)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1372, ptr %t1370, i64 %t1371, i1 false)
  %t1373 = insertvalue { i64, ptr } undef, i64 %t1369, 0
  %t1374 = insertvalue { i64, ptr } %t1373, ptr %t1372, 1
  %t1375 = load ptr, ptr %l495, !tbaa !29
  %t1377 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1375, { i64, ptr } %t1374)
  store { i64, ptr } %t1377, ptr %l501
  br label %bb180
bb180:
  call void @__olang_scope_close(ptr %s39)
  %t1378 = load { i64, ptr }, ptr %l501, !tbaa !27
  store { i64, ptr } %t1378, ptr %rv
  br label %ret
bb181:
  %t1379 = load { i64, [15 x i64] }, ptr %l1
  %t1381 = extractvalue { i64, [15 x i64] } %t1379, 0
  %t1382 = icmp eq i64 %t1381, 19
  br i1 %t1382, label %bb182, label %bb183
bb182:
  br label %bb184
bb183:
  br label %bb188
bb184:
  store %olang.scope zeroinitializer, ptr %s41
  %t1384 = load ptr, ptr %l0, !tbaa !29
  %t1386 = getelementptr %"compiler/emit:fnEm", ptr %t1384, i32 0, i32 0
  %t1387 = load ptr, ptr %t1386, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s41, ptr %t1387, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d254, i32 0, i32 1) })
  br label %bb185
bb185:
  %t1389 = load ptr, ptr %l0, !tbaa !29
  %t1391 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s41, ptr %s41, ptr %t1389, { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d255, i32 0, i32 1) })
  store { i64, ptr } %t1391, ptr %l507
  br label %bb186
bb186:
  %t1392 = load { i64, ptr }, ptr %l507, !tbaa !27
  %t1393 = load ptr, ptr %l0, !tbaa !29
  %t1395 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d256, i32 0, i32 1) }, 1
  %t1396 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d256, i32 0, i32 1) }, 0
  %t1398 = extractvalue { i64, ptr } %t1392, 1
  %t1399 = extractvalue { i64, ptr } %t1392, 0
  %t1400 = add i64 %t1396, %t1399
  %t1401 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d257, i32 0, i32 1) }, 1
  %t1402 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d257, i32 0, i32 1) }, 0
  %t1403 = add i64 %t1400, %t1402
  %t1404 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1403)
  call void @olang_textcopy(ptr %t1404, ptr %t1395, i64 %t1396)
  %t1405 = getelementptr i8, ptr %t1404, i64 %t1396
  call void @olang_textcopy(ptr %t1405, ptr %t1398, i64 %t1399)
  %t1406 = getelementptr i8, ptr %t1405, i64 %t1399
  call void @olang_textcopy(ptr %t1406, ptr %t1401, i64 %t1402)
  %t1407 = insertvalue { i64, ptr } undef, i64 %t1403, 0
  %t1408 = insertvalue { i64, ptr } %t1407, ptr %t1404, 1
  %t1410 = extractvalue { i64, ptr } %t1408, 0
  %t1411 = extractvalue { i64, ptr } %t1408, 1
  %t1412 = mul i64 %t1410, 1
  %t1413 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1413, ptr %t1411, i64 %t1412, i1 false)
  %t1414 = insertvalue { i64, ptr } undef, i64 %t1410, 0
  %t1415 = insertvalue { i64, ptr } %t1414, ptr %t1413, 1
  %t1418 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1393, { i64, ptr } %t1415)
  store { i64, ptr } %t1418, ptr %l512
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s41)
  %t1419 = load { i64, ptr }, ptr %l512, !tbaa !27
  store { i64, ptr } %t1419, ptr %rv
  br label %ret
bb188:
  %t1420 = load { i64, [15 x i64] }, ptr %l1
  %t1422 = extractvalue { i64, [15 x i64] } %t1420, 0
  %t1423 = icmp eq i64 %t1422, 20
  br i1 %t1423, label %bb189, label %bb190
bb189:
  br label %bb191
bb190:
  br label %bb194
bb191:
  store %olang.scope zeroinitializer, ptr %s43
  %t1425 = load ptr, ptr %l0, !tbaa !29
  %t1427 = getelementptr %"compiler/emit:fnEm", ptr %t1425, i32 0, i32 0
  %t1428 = load ptr, ptr %t1427, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s43, ptr %t1428, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d258, i32 0, i32 1) })
  br label %bb192
bb192:
  %t1430 = load ptr, ptr %l0, !tbaa !29
  %t1432 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1430, { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d259, i32 0, i32 1) })
  store { i64, ptr } %t1432, ptr %l518
  br label %bb193
bb193:
  call void @__olang_scope_close(ptr %s43)
  %t1433 = load { i64, ptr }, ptr %l518, !tbaa !27
  store { i64, ptr } %t1433, ptr %rv
  br label %ret
bb194:
  %t1434 = load { i64, [15 x i64] }, ptr %l1
  %t1436 = extractvalue { i64, [15 x i64] } %t1434, 0
  %t1437 = icmp eq i64 %t1436, 21
  br i1 %t1437, label %bb195, label %bb196
bb195:
  %t1439 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1440 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t1439, i32 0, i32 0
  %t1441 = load %"compiler/mir:Lvalue", ptr %t1440
  store %"compiler/mir:Lvalue" %t1441, ptr %l72
  br label %bb197
bb196:
  br label %bb202
bb197:
  store %olang.scope zeroinitializer, ptr %s44
  %t1443 = load ptr, ptr %l0, !tbaa !29
  %t1444 = load %"compiler/mir:Lvalue", ptr %l72
  %t1447 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s44, ptr %t1443, %"compiler/mir:Lvalue" %t1444)
  store { { i64, ptr }, i32 } %t1447, ptr %l524
  br label %bb198
bb198:
  %t1448 = load { { i64, ptr }, i32 }, ptr %l524
  store { { i64, ptr }, i32 } %t1448, ptr %l73
  %t1449 = getelementptr { { i64, ptr }, i32 }, ptr %l73, i32 0, i32 0
  %t1450 = load { i64, ptr }, ptr %t1449, !tbaa !27
  store { i64, ptr } %t1450, ptr %l74, !tbaa !27
  %t1452 = load ptr, ptr %l0, !tbaa !29
  %t1454 = getelementptr %"compiler/emit:fnEm", ptr %t1452, i32 0, i32 0
  %t1455 = load ptr, ptr %t1454, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s44, ptr %t1455, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d260, i32 0, i32 1) })
  br label %bb199
bb199:
  %t1457 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1457, ptr %l528, !tbaa !29
  %t1458 = load ptr, ptr %l0, !tbaa !29
  %t1459 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t1462 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s44, ptr %s44, ptr %s44, ptr %s44, ptr %t1458, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d261, i32 0, i32 1) }, { i64, ptr } %t1459, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t1462, ptr %l531
  br label %bb200
bb200:
  %t1463 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d262, i32 0, i32 1) }, 1
  %t1464 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d262, i32 0, i32 1) }, 0
  %t1465 = load { i64, ptr }, ptr %l531, !tbaa !27
  %t1466 = extractvalue { i64, ptr } %t1465, 1
  %t1467 = extractvalue { i64, ptr } %t1465, 0
  %t1468 = add i64 %t1464, %t1467
  %t1469 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 1
  %t1470 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d263, i32 0, i32 1) }, 0
  %t1471 = add i64 %t1468, %t1470
  %t1472 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1471)
  call void @olang_textcopy(ptr %t1472, ptr %t1463, i64 %t1464)
  %t1473 = getelementptr i8, ptr %t1472, i64 %t1464
  call void @olang_textcopy(ptr %t1473, ptr %t1466, i64 %t1467)
  %t1474 = getelementptr i8, ptr %t1473, i64 %t1467
  call void @olang_textcopy(ptr %t1474, ptr %t1469, i64 %t1470)
  %t1475 = insertvalue { i64, ptr } undef, i64 %t1471, 0
  %t1476 = insertvalue { i64, ptr } %t1475, ptr %t1472, 1
  %t1478 = extractvalue { i64, ptr } %t1476, 0
  %t1479 = extractvalue { i64, ptr } %t1476, 1
  %t1480 = mul i64 %t1478, 1
  %t1481 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1480)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1481, ptr %t1479, i64 %t1480, i1 false)
  %t1482 = insertvalue { i64, ptr } undef, i64 %t1478, 0
  %t1483 = insertvalue { i64, ptr } %t1482, ptr %t1481, 1
  %t1484 = load ptr, ptr %l528, !tbaa !29
  %t1486 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1484, { i64, ptr } %t1483)
  store { i64, ptr } %t1486, ptr %l534
  br label %bb201
bb201:
  call void @__olang_scope_close(ptr %s44)
  %t1487 = load { i64, ptr }, ptr %l534, !tbaa !27
  store { i64, ptr } %t1487, ptr %rv
  br label %ret
bb202:
  %t1488 = load { i64, [15 x i64] }, ptr %l1
  %t1490 = extractvalue { i64, [15 x i64] } %t1488, 0
  %t1491 = icmp eq i64 %t1490, 22
  br i1 %t1491, label %bb203, label %bb204
bb203:
  %t1493 = getelementptr { i64, [15 x i64] }, ptr %l1, i32 0, i32 1
  %t1494 = getelementptr { { i64, [4 x i64] } }, ptr %t1493, i32 0, i32 0
  %t1495 = load { i64, [4 x i64] }, ptr %t1494
  store { i64, [4 x i64] } %t1495, ptr %l75
  br label %bb205
bb204:
  br label %bb209
bb205:
  store %olang.scope zeroinitializer, ptr %s46
  %t1497 = load ptr, ptr %l0, !tbaa !29
  %t1499 = getelementptr %"compiler/emit:fnEm", ptr %t1497, i32 0, i32 0
  %t1500 = load ptr, ptr %t1499, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s46, ptr %t1500, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d264, i32 0, i32 1) })
  br label %bb206
bb206:
  %t1502 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1502, ptr %l540, !tbaa !29
  %t1503 = load ptr, ptr %l0, !tbaa !29
  %t1504 = load { i64, [4 x i64] }, ptr %l75
  %t1505 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t1509 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s46, ptr %t1503, { i64, [4 x i64] } %t1504, i32 %t1505)
  store { i64, ptr } %t1509, ptr %l544
  br label %bb207
bb207:
  %t1510 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d265, i32 0, i32 1) }, 1
  %t1511 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d265, i32 0, i32 1) }, 0
  %t1512 = load { i64, ptr }, ptr %l544, !tbaa !27
  %t1513 = extractvalue { i64, ptr } %t1512, 1
  %t1514 = extractvalue { i64, ptr } %t1512, 0
  %t1515 = add i64 %t1511, %t1514
  %t1516 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d266, i32 0, i32 1) }, 1
  %t1517 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d266, i32 0, i32 1) }, 0
  %t1518 = add i64 %t1515, %t1517
  %t1519 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1518)
  call void @olang_textcopy(ptr %t1519, ptr %t1510, i64 %t1511)
  %t1520 = getelementptr i8, ptr %t1519, i64 %t1511
  call void @olang_textcopy(ptr %t1520, ptr %t1513, i64 %t1514)
  %t1521 = getelementptr i8, ptr %t1520, i64 %t1514
  call void @olang_textcopy(ptr %t1521, ptr %t1516, i64 %t1517)
  %t1522 = insertvalue { i64, ptr } undef, i64 %t1518, 0
  %t1523 = insertvalue { i64, ptr } %t1522, ptr %t1519, 1
  %t1525 = extractvalue { i64, ptr } %t1523, 0
  %t1526 = extractvalue { i64, ptr } %t1523, 1
  %t1527 = mul i64 %t1525, 1
  %t1528 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1527)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1528, ptr %t1526, i64 %t1527, i1 false)
  %t1529 = insertvalue { i64, ptr } undef, i64 %t1525, 0
  %t1530 = insertvalue { i64, ptr } %t1529, ptr %t1528, 1
  %t1531 = load ptr, ptr %l540, !tbaa !29
  %t1533 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v1, ptr %t1531, { i64, ptr } %t1530)
  store { i64, ptr } %t1533, ptr %l547
  br label %bb208
bb208:
  call void @__olang_scope_close(ptr %s46)
  %t1534 = load { i64, ptr }, ptr %l547, !tbaa !27
  store { i64, ptr } %t1534, ptr %rv
  br label %ret
bb209:
  call void @__olang_check_failed(ptr @olang_loc_b25f444594da9527_de5411018827488b)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2femit_2ecompiler_2femit_3afnEm_2espawn(ptr %v0, ptr %a0, i32 %a1, %"compiler/mir:Task" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/mir:Task"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, [7 x i64] }
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca i32
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l33 = alloca { i64, [1 x i64] }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca { { i64, ptr }, i32 }
  %l42 = alloca { i64, ptr }
  %l43 = alloca i32
  %l44 = alloca i32
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca { i64, ptr }
  %l51 = alloca i32
  %l52 = alloca i32
  %l53 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i32
  %l56 = alloca i32
  %l57 = alloca { i64, [1 x i64] }
  %l58 = alloca { i64, ptr }
  %l59 = alloca %"std/prelude/text:StringBuilder"
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca i64
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l96 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l114 = alloca i64
  %l124 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l127 = alloca i64
  %l135 = alloca i32
  %l139 = alloca { i64, ptr }
  %l141 = alloca i64
  %l148 = alloca ptr
  %l151 = alloca i32
  %l152 = alloca { i64, ptr }
  %l153 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l164 = alloca i64
  %l167 = alloca i64
  %l185 = alloca ptr
  %l186 = alloca i64
  %l189 = alloca { i64, ptr }
  %l192 = alloca { i64, ptr }
  %l194 = alloca ptr
  %l195 = alloca i64
  %l198 = alloca { i64, ptr }
  %l201 = alloca i1
  %l202 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l205 = alloca ptr
  %l209 = alloca { i64, [4 x i64] }
  %l210 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l217 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l222 = alloca i32
  %l225 = alloca i32
  %l251 = alloca { i64, [1 x i64] }
  %l257 = alloca ptr
  %l260 = alloca { i64, ptr }
  %l263 = alloca { i64, ptr }
  %l264 = alloca ptr
  %l265 = alloca i64
  %l270 = alloca ptr
  %l271 = alloca i64
  %l282 = alloca i32
  %l285 = alloca i32
  %l304 = alloca ptr
  %l313 = alloca %"compiler/mir:Lvalue"
  %l314 = alloca { { i64, ptr }, i32 }
  %l316 = alloca ptr
  %l317 = alloca i64
  %l328 = alloca i32
  %l331 = alloca i32
  %l357 = alloca %"compiler/mir:TaskClause"
  %l363 = alloca ptr
  %l364 = alloca i64
  %l366 = alloca ptr
  %l367 = alloca { i64, [4 x i64] }
  %l370 = alloca i32
  %l371 = alloca { i64, ptr }
  %l376 = alloca i64
  %l384 = alloca i32
  %l387 = alloca i32
  %l413 = alloca { i64, [1 x i64] }
  %l418 = alloca i32
  %l420 = alloca i64
  %l424 = alloca ptr
  %l427 = alloca { i64, ptr }
  %l430 = alloca { i64, ptr }
  %l431 = alloca ptr
  %l432 = alloca i64
  %l437 = alloca i32
  %l439 = alloca i64
  %l441 = alloca ptr
  %l442 = alloca i64
  %l449 = alloca %"std/prelude/text:StringBuilder"
  %l452 = alloca i64
  %l456 = alloca i64
  %l459 = alloca i64
  %l480 = alloca ptr
  %l483 = alloca { i64, ptr }
  %l487 = alloca i64
  %l492 = alloca { i64, ptr }
  %l494 = alloca ptr
  %l499 = alloca { i64, ptr }
  %l502 = alloca { i64, ptr }
  %l508 = alloca { i64, ptr }
  %l510 = alloca i64
  %l512 = alloca i64
  %l516 = alloca i64
  %l519 = alloca i64
  %l543 = alloca { i64, ptr }
  %l546 = alloca { i64, ptr }
  %l547 = alloca i1
  %l548 = alloca ptr
  %l549 = alloca { i64, ptr }
  %l550 = alloca { i64, ptr }
  %l554 = alloca i32
  %l560 = alloca { i64, [4 x i64] }
  %l561 = alloca ptr
  %l564 = alloca { i64, ptr }
  %l567 = alloca { i64, ptr }
  %l575 = alloca { i64, ptr }
  %l576 = alloca { i64, ptr }
  %l577 = alloca { i64, ptr }
  %l578 = alloca [4 x i8]
  %l582 = alloca i64
  %l584 = alloca i64
  %l589 = alloca { i64, ptr }
  %l594 = alloca { i64, ptr }
  %l598 = alloca ptr
  %l599 = alloca { i64, ptr }
  %l604 = alloca { i64, ptr }
  %l606 = alloca { i64, ptr }
  %l608 = alloca i64
  %l610 = alloca i64
  %l611 = alloca { i64, ptr }
  %l614 = alloca ptr
  %l615 = alloca { i64, ptr }
  %l620 = alloca { i64, ptr }
  %l622 = alloca ptr
  %l627 = alloca { i64, ptr }
  %l629 = alloca ptr
  %l634 = alloca { i64, ptr }
  %l636 = alloca ptr
  %l641 = alloca { i64, ptr }
  %l643 = alloca ptr
  %l644 = alloca { i64, ptr }
  %l645 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l647 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l648 = alloca i1
  %l649 = alloca { i64, ptr }
  %l650 = alloca i32
  %l652 = alloca i64
  %l653 = alloca %"compiler/mir:Task"
  %l659 = alloca %"compiler/mir:ScopeInfo"
  %l662 = alloca { i64, ptr }
  %l666 = alloca { i64, ptr }
  %l674 = alloca ptr
  %l679 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s32 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s46 = alloca %olang.scope
  %s48 = alloca %olang.scope
  %s49 = alloca %olang.scope
  %s53 = alloca %olang.scope
  %t767 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/mir:Task" %a2, ptr %l2
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
  store ptr %t12, ptr %l4, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d267, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d267, i32 0, i32 1) }, 0
  %t18 = sext i32 %t14 to i64
  %t19 = call i64 @__olang_fmt_i64(ptr null, i64 %t18)
  %t20 = add i64 %t16, %t19
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @olang_textcopy(ptr %t21, ptr %t15, i64 %t16)
  %t22 = getelementptr i8, ptr %t21, i64 %t16
  %t23 = call i64 @__olang_fmt_i64(ptr %t22, i64 %t18)
  %t24 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t21, 1
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t27, ptr %l6, !tbaa !23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d268, i32 0, i32 1) }, ptr %l93, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l93, !tbaa !27
  store { i64, ptr } %t29, ptr %l94, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l95, !tbaa !24
  %t32 = load i64, ptr %l95, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l96, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l95, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t43, ptr %l7, !tbaa !27
  store i1 false, ptr %l8, !tbaa !21
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d269, i32 0, i32 1) }, ptr %l97, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t44, ptr %l98, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  store i64 %t46, ptr %l99, !tbaa !24
  %t47 = load i64, ptr %l99, !tbaa !24
  %t48 = mul i64 %t47, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l100, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l99, !tbaa !24
  %t57 = mul i64 %t56, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t53, ptr %t55, i64 %t57, i1 false)
  %t58 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t58, ptr %l9, !tbaa !27
  %t59 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 0
  %t60 = load { i64, [7 x i64] }, ptr %t59
  store { i64, [7 x i64] } %t60, ptr %l10
  %t62 = load { i64, [7 x i64] }, ptr %l10
  %t64 = extractvalue { i64, [7 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 0
  br i1 %t65, label %bb1, label %bb2
bb1:
  %t67 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t68 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t67, i32 0, i32 0
  %t69 = load { i64, [2 x i64] }, ptr %t68
  store { i64, [2 x i64] } %t69, ptr %l11
  %t71 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t72 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t71, i32 0, i32 1
  %t73 = load i32, ptr %t72
  store i32 %t73, ptr %l12, !tbaa !23
  br label %bb3
bb2:
  br label %bb9
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t76 = load { i64, [2 x i64] }, ptr %l11
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %t75, { i64, [2 x i64] } %t76)
  br label %bb4
bb4:
  %t79 = load i32, ptr %l12, !tbaa !23
  store i32 %t79, ptr %l6, !tbaa !23
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t82 = load { i64, [2 x i64] }, ptr %l11
  %t85 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %s2, ptr %t81, { i64, [2 x i64] } %t82)
  store { i64, ptr } %t85, ptr %l111
  br label %bb5
bb5:
  %t86 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 1
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d270, i32 0, i32 1) }, 0
  %t88 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t86, i64 %t87)
  %t93 = getelementptr i8, ptr %t92, i64 %t87
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  store { i64, ptr } %t95, ptr %l112, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l114, !tbaa !24
  %t101 = load i64, ptr %l114, !tbaa !24
  %t102 = icmp eq i64 %t97, %t101
  br i1 %t102, label %bb6, label %bb7
bb6:
  %t104 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = load i64, ptr %l114, !tbaa !24
  %t109 = mul i64 %t108, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %t107, i64 %t109, i1 false)
  br label %bb8
bb7:
  %t110 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t110, ptr %l7, !tbaa !27
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb9:
  %t111 = load { i64, [7 x i64] }, ptr %l10
  %t113 = extractvalue { i64, [7 x i64] } %t111, 0
  %t114 = icmp eq i64 %t113, 1
  br i1 %t114, label %bb10, label %bb11
bb10:
  %t116 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t117 = getelementptr { i64, i32 }, ptr %t116, i32 0, i32 0
  %t118 = load i64, ptr %t117
  store i64 %t118, ptr %l13, !tbaa !24
  %t120 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t121 = getelementptr { i64, i32 }, ptr %t120, i32 0, i32 1
  %t122 = load i32, ptr %t121
  store i32 %t122, ptr %l14, !tbaa !23
  br label %bb12
bb11:
  br label %bb18
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  %t124 = load i32, ptr %l14, !tbaa !23
  store i32 %t124, ptr %l6, !tbaa !23
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t127 = load i64, ptr %l13, !tbaa !24
  %t128 = load i32, ptr %l14, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eextern(ptr %v0, ptr %s4, ptr %t126, i64 %t127, i32 %t128)
  store { i64, ptr } %t132, ptr %l124
  br label %bb13
bb13:
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d271, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d271, i32 0, i32 1) }, 0
  %t135 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 1
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = add i64 %t134, %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t133, i64 %t134)
  %t140 = getelementptr i8, ptr %t139, i64 %t134
  call void @olang_textcopy(ptr %t140, ptr %t136, i64 %t137)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  store { i64, ptr } %t142, ptr %l125, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 0
  %t145 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 0
  store i64 %t146, ptr %l127, !tbaa !24
  %t148 = load i64, ptr %l127, !tbaa !24
  %t149 = icmp eq i64 %t144, %t148
  br i1 %t149, label %bb14, label %bb15
bb14:
  %t151 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = load i64, ptr %l127, !tbaa !24
  %t156 = mul i64 %t155, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t152, ptr %t154, i64 %t156, i1 false)
  br label %bb16
bb15:
  %t157 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t157, ptr %l7, !tbaa !27
  br label %bb16
bb16:
  %t158 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s4, ptr %t158, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d272, i32 0, i32 1) })
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb18:
  %t160 = load { i64, [7 x i64] }, ptr %l10
  %t162 = extractvalue { i64, [7 x i64] } %t160, 0
  %t163 = icmp eq i64 %t162, 2
  br i1 %t163, label %bb19, label %bb20
bb19:
  %t165 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t166 = getelementptr { { i64, [4 x i64] } }, ptr %t165, i32 0, i32 0
  %t167 = load { i64, [4 x i64] }, ptr %t166
  store { i64, [4 x i64] } %t167, ptr %l15
  br label %bb21
bb20:
  br label %bb27
bb21:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load { i64, [4 x i64] }, ptr %l15
  %t173 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t169, { i64, [4 x i64] } %t170)
  store i32 %t173, ptr %l135
  br label %bb22
bb22:
  %t174 = load i32, ptr %l135, !tbaa !23
  store i32 %t174, ptr %l6, !tbaa !23
  store i1 true, ptr %l8, !tbaa !21
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load { i64, [4 x i64] }, ptr %l15
  %t177 = load i32, ptr %l6, !tbaa !23
  %t181 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t175, { i64, [4 x i64] } %t176, i32 %t177)
  store { i64, ptr } %t181, ptr %l139
  br label %bb23
bb23:
  %t182 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t185 = extractvalue { i64, ptr } %t184, 0
  store i64 %t185, ptr %l141, !tbaa !24
  %t187 = load i64, ptr %l141, !tbaa !24
  %t188 = icmp eq i64 %t183, %t187
  br i1 %t188, label %bb24, label %bb25
bb24:
  %t190 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l141, !tbaa !24
  %t195 = mul i64 %t194, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t191, ptr %t193, i64 %t195, i1 false)
  br label %bb26
bb25:
  %t196 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t196, ptr %l9, !tbaa !27
  br label %bb26
bb26:
  br label %bb33
bb27:
  %t197 = load { i64, [7 x i64] }, ptr %l10
  %t199 = extractvalue { i64, [7 x i64] } %t197, 0
  %t200 = icmp eq i64 %t199, 3
  br i1 %t200, label %bb28, label %bb29
bb28:
  %t202 = getelementptr { i64, [7 x i64] }, ptr %l10, i32 0, i32 1
  %t203 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t202, i32 0, i32 2
  %t204 = load i32, ptr %t203
  store i32 %t204, ptr %l16, !tbaa !23
  br label %bb30
bb29:
  br label %bb32
bb30:
  store %olang.scope zeroinitializer, ptr %s7
  %t206 = load i32, ptr %l16, !tbaa !23
  store i32 %t206, ptr %l6, !tbaa !23
  %t208 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %s7, ptr %t208, { i64, ptr } { i64 29, ptr getelementptr inbounds (<{ i64, [29 x i8] }>, ptr @.d273, i32 0, i32 1) })
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s7)
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e0bde991406b3b8f_e6287fb3b91b7a9b)
  unreachable
bb33:
  %t210 = load ptr, ptr %l3, !tbaa !29
  store ptr %t210, ptr %l148, !tbaa !29
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t212 = load i32, ptr %l6, !tbaa !23
  %t215 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t211, i32 %t212)
  store i32 %t215, ptr %l151
  br label %bb34
bb34:
  %t216 = load ptr, ptr %l148, !tbaa !29
  %t217 = load i32, ptr %l151, !tbaa !23
  %t218 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t216, i32 %t217)
  store { i64, ptr } %t218, ptr %l152
  br label %bb35
bb35:
  %t219 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t219, ptr %l17, !tbaa !27
  %t220 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, ptr %l153
  br label %bb36
bb36:
  %t221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l153
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l18
  %t222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l154
  br label %bb37
bb37:
  %t223 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l19
  %t224 = load i1, ptr %l8, !tbaa !21
  br i1 %t224, label %bb38, label %bb39
bb38:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d274, i32 0, i32 1) })
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t227 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } %t227)
  br label %bb41
bb41:
  br label %bb42
bb42:
  store i64 0, ptr %l20, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  store i64 %t232, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t234 = load i64, ptr %l21, !tbaa !24
  %t235 = load i64, ptr %l20, !tbaa !24
  %t238 = icmp sgt i64 %t234, %t235
  br i1 %t238, label %bb43, label %bb44
bb43:
  %t240 = load i64, ptr %l22, !tbaa !24
  %t242 = icmp sgt i64 %t240, 0
  br i1 %t242, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l164, !tbaa !24
  br label %bb48
bb45:
  %t244 = load i64, ptr %l21, !tbaa !24
  %t245 = load i64, ptr %l20, !tbaa !24
  %t248 = sub i64 %t244, %t245
  %t249 = load i64, ptr %l22, !tbaa !24
  %t252 = add i64 %t248, %t249
  %t254 = sub i64 %t252, 1
  %t255 = load i64, ptr %l22, !tbaa !24
  %t258 = sdiv i64 %t254, %t255
  store i64 %t258, ptr %l167, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l167, !tbaa !24
  br label %bb47
bb47:
  %t260 = load i64, ptr %l167, !tbaa !24
  store i64 %t260, ptr %l164, !tbaa !24
  br label %bb48
bb48:
  %t261 = load i64, ptr %l164, !tbaa !24
  store i64 %t261, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb49
bb49:
  %t262 = load i64, ptr %l24, !tbaa !24
  %t263 = load i64, ptr %l23, !tbaa !24
  %t266 = icmp slt i64 %t262, %t263
  %t268 = xor i1 %t266, true
  br i1 %t268, label %bb50, label %bb51
bb50:
  br label %bb67
bb51:
  br label %bb52
bb52:
  %t270 = load i64, ptr %l20, !tbaa !24
  %t271 = load i64, ptr %l24, !tbaa !24
  %t272 = load i64, ptr %l22, !tbaa !24
  %t275 = mul i64 %t271, %t272
  %t278 = add i64 %t270, %t275
  store i64 %t278, ptr %l25, !tbaa !24
  store ptr %l18, ptr %l185, !tbaa !29
  %t280 = ptrtoint ptr %s0 to i64
  store i64 %t280, ptr %l186, !tbaa !24
  %t281 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t281, label %bb53, label %bb54
bb53:
  %t283 = call ptr @__olang_region_make(ptr %s0)
  %t284 = ptrtoint ptr %t283 to i64
  store i64 %t284, ptr %l186, !tbaa !24
  br label %bb54
bb54:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t286, ptr %l189, !tbaa !27
  %t287 = load i64, ptr %l25, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l189, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr i32, ptr %t290, i64 %t287
  %t292 = load i32, ptr %t291, !tbaa !33
  %t293 = load i64, ptr %l186
  %t294 = inttoptr i64 %t293 to ptr
  %t297 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %t294, ptr %t285, i32 %t292)
  store { i64, ptr } %t297, ptr %l192
  br label %bb55
bb55:
  %t298 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t299 = load i64, ptr %l186
  %t300 = inttoptr i64 %t299 to ptr
  %t301 = extractvalue { i64, ptr } %t298, 0
  %t302 = extractvalue { i64, ptr } %t298, 1
  %t303 = mul i64 %t301, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %t300, i64 %t303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t304, ptr %t302, i64 %t303, i1 false)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  %t307 = load ptr, ptr %l185, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t307, { i64, ptr } %t306)
  br label %bb56
bb56:
  store ptr %l19, ptr %l194, !tbaa !29
  %t309 = ptrtoint ptr %s0 to i64
  store i64 %t309, ptr %l195, !tbaa !24
  %t310 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t310, label %bb57, label %bb58
bb57:
  %t312 = call ptr @__olang_region_make(ptr %s0)
  %t313 = ptrtoint ptr %t312 to i64
  store i64 %t313, ptr %l195, !tbaa !24
  br label %bb58
bb58:
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t315 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t315, ptr %l198, !tbaa !27
  %t316 = load i64, ptr %l25, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i32, ptr %t319, i64 %t316
  %t321 = load i32, ptr %t320, !tbaa !33
  %t324 = call i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %t314, i32 %t321)
  store i1 %t324, ptr %l201
  br label %bb59
bb59:
  %t325 = load i1, ptr %l201, !tbaa !21
  br i1 %t325, label %bb60, label %bb61
bb60:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d275, i32 0, i32 1) }, ptr %l203, !tbaa !27
  %t326 = load { i64, ptr }, ptr %l203, !tbaa !27
  store { i64, ptr } %t326, ptr %l202, !tbaa !27
  br label %bb64
bb61:
  %t328 = load ptr, ptr %l0, !tbaa !29
  store ptr %t328, ptr %l205, !tbaa !29
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t331 = load %"compiler/mir:Range", ptr %t330
  %t332 = load i64, ptr %l25, !tbaa !24
  %t336 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t329, %"compiler/mir:Range" %t331, i64 %t332)
  store { i64, [4 x i64] } %t336, ptr %l209
  br label %bb62
bb62:
  %t337 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t337, ptr %l210, !tbaa !27
  %t338 = load i64, ptr %l25, !tbaa !24
  %t340 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t341 = load ptr, ptr %t340, !tbaa !27
  %t342 = getelementptr i32, ptr %t341, i64 %t338
  %t343 = load i32, ptr %t342, !tbaa !33
  %t344 = load ptr, ptr %l205, !tbaa !29
  %t345 = load { i64, [4 x i64] }, ptr %l209
  %t347 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %s0, ptr %t344, { i64, [4 x i64] } %t345, i32 %t343)
  store { i64, ptr } %t347, ptr %l213
  br label %bb63
bb63:
  %t348 = load { i64, ptr }, ptr %l213, !tbaa !27
  store { i64, ptr } %t348, ptr %l202, !tbaa !27
  br label %bb64
bb64:
  %t349 = load { i64, ptr }, ptr %l202, !tbaa !27
  %t350 = load i64, ptr %l195
  %t351 = inttoptr i64 %t350 to ptr
  %t352 = extractvalue { i64, ptr } %t349, 0
  %t353 = extractvalue { i64, ptr } %t349, 1
  %t354 = mul i64 %t352, 1
  %t355 = call ptr @__olang_scope_alloc(ptr %t351, i64 %t354)
  call void @llvm.memcpy.p0.p0.i64(ptr %t355, ptr %t353, i64 %t354, i1 false)
  %t356 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t357 = insertvalue { i64, ptr } %t356, ptr %t355, 1
  %t358 = load ptr, ptr %l194, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t358, { i64, ptr } %t357)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t360 = load i64, ptr %l24, !tbaa !24
  %t362 = add i64 %t360, 1
  store i64 %t362, ptr %l24, !tbaa !24
  br label %bb49
bb67:
  %t364 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t364, ptr %l217
  br label %bb68
bb68:
  %t365 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t365, ptr %l26
  store i32 0, ptr %l27, !tbaa !23
  %t366 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t367 = getelementptr %"compiler/mir:Range", ptr %t366, i32 0, i32 1
  %t368 = load i32, ptr %t367, !tbaa !23
  store i32 %t368, ptr %l28, !tbaa !23
  store i32 1, ptr %l29, !tbaa !23
  %t370 = load i32, ptr %l28, !tbaa !23
  %t371 = load i32, ptr %l27, !tbaa !23
  %t374 = icmp sgt i32 %t370, %t371
  br i1 %t374, label %bb69, label %bb70
bb69:
  %t376 = load i32, ptr %l29, !tbaa !23
  %t378 = icmp sgt i32 %t376, 0
  br i1 %t378, label %bb71, label %bb72
bb70:
  store i32 0, ptr %l222, !tbaa !23
  br label %bb74
bb71:
  %t380 = load i32, ptr %l28, !tbaa !23
  %t381 = load i32, ptr %l27, !tbaa !23
  %t384 = sub i32 %t380, %t381
  %t385 = load i32, ptr %l29, !tbaa !23
  %t388 = add i32 %t384, %t385
  %t390 = sub i32 %t388, 1
  %t391 = load i32, ptr %l29, !tbaa !23
  %t394 = sdiv i32 %t390, %t391
  store i32 %t394, ptr %l225, !tbaa !23
  br label %bb73
bb72:
  store i32 0, ptr %l225, !tbaa !23
  br label %bb73
bb73:
  %t396 = load i32, ptr %l225, !tbaa !23
  store i32 %t396, ptr %l222, !tbaa !23
  br label %bb74
bb74:
  %t397 = load i32, ptr %l222, !tbaa !23
  store i32 %t397, ptr %l30, !tbaa !23
  store i32 0, ptr %l31, !tbaa !23
  br label %bb75
bb75:
  %t398 = load i32, ptr %l31, !tbaa !23
  %t399 = load i32, ptr %l30, !tbaa !23
  %t402 = icmp slt i32 %t398, %t399
  %t404 = xor i1 %t402, true
  br i1 %t404, label %bb76, label %bb77
bb76:
  br label %bb101
bb77:
  br label %bb78
bb78:
  %t406 = load i32, ptr %l27, !tbaa !23
  %t407 = load i32, ptr %l31, !tbaa !23
  %t408 = load i32, ptr %l29, !tbaa !23
  %t411 = mul i32 %t407, %t408
  %t414 = add i32 %t406, %t411
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr %"compiler/emit:fnEm", ptr %t416, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !29
  %t421 = getelementptr %"compiler/mir:Fn", ptr %t419, i32 0, i32 12
  %t422 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t423 = getelementptr %"compiler/mir:Range", ptr %t422, i32 0, i32 0
  %t424 = load i32, ptr %t423, !tbaa !23
  %t426 = sext i32 %t424 to i64
  %t429 = sext i32 %t414 to i64
  %t432 = add i64 %t426, %t429
  %t435 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t421, i64 %t432)
  store { i64, [1 x i64] } %t435, ptr %l251
  br label %bb79
bb79:
  %t436 = load { i64, [1 x i64] }, ptr %l251
  store { i64, [1 x i64] } %t436, ptr %l33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d276, i32 0, i32 1) })
  br label %bb80
bb80:
  %t438 = load { i64, [1 x i64] }, ptr %l33
  %t440 = extractvalue { i64, [1 x i64] } %t438, 0
  %t441 = icmp eq i64 %t440, 2
  br i1 %t441, label %bb81, label %bb82
bb81:
  br label %bb83
bb82:
  br label %bb85
bb83:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d277, i32 0, i32 1) })
  br label %bb84
bb84:
  br label %bb99
bb85:
  br i1 true, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb98
bb88:
  store %olang.scope zeroinitializer, ptr %s15
  %t444 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s15, ptr %s15, ptr %t444, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d278, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d279, i32 0, i32 1) })
  br label %bb89
bb89:
  %t446 = load ptr, ptr %l0, !tbaa !29
  store ptr %t446, ptr %l257, !tbaa !29
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load { i64, [1 x i64] }, ptr %l33
  %t451 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s15, ptr %t447, { i64, [1 x i64] } %t448)
  store { i64, ptr } %t451, ptr %l260
  br label %bb90
bb90:
  %t452 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d280, i32 0, i32 1) }, 1
  %t453 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d280, i32 0, i32 1) }, 0
  %t454 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 1
  %t456 = extractvalue { i64, ptr } %t454, 0
  %t457 = add i64 %t453, %t456
  %t458 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d281, i32 0, i32 1) }, 0
  %t460 = add i64 %t457, %t459
  %t461 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t460)
  call void @olang_textcopy(ptr %t461, ptr %t452, i64 %t453)
  %t462 = getelementptr i8, ptr %t461, i64 %t453
  call void @olang_textcopy(ptr %t462, ptr %t455, i64 %t456)
  %t463 = getelementptr i8, ptr %t462, i64 %t456
  call void @olang_textcopy(ptr %t463, ptr %t458, i64 %t459)
  %t464 = insertvalue { i64, ptr } undef, i64 %t460, 0
  %t465 = insertvalue { i64, ptr } %t464, ptr %t461, 1
  %t467 = extractvalue { i64, ptr } %t465, 0
  %t468 = extractvalue { i64, ptr } %t465, 1
  %t469 = mul i64 %t467, 1
  %t470 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t469)
  call void @llvm.memcpy.p0.p0.i64(ptr %t470, ptr %t468, i64 %t469, i1 false)
  %t471 = insertvalue { i64, ptr } undef, i64 %t467, 0
  %t472 = insertvalue { i64, ptr } %t471, ptr %t470, 1
  %t473 = load ptr, ptr %l257, !tbaa !29
  %t475 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s15, ptr %s15, ptr %t473, { i64, ptr } %t472)
  store { i64, ptr } %t475, ptr %l263
  br label %bb91
bb91:
  %t476 = load { i64, ptr }, ptr %l263, !tbaa !27
  store { i64, ptr } %t476, ptr %l34, !tbaa !27
  store ptr %l26, ptr %l264, !tbaa !29
  %t477 = ptrtoint ptr %s0 to i64
  store i64 %t477, ptr %l265, !tbaa !24
  %t478 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t478, label %bb92, label %bb93
bb92:
  %t480 = call ptr @__olang_region_make(ptr %s0)
  %t481 = ptrtoint ptr %t480 to i64
  store i64 %t481, ptr %l265, !tbaa !24
  br label %bb93
bb93:
  %t482 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t482, 1
  %t485 = extractvalue { i64, ptr } %t482, 0
  %t486 = load i64, ptr %l265
  %t487 = inttoptr i64 %t486 to ptr
  %t488 = call ptr @__olang_scope_alloc(ptr %t487, i64 %t485)
  call void @olang_textcopy(ptr %t488, ptr %t484, i64 %t485)
  %t489 = insertvalue { i64, ptr } undef, i64 %t485, 0
  %t490 = insertvalue { i64, ptr } %t489, ptr %t488, 1
  %t492 = load i64, ptr %l265
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = extractvalue { i64, ptr } %t490, 0
  %t495 = extractvalue { i64, ptr } %t490, 1
  %t496 = mul i64 %t494, 1
  %t497 = call ptr @__olang_scope_alloc(ptr %t493, i64 %t496)
  call void @llvm.memcpy.p0.p0.i64(ptr %t497, ptr %t495, i64 %t496, i1 false)
  %t498 = insertvalue { i64, ptr } undef, i64 %t494, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t497, 1
  %t500 = load ptr, ptr %l264, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t500, { i64, ptr } %t499)
  br label %bb94
bb94:
  store ptr %l19, ptr %l270, !tbaa !29
  %t502 = ptrtoint ptr %s0 to i64
  store i64 %t502, ptr %l271, !tbaa !24
  %t503 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t503, label %bb95, label %bb96
bb95:
  %t505 = call ptr @__olang_region_make(ptr %s0)
  %t506 = ptrtoint ptr %t505 to i64
  store i64 %t506, ptr %l271, !tbaa !24
  br label %bb96
bb96:
  %t507 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t509 = extractvalue { i64, ptr } %t507, 1
  %t510 = extractvalue { i64, ptr } %t507, 0
  %t511 = load i64, ptr %l271
  %t512 = inttoptr i64 %t511 to ptr
  %t513 = call ptr @__olang_scope_alloc(ptr %t512, i64 %t510)
  call void @olang_textcopy(ptr %t513, ptr %t509, i64 %t510)
  %t514 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t515 = insertvalue { i64, ptr } %t514, ptr %t513, 1
  %t517 = load i64, ptr %l271
  %t518 = inttoptr i64 %t517 to ptr
  %t519 = extractvalue { i64, ptr } %t515, 0
  %t520 = extractvalue { i64, ptr } %t515, 1
  %t521 = mul i64 %t519, 1
  %t522 = call ptr @__olang_scope_alloc(ptr %t518, i64 %t521)
  call void @llvm.memcpy.p0.p0.i64(ptr %t522, ptr %t520, i64 %t521, i1 false)
  %t523 = insertvalue { i64, ptr } undef, i64 %t519, 0
  %t524 = insertvalue { i64, ptr } %t523, ptr %t522, 1
  %t525 = load ptr, ptr %l270, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t525, { i64, ptr } %t524)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s15)
  br label %bb99
bb98:
  call void @__olang_check_failed(ptr @olang_loc_a90a878cc09c574e_a9a55cce621e609a)
  unreachable
bb99:
  br label %bb100
bb100:
  %t527 = load i32, ptr %l31, !tbaa !23
  %t529 = add i32 %t527, 1
  store i32 %t529, ptr %l31, !tbaa !23
  br label %bb75
bb101:
  store i32 0, ptr %l35, !tbaa !23
  %t531 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t532 = getelementptr %"compiler/mir:Range", ptr %t531, i32 0, i32 1
  %t533 = load i32, ptr %t532, !tbaa !23
  store i32 %t533, ptr %l36, !tbaa !23
  store i32 1, ptr %l37, !tbaa !23
  %t535 = load i32, ptr %l36, !tbaa !23
  %t536 = load i32, ptr %l35, !tbaa !23
  %t539 = icmp sgt i32 %t535, %t536
  br i1 %t539, label %bb102, label %bb103
bb102:
  %t541 = load i32, ptr %l37, !tbaa !23
  %t543 = icmp sgt i32 %t541, 0
  br i1 %t543, label %bb104, label %bb105
bb103:
  store i32 0, ptr %l282, !tbaa !23
  br label %bb107
bb104:
  %t545 = load i32, ptr %l36, !tbaa !23
  %t546 = load i32, ptr %l35, !tbaa !23
  %t549 = sub i32 %t545, %t546
  %t550 = load i32, ptr %l37, !tbaa !23
  %t553 = add i32 %t549, %t550
  %t555 = sub i32 %t553, 1
  %t556 = load i32, ptr %l37, !tbaa !23
  %t559 = sdiv i32 %t555, %t556
  store i32 %t559, ptr %l285, !tbaa !23
  br label %bb106
bb105:
  store i32 0, ptr %l285, !tbaa !23
  br label %bb106
bb106:
  %t561 = load i32, ptr %l285, !tbaa !23
  store i32 %t561, ptr %l282, !tbaa !23
  br label %bb107
bb107:
  %t562 = load i32, ptr %l282, !tbaa !23
  store i32 %t562, ptr %l38, !tbaa !23
  store i32 0, ptr %l39, !tbaa !23
  br label %bb108
bb108:
  store %olang.scope zeroinitializer, ptr %s21
  %t563 = load i32, ptr %l39, !tbaa !23
  %t564 = load i32, ptr %l38, !tbaa !23
  %t567 = icmp slt i32 %t563, %t564
  %t569 = xor i1 %t567, true
  br i1 %t569, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s21)
  br label %bb119
bb110:
  br label %bb111
bb111:
  %t571 = load i32, ptr %l35, !tbaa !23
  %t572 = load i32, ptr %l39, !tbaa !23
  %t573 = load i32, ptr %l37, !tbaa !23
  %t576 = mul i32 %t572, %t573
  %t579 = add i32 %t571, %t576
  store i32 %t579, ptr %l40, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d282, i32 0, i32 1) })
  br label %bb112
bb112:
  %t582 = load ptr, ptr %l0, !tbaa !29
  store ptr %t582, ptr %l304, !tbaa !29
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = getelementptr %"compiler/emit:fnEm", ptr %t583, i32 0, i32 1
  %t586 = load ptr, ptr %t585, !tbaa !29
  %t588 = getelementptr %"compiler/mir:Fn", ptr %t586, i32 0, i32 13
  %t589 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t590 = getelementptr %"compiler/mir:Range", ptr %t589, i32 0, i32 0
  %t591 = load i32, ptr %t590, !tbaa !23
  %t593 = sext i32 %t591 to i64
  %t594 = load i32, ptr %l40, !tbaa !23
  %t596 = sext i32 %t594 to i64
  %t599 = add i64 %t593, %t596
  %t602 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t588, i64 %t599)
  store %"compiler/mir:Lvalue" %t602, ptr %l313
  br label %bb113
bb113:
  %t603 = load ptr, ptr %l304, !tbaa !29
  %t604 = load %"compiler/mir:Lvalue", ptr %l313
  %t605 = call { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %s21, ptr %t603, %"compiler/mir:Lvalue" %t604)
  store { { i64, ptr }, i32 } %t605, ptr %l314
  br label %bb114
bb114:
  %t606 = load { { i64, ptr }, i32 }, ptr %l314
  store { { i64, ptr }, i32 } %t606, ptr %l41
  %t607 = getelementptr { { i64, ptr }, i32 }, ptr %l41, i32 0, i32 0
  %t608 = load { i64, ptr }, ptr %t607, !tbaa !27
  store { i64, ptr } %t608, ptr %l42, !tbaa !27
  store ptr %l19, ptr %l316, !tbaa !29
  %t610 = ptrtoint ptr %s0 to i64
  store i64 %t610, ptr %l317, !tbaa !24
  %t611 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t611, label %bb115, label %bb116
bb115:
  %t613 = call ptr @__olang_region_make(ptr %s0)
  %t614 = ptrtoint ptr %t613 to i64
  store i64 %t614, ptr %l317, !tbaa !24
  br label %bb116
bb116:
  %t615 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t617 = extractvalue { i64, ptr } %t615, 1
  %t618 = extractvalue { i64, ptr } %t615, 0
  %t619 = load i64, ptr %l317
  %t620 = inttoptr i64 %t619 to ptr
  %t621 = call ptr @__olang_scope_alloc(ptr %t620, i64 %t618)
  call void @olang_textcopy(ptr %t621, ptr %t617, i64 %t618)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  %t625 = load i64, ptr %l317
  %t626 = inttoptr i64 %t625 to ptr
  %t627 = extractvalue { i64, ptr } %t623, 0
  %t628 = extractvalue { i64, ptr } %t623, 1
  %t629 = mul i64 %t627, 1
  %t630 = call ptr @__olang_scope_alloc(ptr %t626, i64 %t629)
  call void @llvm.memcpy.p0.p0.i64(ptr %t630, ptr %t628, i64 %t629, i1 false)
  %t631 = insertvalue { i64, ptr } undef, i64 %t627, 0
  %t632 = insertvalue { i64, ptr } %t631, ptr %t630, 1
  %t633 = load ptr, ptr %l316, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t633, { i64, ptr } %t632)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s21)
  br label %bb118
bb118:
  %t635 = load i32, ptr %l39, !tbaa !23
  %t637 = add i32 %t635, 1
  store i32 %t637, ptr %l39, !tbaa !23
  br label %bb108
bb119:
  store i32 0, ptr %l43, !tbaa !23
  %t639 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 4
  %t640 = getelementptr %"compiler/mir:Range", ptr %t639, i32 0, i32 1
  %t641 = load i32, ptr %t640, !tbaa !23
  store i32 %t641, ptr %l44, !tbaa !23
  store i32 1, ptr %l45, !tbaa !23
  %t643 = load i32, ptr %l44, !tbaa !23
  %t644 = load i32, ptr %l43, !tbaa !23
  %t647 = icmp sgt i32 %t643, %t644
  br i1 %t647, label %bb120, label %bb121
bb120:
  %t649 = load i32, ptr %l45, !tbaa !23
  %t651 = icmp sgt i32 %t649, 0
  br i1 %t651, label %bb122, label %bb123
bb121:
  store i32 0, ptr %l328, !tbaa !23
  br label %bb125
bb122:
  %t653 = load i32, ptr %l44, !tbaa !23
  %t654 = load i32, ptr %l43, !tbaa !23
  %t657 = sub i32 %t653, %t654
  %t658 = load i32, ptr %l45, !tbaa !23
  %t661 = add i32 %t657, %t658
  %t663 = sub i32 %t661, 1
  %t664 = load i32, ptr %l45, !tbaa !23
  %t667 = sdiv i32 %t663, %t664
  store i32 %t667, ptr %l331, !tbaa !23
  br label %bb124
bb123:
  store i32 0, ptr %l331, !tbaa !23
  br label %bb124
bb124:
  %t669 = load i32, ptr %l331, !tbaa !23
  store i32 %t669, ptr %l328, !tbaa !23
  br label %bb125
bb125:
  %t670 = load i32, ptr %l328, !tbaa !23
  store i32 %t670, ptr %l46, !tbaa !23
  store i32 0, ptr %l47, !tbaa !23
  br label %bb126
bb126:
  %t671 = load i32, ptr %l47, !tbaa !23
  %t672 = load i32, ptr %l46, !tbaa !23
  %t675 = icmp slt i32 %t671, %t672
  %t677 = xor i1 %t675, true
  br i1 %t677, label %bb127, label %bb128
bb127:
  br label %bb141
bb128:
  br label %bb129
bb129:
  %t679 = load i32, ptr %l43, !tbaa !23
  %t680 = load i32, ptr %l47, !tbaa !23
  %t681 = load i32, ptr %l45, !tbaa !23
  %t684 = mul i32 %t680, %t681
  %t687 = add i32 %t679, %t684
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t691 = getelementptr %"compiler/emit:fnEm", ptr %t689, i32 0, i32 1
  %t692 = load ptr, ptr %t691, !tbaa !29
  %t694 = getelementptr %"compiler/mir:Fn", ptr %t692, i32 0, i32 17
  %t695 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 4
  %t696 = getelementptr %"compiler/mir:Range", ptr %t695, i32 0, i32 0
  %t697 = load i32, ptr %t696, !tbaa !23
  %t699 = sext i32 %t697 to i64
  %t702 = sext i32 %t687 to i64
  %t705 = add i64 %t699, %t702
  %t708 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t694, i64 %t705)
  store %"compiler/mir:TaskClause" %t708, ptr %l357
  br label %bb130
bb130:
  %t709 = getelementptr %"compiler/mir:TaskClause", ptr %l357, i32 0, i32 2
  %t710 = load { i64, [4 x i64] }, ptr %t709
  store { i64, [4 x i64] } %t710, ptr %l49
  %t712 = load { i64, [4 x i64] }, ptr %l49
  %t714 = extractvalue { i64, [4 x i64] } %t712, 0
  %t715 = icmp eq i64 %t714, 0
  %t717 = xor i1 %t715, true
  br i1 %t717, label %bb131, label %bb132
bb131:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d283, i32 0, i32 1) })
  br label %bb133
bb132:
  br label %bb139
bb133:
  store ptr %l19, ptr %l363, !tbaa !29
  %t720 = ptrtoint ptr %s0 to i64
  store i64 %t720, ptr %l364, !tbaa !24
  %t721 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t721, label %bb134, label %bb135
bb134:
  %t723 = call ptr @__olang_region_make(ptr %s0)
  %t724 = ptrtoint ptr %t723 to i64
  store i64 %t724, ptr %l364, !tbaa !24
  br label %bb135
bb135:
  %t725 = load ptr, ptr %l0, !tbaa !29
  store ptr %t725, ptr %l366, !tbaa !29
  %t726 = load { i64, [4 x i64] }, ptr %l49
  store { i64, [4 x i64] } %t726, ptr %l367
  %t727 = load ptr, ptr %l0, !tbaa !29
  %t728 = load { i64, [4 x i64] }, ptr %l49
  %t731 = call i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %t727, { i64, [4 x i64] } %t728)
  store i32 %t731, ptr %l370
  br label %bb136
bb136:
  %t732 = load i64, ptr %l364
  %t733 = inttoptr i64 %t732 to ptr
  %t734 = load ptr, ptr %l366, !tbaa !29
  %t735 = load { i64, [4 x i64] }, ptr %l367
  %t736 = load i32, ptr %l370, !tbaa !23
  %t737 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %t733, ptr %t734, { i64, [4 x i64] } %t735, i32 %t736)
  store { i64, ptr } %t737, ptr %l371
  br label %bb137
bb137:
  %t738 = load { i64, ptr }, ptr %l371, !tbaa !27
  %t739 = load i64, ptr %l364
  %t740 = inttoptr i64 %t739 to ptr
  %t741 = extractvalue { i64, ptr } %t738, 0
  %t742 = extractvalue { i64, ptr } %t738, 1
  %t743 = mul i64 %t741, 1
  %t744 = call ptr @__olang_scope_alloc(ptr %t740, i64 %t743)
  call void @llvm.memcpy.p0.p0.i64(ptr %t744, ptr %t742, i64 %t743, i1 false)
  %t745 = insertvalue { i64, ptr } undef, i64 %t741, 0
  %t746 = insertvalue { i64, ptr } %t745, ptr %t744, 1
  %t747 = load ptr, ptr %l363, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t747, { i64, ptr } %t746)
  br label %bb138
bb138:
  br label %bb139
bb139:
  br label %bb140
bb140:
  %t749 = load i32, ptr %l47, !tbaa !23
  %t751 = add i32 %t749, 1
  store i32 %t751, ptr %l47, !tbaa !23
  br label %bb126
bb141:
  %t753 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 3
  %t754 = getelementptr %"compiler/mir:Range", ptr %t753, i32 0, i32 1
  %t755 = load i32, ptr %t754, !tbaa !23
  %t757 = sext i32 %t755 to i64
  store i64 %t757, ptr %l376, !tbaa !24
  %t758 = load i64, ptr %l376, !tbaa !24
  %t759 = icmp sge i64 %t758, 0
  br i1 %t759, label %bb142, label %bb143
bb142:
  %t761 = load i64, ptr %l376, !tbaa !24
  %t762 = icmp sle i64 %t761, 1152921504606846975
  br i1 %t762, label %bb144, label %bb145
bb143:
  call void @__olang_check_failed(ptr @olang_loc_9287686e475a7dbe_ea834ed677e35522)
  unreachable
bb144:
  %t764 = load i64, ptr %l376, !tbaa !24
  %t765 = mul i64 %t764, 8
  %t766 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t765)
  store i64 0, ptr %t767
  br label %fill.768
fill.768:
  %t771 = load i64, ptr %t767
  %t772 = icmp slt i64 %t771, %t764
  br i1 %t772, label %fillb.769, label %filld.770
fillb.769:
  %t773 = getelementptr i64, ptr %t766, i64 %t771
  store i64 -1, ptr %t773
  %t774 = add i64 %t771, 1
  store i64 %t774, ptr %t767
  br label %fill.768
filld.770:
  %t775 = insertvalue { i64, ptr } undef, i64 %t764, 0
  %t776 = insertvalue { i64, ptr } %t775, ptr %t766, 1
  store { i64, ptr } %t776, ptr %l50, !tbaa !27
  store i32 0, ptr %l51, !tbaa !23
  %t778 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 7
  %t779 = getelementptr %"compiler/mir:Range", ptr %t778, i32 0, i32 1
  %t780 = load i32, ptr %t779, !tbaa !23
  store i32 %t780, ptr %l52, !tbaa !23
  store i32 1, ptr %l53, !tbaa !23
  %t782 = load i32, ptr %l52, !tbaa !23
  %t783 = load i32, ptr %l51, !tbaa !23
  %t786 = icmp sgt i32 %t782, %t783
  br i1 %t786, label %bb146, label %bb147
bb145:
  call void @__olang_check_failed(ptr @olang_loc_9287686e475a7dbe_ea834ed677e35522)
  unreachable
bb146:
  %t788 = load i32, ptr %l53, !tbaa !23
  %t790 = icmp sgt i32 %t788, 0
  br i1 %t790, label %bb148, label %bb149
bb147:
  store i32 0, ptr %l384, !tbaa !23
  br label %bb151
bb148:
  %t792 = load i32, ptr %l52, !tbaa !23
  %t793 = load i32, ptr %l51, !tbaa !23
  %t796 = sub i32 %t792, %t793
  %t797 = load i32, ptr %l53, !tbaa !23
  %t800 = add i32 %t796, %t797
  %t802 = sub i32 %t800, 1
  %t803 = load i32, ptr %l53, !tbaa !23
  %t806 = sdiv i32 %t802, %t803
  store i32 %t806, ptr %l387, !tbaa !23
  br label %bb150
bb149:
  store i32 0, ptr %l387, !tbaa !23
  br label %bb150
bb150:
  %t808 = load i32, ptr %l387, !tbaa !23
  store i32 %t808, ptr %l384, !tbaa !23
  br label %bb151
bb151:
  %t809 = load i32, ptr %l384, !tbaa !23
  store i32 %t809, ptr %l54, !tbaa !23
  store i32 0, ptr %l55, !tbaa !23
  br label %bb152
bb152:
  %t810 = load i32, ptr %l55, !tbaa !23
  %t811 = load i32, ptr %l54, !tbaa !23
  %t814 = icmp slt i32 %t810, %t811
  %t816 = xor i1 %t814, true
  br i1 %t816, label %bb153, label %bb154
bb153:
  br label %bb185
bb154:
  br label %bb155
bb155:
  %t818 = load i32, ptr %l51, !tbaa !23
  %t819 = load i32, ptr %l55, !tbaa !23
  %t820 = load i32, ptr %l53, !tbaa !23
  %t823 = mul i32 %t819, %t820
  %t826 = add i32 %t818, %t823
  store i32 %t826, ptr %l56, !tbaa !23
  %t828 = load ptr, ptr %l0, !tbaa !29
  %t830 = getelementptr %"compiler/emit:fnEm", ptr %t828, i32 0, i32 1
  %t831 = load ptr, ptr %t830, !tbaa !29
  %t833 = getelementptr %"compiler/mir:Fn", ptr %t831, i32 0, i32 12
  %t834 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 7
  %t835 = getelementptr %"compiler/mir:Range", ptr %t834, i32 0, i32 0
  %t836 = load i32, ptr %t835, !tbaa !23
  %t838 = sext i32 %t836 to i64
  %t839 = load i32, ptr %l56, !tbaa !23
  %t841 = sext i32 %t839 to i64
  %t844 = add i64 %t838, %t841
  %t847 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t833, i64 %t844)
  store { i64, [1 x i64] } %t847, ptr %l413
  br label %bb156
bb156:
  %t848 = load { i64, [1 x i64] }, ptr %l413
  store { i64, [1 x i64] } %t848, ptr %l57
  %t849 = load { i64, [1 x i64] }, ptr %l57
  %t851 = extractvalue { i64, [1 x i64] } %t849, 0
  %t852 = icmp eq i64 %t851, 3
  br i1 %t852, label %bb157, label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb183
bb160:
  %t854 = load { i64, [1 x i64] }, ptr %l57
  %t856 = extractvalue { i64, [1 x i64] } %t854, 0
  %t857 = icmp eq i64 %t856, 2
  br i1 %t857, label %bb161, label %bb162
bb161:
  br label %bb163
bb162:
  br label %bb167
bb163:
  %t859 = load i32, ptr %l56, !tbaa !23
  store i32 %t859, ptr %l418, !tbaa !23
  %t861 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t861, ptr %l420
  br label %bb164
bb164:
  %t862 = load i64, ptr %l420, !tbaa !24
  %t863 = load i32, ptr %l418, !tbaa !23
  %t864 = sext i32 %t863 to i64
  %t865 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t866 = load ptr, ptr %t865, !tbaa !27
  %t867 = getelementptr i64, ptr %t866, i64 %t864
  store i64 %t862, ptr %t867, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d284, i32 0, i32 1) })
  br label %bb165
bb165:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l19, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d285, i32 0, i32 1) })
  br label %bb166
bb166:
  br label %bb183
bb167:
  br i1 true, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb182
bb170:
  store %olang.scope zeroinitializer, ptr %s32
  %t870 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s32, ptr %s32, ptr %t870, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d286, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d287, i32 0, i32 1) })
  br label %bb171
bb171:
  %t872 = load ptr, ptr %l0, !tbaa !29
  store ptr %t872, ptr %l424, !tbaa !29
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t874 = load { i64, [1 x i64] }, ptr %l57
  %t877 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %s32, ptr %t873, { i64, [1 x i64] } %t874)
  store { i64, ptr } %t877, ptr %l427
  br label %bb172
bb172:
  %t878 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d288, i32 0, i32 1) }, 1
  %t879 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d288, i32 0, i32 1) }, 0
  %t880 = load { i64, ptr }, ptr %l427, !tbaa !27
  %t881 = extractvalue { i64, ptr } %t880, 1
  %t882 = extractvalue { i64, ptr } %t880, 0
  %t883 = add i64 %t879, %t882
  %t884 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 1
  %t885 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d289, i32 0, i32 1) }, 0
  %t886 = add i64 %t883, %t885
  %t887 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t886)
  call void @olang_textcopy(ptr %t887, ptr %t878, i64 %t879)
  %t888 = getelementptr i8, ptr %t887, i64 %t879
  call void @olang_textcopy(ptr %t888, ptr %t881, i64 %t882)
  %t889 = getelementptr i8, ptr %t888, i64 %t882
  call void @olang_textcopy(ptr %t889, ptr %t884, i64 %t885)
  %t890 = insertvalue { i64, ptr } undef, i64 %t886, 0
  %t891 = insertvalue { i64, ptr } %t890, ptr %t887, 1
  %t893 = extractvalue { i64, ptr } %t891, 0
  %t894 = extractvalue { i64, ptr } %t891, 1
  %t895 = mul i64 %t893, 1
  %t896 = call ptr @__olang_scope_alloc(ptr %s32, i64 %t895)
  call void @llvm.memcpy.p0.p0.i64(ptr %t896, ptr %t894, i64 %t895, i1 false)
  %t897 = insertvalue { i64, ptr } undef, i64 %t893, 0
  %t898 = insertvalue { i64, ptr } %t897, ptr %t896, 1
  %t899 = load ptr, ptr %l424, !tbaa !29
  %t901 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s32, ptr %s32, ptr %t899, { i64, ptr } %t898)
  store { i64, ptr } %t901, ptr %l430
  br label %bb173
bb173:
  %t902 = load { i64, ptr }, ptr %l430, !tbaa !27
  store { i64, ptr } %t902, ptr %l58, !tbaa !27
  store ptr %l26, ptr %l431, !tbaa !29
  %t903 = ptrtoint ptr %s0 to i64
  store i64 %t903, ptr %l432, !tbaa !24
  %t904 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t904, label %bb174, label %bb175
bb174:
  %t906 = call ptr @__olang_region_make(ptr %s0)
  %t907 = ptrtoint ptr %t906 to i64
  store i64 %t907, ptr %l432, !tbaa !24
  br label %bb175
bb175:
  %t908 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t910 = extractvalue { i64, ptr } %t908, 1
  %t911 = extractvalue { i64, ptr } %t908, 0
  %t912 = load i64, ptr %l432
  %t913 = inttoptr i64 %t912 to ptr
  %t914 = call ptr @__olang_scope_alloc(ptr %t913, i64 %t911)
  call void @olang_textcopy(ptr %t914, ptr %t910, i64 %t911)
  %t915 = insertvalue { i64, ptr } undef, i64 %t911, 0
  %t916 = insertvalue { i64, ptr } %t915, ptr %t914, 1
  %t918 = load i64, ptr %l432
  %t919 = inttoptr i64 %t918 to ptr
  %t920 = extractvalue { i64, ptr } %t916, 0
  %t921 = extractvalue { i64, ptr } %t916, 1
  %t922 = mul i64 %t920, 1
  %t923 = call ptr @__olang_scope_alloc(ptr %t919, i64 %t922)
  call void @llvm.memcpy.p0.p0.i64(ptr %t923, ptr %t921, i64 %t922, i1 false)
  %t924 = insertvalue { i64, ptr } undef, i64 %t920, 0
  %t925 = insertvalue { i64, ptr } %t924, ptr %t923, 1
  %t926 = load ptr, ptr %l431, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t926, { i64, ptr } %t925)
  br label %bb176
bb176:
  %t928 = load i32, ptr %l56, !tbaa !23
  store i32 %t928, ptr %l437, !tbaa !23
  %t930 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t930, ptr %l439
  br label %bb177
bb177:
  %t931 = load i64, ptr %l439, !tbaa !24
  %t932 = load i32, ptr %l437, !tbaa !23
  %t933 = sext i32 %t932 to i64
  %t934 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t935 = load ptr, ptr %t934, !tbaa !27
  %t936 = getelementptr i64, ptr %t935, i64 %t933
  store i64 %t931, ptr %t936, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %l18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d290, i32 0, i32 1) })
  br label %bb178
bb178:
  store ptr %l19, ptr %l441, !tbaa !29
  %t938 = ptrtoint ptr %s0 to i64
  store i64 %t938, ptr %l442, !tbaa !24
  %t939 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t939, label %bb179, label %bb180
bb179:
  %t941 = call ptr @__olang_region_make(ptr %s0)
  %t942 = ptrtoint ptr %t941 to i64
  store i64 %t942, ptr %l442, !tbaa !24
  br label %bb180
bb180:
  %t943 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t945 = extractvalue { i64, ptr } %t943, 1
  %t946 = extractvalue { i64, ptr } %t943, 0
  %t947 = load i64, ptr %l442
  %t948 = inttoptr i64 %t947 to ptr
  %t949 = call ptr @__olang_scope_alloc(ptr %t948, i64 %t946)
  call void @olang_textcopy(ptr %t949, ptr %t945, i64 %t946)
  %t950 = insertvalue { i64, ptr } undef, i64 %t946, 0
  %t951 = insertvalue { i64, ptr } %t950, ptr %t949, 1
  %t953 = load i64, ptr %l442
  %t954 = inttoptr i64 %t953 to ptr
  %t955 = extractvalue { i64, ptr } %t951, 0
  %t956 = extractvalue { i64, ptr } %t951, 1
  %t957 = mul i64 %t955, 1
  %t958 = call ptr @__olang_scope_alloc(ptr %t954, i64 %t957)
  call void @llvm.memcpy.p0.p0.i64(ptr %t958, ptr %t956, i64 %t957, i1 false)
  %t959 = insertvalue { i64, ptr } undef, i64 %t955, 0
  %t960 = insertvalue { i64, ptr } %t959, ptr %t958, 1
  %t961 = load ptr, ptr %l441, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t961, { i64, ptr } %t960)
  br label %bb181
bb181:
  call void @__olang_scope_close(ptr %s32)
  br label %bb183
bb182:
  call void @__olang_check_failed(ptr @olang_loc_45f21d64bb841654_8b47099e9550bca0)
  unreachable
bb183:
  br label %bb184
bb184:
  %t963 = load i32, ptr %l55, !tbaa !23
  %t965 = add i32 %t963, 1
  store i32 %t965, ptr %l55, !tbaa !23
  br label %bb152
bb185:
  %t967 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t967, ptr %l449
  br label %bb186
bb186:
  %t968 = load %"std/prelude/text:StringBuilder", ptr %l449
  store %"std/prelude/text:StringBuilder" %t968, ptr %l59
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d291, i32 0, i32 1) })
  br label %bb187
bb187:
  store i64 0, ptr %l60, !tbaa !24
  %t971 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t971, ptr %l452
  br label %bb188
bb188:
  %t972 = load i64, ptr %l452, !tbaa !24
  store i64 %t972, ptr %l61, !tbaa !24
  store i64 1, ptr %l62, !tbaa !24
  %t973 = load i64, ptr %l61, !tbaa !24
  %t974 = load i64, ptr %l60, !tbaa !24
  %t977 = icmp sgt i64 %t973, %t974
  br i1 %t977, label %bb189, label %bb190
bb189:
  %t979 = load i64, ptr %l62, !tbaa !24
  %t981 = icmp sgt i64 %t979, 0
  br i1 %t981, label %bb191, label %bb192
bb190:
  store i64 0, ptr %l456, !tbaa !24
  br label %bb194
bb191:
  %t983 = load i64, ptr %l61, !tbaa !24
  %t984 = load i64, ptr %l60, !tbaa !24
  %t987 = sub i64 %t983, %t984
  %t988 = load i64, ptr %l62, !tbaa !24
  %t991 = add i64 %t987, %t988
  %t993 = sub i64 %t991, 1
  %t994 = load i64, ptr %l62, !tbaa !24
  %t997 = sdiv i64 %t993, %t994
  store i64 %t997, ptr %l459, !tbaa !24
  br label %bb193
bb192:
  store i64 0, ptr %l459, !tbaa !24
  br label %bb193
bb193:
  %t999 = load i64, ptr %l459, !tbaa !24
  store i64 %t999, ptr %l456, !tbaa !24
  br label %bb194
bb194:
  %t1000 = load i64, ptr %l456, !tbaa !24
  store i64 %t1000, ptr %l63, !tbaa !24
  store i64 0, ptr %l64, !tbaa !24
  br label %bb195
bb195:
  %t1001 = load i64, ptr %l64, !tbaa !24
  %t1002 = load i64, ptr %l63, !tbaa !24
  %t1005 = icmp slt i64 %t1001, %t1002
  %t1007 = xor i1 %t1005, true
  br i1 %t1007, label %bb196, label %bb197
bb196:
  br label %bb206
bb197:
  br label %bb198
bb198:
  %t1009 = load i64, ptr %l60, !tbaa !24
  %t1010 = load i64, ptr %l64, !tbaa !24
  %t1011 = load i64, ptr %l62, !tbaa !24
  %t1014 = mul i64 %t1010, %t1011
  %t1017 = add i64 %t1009, %t1014
  store i64 %t1017, ptr %l65, !tbaa !24
  %t1019 = load i64, ptr %l65, !tbaa !24
  %t1021 = icmp sgt i64 %t1019, 0
  br i1 %t1021, label %bb199, label %bb200
bb199:
  store %olang.scope zeroinitializer, ptr %s39
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s39, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d292, i32 0, i32 1) })
  br label %bb201
bb200:
  br label %bb202
bb201:
  call void @__olang_scope_close(ptr %s39)
  br label %bb202
bb202:
  store ptr %l59, ptr %l480, !tbaa !29
  %t1024 = load i64, ptr %l65, !tbaa !24
  %t1027 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l18, i64 %t1024)
  store { i64, ptr } %t1027, ptr %l483
  br label %bb203
bb203:
  %t1028 = load ptr, ptr %l480, !tbaa !29
  %t1029 = load { i64, ptr }, ptr %l483, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t1028, { i64, ptr } %t1029)
  br label %bb204
bb204:
  br label %bb205
bb205:
  %t1030 = load i64, ptr %l64, !tbaa !24
  %t1032 = add i64 %t1030, 1
  store i64 %t1032, ptr %l64, !tbaa !24
  br label %bb195
bb206:
  %t1035 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t1035, ptr %l487
  br label %bb207
bb207:
  %t1036 = load i64, ptr %l487, !tbaa !24
  %t1037 = icmp eq i64 %t1036, 0
  br i1 %t1037, label %bb208, label %bb209
bb208:
  store %olang.scope zeroinitializer, ptr %s41
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s41, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d293, i32 0, i32 1) })
  br label %bb210
bb209:
  br label %bb211
bb210:
  call void @__olang_scope_close(ptr %s41)
  br label %bb211
bb211:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l59, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d294, i32 0, i32 1) })
  br label %bb212
bb212:
  %t1042 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l59)
  store { i64, ptr } %t1042, ptr %l492
  br label %bb213
bb213:
  %t1043 = load { i64, ptr }, ptr %l492, !tbaa !27
  store { i64, ptr } %t1043, ptr %l66, !tbaa !27
  %t1044 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %s0, ptr %t1044, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d295, i32 0, i32 1) })
  br label %bb214
bb214:
  %t1046 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1046, ptr %l494, !tbaa !29
  %t1047 = load ptr, ptr %l0, !tbaa !29
  %t1048 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1049 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d296, i32 0, i32 1) }, 1
  %t1050 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d296, i32 0, i32 1) }, 0
  %t1052 = extractvalue { i64, ptr } %t1048, 1
  %t1053 = extractvalue { i64, ptr } %t1048, 0
  %t1054 = add i64 %t1050, %t1053
  %t1055 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d297, i32 0, i32 1) }, 1
  %t1056 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d297, i32 0, i32 1) }, 0
  %t1057 = add i64 %t1054, %t1056
  %t1058 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1057)
  call void @olang_textcopy(ptr %t1058, ptr %t1049, i64 %t1050)
  %t1059 = getelementptr i8, ptr %t1058, i64 %t1050
  call void @olang_textcopy(ptr %t1059, ptr %t1052, i64 %t1053)
  %t1060 = getelementptr i8, ptr %t1059, i64 %t1053
  call void @olang_textcopy(ptr %t1060, ptr %t1055, i64 %t1056)
  %t1061 = insertvalue { i64, ptr } undef, i64 %t1057, 0
  %t1062 = insertvalue { i64, ptr } %t1061, ptr %t1058, 1
  %t1064 = extractvalue { i64, ptr } %t1062, 0
  %t1065 = extractvalue { i64, ptr } %t1062, 1
  %t1066 = mul i64 %t1064, 1
  %t1067 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1066)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1067, ptr %t1065, i64 %t1066, i1 false)
  %t1068 = insertvalue { i64, ptr } undef, i64 %t1064, 0
  %t1069 = insertvalue { i64, ptr } %t1068, ptr %t1067, 1
  %t1072 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1047, { i64, ptr } %t1069)
  store { i64, ptr } %t1072, ptr %l499
  br label %bb215
bb215:
  %t1073 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d298, i32 0, i32 1) }, 1
  %t1074 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d298, i32 0, i32 1) }, 0
  %t1075 = load { i64, ptr }, ptr %l499, !tbaa !27
  %t1076 = extractvalue { i64, ptr } %t1075, 1
  %t1077 = extractvalue { i64, ptr } %t1075, 0
  %t1078 = add i64 %t1074, %t1077
  %t1079 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d299, i32 0, i32 1) }, 1
  %t1080 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d299, i32 0, i32 1) }, 0
  %t1081 = add i64 %t1078, %t1080
  %t1082 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1081)
  call void @olang_textcopy(ptr %t1082, ptr %t1073, i64 %t1074)
  %t1083 = getelementptr i8, ptr %t1082, i64 %t1074
  call void @olang_textcopy(ptr %t1083, ptr %t1076, i64 %t1077)
  %t1084 = getelementptr i8, ptr %t1083, i64 %t1077
  call void @olang_textcopy(ptr %t1084, ptr %t1079, i64 %t1080)
  %t1085 = insertvalue { i64, ptr } undef, i64 %t1081, 0
  %t1086 = insertvalue { i64, ptr } %t1085, ptr %t1082, 1
  %t1088 = extractvalue { i64, ptr } %t1086, 0
  %t1089 = extractvalue { i64, ptr } %t1086, 1
  %t1090 = mul i64 %t1088, 1
  %t1091 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1090)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1091, ptr %t1089, i64 %t1090, i1 false)
  %t1092 = insertvalue { i64, ptr } undef, i64 %t1088, 0
  %t1093 = insertvalue { i64, ptr } %t1092, ptr %t1091, 1
  %t1094 = load ptr, ptr %l494, !tbaa !29
  %t1096 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1094, { i64, ptr } %t1093)
  store { i64, ptr } %t1096, ptr %l502
  br label %bb216
bb216:
  %t1097 = load { i64, ptr }, ptr %l502, !tbaa !27
  %t1098 = load ptr, ptr %l0, !tbaa !29
  %t1099 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1101 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d300, i32 0, i32 1) }, 1
  %t1102 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d300, i32 0, i32 1) }, 0
  %t1104 = extractvalue { i64, ptr } %t1099, 1
  %t1105 = extractvalue { i64, ptr } %t1099, 0
  %t1106 = add i64 %t1102, %t1105
  %t1107 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d301, i32 0, i32 1) }, 1
  %t1108 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d301, i32 0, i32 1) }, 0
  %t1109 = add i64 %t1106, %t1108
  %t1111 = extractvalue { i64, ptr } %t1097, 1
  %t1112 = extractvalue { i64, ptr } %t1097, 0
  %t1113 = add i64 %t1109, %t1112
  %t1114 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d302, i32 0, i32 1) }, 1
  %t1115 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d302, i32 0, i32 1) }, 0
  %t1116 = add i64 %t1113, %t1115
  %t1117 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1116)
  call void @olang_textcopy(ptr %t1117, ptr %t1101, i64 %t1102)
  %t1118 = getelementptr i8, ptr %t1117, i64 %t1102
  call void @olang_textcopy(ptr %t1118, ptr %t1104, i64 %t1105)
  %t1119 = getelementptr i8, ptr %t1118, i64 %t1105
  call void @olang_textcopy(ptr %t1119, ptr %t1107, i64 %t1108)
  %t1120 = getelementptr i8, ptr %t1119, i64 %t1108
  call void @olang_textcopy(ptr %t1120, ptr %t1111, i64 %t1112)
  %t1121 = getelementptr i8, ptr %t1120, i64 %t1112
  call void @olang_textcopy(ptr %t1121, ptr %t1114, i64 %t1115)
  %t1122 = insertvalue { i64, ptr } undef, i64 %t1116, 0
  %t1123 = insertvalue { i64, ptr } %t1122, ptr %t1117, 1
  %t1125 = extractvalue { i64, ptr } %t1123, 0
  %t1126 = extractvalue { i64, ptr } %t1123, 1
  %t1127 = mul i64 %t1125, 1
  %t1128 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1128, ptr %t1126, i64 %t1127, i1 false)
  %t1129 = insertvalue { i64, ptr } undef, i64 %t1125, 0
  %t1130 = insertvalue { i64, ptr } %t1129, ptr %t1128, 1
  %t1133 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1098, { i64, ptr } %t1130)
  store { i64, ptr } %t1133, ptr %l508
  br label %bb217
bb217:
  %t1134 = load { i64, ptr }, ptr %l508, !tbaa !27
  store { i64, ptr } %t1134, ptr %l68, !tbaa !27
  %t1135 = load i1, ptr %l8, !tbaa !21
  br i1 %t1135, label %bb218, label %bb219
bb218:
  store i64 1, ptr %l510, !tbaa !24
  br label %bb220
bb219:
  store i64 0, ptr %l510, !tbaa !24
  br label %bb220
bb220:
  %t1137 = load i64, ptr %l510, !tbaa !24
  store i64 %t1137, ptr %l69, !tbaa !24
  store i64 0, ptr %l70, !tbaa !24
  %t1139 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l18)
  store i64 %t1139, ptr %l512
  br label %bb221
bb221:
  %t1140 = load i64, ptr %l512, !tbaa !24
  store i64 %t1140, ptr %l71, !tbaa !24
  store i64 1, ptr %l72, !tbaa !24
  %t1141 = load i64, ptr %l71, !tbaa !24
  %t1142 = load i64, ptr %l70, !tbaa !24
  %t1145 = icmp sgt i64 %t1141, %t1142
  br i1 %t1145, label %bb222, label %bb223
bb222:
  %t1147 = load i64, ptr %l72, !tbaa !24
  %t1149 = icmp sgt i64 %t1147, 0
  br i1 %t1149, label %bb224, label %bb225
bb223:
  store i64 0, ptr %l516, !tbaa !24
  br label %bb227
bb224:
  %t1151 = load i64, ptr %l71, !tbaa !24
  %t1152 = load i64, ptr %l70, !tbaa !24
  %t1155 = sub i64 %t1151, %t1152
  %t1156 = load i64, ptr %l72, !tbaa !24
  %t1159 = add i64 %t1155, %t1156
  %t1161 = sub i64 %t1159, 1
  %t1162 = load i64, ptr %l72, !tbaa !24
  %t1165 = sdiv i64 %t1161, %t1162
  store i64 %t1165, ptr %l519, !tbaa !24
  br label %bb226
bb225:
  store i64 0, ptr %l519, !tbaa !24
  br label %bb226
bb226:
  %t1167 = load i64, ptr %l519, !tbaa !24
  store i64 %t1167, ptr %l516, !tbaa !24
  br label %bb227
bb227:
  %t1168 = load i64, ptr %l516, !tbaa !24
  store i64 %t1168, ptr %l73, !tbaa !24
  store i64 0, ptr %l74, !tbaa !24
  br label %bb228
bb228:
  store %olang.scope zeroinitializer, ptr %s46
  %t1169 = load i64, ptr %l74, !tbaa !24
  %t1170 = load i64, ptr %l73, !tbaa !24
  %t1173 = icmp slt i64 %t1169, %t1170
  %t1175 = xor i1 %t1173, true
  br i1 %t1175, label %bb229, label %bb230
bb229:
  call void @__olang_scope_close(ptr %s46)
  br label %bb244
bb230:
  br label %bb231
bb231:
  %t1177 = load i64, ptr %l70, !tbaa !24
  %t1178 = load i64, ptr %l74, !tbaa !24
  %t1179 = load i64, ptr %l72, !tbaa !24
  %t1182 = mul i64 %t1178, %t1179
  %t1185 = add i64 %t1177, %t1182
  store i64 %t1185, ptr %l75, !tbaa !24
  %t1187 = load ptr, ptr %l0, !tbaa !29
  %t1188 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t1189 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t1190 = load i64, ptr %l75, !tbaa !24
  %t1191 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d303, i32 0, i32 1) }, 1
  %t1192 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d303, i32 0, i32 1) }, 0
  %t1194 = extractvalue { i64, ptr } %t1188, 1
  %t1195 = extractvalue { i64, ptr } %t1188, 0
  %t1196 = add i64 %t1192, %t1195
  %t1197 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d304, i32 0, i32 1) }, 1
  %t1198 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d304, i32 0, i32 1) }, 0
  %t1199 = add i64 %t1196, %t1198
  %t1201 = extractvalue { i64, ptr } %t1189, 1
  %t1202 = extractvalue { i64, ptr } %t1189, 0
  %t1203 = add i64 %t1199, %t1202
  %t1204 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d305, i32 0, i32 1) }, 1
  %t1205 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d305, i32 0, i32 1) }, 0
  %t1206 = add i64 %t1203, %t1205
  %t1208 = call i64 @__olang_fmt_i64(ptr null, i64 %t1190)
  %t1209 = add i64 %t1206, %t1208
  %t1210 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1209)
  call void @olang_textcopy(ptr %t1210, ptr %t1191, i64 %t1192)
  %t1211 = getelementptr i8, ptr %t1210, i64 %t1192
  call void @olang_textcopy(ptr %t1211, ptr %t1194, i64 %t1195)
  %t1212 = getelementptr i8, ptr %t1211, i64 %t1195
  call void @olang_textcopy(ptr %t1212, ptr %t1197, i64 %t1198)
  %t1213 = getelementptr i8, ptr %t1212, i64 %t1198
  call void @olang_textcopy(ptr %t1213, ptr %t1201, i64 %t1202)
  %t1214 = getelementptr i8, ptr %t1213, i64 %t1202
  call void @olang_textcopy(ptr %t1214, ptr %t1204, i64 %t1205)
  %t1215 = getelementptr i8, ptr %t1214, i64 %t1205
  %t1216 = call i64 @__olang_fmt_i64(ptr %t1215, i64 %t1190)
  %t1217 = insertvalue { i64, ptr } undef, i64 %t1209, 0
  %t1218 = insertvalue { i64, ptr } %t1217, ptr %t1210, 1
  %t1220 = extractvalue { i64, ptr } %t1218, 0
  %t1221 = extractvalue { i64, ptr } %t1218, 1
  %t1222 = mul i64 %t1220, 1
  %t1223 = call ptr @__olang_scope_alloc(ptr %s46, i64 %t1222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1223, ptr %t1221, i64 %t1222, i1 false)
  %t1224 = insertvalue { i64, ptr } undef, i64 %t1220, 0
  %t1225 = insertvalue { i64, ptr } %t1224, ptr %t1223, 1
  %t1228 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s46, ptr %s46, ptr %t1187, { i64, ptr } %t1225)
  store { i64, ptr } %t1228, ptr %l543
  br label %bb232
bb232:
  %t1229 = load { i64, ptr }, ptr %l543, !tbaa !27
  store { i64, ptr } %t1229, ptr %l76, !tbaa !27
  %t1230 = load i64, ptr %l75, !tbaa !24
  %t1233 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l19, i64 %t1230)
  store { i64, ptr } %t1233, ptr %l546
  br label %bb233
bb233:
  %t1234 = load { i64, ptr }, ptr %l546, !tbaa !27
  %t1235 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s46, { i64, ptr } %t1234, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d306, i32 0, i32 1) })
  store i1 %t1235, ptr %l547
  br label %bb234
bb234:
  %t1236 = load i1, ptr %l547, !tbaa !21
  br i1 %t1236, label %bb235, label %bb236
bb235:
  store %olang.scope zeroinitializer, ptr %s48
  %t1237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1237, ptr %l548, !tbaa !29
  %t1238 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t1238, ptr %l549, !tbaa !27
  %t1239 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t1239, ptr %l550, !tbaa !27
  %t1240 = load i64, ptr %l75, !tbaa !24
  %t1241 = load i64, ptr %l69, !tbaa !24
  %t1244 = sub i64 %t1240, %t1241
  %t1246 = getelementptr { i64, ptr }, ptr %l550, i32 0, i32 1
  %t1247 = load ptr, ptr %t1246, !tbaa !27
  %t1248 = getelementptr i32, ptr %t1247, i64 %t1244
  %t1249 = load i32, ptr %t1248, !tbaa !33
  store i32 %t1249, ptr %l554, !tbaa !23
  %t1250 = load ptr, ptr %l0, !tbaa !29
  %t1251 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 1
  %t1252 = load %"compiler/mir:Range", ptr %t1251
  %t1253 = load i64, ptr %l75, !tbaa !24
  %t1254 = load i64, ptr %l69, !tbaa !24
  %t1257 = sub i64 %t1253, %t1254
  %t1261 = call { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %t1250, %"compiler/mir:Range" %t1252, i64 %t1257)
  store { i64, [4 x i64] } %t1261, ptr %l560
  br label %bb237
bb236:
  store %olang.scope zeroinitializer, ptr %s49
  %t1262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1262, ptr %l561, !tbaa !29
  %t1263 = load i64, ptr %l75, !tbaa !24
  %t1266 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l18, i64 %t1263)
  store { i64, ptr } %t1266, ptr %l564
  br label %bb239
bb237:
  %t1267 = load ptr, ptr %l548, !tbaa !29
  %t1268 = load { i64, ptr }, ptr %l549, !tbaa !27
  %t1269 = load i32, ptr %l554, !tbaa !23
  %t1270 = load { i64, [4 x i64] }, ptr %l560
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %s46, ptr %s48, ptr %t1267, { i64, ptr } %t1268, i32 %t1269, { i64, [4 x i64] } %t1270, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d214, i32 0, i32 1) })
  br label %bb238
bb238:
  call void @__olang_scope_close(ptr %s48)
  br label %bb242
bb239:
  %t1271 = load i64, ptr %l75, !tbaa !24
  %t1274 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l19, i64 %t1271)
  store { i64, ptr } %t1274, ptr %l567
  br label %bb240
bb240:
  %t1275 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t1276 = load ptr, ptr %l561, !tbaa !29
  %t1277 = load { i64, ptr }, ptr %l564, !tbaa !27
  %t1278 = load { i64, ptr }, ptr %l567, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s46, ptr %s49, ptr %t1276, { i64, ptr } %t1277, { i64, ptr } %t1278, { i64, ptr } %t1275, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb241
bb241:
  call void @__olang_scope_close(ptr %s49)
  br label %bb242
bb242:
  call void @__olang_scope_close(ptr %s46)
  br label %bb243
bb243:
  %t1280 = load i64, ptr %l74, !tbaa !24
  %t1282 = add i64 %t1280, 1
  store i64 %t1282, ptr %l74, !tbaa !24
  br label %bb228
bb244:
  %t1284 = load ptr, ptr %l0, !tbaa !29
  %t1285 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1286 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d307, i32 0, i32 1) }, 1
  %t1287 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d307, i32 0, i32 1) }, 0
  %t1289 = extractvalue { i64, ptr } %t1285, 1
  %t1290 = extractvalue { i64, ptr } %t1285, 0
  %t1291 = add i64 %t1287, %t1290
  %t1292 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d308, i32 0, i32 1) }, 1
  %t1293 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d308, i32 0, i32 1) }, 0
  %t1294 = add i64 %t1291, %t1293
  %t1295 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1294)
  call void @olang_textcopy(ptr %t1295, ptr %t1286, i64 %t1287)
  %t1296 = getelementptr i8, ptr %t1295, i64 %t1287
  call void @olang_textcopy(ptr %t1296, ptr %t1289, i64 %t1290)
  %t1297 = getelementptr i8, ptr %t1296, i64 %t1290
  call void @olang_textcopy(ptr %t1297, ptr %t1292, i64 %t1293)
  %t1298 = insertvalue { i64, ptr } undef, i64 %t1294, 0
  %t1299 = insertvalue { i64, ptr } %t1298, ptr %t1295, 1
  %t1301 = extractvalue { i64, ptr } %t1299, 0
  %t1302 = extractvalue { i64, ptr } %t1299, 1
  %t1303 = mul i64 %t1301, 1
  %t1304 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1304, ptr %t1302, i64 %t1303, i1 false)
  %t1305 = insertvalue { i64, ptr } undef, i64 %t1301, 0
  %t1306 = insertvalue { i64, ptr } %t1305, ptr %t1304, 1
  %t1309 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1284, { i64, ptr } %t1306)
  store { i64, ptr } %t1309, ptr %l575
  br label %bb245
bb245:
  %t1310 = load { i64, ptr }, ptr %l575, !tbaa !27
  store { i64, ptr } %t1310, ptr %l77, !tbaa !27
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d309, i32 0, i32 1) }, ptr %l576, !tbaa !27
  %t1311 = load { i64, ptr }, ptr %l576, !tbaa !27
  store { i64, ptr } %t1311, ptr %l577, !tbaa !27
  %t1312 = getelementptr { i64, ptr }, ptr %l577, i32 0, i32 1
  %t1313 = load ptr, ptr %t1312, !tbaa !27
  %t1314 = mul i64 4, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l578, ptr %t1313, i64 %t1314, i1 false)
  %t1316 = insertvalue { i64, ptr } undef, i64 4, 0
  %t1317 = insertvalue { i64, ptr } %t1316, ptr %l578, 1
  store { i64, ptr } %t1317, ptr %l78, !tbaa !27
  store ptr %l26, ptr %l79, !tbaa !29
  store i64 0, ptr %l80, !tbaa !24
  br label %bb246
bb246:
  store %olang.scope zeroinitializer, ptr %s53
  %t1320 = load i64, ptr %l80, !tbaa !24
  store i64 %t1320, ptr %l582, !tbaa !24
  %t1321 = load ptr, ptr %l79, !tbaa !29
  %t1323 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t1321)
  store i64 %t1323, ptr %l584
  br label %bb247
bb247:
  %t1324 = load i64, ptr %l582, !tbaa !24
  %t1325 = load i64, ptr %l584, !tbaa !24
  %t1326 = icmp slt i64 %t1324, %t1325
  %t1328 = xor i1 %t1326, true
  br i1 %t1328, label %bb248, label %bb249
bb248:
  call void @__olang_scope_close(ptr %s53)
  br label %bb260
bb249:
  br label %bb250
bb250:
  %t1330 = load ptr, ptr %l79, !tbaa !29
  %t1331 = load i64, ptr %l80, !tbaa !24
  %t1334 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t1330, i64 %t1331)
  store { i64, ptr } %t1334, ptr %l589
  br label %bb251
bb251:
  %t1335 = load { i64, ptr }, ptr %l589, !tbaa !27
  store { i64, ptr } %t1335, ptr %l81, !tbaa !27
  %t1336 = load ptr, ptr %l0, !tbaa !29
  %t1337 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1338 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d310, i32 0, i32 1) }, 1
  %t1339 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d310, i32 0, i32 1) }, 0
  %t1341 = extractvalue { i64, ptr } %t1337, 1
  %t1342 = extractvalue { i64, ptr } %t1337, 0
  %t1343 = add i64 %t1339, %t1342
  %t1344 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d311, i32 0, i32 1) }, 1
  %t1345 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d311, i32 0, i32 1) }, 0
  %t1346 = add i64 %t1343, %t1345
  %t1347 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1346)
  call void @olang_textcopy(ptr %t1347, ptr %t1338, i64 %t1339)
  %t1348 = getelementptr i8, ptr %t1347, i64 %t1339
  call void @olang_textcopy(ptr %t1348, ptr %t1341, i64 %t1342)
  %t1349 = getelementptr i8, ptr %t1348, i64 %t1342
  call void @olang_textcopy(ptr %t1349, ptr %t1344, i64 %t1345)
  %t1350 = insertvalue { i64, ptr } undef, i64 %t1346, 0
  %t1351 = insertvalue { i64, ptr } %t1350, ptr %t1347, 1
  %t1353 = extractvalue { i64, ptr } %t1351, 0
  %t1354 = extractvalue { i64, ptr } %t1351, 1
  %t1355 = mul i64 %t1353, 1
  %t1356 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1356, ptr %t1354, i64 %t1355, i1 false)
  %t1357 = insertvalue { i64, ptr } undef, i64 %t1353, 0
  %t1358 = insertvalue { i64, ptr } %t1357, ptr %t1356, 1
  %t1361 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s53, ptr %s53, ptr %t1336, { i64, ptr } %t1358)
  store { i64, ptr } %t1361, ptr %l594
  br label %bb252
bb252:
  %t1362 = load { i64, ptr }, ptr %l594, !tbaa !27
  store { i64, ptr } %t1362, ptr %l82, !tbaa !27
  %t1363 = load ptr, ptr %l0, !tbaa !29
  %t1364 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1365 = load { i64, ptr }, ptr %l82, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s53, ptr %s0, ptr %s53, ptr %s53, ptr %t1363, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d312, i32 0, i32 1) }, { i64, ptr } %t1364, { i64, ptr } %t1365, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb253
bb253:
  %t1369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1369, ptr %l598, !tbaa !29
  %t1370 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t1370, ptr %l599, !tbaa !27
  %t1371 = load ptr, ptr %l0, !tbaa !29
  %t1372 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t1373 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d313, i32 0, i32 1) }, 1
  %t1374 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d313, i32 0, i32 1) }, 0
  %t1376 = extractvalue { i64, ptr } %t1372, 1
  %t1377 = extractvalue { i64, ptr } %t1372, 0
  %t1378 = add i64 %t1374, %t1377
  %t1379 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d314, i32 0, i32 1) }, 1
  %t1380 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d314, i32 0, i32 1) }, 0
  %t1381 = add i64 %t1378, %t1380
  %t1382 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1381)
  call void @olang_textcopy(ptr %t1382, ptr %t1373, i64 %t1374)
  %t1383 = getelementptr i8, ptr %t1382, i64 %t1374
  call void @olang_textcopy(ptr %t1383, ptr %t1376, i64 %t1377)
  %t1384 = getelementptr i8, ptr %t1383, i64 %t1377
  call void @olang_textcopy(ptr %t1384, ptr %t1379, i64 %t1380)
  %t1385 = insertvalue { i64, ptr } undef, i64 %t1381, 0
  %t1386 = insertvalue { i64, ptr } %t1385, ptr %t1382, 1
  %t1388 = extractvalue { i64, ptr } %t1386, 0
  %t1389 = extractvalue { i64, ptr } %t1386, 1
  %t1390 = mul i64 %t1388, 1
  %t1391 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1390)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1391, ptr %t1389, i64 %t1390, i1 false)
  %t1392 = insertvalue { i64, ptr } undef, i64 %t1388, 0
  %t1393 = insertvalue { i64, ptr } %t1392, ptr %t1391, 1
  %t1396 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s53, ptr %s53, ptr %t1371, { i64, ptr } %t1393)
  store { i64, ptr } %t1396, ptr %l604
  br label %bb254
bb254:
  %t1397 = load { i64, ptr }, ptr %l604, !tbaa !27
  %t1398 = extractvalue { i64, ptr } %t1397, 0
  %t1399 = extractvalue { i64, ptr } %t1397, 1
  %t1400 = mul i64 %t1398, 1
  %t1401 = call ptr @__olang_scope_alloc(ptr %s53, i64 %t1400)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1401, ptr %t1399, i64 %t1400, i1 false)
  %t1402 = insertvalue { i64, ptr } undef, i64 %t1398, 0
  %t1403 = insertvalue { i64, ptr } %t1402, ptr %t1401, 1
  %t1404 = load ptr, ptr %l598, !tbaa !29
  %t1405 = load { i64, ptr }, ptr %l599, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s53, ptr %s0, ptr %s53, ptr %s53, ptr %t1404, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d315, i32 0, i32 1) }, { i64, ptr } %t1405, { i64, ptr } %t1403, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb255
bb255:
  %t1407 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t1407, ptr %l606, !tbaa !27
  %t1408 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t1409 = extractvalue { i64, ptr } %t1408, 0
  %t1410 = load { i64, ptr }, ptr %l606, !tbaa !27
  %t1411 = extractvalue { i64, ptr } %t1410, 0
  store i64 %t1411, ptr %l608, !tbaa !24
  %t1413 = load i64, ptr %l608, !tbaa !24
  %t1414 = icmp eq i64 %t1409, %t1413
  br i1 %t1414, label %bb256, label %bb257
bb256:
  %t1416 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t1417 = load ptr, ptr %t1416, !tbaa !27
  %t1418 = getelementptr { i64, ptr }, ptr %l606, i32 0, i32 1
  %t1419 = load ptr, ptr %t1418, !tbaa !27
  %t1420 = load i64, ptr %l608, !tbaa !24
  %t1421 = mul i64 %t1420, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1417, ptr %t1419, i64 %t1421, i1 false)
  br label %bb258
bb257:
  %t1422 = load { i64, ptr }, ptr %l606, !tbaa !27
  %t1423 = extractvalue { i64, ptr } %t1422, 0
  store i64 %t1423, ptr %l610, !tbaa !24
  %t1424 = load i64, ptr %l610, !tbaa !24
  %t1425 = mul i64 %t1424, 1
  %t1426 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1425)
  %t1427 = insertvalue { i64, ptr } undef, i64 %t1424, 0
  %t1428 = insertvalue { i64, ptr } %t1427, ptr %t1426, 1
  store { i64, ptr } %t1428, ptr %l611, !tbaa !27
  %t1429 = getelementptr { i64, ptr }, ptr %l611, i32 0, i32 1
  %t1430 = load ptr, ptr %t1429, !tbaa !27
  %t1431 = getelementptr { i64, ptr }, ptr %l606, i32 0, i32 1
  %t1432 = load ptr, ptr %t1431, !tbaa !27
  %t1433 = load i64, ptr %l610, !tbaa !24
  %t1434 = mul i64 %t1433, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1430, ptr %t1432, i64 %t1434, i1 false)
  %t1435 = load { i64, ptr }, ptr %l611, !tbaa !27
  store { i64, ptr } %t1435, ptr %l78, !tbaa !27
  br label %bb258
bb258:
  call void @__olang_scope_close(ptr %s53)
  br label %bb259
bb259:
  %t1436 = load i64, ptr %l80, !tbaa !24
  %t1438 = add i64 %t1436, 1
  store i64 %t1438, ptr %l80, !tbaa !24
  br label %bb246
bb260:
  %t1440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1440, ptr %l614, !tbaa !29
  %t1441 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t1441, ptr %l615, !tbaa !27
  %t1442 = load ptr, ptr %l0, !tbaa !29
  %t1443 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1444 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d316, i32 0, i32 1) }, 1
  %t1445 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d316, i32 0, i32 1) }, 0
  %t1447 = extractvalue { i64, ptr } %t1443, 1
  %t1448 = extractvalue { i64, ptr } %t1443, 0
  %t1449 = add i64 %t1445, %t1448
  %t1450 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d317, i32 0, i32 1) }, 1
  %t1451 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d317, i32 0, i32 1) }, 0
  %t1452 = add i64 %t1449, %t1451
  %t1453 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1452)
  call void @olang_textcopy(ptr %t1453, ptr %t1444, i64 %t1445)
  %t1454 = getelementptr i8, ptr %t1453, i64 %t1445
  call void @olang_textcopy(ptr %t1454, ptr %t1447, i64 %t1448)
  %t1455 = getelementptr i8, ptr %t1454, i64 %t1448
  call void @olang_textcopy(ptr %t1455, ptr %t1450, i64 %t1451)
  %t1456 = insertvalue { i64, ptr } undef, i64 %t1452, 0
  %t1457 = insertvalue { i64, ptr } %t1456, ptr %t1453, 1
  %t1459 = extractvalue { i64, ptr } %t1457, 0
  %t1460 = extractvalue { i64, ptr } %t1457, 1
  %t1461 = mul i64 %t1459, 1
  %t1462 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1461)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1462, ptr %t1460, i64 %t1461, i1 false)
  %t1463 = insertvalue { i64, ptr } undef, i64 %t1459, 0
  %t1464 = insertvalue { i64, ptr } %t1463, ptr %t1462, 1
  %t1467 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1442, { i64, ptr } %t1464)
  store { i64, ptr } %t1467, ptr %l620
  br label %bb261
bb261:
  %t1468 = load { i64, ptr }, ptr %l620, !tbaa !27
  %t1469 = extractvalue { i64, ptr } %t1468, 0
  %t1470 = extractvalue { i64, ptr } %t1468, 1
  %t1471 = mul i64 %t1469, 1
  %t1472 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1471)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1472, ptr %t1470, i64 %t1471, i1 false)
  %t1473 = insertvalue { i64, ptr } undef, i64 %t1469, 0
  %t1474 = insertvalue { i64, ptr } %t1473, ptr %t1472, 1
  %t1475 = load ptr, ptr %l614, !tbaa !29
  %t1476 = load { i64, ptr }, ptr %l615, !tbaa !27
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1475, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d318, i32 0, i32 1) }, { i64, ptr } %t1476, { i64, ptr } %t1474, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb262
bb262:
  %t1478 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1478, ptr %l622, !tbaa !29
  %t1479 = load ptr, ptr %l0, !tbaa !29
  %t1480 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1481 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d319, i32 0, i32 1) }, 1
  %t1482 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d319, i32 0, i32 1) }, 0
  %t1484 = extractvalue { i64, ptr } %t1480, 1
  %t1485 = extractvalue { i64, ptr } %t1480, 0
  %t1486 = add i64 %t1482, %t1485
  %t1487 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d320, i32 0, i32 1) }, 1
  %t1488 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d320, i32 0, i32 1) }, 0
  %t1489 = add i64 %t1486, %t1488
  %t1490 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1489)
  call void @olang_textcopy(ptr %t1490, ptr %t1481, i64 %t1482)
  %t1491 = getelementptr i8, ptr %t1490, i64 %t1482
  call void @olang_textcopy(ptr %t1491, ptr %t1484, i64 %t1485)
  %t1492 = getelementptr i8, ptr %t1491, i64 %t1485
  call void @olang_textcopy(ptr %t1492, ptr %t1487, i64 %t1488)
  %t1493 = insertvalue { i64, ptr } undef, i64 %t1489, 0
  %t1494 = insertvalue { i64, ptr } %t1493, ptr %t1490, 1
  %t1496 = extractvalue { i64, ptr } %t1494, 0
  %t1497 = extractvalue { i64, ptr } %t1494, 1
  %t1498 = mul i64 %t1496, 1
  %t1499 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1498)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1499, ptr %t1497, i64 %t1498, i1 false)
  %t1500 = insertvalue { i64, ptr } undef, i64 %t1496, 0
  %t1501 = insertvalue { i64, ptr } %t1500, ptr %t1499, 1
  %t1504 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1479, { i64, ptr } %t1501)
  store { i64, ptr } %t1504, ptr %l627
  br label %bb263
bb263:
  %t1505 = load { i64, ptr }, ptr %l627, !tbaa !27
  %t1506 = extractvalue { i64, ptr } %t1505, 0
  %t1507 = extractvalue { i64, ptr } %t1505, 1
  %t1508 = mul i64 %t1506, 1
  %t1509 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1508)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1509, ptr %t1507, i64 %t1508, i1 false)
  %t1510 = insertvalue { i64, ptr } undef, i64 %t1506, 0
  %t1511 = insertvalue { i64, ptr } %t1510, ptr %t1509, 1
  %t1512 = load ptr, ptr %l622, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1512, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d321, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d322, i32 0, i32 1) }, { i64, ptr } %t1511, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb264
bb264:
  %t1514 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1514, ptr %l629, !tbaa !29
  %t1515 = load ptr, ptr %l0, !tbaa !29
  %t1516 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1517 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d323, i32 0, i32 1) }, 1
  %t1518 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d323, i32 0, i32 1) }, 0
  %t1520 = extractvalue { i64, ptr } %t1516, 1
  %t1521 = extractvalue { i64, ptr } %t1516, 0
  %t1522 = add i64 %t1518, %t1521
  %t1523 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d324, i32 0, i32 1) }, 1
  %t1524 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d324, i32 0, i32 1) }, 0
  %t1525 = add i64 %t1522, %t1524
  %t1526 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1525)
  call void @olang_textcopy(ptr %t1526, ptr %t1517, i64 %t1518)
  %t1527 = getelementptr i8, ptr %t1526, i64 %t1518
  call void @olang_textcopy(ptr %t1527, ptr %t1520, i64 %t1521)
  %t1528 = getelementptr i8, ptr %t1527, i64 %t1521
  call void @olang_textcopy(ptr %t1528, ptr %t1523, i64 %t1524)
  %t1529 = insertvalue { i64, ptr } undef, i64 %t1525, 0
  %t1530 = insertvalue { i64, ptr } %t1529, ptr %t1526, 1
  %t1532 = extractvalue { i64, ptr } %t1530, 0
  %t1533 = extractvalue { i64, ptr } %t1530, 1
  %t1534 = mul i64 %t1532, 1
  %t1535 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1534)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1535, ptr %t1533, i64 %t1534, i1 false)
  %t1536 = insertvalue { i64, ptr } undef, i64 %t1532, 0
  %t1537 = insertvalue { i64, ptr } %t1536, ptr %t1535, 1
  %t1540 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1515, { i64, ptr } %t1537)
  store { i64, ptr } %t1540, ptr %l634
  br label %bb265
bb265:
  %t1541 = load { i64, ptr }, ptr %l634, !tbaa !27
  %t1542 = extractvalue { i64, ptr } %t1541, 0
  %t1543 = extractvalue { i64, ptr } %t1541, 1
  %t1544 = mul i64 %t1542, 1
  %t1545 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1544)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1545, ptr %t1543, i64 %t1544, i1 false)
  %t1546 = insertvalue { i64, ptr } undef, i64 %t1542, 0
  %t1547 = insertvalue { i64, ptr } %t1546, ptr %t1545, 1
  %t1548 = load ptr, ptr %l629, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1548, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d325, i32 0, i32 1) }, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d326, i32 0, i32 1) }, { i64, ptr } %t1547, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb266
bb266:
  %t1550 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1550, ptr %l636, !tbaa !29
  %t1551 = load ptr, ptr %l0, !tbaa !29
  %t1552 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1553 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d327, i32 0, i32 1) }, 1
  %t1554 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d327, i32 0, i32 1) }, 0
  %t1556 = extractvalue { i64, ptr } %t1552, 1
  %t1557 = extractvalue { i64, ptr } %t1552, 0
  %t1558 = add i64 %t1554, %t1557
  %t1559 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d328, i32 0, i32 1) }, 1
  %t1560 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d328, i32 0, i32 1) }, 0
  %t1561 = add i64 %t1558, %t1560
  %t1562 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1561)
  call void @olang_textcopy(ptr %t1562, ptr %t1553, i64 %t1554)
  %t1563 = getelementptr i8, ptr %t1562, i64 %t1554
  call void @olang_textcopy(ptr %t1563, ptr %t1556, i64 %t1557)
  %t1564 = getelementptr i8, ptr %t1563, i64 %t1557
  call void @olang_textcopy(ptr %t1564, ptr %t1559, i64 %t1560)
  %t1565 = insertvalue { i64, ptr } undef, i64 %t1561, 0
  %t1566 = insertvalue { i64, ptr } %t1565, ptr %t1562, 1
  %t1568 = extractvalue { i64, ptr } %t1566, 0
  %t1569 = extractvalue { i64, ptr } %t1566, 1
  %t1570 = mul i64 %t1568, 1
  %t1571 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1570)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1571, ptr %t1569, i64 %t1570, i1 false)
  %t1572 = insertvalue { i64, ptr } undef, i64 %t1568, 0
  %t1573 = insertvalue { i64, ptr } %t1572, ptr %t1571, 1
  %t1576 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1551, { i64, ptr } %t1573)
  store { i64, ptr } %t1576, ptr %l641
  br label %bb267
bb267:
  %t1577 = load { i64, ptr }, ptr %l641, !tbaa !27
  %t1578 = extractvalue { i64, ptr } %t1577, 0
  %t1579 = extractvalue { i64, ptr } %t1577, 1
  %t1580 = mul i64 %t1578, 1
  %t1581 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1580)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1581, ptr %t1579, i64 %t1580, i1 false)
  %t1582 = insertvalue { i64, ptr } undef, i64 %t1578, 0
  %t1583 = insertvalue { i64, ptr } %t1582, ptr %t1581, 1
  %t1584 = load ptr, ptr %l636, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1584, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d329, i32 0, i32 1) }, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d330, i32 0, i32 1) }, { i64, ptr } %t1583, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb268
bb268:
  %t1586 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1586, ptr %l643, !tbaa !29
  %t1587 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t1587, ptr %l644, !tbaa !27
  %t1588 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1588, ptr %l645
  %t1590 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %s0, ptr %l645)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1590, ptr %l647
  br label %bb269
bb269:
  %t1591 = load i1, ptr %l8, !tbaa !21
  store i1 %t1591, ptr %l648, !tbaa !21
  %t1592 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t1592, ptr %l649, !tbaa !27
  %t1593 = load i32, ptr %l6, !tbaa !23
  store i32 %t1593, ptr %l650, !tbaa !23
  %t1594 = getelementptr %"compiler/mir:Task", ptr %l2, i32 0, i32 2
  %t1595 = getelementptr %"compiler/mir:Range", ptr %t1594, i32 0, i32 1
  %t1596 = load i32, ptr %t1595, !tbaa !23
  %t1598 = sext i32 %t1596 to i64
  store i64 %t1598, ptr %l652, !tbaa !24
  %t1599 = load %"compiler/mir:Task", ptr %l2
  store %"compiler/mir:Task" %t1599, ptr %l653
  %t1600 = load ptr, ptr %l0, !tbaa !29
  %t1602 = getelementptr %"compiler/emit:fnEm", ptr %t1600, i32 0, i32 1
  %t1603 = load ptr, ptr %t1602, !tbaa !29
  %t1605 = getelementptr %"compiler/mir:Fn", ptr %t1603, i32 0, i32 8
  %t1606 = load i32, ptr %l1, !tbaa !23
  %t1608 = sext i32 %t1606 to i64
  %t1611 = call %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %t1605, i64 %t1608)
  store %"compiler/mir:ScopeInfo" %t1611, ptr %l659
  br label %bb270
bb270:
  %t1612 = getelementptr %"compiler/mir:ScopeInfo", ptr %l659, i32 0, i32 4
  %t1613 = load i32, ptr %t1612, !tbaa !23
  %t1614 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t1615 = load ptr, ptr %l643, !tbaa !29
  %t1616 = load { i64, ptr }, ptr %l644, !tbaa !27
  %t1617 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l647
  %t1618 = load i1, ptr %l648, !tbaa !21
  %t1619 = load { i64, ptr }, ptr %l649, !tbaa !27
  %t1620 = load i32, ptr %l650, !tbaa !23
  %t1621 = load i64, ptr %l652, !tbaa !24
  %t1622 = load %"compiler/mir:Task", ptr %l653
  %t1625 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etrampoline(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1615, { i64, ptr } %t1616, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1617, i1 %t1618, { i64, ptr } %t1619, i32 %t1620, i64 %t1621, %"compiler/mir:Task" %t1622, i32 %t1613, { i64, ptr } %t1614)
  store { i64, ptr } %t1625, ptr %l662
  br label %bb271
bb271:
  %t1626 = load { i64, ptr }, ptr %l662, !tbaa !27
  store { i64, ptr } %t1626, ptr %l83, !tbaa !27
  %t1627 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t1627, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d331, i32 0, i32 1) }, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d332, i32 0, i32 1) })
  br label %bb272
bb272:
  %t1629 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %s0, ptr %s0, ptr %t1629, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d333, i32 0, i32 1) }, { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d334, i32 0, i32 1) })
  br label %bb273
bb273:
  %t1631 = load ptr, ptr %l0, !tbaa !29
  %t1633 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %s0, ptr %s0, ptr %t1631, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d335, i32 0, i32 1) })
  store { i64, ptr } %t1633, ptr %l666
  br label %bb274
bb274:
  %t1634 = load { i64, ptr }, ptr %l666, !tbaa !27
  %t1635 = load ptr, ptr %l0, !tbaa !29
  %t1637 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t1638 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t1639 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1640 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d336, i32 0, i32 1) }, 1
  %t1641 = extractvalue { i64, ptr } { i64 36, ptr getelementptr inbounds (<{ i64, [36 x i8] }>, ptr @.d336, i32 0, i32 1) }, 0
  %t1643 = extractvalue { i64, ptr } %t1634, 1
  %t1644 = extractvalue { i64, ptr } %t1634, 0
  %t1645 = add i64 %t1641, %t1644
  %t1646 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d337, i32 0, i32 1) }, 1
  %t1647 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d337, i32 0, i32 1) }, 0
  %t1648 = add i64 %t1645, %t1647
  %t1650 = extractvalue { i64, ptr } %t1637, 1
  %t1651 = extractvalue { i64, ptr } %t1637, 0
  %t1652 = add i64 %t1648, %t1651
  %t1653 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t1654 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t1655 = add i64 %t1652, %t1654
  %t1657 = extractvalue { i64, ptr } %t1638, 1
  %t1658 = extractvalue { i64, ptr } %t1638, 0
  %t1659 = add i64 %t1655, %t1658
  %t1660 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d338, i32 0, i32 1) }, 1
  %t1661 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d338, i32 0, i32 1) }, 0
  %t1662 = add i64 %t1659, %t1661
  %t1664 = extractvalue { i64, ptr } %t1639, 1
  %t1665 = extractvalue { i64, ptr } %t1639, 0
  %t1666 = add i64 %t1662, %t1665
  %t1667 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 1
  %t1668 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d339, i32 0, i32 1) }, 0
  %t1669 = add i64 %t1666, %t1668
  %t1670 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1669)
  call void @olang_textcopy(ptr %t1670, ptr %t1640, i64 %t1641)
  %t1671 = getelementptr i8, ptr %t1670, i64 %t1641
  call void @olang_textcopy(ptr %t1671, ptr %t1643, i64 %t1644)
  %t1672 = getelementptr i8, ptr %t1671, i64 %t1644
  call void @olang_textcopy(ptr %t1672, ptr %t1646, i64 %t1647)
  %t1673 = getelementptr i8, ptr %t1672, i64 %t1647
  call void @olang_textcopy(ptr %t1673, ptr %t1650, i64 %t1651)
  %t1674 = getelementptr i8, ptr %t1673, i64 %t1651
  call void @olang_textcopy(ptr %t1674, ptr %t1653, i64 %t1654)
  %t1675 = getelementptr i8, ptr %t1674, i64 %t1654
  call void @olang_textcopy(ptr %t1675, ptr %t1657, i64 %t1658)
  %t1676 = getelementptr i8, ptr %t1675, i64 %t1658
  call void @olang_textcopy(ptr %t1676, ptr %t1660, i64 %t1661)
  %t1677 = getelementptr i8, ptr %t1676, i64 %t1661
  call void @olang_textcopy(ptr %t1677, ptr %t1664, i64 %t1665)
  %t1678 = getelementptr i8, ptr %t1677, i64 %t1665
  call void @olang_textcopy(ptr %t1678, ptr %t1667, i64 %t1668)
  %t1679 = insertvalue { i64, ptr } undef, i64 %t1669, 0
  %t1680 = insertvalue { i64, ptr } %t1679, ptr %t1670, 1
  %t1682 = extractvalue { i64, ptr } %t1680, 0
  %t1683 = extractvalue { i64, ptr } %t1680, 1
  %t1684 = mul i64 %t1682, 1
  %t1685 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1684)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1685, ptr %t1683, i64 %t1684, i1 false)
  %t1686 = insertvalue { i64, ptr } undef, i64 %t1682, 0
  %t1687 = insertvalue { i64, ptr } %t1686, ptr %t1685, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %s0, ptr %t1635, { i64, ptr } %t1687)
  br label %bb275
bb275:
  %t1690 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1690, ptr %l674, !tbaa !29
  %t1691 = load ptr, ptr %l0, !tbaa !29
  %t1692 = load i32, ptr %l1, !tbaa !23
  %t1693 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d340, i32 0, i32 1) }, 1
  %t1694 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d340, i32 0, i32 1) }, 0
  %t1696 = sext i32 %t1692 to i64
  %t1697 = call i64 @__olang_fmt_i64(ptr null, i64 %t1696)
  %t1698 = add i64 %t1694, %t1697
  %t1699 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1698)
  call void @olang_textcopy(ptr %t1699, ptr %t1693, i64 %t1694)
  %t1700 = getelementptr i8, ptr %t1699, i64 %t1694
  %t1701 = call i64 @__olang_fmt_i64(ptr %t1700, i64 %t1696)
  %t1702 = insertvalue { i64, ptr } undef, i64 %t1698, 0
  %t1703 = insertvalue { i64, ptr } %t1702, ptr %t1699, 1
  %t1705 = extractvalue { i64, ptr } %t1703, 0
  %t1706 = extractvalue { i64, ptr } %t1703, 1
  %t1707 = mul i64 %t1705, 1
  %t1708 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1707)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1708, ptr %t1706, i64 %t1707, i1 false)
  %t1709 = insertvalue { i64, ptr } undef, i64 %t1705, 0
  %t1710 = insertvalue { i64, ptr } %t1709, ptr %t1708, 1
  %t1713 = call { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1691, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d341, i32 0, i32 1) }, { i64, ptr } %t1710, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store { i64, ptr } %t1713, ptr %l679
  br label %bb276
bb276:
  %t1714 = load { i64, ptr }, ptr %l679, !tbaa !27
  %t1715 = extractvalue { i64, ptr } %t1714, 0
  %t1716 = extractvalue { i64, ptr } %t1714, 1
  %t1717 = mul i64 %t1715, 1
  %t1718 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1717)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1718, ptr %t1716, i64 %t1717, i1 false)
  %t1719 = insertvalue { i64, ptr } undef, i64 %t1715, 0
  %t1720 = insertvalue { i64, ptr } %t1719, ptr %t1718, 1
  %t1721 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1722 = load ptr, ptr %l674, !tbaa !29
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1722, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d342, i32 0, i32 1) }, { i64, ptr } %t1720, { i64, ptr } %t1721, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb277
bb277:
  %t1725 = load ptr, ptr %l0, !tbaa !29
  %t1726 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t1727 = load i32, ptr %l1, !tbaa !23
  %t1728 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d343, i32 0, i32 1) }, 1
  %t1729 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d343, i32 0, i32 1) }, 0
  %t1731 = sext i32 %t1727 to i64
  %t1732 = call i64 @__olang_fmt_i64(ptr null, i64 %t1731)
  %t1733 = add i64 %t1729, %t1732
  %t1734 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1733)
  call void @olang_textcopy(ptr %t1734, ptr %t1728, i64 %t1729)
  %t1735 = getelementptr i8, ptr %t1734, i64 %t1729
  %t1736 = call i64 @__olang_fmt_i64(ptr %t1735, i64 %t1731)
  %t1737 = insertvalue { i64, ptr } undef, i64 %t1733, 0
  %t1738 = insertvalue { i64, ptr } %t1737, ptr %t1734, 1
  %t1740 = extractvalue { i64, ptr } %t1738, 0
  %t1741 = extractvalue { i64, ptr } %t1738, 1
  %t1742 = mul i64 %t1740, 1
  %t1743 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t1742)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1743, ptr %t1741, i64 %t1742, i1 false)
  %t1744 = insertvalue { i64, ptr } undef, i64 %t1740, 0
  %t1745 = insertvalue { i64, ptr } %t1744, ptr %t1743, 1
  call void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t1725, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d344, i32 0, i32 1) }, { i64, ptr } %t1726, { i64, ptr } %t1745, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d207, i32 0, i32 1) })
  br label %bb278
bb278:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2femit_2elinkFor(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2femit_2eHomeLocal, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d345, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2femit_2eHomeShared, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d346, i32 0, i32 1) }, ptr %l11, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d347, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t17, ptr %l10, !tbaa !27
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l15, !tbaa !24
  %t22 = load i64, ptr %l15, !tbaa !24
  %t23 = mul i64 %t22, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l16, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l15, !tbaa !24
  %t32 = mul i64 %t31, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t28, ptr %t30, i64 %t32, i1 false)
  %t33 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t33, ptr %l4, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2femit_2estoredType(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l27 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca i1
  %l52 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 11
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_56e40b98d8735a00_a9923da8dafaf70c)
  unreachable
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 11
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Block", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp slt i64 %t30, %t31
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  br label %bb34
bb9:
  br label %bb10
bb10:
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l27, !tbaa !27
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr ptr, ptr %t42, i64 %t39
  %t44 = load ptr, ptr %t43, !tbaa !39
  store ptr %t44, ptr %l6, !tbaa !29
  %t46 = load ptr, ptr %l6, !tbaa !29
  store ptr %t46, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t47 = load ptr, ptr %l30, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 17}
  %t53 = icmp eq i64 %t51, 1
  store i1 %t53, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l31, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l6, !tbaa !29
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t57, i32 0, i32 1
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t60 = load ptr, ptr %l36, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb17
bb15:
  %t63 = load ptr, ptr %l36, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l37, !tbaa !21
  br label %bb16
bb16:
  %t67 = load i1, ptr %l37, !tbaa !21
  store i1 %t67, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t68 = load i1, ptr %l34, !tbaa !21
  br i1 %t68, label %bb18, label %bb19
bb18:
  %t69 = load ptr, ptr %l6, !tbaa !29
  %t71 = getelementptr { i64, [3 x i64] }, ptr %t69, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t71, i32 0, i32 1
  %t73 = load ptr, ptr %t72
  %t75 = getelementptr { i64, [4 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t75, i32 0, i32 1
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t81 = getelementptr { i64, [3 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t81, i32 0, i32 1
  %t83 = load ptr, ptr %t82
  %t85 = getelementptr { i64, [4 x i64] }, ptr %t83, i32 0, i32 1
  %t86 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t85, i32 0, i32 2
  %t87 = load i64, ptr %t86
  store i64 %t87, ptr %l8, !tbaa !24
  %t89 = load ptr, ptr %l6, !tbaa !29
  %t91 = getelementptr { i64, [3 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t95, i32 0, i32 3
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l9, !tbaa !23
  br label %bb20
bb19:
  br label %bb27
bb20:
  %t99 = load i64, ptr %l8, !tbaa !24
  %t103 = icmp eq i64 %t99, %a1
  br i1 %t103, label %bb21, label %bb22
bb21:
  %t105 = load i32, ptr %l9, !tbaa !23
  %t109 = icmp eq i32 %t105, %a2
  store i1 %t109, ptr %l52, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb23
bb23:
  %t111 = load i1, ptr %l52, !tbaa !21
  br i1 %t111, label %bb24, label %bb25
bb24:
  %t112 = load i32, ptr %l7, !tbaa !23
  store i32 %t112, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_61ee7aad8f880fe6_58c009051e58eda2)
  unreachable
bb32:
  br label %bb33
bb33:
  %t114 = load i64, ptr %l4, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l4, !tbaa !24
  br label %bb7
bb34:
  %t118 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define internal i1 @olang_lambda_2(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
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

@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d5 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" = hidden constant i1 true\0A" }>, align 8
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
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"a" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"const " }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" *" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"int64_t " }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"_len" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"const " }>, align 8
@.d14 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d15 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" *" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" *buf" }>, align 8
@.d19 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"int64_t cap" }>, align 8
@.d20 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"int64_t *len" }>, align 8
@.d21 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int32_t" }>, align 8
@.d22 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int64_t" }>, align 8
@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" *result" }>, align 8
@.d24 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"int32_t" }>, align 8
@.d25 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"/* " }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" */\0A" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d29 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c");\0A" }>, align 8
@.d32 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug" }>, align 8
@.d33 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly" }>, align 8
@.d34 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"distinct !DICompileUnit(language: DW_LANG_C, file: !" }>, align 8
@.d35 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", producer: \22olang\22, " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", !tbaa !37" }>, align 8
@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", !tbaa !27" }>, align 8
@.d40 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"define linkonce_odr void @" }>, align 8
@.d41 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"_rt(ptr %inst, ptr %scope) #0 {\0Aentry:\0A  call " }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d44 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d45 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"ptr %scope" }>, align 8
@.d46 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ptr null" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d48 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr %inst)\0A  ret void\0A}\0A\0A" }>, align 8
@.d49 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"_rt" }>, align 8
@olang_2esole_2estd_2fprelude_2ftext_3aLineIter_2e0 = weak hidden constant i1 false
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"declare" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2e1 = weak hidden constant i1 false
@.d53 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_fvadapt_" }>, align 8
@.d54 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"linkonce_odr" }>, align 8
@.d55 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"%env" }>, align 8
@.d57 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d58 = private constant <{ i64, [50 x i8] }> <{ i64 0, [50 x i8] c"getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1" }>, align 8
@.d59 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ptr " }>, align 8
@.d61 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", ptr %out" }>, align 8
@.d62 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %v" }>, align 8
@.d63 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d64 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d65 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", ptr %a" }>, align 8
@.d66 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"c, ptr %a" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"e" }>, align 8
@.d68 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" %a" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d70 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d71 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"call void " }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d75 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret void" }>, align 8
@.d76 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"ret i32 0" }>, align 8
@.d77 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"call " }>, align 8
@.d78 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d79 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d81 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d82 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d83 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d84 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d85 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d86 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"extractvalue " }>, align 8
@.d87 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d88 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d89 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d90 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ret i32 " }>, align 8
@.d91 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d92 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d93 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d94 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d95 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 0" }>, align 8
@.d96 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"insertvalue " }>, align 8
@.d97 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d98 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c", 1" }>, align 8
@.d100 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ret " }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d102 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"olang_fvadapt_" }>, align 8
@.d103 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"entry:\0A" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"}\0A\0A" }>, align 8
@.d105 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"define internal void @" }>, align 8
@.d106 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c".drop(ptr %h, ptr %scope) #0 {\0Aentry:\0A" }>, align 8
@.d107 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"  %p = call ptr @llvm.coro.promise(ptr %h, i32 8, i1 false)\0A" }>, align 8
@.d108 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %pr = getelementptr " }>, align 8
@.d109 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c", ptr %p, i32 0, i32 1\0A  %r = load i32, ptr %pr\0A" }>, align 8
@.d110 = private constant <{ i64, [104 x i8] }> <{ i64 0, [104 x i8] c"  %idle = icmp eq i32 %r, 0\0A  br i1 %idle, label %d, label %x\0Ad:\0A  call void @llvm.coro.destroy(ptr %h)\0A" }>, align 8
@.d111 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"  br label %x\0Ax:\0A  ret void\0A}\0A\0A" }>, align 8
@.d112 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".wnext" }>, align 8
@.d113 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" alwaysinline" }>, align 8
@.d114 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d115 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"internal" }>, align 8
@.d116 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"entry:\0A  %p = call ptr @llvm.coro.promise(ptr %env, i32 8, i1 false)\0A" }>, align 8
@.d117 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %pr = getelementptr " }>, align 8
@.d118 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c", ptr %p, i32 0, i32 1\0A  %running = load i32, ptr %pr\0A" }>, align 8
@.d119 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c"  %stop = icmp eq i32 %running, 2\0A  br i1 %stop, label %drop, label %run\0A" }>, align 8
@.d120 = private constant <{ i64, [69 x i8] }> <{ i64 0, [69 x i8] c"drop:\0A  call void @llvm.coro.destroy(ptr %env)\0A  br label %over\0Arun:\0A" }>, align 8
@.d121 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %po = getelementptr " }>, align 8
@.d122 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c", ptr %p, i32 0, i32 2\0A  store ptr %out, ptr %po\0A" }>, align 8
@.d123 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %pv" }>, align 8
@.d124 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d125 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", ptr %p, i32 0, i32 " }>, align 8
@.d126 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"\0A  store ptr %v" }>, align 8
@.d127 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %pv" }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d129 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c"  call void @llvm.coro.resume(ptr %env)\0A  %r = load " }>, align 8
@.d130 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c", ptr %p\0A  ret " }>, align 8
@.d131 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" %r\0Aover:\0A" }>, align 8
@.d132 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d133 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"  ret i32 " }>, align 8
@.d134 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0A}\0A\0A" }>, align 8
@.d135 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"  %x = insertvalue " }>, align 8
@.d136 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d137 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", 0\0A  ret " }>, align 8
@.d138 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %x\0A}\0A\0A" }>, align 8
@.d139 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_check_failed" }>, align 8
@.d140 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d141 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d142 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %pr = getelementptr " }>, align 8
@.d143 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c", ptr %p, i32 0, i32 1\0A  %running = load i32, ptr %pr\0A" }>, align 8
@.d144 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"  switch i32 %running, label %again [ i32 0, label %go i32 2, label %drop ]\0Aagain:\0A" }>, align 8
@.d145 = private constant <{ i64, [38 x i8] }> <{ i64 0, [38 x i8] c"  call void @__olang_check_failed(ptr " }>, align 8
@.d146 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c")\0A  unreachable\0A" }>, align 8
@.d147 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"drop:\0A  call void @llvm.coro.destroy(ptr %env)\0A  br label %over\0A" }>, align 8
@.d148 = private constant <{ i64, [92 x i8] }> <{ i64 0, [92 x i8] c"go:\0A  %done = call i1 @llvm.coro.done(ptr %env)\0A  br i1 %done, label %over, label %run\0Arun:\0A" }>, align 8
@.d149 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"  %po = getelementptr " }>, align 8
@.d150 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c", ptr %p, i32 0, i32 2\0A  store ptr %out, ptr %po\0A" }>, align 8
@.d151 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"  %pv" }>, align 8
@.d152 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c" = getelementptr " }>, align 8
@.d153 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c", ptr %p, i32 0, i32 " }>, align 8
@.d154 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"\0A  store ptr %v" }>, align 8
@.d155 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c", ptr %pv" }>, align 8
@.d156 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d157 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"  store i32 1, ptr %pr\0A" }>, align 8
@.d158 = private constant <{ i64, [63 x i8] }> <{ i64 0, [63 x i8] c"  call void @llvm.coro.resume(ptr %env)\0A  store i32 0, ptr %pr\0A" }>, align 8
@.d159 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"  %r = load " }>, align 8
@.d160 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c", ptr %p\0A  ret " }>, align 8
@.d161 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c" %r\0Aover:\0A" }>, align 8
@.d162 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d163 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"  ret i32 " }>, align 8
@.d164 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0A}\0A\0A" }>, align 8
@.d165 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"  %x = insertvalue " }>, align 8
@.d166 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c" zeroinitializer, i32 " }>, align 8
@.d167 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c", 0\0A  ret " }>, align 8
@.d168 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %x\0A}\0A\0A" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d169 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d170 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d171 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c">" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20I64_3e_2e0 = weak hidden constant i1 false
@olang_2esole_2eArray_3cArray_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
@__olang_empty_array = external constant [16 x i64]
@.d172 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"|adapter" }>, align 8
@.d173 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d174 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"|" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d175 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"test" }>, align 8
@.d176 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"_fv_" }>, align 8
@.d177 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d178 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"an unknown type" }>, align 8
@.d179 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d180 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"a type with no layout: " }>, align 8
@.d181 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d182 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d183 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d184 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c") #0 {" }>, align 8
@.d185 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d186 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"define dso_local " }>, align 8
@.d187 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d188 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d189 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c") #0 {\0Aentry:\0A" }>, align 8
@.d190 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"void" }>, align 8
@.d191 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"  tail call void @" }>, align 8
@.d192 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d193 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c")\0A  ret void\0A}\0A\0A" }>, align 8
@.d194 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"  %r = tail call " }>, align 8
@.d195 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" @" }>, align 8
@.d196 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d197 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c")\0A  ret " }>, align 8
@.d198 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" %r\0A}\0A\0A" }>, align 8
@.d199 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Vec" }>, align 8
@.d200 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/vec" }>, align 8
@.d201 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"data" }>, align 8
@.d202 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Map" }>, align 8
@.d203 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d204 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"ents" }>, align 8
@.d205 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d206 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d207 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d208 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d209 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d210 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d211 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i32" }>, align 8
@.d212 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"sext i32 " }>, align 8
@.d213 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d214 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d215 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d216 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"getelementptr %olang.builder, ptr " }>, align 8
@.d217 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d218 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d219 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_scope_alloc" }>, align 8
@.d220 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call ptr @__olang_scope_alloc(ptr " }>, align 8
@.d221 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d222 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d223 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call void @olang_textcopy(ptr " }>, align 8
@.d224 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d225 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d226 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d227 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_region_make" }>, align 8
@.d228 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call ptr @__olang_region_make(ptr " }>, align 8
@.d229 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d230 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d231 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d232 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_region_or" }>, align 8
@.d233 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @__olang_region_or(ptr " }>, align 8
@.d234 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d235 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d236 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d237 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d238 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_scope_of" }>, align 8
@.d239 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call ptr @__olang_scope_of(ptr " }>, align 8
@.d240 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c", ptr null)" }>, align 8
@.d241 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d242 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d243 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_scope_or" }>, align 8
@.d244 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d245 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call ptr @__olang_scope_or(ptr " }>, align 8
@.d246 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d247 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d248 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d249 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d250 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d251 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i1" }>, align 8
@.d252 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d253 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d254 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_errpay_push" }>, align 8
@.d255 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"call ptr @__olang_errpay_push()" }>, align 8
@.d256 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d257 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d258 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"__olang_errpay_top_get" }>, align 8
@.d259 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"call ptr @__olang_errpay_top_get()" }>, align 8
@.d260 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_weak_read" }>, align 8
@.d261 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d262 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @__olang_weak_read(ptr " }>, align 8
@.d263 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d264 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_weak_word" }>, align 8
@.d265 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"call ptr @__olang_weak_word(ptr " }>, align 8
@.d266 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d267 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"%s" }>, align 8
@.d268 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d269 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d270 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d271 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"@" }>, align 8
@.d272 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a task calling an extern" }>, align 8
@.d273 = private constant <{ i64, [29 x i8] }> <{ i64 0, [29 x i8] c"a task calling through an any" }>, align 8
@.d274 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d275 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d276 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d277 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d278 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_standin" }>, align 8
@.d279 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_standin(ptr)" }>, align 8
@.d280 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_standin(ptr " }>, align 8
@.d281 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d282 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d283 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"{ ptr, ptr }" }>, align 8
@.d284 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d285 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d286 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_standin" }>, align 8
@.d287 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_standin(ptr)" }>, align 8
@.d288 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_standin(ptr " }>, align 8
@.d289 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d290 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d291 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{ " }>, align 8
@.d292 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d293 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"i8" }>, align 8
@.d294 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" }" }>, align 8
@.d295 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_scope_alloc_a" }>, align 8
@.d296 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d297 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c", ptr null, i32 1" }>, align 8
@.d298 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"ptrtoint ptr " }>, align 8
@.d299 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" to i64" }>, align 8
@.d300 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d301 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", i64 " }>, align 8
@.d302 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c", i64 8)" }>, align 8
@.d303 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"getelementptr " }>, align 8
@.d304 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d305 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c", i32 0, i32 " }>, align 8
@.d306 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d307 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d308 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", i64 40, i64 8)" }>, align 8
@.d309 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d310 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call ptr @__olang_scope_alloc_a(ptr " }>, align 8
@.d311 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c", i64 16, i64 8)" }>, align 8
@.d312 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d313 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"getelementptr { ptr, ptr }, ptr " }>, align 8
@.d314 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d315 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d316 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d317 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 2" }>, align 8
@.d318 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d319 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d320 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 1" }>, align 8
@.d321 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d322 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d323 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d324 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 3" }>, align 8
@.d325 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"i64" }>, align 8
@.d326 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"0" }>, align 8
@.d327 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"getelementptr { ptr, i64, ptr, i64, ptr }, ptr " }>, align 8
@.d328 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c", i32 0, i32 4" }>, align 8
@.d329 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d330 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
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

@.d331 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_worker_get" }>, align 8
@.d332 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"ptr @__olang_worker_get()" }>, align 8
@.d333 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_worker_start" }>, align 8
@.d334 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"void @__olang_worker_start(ptr, ptr, ptr, ptr)" }>, align 8
@.d335 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"call ptr @__olang_worker_get()" }>, align 8
@.d336 = private constant <{ i64, [36 x i8] }> <{ i64 0, [36 x i8] c"call void @__olang_worker_start(ptr " }>, align 8
@.d337 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c", ptr @" }>, align 8
@.d338 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c", ptr " }>, align 8
@.d339 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d340 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%jh" }>, align 8
@.d341 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d342 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d343 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"%jh" }>, align 8
@.d344 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"ptr" }>, align 8
@.d345 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"internal" }>, align 8
@.d346 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"linkonce_odr" }>, align 8
@.d347 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"dso_local" }>, align 8
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
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eSoleNow(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esoleName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehead(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eexportArrayResult(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignatureText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgNew(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFile(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgShared(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esym(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecodeType(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRetLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2epassedOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2)
declare i64 @compiler_2fmir_2ePassedCount(ptr %v0, ptr %a0, { i64, [7 x i64] } %a1, i32 %a2)
@G_2ecompiler_2femit_2eHomeShared = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2femit_2ecompiler_2femit_3aEmitter_2ehomeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H9b83f66eba65594537030636cb0b52b7(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eheader(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, ptr } %a3, i64 %a4, i1 %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare { i64, ptr } @compiler_2femit_2efnTypeOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eadaptKey(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare void @compiler_2femit_3afnEm_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eload(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2elet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2esignature(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eViaMemory(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprogram(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePassing(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_e3ad71d8c7542caf_f4839b67a89e1c73 = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2ew(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2erecode(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, i32 %a3)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecoroDecls(ptr %v0, ptr %a0)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eruntime(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewhere(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2fmir_2eExitText(ptr %v0, i32 %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ecstr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_2aa1b6f8675f9eff_587e0f89839d7783 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_ac521a7d5a13adec_a148c72f596b2738 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ereadableTypes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindLast(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_82b987b8f85b4c99_79258a452f8b7d15 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha091d021a90ce6aa48813730c00df6d2(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2edbgFunctions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_ba737aae896990b4_4bf8a4c11dbddb98 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ePush_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_1cb2b0b1c80ab6bb_ff3b7bcb0dec81bf = external constant [0 x i8]
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eisLambda(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_dd4469a9ae312a3a_602f574df5758ebe = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2ebodySym(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_6b46e2b64d028668_b921adb3c27b260c = external constant [0 x i8]
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eKeys_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2fast_2eFindTest(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1)
@olang_loc_d881900b10974f5c_c7362717879c6590 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eTestLabel(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2eSymbol(ptr %v0, ptr %v1, { i64, ptr } %a0)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2eneed(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLlvm(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2femit_2eHomeInst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_f5feee0c0f7dd320_8e2d9d91f1e1268c = external constant [0 x i8]
@olang_loc_fb18e47b3c77ad7d_7c94e7cf0a0fcab9 = external constant [0 x i8]
@olang_loc_7f6652826e00de1e_418f3021b2f06a1a = external constant [0 x i8]
@olang_loc_679011f6b0c6ee1b_3818b84a191b3b77 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFieldNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2eFieldsOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erefIs(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, i64 %a2)
@olang_loc_efeca4a527577807_589cfb9b46e56fc3 = external constant [0 x i8]
@olang_loc_be60a18777a318a6_1ca0557f7b352842 = external constant [0 x i8]
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eval(ptr %v0, ptr %v1, ptr %a0, { i64, [4 x i64] } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eref(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1, i32 %a2)
declare { { i64, ptr }, i32 } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaddr(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2econstText(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eprim(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eoverflows(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2ecasesList(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2femit_2ecompiler_2femit_3aEmitter_2eenumWords(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etagRange(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eaggregate(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2, %"compiler/mir:Range" %a3)
declare ptr @compiler_2flower_2ecompiler_2flower_3aLowerer_2eGen(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eIsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2egenAlloc(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2eput(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, ptr } %a4)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2eviaMem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2esize(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2femit_2ecompiler_2femit_3afnEm_2ealign(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ealloc(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i64 %a3, { i64, ptr } %a4)
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2erunTime(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2ecopyArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [1 x i64] } %a1, { i64, ptr } %a2, i32 %a3)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2enewArray(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2, { i64, [4 x i64] } %a3, { i64, [4 x i64] } %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eslice(ptr %v0, ptr %v1, ptr %a0, %"compiler/mir:Lvalue" %a1, { i64, [4 x i64] } %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eclosure(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, { i64, [1 x i64] } %a3, %"compiler/mir:Range" %a4, %"compiler/mir:Range" %a5)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare i1 @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectRef(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2edirectText(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2escope(ptr %v0, ptr %v1, ptr %a0, { i64, [1 x i64] } %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2etextCopy(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2epair(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2femit_2ecompiler_2femit_3afnEm_2eotype(ptr %v0, ptr %a0, { i64, [4 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2eobjectPtr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2esole(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_b25f444594da9527_de5411018827488b = external constant [0 x i8]
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2ewant(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3aEmitter_2eextern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2femit_2ecompiler_2femit_3afnEm_2egap(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_e0bde991406b3b8f_e6287fb3b91b7a9b = external constant [0 x i8]
declare { i64, [4 x i64] } @compiler_2femit_2ecompiler_2femit_3afnEm_2earg(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1, i64 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2femit_2ecompiler_2femit_3aEmitter_2edeclare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_a90a878cc09c574e_a9a55cce621e609a = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9287686e475a7dbe_ea834ed677e35522 = external constant [0 x i8]
@olang_loc_45f21d64bb841654_8b47099e9550bca0 = external constant [0 x i8]
declare %"compiler/mir:ScopeInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eAt_3ccompiler_2fmir_3aScopeInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2femit_2ecompiler_2femit_3afnEm_2etrampoline(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, i1 %a3, { i64, ptr } %a4, i32 %a5, i64 %a6, %"compiler/mir:Task" %a7, i32 %a8, { i64, ptr } %a9)
@G_2ecompiler_2femit_2eHomeLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_56e40b98d8735a00_a9923da8dafaf70c = external constant [0 x i8]
@olang_loc_61ee7aad8f880fe6_58c009051e58eda2 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLess(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
