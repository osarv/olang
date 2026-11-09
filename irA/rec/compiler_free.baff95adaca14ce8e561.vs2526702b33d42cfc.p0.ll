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
%"compiler/free:Free" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/free:letGo" = type { i64, i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, %"compiler/source:Span", i64, i1 }
%"compiler/free:reason" = type { i64, i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/free:leaf" = type { { i64, ptr }, i64 }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/free:mustW" = type { ptr, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/free:feedCall" = type { i64, i64, i64, i64, i64, i1 }
%"compiler/free:feed" = type { i64, i64, i64, i64, { i64, [2 x i64] }, { i64, [2 x i64] }, i64 }
%"compiler/free:walker" = type { ptr, i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/free:orCall" = type { i64, i64, i64, i64, i64, ptr, ptr }
%"compiler/free:store" = type { i64, i64, i64, %"compiler/source:Span", i64, i64, i64, ptr, ptr }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/free:orStore" = type { i64, i64, ptr, ptr }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
@G_2ecompiler_2ffree_2eAnyPlace = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ffree_2eLAssign = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLCall = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLDrop = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLHeld = constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLLeaf = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLVacate = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eLYield = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eMovBase = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\40\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eMustNone = constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ffree_2eMustTop = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ffree_2eNotSole = constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2ffree_2eOMov = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eONew = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOPar = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOParC = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOPl = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eOUnk = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRCopied = constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRDtor = constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRInPlace = constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRMade = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRNone = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRStore = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRTask = constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRView = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k1, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k2, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k3, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k4, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k5, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k6, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k7, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k8, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @G_2ecompiler_2ffree_2eRemovalNames.k9 }>, align 64
@G_2ecompiler_2ffree_2eRemovalNames.k1 = internal constant <{ [3 x i8] }> <{ [3 x i8] c"\50\6F\70" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k2 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\54\61\6B\65\41\74" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k3 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\52\65\6D\6F\76\65\41\74" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k4 = internal constant <{ [10 x i8] }> <{ [10 x i8] c"\53\77\61\70\52\65\6D\6F\76\65" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k5 = internal constant <{ [6 x i8] }> <{ [6 x i8] c"\52\65\6D\6F\76\65" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k6 = internal constant <{ [5 x i8] }> <{ [5 x i8] c"\43\6C\65\61\72" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k7 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\54\72\75\6E\63\61\74\65" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k8 = internal constant <{ [4 x i8] }> <{ [4 x i8] c"\54\61\6B\65" }>, align 8
@G_2ecompiler_2ffree_2eRemovalNames.k9 = internal constant <{ [8 x i8] }> <{ [8 x i8] c"\53\77\61\70\54\61\6B\65" }>, align 8
@G_2ecompiler_2ffree_2eSFail = constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSFresh = constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSMove = constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ffree_2eSOk = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
define dso_local { i64, i64 } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eGlobalPlace(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l10 = alloca i64
  %l14 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t10 = insertvalue { i64, i64 } %t9, i64 -1, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 69
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t15)
  store i64 %t18, ptr %l10
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/free:Free", ptr %t19, i32 0, i32 70
  %t22 = load i64, ptr %l1, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l14
  br label %bb6
bb6:
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = insertvalue { i64, i64 } undef, i64 %t26, 0
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = insertvalue { i64, i64 } %t27, i64 %t28, 1
  store { i64, i64 } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eLeaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/free:Free", ptr %t5, i32 0, i32 78
  %t8 = load i1, ptr %t7, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %lp2
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v1, ptr %t15, i32 %a1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l10
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eReport(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca %"compiler/free:letGo"
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca %"compiler/free:reason"
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l33 = alloca %"std/prelude/text:StringBuilder"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca i64
  %l41 = alloca i64
  %l44 = alloca i64
  %l64 = alloca i1
  %l68 = alloca i64
  %l72 = alloca i64
  %l75 = alloca i64
  %l96 = alloca %"compiler/free:letGo"
  %l100 = alloca i1
  %l101 = alloca ptr
  %l105 = alloca %"compiler/free:letGo"
  %l106 = alloca i1
  %l108 = alloca i1
  %l112 = alloca %"compiler/free:letGo"
  %l117 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca %"compiler/free:letGo"
  %l126 = alloca %"compiler/free:letGo"
  %l127 = alloca i1
  %l137 = alloca i1
  %l144 = alloca i64
  %l147 = alloca i64
  %l151 = alloca i64
  %l152 = alloca i32
  %l157 = alloca %"compiler/free:letGo"
  %l162 = alloca i64
  %l166 = alloca i1
  %l170 = alloca %"compiler/free:letGo"
  %l177 = alloca %"compiler/free:letGo"
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca i64
  %l181 = alloca { i64, ptr }
  %l185 = alloca i64
  %l187 = alloca i1
  %l190 = alloca i1
  %l192 = alloca i1
  %l195 = alloca i1
  %l200 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l207 = alloca i64
  %l211 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l218 = alloca i64
  %l223 = alloca %"compiler/free:reason"
  %l228 = alloca i64
  %l233 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l248 = alloca { i64, ptr }
  %l253 = alloca { i64, ptr }
  %l254 = alloca i64
  %l255 = alloca { i64, ptr }
  %l258 = alloca i1
  %l260 = alloca ptr
  %l261 = alloca i64
  %l270 = alloca ptr
  %l272 = alloca { i64, ptr }
  %l278 = alloca { i64, ptr }
  %l282 = alloca ptr
  %l283 = alloca i64
  %l286 = alloca { i64, ptr }
  %l289 = alloca { i64, ptr }
  %l290 = alloca i64
  %l293 = alloca { i64, ptr }
  %l294 = alloca i64
  %l297 = alloca { i64, ptr }
  %l300 = alloca { i64, ptr }
  %l304 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l1, !tbaa !29
  %t12 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t12, ptr %l33
  br label %bb1
bb1:
  %t13 = load %"std/prelude/text:StringBuilder", ptr %l33
  store %"std/prelude/text:StringBuilder" %t13, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l34
  br label %bb2
bb2:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:Free", ptr %t16, i32 0, i32 9
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l37
  br label %bb3
bb3:
  %t21 = load i64, ptr %l37, !tbaa !24
  store i64 %t21, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t22 = load i64, ptr %l7, !tbaa !24
  %t23 = load i64, ptr %l6, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load i64, ptr %l8, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb9
bb6:
  %t32 = load i64, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l6, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l8, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l44, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb8
bb8:
  %t48 = load i64, ptr %l44, !tbaa !24
  store i64 %t48, ptr %l41, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l41, !tbaa !24
  store i64 %t49, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load i64, ptr %l10, !tbaa !24
  %t51 = load i64, ptr %l9, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb120
bb12:
  br label %bb13
bb13:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l10, !tbaa !24
  %t60 = load i64, ptr %l8, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l11, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l11, !tbaa !24
  %t72 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ereported(ptr %v0, ptr %t68, i64 %t69)
  store i1 %t72, ptr %l64
  br label %bb14
bb14:
  %t73 = load i1, ptr %l64, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb119
bb16:
  br label %bb17
bb17:
  store i64 -1, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/free:Free", ptr %t76, i32 0, i32 47
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t78)
  store i64 %t80, ptr %l68
  br label %bb18
bb18:
  %t81 = load i64, ptr %l68, !tbaa !24
  store i64 %t81, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t82 = load i64, ptr %l14, !tbaa !24
  %t83 = load i64, ptr %l13, !tbaa !24
  %t86 = icmp sgt i64 %t82, %t83
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = load i64, ptr %l15, !tbaa !24
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb24
bb21:
  %t92 = load i64, ptr %l14, !tbaa !24
  %t93 = load i64, ptr %l13, !tbaa !24
  %t96 = sub i64 %t92, %t93
  %t97 = load i64, ptr %l15, !tbaa !24
  %t100 = add i64 %t96, %t97
  %t102 = sub i64 %t100, 1
  %t103 = load i64, ptr %l15, !tbaa !24
  %t106 = sdiv i64 %t102, %t103
  store i64 %t106, ptr %l75, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l75, !tbaa !24
  br label %bb23
bb23:
  %t108 = load i64, ptr %l75, !tbaa !24
  store i64 %t108, ptr %l72, !tbaa !24
  br label %bb24
bb24:
  %t109 = load i64, ptr %l72, !tbaa !24
  store i64 %t109, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb25
bb25:
  %t110 = load i64, ptr %l17, !tbaa !24
  %t111 = load i64, ptr %l16, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb26, label %bb27
bb26:
  br label %bb52
bb27:
  br label %bb28
bb28:
  %t118 = load i64, ptr %l13, !tbaa !24
  %t119 = load i64, ptr %l17, !tbaa !24
  %t120 = load i64, ptr %l15, !tbaa !24
  %t123 = mul i64 %t119, %t120
  %t126 = add i64 %t118, %t123
  store i64 %t126, ptr %l18, !tbaa !24
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/free:Free", ptr %t128, i32 0, i32 47
  %t131 = load i64, ptr %l18, !tbaa !24
  %t134 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t130, i64 %t131)
  store %"compiler/free:letGo" %t134, ptr %l96
  br label %bb29
bb29:
  %t135 = getelementptr %"compiler/free:letGo", ptr %l96, i32 0, i32 0
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = load i64, ptr %l11, !tbaa !24
  %t140 = icmp ne i64 %t136, %t137
  br i1 %t140, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb34
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l101, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/free:Free", ptr %t143, i32 0, i32 47
  %t146 = load i64, ptr %l18, !tbaa !24
  %t149 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t145, i64 %t146)
  store %"compiler/free:letGo" %t149, ptr %l105
  br label %bb32
bb32:
  %t150 = load ptr, ptr %l101, !tbaa !29
  %t151 = load %"compiler/free:letGo", ptr %l105
  %t152 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eshown(ptr %v0, ptr %t150, %"compiler/free:letGo" %t151)
  store i1 %t152, ptr %l106
  br label %bb33
bb33:
  %t153 = load i1, ptr %l106, !tbaa !21
  %t154 = xor i1 %t153, true
  store i1 %t154, ptr %l100, !tbaa !21
  br label %bb34
bb34:
  %t156 = load i1, ptr %l100, !tbaa !21
  br i1 %t156, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb38
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/free:Free", ptr %t157, i32 0, i32 47
  %t160 = load i64, ptr %l18, !tbaa !24
  %t163 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t159, i64 %t160)
  store %"compiler/free:letGo" %t163, ptr %l112
  br label %bb37
bb37:
  %t164 = getelementptr %"compiler/free:letGo", ptr %l112, i32 0, i32 8
  %t165 = load i1, ptr %t164, !tbaa !21
  %t167 = xor i1 %t165, true
  store i1 %t167, ptr %l108, !tbaa !21
  br label %bb38
bb38:
  %t169 = load i1, ptr %l108, !tbaa !21
  br i1 %t169, label %bb39, label %bb40
bb39:
  br label %bb51
bb40:
  br label %bb41
bb41:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t172 = icmp slt i64 %t170, 0
  br i1 %t172, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb47
bb43:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l118, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/free:Free", ptr %t175, i32 0, i32 47
  %t178 = load i64, ptr %l18, !tbaa !24
  %t181 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t177, i64 %t178)
  store %"compiler/free:letGo" %t181, ptr %l122
  br label %bb44
bb44:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/free:Free", ptr %t182, i32 0, i32 47
  %t185 = load i64, ptr %l12, !tbaa !24
  %t188 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t184, i64 %t185)
  store %"compiler/free:letGo" %t188, ptr %l126
  br label %bb45
bb45:
  %t189 = load ptr, ptr %l118, !tbaa !29
  %t190 = load %"compiler/free:letGo", ptr %l122
  %t191 = load %"compiler/free:letGo", ptr %l126
  %t192 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erowBefore(ptr %v0, ptr %t189, %"compiler/free:letGo" %t190, %"compiler/free:letGo" %t191)
  store i1 %t192, ptr %l127
  br label %bb46
bb46:
  %t193 = load i1, ptr %l127, !tbaa !21
  store i1 %t193, ptr %l117, !tbaa !21
  br label %bb47
bb47:
  %t194 = load i1, ptr %l117, !tbaa !21
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t195 = load i64, ptr %l18, !tbaa !24
  store i64 %t195, ptr %l12, !tbaa !24
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t197 = load i64, ptr %l17, !tbaa !24
  %t199 = add i64 %t197, 1
  store i64 %t199, ptr %l17, !tbaa !24
  br label %bb25
bb52:
  %t201 = load i64, ptr %l12, !tbaa !24
  %t203 = icmp slt i64 %t201, 0
  br i1 %t203, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s2)
  br label %bb119
bb54:
  br label %bb55
bb55:
  %t205 = load i64, ptr %l3, !tbaa !24
  %t207 = add i64 %t205, 1
  store i64 %t207, ptr %l3, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %t209, i64 %t210)
  store i1 %t213, ptr %l137
  br label %bb56
bb56:
  %t214 = load i1, ptr %l137, !tbaa !21
  br i1 %t214, label %bb57, label %bb58
bb57:
  call void @__olang_scope_close(ptr %s2)
  br label %bb119
bb58:
  br label %bb59
bb59:
  %t215 = load i64, ptr %l4, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l4, !tbaa !24
  %t219 = load i64, ptr %l12, !tbaa !24
  store i64 %t219, ptr %l19, !tbaa !24
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/free:Free", ptr %t221, i32 0, i32 48
  %t224 = load i64, ptr %l11, !tbaa !24
  %t227 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t223, i64 %t224)
  store i64 %t227, ptr %l144
  br label %bb60
bb60:
  %t228 = load i64, ptr @G_2ecompiler_2ffree_2eRView, !tbaa !24
  %t229 = load i64, ptr %l144, !tbaa !24
  %t231 = icmp eq i64 %t229, %t228
  br i1 %t231, label %bb61, label %bb62
bb61:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/free:Free", ptr %t233, i32 0, i32 63
  %t236 = load i64, ptr %l11, !tbaa !24
  %t239 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t235, i64 %t236)
  %t240 = extractvalue { i32, i64 } %t239, 1
  %t241 = extractvalue { i32, i64 } %t239, 0
  store i32 %t241, ptr %l152
  %t242 = icmp ne i32 %t241, 0
  br i1 %t242, label %bb64, label %ok.243, !prof !99
ok.243:
  store i64 %t240, ptr %l151
  br label %bb63
bb62:
  br label %bb67
bb63:
  %t244 = load i64, ptr %l151, !tbaa !24
  store i64 %t244, ptr %l147, !tbaa !24
  br label %bb66
bb64:
  br label %bb65
bb65:
  %t245 = load i64, ptr %l12, !tbaa !24
  store i64 %t245, ptr %l147, !tbaa !24
  br label %bb66
bb66:
  %t247 = load i64, ptr %l147, !tbaa !24
  store i64 %t247, ptr %l19, !tbaa !24
  br label %bb67
bb67:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/free:Free", ptr %t248, i32 0, i32 47
  %t251 = load i64, ptr %l19, !tbaa !24
  %t254 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t250, i64 %t251)
  store %"compiler/free:letGo" %t254, ptr %l157
  br label %bb68
bb68:
  %t255 = load %"compiler/free:letGo", ptr %l157
  store %"compiler/free:letGo" %t255, ptr %l20
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 2
  %t258 = load i64, ptr %t257, !tbaa !24
  %t259 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 3
  %t260 = getelementptr %"compiler/source:Span", ptr %t259, i32 0, i32 0
  %t261 = load i32, ptr %t260, !tbaa !23
  %t263 = sext i32 %t261 to i64
  %t267 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2elineStart(ptr %v0, ptr %t256, i64 %t258, i64 %t263)
  store i64 %t267, ptr %l162
  br label %bb69
bb69:
  %t268 = load i64, ptr %l162, !tbaa !24
  store i64 %t268, ptr %l21, !tbaa !24
  %t269 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 5
  %t270 = load i64, ptr %t269, !tbaa !24
  %t271 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t274 = icmp eq i64 %t270, %t271
  br i1 %t274, label %bb70, label %bb71
bb70:
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = getelementptr %"compiler/free:Free", ptr %t276, i32 0, i32 47
  %t279 = load i64, ptr %l12, !tbaa !24
  %t282 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t278, i64 %t279)
  store %"compiler/free:letGo" %t282, ptr %l170
  br label %bb72
bb71:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb73
bb72:
  %t283 = getelementptr %"compiler/free:letGo", ptr %l170, i32 0, i32 5
  %t284 = load i64, ptr %t283, !tbaa !24
  %t285 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  %t288 = icmp ne i64 %t284, %t285
  store i1 %t288, ptr %l166, !tbaa !21
  br label %bb73
bb73:
  %t290 = load i1, ptr %l166, !tbaa !21
  br i1 %t290, label %bb74, label %bb75
bb74:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/free:Free", ptr %t291, i32 0, i32 47
  %t294 = load i64, ptr %l12, !tbaa !24
  %t297 = call %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %t293, i64 %t294)
  store %"compiler/free:letGo" %t297, ptr %l177
  br label %bb76
bb75:
  br label %bb77
bb76:
  %t298 = load %"compiler/free:letGo", ptr %l177
  store %"compiler/free:letGo" %t298, ptr %l20
  br label %bb77
bb77:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l178, !tbaa !27
  %t299 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t299, ptr %l179, !tbaa !27
  %t300 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 0
  store i64 %t301, ptr %l180, !tbaa !24
  %t302 = load i64, ptr %l180, !tbaa !24
  %t303 = mul i64 %t302, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t303)
  %t305 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  store { i64, ptr } %t306, ptr %l181, !tbaa !27
  %t307 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !27
  %t309 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !27
  %t311 = load i64, ptr %l180, !tbaa !24
  %t312 = mul i64 %t311, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t308, ptr %t310, i64 %t312, i1 false)
  %t313 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t313, ptr %l22, !tbaa !27
  %t314 = load ptr, ptr %l0, !tbaa !29
  %t316 = getelementptr %"compiler/free:Free", ptr %t314, i32 0, i32 10
  %t317 = load i64, ptr %l11, !tbaa !24
  %t320 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t316, i64 %t317)
  store i64 %t320, ptr %l185
  br label %bb78
bb78:
  %t321 = load i64, ptr %l185, !tbaa !24
  %t322 = icmp slt i64 %t321, 0
  br i1 %t322, label %bb79, label %bb80
bb79:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i64, ptr %l11, !tbaa !24
  %t328 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %t324, i64 %t325)
  store i1 %t328, ptr %l190
  br label %bb81
bb80:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb82
bb81:
  %t329 = load i1, ptr %l190, !tbaa !21
  %t330 = xor i1 %t329, true
  store i1 %t330, ptr %l187, !tbaa !21
  br label %bb82
bb82:
  %t332 = load i1, ptr %l187, !tbaa !21
  br i1 %t332, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l192, !tbaa !21
  br label %bb86
bb84:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load i64, ptr %l11, !tbaa !24
  %t337 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisContents(ptr %v0, ptr %t333, i64 %t334)
  store i1 %t337, ptr %l195
  br label %bb85
bb85:
  %t338 = load i1, ptr %l195, !tbaa !21
  store i1 %t338, ptr %l192, !tbaa !21
  br label %bb86
bb86:
  %t339 = load i1, ptr %l192, !tbaa !21
  br i1 %t339, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s13
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t341 = load i64, ptr %l11, !tbaa !24
  %t342 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 1
  %t343 = load i64, ptr %t342, !tbaa !24
  %t344 = load %"compiler/free:letGo", ptr %l20
  %t349 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecollection(ptr %v0, ptr %s13, ptr %t340, i64 %t341, i64 %t343, %"compiler/free:letGo" %t344)
  store { i64, ptr } %t349, ptr %l200
  br label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s15
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load %"compiler/free:letGo", ptr %l20
  %t354 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %s15, ptr %t350, %"compiler/free:letGo" %t351)
  store { i64, ptr } %t354, ptr %l211
  br label %bb94
bb89:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load %"compiler/free:letGo", ptr %l20
  %t357 = load i64, ptr %l11, !tbaa !24
  %t361 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2escopeName(ptr %v0, ptr %s13, ptr %t355, %"compiler/free:letGo" %t356, i64 %t357)
  store { i64, ptr } %t361, ptr %l204
  br label %bb90
bb90:
  %t362 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t364 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t365 = extractvalue { i64, ptr } %t364, 1
  %t366 = extractvalue { i64, ptr } %t364, 0
  %t367 = add i64 %t363, %t366
  %t368 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t369 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t370 = add i64 %t367, %t369
  %t371 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t372 = extractvalue { i64, ptr } %t371, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = add i64 %t370, %t373
  %t375 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t376 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t377 = add i64 %t374, %t376
  %t378 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t377)
  call void @olang_textcopy(ptr %t378, ptr %t362, i64 %t363)
  %t379 = getelementptr i8, ptr %t378, i64 %t363
  call void @olang_textcopy(ptr %t379, ptr %t365, i64 %t366)
  %t380 = getelementptr i8, ptr %t379, i64 %t366
  call void @olang_textcopy(ptr %t380, ptr %t368, i64 %t369)
  %t381 = getelementptr i8, ptr %t380, i64 %t369
  call void @olang_textcopy(ptr %t381, ptr %t372, i64 %t373)
  %t382 = getelementptr i8, ptr %t381, i64 %t373
  call void @olang_textcopy(ptr %t382, ptr %t375, i64 %t376)
  %t383 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t384 = insertvalue { i64, ptr } %t383, ptr %t378, 1
  store { i64, ptr } %t384, ptr %l205, !tbaa !27
  %t385 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 0
  %t387 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t387, 0
  store i64 %t388, ptr %l207, !tbaa !24
  %t390 = load i64, ptr %l207, !tbaa !24
  %t391 = icmp eq i64 %t386, %t390
  br i1 %t391, label %bb91, label %bb92
bb91:
  %t393 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = load i64, ptr %l207, !tbaa !24
  %t398 = mul i64 %t397, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t394, ptr %t396, i64 %t398, i1 false)
  br label %bb93
bb92:
  %t399 = load { i64, ptr }, ptr %l205, !tbaa !27
  store { i64, ptr } %t399, ptr %l22, !tbaa !27
  br label %bb93
bb93:
  call void @__olang_scope_close(ptr %s13)
  br label %bb99
bb94:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load %"compiler/free:letGo", ptr %l20
  %t402 = load i64, ptr %l11, !tbaa !24
  %t406 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2escopeName(ptr %v0, ptr %s15, ptr %t400, %"compiler/free:letGo" %t401, i64 %t402)
  store { i64, ptr } %t406, ptr %l215
  br label %bb95
bb95:
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t409 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t409, 1
  %t411 = extractvalue { i64, ptr } %t409, 0
  %t412 = add i64 %t408, %t411
  %t413 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t414 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t415 = add i64 %t412, %t414
  %t416 = load { i64, ptr }, ptr %l215, !tbaa !27
  %t417 = extractvalue { i64, ptr } %t416, 1
  %t418 = extractvalue { i64, ptr } %t416, 0
  %t419 = add i64 %t415, %t418
  %t420 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t421 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t422 = add i64 %t419, %t421
  %t423 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t422)
  call void @olang_textcopy(ptr %t423, ptr %t407, i64 %t408)
  %t424 = getelementptr i8, ptr %t423, i64 %t408
  call void @olang_textcopy(ptr %t424, ptr %t410, i64 %t411)
  %t425 = getelementptr i8, ptr %t424, i64 %t411
  call void @olang_textcopy(ptr %t425, ptr %t413, i64 %t414)
  %t426 = getelementptr i8, ptr %t425, i64 %t414
  call void @olang_textcopy(ptr %t426, ptr %t417, i64 %t418)
  %t427 = getelementptr i8, ptr %t426, i64 %t418
  call void @olang_textcopy(ptr %t427, ptr %t420, i64 %t421)
  %t428 = insertvalue { i64, ptr } undef, i64 %t422, 0
  %t429 = insertvalue { i64, ptr } %t428, ptr %t423, 1
  store { i64, ptr } %t429, ptr %l216, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t430, 0
  %t432 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t432, 0
  store i64 %t433, ptr %l218, !tbaa !24
  %t435 = load i64, ptr %l218, !tbaa !24
  %t436 = icmp eq i64 %t431, %t435
  br i1 %t436, label %bb96, label %bb97
bb96:
  %t438 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t439 = load ptr, ptr %t438, !tbaa !27
  %t440 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t441 = load ptr, ptr %t440, !tbaa !27
  %t442 = load i64, ptr %l218, !tbaa !24
  %t443 = mul i64 %t442, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t439, ptr %t441, i64 %t443, i1 false)
  br label %bb98
bb97:
  %t444 = load { i64, ptr }, ptr %l216, !tbaa !27
  store { i64, ptr } %t444, ptr %l22, !tbaa !27
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s15)
  br label %bb99
bb99:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/free:Free", ptr %t445, i32 0, i32 50
  %t448 = load i64, ptr %l11, !tbaa !24
  %t451 = call %"compiler/free:reason" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v0, ptr %t447, i64 %t448)
  store %"compiler/free:reason" %t451, ptr %l223
  br label %bb100
bb100:
  %t452 = load %"compiler/free:reason", ptr %l223
  store %"compiler/free:reason" %t452, ptr %l23
  %t453 = getelementptr %"compiler/free:reason", ptr %l23, i32 0, i32 3
  %t454 = load { i64, ptr }, ptr %t453, !tbaa !27
  store { i64, ptr } %t454, ptr %l24, !tbaa !27
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t458 = getelementptr %"compiler/free:Free", ptr %t456, i32 0, i32 48
  %t459 = load i64, ptr %l11, !tbaa !24
  %t462 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t458, i64 %t459)
  store i64 %t462, ptr %l228
  br label %bb101
bb101:
  %t463 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t464 = load i64, ptr %l228, !tbaa !24
  %t466 = icmp eq i64 %t464, %t463
  br i1 %t466, label %bb102, label %bb103
bb102:
  store { i64, ptr } { i64 62, ptr getelementptr inbounds (<{ i64, [62 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l24, !tbaa !27
  br label %bb104
bb103:
  br label %bb104
bb104:
  %t468 = getelementptr %"compiler/free:reason", ptr %l23, i32 0, i32 1
  %t469 = load i64, ptr %t468, !tbaa !24
  %t471 = icmp sge i64 %t469, 0
  br i1 %t471, label %bb105, label %bb106
bb105:
  %t473 = load ptr, ptr %l1, !tbaa !29
  %t474 = getelementptr %"compiler/free:reason", ptr %l23, i32 0, i32 1
  %t475 = load i64, ptr %t474, !tbaa !24
  %t476 = getelementptr %"compiler/free:reason", ptr %l23, i32 0, i32 2
  %t477 = getelementptr %"compiler/source:Span", ptr %t476, i32 0, i32 0
  %t478 = load i32, ptr %t477, !tbaa !23
  %t480 = sext i32 %t478 to i64
  %t484 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s2, ptr %t473, i64 %t475, i64 %t480)
  store { i64, ptr } %t484, ptr %l238
  br label %bb107
bb106:
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t486 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 2
  %t487 = load i64, ptr %t486, !tbaa !24
  %t488 = load i64, ptr %l21, !tbaa !24
  %t492 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s2, ptr %t485, i64 %t487, i64 %t488)
  store { i64, ptr } %t492, ptr %l243
  br label %bb108
bb107:
  %t493 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t494 = extractvalue { i64, ptr } %t493, 1
  %t495 = extractvalue { i64, ptr } %t493, 0
  %t496 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t495)
  call void @olang_textcopy(ptr %t496, ptr %t494, i64 %t495)
  %t497 = insertvalue { i64, ptr } undef, i64 %t495, 0
  %t498 = insertvalue { i64, ptr } %t497, ptr %t496, 1
  store { i64, ptr } %t498, ptr %l233, !tbaa !27
  br label %bb109
bb108:
  %t500 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t501 = extractvalue { i64, ptr } %t500, 1
  %t502 = extractvalue { i64, ptr } %t500, 0
  %t503 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t502)
  call void @olang_textcopy(ptr %t503, ptr %t501, i64 %t502)
  %t504 = insertvalue { i64, ptr } undef, i64 %t502, 0
  %t505 = insertvalue { i64, ptr } %t504, ptr %t503, 1
  store { i64, ptr } %t505, ptr %l233, !tbaa !27
  br label %bb109
bb109:
  %t507 = load { i64, ptr }, ptr %l233, !tbaa !27
  store { i64, ptr } %t507, ptr %l25, !tbaa !27
  %t508 = load ptr, ptr %l1, !tbaa !29
  %t509 = getelementptr %"compiler/free:letGo", ptr %l20, i32 0, i32 2
  %t510 = load i64, ptr %t509, !tbaa !24
  %t511 = load i64, ptr %l21, !tbaa !24
  %t515 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %s2, ptr %t508, i64 %t510, i64 %t511)
  store { i64, ptr } %t515, ptr %l248
  br label %bb110
bb110:
  %t516 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t517 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t518 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t519 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t520 = extractvalue { i64, ptr } %t519, 1
  %t521 = extractvalue { i64, ptr } %t519, 0
  %t522 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t524 = add i64 %t521, %t523
  %t526 = extractvalue { i64, ptr } %t516, 1
  %t527 = extractvalue { i64, ptr } %t516, 0
  %t528 = add i64 %t524, %t527
  %t529 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t531 = add i64 %t528, %t530
  %t533 = extractvalue { i64, ptr } %t517, 1
  %t534 = extractvalue { i64, ptr } %t517, 0
  %t535 = add i64 %t531, %t534
  %t536 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t537 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t538 = add i64 %t535, %t537
  %t540 = extractvalue { i64, ptr } %t518, 1
  %t541 = extractvalue { i64, ptr } %t518, 0
  %t542 = add i64 %t538, %t541
  %t543 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t544 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t545 = add i64 %t542, %t544
  %t546 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t545)
  call void @olang_textcopy(ptr %t546, ptr %t520, i64 %t521)
  %t547 = getelementptr i8, ptr %t546, i64 %t521
  call void @olang_textcopy(ptr %t547, ptr %t522, i64 %t523)
  %t548 = getelementptr i8, ptr %t547, i64 %t523
  call void @olang_textcopy(ptr %t548, ptr %t526, i64 %t527)
  %t549 = getelementptr i8, ptr %t548, i64 %t527
  call void @olang_textcopy(ptr %t549, ptr %t529, i64 %t530)
  %t550 = getelementptr i8, ptr %t549, i64 %t530
  call void @olang_textcopy(ptr %t550, ptr %t533, i64 %t534)
  %t551 = getelementptr i8, ptr %t550, i64 %t534
  call void @olang_textcopy(ptr %t551, ptr %t536, i64 %t537)
  %t552 = getelementptr i8, ptr %t551, i64 %t537
  call void @olang_textcopy(ptr %t552, ptr %t540, i64 %t541)
  %t553 = getelementptr i8, ptr %t552, i64 %t541
  call void @olang_textcopy(ptr %t553, ptr %t543, i64 %t544)
  %t554 = insertvalue { i64, ptr } undef, i64 %t545, 0
  %t555 = insertvalue { i64, ptr } %t554, ptr %t546, 1
  store { i64, ptr } %t555, ptr %l26, !tbaa !27
  %t557 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t557, ptr %l253, !tbaa !27
  %t558 = load { i64, ptr }, ptr %l253, !tbaa !27
  %t559 = extractvalue { i64, ptr } %t558, 0
  store i64 %t559, ptr %l254, !tbaa !24
  %t560 = load i64, ptr %l254, !tbaa !24
  %t561 = mul i64 %t560, 1
  %t562 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t561)
  %t563 = insertvalue { i64, ptr } undef, i64 %t560, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t562, 1
  store { i64, ptr } %t564, ptr %l255, !tbaa !27
  %t565 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr { i64, ptr }, ptr %l253, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = load i64, ptr %l254, !tbaa !24
  %t570 = mul i64 %t569, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t566, ptr %t568, i64 %t570, i1 false)
  %t571 = load { i64, ptr }, ptr %l255, !tbaa !27
  %t575 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %s0, ptr %s2, ptr %l5, { i64, ptr } %t571)
  store i1 %t575, ptr %l258
  br label %bb111
bb111:
  %t576 = load i1, ptr %l258, !tbaa !21
  %t577 = xor i1 %t576, true
  br i1 %t577, label %bb112, label %bb113
bb112:
  store ptr %l5, ptr %l260, !tbaa !29
  %t579 = ptrtoint ptr %s0 to i64
  store i64 %t579, ptr %l261, !tbaa !24
  %t580 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t580, label %bb114, label %bb115
bb113:
  br label %bb118
bb114:
  %t582 = call ptr @__olang_region_make(ptr %s0)
  %t583 = ptrtoint ptr %t582 to i64
  store i64 %t583, ptr %l261, !tbaa !24
  br label %bb115
bb115:
  %t584 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t586 = extractvalue { i64, ptr } %t584, 1
  %t587 = extractvalue { i64, ptr } %t584, 0
  %t588 = load i64, ptr %l261
  %t589 = inttoptr i64 %t588 to ptr
  %t590 = call ptr @__olang_scope_alloc(ptr %t589, i64 %t587)
  call void @olang_textcopy(ptr %t590, ptr %t586, i64 %t587)
  %t591 = insertvalue { i64, ptr } undef, i64 %t587, 0
  %t592 = insertvalue { i64, ptr } %t591, ptr %t590, 1
  %t594 = load i64, ptr %l261
  %t595 = inttoptr i64 %t594 to ptr
  %t596 = extractvalue { i64, ptr } %t592, 0
  %t597 = extractvalue { i64, ptr } %t592, 1
  %t598 = mul i64 %t596, 1
  %t599 = call ptr @__olang_scope_alloc(ptr %t595, i64 %t598)
  call void @llvm.memcpy.p0.p0.i64(ptr %t599, ptr %t597, i64 %t598, i1 false)
  %t600 = insertvalue { i64, ptr } undef, i64 %t596, 0
  %t601 = insertvalue { i64, ptr } %t600, ptr %t599, 1
  %t602 = load ptr, ptr %l260, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t602, { i64, ptr } %t601)
  br label %bb116
bb116:
  %t604 = load { i64, ptr }, ptr %l26, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %l2, { i64, ptr } %t604)
  br label %bb117
bb117:
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s2)
  br label %bb119
bb119:
  %t607 = load i64, ptr %l10, !tbaa !24
  %t609 = add i64 %t607, 1
  store i64 %t609, ptr %l10, !tbaa !24
  br label %bb10
bb120:
  store ptr %l2, ptr %l270, !tbaa !29
  %t611 = load ptr, ptr %l0, !tbaa !29
  %t613 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eholderRows(ptr %v0, ptr %s0, ptr %t611)
  store { i64, ptr } %t613, ptr %l272
  br label %bb121
bb121:
  %t614 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t615 = extractvalue { i64, ptr } %t614, 0
  %t616 = extractvalue { i64, ptr } %t614, 1
  %t617 = mul i64 %t615, 1
  %t618 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t617)
  call void @llvm.memcpy.p0.p0.i64(ptr %t618, ptr %t616, i64 %t617, i1 false)
  %t619 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t620 = insertvalue { i64, ptr } %t619, ptr %t618, 1
  %t621 = load ptr, ptr %l270, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t621, { i64, ptr } %t620)
  br label %bb122
bb122:
  %t623 = load i64, ptr %l3, !tbaa !24
  %t625 = icmp eq i64 %t623, 0
  br i1 %t625, label %bb123, label %bb124
bb123:
  store %olang.scope zeroinitializer, ptr %s24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s24, ptr %l2, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t629 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t629, ptr %l278
  br label %bb126
bb126:
  call void @__olang_scope_close(ptr %s24)
  call void @__olang_scope_close(ptr %s0)
  %t630 = load { i64, ptr }, ptr %l278, !tbaa !27
  store { i64, ptr } %t630, ptr %rv
  br label %ret
bb127:
  %t631 = load i64, ptr %l3, !tbaa !24
  %t632 = load i64, ptr %l4, !tbaa !24
  %t635 = sub i64 %t631, %t632
  store i64 %t635, ptr %l28, !tbaa !24
  store ptr %l2, ptr %l282, !tbaa !29
  %t637 = load i64, ptr %l3, !tbaa !24
  store i64 %t637, ptr %l283, !tbaa !24
  %t638 = load i64, ptr %l3, !tbaa !24
  %t640 = icmp eq i64 %t638, 1
  br i1 %t640, label %bb128, label %bb129
bb128:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l286, !tbaa !27
  br label %bb130
bb129:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l286, !tbaa !27
  br label %bb130
bb130:
  %t642 = load i64, ptr %l3, !tbaa !24
  %t644 = icmp eq i64 %t642, 1
  br i1 %t644, label %bb131, label %bb132
bb131:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l289, !tbaa !27
  br label %bb133
bb132:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l289, !tbaa !27
  br label %bb133
bb133:
  %t646 = load i64, ptr %l28, !tbaa !24
  store i64 %t646, ptr %l290, !tbaa !24
  %t647 = load i64, ptr %l28, !tbaa !24
  %t649 = icmp eq i64 %t647, 1
  br i1 %t649, label %bb134, label %bb135
bb134:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l293, !tbaa !27
  br label %bb136
bb135:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l293, !tbaa !27
  br label %bb136
bb136:
  %t651 = load i64, ptr %l4, !tbaa !24
  store i64 %t651, ptr %l294, !tbaa !24
  %t652 = load i64, ptr %l4, !tbaa !24
  %t654 = icmp eq i64 %t652, 1
  br i1 %t654, label %bb137, label %bb138
bb137:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l297, !tbaa !27
  br label %bb139
bb138:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l297, !tbaa !27
  br label %bb139
bb139:
  %t656 = load i64, ptr %l4, !tbaa !24
  %t658 = icmp sgt i64 %t656, 0
  br i1 %t658, label %bb140, label %bb141
bb140:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l300, !tbaa !27
  br label %bb142
bb141:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l300, !tbaa !27
  br label %bb142
bb142:
  %t660 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t661 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t662 = load i64, ptr %l283, !tbaa !24
  %t663 = call i64 @__olang_fmt_i64(ptr null, i64 %t662)
  %t664 = add i64 %t661, %t663
  %t665 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t666 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t667 = add i64 %t664, %t666
  %t668 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t669 = extractvalue { i64, ptr } %t668, 1
  %t670 = extractvalue { i64, ptr } %t668, 0
  %t671 = add i64 %t667, %t670
  %t672 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t673 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t674 = add i64 %t671, %t673
  %t675 = load { i64, ptr }, ptr %l289, !tbaa !27
  %t676 = extractvalue { i64, ptr } %t675, 1
  %t677 = extractvalue { i64, ptr } %t675, 0
  %t678 = add i64 %t674, %t677
  %t679 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t680 = extractvalue { i64, ptr } { i64 41, ptr getelementptr inbounds (<{ i64, [41 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t681 = add i64 %t678, %t680
  %t682 = load i64, ptr %l290, !tbaa !24
  %t683 = call i64 @__olang_fmt_i64(ptr null, i64 %t682)
  %t684 = add i64 %t681, %t683
  %t685 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t686 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t687 = add i64 %t684, %t686
  %t688 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t689 = extractvalue { i64, ptr } %t688, 1
  %t690 = extractvalue { i64, ptr } %t688, 0
  %t691 = add i64 %t687, %t690
  %t692 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t693 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t694 = add i64 %t691, %t693
  %t695 = load i64, ptr %l294, !tbaa !24
  %t696 = call i64 @__olang_fmt_i64(ptr null, i64 %t695)
  %t697 = add i64 %t694, %t696
  %t698 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t699 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t700 = add i64 %t697, %t699
  %t701 = load { i64, ptr }, ptr %l297, !tbaa !27
  %t702 = extractvalue { i64, ptr } %t701, 1
  %t703 = extractvalue { i64, ptr } %t701, 0
  %t704 = add i64 %t700, %t703
  %t705 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t706 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t707 = add i64 %t704, %t706
  %t708 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t709 = extractvalue { i64, ptr } %t708, 1
  %t710 = extractvalue { i64, ptr } %t708, 0
  %t711 = add i64 %t707, %t710
  %t712 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t713 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t714 = add i64 %t711, %t713
  %t715 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t714)
  call void @olang_textcopy(ptr %t715, ptr %t660, i64 %t661)
  %t716 = getelementptr i8, ptr %t715, i64 %t661
  %t717 = call i64 @__olang_fmt_i64(ptr %t716, i64 %t662)
  %t718 = getelementptr i8, ptr %t716, i64 %t663
  call void @olang_textcopy(ptr %t718, ptr %t665, i64 %t666)
  %t719 = getelementptr i8, ptr %t718, i64 %t666
  call void @olang_textcopy(ptr %t719, ptr %t669, i64 %t670)
  %t720 = getelementptr i8, ptr %t719, i64 %t670
  call void @olang_textcopy(ptr %t720, ptr %t672, i64 %t673)
  %t721 = getelementptr i8, ptr %t720, i64 %t673
  call void @olang_textcopy(ptr %t721, ptr %t676, i64 %t677)
  %t722 = getelementptr i8, ptr %t721, i64 %t677
  call void @olang_textcopy(ptr %t722, ptr %t679, i64 %t680)
  %t723 = getelementptr i8, ptr %t722, i64 %t680
  %t724 = call i64 @__olang_fmt_i64(ptr %t723, i64 %t682)
  %t725 = getelementptr i8, ptr %t723, i64 %t683
  call void @olang_textcopy(ptr %t725, ptr %t685, i64 %t686)
  %t726 = getelementptr i8, ptr %t725, i64 %t686
  call void @olang_textcopy(ptr %t726, ptr %t689, i64 %t690)
  %t727 = getelementptr i8, ptr %t726, i64 %t690
  call void @olang_textcopy(ptr %t727, ptr %t692, i64 %t693)
  %t728 = getelementptr i8, ptr %t727, i64 %t693
  %t729 = call i64 @__olang_fmt_i64(ptr %t728, i64 %t695)
  %t730 = getelementptr i8, ptr %t728, i64 %t696
  call void @olang_textcopy(ptr %t730, ptr %t698, i64 %t699)
  %t731 = getelementptr i8, ptr %t730, i64 %t699
  call void @olang_textcopy(ptr %t731, ptr %t702, i64 %t703)
  %t732 = getelementptr i8, ptr %t731, i64 %t703
  call void @olang_textcopy(ptr %t732, ptr %t705, i64 %t706)
  %t733 = getelementptr i8, ptr %t732, i64 %t706
  call void @olang_textcopy(ptr %t733, ptr %t709, i64 %t710)
  %t734 = getelementptr i8, ptr %t733, i64 %t710
  call void @olang_textcopy(ptr %t734, ptr %t712, i64 %t713)
  %t735 = insertvalue { i64, ptr } undef, i64 %t714, 0
  %t736 = insertvalue { i64, ptr } %t735, ptr %t715, 1
  %t738 = extractvalue { i64, ptr } %t736, 0
  %t739 = extractvalue { i64, ptr } %t736, 1
  %t740 = mul i64 %t738, 1
  %t741 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t740)
  call void @llvm.memcpy.p0.p0.i64(ptr %t741, ptr %t739, i64 %t740, i1 false)
  %t742 = insertvalue { i64, ptr } undef, i64 %t738, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t741, 1
  %t744 = load ptr, ptr %l282, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t744, { i64, ptr } %t743)
  br label %bb143
bb143:
  %t747 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t747, ptr %l304
  br label %bb144
bb144:
  call void @__olang_scope_close(ptr %s0)
  %t748 = load { i64, ptr }, ptr %l304, !tbaa !27
  store { i64, ptr } %t748, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l16 = alloca ptr
  %l19 = alloca i64
  %l25 = alloca i32
  %l27 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l48 = alloca i64
  %l66 = alloca i64
  %l73 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/free:Free", ptr %t6, i32 0, i32 1
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t8, i64 %a1)
  store ptr %t12, ptr %l16
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l16, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 1
  %t16 = load { i64, [2 x i64] }, ptr %t15
  store { i64, [2 x i64] } %t16, ptr %l3
  %t18 = load { i64, [2 x i64] }, ptr %l3
  %t20 = extractvalue { i64, [2 x i64] } %t18, 0
  %t21 = icmp eq i64 %t20, 0
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  store i64 %t25, ptr %l4, !tbaa !24
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t27, i64 %t28)
  store i32 %t31, ptr %l25
  br label %bb5
bb5:
  %t32 = load i32, ptr %l25, !tbaa !23
  %t33 = icmp ne i32 %t32, 0
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i64 -3, ptr %l27, !tbaa !24
  br label %bb10
bb7:
  %t35 = load ptr, ptr %l2, !tbaa !29
  store ptr %t35, ptr %l28, !tbaa !29
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t36, i64 %t37)
  store i64 %t40, ptr %l31
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l28, !tbaa !29
  %t42 = load i64, ptr %l31, !tbaa !24
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t43, ptr %l32
  br label %bb9
bb9:
  %t44 = load i64, ptr %l32, !tbaa !24
  store i64 %t44, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l19, !tbaa !24
  br label %bb51
bb11:
  %t46 = load { i64, [2 x i64] }, ptr %l3
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 1
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { i32, i32 }, ptr %t51, i32 0, i32 0
  %t53 = load i32, ptr %t52
  store i32 %t53, ptr %l5, !tbaa !23
  %t55 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t56 = getelementptr { i32, i32 }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t59 = load i32, ptr %l6, !tbaa !23
  %t61 = icmp ne i32 %t59, 0
  br i1 %t61, label %bb15, label %bb16
bb15:
  store i64 -3, ptr %l39, !tbaa !24
  br label %bb18
bb16:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l5, !tbaa !23
  %t67 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etypeModule(ptr %v0, ptr %t63, i32 %t64)
  store i64 %t67, ptr %l42
  br label %bb17
bb17:
  %t68 = load i64, ptr %l42, !tbaa !24
  store i64 %t68, ptr %l39, !tbaa !24
  br label %bb18
bb18:
  %t69 = load i64, ptr %l39, !tbaa !24
  store i64 %t69, ptr %l19, !tbaa !24
  br label %bb51
bb19:
  %t70 = load { i64, [2 x i64] }, ptr %l3
  %t72 = extractvalue { i64, [2 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 3
  br i1 %t73, label %bb20, label %bb21
bb20:
  %t75 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t76 = getelementptr { i32 }, ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l7, !tbaa !23
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l7, !tbaa !23
  %t83 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etypeModule(ptr %v0, ptr %t79, i32 %t80)
  store i64 %t83, ptr %l48
  br label %bb23
bb23:
  %t84 = load i64, ptr %l48, !tbaa !24
  store i64 %t84, ptr %l19, !tbaa !24
  br label %bb51
bb24:
  %t85 = load { i64, [2 x i64] }, ptr %l3
  %t87 = extractvalue { i64, [2 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 6
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t91 = getelementptr { i64, i32 }, ptr %t90, i32 0, i32 0
  %t92 = load i64, ptr %t91
  store i64 %t92, ptr %l8, !tbaa !24
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t94 = load i64, ptr %l8, !tbaa !24
  store i64 %t94, ptr %l19, !tbaa !24
  br label %bb51
bb28:
  %t96 = load { i64, [2 x i64] }, ptr %l3
  %t98 = extractvalue { i64, [2 x i64] } %t96, 0
  %t99 = icmp eq i64 %t98, 5
  br i1 %t99, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 0
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/load:Loader", ptr %t104, i32 0, i32 12
  %t107 = load i64, ptr %t106, !tbaa !24
  store i64 %t107, ptr %l19, !tbaa !24
  br label %bb51
bb32:
  %t109 = load { i64, [2 x i64] }, ptr %l3
  %t111 = extractvalue { i64, [2 x i64] } %t109, 0
  %t112 = icmp eq i64 %t111, 9
  br i1 %t112, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i64 -3, ptr %l19, !tbaa !24
  br label %bb51
bb36:
  %t114 = load { i64, [2 x i64] }, ptr %l3
  %t116 = extractvalue { i64, [2 x i64] } %t114, 0
  %t117 = icmp eq i64 %t116, 4
  br i1 %t117, label %bb37, label %bb38
bb37:
  %t119 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t120 = getelementptr { i32 }, ptr %t119, i32 0, i32 0
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l9, !tbaa !23
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l9, !tbaa !23
  %t126 = sext i32 %t124 to i64
  %t129 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %t123, i64 %t126)
  store i64 %t129, ptr %l66
  br label %bb40
bb40:
  %t130 = load i64, ptr %l66, !tbaa !24
  store i64 %t130, ptr %l19, !tbaa !24
  br label %bb51
bb41:
  %t131 = load { i64, [2 x i64] }, ptr %l3
  %t133 = extractvalue { i64, [2 x i64] } %t131, 0
  %t134 = icmp eq i64 %t133, 8
  br i1 %t134, label %bb42, label %bb43
bb42:
  %t136 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t137 = getelementptr { i32, i32, i64 }, ptr %t136, i32 0, i32 0
  %t138 = load i32, ptr %t137
  store i32 %t138, ptr %l10, !tbaa !23
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i32, ptr %l10, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t146 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebodyModule(ptr %v0, ptr %t140, i64 %t143)
  store i64 %t146, ptr %l73
  br label %bb45
bb45:
  %t147 = load i64, ptr %l73, !tbaa !24
  store i64 %t147, ptr %l19, !tbaa !24
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i64 -4, ptr %l19, !tbaa !24
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_26303021143ae8be_4bef98a84a02e70a)
  unreachable
bb51:
  %t148 = load i64, ptr %l19, !tbaa !24
  store i64 %t148, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ebuiltSpell(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i1
  %l9 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l24 = alloca { ptr, ptr }
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l4, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/free:Free", ptr %t13, i32 0, i32 2
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 5
  %t19 = load { ptr, ptr }, ptr %t18
  %t21 = extractvalue { ptr, ptr } %t19, 0
  %t22 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t23 = icmp eq ptr %t21, %t22
  %t24 = extractvalue { ptr, ptr } %t19, 1
  %t25 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t26 = icmp eq ptr %t24, %t25
  %t27 = and i1 %t23, %t26
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l9, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t30, ptr %l15, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l16, !tbaa !24
  %t33 = load i64, ptr %l16, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l17, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l16, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t44, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/free:Free", ptr %t46, i32 0, i32 2
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 5
  %t52 = load { ptr, ptr }, ptr %t51
  %t54 = extractvalue { ptr, ptr } %t52, 0
  %t55 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t56 = icmp eq ptr %t54, %t55
  %t57 = extractvalue { ptr, ptr } %t52, 1
  %t58 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t59 = icmp eq ptr %t57, %t58
  %t60 = and i1 %t56, %t59
  br i1 %t60, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_2d0236bac0ece1bd_eaf4e8c3a594bae9)
  unreachable
bb10:
  br label %bb11
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/free:Free", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 5
  %t68 = load { ptr, ptr }, ptr %t67
  store { ptr, ptr } %t68, ptr %l24
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l27
  br label %bb12
bb12:
  %t74 = load { ptr, ptr }, ptr %l24
  %t75 = extractvalue { ptr, ptr } %t74, 0
  %t76 = extractvalue { ptr, ptr } %t74, 1
  %t77 = load i32, ptr %l27, !tbaa !23
  %t78 = call { i64, ptr } %t75(ptr %t76, ptr %s0, i32 %t77)
  store { i64, ptr } %t78, ptr %l28
  br label %bb13
bb13:
  %t79 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 1
  %t81 = extractvalue { i64, ptr } %t79, 0
  %t82 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t83 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t84 = add i64 %t81, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t80, i64 %t81)
  %t86 = getelementptr i8, ptr %t85, i64 %t81
  call void @olang_textcopy(ptr %t86, ptr %t82, i64 %t83)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t88, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2efreshCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i64
  %l27 = alloca %"compiler/typed:Plan"
  %l29 = alloca %"compiler/typed:Plan"
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i64
  %l39 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t41 = alloca %"compiler/typed:Plan", align 8
  %t44 = alloca %"compiler/typed:Plan", align 8
  %t55 = alloca { ptr, ptr }, align 8
  %t64 = alloca { ptr, ptr }, align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  %t13 = extractvalue { i64, [2 x i64] } %t11, 0
  %t14 = icmp eq i64 %t13, 1
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb4
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp slt i64 %t18, 0
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb8
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/free:Free", ptr %t24, i32 0, i32 3
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l20
  br label %bb7
bb7:
  %t29 = load i64, ptr %l17, !tbaa !24
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = icmp sge i64 %t29, %t30
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l16, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l4, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/free:Free", ptr %t37, i32 0, i32 3
  %t40 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t41, ptr %v0, ptr %v0, ptr %t39, i64 %t40)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t41, i64 536, i1 false)
  br label %bb12
bb12:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t44, ptr %v0, ptr %l27)
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t44, i64 536, i1 false)
  br label %bb13
bb13:
  store ptr %l29, ptr %l30, !tbaa !29
  store ptr %a1, ptr %l31, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l2, !tbaa !24
  %t51 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t47, i64 %t48)
  store i64 %t51, ptr %l34
  br label %bb14
bb14:
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t53 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t54 = ptrtoint ptr %t53 to i64
  %t56 = getelementptr { ptr, ptr }, ptr %t55, i32 0, i32 0
  store ptr %t52, ptr %t56, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t58 = getelementptr { ptr, ptr }, ptr %t55, i32 0, i32 1
  store ptr %v0, ptr %t58, !tbaa !28
  %t59 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_33, 0
  %t60 = insertvalue { ptr, ptr } %t59, ptr %t55, 1
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t62 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t63 = ptrtoint ptr %t62 to i64
  %t65 = getelementptr { ptr, ptr }, ptr %t64, i32 0, i32 0
  store ptr %t61, ptr %t65, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t67 = getelementptr { ptr, ptr }, ptr %t64, i32 0, i32 1
  store ptr %v0, ptr %t67, !tbaa !28
  %t68 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_34, 0
  %t69 = insertvalue { ptr, ptr } %t68, ptr %t64, 1
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = load ptr, ptr %l31, !tbaa !29
  %t72 = load i64, ptr %l34, !tbaa !24
  %t74 = extractvalue { ptr, ptr } %t60, 0
  %t75 = extractvalue { ptr, ptr } %t60, 1
  %t77 = extractvalue { ptr, ptr } %t69, 0
  %t78 = extractvalue { ptr, ptr } %t69, 1
  %t79 = call i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %s0, ptr %s0, ptr %t70, ptr %t71, i64 %t72, ptr %t74, ptr %t75, ptr %t77, ptr %t78)
  store i1 %t79, ptr %l39
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  %t80 = load i1, ptr %l39, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ehandedToC(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca i1
  %l10 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i1
  %l20 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 17
  %t10 = load i1, ptr %t9, !tbaa !21
  br i1 %t10, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 18
  store ptr %t20, ptr %l10, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:Free", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t28 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t24, i64 %a1)
  store i64 %t28, ptr %l14
  br label %bb3
bb3:
  %t29 = load ptr, ptr %l10, !tbaa !29
  %t30 = load i64, ptr %l14, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t29, i64 %t30)
  store i1 %t31, ptr %l15
  br label %bb4
bb4:
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l6, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb9
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/free:Free", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = call i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %t40)
  store i1 %t42, ptr %l20
  br label %bb8
bb8:
  %t43 = load i1, ptr %l20, !tbaa !21
  store i1 %t43, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l16, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisCase(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca ptr
  %l9 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 1
  %t11 = load { i64, [2 x i64] }, ptr %t10
  %t15 = extractvalue { i64, [2 x i64] } %t11, 0
  %t16 = icmp eq i64 %t15, 2
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_c5e41b8fc96972ee_4e89d8a2bd660d32)
  unreachable
bb10:
  %t18 = load i1, ptr %l9, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeepView(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 48
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l9
  br label %bb1
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2ffree_2eRNone, !tbaa !24
  %t9 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp ne i64 %t9, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2ffree_2eRView, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %t13, i64 %t14, i64 %t15, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4)
  br label %bb5
bb5:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 63
  %t32 = load i64, ptr %l1, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t31, i64 %t32, i64 %t33)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %lp4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/free:leaf"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i32
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i32
  %l39 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca i32
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca i32
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca i64
  %l111 = alloca ptr
  %l113 = alloca { i64, ptr }
  %l115 = alloca %"compiler/free:leaf"
  %l117 = alloca %"compiler/free:leaf"
  %l119 = alloca { i64, ptr }
  %l122 = alloca i32
  %l125 = alloca i32
  %l128 = alloca i1
  %l131 = alloca i1
  %l132 = alloca i1
  %l133 = alloca ptr
  %l136 = alloca i32
  %l137 = alloca i32
  %l142 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca i64
  %l146 = alloca i64
  %l151 = alloca %"compiler/free:leaf"
  %l153 = alloca %"compiler/free:leaf"
  %l156 = alloca i64
  %l166 = alloca i64
  %l169 = alloca i64
  %l193 = alloca ptr
  %l196 = alloca %"compiler/free:leaf"
  %l198 = alloca %"compiler/free:leaf"
  %l204 = alloca ptr
  %l205 = alloca i32
  %l206 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l208 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l26
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l26, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  store ptr %t5, ptr %l27, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l30
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l27, !tbaa !29
  %t12 = load i32, ptr %l30, !tbaa !23
  %t13 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t13, ptr %l31
  br label %bb3
bb3:
  %t14 = load i32, ptr %l31, !tbaa !23
  store i32 %t14, ptr %l3, !tbaa !23
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l32
  br label %bb4
bb4:
  %t16 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t16, ptr %lp4
  %t17 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  %t18 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %t18
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t23 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t19, i32 %t20)
  store i32 %t23, ptr %l35
  br label %bb5
bb5:
  %t24 = load i32, ptr %l35, !range !{i32 0, i32 33}
  %t26 = trunc i64 18 to i32
  %t27 = icmp eq i32 %t24, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb9
bb7:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l42
  br label %bb8
bb8:
  %t36 = load i1, ptr %l42, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l39, !tbaa !21
  br label %bb9
bb9:
  %t39 = load i1, ptr %l39, !tbaa !21
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb14
bb11:
  %t40 = load ptr, ptr %l2, !tbaa !29
  store ptr %t40, ptr %l45, !tbaa !29
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l48
  br label %bb12
bb12:
  %t46 = load ptr, ptr %l45, !tbaa !29
  %t47 = load i32, ptr %l48, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t48, ptr %l49
  br label %bb13
bb13:
  %t49 = load i32, ptr %l49, !range !{i32 0, i32 6}
  %t51 = trunc i64 0 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  store i1 %t54, ptr %l44, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l44, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = load ptr, ptr %lp4
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t57
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/free:Free", ptr %t60, i32 0, i32 19
  %t63 = load i32, ptr %l3, !tbaa !23
  %t66 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He7b3466db9a608577543dd7c0832d3d6(ptr %v0, ptr %v1, ptr %t62, i32 %t63)
  %t67 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t66, 1
  %t68 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t66, 0
  store i32 %t68, ptr %l59
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb19, label %ok.70, !prof !99
ok.70:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %l58
  br label %bb18
bb18:
  %t72 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %l58)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l61
  br label %bb21
bb19:
  br label %bb20
bb20:
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l62
  br label %bb22
bb21:
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l54
  br label %bb23
bb22:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %l54
  br label %bb23
bb23:
  %t76 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t76, ptr %lp5
  %t77 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  %t78 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t77, ptr %t78
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/free:Free", ptr %t79, i32 0, i32 19
  %t82 = load i32, ptr %l3, !tbaa !23
  %t85 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H39ca684a9144c6cba1af5dc2ea7b2e34(ptr %v0, ptr %t81, i32 %t82)
  store i1 %t85, ptr %l66
  br label %bb24
bb24:
  %t86 = load i1, ptr %l66, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %lp5
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t87
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/free:Free", ptr %t90, i32 0, i32 19
  store ptr %t92, ptr %l69, !tbaa !29
  %t93 = load i32, ptr %l3, !tbaa !23
  store i32 %t93, ptr %l70, !tbaa !23
  %t94 = load ptr, ptr %lp4
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t94
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l71
  %t97 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %s0, ptr %l71)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l73
  br label %bb28
bb28:
  %t98 = load ptr, ptr %l69, !tbaa !29
  %t99 = load i32, ptr %l70, !tbaa !23
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He39f97315596c9568e753bccdda19b63(ptr %v0, ptr %s0, ptr %t98, i32 %t99, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100)
  br label %bb29
bb29:
  %t101 = load ptr, ptr %l2, !tbaa !29
  store ptr %t101, ptr %l74, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l77
  br label %bb30
bb30:
  %t107 = load ptr, ptr %l74, !tbaa !29
  %t108 = load i32, ptr %l77, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t107, i32 %t108)
  store { i64, ptr } %t109, ptr %l78
  br label %bb31
bb31:
  %t110 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t110, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t111, 0
  store i64 %t113, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  %t116 = load i64, ptr %l7, !tbaa !24
  %t119 = icmp sgt i64 %t115, %t116
  br i1 %t119, label %bb32, label %bb33
bb32:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sgt i64 %t121, 0
  br i1 %t123, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb37
bb34:
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l7, !tbaa !24
  %t129 = sub i64 %t125, %t126
  %t130 = load i64, ptr %l9, !tbaa !24
  %t133 = add i64 %t129, %t130
  %t135 = sub i64 %t133, 1
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = sdiv i64 %t135, %t136
  store i64 %t139, ptr %l87, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb36
bb36:
  %t141 = load i64, ptr %l87, !tbaa !24
  store i64 %t141, ptr %l84, !tbaa !24
  br label %bb37
bb37:
  %t142 = load i64, ptr %l84, !tbaa !24
  store i64 %t142, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb38
bb38:
  %t143 = load i64, ptr %l11, !tbaa !24
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = icmp slt i64 %t143, %t144
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb39, label %bb40
bb39:
  br label %bb93
bb40:
  br label %bb41
bb41:
  %t151 = load i64, ptr %l7, !tbaa !24
  %t152 = load i64, ptr %l11, !tbaa !24
  %t153 = load i64, ptr %l9, !tbaa !24
  %t156 = mul i64 %t152, %t153
  %t159 = add i64 %t151, %t156
  store i64 %t159, ptr %l12, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l3, !tbaa !23
  %t163 = load i64, ptr %l12, !tbaa !24
  %t167 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t161, i32 %t162, i64 %t163)
  store i64 %t167, ptr %l108
  br label %bb42
bb42:
  %t168 = load i64, ptr %l108, !tbaa !24
  store i64 %t168, ptr %l13, !tbaa !24
  %t169 = load i64, ptr %l13, !tbaa !24
  %t171 = icmp sge i64 %t169, 0
  br i1 %t171, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s5
  %t173 = load ptr, ptr %lp4
  store ptr %t173, ptr %l111, !tbaa !29
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = mul i64 1, 8
  %t176 = call ptr @__olang_scope_alloc_zeroed(ptr %s5, i64 %t175)
  %t177 = insertvalue { i64, ptr } undef, i64 1, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  store { i64, ptr } %t178, ptr %l113, !tbaa !27
  %t180 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr i64, ptr %t181, i64 0
  store i64 %t174, ptr %t182, !tbaa !34
  %t183 = load i64, ptr %l13, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t186 = call %"compiler/free:leaf" @compiler_2ffree_3aleaf_2ector(ptr %s5, { i64, ptr } %t184, i64 %t183)
  store %"compiler/free:leaf" %t186, ptr %l115
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t188 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s5, ptr %l115)
  store %"compiler/free:leaf" %t188, ptr %l117
  br label %bb46
bb46:
  %t189 = load ptr, ptr %l111, !tbaa !29
  %t190 = load %"compiler/free:leaf", ptr %l117
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ePush_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %s5, ptr %t189, %"compiler/free:leaf" %t190)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s5)
  br label %bb92
bb48:
  %t191 = load ptr, ptr %l2, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t192, ptr %l119, !tbaa !27
  %t193 = load i64, ptr %l12, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i32, ptr %t196, i64 %t193
  %t198 = load i32, ptr %t197, !tbaa !33
  %t201 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t191, i32 %t198)
  store i32 %t201, ptr %l122
  br label %bb49
bb49:
  %t202 = load i32, ptr %l122, !tbaa !23
  store i32 %t202, ptr %l14, !tbaa !23
  %t203 = load ptr, ptr %l2, !tbaa !29
  %t204 = load i32, ptr %l14, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l125
  br label %bb50
bb50:
  %t208 = load i32, ptr %l125, !range !{i32 0, i32 33}
  %t210 = trunc i64 18 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb51, label %bb52
bb51:
  %t213 = load ptr, ptr %l2, !tbaa !29
  %t214 = load i32, ptr %l14, !tbaa !23
  %t217 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t213, i32 %t214)
  store i1 %t217, ptr %l131
  br label %bb53
bb52:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb54
bb53:
  %t218 = load i1, ptr %l131, !tbaa !21
  store i1 %t218, ptr %l128, !tbaa !21
  br label %bb54
bb54:
  %t219 = load i1, ptr %l128, !tbaa !21
  br i1 %t219, label %bb55, label %bb56
bb55:
  %t220 = load ptr, ptr %l2, !tbaa !29
  store ptr %t220, ptr %l133, !tbaa !29
  %t221 = load ptr, ptr %l2, !tbaa !29
  %t222 = load i32, ptr %l14, !tbaa !23
  %t225 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t221, i32 %t222)
  store i32 %t225, ptr %l136
  br label %bb57
bb56:
  store i1 false, ptr %l132, !tbaa !21
  br label %bb59
bb57:
  %t226 = load ptr, ptr %l133, !tbaa !29
  %t227 = load i32, ptr %l136, !tbaa !23
  %t228 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t226, i32 %t227)
  store i32 %t228, ptr %l137
  br label %bb58
bb58:
  %t229 = load i32, ptr %l137, !range !{i32 0, i32 6}
  %t231 = trunc i64 0 to i32
  %t232 = icmp eq i32 %t229, %t231
  store i1 %t232, ptr %l132, !tbaa !21
  br label %bb59
bb59:
  %t234 = load i1, ptr %l132, !tbaa !21
  br i1 %t234, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s7
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t236 = load i32, ptr %l14, !tbaa !23
  %t239 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s7, ptr %t235, i32 %t236)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l142
  br label %bb62
bb61:
  br label %bb91
bb62:
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l142
  %t241 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %t241
  store ptr %t241, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb63
bb63:
  store %olang.scope zeroinitializer, ptr %s8
  %t243 = load i64, ptr %l16, !tbaa !24
  store i64 %t243, ptr %l144, !tbaa !24
  %t244 = load ptr, ptr %l15, !tbaa !29
  %t246 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s7, ptr %t244)
  store i64 %t246, ptr %l146
  br label %bb64
bb64:
  %t247 = load i64, ptr %l144, !tbaa !24
  %t248 = load i64, ptr %l146, !tbaa !24
  %t249 = icmp slt i64 %t247, %t248
  %t251 = xor i1 %t249, true
  br i1 %t251, label %bb65, label %bb66
bb65:
  call void @__olang_scope_close(ptr %s8)
  br label %bb90
bb66:
  br label %bb67
bb67:
  %t253 = load ptr, ptr %l15, !tbaa !29
  %t254 = load i64, ptr %l16, !tbaa !24
  %t257 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s7, ptr %s7, ptr %t253, i64 %t254)
  store %"compiler/free:leaf" %t257, ptr %l151
  br label %bb68
bb68:
  %t259 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s8, ptr %l151)
  store %"compiler/free:leaf" %t259, ptr %l153
  br label %bb69
bb69:
  %t260 = load %"compiler/free:leaf", ptr %l153
  store %"compiler/free:leaf" %t260, ptr %l17
  %t261 = getelementptr %"compiler/free:leaf", ptr %l17, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t266 = add i64 %t264, 1
  store i64 %t266, ptr %l156, !tbaa !24
  %t267 = load i64, ptr %l156, !tbaa !24
  %t268 = icmp sge i64 %t267, 0
  br i1 %t268, label %bb70, label %bb71
bb70:
  %t270 = load i64, ptr %l156, !tbaa !24
  %t271 = icmp sle i64 %t270, 1152921504606846975
  br i1 %t271, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_8d4a0f6b46bd0ce9_6c774f94eb5bbfbd)
  unreachable
bb72:
  %t273 = load i64, ptr %l156, !tbaa !24
  %t274 = mul i64 %t273, 8
  %t275 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t274)
  %t276 = insertvalue { i64, ptr } undef, i64 %t273, 0
  %t277 = insertvalue { i64, ptr } %t276, ptr %t275, 1
  store { i64, ptr } %t277, ptr %l18, !tbaa !27
  %t279 = load i64, ptr %l12, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i64, ptr %t282, i64 0
  store i64 %t279, ptr %t283, !tbaa !34
  store i64 0, ptr %l19, !tbaa !24
  %t284 = getelementptr %"compiler/free:leaf", ptr %l17, i32 0, i32 0
  %t285 = load { i64, ptr }, ptr %t284, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t285, 0
  store i64 %t287, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t289 = load i64, ptr %l20, !tbaa !24
  %t290 = load i64, ptr %l19, !tbaa !24
  %t293 = icmp sgt i64 %t289, %t290
  br i1 %t293, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_8d4a0f6b46bd0ce9_6c774f94eb5bbfbd)
  unreachable
bb74:
  %t295 = load i64, ptr %l21, !tbaa !24
  %t297 = icmp sgt i64 %t295, 0
  br i1 %t297, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb79
bb76:
  %t299 = load i64, ptr %l20, !tbaa !24
  %t300 = load i64, ptr %l19, !tbaa !24
  %t303 = sub i64 %t299, %t300
  %t304 = load i64, ptr %l21, !tbaa !24
  %t307 = add i64 %t303, %t304
  %t309 = sub i64 %t307, 1
  %t310 = load i64, ptr %l21, !tbaa !24
  %t313 = sdiv i64 %t309, %t310
  store i64 %t313, ptr %l169, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l169, !tbaa !24
  br label %bb78
bb78:
  %t315 = load i64, ptr %l169, !tbaa !24
  store i64 %t315, ptr %l166, !tbaa !24
  br label %bb79
bb79:
  %t316 = load i64, ptr %l166, !tbaa !24
  store i64 %t316, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb80
bb80:
  %t317 = load i64, ptr %l23, !tbaa !24
  %t318 = load i64, ptr %l22, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  br label %bb83
bb83:
  %t325 = load i64, ptr %l19, !tbaa !24
  %t326 = load i64, ptr %l23, !tbaa !24
  %t327 = load i64, ptr %l21, !tbaa !24
  %t330 = mul i64 %t326, %t327
  %t333 = add i64 %t325, %t330
  store i64 %t333, ptr %l24, !tbaa !24
  %t335 = load i64, ptr %l24, !tbaa !24
  %t337 = add i64 %t335, 1
  %t338 = load i64, ptr %l24, !tbaa !24
  %t339 = getelementptr %"compiler/free:leaf", ptr %l17, i32 0, i32 0
  %t341 = getelementptr { i64, ptr }, ptr %t339, i32 0, i32 1
  %t342 = load ptr, ptr %t341, !tbaa !27
  %t343 = getelementptr i64, ptr %t342, i64 %t338
  %t344 = load i64, ptr %t343, !tbaa !34
  %t347 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr i64, ptr %t348, i64 %t337
  store i64 %t344, ptr %t349, !tbaa !34
  br label %bb84
bb84:
  %t350 = load i64, ptr %l23, !tbaa !24
  %t352 = add i64 %t350, 1
  store i64 %t352, ptr %l23, !tbaa !24
  br label %bb80
bb85:
  %t354 = load ptr, ptr %lp4
  store ptr %t354, ptr %l193, !tbaa !29
  %t355 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t356 = getelementptr %"compiler/free:leaf", ptr %l17, i32 0, i32 1
  %t357 = load i64, ptr %t356, !tbaa !24
  %t360 = call %"compiler/free:leaf" @compiler_2ffree_3aleaf_2ector(ptr %s8, { i64, ptr } %t355, i64 %t357)
  store %"compiler/free:leaf" %t360, ptr %l196
  br label %bb86
bb86:
  %t362 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s8, ptr %l196)
  store %"compiler/free:leaf" %t362, ptr %l198
  br label %bb87
bb87:
  %t363 = load ptr, ptr %l193, !tbaa !29
  %t364 = load %"compiler/free:leaf", ptr %l198
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ePush_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %s8, ptr %t363, %"compiler/free:leaf" %t364)
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s8)
  br label %bb89
bb89:
  %t365 = load i64, ptr %l16, !tbaa !24
  %t367 = add i64 %t365, 1
  store i64 %t367, ptr %l16, !tbaa !24
  br label %bb63
bb90:
  call void @__olang_scope_close(ptr %s7)
  br label %bb91
bb91:
  br label %bb92
bb92:
  %t369 = load i64, ptr %l11, !tbaa !24
  %t371 = add i64 %t369, 1
  store i64 %t371, ptr %l11, !tbaa !24
  br label %bb38
bb93:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"compiler/free:Free", ptr %t373, i32 0, i32 19
  store ptr %t375, ptr %l204, !tbaa !29
  %t376 = load i32, ptr %l3, !tbaa !23
  store i32 %t376, ptr %l205, !tbaa !23
  %t377 = load ptr, ptr %lp4
  %t378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t377
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t378, ptr %l206
  %t380 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %s0, ptr %l206)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t380, ptr %l208
  br label %bb94
bb94:
  %t381 = load ptr, ptr %l204, !tbaa !29
  %t382 = load i32, ptr %l205, !tbaa !23
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l208
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He39f97315596c9568e753bccdda19b63(ptr %v0, ptr %s0, ptr %t381, i32 %t382, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383)
  br label %bb95
bb95:
  %t384 = load ptr, ptr %lp4
  %t385 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t384
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t385, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2elineStart(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l10 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l27 = alloca i1
  %l28 = alloca { i64, ptr }
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 4
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t14 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v0, ptr %t10, i64 %a1)
  store { i64, ptr } %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t15, ptr %l3, !tbaa !27
  store i64 %a2, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l15, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = sub i64 %t23, 1
  %t27 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i8, ptr %t28, i64 %t25
  %t30 = load i8, ptr %t29, !tbaa !32
  %t32 = icmp ne i8 %t30, 10
  store i1 %t32, ptr %l14, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t34 = load i1, ptr %l14, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = sub i64 %t37, 1
  store i64 %t39, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  br label %bb2
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp slt i64 %t41, %t44
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t49, ptr %l28, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t50
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = icmp eq i8 %t55, 32
  br i1 %t57, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb17
bb14:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb16
bb15:
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l33, !tbaa !27
  %t60 = load i64, ptr %l4, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr i8, ptr %t63, i64 %t60
  %t65 = load i8, ptr %t64, !tbaa !32
  %t67 = icmp eq i8 %t65, 9
  store i1 %t67, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t69 = load i1, ptr %l32, !tbaa !21
  store i1 %t69, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l27, !tbaa !21
  %t71 = xor i1 %t70, true
  br i1 %t71, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l4, !tbaa !24
  br label %bb21
bb21:
  br label %bb11
bb22:
  %t77 = load i64, ptr %l4, !tbaa !24
  store i64 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2emodelled(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i32
  %l10 = alloca ptr
  %l13 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 80
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 1
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t9, i64 %a1)
  store ptr %t13, ptr %l10
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l10, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 1
  %t17 = load { i64, [2 x i64] }, ptr %t16
  store { i64, [2 x i64] } %t17, ptr %l2
  %t19 = load { i64, [2 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [2 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 3
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i32 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb11
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/free:Free", ptr %t28, i32 0, i32 82
  store ptr %t30, ptr %l18, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t31)
  store ptr %t33, ptr %l20
  br label %bb8
bb8:
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t35, i32 %t34)
  store i32 %t37, ptr %l22
  br label %bb9
bb9:
  %t38 = load i32, ptr %l22, !tbaa !23
  %t39 = sext i32 %t38 to i64
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t42 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t40, i64 %t39)
  store i1 %t42, ptr %l24
  br label %bb10
bb10:
  %t43 = load i1, ptr %l24, !tbaa !21
  %t44 = xor i1 %t43, true
  store i1 %t44, ptr %l13, !tbaa !21
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4d387e337fecd808_d73c070d6177d604)
  unreachable
bb16:
  %t46 = load i1, ptr %l13, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eparamVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, [1 x i64] }
  %l12 = alloca i32
  %l16 = alloca ptr
  %l17 = alloca i64
  %l20 = alloca i64
  %l26 = alloca i32
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l57 = alloca { i64, [1 x i64] }
  %rv = alloca i64
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l16, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %l17, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 5
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l20
  br label %bb2
bb2:
  %t15 = load i64, ptr %l17, !tbaa !24
  %t16 = load i64, ptr %l20, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 5
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t22, i64 %t23)
  store i32 %t26, ptr %l26
  br label %bb6
bb6:
  %t27 = load i32, ptr %l26, !tbaa !23
  store i32 %t27, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 6
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l29
  br label %bb7
bb7:
  %t33 = load i64, ptr %l29, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = icmp sgt i64 %t34, %t35
  br i1 %t38, label %bb8, label %bb9
bb8:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb13
bb10:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = sub i64 %t44, %t45
  %t49 = load i64, ptr %l7, !tbaa !24
  %t52 = add i64 %t48, %t49
  %t54 = sub i64 %t52, 1
  %t55 = load i64, ptr %l7, !tbaa !24
  %t58 = sdiv i64 %t54, %t55
  store i64 %t58, ptr %l36, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l36, !tbaa !24
  store i64 %t60, ptr %l33, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l33, !tbaa !24
  store i64 %t61, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = icmp slt i64 %t62, %t63
  %t68 = xor i1 %t66, true
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t70 = load i64, ptr %l5, !tbaa !24
  %t71 = load i64, ptr %l9, !tbaa !24
  %t72 = load i64, ptr %l7, !tbaa !24
  %t75 = mul i64 %t71, %t72
  %t78 = add i64 %t70, %t75
  store i64 %t78, ptr %l10, !tbaa !24
  %t80 = load ptr, ptr %l3, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t82, i64 %t83)
  store { i64, [1 x i64] } %t86, ptr %l57
  br label %bb18
bb18:
  %t87 = load { i64, [1 x i64] }, ptr %l57
  store { i64, [1 x i64] } %t87, ptr %l11
  %t88 = load { i64, [1 x i64] }, ptr %l11
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 0
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = getelementptr { i64, [1 x i64] }, ptr %l11, i32 0, i32 1
  %t94 = getelementptr { i32 }, ptr %t93, i32 0, i32 0
  %t95 = load i32, ptr %t94
  store i32 %t95, ptr %l12, !tbaa !23
  br label %bb21
bb20:
  br label %bb25
bb21:
  %t97 = load i32, ptr %l12, !tbaa !23
  %t98 = load i32, ptr %l4, !tbaa !23
  %t101 = icmp eq i32 %t97, %t98
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l10, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_bc9d64d7693be970_b83238a2b46aaa8c)
  unreachable
bb30:
  br label %bb31
bb31:
  %t105 = load i64, ptr %l9, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l9, !tbaa !24
  br label %bb14
bb32:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2epassesVar(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l18 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l54 = alloca { i64, [2 x i64] }
  %l55 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/free:Free", ptr %t9, i32 0, i32 3
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t11, i64 %a1)
  store ptr %t15, ptr %l18
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l18, !tbaa !29
  store ptr %t16, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:Free", ptr %t17, i32 0, i32 1
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t19, i64 %a3)
  store ptr %t23, ptr %l22
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l22, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 6
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l25
  br label %bb6
bb6:
  %t29 = load i64, ptr %l25, !tbaa !24
  store i64 %t29, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t30, %t31
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t36 = load i64, ptr %l7, !tbaa !24
  %t38 = icmp sgt i64 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb12
bb9:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = sub i64 %t40, %t41
  %t45 = load i64, ptr %l7, !tbaa !24
  %t48 = add i64 %t44, %t45
  %t50 = sub i64 %t48, 1
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = sdiv i64 %t50, %t51
  store i64 %t54, ptr %l32, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb11
bb11:
  %t56 = load i64, ptr %l32, !tbaa !24
  store i64 %t56, ptr %l29, !tbaa !24
  br label %bb12
bb12:
  %t57 = load i64, ptr %l29, !tbaa !24
  store i64 %t57, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb14, label %bb15
bb14:
  br label %bb23
bb15:
  br label %bb16
bb16:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = mul i64 %t67, %t68
  %t74 = add i64 %t66, %t71
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t77 = load ptr, ptr %l2, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Call", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %t79, !tbaa !23
  %t85 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %t76, i32 %t80, i64 %t74)
  store { i64, [2 x i64] } %t85, ptr %l54
  br label %bb17
bb17:
  %t86 = load { i64, [2 x i64] }, ptr %l54
  %t87 = call i1 @compiler_2ffree_2eisVar({ i64, [2 x i64] } %t86)
  store i1 %t87, ptr %l55
  br label %bb18
bb18:
  %t88 = load i1, ptr %l55, !tbaa !21
  br i1 %t88, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l9, !tbaa !24
  br label %bb13
bb23:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2epreludeCode(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l14 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esourceModule(ptr %v0, ptr %t1, i64 %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb3:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/free:Free", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 10
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l14
  br label %bb4
bb4:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = icmp sge i64 %t23, %t24
  store i1 %t25, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l8, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:Free", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/load:Loader", ptr %t35, i32 0, i32 10
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l22
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t44 = getelementptr %"compiler/load:Module", ptr %t42, i32 0, i32 2
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t45, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t47, ptr %l25
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load i1, ptr %l25, !tbaa !21
  store i1 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eresultVar(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, [1 x i64] }
  %l16 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l49 = alloca { i64, [1 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = getelementptr %"compiler/free:Free", ptr %a0, i32 0, i32 1
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  store ptr %t12, ptr %l16
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l16, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t13, i32 0, i32 6
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l18
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l18)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l20
  br label %bb5
bb5:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l2)
  store i64 %t21, ptr %l22
  br label %bb6
bb6:
  %t22 = load i64, ptr %l22, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb12
bb9:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l29, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l29, !tbaa !24
  store i64 %t49, ptr %l26, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l26, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb14, label %bb15
bb14:
  br label %bb30
bb15:
  br label %bb16
bb16:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l2, i64 %t69)
  store { i64, [1 x i64] } %t72, ptr %l49
  br label %bb17
bb17:
  %t73 = load { i64, [1 x i64] }, ptr %l49
  store { i64, [1 x i64] } %t73, ptr %l9
  %t74 = load { i64, [1 x i64] }, ptr %l9
  %t76 = extractvalue { i64, [1 x i64] } %t74, 0
  %t77 = icmp eq i64 %t76, 1
  br i1 %t77, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  %t79 = load { i64, [1 x i64] }, ptr %l9
  %t81 = extractvalue { i64, [1 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 2
  br i1 %t82, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t84 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_97a1f172ac127e68_91804f7c420b5df4)
  unreachable
bb28:
  br label %bb29
bb29:
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l7, !tbaa !24
  br label %bb13
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 38
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/free:Free", ptr %t9, i32 0, i32 38
  %t12 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t11, i64 %t12, i1 true)
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:Free", ptr %t15, i32 0, i32 40
  store i1 true, ptr %t17, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitLeaf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/free:leaf"
  %l13 = alloca i1
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca %"compiler/free:leaf"
  %l25 = alloca %"compiler/free:leaf"
  %l32 = alloca i1
  %l36 = alloca ptr
  %l39 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s3 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t3 = load ptr, ptr %l4, !tbaa !29
  %t4 = load i64, ptr %l5, !tbaa !24
  %t9 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyLeaf(ptr %v0, ptr %v1, ptr %t1, i32 %t2, ptr %t3, i64 %t4)
  store i1 %t9, ptr %l13
  br label %bb1
bb1:
  %t10 = load i1, ptr %l13, !tbaa !21
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l4, !tbaa !29
  store ptr %t12, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t14 = load i64, ptr %l7, !tbaa !24
  store i64 %t14, ptr %l16, !tbaa !24
  %t15 = load ptr, ptr %l6, !tbaa !29
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %t15)
  store i64 %t17, ptr %l18
  br label %bb6
bb6:
  %t18 = load i64, ptr %l16, !tbaa !24
  %t19 = load i64, ptr %l18, !tbaa !24
  %t20 = icmp slt i64 %t18, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t25 = load i64, ptr %l7, !tbaa !24
  %t28 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v1, ptr %v1, ptr %t24, i64 %t25)
  store %"compiler/free:leaf" %t28, ptr %l23
  br label %bb10
bb10:
  %t30 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %s3, ptr %l23)
  store %"compiler/free:leaf" %t30, ptr %l25
  br label %bb11
bb11:
  %t31 = load %"compiler/free:leaf", ptr %l25
  store %"compiler/free:leaf" %t31, ptr %l8
  %t32 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp ne i64 %t33, %t34
  br i1 %t37, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t41 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t46 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitPath(ptr %v0, ptr %s3, ptr %t39, i32 %t40, { i64, ptr } %t42, i64 0)
  store i1 %t46, ptr %l32
  br label %bb15
bb15:
  %t47 = load i1, ptr %l32, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/free:Free", ptr %t51, i32 0, i32 72
  store ptr %t53, ptr %l36, !tbaa !29
  %t58 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %a1, i64 %a2)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t58, ptr %l39
  br label %bb19
bb19:
  %t59 = getelementptr %"compiler/free:leaf", ptr %l8, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l39
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H58704f470d09c6c466fe07940700ab7b(ptr %v0, ptr %t61, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t62, { i64, ptr } %t60)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  store i1 true, ptr %rv
  br label %ret
bb21:
  %t65 = load i64, ptr %l7, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l7, !tbaa !24
  br label %bb5
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etypeModule(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
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
  %t3 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %a0)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i32, ptr %l8, !tbaa !23
  store i32 %t10, ptr %l3, !tbaa !23
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l3, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l11
  br label %bb3
bb3:
  %t16 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb5:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l18
  br label %bb6
bb6:
  %t28 = load i32, ptr %l18, !tbaa !23
  %t29 = icmp ne i32 %t28, 0
  store i1 %t29, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l15, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i64 -3, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l2, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l24
  br label %bb11
bb11:
  %t39 = load ptr, ptr %l21, !tbaa !29
  %t40 = load i32, ptr %l24, !tbaa !23
  %t41 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t41, ptr %l25
  br label %bb12
bb12:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3aletGo_2eOf(%"compiler/free:letGo" %a0, i64 %a1) #0 {
entry:
  %l0 = alloca %"compiler/free:letGo"
  %l5 = alloca i1
  %rv = alloca i1
  store %"compiler/free:letGo" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/free:letGo", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t6 = icmp eq i64 %t2, %a1
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t8 = getelementptr %"compiler/free:letGo", ptr %l0, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2ffree_2eAnyPlace, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  store i1 %t13, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l5, !tbaa !21
  store i1 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l43 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l63 = alloca i64
  %l66 = alloca i1
  %l70 = alloca ptr
  %l78 = alloca ptr
  %l82 = alloca i64
  %l89 = alloca { i64, ptr }
  %l96 = alloca i64
  %l99 = alloca i1
  %l107 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca i1
  %l123 = alloca i1
  %l125 = alloca i1
  %l130 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l141 = alloca i1
  %l142 = alloca ptr
  %l150 = alloca i1
  %l161 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l179 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i1
  %l197 = alloca i1
  %l198 = alloca ptr
  %l199 = alloca i1
  %l208 = alloca i1
  %l209 = alloca i1
  %l211 = alloca { i64, ptr }
  %l215 = alloca i1
  %s4 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:mustW", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l26
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l26, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t10, 8
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t16 = load ptr, ptr %l30, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l30, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l31, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l31, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t25 = load ptr, ptr %l34, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l34, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l35, !tbaa !21
  br label %bb10
bb10:
  %t32 = load i1, ptr %l35, !tbaa !21
  br i1 %t32, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t35 = load ptr, ptr %l39, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb15, label %bb16
bb15:
  %t38 = load ptr, ptr %l39, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 18}
  %t41 = icmp eq i64 %t39, 5
  store i1 %t41, ptr %l40, !tbaa !21
  br label %bb16
bb16:
  %t42 = load i1, ptr %l40, !tbaa !21
  br i1 %t42, label %bb17, label %bb18
bb17:
  br label %bb31
bb18:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t44 = load ptr, ptr %l43, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l43, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 18}
  %t50 = icmp eq i64 %t48, 7
  store i1 %t50, ptr %l44, !tbaa !21
  br label %bb20
bb20:
  %t51 = load i1, ptr %l44, !tbaa !21
  br i1 %t51, label %bb21, label %bb22
bb21:
  br label %bb31
bb22:
  %t52 = load ptr, ptr %l1, !tbaa !29
  store ptr %t52, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t53 = load ptr, ptr %l47, !tbaa !29
  %t54 = icmp ne ptr %t53, null
  br i1 %t54, label %bb23, label %bb24
bb23:
  %t56 = load ptr, ptr %l47, !tbaa !29
  %t57 = load i64, ptr %t56, !range !{i64 0, i64 18}
  %t59 = icmp eq i64 %t57, 16
  store i1 %t59, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  %t60 = load i1, ptr %l48, !tbaa !21
  br i1 %t60, label %bb25, label %bb26
bb25:
  br label %bb31
bb26:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t62 = load ptr, ptr %l51, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb27, label %bb28
bb27:
  %t65 = load ptr, ptr %l51, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 8
  store i1 %t68, ptr %l52, !tbaa !21
  br label %bb28
bb28:
  %t69 = load i1, ptr %l52, !tbaa !21
  br i1 %t69, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 true, ptr %rv
  br label %ret
bb32:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t72 = load ptr, ptr %l56, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb33, label %bb34
bb33:
  %t75 = load ptr, ptr %l56, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 18}
  %t78 = icmp eq i64 %t76, 6
  store i1 %t78, ptr %l57, !tbaa !21
  br label %bb34
bb34:
  %t79 = load i1, ptr %l57, !tbaa !21
  br i1 %t79, label %bb35, label %bb36
bb35:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l5, !tbaa !29
  br label %bb37
bb36:
  br label %bb63
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t86 = load ptr, ptr %l5, !tbaa !29
  %t88 = call i64 @compiler_2ftyped_2eCalleeBody(ptr %v1, ptr %t86)
  store i64 %t88, ptr %l63
  br label %bb38
bb38:
  %t89 = load i64, ptr %l63, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb42
bb40:
  %t94 = load ptr, ptr %l3, !tbaa !29
  %t96 = getelementptr %"compiler/free:Free", ptr %t94, i32 0, i32 1
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l70
  br label %bb41
bb41:
  %t101 = load ptr, ptr %l70, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Body", ptr %t101, i32 0, i32 11
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  store i1 %t106, ptr %l66, !tbaa !21
  br label %bb42
bb42:
  %t108 = load i1, ptr %l66, !tbaa !21
  br i1 %t108, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t112 = getelementptr %"compiler/free:Free", ptr %t110, i32 0, i32 1
  %t113 = load i64, ptr %l6, !tbaa !24
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t112, i64 %t113)
  store ptr %t116, ptr %l78
  br label %bb46
bb46:
  %t117 = load ptr, ptr %l78, !tbaa !29
  store ptr %t117, ptr %l7, !tbaa !29
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Body", ptr %t119, i32 0, i32 2
  %t122 = load i32, ptr %t121, !tbaa !23
  %t125 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t118, i32 %t122)
  store i64 %t125, ptr %l82
  br label %bb47
bb47:
  %t126 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t127 = load i64, ptr %l82, !tbaa !24
  %t129 = icmp eq i64 %t127, %t126
  br i1 %t129, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s4)
  store i1 true, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t132 = load ptr, ptr %l4, !tbaa !29
  %t133 = load ptr, ptr %l7, !tbaa !29
  %t135 = getelementptr %"compiler/typed:Body", ptr %t133, i32 0, i32 2
  %t136 = load i32, ptr %t135, !tbaa !23
  %t139 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s4, ptr %t132, i32 %t136)
  store { i64, ptr } %t139, ptr %l89
  br label %bb51
bb51:
  %t140 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t143 = icmp ne i64 %t141, 1
  br i1 %t143, label %bb52, label %bb53
bb52:
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t146 = load ptr, ptr %l4, !tbaa !29
  %t147 = load ptr, ptr %l7, !tbaa !29
  %t149 = getelementptr %"compiler/typed:Body", ptr %t147, i32 0, i32 2
  %t150 = load i32, ptr %t149, !tbaa !23
  %t153 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t146, i32 %t150, i64 0)
  store i64 %t153, ptr %l96
  br label %bb55
bb55:
  %t154 = load i64, ptr %l96, !tbaa !24
  store i64 %t154, ptr %l8, !tbaa !24
  %t155 = load i64, ptr %l8, !tbaa !24
  %t157 = icmp sge i64 %t155, 0
  br i1 %t157, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb58
bb57:
  %t159 = load i64, ptr %l8, !tbaa !24
  %t160 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t163 = icmp eq i64 %t159, %t160
  store i1 %t163, ptr %l99, !tbaa !21
  br label %bb58
bb58:
  %t165 = load i1, ptr %l99, !tbaa !21
  br i1 %t165, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s4)
  store i1 false, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t167 = load ptr, ptr %l3, !tbaa !29
  %t169 = getelementptr %"compiler/free:Free", ptr %t167, i32 0, i32 37
  %t170 = load i64, ptr %l6, !tbaa !24
  %t173 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t169, i64 %t170)
  store i1 %t173, ptr %l107
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s4)
  %t174 = load i1, ptr %l107, !tbaa !21
  store i1 %t174, ptr %rv
  br label %ret
bb63:
  %t175 = load ptr, ptr %l1, !tbaa !29
  store ptr %t175, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t176 = load ptr, ptr %l108, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb64, label %bb65
bb64:
  %t179 = load ptr, ptr %l108, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 18}
  %t182 = icmp eq i64 %t180, 2
  store i1 %t182, ptr %l109, !tbaa !21
  br label %bb65
bb65:
  %t183 = load i1, ptr %l109, !tbaa !21
  br i1 %t183, label %bb66, label %bb67
bb66:
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = getelementptr { i64, [5 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t186, i32 0, i32 2
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l9, !tbaa !29
  br label %bb68
bb67:
  br label %bb84
bb68:
  %t190 = load ptr, ptr %l9, !tbaa !29
  store ptr %t190, ptr %l114, !tbaa !29
  store i1 false, ptr %l115, !tbaa !21
  %t191 = load ptr, ptr %l114, !tbaa !29
  %t192 = icmp ne ptr %t191, null
  br i1 %t192, label %bb69, label %bb70
bb69:
  %t194 = load ptr, ptr %l114, !tbaa !29
  %t195 = load i64, ptr %t194, !range !{i64 0, i64 8}
  %t197 = icmp eq i64 %t195, 0
  store i1 %t197, ptr %l115, !tbaa !21
  br label %bb70
bb70:
  %t198 = load i1, ptr %l115, !tbaa !21
  br i1 %t198, label %bb71, label %bb72
bb71:
  %t199 = load ptr, ptr %l9, !tbaa !29
  %t201 = getelementptr { i64, [4 x i64] }, ptr %t199, i32 0, i32 1
  %t202 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t201, i32 0, i32 2
  %t203 = load i32, ptr %t202
  store i32 %t203, ptr %l10, !tbaa !23
  br label %bb73
bb72:
  br label %bb79
bb73:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l10, !tbaa !23
  %t208 = sext i32 %t206 to i64
  %t211 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %t205, i64 %t208)
  store i1 %t211, ptr %l123
  br label %bb74
bb74:
  %t212 = load i1, ptr %l123, !tbaa !21
  %t213 = xor i1 %t212, true
  br i1 %t213, label %bb75, label %bb76
bb75:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i32, ptr %l10, !tbaa !23
  %t218 = sext i32 %t216 to i64
  %t219 = load i64, ptr %l2, !tbaa !24
  %t223 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eassignedFresh(ptr %v0, ptr %t215, i64 %t218, i64 %t219)
  store i1 %t223, ptr %l130
  br label %bb77
bb76:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb78
bb77:
  %t224 = load i1, ptr %l130, !tbaa !21
  store i1 %t224, ptr %l125, !tbaa !21
  br label %bb78
bb78:
  %t225 = load i1, ptr %l125, !tbaa !21
  store i1 %t225, ptr %rv
  br label %ret
bb79:
  br i1 true, label %bb80, label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb83
bb82:
  store i1 false, ptr %rv
  br label %ret
bb83:
  call void @__olang_check_failed(ptr @olang_loc_7a954698926d7de_664d4c02e090fa22)
  unreachable
bb84:
  %t227 = load ptr, ptr %l1, !tbaa !29
  store ptr %t227, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t228 = load ptr, ptr %l132, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb85, label %bb86
bb85:
  %t231 = load ptr, ptr %l132, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 18}
  %t234 = icmp eq i64 %t232, 14
  store i1 %t234, ptr %l133, !tbaa !21
  br label %bb86
bb86:
  %t235 = load i1, ptr %l133, !tbaa !21
  br i1 %t235, label %bb87, label %bb88
bb87:
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr { i64, [5 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t238, i32 0, i32 2
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l11, !tbaa !29
  br label %bb89
bb88:
  br label %bb116
bb89:
  %t242 = load ptr, ptr %l11, !tbaa !29
  %t244 = getelementptr %"compiler/typed:Try", ptr %t242, i32 0, i32 0
  %t245 = load ptr, ptr %t244, !tbaa !29
  %t247 = icmp eq ptr %t245, null
  br i1 %t247, label %bb90, label %bb91
bb90:
  store i1 true, ptr %l141, !tbaa !21
  br label %bb96
bb91:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l142, !tbaa !29
  %t250 = load ptr, ptr %l11, !tbaa !29
  %t252 = getelementptr %"compiler/typed:Try", ptr %t250, i32 0, i32 0
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = icmp eq ptr %t253, null
  br i1 %t255, label %bb92, label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_893474d063c17328_1c44af56cc3f848c)
  unreachable
bb93:
  br label %bb94
bb94:
  %t257 = load ptr, ptr %l11, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Try", ptr %t257, i32 0, i32 0
  %t260 = load ptr, ptr %t259, !tbaa !29
  %t261 = load i64, ptr %l2, !tbaa !24
  %t263 = add i64 %t261, 1
  %t264 = load ptr, ptr %l142, !tbaa !29
  %t267 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %t264, ptr %t260, i64 %t263)
  store i1 %t267, ptr %l150
  br label %bb95
bb95:
  %t268 = load i1, ptr %l150, !tbaa !21
  %t269 = xor i1 %t268, true
  store i1 %t269, ptr %l141, !tbaa !21
  br label %bb96
bb96:
  %t271 = load i1, ptr %l141, !tbaa !21
  br i1 %t271, label %bb97, label %bb98
bb97:
  store i1 false, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t273 = load ptr, ptr %l11, !tbaa !29
  %t275 = getelementptr %"compiler/typed:Try", ptr %t273, i32 0, i32 1
  %t276 = load { i64, ptr }, ptr %t275, !tbaa !27
  store { i64, ptr } %t276, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t278 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t278, 0
  store i64 %t280, ptr %l14, !tbaa !24
  br label %bb100
bb100:
  %t282 = load i64, ptr %l13, !tbaa !24
  %t283 = load i64, ptr %l14, !tbaa !24
  %t286 = icmp slt i64 %t282, %t283
  %t288 = xor i1 %t286, true
  br i1 %t288, label %bb101, label %bb102
bb101:
  br label %bb115
bb102:
  br label %bb103
bb103:
  %t290 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t290, ptr %l161, !tbaa !27
  %t291 = load i64, ptr %l13, !tbaa !24
  %t293 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr ptr, ptr %t294, i64 %t291
  %t296 = load ptr, ptr %t295, !tbaa !39
  %t300 = getelementptr %"compiler/typed:Clause", ptr %t296, i32 0, i32 4
  %t301 = load { i64, ptr }, ptr %t300, !tbaa !27
  store { i64, ptr } %t301, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t303 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t303, 0
  store i64 %t305, ptr %l18, !tbaa !24
  br label %bb104
bb104:
  %t307 = load i64, ptr %l17, !tbaa !24
  %t308 = load i64, ptr %l18, !tbaa !24
  %t311 = icmp slt i64 %t307, %t308
  %t313 = xor i1 %t311, true
  br i1 %t313, label %bb105, label %bb106
bb105:
  br label %bb113
bb106:
  br label %bb107
bb107:
  %t315 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t315, ptr %l172, !tbaa !27
  %t316 = load i64, ptr %l17, !tbaa !24
  %t318 = getelementptr { i64, ptr }, ptr %l172, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr ptr, ptr %t319, i64 %t316
  %t321 = load ptr, ptr %t320, !tbaa !39
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i64, ptr %l2, !tbaa !24
  %t327 = add i64 %t325, 1
  %t331 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %t323, ptr %t321, i64 %t327)
  store i1 %t331, ptr %l179
  br label %bb108
bb108:
  %t332 = load i1, ptr %l179, !tbaa !21
  %t333 = xor i1 %t332, true
  br i1 %t333, label %bb109, label %bb110
bb109:
  store i1 false, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  br label %bb112
bb112:
  %t336 = load i64, ptr %l17, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l17, !tbaa !24
  br label %bb104
bb113:
  br label %bb114
bb114:
  %t340 = load i64, ptr %l13, !tbaa !24
  %t342 = add i64 %t340, 1
  store i64 %t342, ptr %l13, !tbaa !24
  br label %bb100
bb115:
  store i1 true, ptr %rv
  br label %ret
bb116:
  %t345 = load ptr, ptr %l1, !tbaa !29
  store ptr %t345, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t346 = load ptr, ptr %l187, !tbaa !29
  %t347 = icmp ne ptr %t346, null
  br i1 %t347, label %bb117, label %bb118
bb117:
  %t349 = load ptr, ptr %l187, !tbaa !29
  %t350 = load i64, ptr %t349, !range !{i64 0, i64 18}
  %t352 = icmp eq i64 %t350, 17
  store i1 %t352, ptr %l188, !tbaa !21
  br label %bb118
bb118:
  %t353 = load i1, ptr %l188, !tbaa !21
  br i1 %t353, label %bb119, label %bb120
bb119:
  %t354 = load ptr, ptr %l1, !tbaa !29
  %t356 = getelementptr { i64, [5 x i64] }, ptr %t354, i32 0, i32 1
  %t357 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t356, i32 0, i32 2
  %t358 = load ptr, ptr %t357
  store ptr %t358, ptr %l20, !tbaa !29
  br label %bb121
bb120:
  br label %bb123
bb121:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load ptr, ptr %l20, !tbaa !29
  %t362 = load i64, ptr %l2, !tbaa !24
  %t364 = add i64 %t362, 1
  %t368 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %t360, ptr %t361, i64 %t364)
  store i1 %t368, ptr %l197
  br label %bb122
bb122:
  %t369 = load i1, ptr %l197, !tbaa !21
  store i1 %t369, ptr %rv
  br label %ret
bb123:
  %t370 = load ptr, ptr %l1, !tbaa !29
  store ptr %t370, ptr %l198, !tbaa !29
  store i1 false, ptr %l199, !tbaa !21
  %t371 = load ptr, ptr %l198, !tbaa !29
  %t372 = icmp ne ptr %t371, null
  br i1 %t372, label %bb124, label %bb125
bb124:
  %t374 = load ptr, ptr %l198, !tbaa !29
  %t375 = load i64, ptr %t374, !range !{i64 0, i64 18}
  %t377 = icmp eq i64 %t375, 9
  store i1 %t377, ptr %l199, !tbaa !21
  br label %bb125
bb125:
  %t378 = load i1, ptr %l199, !tbaa !21
  br i1 %t378, label %bb126, label %bb127
bb126:
  %t379 = load ptr, ptr %l1, !tbaa !29
  %t381 = getelementptr { i64, [5 x i64] }, ptr %t379, i32 0, i32 1
  %t382 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t381, i32 0, i32 2
  %t383 = load i32, ptr %t382, !range !{i32 0, i32 52}
  store i32 %t383, ptr %l21
  %t385 = load ptr, ptr %l1, !tbaa !29
  %t387 = getelementptr { i64, [5 x i64] }, ptr %t385, i32 0, i32 1
  %t388 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t387, i32 0, i32 4
  %t389 = load { i64, ptr }, ptr %t388
  store { i64, ptr } %t389, ptr %l22, !tbaa !27
  br label %bb128
bb127:
  br label %bb134
bb128:
  %t391 = load i32, ptr %l21, !range !{i32 0, i32 52}
  %t392 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t395 = call i1 @compiler_2ffree_2eisConversion(ptr %v1, i32 %t391, { i64, ptr } %t392)
  store i1 %t395, ptr %l208
  br label %bb129
bb129:
  %t396 = load i1, ptr %l208, !tbaa !21
  br i1 %t396, label %bb130, label %bb131
bb130:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t398, ptr %l211, !tbaa !27
  %t399 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr ptr, ptr %t400, i64 0
  %t402 = load ptr, ptr %t401, !tbaa !39
  %t403 = load i64, ptr %l2, !tbaa !24
  %t405 = add i64 %t403, 1
  %t409 = call i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2efresh(ptr %v0, ptr %v1, ptr %t397, ptr %t402, i64 %t405)
  store i1 %t409, ptr %l215
  br label %bb132
bb131:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb133
bb132:
  %t410 = load i1, ptr %l215, !tbaa !21
  store i1 %t410, ptr %l209, !tbaa !21
  br label %bb133
bb133:
  %t411 = load i1, ptr %l209, !tbaa !21
  store i1 %t411, ptr %rv
  br label %ret
bb134:
  br i1 true, label %bb135, label %bb136
bb135:
  br label %bb137
bb136:
  br label %bb138
bb137:
  store i1 false, ptr %rv
  br label %ret
bb138:
  call void @__olang_check_failed(ptr @olang_loc_a532406d51285a24_27441d0f137c6648)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eplaceMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/free:mustW", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l2, !tbaa !23
  %t21 = sext i32 %t19 to i64
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t21)
  store i64 %t24, ptr %l14
  br label %bb6
bb6:
  %t25 = load i64, ptr %l14, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9be7a7b731d47dfc_cd79088c97deb358)
  unreachable
bb12:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:mustW", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t33 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t29, ptr %t30)
  store i64 %t33, ptr %l18
  br label %bb13
bb13:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load i64, ptr %l3, !tbaa !24
  store i64 %t39, ptr %l21, !tbaa !24
  br label %bb16
bb15:
  %t41 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t41, ptr %l21, !tbaa !24
  br label %bb16
bb16:
  %t43 = load i64, ptr %l21, !tbaa !24
  store i64 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2etryMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca ptr
  %l21 = alloca i64
  %l30 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Try", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l15, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Try", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = icmp eq ptr %t14, null
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_1777536395e8cd8b_97ff53b4c3030f1f)
  unreachable
bb5:
  br label %bb6
bb6:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Try", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t24 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %t22, ptr %t21)
  store i64 %t24, ptr %l21
  br label %bb7
bb7:
  %t25 = load i64, ptr %l21, !tbaa !24
  store i64 %t25, ptr %l2, !tbaa !24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Try", ptr %t26, i32 0, i32 1
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t43 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t43, ptr %l30, !tbaa !27
  %t44 = load i64, ptr %l4, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr ptr, ptr %t47, i64 %t44
  %t49 = load ptr, ptr %t48, !tbaa !39
  %t53 = getelementptr %"compiler/typed:Clause", ptr %t49, i32 0, i32 4
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  store { i64, ptr } %t54, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t56 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  store i64 %t58, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l8, !tbaa !24
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t68 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t68, ptr %l41, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t76 = load i64, ptr %l2, !tbaa !24
  store i64 %t76, ptr %l44, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t81 = call i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %t77, ptr %t74)
  store i64 %t81, ptr %l47
  br label %bb16
bb16:
  %t82 = load i64, ptr %l44, !tbaa !24
  %t83 = load i64, ptr %l47, !tbaa !24
  %t84 = call i64 @compiler_2ffree_2emeet(i64 %t82, i64 %t83)
  store i64 %t84, ptr %l48
  br label %bb17
bb17:
  %t85 = load i64, ptr %l48, !tbaa !24
  store i64 %t85, ptr %l2, !tbaa !24
  br label %bb18
bb18:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l8, !tbaa !24
  br label %bb12
bb19:
  br label %bb20
bb20:
  %t90 = load i64, ptr %l4, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l4, !tbaa !24
  br label %bb8
bb21:
  %t94 = load i64, ptr %l2, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i64
  %l67 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca ptr
  %l74 = alloca i1
  %l84 = alloca ptr
  %l88 = alloca i1
  %l91 = alloca i1
  %l99 = alloca ptr
  %l102 = alloca i64
  %l106 = alloca i1
  %l108 = alloca i1
  %l112 = alloca i1
  %l113 = alloca i1
  %l119 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca ptr
  %l139 = alloca i1
  %l148 = alloca ptr
  %l149 = alloca i1
  %l152 = alloca ptr
  %l153 = alloca i1
  %l161 = alloca ptr
  %l165 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l170 = alloca i1
  %l172 = alloca i1
  %l174 = alloca i1
  %l176 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l183 = alloca i64
  %l186 = alloca i64
  %l205 = alloca { i64, ptr }
  %l210 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l213 = alloca i1
  %l216 = alloca i1
  %l220 = alloca i64
  %l223 = alloca i64
  %l224 = alloca ptr
  %l226 = alloca i32
  %l227 = alloca i1
  %l230 = alloca i1
  %l233 = alloca i1
  %l239 = alloca ptr
  %l249 = alloca %"compiler/free:feedCall"
  %l251 = alloca ptr
  %l252 = alloca ptr
  %l255 = alloca i64
  %l260 = alloca %"compiler/free:feed"
  %l263 = alloca ptr
  %l264 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l266 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i1
  %l272 = alloca i1
  %l276 = alloca ptr
  %l281 = alloca i64
  %l282 = alloca i64
  %l285 = alloca i1
  %l288 = alloca i1
  %l291 = alloca i64
  %l293 = alloca i1
  %l299 = alloca i1
  %l301 = alloca i1
  %l305 = alloca ptr
  %l311 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l314 = alloca i1
  %l316 = alloca i1
  %l319 = alloca i64
  %l321 = alloca i1
  %l324 = alloca i1
  %l336 = alloca i1
  %l341 = alloca i1
  %l343 = alloca i64
  %l345 = alloca i64
  %l350 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l352 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l355 = alloca i64
  %l362 = alloca ptr
  %l363 = alloca i64
  %l364 = alloca ptr
  %l365 = alloca i64
  %l368 = alloca i64
  %l371 = alloca ptr
  %l372 = alloca i64
  %l376 = alloca i64
  %l384 = alloca ptr
  %l388 = alloca ptr
  %l391 = alloca i64
  %l397 = alloca ptr
  %l398 = alloca i64
  %l399 = alloca ptr
  %l400 = alloca i64
  %l403 = alloca i64
  %l406 = alloca ptr
  %l407 = alloca i64
  %l411 = alloca i64
  %l418 = alloca i64
  %l420 = alloca i64
  %l425 = alloca i1
  %l426 = alloca ptr
  %l427 = alloca i64
  %l429 = alloca { i64, ptr }
  %l431 = alloca ptr
  %l434 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l436 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l446 = alloca ptr
  %l447 = alloca i64
  %l448 = alloca ptr
  %l449 = alloca i64
  %l452 = alloca i64
  %l455 = alloca ptr
  %l456 = alloca i64
  %l460 = alloca i64
  %l461 = alloca i64
  %l463 = alloca i64
  %l465 = alloca ptr
  %l467 = alloca { i64, ptr }
  %l469 = alloca ptr
  %l472 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l474 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l482 = alloca ptr
  %l483 = alloca i64
  %l484 = alloca ptr
  %l485 = alloca i64
  %l488 = alloca i64
  %l491 = alloca ptr
  %l492 = alloca i64
  %l496 = alloca i64
  %l497 = alloca i64
  %l499 = alloca i64
  %l501 = alloca ptr
  %l504 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l506 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l514 = alloca ptr
  %l515 = alloca i64
  %l516 = alloca ptr
  %l517 = alloca i64
  %l520 = alloca i64
  %l523 = alloca ptr
  %l524 = alloca i64
  %l528 = alloca i64
  %l529 = alloca i64
  %l531 = alloca i64
  %l533 = alloca ptr
  %l534 = alloca ptr
  %l537 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l539 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l541 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l549 = alloca i1
  %l557 = alloca ptr
  %l558 = alloca i64
  %l559 = alloca ptr
  %l560 = alloca i64
  %l563 = alloca i64
  %l566 = alloca ptr
  %l567 = alloca i64
  %l571 = alloca i64
  %l572 = alloca ptr
  %l573 = alloca i64
  %l574 = alloca i64
  %l575 = alloca %"compiler/source:Span"
  %l577 = alloca %"compiler/source:Span"
  %l583 = alloca i1
  %l590 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l592 = alloca i64
  %l594 = alloca i64
  %l599 = alloca i64
  %l601 = alloca i64
  %l612 = alloca i64
  %l614 = alloca i64
  %l619 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l621 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l624 = alloca i64
  %l632 = alloca ptr
  %l634 = alloca i64
  %l635 = alloca i64
  %l645 = alloca { i64, ptr }
  %l649 = alloca ptr
  %l651 = alloca ptr
  %l653 = alloca i32
  %l654 = alloca i32
  %l655 = alloca i32
  %l666 = alloca i64
  %l668 = alloca i64
  %l673 = alloca i64
  %l682 = alloca ptr
  %l685 = alloca i64
  %l689 = alloca ptr
  %l690 = alloca i64
  %l692 = alloca i1
  %l696 = alloca i1
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s54 = alloca %olang.scope
  %s55 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l70
  br label %bb1
bb1:
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t7, ptr %lp5
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  %t9 = load ptr, ptr %lp5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %t9
  store i64 -1, ptr %l6, !tbaa !24
  store i1 true, ptr %l7, !tbaa !21
  store i1 false, ptr %l8, !tbaa !21
  store i1 false, ptr %l9, !tbaa !21
  store i1 false, ptr %l10, !tbaa !21
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Call", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l11, !tbaa !29
  %t15 = load ptr, ptr %l11, !tbaa !29
  store ptr %t15, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t16 = load ptr, ptr %l73, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb2, label %bb3
bb2:
  %t19 = load ptr, ptr %l73, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 5}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l74, !tbaa !21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l74, !tbaa !21
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t26 = getelementptr { i64, [3 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { i32 }, ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l12, !tbaa !23
  br label %bb6
bb5:
  br label %bb32
bb6:
  %t30 = load i32, ptr %l12, !tbaa !23
  %t32 = sext i32 %t30 to i64
  store i64 %t32, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = getelementptr %"compiler/free:Free", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l84
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l84, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 11
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = icmp eq ptr %t44, null
  br i1 %t46, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisCase(ptr %v0, ptr %t48, i64 %t49)
  store i1 %t52, ptr %l91
  br label %bb10
bb9:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb11
bb10:
  %t53 = load i1, ptr %l91, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l88, !tbaa !21
  br label %bb11
bb11:
  %t56 = load i1, ptr %l88, !tbaa !21
  store i1 %t56, ptr %l7, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/free:walker", ptr %t57, i32 0, i32 2
  %t60 = load i1, ptr %t59, !tbaa !21
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb12, label %bb13
bb12:
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = getelementptr %"compiler/free:Free", ptr %t64, i32 0, i32 60
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t66, i64 %t67)
  store ptr %t70, ptr %l99
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/free:walker", ptr %t71, i32 0, i32 1
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = load ptr, ptr %l99, !tbaa !29
  %t77 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t75, i64 %t74)
  store i64 %t77, ptr %l102
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/free:walker", ptr %t78, i32 0, i32 2
  %t81 = load i1, ptr %t80, !tbaa !21
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb17, label %bb18
bb17:
  %t85 = load i1, ptr %l7, !tbaa !21
  br i1 %t85, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb23
bb19:
  store i1 true, ptr %l108, !tbaa !21
  br label %bb22
bb20:
  %t87 = load ptr, ptr %l4, !tbaa !29
  %t89 = getelementptr %"compiler/free:Free", ptr %t87, i32 0, i32 38
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t89, i64 %t90)
  store i1 %t93, ptr %l112
  br label %bb21
bb21:
  %t94 = load i1, ptr %l112, !tbaa !21
  store i1 %t94, ptr %l108, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l108, !tbaa !21
  store i1 %t95, ptr %l106, !tbaa !21
  br label %bb23
bb23:
  %t96 = load i1, ptr %l106, !tbaa !21
  br i1 %t96, label %bb24, label %bb25
bb24:
  %t97 = load ptr, ptr %l4, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/free:walker", ptr %t98, i32 0, i32 1
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t108 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2epassesVar(ptr %v0, ptr %v1, ptr %t97, i64 %t101, ptr %t102, i64 %t103)
  store i1 %t108, ptr %l119
  br label %bb26
bb25:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb27
bb26:
  %t109 = load i1, ptr %l119, !tbaa !21
  store i1 %t109, ptr %l113, !tbaa !21
  br label %bb27
bb27:
  %t110 = load i1, ptr %l113, !tbaa !21
  br i1 %t110, label %bb28, label %bb29
bb28:
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/free:walker", ptr %t112, i32 0, i32 1
  %t115 = load i64, ptr %t114, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t111, i64 %t115)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb77
bb32:
  %t118 = load ptr, ptr %l11, !tbaa !29
  store ptr %t118, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t119 = load ptr, ptr %l123, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb33, label %bb34
bb33:
  %t122 = load ptr, ptr %l123, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 5}
  %t125 = icmp eq i64 %t123, 2
  store i1 %t125, ptr %l124, !tbaa !21
  br label %bb34
bb34:
  %t126 = load i1, ptr %l124, !tbaa !21
  br i1 %t126, label %bb35, label %bb36
bb35:
  %t127 = load ptr, ptr %l11, !tbaa !29
  %t129 = getelementptr { i64, [3 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { ptr }, ptr %t129, i32 0, i32 0
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l13, !tbaa !29
  br label %bb37
bb36:
  br label %bb43
bb37:
  store %olang.scope zeroinitializer, ptr %s4
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l13, !tbaa !29
  %t137 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s4, ptr %t133, ptr %t134)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l131
  br label %bb38
bb38:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/free:walker", ptr %t138, i32 0, i32 2
  %t141 = load i1, ptr %t140, !tbaa !21
  %t143 = xor i1 %t141, true
  br i1 %t143, label %bb39, label %bb40
bb39:
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/free:walker", ptr %t146, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t145, i64 %t149)
  br label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb77
bb43:
  %t152 = load ptr, ptr %l11, !tbaa !29
  store ptr %t152, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t153 = load ptr, ptr %l138, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb44, label %bb45
bb44:
  %t156 = load ptr, ptr %l138, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 5}
  %t159 = icmp eq i64 %t157, 3
  store i1 %t159, ptr %l139, !tbaa !21
  br label %bb45
bb45:
  %t160 = load i1, ptr %l139, !tbaa !21
  br i1 %t160, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb53
bb48:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/free:walker", ptr %t161, i32 0, i32 2
  %t164 = load i1, ptr %t163, !tbaa !21
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb49, label %bb50
bb49:
  %t168 = load ptr, ptr %l4, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:walker", ptr %t169, i32 0, i32 1
  %t172 = load i64, ptr %t171, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2esetRegOut(ptr %v0, ptr %t168, i64 %t172)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb77
bb53:
  %t175 = load ptr, ptr %l11, !tbaa !29
  store ptr %t175, ptr %l148, !tbaa !29
  store i1 false, ptr %l149, !tbaa !21
  %t176 = load ptr, ptr %l148, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb54, label %bb55
bb54:
  %t179 = load ptr, ptr %l148, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 5}
  %t182 = icmp eq i64 %t180, 4
  store i1 %t182, ptr %l149, !tbaa !21
  br label %bb55
bb55:
  %t183 = load i1, ptr %l149, !tbaa !21
  br i1 %t183, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb77
bb59:
  %t184 = load ptr, ptr %l11, !tbaa !29
  store ptr %t184, ptr %l152, !tbaa !29
  store i1 false, ptr %l153, !tbaa !21
  %t185 = load ptr, ptr %l152, !tbaa !29
  %t186 = icmp ne ptr %t185, null
  br i1 %t186, label %bb60, label %bb61
bb60:
  %t188 = load ptr, ptr %l152, !tbaa !29
  %t189 = load i64, ptr %t188, !range !{i64 0, i64 5}
  %t191 = icmp eq i64 %t189, 1
  store i1 %t191, ptr %l153, !tbaa !21
  br label %bb61
bb61:
  %t192 = load i1, ptr %l153, !tbaa !21
  br i1 %t192, label %bb62, label %bb63
bb62:
  %t193 = load ptr, ptr %l11, !tbaa !29
  %t195 = getelementptr { i64, [3 x i64] }, ptr %t193, i32 0, i32 1
  %t196 = getelementptr { i64 }, ptr %t195, i32 0, i32 0
  %t197 = load i64, ptr %t196
  store i64 %t197, ptr %l14, !tbaa !24
  br label %bb64
bb63:
  br label %bb72
bb64:
  store %olang.scope zeroinitializer, ptr %s9
  store i1 true, ptr %l9, !tbaa !21
  %t199 = load ptr, ptr %l4, !tbaa !29
  %t201 = getelementptr %"compiler/free:Free", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 0
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/load:Loader", ptr %t205, i32 0, i32 3
  %t208 = load ptr, ptr %t207, !tbaa !29
  store ptr %t208, ptr %l161, !tbaa !29
  %t209 = load ptr, ptr %l4, !tbaa !29
  %t211 = getelementptr %"compiler/free:Free", ptr %t209, i32 0, i32 0
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t213 = load i64, ptr %l14, !tbaa !24
  %t216 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s9, ptr %t212, i64 %t213)
  store ptr %t216, ptr %l165
  br label %bb65
bb65:
  %t217 = load ptr, ptr %l165, !tbaa !29
  %t219 = getelementptr %"compiler/ast:Func", ptr %t217, i32 0, i32 2
  %t220 = load i32, ptr %t219, !tbaa !23
  %t221 = load ptr, ptr %l161, !tbaa !29
  %t223 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t221, i32 %t220)
  store { i64, ptr } %t223, ptr %l168
  br label %bb66
bb66:
  %t224 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t224, ptr %l15, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s9, { i64, ptr } %t225, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t227, ptr %l170
  br label %bb67
bb67:
  %t228 = load i1, ptr %l170, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb68, label %bb69
bb68:
  %t231 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t233 = call i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %t231)
  store i1 %t233, ptr %l174
  br label %bb70
bb69:
  store i1 false, ptr %l172, !tbaa !21
  br label %bb71
bb70:
  %t234 = load i1, ptr %l174, !tbaa !21
  %t235 = xor i1 %t234, true
  store i1 %t235, ptr %l172, !tbaa !21
  br label %bb71
bb71:
  %t237 = load i1, ptr %l172, !tbaa !21
  store i1 %t237, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s9)
  br label %bb77
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_ec84fe6443685676_e22a9bc60a48a0b2)
  unreachable
bb77:
  %t238 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %l176
  br label %bb78
bb78:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l176
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l16
  store i64 0, ptr %l17, !tbaa !24
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Call", ptr %t240, i32 0, i32 1
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t243, 0
  store i64 %t245, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t247 = load i64, ptr %l18, !tbaa !24
  %t248 = load i64, ptr %l17, !tbaa !24
  %t251 = icmp sgt i64 %t247, %t248
  br i1 %t251, label %bb79, label %bb80
bb79:
  %t253 = load i64, ptr %l19, !tbaa !24
  %t255 = icmp sgt i64 %t253, 0
  br i1 %t255, label %bb81, label %bb82
bb80:
  store i64 0, ptr %l183, !tbaa !24
  br label %bb84
bb81:
  %t257 = load i64, ptr %l18, !tbaa !24
  %t258 = load i64, ptr %l17, !tbaa !24
  %t261 = sub i64 %t257, %t258
  %t262 = load i64, ptr %l19, !tbaa !24
  %t265 = add i64 %t261, %t262
  %t267 = sub i64 %t265, 1
  %t268 = load i64, ptr %l19, !tbaa !24
  %t271 = sdiv i64 %t267, %t268
  store i64 %t271, ptr %l186, !tbaa !24
  br label %bb83
bb82:
  store i64 0, ptr %l186, !tbaa !24
  br label %bb83
bb83:
  %t273 = load i64, ptr %l186, !tbaa !24
  store i64 %t273, ptr %l183, !tbaa !24
  br label %bb84
bb84:
  %t274 = load i64, ptr %l183, !tbaa !24
  store i64 %t274, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb85
bb85:
  store %olang.scope zeroinitializer, ptr %s12
  %t275 = load i64, ptr %l21, !tbaa !24
  %t276 = load i64, ptr %l20, !tbaa !24
  %t279 = icmp slt i64 %t275, %t276
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s12)
  br label %bb124
bb87:
  br label %bb88
bb88:
  %t283 = load i64, ptr %l17, !tbaa !24
  %t284 = load i64, ptr %l21, !tbaa !24
  %t285 = load i64, ptr %l19, !tbaa !24
  %t288 = mul i64 %t284, %t285
  %t291 = add i64 %t283, %t288
  store i64 %t291, ptr %l22, !tbaa !24
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr %"compiler/typed:Call", ptr %t293, i32 0, i32 1
  %t296 = load { i64, ptr }, ptr %t295, !tbaa !27
  store { i64, ptr } %t296, ptr %l205, !tbaa !27
  %t297 = load i64, ptr %l22, !tbaa !24
  %t299 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t300 = load ptr, ptr %t299, !tbaa !27
  %t301 = getelementptr ptr, ptr %t300, i64 %t297
  %t302 = load ptr, ptr %t301, !tbaa !39
  store ptr %t302, ptr %l23, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l23, !tbaa !29
  %t308 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s12, ptr %t304, ptr %t305)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %l210
  br label %bb89
bb89:
  %t309 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l210
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l24
  %t310 = load i64, ptr %l6, !tbaa !24
  %t312 = icmp sge i64 %t310, 0
  br i1 %t312, label %bb90, label %bb91
bb90:
  %t314 = load i1, ptr %l7, !tbaa !21
  %t316 = xor i1 %t314, true
  store i1 %t316, ptr %l213, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l213, !tbaa !21
  br label %bb92
bb92:
  %t318 = load i1, ptr %l213, !tbaa !21
  br i1 %t318, label %bb93, label %bb94
bb93:
  %t319 = load ptr, ptr %l1, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Call", ptr %t319, i32 0, i32 2
  %t322 = load i32, ptr %t321, !tbaa !23
  %t324 = icmp sge i32 %t322, 0
  store i1 %t324, ptr %l216, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l216, !tbaa !21
  br label %bb95
bb95:
  %t326 = load i1, ptr %l216, !tbaa !21
  br i1 %t326, label %bb96, label %bb97
bb96:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load ptr, ptr %l23, !tbaa !29
  %t331 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeederArg(ptr %v0, ptr %v1, ptr %t327, ptr %t328)
  store i64 %t331, ptr %l223
  br label %bb98
bb97:
  store i64 -1, ptr %l220, !tbaa !24
  br label %bb99
bb98:
  %t332 = load i64, ptr %l223, !tbaa !24
  store i64 %t332, ptr %l220, !tbaa !24
  br label %bb99
bb99:
  %t333 = load i64, ptr %l220, !tbaa !24
  store i64 %t333, ptr %l25, !tbaa !24
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l224, !tbaa !29
  %t335 = load ptr, ptr %l23, !tbaa !29
  %t337 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t335)
  store i32 %t337, ptr %l226
  br label %bb100
bb100:
  %t338 = load ptr, ptr %l224, !tbaa !29
  %t339 = load i32, ptr %l226, !tbaa !23
  %t340 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewritable(ptr %v0, ptr %t338, i32 %t339)
  store i1 %t340, ptr %l227
  br label %bb101
bb101:
  %t341 = load i1, ptr %l227, !tbaa !21
  store i1 %t341, ptr %l26, !tbaa !21
  %t342 = load i64, ptr %l25, !tbaa !24
  %t344 = icmp sge i64 %t342, 0
  br i1 %t344, label %bb102, label %bb103
bb102:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/free:walker", ptr %t346, i32 0, i32 2
  %t349 = load i1, ptr %t348, !tbaa !21
  store i1 %t349, ptr %l230, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb104
bb104:
  %t351 = load i1, ptr %l230, !tbaa !21
  br i1 %t351, label %bb105, label %bb106
bb105:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t354 = getelementptr %"compiler/free:walker", ptr %t352, i32 0, i32 29
  %t355 = load i64, ptr %t354, !tbaa !24
  %t357 = icmp eq i64 %t355, 0
  store i1 %t357, ptr %l233, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l233, !tbaa !21
  br label %bb107
bb107:
  %t359 = load i1, ptr %l233, !tbaa !21
  br i1 %t359, label %bb108, label %bb109
bb108:
  store %olang.scope zeroinitializer, ptr %s13
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/free:walker", ptr %t360, i32 0, i32 0
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/free:Free", ptr %t363, i32 0, i32 75
  store ptr %t365, ptr %l239, !tbaa !29
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/free:walker", ptr %t366, i32 0, i32 1
  %t369 = load i64, ptr %t368, !tbaa !24
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = getelementptr %"compiler/typed:Call", ptr %t370, i32 0, i32 2
  %t373 = load i32, ptr %t372, !tbaa !23
  %t375 = sext i32 %t373 to i64
  %t376 = load i64, ptr %l6, !tbaa !24
  %t377 = load i64, ptr %l22, !tbaa !24
  %t378 = load i64, ptr %l25, !tbaa !24
  %t379 = load i1, ptr %l26, !tbaa !21
  %t386 = call %"compiler/free:feedCall" @compiler_2ffree_3afeedCall_2ector(ptr %s13, i64 %t369, i64 %t375, i64 %t376, i64 %t377, i64 %t378, i1 %t379)
  store %"compiler/free:feedCall" %t386, ptr %l249
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t387 = load ptr, ptr %l239, !tbaa !29
  %t388 = load %"compiler/free:feedCall", ptr %l249
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ePush_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %t387, %"compiler/free:feedCall" %t388)
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s13)
  br label %bb112
bb112:
  %t389 = load i1, ptr %l26, !tbaa !21
  br i1 %t389, label %bb113, label %bb114
bb113:
  store %olang.scope zeroinitializer, ptr %s14
  %t391 = load ptr, ptr %l0, !tbaa !29
  store ptr %t391, ptr %l251, !tbaa !29
  store ptr %l24, ptr %l252, !tbaa !29
  %t392 = load i64, ptr %l25, !tbaa !24
  %t394 = icmp sge i64 %t392, 0
  br i1 %t394, label %bb115, label %bb116
bb114:
  br label %bb120
bb115:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = getelementptr %"compiler/free:walker", ptr %t396, i32 0, i32 0
  %t399 = load ptr, ptr %t398, !tbaa !29
  %t401 = getelementptr %"compiler/free:Free", ptr %t399, i32 0, i32 73
  %t402 = load i64, ptr %l25, !tbaa !24
  %t405 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t401, i64 %t402)
  store %"compiler/free:feed" %t405, ptr %l260
  br label %bb117
bb116:
  store i64 -1, ptr %l255, !tbaa !24
  br label %bb118
bb117:
  %t406 = getelementptr %"compiler/free:feed", ptr %l260, i32 0, i32 2
  %t407 = load i64, ptr %t406, !tbaa !24
  store i64 %t407, ptr %l255, !tbaa !24
  br label %bb118
bb118:
  %t409 = load %"compiler/source:Span", ptr %l3
  %t410 = load ptr, ptr %l251, !tbaa !29
  %t411 = load ptr, ptr %l252, !tbaa !29
  %t412 = load i64, ptr %l255, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2einOwner(ptr %v0, ptr %s12, ptr %s14, ptr %t410, ptr %t411, i64 %t412, %"compiler/source:Span" %t409, { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d37, i32 0, i32 1) })
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s14)
  br label %bb120
bb120:
  store ptr %l16, ptr %l263, !tbaa !29
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %l264
  %t416 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s12, ptr %l264)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t416, ptr %l266
  br label %bb121
bb121:
  %t417 = load ptr, ptr %l263, !tbaa !29
  %t418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l266
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %s0, ptr %s12, ptr %t417, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418)
  br label %bb122
bb122:
  call void @__olang_scope_close(ptr %s12)
  br label %bb123
bb123:
  %t419 = load i64, ptr %l21, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l21, !tbaa !24
  br label %bb85
bb124:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i32, ptr %l2, !tbaa !23
  %t427 = call i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %t423, i32 %t424)
  store i1 %t427, ptr %l271
  br label %bb125
bb125:
  %t428 = load i1, ptr %l271, !tbaa !21
  br i1 %t428, label %bb126, label %bb127
bb126:
  %t429 = load ptr, ptr %l1, !tbaa !29
  %t431 = getelementptr %"compiler/typed:Call", ptr %t429, i32 0, i32 2
  %t432 = load i32, ptr %t431, !tbaa !23
  %t434 = icmp sge i32 %t432, 0
  store i1 %t434, ptr %l272, !tbaa !21
  br label %bb128
bb127:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb128
bb128:
  %t436 = load i1, ptr %l272, !tbaa !21
  br i1 %t436, label %bb129, label %bb130
bb129:
  %t437 = load ptr, ptr %lp5
  store ptr %t437, ptr %l276, !tbaa !29
  %t438 = load i64, ptr @G_2ecompiler_2ffree_2eONew, !tbaa !24
  %t439 = load ptr, ptr %l1, !tbaa !29
  %t441 = getelementptr %"compiler/typed:Call", ptr %t439, i32 0, i32 2
  %t442 = load i32, ptr %t441, !tbaa !23
  %t444 = sext i32 %t442 to i64
  %t447 = call i64 @compiler_2ffree_2eorig(i64 %t438, i64 %t444)
  store i64 %t447, ptr %l281
  br label %bb131
bb130:
  br label %bb133
bb131:
  %t448 = load ptr, ptr %l276, !tbaa !29
  %t449 = load i64, ptr %l281, !tbaa !24
  %t450 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t448, i64 %t449)
  store i64 %t450, ptr %l282
  br label %bb132
bb132:
  br label %bb133
bb133:
  %t451 = load i64, ptr %l6, !tbaa !24
  %t453 = icmp sge i64 %t451, 0
  br i1 %t453, label %bb134, label %bb135
bb134:
  %t455 = load i1, ptr %l7, !tbaa !21
  %t457 = xor i1 %t455, true
  store i1 %t457, ptr %l285, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l285, !tbaa !21
  br label %bb136
bb136:
  %t459 = load i1, ptr %l285, !tbaa !21
  br i1 %t459, label %bb137, label %bb138
bb137:
  %t460 = load ptr, ptr %l4, !tbaa !29
  %t461 = load i64, ptr %l6, !tbaa !24
  %t464 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t460, i64 %t461)
  store i64 %t464, ptr %l291
  br label %bb139
bb138:
  store i1 false, ptr %l288, !tbaa !21
  br label %bb140
bb139:
  %t465 = load i64, ptr %l291, !tbaa !24
  %t466 = icmp ne i64 %t465, 0
  store i1 %t466, ptr %l288, !tbaa !21
  br label %bb140
bb140:
  %t468 = load i1, ptr %l288, !tbaa !21
  br i1 %t468, label %bb141, label %bb142
bb141:
  %t469 = load ptr, ptr %l4, !tbaa !29
  %t470 = load ptr, ptr %l1, !tbaa !29
  %t471 = load i64, ptr %l6, !tbaa !24
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/free:walker", ptr %t472, i32 0, i32 1
  %t475 = load i64, ptr %t474, !tbaa !24
  %t480 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2efreshCtor(ptr %v0, ptr %v1, ptr %t469, ptr %t470, i64 %t471, i64 %t475)
  store i1 %t480, ptr %l299
  br label %bb143
bb142:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb144
bb143:
  %t481 = load i1, ptr %l299, !tbaa !21
  store i1 %t481, ptr %l293, !tbaa !21
  br label %bb144
bb144:
  %t482 = load i1, ptr %l293, !tbaa !21
  store i1 %t482, ptr %l27, !tbaa !21
  %t483 = load i1, ptr %l27, !tbaa !21
  br i1 %t483, label %bb145, label %bb146
bb145:
  %t485 = load ptr, ptr %l0, !tbaa !29
  %t487 = getelementptr %"compiler/free:walker", ptr %t485, i32 0, i32 2
  %t488 = load i1, ptr %t487, !tbaa !21
  store i1 %t488, ptr %l301, !tbaa !21
  br label %bb147
bb146:
  store i1 false, ptr %l301, !tbaa !21
  br label %bb147
bb147:
  %t490 = load i1, ptr %l301, !tbaa !21
  br i1 %t490, label %bb148, label %bb149
bb148:
  store %olang.scope zeroinitializer, ptr %s17
  %t491 = load ptr, ptr %l4, !tbaa !29
  %t493 = getelementptr %"compiler/free:Free", ptr %t491, i32 0, i32 71
  store ptr %t493, ptr %l305, !tbaa !29
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/free:walker", ptr %t494, i32 0, i32 1
  %t497 = load i64, ptr %t496, !tbaa !24
  %t498 = load ptr, ptr %l1, !tbaa !29
  %t500 = getelementptr %"compiler/typed:Call", ptr %t498, i32 0, i32 2
  %t501 = load i32, ptr %t500, !tbaa !23
  %t503 = sext i32 %t501 to i64
  %t506 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s17, i64 %t497, i64 %t503)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t506, ptr %l311
  br label %bb150
bb149:
  br label %bb152
bb150:
  %t507 = load ptr, ptr %l305, !tbaa !29
  %t508 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l311
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t507, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t508, i1 true)
  br label %bb151
bb151:
  call void @__olang_scope_close(ptr %s17)
  br label %bb152
bb152:
  %t509 = load i64, ptr %l6, !tbaa !24
  %t511 = icmp slt i64 %t509, 0
  br i1 %t511, label %bb153, label %bb154
bb153:
  store i1 true, ptr %l314, !tbaa !21
  br label %bb155
bb154:
  %t513 = load i1, ptr %l7, !tbaa !21
  store i1 %t513, ptr %l314, !tbaa !21
  br label %bb155
bb155:
  %t515 = load i1, ptr %l314, !tbaa !21
  br i1 %t515, label %bb156, label %bb157
bb156:
  store i1 true, ptr %l316, !tbaa !21
  br label %bb162
bb157:
  %t516 = load ptr, ptr %l4, !tbaa !29
  %t517 = load i64, ptr %l6, !tbaa !24
  %t520 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t516, i64 %t517)
  store i64 %t520, ptr %l319
  br label %bb158
bb158:
  %t521 = load i64, ptr %l319, !tbaa !24
  %t522 = icmp ne i64 %t521, 0
  br i1 %t522, label %bb159, label %bb160
bb159:
  %t524 = load i1, ptr %l27, !tbaa !21
  %t526 = xor i1 %t524, true
  store i1 %t526, ptr %l321, !tbaa !21
  br label %bb161
bb160:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb161
bb161:
  %t528 = load i1, ptr %l321, !tbaa !21
  store i1 %t528, ptr %l316, !tbaa !21
  br label %bb162
bb162:
  %t529 = load i1, ptr %l316, !tbaa !21
  br i1 %t529, label %bb163, label %bb164
bb163:
  %t530 = load ptr, ptr %l1, !tbaa !29
  %t532 = getelementptr %"compiler/typed:Call", ptr %t530, i32 0, i32 2
  %t533 = load i32, ptr %t532, !tbaa !23
  %t535 = sext i32 %t533 to i64
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/free:walker", ptr %t536, i32 0, i32 32
  %t539 = load i64, ptr %t538, !tbaa !24
  %t542 = icmp ne i64 %t535, %t539
  store i1 %t542, ptr %l324, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l324, !tbaa !21
  br label %bb165
bb165:
  %t544 = load i1, ptr %l324, !tbaa !21
  br i1 %t544, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s18
  %t545 = load ptr, ptr %l0, !tbaa !29
  %t546 = load i32, ptr %l2, !tbaa !23
  %t547 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %s18, ptr %t545, i32 %t546, %"compiler/source:Span" %t547, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb168
bb167:
  br label %bb169
bb168:
  call void @__olang_scope_close(ptr %s18)
  br label %bb169
bb169:
  %t551 = load i64, ptr %l6, !tbaa !24
  %t553 = icmp sge i64 %t551, 0
  br i1 %t553, label %bb170, label %bb171
bb170:
  %t555 = load i1, ptr %l7, !tbaa !21
  %t557 = xor i1 %t555, true
  store i1 %t557, ptr %l336, !tbaa !21
  br label %bb172
bb171:
  store i1 false, ptr %l336, !tbaa !21
  br label %bb172
bb172:
  %t559 = load i1, ptr %l336, !tbaa !21
  br i1 %t559, label %bb173, label %bb174
bb173:
  store %olang.scope zeroinitializer, ptr %s19
  %t560 = load ptr, ptr %l4, !tbaa !29
  %t561 = load i64, ptr %l6, !tbaa !24
  %t564 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisCase(ptr %v0, ptr %t560, i64 %t561)
  store i1 %t564, ptr %l341
  br label %bb175
bb174:
  br label %bb330
bb175:
  %t565 = load i1, ptr %l341, !tbaa !21
  br i1 %t565, label %bb176, label %bb177
bb176:
  store ptr %l16, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb178
bb177:
  br label %bb188
bb178:
  store %olang.scope zeroinitializer, ptr %s22
  %t567 = load i64, ptr %l29, !tbaa !24
  store i64 %t567, ptr %l343, !tbaa !24
  %t568 = load ptr, ptr %l28, !tbaa !29
  %t570 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %t568)
  store i64 %t570, ptr %l345
  br label %bb179
bb179:
  %t571 = load i64, ptr %l343, !tbaa !24
  %t572 = load i64, ptr %l345, !tbaa !24
  %t573 = icmp slt i64 %t571, %t572
  %t575 = xor i1 %t573, true
  br i1 %t575, label %bb180, label %bb181
bb180:
  call void @__olang_scope_close(ptr %s22)
  br label %bb187
bb181:
  br label %bb182
bb182:
  %t577 = load ptr, ptr %l28, !tbaa !29
  %t578 = load i64, ptr %l29, !tbaa !24
  %t581 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %t577, i64 %t578)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t581, ptr %l350
  br label %bb183
bb183:
  %t583 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s22, ptr %l350)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t583, ptr %l352
  br label %bb184
bb184:
  %t584 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l352
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t584, ptr %l30
  %t585 = load ptr, ptr %lp5
  %t588 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s22, ptr %t585, ptr %l30)
  store i64 %t588, ptr %l355
  br label %bb185
bb185:
  call void @__olang_scope_close(ptr %s22)
  br label %bb186
bb186:
  %t589 = load i64, ptr %l29, !tbaa !24
  %t591 = add i64 %t589, 1
  store i64 %t591, ptr %l29, !tbaa !24
  br label %bb178
bb187:
  %t593 = load ptr, ptr %lp5
  %t594 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t593
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t594, ptr %rv
  br label %ret
bb188:
  %t596 = load ptr, ptr %l4, !tbaa !29
  %t598 = getelementptr %"compiler/free:Free", ptr %t596, i32 0, i32 28
  %t599 = load i64, ptr %l6, !tbaa !24
  %t602 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t598, i64 %t599)
  store ptr %t602, ptr %l362
  br label %bb189
bb189:
  %t603 = load ptr, ptr %l362, !tbaa !29
  store ptr %t603, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb190
bb190:
  %t604 = load i64, ptr %l32, !tbaa !24
  store i64 %t604, ptr %l363, !tbaa !24
  %t605 = load ptr, ptr %l31, !tbaa !29
  store ptr %t605, ptr %l364, !tbaa !29
  %t606 = ptrtoint ptr %v0 to i64
  store i64 %t606, ptr %l365, !tbaa !24
  %t607 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t607, label %bb191, label %bb192
bb191:
  %t609 = load ptr, ptr %l364, !tbaa !29
  %t610 = call ptr @__olang_region_or(ptr %t609, ptr %v0)
  %t611 = ptrtoint ptr %t610 to i64
  store i64 %t611, ptr %l365, !tbaa !24
  br label %bb192
bb192:
  %t612 = load ptr, ptr %l31, !tbaa !29
  %t613 = load i64, ptr %l365
  %t614 = inttoptr i64 %t613 to ptr
  %t616 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t614, ptr %t612)
  store i64 %t616, ptr %l368
  br label %bb193
bb193:
  %t617 = load i64, ptr %l363, !tbaa !24
  %t618 = load i64, ptr %l368, !tbaa !24
  %t619 = icmp slt i64 %t617, %t618
  %t621 = xor i1 %t619, true
  br i1 %t621, label %bb194, label %bb195
bb194:
  br label %bb202
bb195:
  br label %bb196
bb196:
  %t623 = load ptr, ptr %l31, !tbaa !29
  store ptr %t623, ptr %l371, !tbaa !29
  %t624 = ptrtoint ptr %v0 to i64
  store i64 %t624, ptr %l372, !tbaa !24
  %t625 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t625, label %bb197, label %bb198
bb197:
  %t627 = load ptr, ptr %l371, !tbaa !29
  %t628 = call ptr @__olang_region_or(ptr %t627, ptr %v0)
  %t629 = ptrtoint ptr %t628 to i64
  store i64 %t629, ptr %l372, !tbaa !24
  br label %bb198
bb198:
  %t630 = load ptr, ptr %l31, !tbaa !29
  %t631 = load i64, ptr %l32, !tbaa !24
  %t632 = load i64, ptr %l372
  %t633 = inttoptr i64 %t632 to ptr
  %t636 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t633, ptr %t630, i64 %t631)
  store i64 %t636, ptr %l376
  br label %bb199
bb199:
  %t637 = load i64, ptr %l376, !tbaa !24
  %t638 = load ptr, ptr %l4, !tbaa !29
  %t640 = load ptr, ptr %lp5
  call void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ethrough(ptr %v0, ptr %s0, ptr %v2, ptr %t638, i64 %t637, ptr %l16, ptr %t640)
  br label %bb200
bb200:
  br label %bb201
bb201:
  %t645 = load i64, ptr %l32, !tbaa !24
  %t647 = add i64 %t645, 1
  store i64 %t647, ptr %l32, !tbaa !24
  br label %bb190
bb202:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t651 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t649)
  store ptr %t651, ptr %l384
  br label %bb203
bb203:
  %t652 = load ptr, ptr %l4, !tbaa !29
  %t654 = getelementptr %"compiler/free:Free", ptr %t652, i32 0, i32 1
  %t655 = load i64, ptr %l6, !tbaa !24
  %t658 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t654, i64 %t655)
  store ptr %t658, ptr %l388
  br label %bb204
bb204:
  %t659 = load ptr, ptr %l388, !tbaa !29
  %t661 = getelementptr %"compiler/typed:Body", ptr %t659, i32 0, i32 2
  %t662 = load i32, ptr %t661, !tbaa !23
  %t663 = load ptr, ptr %l384, !tbaa !29
  %t665 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t663, i32 %t662)
  store i64 %t665, ptr %l391
  br label %bb205
bb205:
  %t666 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t667 = load i64, ptr %l391, !tbaa !24
  %t669 = icmp eq i64 %t667, %t666
  store i1 %t669, ptr %l34, !tbaa !21
  %t671 = load ptr, ptr %l4, !tbaa !29
  %t673 = getelementptr %"compiler/free:Free", ptr %t671, i32 0, i32 29
  %t674 = load i64, ptr %l6, !tbaa !24
  %t677 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t673, i64 %t674)
  store ptr %t677, ptr %l397
  br label %bb206
bb206:
  %t678 = load ptr, ptr %l397, !tbaa !29
  store ptr %t678, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb207
bb207:
  %t679 = load i64, ptr %l36, !tbaa !24
  store i64 %t679, ptr %l398, !tbaa !24
  %t680 = load ptr, ptr %l35, !tbaa !29
  store ptr %t680, ptr %l399, !tbaa !29
  %t681 = ptrtoint ptr %v0 to i64
  store i64 %t681, ptr %l400, !tbaa !24
  %t682 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t682, label %bb208, label %bb209
bb208:
  %t684 = load ptr, ptr %l399, !tbaa !29
  %t685 = call ptr @__olang_region_or(ptr %t684, ptr %v0)
  %t686 = ptrtoint ptr %t685 to i64
  store i64 %t686, ptr %l400, !tbaa !24
  br label %bb209
bb209:
  %t687 = load ptr, ptr %l35, !tbaa !29
  %t688 = load i64, ptr %l400
  %t689 = inttoptr i64 %t688 to ptr
  %t691 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t689, ptr %t687)
  store i64 %t691, ptr %l403
  br label %bb210
bb210:
  %t692 = load i64, ptr %l398, !tbaa !24
  %t693 = load i64, ptr %l403, !tbaa !24
  %t694 = icmp slt i64 %t692, %t693
  %t696 = xor i1 %t694, true
  br i1 %t696, label %bb211, label %bb212
bb211:
  br label %bb226
bb212:
  br label %bb213
bb213:
  %t698 = load ptr, ptr %l35, !tbaa !29
  store ptr %t698, ptr %l406, !tbaa !29
  %t699 = ptrtoint ptr %v0 to i64
  store i64 %t699, ptr %l407, !tbaa !24
  %t700 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t700, label %bb214, label %bb215
bb214:
  %t702 = load ptr, ptr %l406, !tbaa !29
  %t703 = call ptr @__olang_region_or(ptr %t702, ptr %v0)
  %t704 = ptrtoint ptr %t703 to i64
  store i64 %t704, ptr %l407, !tbaa !24
  br label %bb215
bb215:
  %t705 = load ptr, ptr %l35, !tbaa !29
  %t706 = load i64, ptr %l36, !tbaa !24
  %t707 = load i64, ptr %l407
  %t708 = inttoptr i64 %t707 to ptr
  %t711 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t708, ptr %t705, i64 %t706)
  store i64 %t711, ptr %l411
  br label %bb216
bb216:
  %t712 = load i64, ptr %l411, !tbaa !24
  store i64 %t712, ptr %l37, !tbaa !24
  %t713 = load i64, ptr %l37, !tbaa !24
  %t715 = ashr i64 %t713, 32
  store i64 %t715, ptr %l38, !tbaa !24
  %t717 = load i64, ptr %l37, !tbaa !24
  %t718 = shl i64 1, 32
  %t720 = sub i64 %t718, 1
  %t723 = and i64 %t717, %t720
  store i64 %t723, ptr %l39, !tbaa !24
  %t725 = load i64, ptr %l38, !tbaa !24
  store i64 %t725, ptr %l418, !tbaa !24
  %t727 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %l16)
  store i64 %t727, ptr %l420
  br label %bb217
bb217:
  %t728 = load i64, ptr %l418, !tbaa !24
  %t729 = load i64, ptr %l420, !tbaa !24
  %t730 = icmp slt i64 %t728, %t729
  br i1 %t730, label %bb218, label %bb219
bb218:
  store %olang.scope zeroinitializer, ptr %s29
  %t732 = load ptr, ptr %l4, !tbaa !29
  %t733 = load i64, ptr %l6, !tbaa !24
  %t734 = load i64, ptr %l38, !tbaa !24
  %t738 = call i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estoredMore(ptr %v0, ptr %t732, i64 %t733, i64 %t734)
  store i1 %t738, ptr %l425
  br label %bb220
bb219:
  br label %bb224
bb220:
  %t739 = load i1, ptr %l425, !tbaa !21
  store i1 %t739, ptr %l40, !tbaa !21
  %t740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t740, ptr %l426, !tbaa !29
  %t741 = load i64, ptr %l39, !tbaa !24
  store i64 %t741, ptr %l427, !tbaa !24
  %t742 = load ptr, ptr %l1, !tbaa !29
  %t744 = getelementptr %"compiler/typed:Call", ptr %t742, i32 0, i32 1
  %t745 = load { i64, ptr }, ptr %t744, !tbaa !27
  store { i64, ptr } %t745, ptr %l429, !tbaa !27
  %t746 = load i64, ptr %l38, !tbaa !24
  %t748 = getelementptr { i64, ptr }, ptr %l429, i32 0, i32 1
  %t749 = load ptr, ptr %t748, !tbaa !27
  %t750 = getelementptr ptr, ptr %t749, i64 %t746
  %t751 = load ptr, ptr %t750, !tbaa !39
  store ptr %t751, ptr %l431, !tbaa !29
  %t752 = load i64, ptr %l38, !tbaa !24
  %t755 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %l16, i64 %t752)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t755, ptr %l434
  br label %bb221
bb221:
  %t757 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l434)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t757, ptr %l436
  br label %bb222
bb222:
  %t758 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l436
  %t759 = call ptr @__olang_scope_alloc_a(ptr %s29, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t758, ptr %t759
  %t760 = load %"compiler/source:Span", ptr %l3
  %t761 = load i1, ptr %l40, !tbaa !21
  %t762 = load i1, ptr %l34, !tbaa !21
  %t763 = load ptr, ptr %l426, !tbaa !29
  %t764 = load i64, ptr %l427, !tbaa !24
  %t765 = load ptr, ptr %l431, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %s0, ptr %s29, ptr %t763, i64 %t764, ptr %t765, ptr %t759, %"compiler/source:Span" %t760, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d39, i32 0, i32 1) }, i1 %t761, i1 %t762)
  br label %bb223
bb223:
  call void @__olang_scope_close(ptr %s29)
  br label %bb224
bb224:
  br label %bb225
bb225:
  %t770 = load i64, ptr %l36, !tbaa !24
  %t772 = add i64 %t770, 1
  store i64 %t772, ptr %l36, !tbaa !24
  br label %bb207
bb226:
  %t774 = load ptr, ptr %l4, !tbaa !29
  %t776 = getelementptr %"compiler/free:Free", ptr %t774, i32 0, i32 33
  %t777 = load i64, ptr %l6, !tbaa !24
  %t780 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t776, i64 %t777)
  store ptr %t780, ptr %l446
  br label %bb227
bb227:
  %t781 = load ptr, ptr %l446, !tbaa !29
  store ptr %t781, ptr %l41, !tbaa !29
  store i64 0, ptr %l42, !tbaa !24
  br label %bb228
bb228:
  %t782 = load i64, ptr %l42, !tbaa !24
  store i64 %t782, ptr %l447, !tbaa !24
  %t783 = load ptr, ptr %l41, !tbaa !29
  store ptr %t783, ptr %l448, !tbaa !29
  %t784 = ptrtoint ptr %v0 to i64
  store i64 %t784, ptr %l449, !tbaa !24
  %t785 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t785, label %bb229, label %bb230
bb229:
  %t787 = load ptr, ptr %l448, !tbaa !29
  %t788 = call ptr @__olang_region_or(ptr %t787, ptr %v0)
  %t789 = ptrtoint ptr %t788 to i64
  store i64 %t789, ptr %l449, !tbaa !24
  br label %bb230
bb230:
  %t790 = load ptr, ptr %l41, !tbaa !29
  %t791 = load i64, ptr %l449
  %t792 = inttoptr i64 %t791 to ptr
  %t794 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t792, ptr %t790)
  store i64 %t794, ptr %l452
  br label %bb231
bb231:
  %t795 = load i64, ptr %l447, !tbaa !24
  %t796 = load i64, ptr %l452, !tbaa !24
  %t797 = icmp slt i64 %t795, %t796
  %t799 = xor i1 %t797, true
  br i1 %t799, label %bb232, label %bb233
bb232:
  br label %bb246
bb233:
  br label %bb234
bb234:
  %t801 = load ptr, ptr %l41, !tbaa !29
  store ptr %t801, ptr %l455, !tbaa !29
  %t802 = ptrtoint ptr %v0 to i64
  store i64 %t802, ptr %l456, !tbaa !24
  %t803 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t803, label %bb235, label %bb236
bb235:
  %t805 = load ptr, ptr %l455, !tbaa !29
  %t806 = call ptr @__olang_region_or(ptr %t805, ptr %v0)
  %t807 = ptrtoint ptr %t806 to i64
  store i64 %t807, ptr %l456, !tbaa !24
  br label %bb236
bb236:
  %t808 = load ptr, ptr %l41, !tbaa !29
  %t809 = load i64, ptr %l42, !tbaa !24
  %t810 = load i64, ptr %l456
  %t811 = inttoptr i64 %t810 to ptr
  %t814 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t811, ptr %t808, i64 %t809)
  store i64 %t814, ptr %l460
  br label %bb237
bb237:
  %t815 = load i64, ptr %l460, !tbaa !24
  store i64 %t815, ptr %l43, !tbaa !24
  %t816 = load i64, ptr %l43, !tbaa !24
  store i64 %t816, ptr %l461, !tbaa !24
  %t818 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %l16)
  store i64 %t818, ptr %l463
  br label %bb238
bb238:
  %t819 = load i64, ptr %l461, !tbaa !24
  %t820 = load i64, ptr %l463, !tbaa !24
  %t821 = icmp slt i64 %t819, %t820
  br i1 %t821, label %bb239, label %bb240
bb239:
  %t823 = load ptr, ptr %l0, !tbaa !29
  store ptr %t823, ptr %l465, !tbaa !29
  %t824 = load ptr, ptr %l1, !tbaa !29
  %t826 = getelementptr %"compiler/typed:Call", ptr %t824, i32 0, i32 1
  %t827 = load { i64, ptr }, ptr %t826, !tbaa !27
  store { i64, ptr } %t827, ptr %l467, !tbaa !27
  %t828 = load i64, ptr %l43, !tbaa !24
  %t830 = getelementptr { i64, ptr }, ptr %l467, i32 0, i32 1
  %t831 = load ptr, ptr %t830, !tbaa !27
  %t832 = getelementptr ptr, ptr %t831, i64 %t828
  %t833 = load ptr, ptr %t832, !tbaa !39
  store ptr %t833, ptr %l469, !tbaa !29
  %t834 = load i64, ptr %l43, !tbaa !24
  %t837 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %l16, i64 %t834)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t837, ptr %l472
  br label %bb241
bb240:
  br label %bb244
bb241:
  %t839 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l472)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t839, ptr %l474
  br label %bb242
bb242:
  %t840 = load %"compiler/source:Span", ptr %l3
  %t841 = load ptr, ptr %l465, !tbaa !29
  %t842 = load ptr, ptr %l469, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeArg(ptr %v0, ptr %v1, ptr %s0, ptr %t841, ptr %t842, ptr %l474, %"compiler/source:Span" %t840)
  br label %bb243
bb243:
  br label %bb244
bb244:
  br label %bb245
bb245:
  %t845 = load i64, ptr %l42, !tbaa !24
  %t847 = add i64 %t845, 1
  store i64 %t847, ptr %l42, !tbaa !24
  br label %bb228
bb246:
  %t849 = load ptr, ptr %l4, !tbaa !29
  %t851 = getelementptr %"compiler/free:Free", ptr %t849, i32 0, i32 30
  %t852 = load i64, ptr %l6, !tbaa !24
  %t855 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t851, i64 %t852)
  store ptr %t855, ptr %l482
  br label %bb247
bb247:
  %t856 = load ptr, ptr %l482, !tbaa !29
  store ptr %t856, ptr %l44, !tbaa !29
  store i64 0, ptr %l45, !tbaa !24
  br label %bb248
bb248:
  %t857 = load i64, ptr %l45, !tbaa !24
  store i64 %t857, ptr %l483, !tbaa !24
  %t858 = load ptr, ptr %l44, !tbaa !29
  store ptr %t858, ptr %l484, !tbaa !29
  %t859 = ptrtoint ptr %v0 to i64
  store i64 %t859, ptr %l485, !tbaa !24
  %t860 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t860, label %bb249, label %bb250
bb249:
  %t862 = load ptr, ptr %l484, !tbaa !29
  %t863 = call ptr @__olang_region_or(ptr %t862, ptr %v0)
  %t864 = ptrtoint ptr %t863 to i64
  store i64 %t864, ptr %l485, !tbaa !24
  br label %bb250
bb250:
  %t865 = load ptr, ptr %l44, !tbaa !29
  %t866 = load i64, ptr %l485
  %t867 = inttoptr i64 %t866 to ptr
  %t869 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t867, ptr %t865)
  store i64 %t869, ptr %l488
  br label %bb251
bb251:
  %t870 = load i64, ptr %l483, !tbaa !24
  %t871 = load i64, ptr %l488, !tbaa !24
  %t872 = icmp slt i64 %t870, %t871
  %t874 = xor i1 %t872, true
  br i1 %t874, label %bb252, label %bb253
bb252:
  br label %bb266
bb253:
  br label %bb254
bb254:
  %t876 = load ptr, ptr %l44, !tbaa !29
  store ptr %t876, ptr %l491, !tbaa !29
  %t877 = ptrtoint ptr %v0 to i64
  store i64 %t877, ptr %l492, !tbaa !24
  %t878 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t878, label %bb255, label %bb256
bb255:
  %t880 = load ptr, ptr %l491, !tbaa !29
  %t881 = call ptr @__olang_region_or(ptr %t880, ptr %v0)
  %t882 = ptrtoint ptr %t881 to i64
  store i64 %t882, ptr %l492, !tbaa !24
  br label %bb256
bb256:
  %t883 = load ptr, ptr %l44, !tbaa !29
  %t884 = load i64, ptr %l45, !tbaa !24
  %t885 = load i64, ptr %l492
  %t886 = inttoptr i64 %t885 to ptr
  %t889 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t886, ptr %t883, i64 %t884)
  store i64 %t889, ptr %l496
  br label %bb257
bb257:
  %t890 = load i64, ptr %l496, !tbaa !24
  store i64 %t890, ptr %l46, !tbaa !24
  %t891 = load i64, ptr %l46, !tbaa !24
  store i64 %t891, ptr %l497, !tbaa !24
  %t893 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %l16)
  store i64 %t893, ptr %l499
  br label %bb258
bb258:
  %t894 = load i64, ptr %l497, !tbaa !24
  %t895 = load i64, ptr %l499, !tbaa !24
  %t896 = icmp slt i64 %t894, %t895
  br i1 %t896, label %bb259, label %bb260
bb259:
  store %olang.scope zeroinitializer, ptr %s37
  %t898 = load ptr, ptr %l0, !tbaa !29
  store ptr %t898, ptr %l501, !tbaa !29
  %t899 = load i64, ptr %l46, !tbaa !24
  %t902 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %l16, i64 %t899)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t902, ptr %l504
  br label %bb261
bb260:
  br label %bb264
bb261:
  %t904 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l504)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t904, ptr %l506
  br label %bb262
bb262:
  %t905 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l506
  %t906 = call ptr @__olang_scope_alloc_a(ptr %s37, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t905, ptr %t906
  %t907 = load %"compiler/source:Span", ptr %l3
  %t908 = load ptr, ptr %l501, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %s0, ptr %s37, ptr %t908, ptr %t906, %"compiler/source:Span" %t907, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d40, i32 0, i32 1) }, i1 false, i64 -1, i64 -1)
  br label %bb263
bb263:
  call void @__olang_scope_close(ptr %s37)
  br label %bb264
bb264:
  br label %bb265
bb265:
  %t911 = load i64, ptr %l45, !tbaa !24
  %t913 = add i64 %t911, 1
  store i64 %t913, ptr %l45, !tbaa !24
  br label %bb248
bb266:
  %t915 = load ptr, ptr %l4, !tbaa !29
  %t917 = getelementptr %"compiler/free:Free", ptr %t915, i32 0, i32 31
  %t918 = load i64, ptr %l6, !tbaa !24
  %t921 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t917, i64 %t918)
  store ptr %t921, ptr %l514
  br label %bb267
bb267:
  %t922 = load ptr, ptr %l514, !tbaa !29
  store ptr %t922, ptr %l47, !tbaa !29
  store i64 0, ptr %l48, !tbaa !24
  br label %bb268
bb268:
  %t923 = load i64, ptr %l48, !tbaa !24
  store i64 %t923, ptr %l515, !tbaa !24
  %t924 = load ptr, ptr %l47, !tbaa !29
  store ptr %t924, ptr %l516, !tbaa !29
  %t925 = ptrtoint ptr %v0 to i64
  store i64 %t925, ptr %l517, !tbaa !24
  %t926 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t926, label %bb269, label %bb270
bb269:
  %t928 = load ptr, ptr %l516, !tbaa !29
  %t929 = call ptr @__olang_region_or(ptr %t928, ptr %v0)
  %t930 = ptrtoint ptr %t929 to i64
  store i64 %t930, ptr %l517, !tbaa !24
  br label %bb270
bb270:
  %t931 = load ptr, ptr %l47, !tbaa !29
  %t932 = load i64, ptr %l517
  %t933 = inttoptr i64 %t932 to ptr
  %t935 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t933, ptr %t931)
  store i64 %t935, ptr %l520
  br label %bb271
bb271:
  %t936 = load i64, ptr %l515, !tbaa !24
  %t937 = load i64, ptr %l520, !tbaa !24
  %t938 = icmp slt i64 %t936, %t937
  %t940 = xor i1 %t938, true
  br i1 %t940, label %bb272, label %bb273
bb272:
  br label %bb287
bb273:
  br label %bb274
bb274:
  %t942 = load ptr, ptr %l47, !tbaa !29
  store ptr %t942, ptr %l523, !tbaa !29
  %t943 = ptrtoint ptr %v0 to i64
  store i64 %t943, ptr %l524, !tbaa !24
  %t944 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t944, label %bb275, label %bb276
bb275:
  %t946 = load ptr, ptr %l523, !tbaa !29
  %t947 = call ptr @__olang_region_or(ptr %t946, ptr %v0)
  %t948 = ptrtoint ptr %t947 to i64
  store i64 %t948, ptr %l524, !tbaa !24
  br label %bb276
bb276:
  %t949 = load ptr, ptr %l47, !tbaa !29
  %t950 = load i64, ptr %l48, !tbaa !24
  %t951 = load i64, ptr %l524
  %t952 = inttoptr i64 %t951 to ptr
  %t955 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t952, ptr %t949, i64 %t950)
  store i64 %t955, ptr %l528
  br label %bb277
bb277:
  %t956 = load i64, ptr %l528, !tbaa !24
  store i64 %t956, ptr %l49, !tbaa !24
  %t957 = load i64, ptr %l49, !tbaa !24
  store i64 %t957, ptr %l529, !tbaa !24
  %t959 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %l16)
  store i64 %t959, ptr %l531
  br label %bb278
bb278:
  %t960 = load i64, ptr %l529, !tbaa !24
  %t961 = load i64, ptr %l531, !tbaa !24
  %t962 = icmp slt i64 %t960, %t961
  br i1 %t962, label %bb279, label %bb280
bb279:
  store %olang.scope zeroinitializer, ptr %s41
  %t964 = load ptr, ptr %l0, !tbaa !29
  store ptr %t964, ptr %l533, !tbaa !29
  %t965 = load ptr, ptr %l4, !tbaa !29
  store ptr %t965, ptr %l534, !tbaa !29
  %t966 = load i64, ptr %l49, !tbaa !24
  %t969 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %l16, i64 %t966)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t969, ptr %l537
  br label %bb281
bb280:
  br label %bb285
bb281:
  %t971 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l537)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t971, ptr %l539
  br label %bb282
bb282:
  %t972 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l539
  %t973 = call ptr @__olang_scope_alloc_a(ptr %s41, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t972, ptr %t973
  %t974 = load ptr, ptr %l534, !tbaa !29
  %t976 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %s0, ptr %s41, ptr %t974, ptr %t973)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t976, ptr %l541
  br label %bb283
bb283:
  %t977 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l541
  %t978 = call ptr @__olang_scope_alloc_a(ptr %s41, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t977, ptr %t978
  %t979 = load %"compiler/source:Span", ptr %l3
  %t980 = load ptr, ptr %l533, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %s41, ptr %s41, ptr %t980, ptr %t978, %"compiler/source:Span" %t979, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) }, i1 false, i64 -1, i64 -1)
  br label %bb284
bb284:
  call void @__olang_scope_close(ptr %s41)
  br label %bb285
bb285:
  br label %bb286
bb286:
  %t983 = load i64, ptr %l48, !tbaa !24
  %t985 = add i64 %t983, 1
  store i64 %t985, ptr %l48, !tbaa !24
  br label %bb268
bb287:
  %t987 = load ptr, ptr %l4, !tbaa !29
  %t989 = getelementptr %"compiler/free:Free", ptr %t987, i32 0, i32 35
  %t990 = load i64, ptr %l6, !tbaa !24
  %t993 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t989, i64 %t990)
  store i1 %t993, ptr %l549
  br label %bb288
bb288:
  %t994 = load i1, ptr %l549, !tbaa !21
  br i1 %t994, label %bb289, label %bb290
bb289:
  %t995 = load ptr, ptr %l0, !tbaa !29
  %t996 = load %"compiler/source:Span", ptr %l3
  %t997 = load ptr, ptr %l1, !tbaa !29
  %t998 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egoAll(ptr %v0, ptr %v1, ptr %t995, %"compiler/source:Span" %t996, ptr %t997, i64 %t998)
  br label %bb291
bb290:
  %t1003 = load ptr, ptr %l4, !tbaa !29
  %t1005 = getelementptr %"compiler/free:Free", ptr %t1003, i32 0, i32 34
  %t1006 = load i64, ptr %l6, !tbaa !24
  %t1009 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1005, i64 %t1006)
  store ptr %t1009, ptr %l557
  br label %bb292
bb291:
  br label %bb307
bb292:
  %t1010 = load ptr, ptr %l557, !tbaa !29
  store ptr %t1010, ptr %l50, !tbaa !29
  store i64 0, ptr %l51, !tbaa !24
  br label %bb293
bb293:
  %t1011 = load i64, ptr %l51, !tbaa !24
  store i64 %t1011, ptr %l558, !tbaa !24
  %t1012 = load ptr, ptr %l50, !tbaa !29
  store ptr %t1012, ptr %l559, !tbaa !29
  %t1013 = ptrtoint ptr %v0 to i64
  store i64 %t1013, ptr %l560, !tbaa !24
  %t1014 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1014, label %bb294, label %bb295
bb294:
  %t1016 = load ptr, ptr %l559, !tbaa !29
  %t1017 = call ptr @__olang_region_or(ptr %t1016, ptr %v0)
  %t1018 = ptrtoint ptr %t1017 to i64
  store i64 %t1018, ptr %l560, !tbaa !24
  br label %bb295
bb295:
  %t1019 = load ptr, ptr %l50, !tbaa !29
  %t1020 = load i64, ptr %l560
  %t1021 = inttoptr i64 %t1020 to ptr
  %t1023 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %t1021, ptr %t1019)
  store i64 %t1023, ptr %l563
  br label %bb296
bb296:
  %t1024 = load i64, ptr %l558, !tbaa !24
  %t1025 = load i64, ptr %l563, !tbaa !24
  %t1026 = icmp slt i64 %t1024, %t1025
  %t1028 = xor i1 %t1026, true
  br i1 %t1028, label %bb297, label %bb298
bb297:
  br label %bb306
bb298:
  br label %bb299
bb299:
  %t1030 = load ptr, ptr %l50, !tbaa !29
  store ptr %t1030, ptr %l566, !tbaa !29
  %t1031 = ptrtoint ptr %v0 to i64
  store i64 %t1031, ptr %l567, !tbaa !24
  %t1032 = load i1, ptr @olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1
  br i1 %t1032, label %bb300, label %bb301
bb300:
  %t1034 = load ptr, ptr %l566, !tbaa !29
  %t1035 = call ptr @__olang_region_or(ptr %t1034, ptr %v0)
  %t1036 = ptrtoint ptr %t1035 to i64
  store i64 %t1036, ptr %l567, !tbaa !24
  br label %bb301
bb301:
  %t1037 = load ptr, ptr %l50, !tbaa !29
  %t1038 = load i64, ptr %l51, !tbaa !24
  %t1039 = load i64, ptr %l567
  %t1040 = inttoptr i64 %t1039 to ptr
  %t1043 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %t1040, ptr %t1037, i64 %t1038)
  store i64 %t1043, ptr %l571
  br label %bb302
bb302:
  %t1044 = load i64, ptr %l571, !tbaa !24
  %t1045 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1045, ptr %l572, !tbaa !29
  store i64 %t1044, ptr %l573, !tbaa !24
  %t1047 = load i64, ptr @G_2ecompiler_2ffree_2eLCall, !tbaa !24
  store i64 %t1047, ptr %l574, !tbaa !24
  %t1048 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t1048, ptr %l575
  %t1049 = load ptr, ptr %l1, !tbaa !29
  %t1051 = call %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v1, ptr %t1049)
  store %"compiler/source:Span" %t1051, ptr %l577
  br label %bb303
bb303:
  %t1052 = load i64, ptr %l6, !tbaa !24
  %t1053 = load ptr, ptr %l572, !tbaa !29
  %t1054 = load i64, ptr %l573, !tbaa !24
  %t1055 = load i64, ptr %l574, !tbaa !24
  %t1056 = load %"compiler/source:Span", ptr %l575
  %t1057 = load %"compiler/source:Span", ptr %l577
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t1053, i64 %t1054, i64 %t1055, %"compiler/source:Span" %t1056, %"compiler/source:Span" %t1057, i64 %t1052)
  br label %bb304
bb304:
  br label %bb305
bb305:
  %t1059 = load i64, ptr %l51, !tbaa !24
  %t1061 = add i64 %t1059, 1
  store i64 %t1061, ptr %l51, !tbaa !24
  br label %bb293
bb306:
  br label %bb307
bb307:
  %t1063 = load ptr, ptr %l0, !tbaa !29
  %t1065 = getelementptr %"compiler/free:walker", ptr %t1063, i32 0, i32 2
  %t1066 = load i1, ptr %t1065, !tbaa !21
  br i1 %t1066, label %bb308, label %bb309
bb308:
  %t1068 = load ptr, ptr %l0, !tbaa !29
  %t1070 = getelementptr %"compiler/free:walker", ptr %t1068, i32 0, i32 29
  %t1071 = load i64, ptr %t1070, !tbaa !24
  %t1073 = icmp eq i64 %t1071, 0
  store i1 %t1073, ptr %l583, !tbaa !21
  br label %bb310
bb309:
  store i1 false, ptr %l583, !tbaa !21
  br label %bb310
bb310:
  %t1075 = load i1, ptr %l583, !tbaa !21
  br i1 %t1075, label %bb311, label %bb312
bb311:
  %t1076 = load ptr, ptr %l0, !tbaa !29
  %t1077 = load ptr, ptr %l1, !tbaa !29
  %t1078 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eorCallOf(ptr %v0, ptr %v1, ptr %t1076, ptr %t1077, i64 %t1078)
  br label %bb313
bb312:
  br label %bb314
bb313:
  br label %bb314
bb314:
  %t1082 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1082, ptr %l590
  br label %bb315
bb315:
  %t1083 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l590
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1083, ptr %l53
  %t1084 = load ptr, ptr %lp5
  store ptr %t1084, ptr %l54, !tbaa !29
  store i64 0, ptr %l55, !tbaa !24
  br label %bb316
bb316:
  %t1086 = load i64, ptr %l55, !tbaa !24
  store i64 %t1086, ptr %l592, !tbaa !24
  %t1087 = load ptr, ptr %l54, !tbaa !29
  %t1089 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t1087)
  store i64 %t1089, ptr %l594
  br label %bb317
bb317:
  %t1090 = load i64, ptr %l592, !tbaa !24
  %t1091 = load i64, ptr %l594, !tbaa !24
  %t1092 = icmp slt i64 %t1090, %t1091
  %t1094 = xor i1 %t1092, true
  br i1 %t1094, label %bb318, label %bb319
bb318:
  br label %bb328
bb319:
  br label %bb320
bb320:
  %t1096 = load ptr, ptr %l54, !tbaa !29
  %t1097 = load i64, ptr %l55, !tbaa !24
  %t1100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t1096, i64 %t1097)
  store i64 %t1100, ptr %l599
  br label %bb321
bb321:
  %t1101 = load i64, ptr %l599, !tbaa !24
  store i64 %t1101, ptr %l56, !tbaa !24
  %t1102 = load i64, ptr %l56, !tbaa !24
  %t1104 = call i64 @compiler_2ffree_2eokind(i64 %t1102)
  store i64 %t1104, ptr %l601
  br label %bb322
bb322:
  %t1105 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t1106 = load i64, ptr %l601, !tbaa !24
  %t1108 = icmp eq i64 %t1106, %t1105
  br i1 %t1108, label %bb323, label %bb324
bb323:
  %t1110 = load i64, ptr %l56, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s19, ptr %l53, i64 %t1110)
  br label %bb325
bb324:
  br label %bb326
bb325:
  br label %bb326
bb326:
  br label %bb327
bb327:
  %t1113 = load i64, ptr %l55, !tbaa !24
  %t1115 = add i64 %t1113, 1
  store i64 %t1115, ptr %l55, !tbaa !24
  br label %bb316
bb328:
  %t1117 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %s19, ptr %t1117, ptr %l53)
  br label %bb329
bb329:
  %t1120 = load ptr, ptr %lp5
  %t1121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1120
  call void @__olang_scope_close(ptr %s19)
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1121, ptr %rv
  br label %ret
bb330:
  store ptr %l16, ptr %l57, !tbaa !29
  store i64 0, ptr %l58, !tbaa !24
  br label %bb331
bb331:
  store %olang.scope zeroinitializer, ptr %s54
  %t1124 = load i64, ptr %l58, !tbaa !24
  store i64 %t1124, ptr %l612, !tbaa !24
  %t1125 = load ptr, ptr %l57, !tbaa !29
  %t1127 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %s0, ptr %t1125)
  store i64 %t1127, ptr %l614
  br label %bb332
bb332:
  %t1128 = load i64, ptr %l612, !tbaa !24
  %t1129 = load i64, ptr %l614, !tbaa !24
  %t1130 = icmp slt i64 %t1128, %t1129
  %t1132 = xor i1 %t1130, true
  br i1 %t1132, label %bb333, label %bb334
bb333:
  call void @__olang_scope_close(ptr %s54)
  br label %bb344
bb334:
  br label %bb335
bb335:
  %t1134 = load ptr, ptr %l57, !tbaa !29
  %t1135 = load i64, ptr %l58, !tbaa !24
  %t1138 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %s0, ptr %s0, ptr %t1134, i64 %t1135)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1138, ptr %l619
  br label %bb336
bb336:
  %t1140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s54, ptr %l619)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1140, ptr %l621
  br label %bb337
bb337:
  %t1141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l621
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1141, ptr %l59
  %t1142 = load ptr, ptr %lp5
  %t1145 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v2, ptr %s54, ptr %t1142, ptr %l59)
  store i64 %t1145, ptr %l624
  br label %bb338
bb338:
  %t1146 = load i1, ptr %l8, !tbaa !21
  %t1148 = xor i1 %t1146, true
  br i1 %t1148, label %bb339, label %bb340
bb339:
  store %olang.scope zeroinitializer, ptr %s55
  %t1150 = load ptr, ptr %l0, !tbaa !29
  %t1151 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %s54, ptr %s55, ptr %t1150, ptr %l59, %"compiler/source:Span" %t1151, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) }, i1 false, i64 -1, i64 -1)
  br label %bb341
bb340:
  br label %bb342
bb341:
  call void @__olang_scope_close(ptr %s55)
  br label %bb342
bb342:
  call void @__olang_scope_close(ptr %s54)
  br label %bb343
bb343:
  %t1155 = load i64, ptr %l58, !tbaa !24
  %t1157 = add i64 %t1155, 1
  store i64 %t1157, ptr %l58, !tbaa !24
  br label %bb331
bb344:
  %t1159 = load ptr, ptr %lp5
  store ptr %t1159, ptr %l632, !tbaa !29
  %t1160 = load i64, ptr @G_2ecompiler_2ffree_2eOUnk, !tbaa !24
  %t1162 = call i64 @compiler_2ffree_2eorig(i64 %t1160, i64 0)
  store i64 %t1162, ptr %l634
  br label %bb345
bb345:
  %t1163 = load ptr, ptr %l632, !tbaa !29
  %t1164 = load i64, ptr %l634, !tbaa !24
  %t1165 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t1163, i64 %t1164)
  store i64 %t1165, ptr %l635
  br label %bb346
bb346:
  %t1166 = load i1, ptr %l9, !tbaa !21
  br i1 %t1166, label %bb347, label %bb348
bb347:
  %t1168 = load ptr, ptr %l1, !tbaa !29
  %t1170 = getelementptr %"compiler/typed:Call", ptr %t1168, i32 0, i32 1
  %t1171 = load { i64, ptr }, ptr %t1170, !tbaa !27
  store { i64, ptr } %t1171, ptr %l60, !tbaa !27
  store i64 0, ptr %l61, !tbaa !24
  %t1173 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t1175 = extractvalue { i64, ptr } %t1173, 0
  store i64 %t1175, ptr %l62, !tbaa !24
  br label %bb349
bb348:
  %t1177 = load i1, ptr %l8, !tbaa !21
  %t1179 = xor i1 %t1177, true
  br i1 %t1179, label %bb393, label %bb394
bb349:
  %t1181 = load i64, ptr %l61, !tbaa !24
  %t1182 = load i64, ptr %l62, !tbaa !24
  %t1185 = icmp slt i64 %t1181, %t1182
  %t1187 = xor i1 %t1185, true
  br i1 %t1187, label %bb350, label %bb351
bb350:
  br label %bb363
bb351:
  br label %bb352
bb352:
  %t1189 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t1189, ptr %l645, !tbaa !27
  %t1190 = load i64, ptr %l61, !tbaa !24
  %t1192 = getelementptr { i64, ptr }, ptr %l645, i32 0, i32 1
  %t1193 = load ptr, ptr %t1192, !tbaa !27
  %t1194 = getelementptr ptr, ptr %t1193, i64 %t1190
  %t1195 = load ptr, ptr %t1194, !tbaa !39
  store ptr %t1195, ptr %l63, !tbaa !29
  %t1197 = load ptr, ptr %l0, !tbaa !29
  %t1199 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t1197)
  store ptr %t1199, ptr %l649
  br label %bb353
bb353:
  %t1200 = load ptr, ptr %l0, !tbaa !29
  %t1202 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v0, ptr %t1200)
  store ptr %t1202, ptr %l651
  br label %bb354
bb354:
  %t1203 = load ptr, ptr %l63, !tbaa !29
  %t1205 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1203)
  store i32 %t1205, ptr %l653
  br label %bb355
bb355:
  %t1206 = load ptr, ptr %l651, !tbaa !29
  %t1207 = load i32, ptr %l653, !tbaa !23
  %t1208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1206, i32 %t1207)
  store i32 %t1208, ptr %l654
  br label %bb356
bb356:
  %t1209 = load ptr, ptr %l649, !tbaa !29
  %t1210 = load i32, ptr %l654, !tbaa !23
  %t1211 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t1209, i32 %t1210)
  store i32 %t1211, ptr %l655
  br label %bb357
bb357:
  %t1212 = load i32, ptr %l655, !range !{i32 0, i32 33}
  %t1214 = trunc i64 21 to i32
  %t1215 = icmp eq i32 %t1212, %t1214
  br i1 %t1215, label %bb358, label %bb359
bb358:
  %t1217 = load ptr, ptr %l4, !tbaa !29
  %t1219 = getelementptr %"compiler/free:Free", ptr %t1217, i32 0, i32 42
  %t1220 = load ptr, ptr %l0, !tbaa !29
  %t1222 = getelementptr %"compiler/free:walker", ptr %t1220, i32 0, i32 1
  %t1223 = load i64, ptr %t1222, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1219, i64 %t1223, i1 true)
  br label %bb360
bb359:
  br label %bb361
bb360:
  br label %bb361
bb361:
  br label %bb362
bb362:
  %t1226 = load i64, ptr %l61, !tbaa !24
  %t1228 = add i64 %t1226, 1
  store i64 %t1228, ptr %l61, !tbaa !24
  br label %bb349
bb363:
  store i1 false, ptr %l64, !tbaa !21
  %t1230 = load ptr, ptr %l4, !tbaa !29
  %t1232 = getelementptr %"compiler/free:Free", ptr %t1230, i32 0, i32 39
  store ptr %t1232, ptr %l65, !tbaa !29
  store i64 0, ptr %l66, !tbaa !24
  br label %bb364
bb364:
  %t1234 = load i64, ptr %l66, !tbaa !24
  store i64 %t1234, ptr %l666, !tbaa !24
  %t1235 = load ptr, ptr %l65, !tbaa !29
  %t1237 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1235)
  store i64 %t1237, ptr %l668
  br label %bb365
bb365:
  %t1238 = load i64, ptr %l666, !tbaa !24
  %t1239 = load i64, ptr %l668, !tbaa !24
  %t1240 = icmp slt i64 %t1238, %t1239
  %t1242 = xor i1 %t1240, true
  br i1 %t1242, label %bb366, label %bb367
bb366:
  br label %bb388
bb367:
  br label %bb368
bb368:
  %t1244 = load ptr, ptr %l65, !tbaa !29
  %t1245 = load i64, ptr %l66, !tbaa !24
  %t1248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1244, i64 %t1245)
  store i64 %t1248, ptr %l673
  br label %bb369
bb369:
  %t1249 = load i64, ptr %l673, !tbaa !24
  store i64 %t1249, ptr %l67, !tbaa !24
  %t1250 = load i1, ptr %l10, !tbaa !21
  %t1252 = xor i1 %t1250, true
  br i1 %t1252, label %bb370, label %bb371
bb370:
  br label %bb388
bb371:
  br label %bb372
bb372:
  %t1254 = load ptr, ptr %l0, !tbaa !29
  %t1256 = getelementptr %"compiler/free:walker", ptr %t1254, i32 0, i32 2
  %t1257 = load i1, ptr %t1256, !tbaa !21
  %t1259 = xor i1 %t1257, true
  br i1 %t1259, label %bb373, label %bb374
bb373:
  %t1261 = load ptr, ptr %l4, !tbaa !29
  %t1263 = getelementptr %"compiler/free:Free", ptr %t1261, i32 0, i32 60
  %t1264 = load i64, ptr %l67, !tbaa !24
  %t1267 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1263, i64 %t1264)
  store ptr %t1267, ptr %l682
  br label %bb375
bb374:
  br label %bb377
bb375:
  %t1268 = load ptr, ptr %l0, !tbaa !29
  %t1270 = getelementptr %"compiler/free:walker", ptr %t1268, i32 0, i32 1
  %t1271 = load i64, ptr %t1270, !tbaa !24
  %t1272 = load ptr, ptr %l682, !tbaa !29
  %t1274 = call i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %t1272, i64 %t1271)
  store i64 %t1274, ptr %l685
  br label %bb376
bb376:
  br label %bb377
bb377:
  %t1275 = load ptr, ptr %l4, !tbaa !29
  %t1277 = getelementptr %"compiler/free:Free", ptr %t1275, i32 0, i32 34
  %t1278 = load i64, ptr %l67, !tbaa !24
  %t1281 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1277, i64 %t1278)
  store ptr %t1281, ptr %l689
  br label %bb378
bb378:
  %t1282 = load ptr, ptr %l689, !tbaa !29
  %t1283 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1282)
  store i64 %t1283, ptr %l690
  br label %bb379
bb379:
  %t1284 = load i64, ptr %l690, !tbaa !24
  %t1285 = icmp sgt i64 %t1284, 0
  br i1 %t1285, label %bb380, label %bb381
bb380:
  store i1 true, ptr %l692, !tbaa !21
  br label %bb383
bb381:
  %t1287 = load ptr, ptr %l4, !tbaa !29
  %t1289 = getelementptr %"compiler/free:Free", ptr %t1287, i32 0, i32 35
  %t1290 = load i64, ptr %l67, !tbaa !24
  %t1293 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1289, i64 %t1290)
  store i1 %t1293, ptr %l696
  br label %bb382
bb382:
  %t1294 = load i1, ptr %l696, !tbaa !21
  store i1 %t1294, ptr %l692, !tbaa !21
  br label %bb383
bb383:
  %t1295 = load i1, ptr %l692, !tbaa !21
  br i1 %t1295, label %bb384, label %bb385
bb384:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb386
bb385:
  br label %bb386
bb386:
  br label %bb387
bb387:
  %t1296 = load i64, ptr %l66, !tbaa !24
  %t1298 = add i64 %t1296, 1
  store i64 %t1298, ptr %l66, !tbaa !24
  br label %bb364
bb388:
  %t1300 = load i1, ptr %l64, !tbaa !21
  br i1 %t1300, label %bb389, label %bb390
bb389:
  %t1302 = load ptr, ptr %l0, !tbaa !29
  %t1303 = load %"compiler/source:Span", ptr %l3
  %t1304 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egoAll(ptr %v0, ptr %v1, ptr %t1302, %"compiler/source:Span" %t1303, ptr %t1304, i64 -1)
  br label %bb391
bb390:
  br label %bb392
bb391:
  br label %bb392
bb392:
  br label %bb397
bb393:
  %t1308 = load ptr, ptr %l0, !tbaa !29
  %t1309 = load %"compiler/source:Span", ptr %l3
  %t1310 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egoAll(ptr %v0, ptr %v1, ptr %t1308, %"compiler/source:Span" %t1309, ptr %t1310, i64 -1)
  br label %bb395
bb394:
  br label %bb396
bb395:
  br label %bb396
bb396:
  br label %bb397
bb397:
  %t1314 = load ptr, ptr %lp5
  %t1315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1314
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1315, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2elocalName(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca %"compiler/typed:Local"
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/free:Free", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/load:Loader", ptr %t10, i32 0, i32 3
  %t13 = load ptr, ptr %t12, !tbaa !29
  store ptr %t13, ptr %l6, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t14)
  store ptr %t16, ptr %l8
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 7
  %t23 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t19, i64 %a1)
  store %"compiler/typed:Local" %t23, ptr %l12
  br label %bb2
bb2:
  %t24 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 0
  %t25 = load i32, ptr %t24, !tbaa !23
  %t26 = load ptr, ptr %l6, !tbaa !29
  %t28 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t26, i32 %t25)
  store { i64, ptr } %t28, ptr %l14
  br label %bb3
bb3:
  %t29 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  call void @olang_textcopy(ptr %t32, ptr %t30, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eorCallOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l43 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l51 = alloca i64
  %l56 = alloca ptr
  %l67 = alloca { i64, ptr }
  %l70 = alloca %"compiler/free:orCall"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 2
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l3, !tbaa !24
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Call", ptr %t8, i32 0, i32 1
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
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
  store i64 0, ptr %l20, !tbaa !24
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
  store i64 %t39, ptr %l23, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l23, !tbaa !24
  store i64 %t41, ptr %l20, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l20, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l7, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t52 = load i64, ptr %l7, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Call", ptr %t62, i32 0, i32 1
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l43, !tbaa !27
  %t66 = load i64, ptr %l8, !tbaa !24
  %t68 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr ptr, ptr %t69, i64 %t66
  %t71 = load ptr, ptr %t70, !tbaa !39
  %t74 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootOf(ptr %v0, ptr %v1, ptr %v1, ptr %t61, ptr %t71)
  store ptr %t74, ptr %l46
  br label %bb14
bb14:
  %t75 = load ptr, ptr %l46, !tbaa !29
  store ptr %t75, ptr %l9, !tbaa !29
  %t76 = load ptr, ptr %l9, !tbaa !29
  %t78 = icmp eq ptr %t76, null
  br i1 %t78, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load ptr, ptr %l9, !tbaa !29
  %t84 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %t80, ptr %t81)
  store i64 %t84, ptr %l51
  br label %bb18
bb18:
  %t85 = load i64, ptr %l51, !tbaa !24
  store i64 %t85, ptr %l10, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = icmp slt i64 %t86, 0
  br i1 %t88, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/free:walker", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/free:Free", ptr %t93, i32 0, i32 51
  store ptr %t95, ptr %l56, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/free:walker", ptr %t96, i32 0, i32 1
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Call", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t105 = sext i32 %t103 to i64
  %t107 = load i64, ptr %l8, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t109 = load ptr, ptr %l9, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/typed:Call", ptr %t110, i32 0, i32 1
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l67, !tbaa !27
  %t114 = load i64, ptr %l8, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr ptr, ptr %t117, i64 %t114
  %t119 = load ptr, ptr %t118, !tbaa !39
  %t127 = call %"compiler/free:orCall" @compiler_2ffree_3aorCall_2ector(ptr %v1, ptr %v1, ptr %v0, i64 %t99, i64 %t105, i64 %a2, i64 %t107, i64 %t108, ptr %t109, ptr %t119)
  store %"compiler/free:orCall" %t127, ptr %l70
  br label %bb22
bb22:
  %t128 = load ptr, ptr %l56, !tbaa !29
  %t129 = load %"compiler/free:orCall", ptr %l70
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ePush_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v0, ptr %t128, %"compiler/free:orCall" %t129)
  br label %bb23
bb23:
  br label %ret
bb24:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l7, !tbaa !24
  br label %bb10
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/free:store"
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca %"compiler/source:Span"
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca i64
  %l54 = alloca ptr
  %l66 = alloca ptr
  %l68 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %l70 = alloca i1
  %l85 = alloca ptr
  %l87 = alloca i64
  %l89 = alloca %"compiler/source:Span"
  %l91 = alloca ptr
  %l96 = alloca %"compiler/typed:Local"
  %l100 = alloca i1
  %l103 = alloca i64
  %l105 = alloca i64
  %l115 = alloca i1
  %l118 = alloca i64
  %l121 = alloca i64
  %l129 = alloca i64
  %l134 = alloca i64
  %l135 = alloca i32
  %l138 = alloca i1
  %l140 = alloca i64
  %l142 = alloca i1
  %l148 = alloca i64
  %l150 = alloca i1
  %l152 = alloca ptr
  %l154 = alloca i32
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca i64
  %l159 = alloca i1
  %l164 = alloca i64
  %l170 = alloca i1
  %l172 = alloca ptr
  %l174 = alloca i64
  %l175 = alloca i64
  %l179 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l184 = alloca i64
  %l190 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l192 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l194 = alloca ptr
  %l196 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca i64
  %l212 = alloca i64
  %l213 = alloca i32
  %l229 = alloca i64
  %l232 = alloca ptr
  %l233 = alloca i64
  %l234 = alloca ptr
  %l235 = alloca ptr
  %l236 = alloca %"compiler/source:Span"
  %l240 = alloca { i64, ptr }
  %l245 = alloca i64
  %l248 = alloca i1
  %l251 = alloca i1
  %l255 = alloca ptr
  %l260 = alloca %"compiler/free:feed"
  %l266 = alloca ptr
  %l270 = alloca i64
  %l272 = alloca %"compiler/free:store"
  %l280 = alloca ptr
  %l281 = alloca ptr
  %l285 = alloca i64
  %l286 = alloca ptr
  %l287 = alloca i1
  %l300 = alloca ptr
  %l301 = alloca i1
  %l311 = alloca ptr
  %l312 = alloca i1
  %l320 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l335 = alloca ptr
  %l355 = alloca ptr
  %l356 = alloca i1
  %l363 = alloca ptr
  %l373 = alloca ptr
  %l384 = alloca ptr
  %l385 = alloca i1
  %l390 = alloca ptr
  %l391 = alloca i1
  %l401 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l409 = alloca i1
  %l415 = alloca i1
  %l416 = alloca ptr
  %l417 = alloca ptr
  %l419 = alloca %"compiler/source:Span"
  %l420 = alloca ptr
  %l421 = alloca i1
  %l426 = alloca ptr
  %l427 = alloca i64
  %l428 = alloca i64
  %l429 = alloca %"compiler/source:Span"
  %l430 = alloca %"compiler/source:Span"
  %l431 = alloca ptr
  %l432 = alloca i1
  %l441 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l447 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l448 = alloca ptr
  %l449 = alloca i1
  %l459 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l460 = alloca ptr
  %l461 = alloca i1
  %l468 = alloca ptr
  %l469 = alloca i1
  %l479 = alloca ptr
  %l487 = alloca i64
  %l490 = alloca i64
  %l491 = alloca i32
  %l492 = alloca ptr
  %l495 = alloca ptr
  %l496 = alloca i1
  %l517 = alloca { i64, ptr }
  %l524 = alloca ptr
  %l532 = alloca ptr
  %l533 = alloca i1
  %l546 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l555 = alloca { i64, ptr }
  %l562 = alloca ptr
  %l568 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l571 = alloca ptr
  %l572 = alloca i1
  %l581 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l584 = alloca i64
  %l587 = alloca ptr
  %l590 = alloca i64
  %l592 = alloca ptr
  %l594 = alloca i64
  %l597 = alloca i64
  %l600 = alloca ptr
  %l603 = alloca i64
  %l605 = alloca i64
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s24 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s36 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %s44 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 11
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l54, !tbaa !29
  %t7 = load ptr, ptr %l54, !tbaa !29
  %t8 = getelementptr %"compiler/free:walker", ptr %t7, i32 0, i32 11
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = add i64 %t9, 1
  %t13 = load ptr, ptr %l54, !tbaa !29
  %t14 = getelementptr %"compiler/free:walker", ptr %t13, i32 0, i32 11
  store i64 %t11, ptr %t14, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/free:walker", ptr %t15, i32 0, i32 13
  %t18 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb1:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/free:walker", ptr %t21, i32 0, i32 12
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/free:walker", ptr %t26, i32 0, i32 41
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l4
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = getelementptr %"compiler/free:walker", ptr %t31, i32 0, i32 12
  store i64 %t32, ptr %t35, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l66, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v1, ptr %t37)
  store %"compiler/source:Span" %t39, ptr %l68
  br label %bb2
bb2:
  %t40 = load %"compiler/source:Span", ptr %l68
  %t41 = load ptr, ptr %l66, !tbaa !29
  %t42 = getelementptr %"compiler/free:walker", ptr %t41, i32 0, i32 41
  store %"compiler/source:Span" %t40, ptr %t42
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t44 = load ptr, ptr %l69, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb3, label %bb4
bb3:
  %t47 = load ptr, ptr %l69, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 17}
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l70, !tbaa !21
  br label %bb4
bb4:
  %t51 = load i1, ptr %l70, !tbaa !21
  br i1 %t51, label %bb5, label %bb6
bb5:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [3 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 0
  %t56 = load %"compiler/source:Span", ptr %t55
  store %"compiler/source:Span" %t56, ptr %l5
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr { i64, [3 x i64] }, ptr %t58, i32 0, i32 1
  %t61 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t60, i32 0, i32 1
  %t62 = load i32, ptr %t61
  store i32 %t62, ptr %l6, !tbaa !23
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t66 = getelementptr { i64, [3 x i64] }, ptr %t64, i32 0, i32 1
  %t67 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t66, i32 0, i32 2
  %t68 = load ptr, ptr %t67
  store ptr %t68, ptr %l7, !tbaa !29
  br label %bb7
bb6:
  br label %bb120
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/free:walker", ptr %t70, i32 0, i32 20
  %t73 = load i32, ptr %l6, !tbaa !23
  %t75 = sext i32 %t73 to i64
  %t76 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t72, i64 %t75, i64 %t76)
  br label %bb8
bb8:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/free:walker", ptr %t80, i32 0, i32 21
  store ptr %t82, ptr %l85, !tbaa !29
  %t83 = load i32, ptr %l6, !tbaa !23
  %t85 = sext i32 %t83 to i64
  store i64 %t85, ptr %l87, !tbaa !24
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t86)
  store %"compiler/source:Span" %t88, ptr %l89
  br label %bb9
bb9:
  %t89 = load ptr, ptr %l85, !tbaa !29
  %t90 = load i64, ptr %l87, !tbaa !24
  %t91 = load %"compiler/source:Span", ptr %l89
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t89, i64 %t90, %"compiler/source:Span" %t91)
  br label %bb10
bb10:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = call ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v0, ptr %t92)
  store ptr %t94, ptr %l91
  br label %bb11
bb11:
  %t95 = load ptr, ptr %l91, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Body", ptr %t95, i32 0, i32 7
  %t98 = load i32, ptr %l6, !tbaa !23
  %t100 = sext i32 %t98 to i64
  %t103 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t97, i64 %t100)
  store %"compiler/typed:Local" %t103, ptr %l96
  br label %bb12
bb12:
  %t104 = getelementptr %"compiler/typed:Local", ptr %l96, i32 0, i32 4
  %t105 = load i32, ptr %t104, !range !{i32 0, i32 7}
  store i32 %t105, ptr %l8
  %t107 = load i32, ptr %l8, !range !{i32 0, i32 7}
  %t109 = trunc i64 2 to i32
  %t110 = icmp eq i32 %t107, %t109
  br i1 %t110, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb15
bb14:
  %t112 = load i32, ptr %l8, !range !{i32 0, i32 7}
  %t114 = trunc i64 3 to i32
  %t115 = icmp eq i32 %t112, %t114
  store i1 %t115, ptr %l100, !tbaa !21
  br label %bb15
bb15:
  %t117 = load i1, ptr %l100, !tbaa !21
  br i1 %t117, label %bb16, label %bb17
bb16:
  %t118 = load ptr, ptr %l7, !tbaa !29
  %t120 = call i64 @compiler_2ffree_2eownCopySite(ptr %v1, ptr %t118)
  store i64 %t120, ptr %l105
  br label %bb18
bb17:
  store i64 -1, ptr %l103, !tbaa !24
  br label %bb19
bb18:
  %t121 = load i64, ptr %l105, !tbaa !24
  store i64 %t121, ptr %l103, !tbaa !24
  br label %bb19
bb19:
  %t122 = load i64, ptr %l103, !tbaa !24
  store i64 %t122, ptr %l9, !tbaa !24
  %t123 = load i64, ptr %l9, !tbaa !24
  %t125 = icmp sge i64 %t123, 0
  br i1 %t125, label %bb20, label %bb21
bb20:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/free:walker", ptr %t127, i32 0, i32 33
  %t130 = load i32, ptr %l6, !tbaa !23
  %t132 = sext i32 %t130 to i64
  %t133 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %t129, i64 %t132, ptr %t133)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t137 = load i32, ptr %l8, !range !{i32 0, i32 7}
  %t139 = trunc i64 2 to i32
  %t140 = icmp eq i32 %t137, %t139
  br i1 %t140, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l115, !tbaa !21
  br label %bb26
bb25:
  %t142 = load i32, ptr %l8, !range !{i32 0, i32 7}
  %t144 = trunc i64 3 to i32
  %t145 = icmp eq i32 %t142, %t144
  store i1 %t145, ptr %l115, !tbaa !21
  br label %bb26
bb26:
  %t147 = load i1, ptr %l115, !tbaa !21
  br i1 %t147, label %bb27, label %bb28
bb27:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l7, !tbaa !29
  %t152 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %t148, ptr %t149)
  store i64 %t152, ptr %l121
  br label %bb29
bb28:
  store i64 -1, ptr %l118, !tbaa !24
  br label %bb30
bb29:
  %t153 = load i64, ptr %l121, !tbaa !24
  store i64 %t153, ptr %l118, !tbaa !24
  br label %bb30
bb30:
  %t154 = load i64, ptr %l118, !tbaa !24
  store i64 %t154, ptr %l10, !tbaa !24
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = icmp sge i64 %t155, 0
  br i1 %t157, label %bb31, label %bb32
bb31:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/free:walker", ptr %t159, i32 0, i32 39
  %t162 = load i32, ptr %l6, !tbaa !23
  %t164 = sext i32 %t162 to i64
  %t165 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t161, i64 %t164, i64 %t165)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/free:walker", ptr %t169, i32 0, i32 7
  %t172 = load i32, ptr %l6, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t177 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t171, i64 %t174)
  %t178 = extractvalue { i32, i64 } %t177, 1
  %t179 = extractvalue { i32, i64 } %t177, 0
  store i32 %t179, ptr %l135
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb36, label %ok.181, !prof !99
ok.181:
  store i64 %t178, ptr %l134
  br label %bb35
bb35:
  %t182 = load i64, ptr %l134, !tbaa !24
  store i64 %t182, ptr %l129, !tbaa !24
  br label %bb38
bb36:
  br label %bb37
bb37:
  store i64 -1, ptr %l129, !tbaa !24
  br label %bb38
bb38:
  %t183 = load i64, ptr %l129, !tbaa !24
  store i64 %t183, ptr %l11, !tbaa !24
  %t184 = load i64, ptr %l11, !tbaa !24
  %t186 = icmp sge i64 %t184, 0
  br i1 %t186, label %bb39, label %bb40
bb39:
  %t188 = load ptr, ptr %l7, !tbaa !29
  %t190 = call i64 @compiler_2ffree_2eownCopySite(ptr %v1, ptr %t188)
  store i64 %t190, ptr %l140
  br label %bb41
bb40:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb42
bb41:
  %t191 = load i64, ptr %l140, !tbaa !24
  %t192 = icmp sge i64 %t191, 0
  store i1 %t192, ptr %l138, !tbaa !21
  br label %bb42
bb42:
  %t194 = load i1, ptr %l138, !tbaa !21
  br i1 %t194, label %bb43, label %bb44
bb43:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/free:walker", ptr %t195, i32 0, i32 0
  %t198 = load ptr, ptr %t197, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/free:walker", ptr %t199, i32 0, i32 8
  %t202 = load i32, ptr %t201, !tbaa !23
  %t203 = load i64, ptr %l11, !tbaa !24
  %t207 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %t198, i32 %t202, i64 %t203)
  store i64 %t207, ptr %l148
  br label %bb45
bb44:
  store i1 false, ptr %l142, !tbaa !21
  br label %bb46
bb45:
  %t208 = load i64, ptr %l148, !tbaa !24
  %t209 = icmp slt i64 %t208, 0
  store i1 %t209, ptr %l142, !tbaa !21
  br label %bb46
bb46:
  %t211 = load i1, ptr %l142, !tbaa !21
  br i1 %t211, label %bb47, label %bb48
bb47:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/free:walker", ptr %t212, i32 0, i32 0
  %t215 = load ptr, ptr %t214, !tbaa !29
  store ptr %t215, ptr %l152, !tbaa !29
  %t216 = load ptr, ptr %l7, !tbaa !29
  %t218 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t216)
  store i32 %t218, ptr %l154
  br label %bb49
bb48:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb52
bb49:
  %t219 = load ptr, ptr %l152, !tbaa !29
  %t220 = load i32, ptr %l154, !tbaa !23
  %t221 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t219, i32 %t220)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l155
  br label %bb50
bb50:
  %t223 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %l155)
  store i64 %t223, ptr %l157
  br label %bb51
bb51:
  %t224 = load i64, ptr %l157, !tbaa !24
  %t225 = icmp sgt i64 %t224, 0
  store i1 %t225, ptr %l150, !tbaa !21
  br label %bb52
bb52:
  %t227 = load i1, ptr %l150, !tbaa !21
  br i1 %t227, label %bb53, label %bb54
bb53:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/free:walker", ptr %t228, i32 0, i32 0
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t234 = getelementptr %"compiler/free:walker", ptr %t232, i32 0, i32 1
  %t235 = load i64, ptr %t234, !tbaa !24
  %t238 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %t231, i64 %t235)
  store i64 %t238, ptr %l164
  br label %bb55
bb54:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb56
bb55:
  %t239 = load i64, ptr %l164, !tbaa !24
  %t240 = icmp eq i64 %t239, 0
  store i1 %t240, ptr %l159, !tbaa !21
  br label %bb56
bb56:
  %t242 = load i1, ptr %l159, !tbaa !21
  store i1 %t242, ptr %l12, !tbaa !21
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/free:walker", ptr %t243, i32 0, i32 34
  %t246 = load i64, ptr %t245, !tbaa !24
  store i64 %t246, ptr %l13, !tbaa !24
  %t248 = load i64, ptr %l9, !tbaa !24
  %t250 = icmp sge i64 %t248, 0
  br i1 %t250, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l170, !tbaa !21
  br label %bb59
bb58:
  %t252 = load i1, ptr %l12, !tbaa !21
  store i1 %t252, ptr %l170, !tbaa !21
  br label %bb59
bb59:
  %t254 = load i1, ptr %l170, !tbaa !21
  br i1 %t254, label %bb60, label %bb61
bb60:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l172, !tbaa !29
  %t256 = load ptr, ptr %l7, !tbaa !29
  %t258 = call i64 @compiler_2ffree_2eownCopySite(ptr %v1, ptr %t256)
  store i64 %t258, ptr %l174
  br label %bb62
bb61:
  br label %bb63
bb62:
  %t259 = load i64, ptr %l174, !tbaa !24
  %t260 = load ptr, ptr %l172, !tbaa !29
  %t261 = getelementptr %"compiler/free:walker", ptr %t260, i32 0, i32 34
  store i64 %t259, ptr %t261, !tbaa !24
  br label %bb63
bb63:
  %t262 = ptrtoint ptr %s1 to i64
  store i64 %t262, ptr %l175, !tbaa !24
  %t263 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14
  br i1 %t263, label %bb64, label %bb65
bb64:
  %t265 = call ptr @__olang_region_make(ptr %s1)
  %t266 = ptrtoint ptr %t265 to i64
  store i64 %t266, ptr %l175, !tbaa !24
  br label %bb65
bb65:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load ptr, ptr %l7, !tbaa !29
  %t269 = load i64, ptr %l175
  %t270 = inttoptr i64 %t269 to ptr
  %t273 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %t270, ptr %t267, ptr %t268)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l179
  br label %bb66
bb66:
  %t274 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14
  br i1 %t274, label %bb67, label %bb68
bb67:
  %t276 = load i64, ptr %l175
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l179, i32 0, i32 0
  %t279 = load { i64, ptr }, ptr %t278
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = call ptr @__olang_region_or(ptr %t280, ptr null)
  %t282 = icmp ne ptr %t281, null
  %t283 = select i1 %t282, ptr %t281, ptr null
  %t284 = icmp eq ptr %t283, %t277
  call void @__olang_region_settle(ptr %t277, i1 %t284)
  br label %bb68
bb68:
  %t285 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l179
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l14
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = load i64, ptr %l13, !tbaa !24
  %t290 = getelementptr %"compiler/free:walker", ptr %t286, i32 0, i32 34
  store i64 %t287, ptr %t290, !tbaa !24
  %t291 = load i1, ptr %l12, !tbaa !21
  br i1 %t291, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s5
  %t293 = ptrtoint ptr %s1 to i64
  store i64 %t293, ptr %l184, !tbaa !24
  %t294 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14
  br i1 %t294, label %bb71, label %bb72
bb70:
  br label %bb81
bb71:
  %t296 = call ptr @__olang_region_make(ptr %s1)
  %t297 = ptrtoint ptr %t296 to i64
  store i64 %t297, ptr %l184, !tbaa !24
  br label %bb72
bb72:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t300 = getelementptr %"compiler/free:walker", ptr %t298, i32 0, i32 0
  %t301 = load ptr, ptr %t300, !tbaa !29
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t304 = load i64, ptr %l184
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = call ptr @__olang_scope_alloc_a(ptr %t305, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %t306
  %t307 = load i64, ptr %l184
  %t308 = inttoptr i64 %t307 to ptr
  %t309 = load i64, ptr %l184
  %t310 = inttoptr i64 %t309 to ptr
  %t313 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %t308, ptr %t310, ptr %t301, ptr %t306)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %l190
  br label %bb73
bb73:
  %t314 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14
  br i1 %t314, label %bb74, label %bb75
bb74:
  %t316 = load i64, ptr %l184
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318
  %t320 = extractvalue { i64, ptr } %t319, 1
  %t321 = call ptr @__olang_region_or(ptr %t320, ptr null)
  %t322 = icmp ne ptr %t321, null
  %t323 = select i1 %t322, ptr %t321, ptr null
  %t324 = icmp eq ptr %t323, %t317
  call void @__olang_region_settle(ptr %t317, i1 %t324)
  br label %bb75
bb75:
  %t325 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l192
  %t326 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l190
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %l14
  %t327 = load i1, ptr @olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14
  br i1 %t327, label %bb76, label %bb77
bb76:
  %t329 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l192, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr null
  call void @__olang_region_drop(ptr %t334)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l192
  br label %bb77
bb77:
  %t335 = load ptr, ptr %l0, !tbaa !29
  store ptr %t335, ptr %l194, !tbaa !29
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/free:walker", ptr %t336, i32 0, i32 0
  %t339 = load ptr, ptr %t338, !tbaa !29
  store ptr %t339, ptr %l196, !tbaa !29
  %t340 = load ptr, ptr %l7, !tbaa !29
  %t342 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t340)
  store i32 %t342, ptr %l198
  br label %bb78
bb78:
  %t343 = load ptr, ptr %l196, !tbaa !29
  %t344 = load i32, ptr %l198, !tbaa !23
  %t345 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %v0, ptr %t343, i32 %t344)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %l199
  br label %bb79
bb79:
  %t346 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  %t347 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t346, ptr %t347
  %t348 = load ptr, ptr %l7, !tbaa !29
  %t349 = load %"compiler/source:Span", ptr %l5
  %t350 = load ptr, ptr %l194, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyLeaves(ptr %v0, ptr %v0, ptr %v1, ptr %t350, ptr %t347, ptr %t348, %"compiler/source:Span" %t349)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s5)
  br label %bb81
bb81:
  %t354 = load ptr, ptr %l0, !tbaa !29
  %t355 = load i32, ptr %l6, !tbaa !23
  %t357 = sext i32 %t355 to i64
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %s1, ptr %t354, i64 %t357, ptr %l14)
  br label %bb82
bb82:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/free:walker", ptr %t361, i32 0, i32 7
  %t364 = load i32, ptr %l6, !tbaa !23
  %t366 = sext i32 %t364 to i64
  %t369 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t363, i64 %t366)
  %t370 = extractvalue { i32, i64 } %t369, 1
  %t371 = extractvalue { i32, i64 } %t369, 0
  store i32 %t371, ptr %l213
  %t372 = icmp ne i32 %t371, 0
  br i1 %t372, label %bb84, label %ok.373, !prof !99
ok.373:
  store i64 %t370, ptr %l212
  br label %bb83
bb83:
  %t374 = load i64, ptr %l212, !tbaa !24
  store i64 %t374, ptr %l207, !tbaa !24
  br label %bb86
bb84:
  br label %bb85
bb85:
  store i64 -1, ptr %l207, !tbaa !24
  br label %bb86
bb86:
  %t375 = load i64, ptr %l207, !tbaa !24
  store i64 %t375, ptr %l15, !tbaa !24
  %t376 = load i64, ptr %l15, !tbaa !24
  %t378 = icmp sge i64 %t376, 0
  br i1 %t378, label %bb87, label %bb88
bb87:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load i64, ptr %l15, !tbaa !24
  %t382 = load ptr, ptr %l7, !tbaa !29
  %t383 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreField(ptr %v0, ptr %v1, ptr %s1, ptr %t380, i64 %t381, ptr %t382, ptr %l14, %"compiler/source:Span" %t383)
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  %t389 = load i64, ptr %l15, !tbaa !24
  %t391 = icmp sge i64 %t389, 0
  br i1 %t391, label %bb91, label %bb92
bb91:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t394 = load i64, ptr %l15, !tbaa !24
  %t395 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeField(ptr %v0, ptr %v1, ptr %t393, i64 %t394, ptr %t395)
  br label %bb93
bb92:
  br label %bb94
bb93:
  br label %bb94
bb94:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t400 = load i32, ptr %l6, !tbaa !23
  %t402 = sext i32 %t400 to i64
  %t405 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %t399, i64 %t402)
  store i64 %t405, ptr %l229
  br label %bb95
bb95:
  %t406 = load i64, ptr %l229, !tbaa !24
  store i64 %t406, ptr %l16, !tbaa !24
  %t407 = load i64, ptr %l16, !tbaa !24
  %t409 = icmp sge i64 %t407, 0
  br i1 %t409, label %bb96, label %bb97
bb96:
  store %olang.scope zeroinitializer, ptr %s8
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l232, !tbaa !29
  %t412 = load i64, ptr %l16, !tbaa !24
  store i64 %t412, ptr %l233, !tbaa !24
  %t413 = load ptr, ptr %l7, !tbaa !29
  store ptr %t413, ptr %l234, !tbaa !29
  store ptr %l14, ptr %l235, !tbaa !29
  %t414 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t414, ptr %l236
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load i32, ptr %l6, !tbaa !23
  %t418 = sext i32 %t416 to i64
  %t421 = call { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3awalker_2elocalName(ptr %v0, ptr %s8, ptr %t415, i64 %t418)
  store { i64, ptr } %t421, ptr %l240
  br label %bb98
bb97:
  br label %bb100
bb98:
  %t422 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 0
  %t424 = extractvalue { i64, ptr } %t422, 1
  %t425 = mul i64 %t423, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t425)
  call void @llvm.memcpy.p0.p0.i64(ptr %t426, ptr %t424, i64 %t425, i1 false)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  %t429 = load ptr, ptr %l232, !tbaa !29
  %t430 = load i64, ptr %l233, !tbaa !24
  %t431 = load ptr, ptr %l234, !tbaa !29
  %t432 = load ptr, ptr %l235, !tbaa !29
  %t433 = load %"compiler/source:Span", ptr %l236
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %s1, ptr %s8, ptr %t429, i64 %t430, ptr %t431, ptr %t432, %"compiler/source:Span" %t433, { i64, ptr } %t428, i1 false)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s8)
  br label %bb100
bb100:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t436 = load i32, ptr %l6, !tbaa !23
  %t438 = sext i32 %t436 to i64
  %t441 = call i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %t435, i64 %t438)
  store i64 %t441, ptr %l245
  br label %bb101
bb101:
  %t442 = load i64, ptr %l245, !tbaa !24
  store i64 %t442, ptr %l17, !tbaa !24
  %t443 = load i64, ptr %l17, !tbaa !24
  %t445 = icmp sge i64 %t443, 0
  br i1 %t445, label %bb102, label %bb103
bb102:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/free:walker", ptr %t447, i32 0, i32 2
  %t450 = load i1, ptr %t449, !tbaa !21
  store i1 %t450, ptr %l248, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l248, !tbaa !21
  br label %bb104
bb104:
  %t452 = load i1, ptr %l248, !tbaa !21
  br i1 %t452, label %bb105, label %bb106
bb105:
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t455 = getelementptr %"compiler/free:walker", ptr %t453, i32 0, i32 29
  %t456 = load i64, ptr %t455, !tbaa !24
  %t458 = icmp eq i64 %t456, 0
  store i1 %t458, ptr %l251, !tbaa !21
  br label %bb107
bb106:
  store i1 false, ptr %l251, !tbaa !21
  br label %bb107
bb107:
  %t460 = load i1, ptr %l251, !tbaa !21
  br i1 %t460, label %bb108, label %bb109
bb108:
  %t461 = load ptr, ptr %l0, !tbaa !29
  store ptr %t461, ptr %l255, !tbaa !29
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t464 = getelementptr %"compiler/free:walker", ptr %t462, i32 0, i32 0
  %t465 = load ptr, ptr %t464, !tbaa !29
  %t467 = getelementptr %"compiler/free:Free", ptr %t465, i32 0, i32 73
  %t468 = load i64, ptr %l17, !tbaa !24
  %t471 = call %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %t467, i64 %t468)
  store %"compiler/free:feed" %t471, ptr %l260
  br label %bb110
bb109:
  br label %bb119
bb110:
  %t472 = getelementptr %"compiler/free:feed", ptr %l260, i32 0, i32 2
  %t473 = load i64, ptr %t472, !tbaa !24
  %t474 = load ptr, ptr %l7, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l5
  %t476 = load ptr, ptr %l255, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %t476, i64 %t473, ptr %t474, %"compiler/source:Span" %t475, i1 false)
  br label %bb111
bb111:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = getelementptr %"compiler/free:walker", ptr %t480, i32 0, i32 0
  %t483 = load ptr, ptr %t482, !tbaa !29
  %t485 = getelementptr %"compiler/free:Free", ptr %t483, i32 0, i32 46
  store ptr %t485, ptr %l266, !tbaa !29
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = getelementptr %"compiler/free:walker", ptr %t486, i32 0, i32 0
  %t489 = load ptr, ptr %t488, !tbaa !29
  %t491 = getelementptr %"compiler/free:Free", ptr %t489, i32 0, i32 46
  %t493 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %t491)
  store i64 %t493, ptr %l270
  br label %bb112
bb112:
  %t494 = load i64, ptr %l270, !tbaa !24
  %t495 = sub i64 %t494, 1
  %t496 = load ptr, ptr %l266, !tbaa !29
  %t498 = call %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v0, ptr %t496, i64 %t495)
  store %"compiler/free:store" %t498, ptr %l272
  br label %bb113
bb113:
  %t499 = load %"compiler/free:store", ptr %l272
  store %"compiler/free:store" %t499, ptr %l18
  %t500 = getelementptr %"compiler/free:store", ptr %l18, i32 0, i32 4
  %t501 = load i64, ptr %t500, !tbaa !24
  %t502 = load i64, ptr @G_2ecompiler_2ffree_2eSFresh, !tbaa !24
  %t505 = icmp eq i64 %t501, %t502
  br i1 %t505, label %bb114, label %bb115
bb114:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/free:walker", ptr %t507, i32 0, i32 0
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t512 = getelementptr %"compiler/free:Free", ptr %t510, i32 0, i32 73
  %t513 = load i64, ptr %l17, !tbaa !24
  %t516 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eRefMut_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %v0, ptr %t512, i64 %t513)
  store ptr %t516, ptr %l280
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t517 = load ptr, ptr %l280, !tbaa !29
  store ptr %t517, ptr %l281, !tbaa !29
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t520 = getelementptr %"compiler/free:walker", ptr %t518, i32 0, i32 0
  %t521 = load ptr, ptr %t520, !tbaa !29
  %t522 = load ptr, ptr %l7, !tbaa !29
  %t525 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %t521, ptr %t522)
  store i64 %t525, ptr %l285
  br label %bb117
bb117:
  %t526 = load i64, ptr %l285, !tbaa !24
  %t527 = load ptr, ptr %l281, !tbaa !29
  %t528 = getelementptr %"compiler/free:feed", ptr %t527, i32 0, i32 6
  store i64 %t526, ptr %t528, !tbaa !24
  br label %bb118
bb118:
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s1)
  br label %bb321
bb120:
  %t529 = load ptr, ptr %l1, !tbaa !29
  store ptr %t529, ptr %l286, !tbaa !29
  store i1 false, ptr %l287, !tbaa !21
  %t530 = load ptr, ptr %l286, !tbaa !29
  %t531 = icmp ne ptr %t530, null
  br i1 %t531, label %bb121, label %bb122
bb121:
  %t533 = load ptr, ptr %l286, !tbaa !29
  %t534 = load i64, ptr %t533, !range !{i64 0, i64 17}
  %t536 = icmp eq i64 %t534, 1
  store i1 %t536, ptr %l287, !tbaa !21
  br label %bb122
bb122:
  %t537 = load i1, ptr %l287, !tbaa !21
  br i1 %t537, label %bb123, label %bb124
bb123:
  %t538 = load ptr, ptr %l1, !tbaa !29
  %t540 = getelementptr { i64, [3 x i64] }, ptr %t538, i32 0, i32 1
  %t541 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t540, i32 0, i32 0
  %t542 = load %"compiler/source:Span", ptr %t541
  store %"compiler/source:Span" %t542, ptr %l19
  %t544 = load ptr, ptr %l1, !tbaa !29
  %t546 = getelementptr { i64, [3 x i64] }, ptr %t544, i32 0, i32 1
  %t547 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t546, i32 0, i32 1
  %t548 = load ptr, ptr %t547
  store ptr %t548, ptr %l20, !tbaa !29
  %t550 = load ptr, ptr %l1, !tbaa !29
  %t552 = getelementptr { i64, [3 x i64] }, ptr %t550, i32 0, i32 1
  %t553 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t552, i32 0, i32 2
  %t554 = load ptr, ptr %t553
  store ptr %t554, ptr %l21, !tbaa !29
  br label %bb125
bb124:
  br label %bb127
bb125:
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t557 = load %"compiler/source:Span", ptr %l19
  %t558 = load ptr, ptr %l20, !tbaa !29
  %t559 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eassign(ptr %v0, ptr %v1, ptr %v1, ptr %t556, %"compiler/source:Span" %t557, ptr %t558, ptr %t559)
  br label %bb126
bb126:
  br label %bb321
bb127:
  %t564 = load ptr, ptr %l1, !tbaa !29
  store ptr %t564, ptr %l300, !tbaa !29
  store i1 false, ptr %l301, !tbaa !21
  %t565 = load ptr, ptr %l300, !tbaa !29
  %t566 = icmp ne ptr %t565, null
  br i1 %t566, label %bb128, label %bb129
bb128:
  %t568 = load ptr, ptr %l300, !tbaa !29
  %t569 = load i64, ptr %t568, !range !{i64 0, i64 17}
  %t571 = icmp eq i64 %t569, 2
  store i1 %t571, ptr %l301, !tbaa !21
  br label %bb129
bb129:
  %t572 = load i1, ptr %l301, !tbaa !21
  br i1 %t572, label %bb130, label %bb131
bb130:
  %t573 = load ptr, ptr %l1, !tbaa !29
  %t575 = getelementptr { i64, [3 x i64] }, ptr %t573, i32 0, i32 1
  %t576 = getelementptr { %"compiler/source:Span", ptr }, ptr %t575, i32 0, i32 0
  %t577 = load %"compiler/source:Span", ptr %t576
  store %"compiler/source:Span" %t577, ptr %l22
  %t579 = load ptr, ptr %l1, !tbaa !29
  %t581 = getelementptr { i64, [3 x i64] }, ptr %t579, i32 0, i32 1
  %t582 = getelementptr { %"compiler/source:Span", ptr }, ptr %t581, i32 0, i32 1
  %t583 = load ptr, ptr %t582
  store ptr %t583, ptr %l23, !tbaa !29
  br label %bb132
bb131:
  br label %bb134
bb132:
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l22
  %t587 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eeval(ptr %v0, ptr %v1, ptr %t585, %"compiler/source:Span" %t586, ptr %t587)
  br label %bb133
bb133:
  br label %bb321
bb134:
  %t591 = load ptr, ptr %l1, !tbaa !29
  store ptr %t591, ptr %l311, !tbaa !29
  store i1 false, ptr %l312, !tbaa !21
  %t592 = load ptr, ptr %l311, !tbaa !29
  %t593 = icmp ne ptr %t592, null
  br i1 %t593, label %bb135, label %bb136
bb135:
  %t595 = load ptr, ptr %l311, !tbaa !29
  %t596 = load i64, ptr %t595, !range !{i64 0, i64 17}
  %t598 = icmp eq i64 %t596, 3
  store i1 %t598, ptr %l312, !tbaa !21
  br label %bb136
bb136:
  %t599 = load i1, ptr %l312, !tbaa !21
  br i1 %t599, label %bb137, label %bb138
bb137:
  %t600 = load ptr, ptr %l1, !tbaa !29
  %t602 = getelementptr { i64, [3 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", ptr }, ptr %t602, i32 0, i32 1
  %t604 = load ptr, ptr %t603
  store ptr %t604, ptr %l24, !tbaa !29
  br label %bb139
bb138:
  br label %bb153
bb139:
  store %olang.scope zeroinitializer, ptr %s13
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t607 = load ptr, ptr %l24, !tbaa !29
  %t609 = getelementptr %"compiler/typed:If", ptr %t607, i32 0, i32 0
  %t610 = load ptr, ptr %t609, !tbaa !29
  %t613 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s13, ptr %t606, ptr %t610)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t613, ptr %l320
  br label %bb140
bb140:
  %t614 = load ptr, ptr %l0, !tbaa !29
  %t616 = getelementptr %"compiler/free:walker", ptr %t614, i32 0, i32 11
  %t617 = load i64, ptr %t616, !tbaa !24
  store i64 %t617, ptr %l25, !tbaa !24
  %t619 = load ptr, ptr %l0, !tbaa !29
  %t620 = load ptr, ptr %l24, !tbaa !29
  %t622 = getelementptr %"compiler/typed:If", ptr %t620, i32 0, i32 1
  %t623 = load ptr, ptr %t622, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t619, ptr %t623)
  br label %bb141
bb141:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = getelementptr %"compiler/free:walker", ptr %t626, i32 0, i32 11
  %t629 = load i64, ptr %t628, !tbaa !24
  %t631 = sub i64 %t629, 1
  store i64 %t631, ptr %l26, !tbaa !24
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t635 = getelementptr %"compiler/free:walker", ptr %t633, i32 0, i32 11
  %t636 = load i64, ptr %t635, !tbaa !24
  store i64 %t636, ptr %l27, !tbaa !24
  %t638 = load ptr, ptr %l24, !tbaa !29
  %t640 = getelementptr %"compiler/typed:If", ptr %t638, i32 0, i32 2
  %t641 = load ptr, ptr %t640, !tbaa !29
  %t643 = icmp eq ptr %t641, null
  %t645 = xor i1 %t643, true
  br i1 %t645, label %bb142, label %bb143
bb142:
  %t647 = load ptr, ptr %l0, !tbaa !29
  store ptr %t647, ptr %l335, !tbaa !29
  %t648 = load ptr, ptr %l24, !tbaa !29
  %t650 = getelementptr %"compiler/typed:If", ptr %t648, i32 0, i32 2
  %t651 = load ptr, ptr %t650, !tbaa !29
  %t653 = icmp eq ptr %t651, null
  br i1 %t653, label %bb144, label %bb145
bb143:
  br label %bb148
bb144:
  call void @__olang_check_failed(ptr @olang_loc_d8246f320a19bbf9_8add34a618744eed)
  unreachable
bb145:
  br label %bb146
bb146:
  %t655 = load ptr, ptr %l24, !tbaa !29
  %t657 = getelementptr %"compiler/typed:If", ptr %t655, i32 0, i32 2
  %t658 = load ptr, ptr %t657, !tbaa !29
  %t659 = load ptr, ptr %l335, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t659, ptr %t658)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t661 = load ptr, ptr %l0, !tbaa !29
  %t663 = getelementptr %"compiler/free:walker", ptr %t661, i32 0, i32 16
  %t664 = load i64, ptr %l25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t663, i64 %t664)
  br label %bb149
bb149:
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t669 = getelementptr %"compiler/free:walker", ptr %t667, i32 0, i32 17
  %t670 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t669, i64 %t670)
  br label %bb150
bb150:
  %t673 = load ptr, ptr %l0, !tbaa !29
  %t675 = getelementptr %"compiler/free:walker", ptr %t673, i32 0, i32 18
  %t676 = load i64, ptr %l27, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t675, i64 %t676)
  br label %bb151
bb151:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = getelementptr %"compiler/free:walker", ptr %t679, i32 0, i32 19
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t684 = getelementptr %"compiler/free:walker", ptr %t682, i32 0, i32 11
  %t685 = load i64, ptr %t684, !tbaa !24
  %t687 = sub i64 %t685, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t681, i64 %t687)
  br label %bb152
bb152:
  call void @__olang_scope_close(ptr %s13)
  br label %bb321
bb153:
  %t690 = load ptr, ptr %l1, !tbaa !29
  store ptr %t690, ptr %l355, !tbaa !29
  store i1 false, ptr %l356, !tbaa !21
  %t691 = load ptr, ptr %l355, !tbaa !29
  %t692 = icmp ne ptr %t691, null
  br i1 %t692, label %bb154, label %bb155
bb154:
  %t694 = load ptr, ptr %l355, !tbaa !29
  %t695 = load i64, ptr %t694, !range !{i64 0, i64 17}
  %t697 = icmp eq i64 %t695, 4
  store i1 %t697, ptr %l356, !tbaa !21
  br label %bb155
bb155:
  %t698 = load i1, ptr %l356, !tbaa !21
  br i1 %t698, label %bb156, label %bb157
bb156:
  %t699 = load ptr, ptr %l1, !tbaa !29
  %t701 = getelementptr { i64, [3 x i64] }, ptr %t699, i32 0, i32 1
  %t702 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t701, i32 0, i32 1
  %t703 = load ptr, ptr %t702
  store ptr %t703, ptr %l28, !tbaa !29
  %t705 = load ptr, ptr %l1, !tbaa !29
  %t707 = getelementptr { i64, [3 x i64] }, ptr %t705, i32 0, i32 1
  %t708 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t707, i32 0, i32 2
  %t709 = load ptr, ptr %t708
  store ptr %t709, ptr %l29, !tbaa !29
  br label %bb158
bb157:
  br label %bb166
bb158:
  %t711 = load ptr, ptr %l0, !tbaa !29
  store ptr %t711, ptr %l363, !tbaa !29
  %t712 = load ptr, ptr %l363, !tbaa !29
  %t713 = getelementptr %"compiler/free:walker", ptr %t712, i32 0, i32 23
  %t714 = load i64, ptr %t713, !tbaa !24
  %t716 = add i64 %t714, 1
  %t718 = load ptr, ptr %l363, !tbaa !29
  %t719 = getelementptr %"compiler/free:walker", ptr %t718, i32 0, i32 23
  store i64 %t716, ptr %t719, !tbaa !24
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load ptr, ptr %l28, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t720, ptr %t721)
  br label %bb159
bb159:
  %t724 = load ptr, ptr %l29, !tbaa !29
  %t726 = icmp eq ptr %t724, null
  %t728 = xor i1 %t726, true
  br i1 %t728, label %bb160, label %bb161
bb160:
  %t730 = load ptr, ptr %l0, !tbaa !29
  %t731 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t730, ptr %t731)
  br label %bb162
bb161:
  br label %bb163
bb162:
  br label %bb163
bb163:
  %t734 = load ptr, ptr %l0, !tbaa !29
  store ptr %t734, ptr %l373, !tbaa !29
  %t735 = load ptr, ptr %l373, !tbaa !29
  %t736 = getelementptr %"compiler/free:walker", ptr %t735, i32 0, i32 23
  %t737 = load i64, ptr %t736, !tbaa !24
  %t739 = sub i64 %t737, 1
  %t741 = load ptr, ptr %l373, !tbaa !29
  %t742 = getelementptr %"compiler/free:walker", ptr %t741, i32 0, i32 23
  store i64 %t739, ptr %t742, !tbaa !24
  %t743 = load ptr, ptr %l0, !tbaa !29
  %t745 = getelementptr %"compiler/free:walker", ptr %t743, i32 0, i32 14
  %t746 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t745, i64 %t746)
  br label %bb164
bb164:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/free:walker", ptr %t749, i32 0, i32 15
  %t752 = load ptr, ptr %l0, !tbaa !29
  %t754 = getelementptr %"compiler/free:walker", ptr %t752, i32 0, i32 11
  %t755 = load i64, ptr %t754, !tbaa !24
  %t757 = sub i64 %t755, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t751, i64 %t757)
  br label %bb165
bb165:
  br label %bb321
bb166:
  %t760 = load ptr, ptr %l1, !tbaa !29
  store ptr %t760, ptr %l384, !tbaa !29
  store i1 false, ptr %l385, !tbaa !21
  %t761 = load ptr, ptr %l384, !tbaa !29
  %t762 = icmp ne ptr %t761, null
  br i1 %t762, label %bb167, label %bb168
bb167:
  %t764 = load ptr, ptr %l384, !tbaa !29
  %t765 = load i64, ptr %t764, !range !{i64 0, i64 17}
  %t767 = icmp eq i64 %t765, 6
  store i1 %t767, ptr %l385, !tbaa !21
  br label %bb168
bb168:
  %t768 = load i1, ptr %l385, !tbaa !21
  br i1 %t768, label %bb169, label %bb170
bb169:
  %t769 = load ptr, ptr %l1, !tbaa !29
  %t771 = getelementptr { i64, [3 x i64] }, ptr %t769, i32 0, i32 1
  %t772 = getelementptr { %"compiler/source:Span", ptr }, ptr %t771, i32 0, i32 1
  %t773 = load ptr, ptr %t772
  store ptr %t773, ptr %l30, !tbaa !29
  br label %bb175
bb170:
  %t775 = load ptr, ptr %l1, !tbaa !29
  store ptr %t775, ptr %l390, !tbaa !29
  store i1 false, ptr %l391, !tbaa !21
  %t776 = load ptr, ptr %l390, !tbaa !29
  %t777 = icmp ne ptr %t776, null
  br i1 %t777, label %bb171, label %bb172
bb171:
  %t779 = load ptr, ptr %l390, !tbaa !29
  %t780 = load i64, ptr %t779, !range !{i64 0, i64 17}
  %t782 = icmp eq i64 %t780, 16
  store i1 %t782, ptr %l391, !tbaa !21
  br label %bb172
bb172:
  %t783 = load i1, ptr %l391, !tbaa !21
  br i1 %t783, label %bb173, label %bb174
bb173:
  %t784 = load ptr, ptr %l1, !tbaa !29
  %t786 = getelementptr { i64, [3 x i64] }, ptr %t784, i32 0, i32 1
  %t787 = getelementptr { %"compiler/source:Span", ptr }, ptr %t786, i32 0, i32 1
  %t788 = load ptr, ptr %t787
  store ptr %t788, ptr %l30, !tbaa !29
  br label %bb175
bb174:
  br label %bb206
bb175:
  %t790 = load ptr, ptr %l30, !tbaa !29
  %t792 = icmp eq ptr %t790, null
  %t794 = xor i1 %t792, true
  br i1 %t794, label %bb176, label %bb177
bb176:
  store %olang.scope zeroinitializer, ptr %s18
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t797 = load ptr, ptr %l30, !tbaa !29
  %t800 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s18, ptr %t796, ptr %t797)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t800, ptr %l401
  br label %bb178
bb177:
  br label %bb192
bb178:
  %t801 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l401
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t801, ptr %l31
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t804 = getelementptr %"compiler/free:walker", ptr %t802, i32 0, i32 2
  %t805 = load i1, ptr %t804, !tbaa !21
  %t807 = xor i1 %t805, true
  br i1 %t807, label %bb179, label %bb180
bb179:
  %t809 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eresult(ptr %v0, ptr %s18, ptr %t809, ptr %l31)
  br label %bb181
bb180:
  br label %bb182
bb181:
  br label %bb182
bb182:
  %t812 = load ptr, ptr %l0, !tbaa !29
  %t814 = getelementptr %"compiler/free:walker", ptr %t812, i32 0, i32 2
  %t815 = load i1, ptr %t814, !tbaa !21
  br i1 %t815, label %bb183, label %bb184
bb183:
  %t817 = load ptr, ptr %l0, !tbaa !29
  %t819 = getelementptr %"compiler/free:walker", ptr %t817, i32 0, i32 0
  %t820 = load ptr, ptr %t819, !tbaa !29
  %t822 = getelementptr %"compiler/free:Free", ptr %t820, i32 0, i32 67
  %t823 = load ptr, ptr %l0, !tbaa !29
  %t825 = getelementptr %"compiler/free:walker", ptr %t823, i32 0, i32 1
  %t826 = load i64, ptr %t825, !tbaa !24
  %t829 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t822, i64 %t826)
  store i1 %t829, ptr %l415
  br label %bb185
bb184:
  store i1 false, ptr %l409, !tbaa !21
  br label %bb186
bb185:
  %t830 = load i1, ptr %l415, !tbaa !21
  store i1 %t830, ptr %l409, !tbaa !21
  br label %bb186
bb186:
  %t831 = load i1, ptr %l409, !tbaa !21
  br i1 %t831, label %bb187, label %bb188
bb187:
  %t832 = load ptr, ptr %l0, !tbaa !29
  store ptr %t832, ptr %l416, !tbaa !29
  store ptr %l31, ptr %l417, !tbaa !29
  %t833 = load ptr, ptr %l1, !tbaa !29
  %t835 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v1, ptr %t833)
  store %"compiler/source:Span" %t835, ptr %l419
  br label %bb189
bb188:
  br label %bb191
bb189:
  %t836 = load ptr, ptr %l416, !tbaa !29
  %t837 = load ptr, ptr %l417, !tbaa !29
  %t838 = load %"compiler/source:Span", ptr %l419
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereturnedOwnLocals(ptr %v0, ptr %s18, ptr %t836, ptr %t837, %"compiler/source:Span" %t838)
  br label %bb190
bb190:
  br label %bb191
bb191:
  call void @__olang_scope_close(ptr %s18)
  br label %bb192
bb192:
  %t839 = load ptr, ptr %l1, !tbaa !29
  store ptr %t839, ptr %l420, !tbaa !29
  store i1 false, ptr %l421, !tbaa !21
  %t840 = load ptr, ptr %l420, !tbaa !29
  %t841 = icmp ne ptr %t840, null
  br i1 %t841, label %bb193, label %bb194
bb193:
  %t843 = load ptr, ptr %l420, !tbaa !29
  %t844 = load i64, ptr %t843, !range !{i64 0, i64 17}
  %t846 = icmp eq i64 %t844, 16
  store i1 %t846, ptr %l421, !tbaa !21
  br label %bb194
bb194:
  %t847 = load i1, ptr %l421, !tbaa !21
  br i1 %t847, label %bb195, label %bb196
bb195:
  %t848 = load ptr, ptr %l1, !tbaa !29
  %t850 = getelementptr { i64, [3 x i64] }, ptr %t848, i32 0, i32 1
  %t851 = getelementptr { %"compiler/source:Span", ptr }, ptr %t850, i32 0, i32 0
  %t852 = load %"compiler/source:Span", ptr %t851
  store %"compiler/source:Span" %t852, ptr %l32
  br label %bb197
bb196:
  br label %bb200
bb197:
  store %olang.scope zeroinitializer, ptr %s21
  %t854 = load ptr, ptr %l0, !tbaa !29
  store ptr %t854, ptr %l426, !tbaa !29
  %t855 = load i64, ptr @G_2ecompiler_2ffree_2eAnyPlace, !tbaa !24
  store i64 %t855, ptr %l427, !tbaa !24
  %t856 = load i64, ptr @G_2ecompiler_2ffree_2eLYield, !tbaa !24
  store i64 %t856, ptr %l428, !tbaa !24
  %t857 = load %"compiler/source:Span", ptr %l32
  store %"compiler/source:Span" %t857, ptr %l429
  %t858 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s21, i32 0, i32 0)
  store %"compiler/source:Span" %t858, ptr %l430
  br label %bb198
bb198:
  %t859 = load ptr, ptr %l426, !tbaa !29
  %t860 = load i64, ptr %l427, !tbaa !24
  %t861 = load i64, ptr %l428, !tbaa !24
  %t862 = load %"compiler/source:Span", ptr %l429
  %t863 = load %"compiler/source:Span", ptr %l430
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %t859, i64 %t860, i64 %t861, %"compiler/source:Span" %t862, %"compiler/source:Span" %t863, i64 -1)
  br label %bb199
bb199:
  call void @__olang_scope_close(ptr %s21)
  br label %bb205
bb200:
  br i1 true, label %bb201, label %bb202
bb201:
  br label %bb203
bb202:
  br label %bb204
bb203:
  br label %bb205
bb204:
  call void @__olang_check_failed(ptr @olang_loc_5d7536cc463ccac1_135a9313c745645)
  unreachable
bb205:
  br label %bb321
bb206:
  %t864 = load ptr, ptr %l1, !tbaa !29
  store ptr %t864, ptr %l431, !tbaa !29
  store i1 false, ptr %l432, !tbaa !21
  %t865 = load ptr, ptr %l431, !tbaa !29
  %t866 = icmp ne ptr %t865, null
  br i1 %t866, label %bb207, label %bb208
bb207:
  %t868 = load ptr, ptr %l431, !tbaa !29
  %t869 = load i64, ptr %t868, !range !{i64 0, i64 17}
  %t871 = icmp eq i64 %t869, 10
  store i1 %t871, ptr %l432, !tbaa !21
  br label %bb208
bb208:
  %t872 = load i1, ptr %l432, !tbaa !21
  br i1 %t872, label %bb209, label %bb210
bb209:
  %t873 = load ptr, ptr %l1, !tbaa !29
  %t875 = getelementptr { i64, [3 x i64] }, ptr %t873, i32 0, i32 1
  %t876 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t875, i32 0, i32 1
  %t877 = load ptr, ptr %t876
  store ptr %t877, ptr %l33, !tbaa !29
  %t879 = load ptr, ptr %l1, !tbaa !29
  %t881 = getelementptr { i64, [3 x i64] }, ptr %t879, i32 0, i32 1
  %t882 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t881, i32 0, i32 2
  %t883 = load ptr, ptr %t882
  store ptr %t883, ptr %l34, !tbaa !29
  br label %bb211
bb210:
  br label %bb217
bb211:
  store %olang.scope zeroinitializer, ptr %s23
  %t885 = load ptr, ptr %l0, !tbaa !29
  %t886 = load ptr, ptr %l33, !tbaa !29
  %t889 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s23, ptr %t885, ptr %t886)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t889, ptr %l441
  br label %bb212
bb212:
  %t890 = load ptr, ptr %l34, !tbaa !29
  %t892 = icmp eq ptr %t890, null
  %t894 = xor i1 %t892, true
  br i1 %t894, label %bb213, label %bb214
bb213:
  store %olang.scope zeroinitializer, ptr %s24
  %t896 = load ptr, ptr %l0, !tbaa !29
  %t897 = load ptr, ptr %l34, !tbaa !29
  %t900 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s24, ptr %t896, ptr %t897)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t900, ptr %l447
  br label %bb215
bb214:
  br label %bb216
bb215:
  call void @__olang_scope_close(ptr %s24)
  br label %bb216
bb216:
  call void @__olang_scope_close(ptr %s23)
  br label %bb321
bb217:
  %t901 = load ptr, ptr %l1, !tbaa !29
  store ptr %t901, ptr %l448, !tbaa !29
  store i1 false, ptr %l449, !tbaa !21
  %t902 = load ptr, ptr %l448, !tbaa !29
  %t903 = icmp ne ptr %t902, null
  br i1 %t903, label %bb218, label %bb219
bb218:
  %t905 = load ptr, ptr %l448, !tbaa !29
  %t906 = load i64, ptr %t905, !range !{i64 0, i64 17}
  %t908 = icmp eq i64 %t906, 9
  store i1 %t908, ptr %l449, !tbaa !21
  br label %bb219
bb219:
  %t909 = load i1, ptr %l449, !tbaa !21
  br i1 %t909, label %bb220, label %bb221
bb220:
  %t910 = load ptr, ptr %l1, !tbaa !29
  %t912 = getelementptr { i64, [3 x i64] }, ptr %t910, i32 0, i32 1
  %t913 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t912, i32 0, i32 2
  %t914 = load ptr, ptr %t913
  store ptr %t914, ptr %l35, !tbaa !29
  br label %bb222
bb221:
  br label %bb227
bb222:
  %t916 = load ptr, ptr %l35, !tbaa !29
  %t918 = icmp eq ptr %t916, null
  %t920 = xor i1 %t918, true
  br i1 %t920, label %bb223, label %bb224
bb223:
  store %olang.scope zeroinitializer, ptr %s26
  %t922 = load ptr, ptr %l0, !tbaa !29
  %t923 = load ptr, ptr %l35, !tbaa !29
  %t926 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s26, ptr %t922, ptr %t923)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t926, ptr %l459
  br label %bb225
bb224:
  br label %bb226
bb225:
  call void @__olang_scope_close(ptr %s26)
  br label %bb226
bb226:
  br label %bb321
bb227:
  %t927 = load ptr, ptr %l1, !tbaa !29
  store ptr %t927, ptr %l460, !tbaa !29
  store i1 false, ptr %l461, !tbaa !21
  %t928 = load ptr, ptr %l460, !tbaa !29
  %t929 = icmp ne ptr %t928, null
  br i1 %t929, label %bb228, label %bb229
bb228:
  %t931 = load ptr, ptr %l460, !tbaa !29
  %t932 = load i64, ptr %t931, !range !{i64 0, i64 17}
  %t934 = icmp eq i64 %t932, 11
  store i1 %t934, ptr %l461, !tbaa !21
  br label %bb229
bb229:
  %t935 = load i1, ptr %l461, !tbaa !21
  br i1 %t935, label %bb230, label %bb231
bb230:
  %t936 = load ptr, ptr %l1, !tbaa !29
  %t938 = getelementptr { i64, [3 x i64] }, ptr %t936, i32 0, i32 1
  %t939 = getelementptr { %"compiler/source:Span", ptr }, ptr %t938, i32 0, i32 1
  %t940 = load ptr, ptr %t939
  store ptr %t940, ptr %l36, !tbaa !29
  br label %bb232
bb231:
  br label %bb234
bb232:
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t942, ptr %t943)
  br label %bb233
bb233:
  br label %bb321
bb234:
  %t946 = load ptr, ptr %l1, !tbaa !29
  store ptr %t946, ptr %l468, !tbaa !29
  store i1 false, ptr %l469, !tbaa !21
  %t947 = load ptr, ptr %l468, !tbaa !29
  %t948 = icmp ne ptr %t947, null
  br i1 %t948, label %bb235, label %bb236
bb235:
  %t950 = load ptr, ptr %l468, !tbaa !29
  %t951 = load i64, ptr %t950, !range !{i64 0, i64 17}
  %t953 = icmp eq i64 %t951, 12
  store i1 %t953, ptr %l469, !tbaa !21
  br label %bb236
bb236:
  %t954 = load i1, ptr %l469, !tbaa !21
  br i1 %t954, label %bb237, label %bb238
bb237:
  %t955 = load ptr, ptr %l1, !tbaa !29
  %t957 = getelementptr { i64, [3 x i64] }, ptr %t955, i32 0, i32 1
  %t958 = getelementptr { %"compiler/source:Span", ptr }, ptr %t957, i32 0, i32 1
  %t959 = load ptr, ptr %t958
  store ptr %t959, ptr %l37, !tbaa !29
  br label %bb239
bb238:
  br label %bb250
bb239:
  %t961 = load ptr, ptr %l0, !tbaa !29
  %t963 = getelementptr %"compiler/free:walker", ptr %t961, i32 0, i32 2
  %t964 = load i1, ptr %t963, !tbaa !21
  %t966 = xor i1 %t964, true
  br i1 %t966, label %bb240, label %bb241
bb240:
  %t968 = load ptr, ptr %l0, !tbaa !29
  %t969 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescapedHolder(ptr %v0, ptr %v1, ptr %t968, ptr %t969)
  br label %bb242
bb241:
  br label %bb243
bb242:
  br label %bb243
bb243:
  %t972 = load ptr, ptr %l0, !tbaa !29
  store ptr %t972, ptr %l479, !tbaa !29
  %t973 = load ptr, ptr %l479, !tbaa !29
  %t974 = getelementptr %"compiler/free:walker", ptr %t973, i32 0, i32 28
  %t975 = load i64, ptr %t974, !tbaa !24
  %t977 = add i64 %t975, 1
  %t979 = load ptr, ptr %l479, !tbaa !29
  %t980 = getelementptr %"compiler/free:walker", ptr %t979, i32 0, i32 28
  store i64 %t977, ptr %t980, !tbaa !24
  %t981 = load ptr, ptr %l0, !tbaa !29
  %t983 = getelementptr %"compiler/free:walker", ptr %t981, i32 0, i32 54
  %t984 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t983, i64 %t984)
  br label %bb244
bb244:
  %t987 = load ptr, ptr %l0, !tbaa !29
  %t988 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t987, ptr %t988)
  br label %bb245
bb245:
  %t991 = load ptr, ptr %l0, !tbaa !29
  %t993 = getelementptr %"compiler/free:walker", ptr %t991, i32 0, i32 54
  %t995 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t993)
  %t996 = extractvalue { i32, i64 } %t995, 1
  %t997 = extractvalue { i32, i64 } %t995, 0
  store i32 %t997, ptr %l491
  %t998 = icmp ne i32 %t997, 0
  br i1 %t998, label %bb247, label %ok.999, !prof !99
ok.999:
  store i64 %t996, ptr %l490
  br label %bb246
bb246:
  %t1000 = load i64, ptr %l490, !tbaa !24
  store i64 %t1000, ptr %l487, !tbaa !24
  br label %bb249
bb247:
  br label %bb248
bb248:
  br label %bb249
bb249:
  %t1001 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1001, ptr %l492, !tbaa !29
  %t1002 = load ptr, ptr %l492, !tbaa !29
  %t1003 = getelementptr %"compiler/free:walker", ptr %t1002, i32 0, i32 28
  %t1004 = load i64, ptr %t1003, !tbaa !24
  %t1006 = sub i64 %t1004, 1
  %t1008 = load ptr, ptr %l492, !tbaa !29
  %t1009 = getelementptr %"compiler/free:walker", ptr %t1008, i32 0, i32 28
  store i64 %t1006, ptr %t1009, !tbaa !24
  br label %bb321
bb250:
  %t1010 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1010, ptr %l495, !tbaa !29
  store i1 false, ptr %l496, !tbaa !21
  %t1011 = load ptr, ptr %l495, !tbaa !29
  %t1012 = icmp ne ptr %t1011, null
  br i1 %t1012, label %bb251, label %bb252
bb251:
  %t1014 = load ptr, ptr %l495, !tbaa !29
  %t1015 = load i64, ptr %t1014, !range !{i64 0, i64 17}
  %t1017 = icmp eq i64 %t1015, 13
  store i1 %t1017, ptr %l496, !tbaa !21
  br label %bb252
bb252:
  %t1018 = load i1, ptr %l496, !tbaa !21
  br i1 %t1018, label %bb253, label %bb254
bb253:
  %t1019 = load ptr, ptr %l1, !tbaa !29
  %t1021 = getelementptr { i64, [3 x i64] }, ptr %t1019, i32 0, i32 1
  %t1022 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1021, i32 0, i32 1
  %t1023 = load ptr, ptr %t1022
  store ptr %t1023, ptr %l38, !tbaa !29
  br label %bb255
bb254:
  br label %bb271
bb255:
  %t1025 = load ptr, ptr %l0, !tbaa !29
  %t1027 = getelementptr %"compiler/free:walker", ptr %t1025, i32 0, i32 0
  %t1028 = load ptr, ptr %t1027, !tbaa !29
  %t1030 = getelementptr %"compiler/free:Free", ptr %t1028, i32 0, i32 42
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1033 = getelementptr %"compiler/free:walker", ptr %t1031, i32 0, i32 1
  %t1034 = load i64, ptr %t1033, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1030, i64 %t1034, i1 true)
  br label %bb256
bb256:
  %t1037 = load ptr, ptr %l0, !tbaa !29
  %t1038 = load ptr, ptr %l38, !tbaa !29
  %t1040 = getelementptr %"compiler/typed:Join", ptr %t1038, i32 0, i32 0
  %t1041 = load ptr, ptr %t1040, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t1037, ptr %t1041)
  br label %bb257
bb257:
  %t1044 = load ptr, ptr %l38, !tbaa !29
  %t1046 = getelementptr %"compiler/typed:Join", ptr %t1044, i32 0, i32 2
  %t1047 = load { i64, ptr }, ptr %t1046, !tbaa !27
  store { i64, ptr } %t1047, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t1049 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t1051 = extractvalue { i64, ptr } %t1049, 0
  store i64 %t1051, ptr %l41, !tbaa !24
  br label %bb258
bb258:
  %t1053 = load i64, ptr %l40, !tbaa !24
  %t1054 = load i64, ptr %l41, !tbaa !24
  %t1057 = icmp slt i64 %t1053, %t1054
  %t1059 = xor i1 %t1057, true
  br i1 %t1059, label %bb259, label %bb260
bb259:
  br label %bb270
bb260:
  br label %bb261
bb261:
  %t1061 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t1061, ptr %l517, !tbaa !27
  %t1062 = load i64, ptr %l40, !tbaa !24
  %t1064 = getelementptr { i64, ptr }, ptr %l517, i32 0, i32 1
  %t1065 = load ptr, ptr %t1064, !tbaa !27
  %t1066 = getelementptr ptr, ptr %t1065, i64 %t1062
  %t1067 = load ptr, ptr %t1066, !tbaa !39
  store ptr %t1067, ptr %l42, !tbaa !29
  %t1069 = load ptr, ptr %l42, !tbaa !29
  %t1071 = getelementptr %"compiler/typed:Clause", ptr %t1069, i32 0, i32 3
  %t1072 = load ptr, ptr %t1071, !tbaa !29
  %t1074 = icmp eq ptr %t1072, null
  %t1076 = xor i1 %t1074, true
  br i1 %t1076, label %bb262, label %bb263
bb262:
  %t1078 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1078, ptr %l524, !tbaa !29
  %t1079 = load ptr, ptr %l42, !tbaa !29
  %t1081 = getelementptr %"compiler/typed:Clause", ptr %t1079, i32 0, i32 3
  %t1082 = load ptr, ptr %t1081, !tbaa !29
  %t1084 = icmp eq ptr %t1082, null
  br i1 %t1084, label %bb264, label %bb265
bb263:
  br label %bb268
bb264:
  call void @__olang_check_failed(ptr @olang_loc_11c10ff2df4ccb13_a4bbf1166c590ff7)
  unreachable
bb265:
  br label %bb266
bb266:
  %t1086 = load ptr, ptr %l42, !tbaa !29
  %t1088 = getelementptr %"compiler/typed:Clause", ptr %t1086, i32 0, i32 3
  %t1089 = load ptr, ptr %t1088, !tbaa !29
  %t1090 = load ptr, ptr %l524, !tbaa !29
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %t1090, ptr %t1089)
  br label %bb267
bb267:
  br label %bb268
bb268:
  br label %bb269
bb269:
  %t1092 = load i64, ptr %l40, !tbaa !24
  %t1094 = add i64 %t1092, 1
  store i64 %t1094, ptr %l40, !tbaa !24
  br label %bb258
bb270:
  br label %bb321
bb271:
  %t1096 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1096, ptr %l532, !tbaa !29
  store i1 false, ptr %l533, !tbaa !21
  %t1097 = load ptr, ptr %l532, !tbaa !29
  %t1098 = icmp ne ptr %t1097, null
  br i1 %t1098, label %bb272, label %bb273
bb272:
  %t1100 = load ptr, ptr %l532, !tbaa !29
  %t1101 = load i64, ptr %t1100, !range !{i64 0, i64 17}
  %t1103 = icmp eq i64 %t1101, 14
  store i1 %t1103, ptr %l533, !tbaa !21
  br label %bb273
bb273:
  %t1104 = load i1, ptr %l533, !tbaa !21
  br i1 %t1104, label %bb274, label %bb275
bb274:
  %t1105 = load ptr, ptr %l1, !tbaa !29
  %t1107 = getelementptr { i64, [3 x i64] }, ptr %t1105, i32 0, i32 1
  %t1108 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1107, i32 0, i32 1
  %t1109 = load ptr, ptr %t1108
  store ptr %t1109, ptr %l43, !tbaa !29
  br label %bb276
bb275:
  br label %bb292
bb276:
  store %olang.scope zeroinitializer, ptr %s36
  %t1111 = load ptr, ptr %l0, !tbaa !29
  %t1113 = getelementptr %"compiler/free:walker", ptr %t1111, i32 0, i32 0
  %t1114 = load ptr, ptr %t1113, !tbaa !29
  %t1116 = getelementptr %"compiler/free:Free", ptr %t1114, i32 0, i32 42
  %t1117 = load ptr, ptr %l0, !tbaa !29
  %t1119 = getelementptr %"compiler/free:walker", ptr %t1117, i32 0, i32 1
  %t1120 = load i64, ptr %t1119, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t1116, i64 %t1120, i1 true)
  br label %bb277
bb277:
  %t1123 = load ptr, ptr %l0, !tbaa !29
  %t1124 = load ptr, ptr %l43, !tbaa !29
  %t1126 = getelementptr %"compiler/typed:Spawn", ptr %t1124, i32 0, i32 1
  %t1127 = load ptr, ptr %t1126, !tbaa !29
  %t1130 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s36, ptr %t1123, ptr %t1127)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1130, ptr %l546
  br label %bb278
bb278:
  %t1131 = load ptr, ptr %l43, !tbaa !29
  %t1133 = getelementptr %"compiler/typed:Spawn", ptr %t1131, i32 0, i32 2
  %t1134 = load { i64, ptr }, ptr %t1133, !tbaa !27
  store { i64, ptr } %t1134, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t1136 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t1138 = extractvalue { i64, ptr } %t1136, 0
  store i64 %t1138, ptr %l46, !tbaa !24
  br label %bb279
bb279:
  %t1140 = load i64, ptr %l45, !tbaa !24
  %t1141 = load i64, ptr %l46, !tbaa !24
  %t1144 = icmp slt i64 %t1140, %t1141
  %t1146 = xor i1 %t1144, true
  br i1 %t1146, label %bb280, label %bb281
bb280:
  br label %bb291
bb281:
  br label %bb282
bb282:
  %t1148 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t1148, ptr %l555, !tbaa !27
  %t1149 = load i64, ptr %l45, !tbaa !24
  %t1151 = getelementptr { i64, ptr }, ptr %l555, i32 0, i32 1
  %t1152 = load ptr, ptr %t1151, !tbaa !27
  %t1153 = getelementptr ptr, ptr %t1152, i64 %t1149
  %t1154 = load ptr, ptr %t1153, !tbaa !39
  store ptr %t1154, ptr %l47, !tbaa !29
  %t1156 = load ptr, ptr %l47, !tbaa !29
  %t1158 = getelementptr %"compiler/typed:TaskClause", ptr %t1156, i32 0, i32 3
  %t1159 = load ptr, ptr %t1158, !tbaa !29
  %t1161 = icmp eq ptr %t1159, null
  %t1163 = xor i1 %t1161, true
  br i1 %t1163, label %bb283, label %bb284
bb283:
  store %olang.scope zeroinitializer, ptr %s39
  %t1165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1165, ptr %l562, !tbaa !29
  %t1166 = load ptr, ptr %l47, !tbaa !29
  %t1168 = getelementptr %"compiler/typed:TaskClause", ptr %t1166, i32 0, i32 3
  %t1169 = load ptr, ptr %t1168, !tbaa !29
  %t1171 = icmp eq ptr %t1169, null
  br i1 %t1171, label %bb285, label %bb286
bb284:
  br label %bb289
bb285:
  call void @__olang_check_failed(ptr @olang_loc_407beb7582aa5744_e540dc6ed5e7bfd8)
  unreachable
bb286:
  br label %bb287
bb287:
  %t1173 = load ptr, ptr %l47, !tbaa !29
  %t1175 = getelementptr %"compiler/typed:TaskClause", ptr %t1173, i32 0, i32 3
  %t1176 = load ptr, ptr %t1175, !tbaa !29
  %t1177 = load ptr, ptr %l562, !tbaa !29
  %t1179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s39, ptr %t1177, ptr %t1176)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1179, ptr %l568
  br label %bb288
bb288:
  call void @__olang_scope_close(ptr %s39)
  br label %bb289
bb289:
  br label %bb290
bb290:
  %t1180 = load i64, ptr %l45, !tbaa !24
  %t1182 = add i64 %t1180, 1
  store i64 %t1182, ptr %l45, !tbaa !24
  br label %bb279
bb291:
  call void @__olang_scope_close(ptr %s36)
  br label %bb321
bb292:
  %t1184 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1184, ptr %l571, !tbaa !29
  store i1 false, ptr %l572, !tbaa !21
  %t1185 = load ptr, ptr %l571, !tbaa !29
  %t1186 = icmp ne ptr %t1185, null
  br i1 %t1186, label %bb293, label %bb294
bb293:
  %t1188 = load ptr, ptr %l571, !tbaa !29
  %t1189 = load i64, ptr %t1188, !range !{i64 0, i64 17}
  %t1191 = icmp eq i64 %t1189, 15
  store i1 %t1191, ptr %l572, !tbaa !21
  br label %bb294
bb294:
  %t1192 = load i1, ptr %l572, !tbaa !21
  br i1 %t1192, label %bb295, label %bb296
bb295:
  %t1193 = load ptr, ptr %l1, !tbaa !29
  %t1195 = getelementptr { i64, [3 x i64] }, ptr %t1193, i32 0, i32 1
  %t1196 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1195, i32 0, i32 0
  %t1197 = load %"compiler/source:Span", ptr %t1196
  store %"compiler/source:Span" %t1197, ptr %l48
  %t1199 = load ptr, ptr %l1, !tbaa !29
  %t1201 = getelementptr { i64, [3 x i64] }, ptr %t1199, i32 0, i32 1
  %t1202 = getelementptr { %"compiler/source:Span", ptr }, ptr %t1201, i32 0, i32 1
  %t1203 = load ptr, ptr %t1202
  store ptr %t1203, ptr %l49, !tbaa !29
  br label %bb297
bb296:
  br label %bb316
bb297:
  store %olang.scope zeroinitializer, ptr %s41
  %t1205 = load ptr, ptr %l0, !tbaa !29
  %t1206 = load ptr, ptr %l49, !tbaa !29
  %t1209 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %s41, ptr %t1205, ptr %t1206)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1209, ptr %l581
  br label %bb298
bb298:
  %t1210 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l581
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1210, ptr %l50
  %t1211 = load ptr, ptr %l0, !tbaa !29
  %t1213 = getelementptr %"compiler/free:walker", ptr %t1211, i32 0, i32 40
  %t1215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %t1213)
  store i64 %t1215, ptr %l584
  br label %bb299
bb299:
  %t1216 = load i64, ptr %l584, !tbaa !24
  %t1217 = icmp sgt i64 %t1216, 0
  br i1 %t1217, label %bb300, label %bb301
bb300:
  %t1219 = load ptr, ptr %l0, !tbaa !29
  %t1221 = getelementptr %"compiler/free:walker", ptr %t1219, i32 0, i32 40
  store ptr %t1221, ptr %l587, !tbaa !29
  %t1222 = load ptr, ptr %l0, !tbaa !29
  %t1224 = getelementptr %"compiler/free:walker", ptr %t1222, i32 0, i32 40
  %t1226 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %t1224)
  store i64 %t1226, ptr %l590
  br label %bb302
bb301:
  br label %bb305
bb302:
  %t1227 = load i64, ptr %l590, !tbaa !24
  %t1228 = sub i64 %t1227, 1
  %t1229 = load ptr, ptr %l587, !tbaa !29
  %t1231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t1229, i64 %t1228)
  store ptr %t1231, ptr %l592
  br label %bb303
bb303:
  %t1232 = load ptr, ptr %l592, !tbaa !29
  %t1234 = call i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %s41, ptr %t1232, ptr %l50)
  store i64 %t1234, ptr %l594
  br label %bb304
bb304:
  br label %bb305
bb305:
  %t1235 = load ptr, ptr %l0, !tbaa !29
  %t1237 = getelementptr %"compiler/free:walker", ptr %t1235, i32 0, i32 10
  %t1239 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1237)
  store i64 %t1239, ptr %l597
  br label %bb306
bb306:
  %t1240 = load i64, ptr %l597, !tbaa !24
  %t1241 = icmp sgt i64 %t1240, 0
  br i1 %t1241, label %bb307, label %bb308
bb307:
  %t1243 = load ptr, ptr %l0, !tbaa !29
  %t1245 = getelementptr %"compiler/free:walker", ptr %t1243, i32 0, i32 10
  store ptr %t1245, ptr %l600, !tbaa !29
  %t1246 = load ptr, ptr %l0, !tbaa !29
  %t1248 = getelementptr %"compiler/free:walker", ptr %t1246, i32 0, i32 10
  %t1250 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1248)
  store i64 %t1250, ptr %l603
  br label %bb309
bb308:
  br label %bb315
bb309:
  %t1251 = load i64, ptr %l603, !tbaa !24
  %t1252 = sub i64 %t1251, 1
  %t1253 = load ptr, ptr %l600, !tbaa !29
  %t1255 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1253, i64 %t1252)
  store i64 %t1255, ptr %l605
  br label %bb310
bb310:
  %t1256 = load i64, ptr %l605, !tbaa !24
  store i64 %t1256, ptr %l51, !tbaa !24
  %t1257 = load i64, ptr %l51, !tbaa !24
  %t1259 = icmp sge i64 %t1257, 0
  br i1 %t1259, label %bb311, label %bb312
bb311:
  store %olang.scope zeroinitializer, ptr %s44
  %t1261 = load ptr, ptr %l0, !tbaa !29
  %t1262 = load i64, ptr %l51, !tbaa !24
  %t1263 = load ptr, ptr %l49, !tbaa !29
  %t1264 = load %"compiler/source:Span", ptr %l48
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %s41, ptr %s44, ptr %t1261, i64 %t1262, ptr %t1263, ptr %l50, %"compiler/source:Span" %t1264, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, i1 true)
  br label %bb313
bb312:
  br label %bb314
bb313:
  call void @__olang_scope_close(ptr %s44)
  br label %bb314
bb314:
  br label %bb315
bb315:
  call void @__olang_scope_close(ptr %s41)
  br label %bb321
bb316:
  br i1 true, label %bb317, label %bb318
bb317:
  br label %bb319
bb318:
  br label %bb320
bb319:
  br label %bb321
bb320:
  call void @__olang_check_failed(ptr @olang_loc_ec0dfed271d7eacc_f2c899624053798)
  unreachable
bb321:
  %t1270 = load ptr, ptr %l0, !tbaa !29
  %t1272 = getelementptr %"compiler/free:walker", ptr %t1270, i32 0, i32 13
  %t1273 = load i64, ptr %l2, !tbaa !24
  %t1274 = load ptr, ptr %l0, !tbaa !29
  %t1276 = getelementptr %"compiler/free:walker", ptr %t1274, i32 0, i32 11
  %t1277 = load i64, ptr %t1276, !tbaa !24
  %t1279 = sub i64 %t1277, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t1272, i64 %t1273, i64 %t1279)
  br label %bb322
bb322:
  %t1283 = load ptr, ptr %l0, !tbaa !29
  %t1284 = load i64, ptr %l3, !tbaa !24
  %t1287 = getelementptr %"compiler/free:walker", ptr %t1283, i32 0, i32 12
  store i64 %t1284, ptr %t1287, !tbaa !24
  %t1288 = load ptr, ptr %l0, !tbaa !29
  %t1289 = load %"compiler/source:Span", ptr %l4
  %t1292 = getelementptr %"compiler/free:walker", ptr %t1288, i32 0, i32 41
  store %"compiler/source:Span" %t1289, ptr %t1292
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2etakeOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/free:leaf"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l25 = alloca i1
  %l29 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca %"compiler/free:leaf"
  %l50 = alloca ptr
  %l53 = alloca i64
  %l54 = alloca i64
  %s4 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereachTo(ptr %v0, ptr %v1, ptr %v2, ptr %t6, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t11, ptr %lp4
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  %t13 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t16 = load ptr, ptr %lp4
  call void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eelemRead(ptr %v0, ptr %v1, ptr %v2, ptr %t14, ptr %t15, ptr %t16)
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l20
  br label %bb3
bb3:
  %t25 = load i64, ptr %l20, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/free:Free", ptr %t26, i32 0, i32 23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/free:walker", ptr %t29, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t28, i64 %t32)
  store i1 %t35, ptr %l25
  br label %bb4
bb4:
  %t36 = load i1, ptr %l25, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l6, !tbaa !21
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  br i1 %t41, label %bb5, label %bb6
bb5:
  %t43 = load ptr, ptr %lp4
  store ptr %t43, ptr %l29, !tbaa !29
  %t44 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = call i64 @compiler_2ffree_2eorig(i64 %t44, i64 %t45)
  store i64 %t48, ptr %l32
  br label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eleaves(ptr %v0, ptr %s4, ptr %t49, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l40
  br label %bb13
bb7:
  %t54 = load ptr, ptr %l29, !tbaa !29
  %t55 = load i64, ptr %l32, !tbaa !24
  %t56 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t54, i64 %t55)
  store i64 %t56, ptr %l33
  br label %bb8
bb8:
  %t57 = load i1, ptr %l6, !tbaa !21
  br i1 %t57, label %bb9, label %bb10
bb9:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/free:Free", ptr %t59, i32 0, i32 49
  %t62 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t61, i64 %t62, i1 true)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb28
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t66 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  store ptr %t66, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb14
bb14:
  %t68 = load i64, ptr %l8, !tbaa !24
  store i64 %t68, ptr %l42, !tbaa !24
  %t69 = load ptr, ptr %l7, !tbaa !29
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %s4, ptr %t69)
  store i64 %t71, ptr %l44
  br label %bb15
bb15:
  %t72 = load i64, ptr %l42, !tbaa !24
  %t73 = load i64, ptr %l44, !tbaa !24
  %t74 = icmp slt i64 %t72, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb16, label %bb17
bb16:
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l7, !tbaa !29
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = call %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %s4, ptr %s4, ptr %t78, i64 %t79)
  store %"compiler/free:leaf" %t82, ptr %l49
  br label %bb19
bb19:
  %t83 = load %"compiler/free:leaf", ptr %l49
  store %"compiler/free:leaf" %t83, ptr %l9
  %t84 = load ptr, ptr %lp4
  store ptr %t84, ptr %l50, !tbaa !29
  %t85 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t86 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t87 = load i64, ptr %t86, !tbaa !24
  %t90 = call i64 @compiler_2ffree_2eorig(i64 %t85, i64 %t87)
  store i64 %t90, ptr %l53
  br label %bb20
bb20:
  %t91 = load ptr, ptr %l50, !tbaa !29
  %t92 = load i64, ptr %l53, !tbaa !24
  %t93 = call i64 @compiler_2ffree_2eaddTo(ptr %v2, ptr %t91, i64 %t92)
  store i64 %t93, ptr %l54
  br label %bb21
bb21:
  %t94 = load i1, ptr %l6, !tbaa !21
  br i1 %t94, label %bb22, label %bb23
bb22:
  %t96 = load ptr, ptr %l3, !tbaa !29
  %t98 = getelementptr %"compiler/free:Free", ptr %t96, i32 0, i32 49
  %t99 = getelementptr %"compiler/free:leaf", ptr %l9, i32 0, i32 1
  %t100 = load i64, ptr %t99, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t98, i64 %t100, i1 true)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t103 = load i64, ptr %l8, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l8, !tbaa !24
  br label %bb14
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb28:
  %t107 = load ptr, ptr %lp4
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t107
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewOf(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca i1
  %l15 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/free:walker", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i64, ptr @G_2ecompiler_2ffree_2eOPl, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call i64 @compiler_2ffree_2eorig(i64 %t8, i64 %t9)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t14 = load i64, ptr %l9, !tbaa !24
  %t15 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t15, ptr %l10
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb9
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/free:walker", ptr %t17, i32 0, i32 3
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load i64, ptr @G_2ecompiler_2ffree_2eOMov, !tbaa !24
  %t25 = load i64, ptr %l2, !tbaa !24
  %t28 = call i64 @compiler_2ffree_2eorig(i64 %t24, i64 %t25)
  store i64 %t28, ptr %l18
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i64, ptr %l18, !tbaa !24
  %t31 = call i1 @compiler_2ffree_2ehas(ptr %v0, ptr %t29, i64 %t30)
  store i1 %t31, ptr %l19
  br label %bb8
bb8:
  %t32 = load i1, ptr %l19, !tbaa !21
  store i1 %t32, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l11, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewithinOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca i1
  %l21 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2ffree_2ebaseOf(ptr %v1, ptr %v1, ptr %a1)
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
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/free:walker", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/free:walker", ptr %t14, i32 0, i32 1
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t22 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPlace(ptr %v0, ptr %v1, ptr %t13, i64 %t17, ptr %t18)
  store i64 %t22, ptr %l14
  br label %bb5
bb5:
  %t23 = load i64, ptr %l14, !tbaa !24
  store i64 %t23, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load i64, ptr @G_2ecompiler_2ffree_2eMovBase, !tbaa !24
  %t32 = icmp slt i64 %t28, %t29
  store i1 %t32, ptr %l17, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb8
bb8:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l3, !tbaa !24
  store i64 %t35, ptr %l21, !tbaa !24
  br label %bb11
bb10:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb11
bb11:
  %t37 = load i64, ptr %l21, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2einElement(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 4
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb25
bb6:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l1, !tbaa !29
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2ffree_2einElement(ptr %v0, ptr %t25)
  store i1 %t27, ptr %l15
  br label %bb12
bb12:
  %t28 = load i1, ptr %l15, !tbaa !21
  store i1 %t28, ptr %l3, !tbaa !21
  br label %bb25
bb13:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb14, label %bb15
bb14:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 5
  store i1 %t36, ptr %l17, !tbaa !21
  br label %bb15
bb15:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb16, label %bb17
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [4 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l2, !tbaa !29
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t44 = load ptr, ptr %l2, !tbaa !29
  %t46 = getelementptr %"compiler/typed:Payload", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = call i1 @compiler_2ffree_2einElement(ptr %v0, ptr %t47)
  store i1 %t49, ptr %l24
  br label %bb19
bb19:
  %t50 = load i1, ptr %l24, !tbaa !21
  store i1 %t50, ptr %l3, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_ed7f6e6daad964a6_bdb604c7994d314a)
  unreachable
bb25:
  %t51 = load i1, ptr %l3, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ffree_2eisBlock({ i64, [2 x i64] } %a0) #0 {
entry:
  %l1 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a0, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_5434155b39f9a43a_fb30a073eb5144de)
  unreachable
bb9:
  %t6 = load i1, ptr %l1, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffree_2emeet(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l13 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2ffree_2eMustTop, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l0, !tbaa !24
  store i64 %t15, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load i64, ptr %l0, !tbaa !24
  store i64 %t23, ptr %l13, !tbaa !24
  br label %bb9
bb8:
  %t25 = load i64, ptr @G_2ecompiler_2ffree_2eMustNone, !tbaa !24
  store i64 %t25, ptr %l13, !tbaa !24
  br label %bb9
bb9:
  %t27 = load i64, ptr %l13, !tbaa !24
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffree_2eorig(i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = shl i64 %a0, 40
  %t7 = or i64 %t3, %a1
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l20 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l51 = alloca { i64, ptr }
  %l54 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i1 @compiler_2ffree_2esamePure(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t9 = load ptr, ptr %l12, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb5, label %bb6
bb5:
  %t12 = load ptr, ptr %l12, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t16 = load i1, ptr %l13, !tbaa !21
  br i1 %t16, label %bb7, label %bb8
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %t23, ptr %t24)
  store i1 %t27, ptr %l20
  br label %bb10
bb10:
  %t28 = load i1, ptr %l20, !tbaa !21
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb41
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb12, label %bb13
bb12:
  %t33 = load ptr, ptr %l21, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 3
  store i1 %t36, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t48 = call i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %t44, ptr %t45)
  store i1 %t48, ptr %l29
  br label %bb17
bb17:
  %t49 = load i1, ptr %l29, !tbaa !21
  store i1 %t49, ptr %l11, !tbaa !21
  br label %bb41
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t51 = load ptr, ptr %l30, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l30, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 18}
  %t57 = icmp eq i64 %t55, 17
  store i1 %t57, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l31, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [5 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t61, i32 0, i32 2
  %t63 = load ptr, ptr %t62
  store ptr %t63, ptr %l4, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t69 = call i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %t65, ptr %t66)
  store i1 %t69, ptr %l38
  br label %bb24
bb24:
  %t70 = load i1, ptr %l38, !tbaa !21
  store i1 %t70, ptr %l11, !tbaa !21
  br label %bb41
bb25:
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t72 = load ptr, ptr %l39, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb26, label %bb27
bb26:
  %t75 = load ptr, ptr %l39, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 18}
  %t78 = icmp eq i64 %t76, 9
  store i1 %t78, ptr %l40, !tbaa !21
  br label %bb27
bb27:
  %t79 = load i1, ptr %l40, !tbaa !21
  br i1 %t79, label %bb28, label %bb29
bb28:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t82, i32 0, i32 2
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 52}
  store i32 %t84, ptr %l5
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t88, i32 0, i32 4
  %t90 = load { i64, ptr }, ptr %t89
  store { i64, ptr } %t90, ptr %l6, !tbaa !27
  br label %bb30
bb29:
  br label %bb36
bb30:
  %t92 = load i32, ptr %l5, !range !{i32 0, i32 52}
  %t93 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t96 = call i1 @compiler_2ffree_2eisConversion(ptr %v0, i32 %t92, { i64, ptr } %t93)
  store i1 %t96, ptr %l49
  br label %bb31
bb31:
  %t97 = load i1, ptr %l49, !tbaa !21
  br i1 %t97, label %bb32, label %bb33
bb32:
  %t98 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t98, ptr %l51, !tbaa !27
  %t99 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr ptr, ptr %t100, i64 0
  %t102 = load ptr, ptr %t101, !tbaa !39
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t106 = call i1 @compiler_2ffree_2ereachedThrough(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  store i1 %t106, ptr %l54
  br label %bb34
bb33:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb35
bb34:
  %t107 = load i1, ptr %l54, !tbaa !21
  store i1 %t107, ptr %l50, !tbaa !21
  br label %bb35
bb35:
  %t108 = load i1, ptr %l50, !tbaa !21
  store i1 %t108, ptr %l11, !tbaa !21
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_365b62d925fe4616_77c77337a4accaaa)
  unreachable
bb41:
  %t109 = load i1, ptr %l11, !tbaa !21
  store i1 %t109, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2ffree_2ereceiverSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l9 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t10, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  %t11 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t11, ptr %rv
  br label %ret
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Call", ptr %t12, i32 0, i32 1
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l7, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr ptr, ptr %t17, i64 0
  %t19 = load ptr, ptr %t18, !tbaa !39
  %t21 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %t19)
  store %"compiler/source:Span" %t21, ptr %l9
  br label %bb5
bb5:
  %t22 = load %"compiler/source:Span", ptr %l9
  store %"compiler/source:Span" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2ffree_2esamePurePlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l64 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t17 = load ptr, ptr %l16, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l16, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load i32, ptr %l2, !tbaa !23
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = icmp eq i32 %t31, %t32
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_b94c5fec836ee160_c106f176e2c66bb4)
  unreachable
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  store ptr %t38, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t39 = load ptr, ptr %l26, !tbaa !29
  %t40 = icmp ne ptr %t39, null
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = load i64, ptr %t42, !range !{i64 0, i64 8}
  %t45 = icmp eq i64 %t43, 3
  store i1 %t45, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb19, label %bb20
bb19:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t49, i32 0, i32 2
  %t51 = load ptr, ptr %t50
  store ptr %t51, ptr %l4, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t55, i32 0, i32 3
  %t57 = load i64, ptr %t56
  store i64 %t57, ptr %l5, !tbaa !24
  br label %bb21
bb20:
  br label %bb36
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t60 = load ptr, ptr %l34, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 3
  store i1 %t66, ptr %l35, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l35, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l6, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t76, i32 0, i32 3
  %t78 = load i64, ptr %t77
  store i64 %t78, ptr %l7, !tbaa !24
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t81 = load i64, ptr %l7, !tbaa !24
  %t84 = icmp eq i64 %t80, %t81
  br i1 %t84, label %bb27, label %bb28
bb27:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  %t90 = call i1 @compiler_2ffree_2esamePurePlace(ptr %v0, ptr %v1, ptr %t86, ptr %t87)
  store i1 %t90, ptr %l48
  br label %bb29
bb28:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb30
bb29:
  %t91 = load i1, ptr %l48, !tbaa !21
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l45, !tbaa !21
  store i1 %t92, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_bc70ad18304b6571_160962e965f972e5)
  unreachable
bb36:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t95 = load ptr, ptr %l50, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb37, label %bb38
bb37:
  %t98 = load ptr, ptr %l50, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 8}
  %t101 = icmp eq i64 %t99, 2
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb38
bb38:
  %t102 = load i1, ptr %l51, !tbaa !21
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l8, !tbaa !29
  br label %bb41
bb40:
  br label %bb53
bb41:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t110 = load ptr, ptr %l56, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb42, label %bb43
bb42:
  %t113 = load ptr, ptr %l56, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 2
  store i1 %t116, ptr %l57, !tbaa !21
  br label %bb43
bb43:
  %t117 = load i1, ptr %l57, !tbaa !21
  br i1 %t117, label %bb44, label %bb45
bb44:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l9, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t124 = load ptr, ptr %l8, !tbaa !29
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t128 = call i1 @compiler_2ffree_2esamePure(ptr %v0, ptr %v1, ptr %t124, ptr %t125)
  store i1 %t128, ptr %l64
  br label %bb47
bb47:
  %t129 = load i1, ptr %l64, !tbaa !21
  store i1 %t129, ptr %rv
  br label %ret
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  store i1 false, ptr %rv
  br label %ret
bb52:
  call void @__olang_check_failed(ptr @olang_loc_6c7e0d9d91c4575a_bcb450b004b7d12e)
  unreachable
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 false, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_65fd46072274f65b_1273d4b3d3b84def)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffree_3aFree_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i1
  %l44 = alloca i1
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca i1
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l67 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l72 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l81 = alloca i1
  %l82 = alloca i1
  %l83 = alloca i1
  %l84 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca i64
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l102 = alloca i64
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l106 = alloca i64
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l110 = alloca i64
  %l112 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca i64
  %l116 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l118 = alloca i64
  %l120 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l122 = alloca i64
  %l124 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l126 = alloca i64
  %l128 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l130 = alloca i64
  %l132 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l134 = alloca i64
  %l136 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l138 = alloca i64
  %l140 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l142 = alloca i64
  %l144 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l146 = alloca i64
  %l148 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l150 = alloca i64
  %l152 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l154 = alloca i64
  %l156 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l158 = alloca i64
  %l160 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l162 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l163 = alloca i64
  %l165 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l167 = alloca i64
  %l169 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca i64
  %l173 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l175 = alloca i64
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca i64
  %l181 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l183 = alloca i64
  %l185 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l187 = alloca i64
  %l189 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l191 = alloca i64
  %l193 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l195 = alloca i64
  %l197 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l199 = alloca i64
  %l201 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l203 = alloca i64
  %l205 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca i64
  %l209 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca i64
  %l213 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l215 = alloca i64
  %l217 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l219 = alloca i64
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l223 = alloca i64
  %l225 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l228 = alloca i64
  %l230 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l232 = alloca i64
  %l234 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l236 = alloca i64
  %l238 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l240 = alloca i64
  %l242 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l244 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l246 = alloca i64
  %l248 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l250 = alloca %"compiler/source:Span"
  %l251 = alloca i64
  %l253 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l255 = alloca i64
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l259 = alloca i64
  %l261 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l263 = alloca i64
  %l265 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l267 = alloca i64
  %l269 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i64
  %l273 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l275 = alloca i64
  %l277 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l279 = alloca i64
  %l281 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l283 = alloca i64
  %l285 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l287 = alloca i64
  %l289 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l291 = alloca i64
  %l293 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l295 = alloca i64
  %l297 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l299 = alloca i64
  %l301 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l303 = alloca i64
  %l305 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l307 = alloca i64
  %l309 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l311 = alloca i64
  %l313 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l315 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l316 = alloca i64
  %l318 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l320 = alloca i64
  %l322 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l324 = alloca i64
  %l326 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l328 = alloca i64
  %l330 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l332 = alloca i64
  %l334 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l336 = alloca %"compiler/free:Free"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l3, !tbaa !29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, ptr %l4
  store ptr %a2, ptr %l5, !tbaa !29
  %t7 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l89
  br label %bb1
bb1:
  %t8 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t9 = ptrtoint ptr %v3 to i64
  store i64 %t9, ptr %l90, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e5
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = call ptr @__olang_region_make(ptr %v3)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l90, !tbaa !24
  br label %bb3
bb3:
  %t14 = load i64, ptr %l90
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t15, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %l92
  br label %bb4
bb4:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e5
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load i64, ptr %l90
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = icmp eq ptr %t26, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t27)
  br label %bb6
bb6:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l8
  store ptr null, ptr %l9, !tbaa !29
  store i64 -1, ptr %l10, !tbaa !24
  store i1 false, ptr %l11, !tbaa !21
  %t29 = ptrtoint ptr %v3 to i64
  store i64 %t29, ptr %l94, !tbaa !24
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e9
  br i1 %t30, label %bb7, label %bb8
bb7:
  %t32 = call ptr @__olang_region_make(ptr %v3)
  %t33 = ptrtoint ptr %t32 to i64
  store i64 %t33, ptr %l94, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l94
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t35, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l96
  br label %bb9
bb9:
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e9
  br i1 %t37, label %bb10, label %bb11
bb10:
  %t39 = load i64, ptr %l94
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = call ptr @__olang_region_or(ptr %t43, ptr null)
  %t45 = icmp ne ptr %t44, null
  %t46 = select i1 %t45, ptr %t44, ptr null
  %t47 = icmp eq ptr %t46, %t40
  call void @__olang_region_settle(ptr %t40, i1 %t47)
  br label %bb11
bb11:
  %t48 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l12
  %t49 = ptrtoint ptr %v3 to i64
  store i64 %t49, ptr %l98, !tbaa !24
  %t50 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e10
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = call ptr @__olang_region_make(ptr %v3)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l98, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l98
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t55, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l100
  br label %bb14
bb14:
  %t57 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e10
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t59 = load i64, ptr %l98
  %t60 = inttoptr i64 %t59 to ptr
  %t61 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = icmp eq ptr %t66, %t60
  call void @__olang_region_settle(ptr %t60, i1 %t67)
  br label %bb16
bb16:
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l13
  %t69 = ptrtoint ptr %v3 to i64
  store i64 %t69, ptr %l102, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e11
  br i1 %t70, label %bb17, label %bb18
bb17:
  %t72 = call ptr @__olang_region_make(ptr %v3)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l102, !tbaa !24
  br label %bb18
bb18:
  %t74 = load i64, ptr %l102
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t75, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t76, ptr %l104
  br label %bb19
bb19:
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e11
  br i1 %t77, label %bb20, label %bb21
bb20:
  %t79 = load i64, ptr %l102
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = call ptr @__olang_region_or(ptr %t83, ptr null)
  %t85 = icmp ne ptr %t84, null
  %t86 = select i1 %t85, ptr %t84, ptr null
  %t87 = icmp eq ptr %t86, %t80
  call void @__olang_region_settle(ptr %t80, i1 %t87)
  br label %bb21
bb21:
  %t88 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l14
  %t89 = ptrtoint ptr %v3 to i64
  store i64 %t89, ptr %l106, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e12
  br i1 %t90, label %bb22, label %bb23
bb22:
  %t92 = call ptr @__olang_region_make(ptr %v3)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l106, !tbaa !24
  br label %bb23
bb23:
  %t94 = load i64, ptr %l106
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t95, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l108
  br label %bb24
bb24:
  %t97 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e12
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load i64, ptr %l106
  %t100 = inttoptr i64 %t99 to ptr
  %t101 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr null
  %t107 = icmp eq ptr %t106, %t100
  call void @__olang_region_settle(ptr %t100, i1 %t107)
  br label %bb26
bb26:
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l15
  %t109 = ptrtoint ptr %v3 to i64
  store i64 %t109, ptr %l110, !tbaa !24
  %t110 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e13
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t112 = call ptr @__olang_region_make(ptr %v3)
  %t113 = ptrtoint ptr %t112 to i64
  store i64 %t113, ptr %l110, !tbaa !24
  br label %bb28
bb28:
  %t114 = load i64, ptr %l110
  %t115 = inttoptr i64 %t114 to ptr
  %t116 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t115, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %l112
  br label %bb29
bb29:
  %t117 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e13
  br i1 %t117, label %bb30, label %bb31
bb30:
  %t119 = load i64, ptr %l110
  %t120 = inttoptr i64 %t119 to ptr
  %t121 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = call ptr @__olang_region_or(ptr %t123, ptr null)
  %t125 = icmp ne ptr %t124, null
  %t126 = select i1 %t125, ptr %t124, ptr null
  %t127 = icmp eq ptr %t126, %t120
  call void @__olang_region_settle(ptr %t120, i1 %t127)
  br label %bb31
bb31:
  %t128 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l112
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l16
  %t129 = ptrtoint ptr %v3 to i64
  store i64 %t129, ptr %l114, !tbaa !24
  %t130 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e14
  br i1 %t130, label %bb32, label %bb33
bb32:
  %t132 = call ptr @__olang_region_make(ptr %v3)
  %t133 = ptrtoint ptr %t132 to i64
  store i64 %t133, ptr %l114, !tbaa !24
  br label %bb33
bb33:
  %t134 = load i64, ptr %l114
  %t135 = inttoptr i64 %t134 to ptr
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ector(ptr %t135, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l116
  br label %bb34
bb34:
  %t137 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e14
  br i1 %t137, label %bb35, label %bb36
bb35:
  %t139 = load i64, ptr %l114
  %t140 = inttoptr i64 %t139 to ptr
  %t141 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116, i32 0, i32 0
  %t142 = load { i64, ptr }, ptr %t141
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = call ptr @__olang_region_or(ptr %t143, ptr null)
  %t145 = icmp ne ptr %t144, null
  %t146 = select i1 %t145, ptr %t144, ptr null
  %t147 = icmp eq ptr %t146, %t140
  call void @__olang_region_settle(ptr %t140, i1 %t147)
  br label %bb36
bb36:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l116
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l17
  %t149 = ptrtoint ptr %v3 to i64
  store i64 %t149, ptr %l118, !tbaa !24
  %t150 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e15
  br i1 %t150, label %bb37, label %bb38
bb37:
  %t152 = call ptr @__olang_region_make(ptr %v3)
  %t153 = ptrtoint ptr %t152 to i64
  store i64 %t153, ptr %l118, !tbaa !24
  br label %bb38
bb38:
  %t154 = load i64, ptr %l118
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t155, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l120
  br label %bb39
bb39:
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e15
  br i1 %t157, label %bb40, label %bb41
bb40:
  %t159 = load i64, ptr %l118
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120, i32 0, i32 0
  %t162 = load { i64, ptr }, ptr %t161
  %t163 = extractvalue { i64, ptr } %t162, 1
  %t164 = call ptr @__olang_region_or(ptr %t163, ptr null)
  %t165 = icmp ne ptr %t164, null
  %t166 = select i1 %t165, ptr %t164, ptr null
  %t167 = icmp eq ptr %t166, %t160
  call void @__olang_region_settle(ptr %t160, i1 %t167)
  br label %bb41
bb41:
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %l18
  %t169 = ptrtoint ptr %v3 to i64
  store i64 %t169, ptr %l122, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e16
  br i1 %t170, label %bb42, label %bb43
bb42:
  %t172 = call ptr @__olang_region_make(ptr %v3)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l122, !tbaa !24
  br label %bb43
bb43:
  %t174 = load i64, ptr %l122
  %t175 = inttoptr i64 %t174 to ptr
  %t176 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t175)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t176, ptr %l124
  br label %bb44
bb44:
  %t177 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e16
  br i1 %t177, label %bb45, label %bb46
bb45:
  %t179 = load i64, ptr %l122
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l124, i32 0, i32 2
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr null
  %t187 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l124, i32 0, i32 1
  %t188 = load { i64, ptr }, ptr %t187
  %t189 = extractvalue { i64, ptr } %t188, 1
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr null)
  %t191 = icmp ne ptr %t190, null
  %t192 = select i1 %t191, ptr %t190, ptr %t186
  %t193 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l124, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193
  %t195 = extractvalue { i64, ptr } %t194, 1
  %t196 = call ptr @__olang_region_or(ptr %t195, ptr null)
  %t197 = icmp ne ptr %t196, null
  %t198 = select i1 %t197, ptr %t196, ptr %t192
  %t199 = icmp eq ptr %t198, %t180
  call void @__olang_region_settle(ptr %t180, i1 %t199)
  br label %bb46
bb46:
  %t200 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l124
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t200, ptr %l19
  %t201 = ptrtoint ptr %v3 to i64
  store i64 %t201, ptr %l126, !tbaa !24
  %t202 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e17
  br i1 %t202, label %bb47, label %bb48
bb47:
  %t204 = call ptr @__olang_region_make(ptr %v3)
  %t205 = ptrtoint ptr %t204 to i64
  store i64 %t205, ptr %l126, !tbaa !24
  br label %bb48
bb48:
  %t206 = load i64, ptr %l126
  %t207 = inttoptr i64 %t206 to ptr
  %t208 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t207)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t208, ptr %l128
  br label %bb49
bb49:
  %t209 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e17
  br i1 %t209, label %bb50, label %bb51
bb50:
  %t211 = load i64, ptr %l126
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 2
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = icmp ne ptr %t216, null
  %t218 = select i1 %t217, ptr %t216, ptr null
  %t219 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 1
  %t220 = load { i64, ptr }, ptr %t219
  %t221 = extractvalue { i64, ptr } %t220, 1
  %t222 = call ptr @__olang_region_or(ptr %t221, ptr null)
  %t223 = icmp ne ptr %t222, null
  %t224 = select i1 %t223, ptr %t222, ptr %t218
  %t225 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128, i32 0, i32 0
  %t226 = load { i64, ptr }, ptr %t225
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = call ptr @__olang_region_or(ptr %t227, ptr null)
  %t229 = icmp ne ptr %t228, null
  %t230 = select i1 %t229, ptr %t228, ptr %t224
  %t231 = icmp eq ptr %t230, %t212
  call void @__olang_region_settle(ptr %t212, i1 %t231)
  br label %bb51
bb51:
  %t232 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l128
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t232, ptr %l20
  %t233 = ptrtoint ptr %v3 to i64
  store i64 %t233, ptr %l130, !tbaa !24
  %t234 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e18
  br i1 %t234, label %bb52, label %bb53
bb52:
  %t236 = call ptr @__olang_region_make(ptr %v3)
  %t237 = ptrtoint ptr %t236 to i64
  store i64 %t237, ptr %l130, !tbaa !24
  br label %bb53
bb53:
  %t238 = load i64, ptr %l130
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t239)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t240, ptr %l132
  br label %bb54
bb54:
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e18
  br i1 %t241, label %bb55, label %bb56
bb55:
  %t243 = load i64, ptr %l130
  %t244 = inttoptr i64 %t243 to ptr
  %t245 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l132, i32 0, i32 2
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = icmp ne ptr %t248, null
  %t250 = select i1 %t249, ptr %t248, ptr null
  %t251 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l132, i32 0, i32 1
  %t252 = load { i64, ptr }, ptr %t251
  %t253 = extractvalue { i64, ptr } %t252, 1
  %t254 = call ptr @__olang_region_or(ptr %t253, ptr null)
  %t255 = icmp ne ptr %t254, null
  %t256 = select i1 %t255, ptr %t254, ptr %t250
  %t257 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l132, i32 0, i32 0
  %t258 = load { i64, ptr }, ptr %t257
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = call ptr @__olang_region_or(ptr %t259, ptr null)
  %t261 = icmp ne ptr %t260, null
  %t262 = select i1 %t261, ptr %t260, ptr %t256
  %t263 = icmp eq ptr %t262, %t244
  call void @__olang_region_settle(ptr %t244, i1 %t263)
  br label %bb56
bb56:
  %t264 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l132
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t264, ptr %l21
  %t265 = ptrtoint ptr %v3 to i64
  store i64 %t265, ptr %l134, !tbaa !24
  %t266 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e19
  br i1 %t266, label %bb57, label %bb58
bb57:
  %t268 = call ptr @__olang_region_make(ptr %v3)
  %t269 = ptrtoint ptr %t268 to i64
  store i64 %t269, ptr %l134, !tbaa !24
  br label %bb58
bb58:
  %t270 = load i64, ptr %l134
  %t271 = inttoptr i64 %t270 to ptr
  %t272 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__H35bad576be2c40e2a3ddd75966dd2efa(ptr %t271)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t272, ptr %l136
  br label %bb59
bb59:
  %t273 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e19
  br i1 %t273, label %bb60, label %bb61
bb60:
  %t275 = load i64, ptr %l134
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %t277
  %t279 = extractvalue { i64, ptr } %t278, 1
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr null)
  %t281 = icmp ne ptr %t280, null
  %t282 = select i1 %t281, ptr %t280, ptr null
  %t283 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 1
  %t284 = load { i64, ptr }, ptr %t283
  %t285 = extractvalue { i64, ptr } %t284, 1
  %t286 = call ptr @__olang_region_or(ptr %t285, ptr null)
  %t287 = icmp ne ptr %t286, null
  %t288 = select i1 %t287, ptr %t286, ptr %t282
  %t289 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136, i32 0, i32 0
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = call ptr @__olang_region_or(ptr %t291, ptr null)
  %t293 = icmp ne ptr %t292, null
  %t294 = select i1 %t293, ptr %t292, ptr %t288
  %t295 = icmp eq ptr %t294, %t276
  call void @__olang_region_settle(ptr %t276, i1 %t295)
  br label %bb61
bb61:
  %t296 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l136
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t296, ptr %l22
  %t297 = ptrtoint ptr %v3 to i64
  store i64 %t297, ptr %l138, !tbaa !24
  %t298 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e20
  br i1 %t298, label %bb62, label %bb63
bb62:
  %t300 = call ptr @__olang_region_make(ptr %v3)
  %t301 = ptrtoint ptr %t300 to i64
  store i64 %t301, ptr %l138, !tbaa !24
  br label %bb63
bb63:
  %t302 = load i64, ptr %l138
  %t303 = inttoptr i64 %t302 to ptr
  %t304 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__H543b8bd4338e03419f672a832f9f2eca(ptr %t303)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t304, ptr %l140
  br label %bb64
bb64:
  %t305 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e20
  br i1 %t305, label %bb65, label %bb66
bb65:
  %t307 = load i64, ptr %l138
  %t308 = inttoptr i64 %t307 to ptr
  %t309 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l140, i32 0, i32 2
  %t310 = load { i64, ptr }, ptr %t309
  %t311 = extractvalue { i64, ptr } %t310, 1
  %t312 = call ptr @__olang_region_or(ptr %t311, ptr null)
  %t313 = icmp ne ptr %t312, null
  %t314 = select i1 %t313, ptr %t312, ptr null
  %t315 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l140, i32 0, i32 1
  %t316 = load { i64, ptr }, ptr %t315
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = call ptr @__olang_region_or(ptr %t317, ptr null)
  %t319 = icmp ne ptr %t318, null
  %t320 = select i1 %t319, ptr %t318, ptr %t314
  %t321 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l140, i32 0, i32 0
  %t322 = load { i64, ptr }, ptr %t321
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = call ptr @__olang_region_or(ptr %t323, ptr null)
  %t325 = icmp ne ptr %t324, null
  %t326 = select i1 %t325, ptr %t324, ptr %t320
  %t327 = icmp eq ptr %t326, %t308
  call void @__olang_region_settle(ptr %t308, i1 %t327)
  br label %bb66
bb66:
  %t328 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l140
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t328, ptr %l23
  %t329 = ptrtoint ptr %v3 to i64
  store i64 %t329, ptr %l142, !tbaa !24
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e21
  br i1 %t330, label %bb67, label %bb68
bb67:
  %t332 = call ptr @__olang_region_make(ptr %v3)
  %t333 = ptrtoint ptr %t332 to i64
  store i64 %t333, ptr %l142, !tbaa !24
  br label %bb68
bb68:
  %t334 = load i64, ptr %l142
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t335, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l144
  br label %bb69
bb69:
  %t337 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e21
  br i1 %t337, label %bb70, label %bb71
bb70:
  %t339 = load i64, ptr %l142
  %t340 = inttoptr i64 %t339 to ptr
  %t341 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l144, i32 0, i32 0
  %t342 = load { i64, ptr }, ptr %t341
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = call ptr @__olang_region_or(ptr %t343, ptr null)
  %t345 = icmp ne ptr %t344, null
  %t346 = select i1 %t345, ptr %t344, ptr null
  %t347 = icmp eq ptr %t346, %t340
  call void @__olang_region_settle(ptr %t340, i1 %t347)
  br label %bb71
bb71:
  %t348 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l144
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t348, ptr %l24
  %t349 = ptrtoint ptr %v3 to i64
  store i64 %t349, ptr %l146, !tbaa !24
  %t350 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e22
  br i1 %t350, label %bb72, label %bb73
bb72:
  %t352 = call ptr @__olang_region_make(ptr %v3)
  %t353 = ptrtoint ptr %t352 to i64
  store i64 %t353, ptr %l146, !tbaa !24
  br label %bb73
bb73:
  %t354 = load i64, ptr %l146
  %t355 = inttoptr i64 %t354 to ptr
  %t356 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t355, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t356, ptr %l148
  br label %bb74
bb74:
  %t357 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e22
  br i1 %t357, label %bb75, label %bb76
bb75:
  %t359 = load i64, ptr %l146
  %t360 = inttoptr i64 %t359 to ptr
  %t361 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148, i32 0, i32 0
  %t362 = load { i64, ptr }, ptr %t361
  %t363 = extractvalue { i64, ptr } %t362, 1
  %t364 = call ptr @__olang_region_or(ptr %t363, ptr null)
  %t365 = icmp ne ptr %t364, null
  %t366 = select i1 %t365, ptr %t364, ptr null
  %t367 = icmp eq ptr %t366, %t360
  call void @__olang_region_settle(ptr %t360, i1 %t367)
  br label %bb76
bb76:
  %t368 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l148
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t368, ptr %l25
  %t369 = ptrtoint ptr %v3 to i64
  store i64 %t369, ptr %l150, !tbaa !24
  %t370 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e23
  br i1 %t370, label %bb77, label %bb78
bb77:
  %t372 = call ptr @__olang_region_make(ptr %v3)
  %t373 = ptrtoint ptr %t372 to i64
  store i64 %t373, ptr %l150, !tbaa !24
  br label %bb78
bb78:
  %t374 = load i64, ptr %l150
  %t375 = inttoptr i64 %t374 to ptr
  %t376 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t375, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t376, ptr %l152
  br label %bb79
bb79:
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e23
  br i1 %t377, label %bb80, label %bb81
bb80:
  %t379 = load i64, ptr %l150
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l152, i32 0, i32 0
  %t382 = load { i64, ptr }, ptr %t381
  %t383 = extractvalue { i64, ptr } %t382, 1
  %t384 = call ptr @__olang_region_or(ptr %t383, ptr null)
  %t385 = icmp ne ptr %t384, null
  %t386 = select i1 %t385, ptr %t384, ptr null
  %t387 = icmp eq ptr %t386, %t380
  call void @__olang_region_settle(ptr %t380, i1 %t387)
  br label %bb81
bb81:
  %t388 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l152
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t388, ptr %l26
  %t389 = ptrtoint ptr %v3 to i64
  store i64 %t389, ptr %l154, !tbaa !24
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e24
  br i1 %t390, label %bb82, label %bb83
bb82:
  %t392 = call ptr @__olang_region_make(ptr %v3)
  %t393 = ptrtoint ptr %t392 to i64
  store i64 %t393, ptr %l154, !tbaa !24
  br label %bb83
bb83:
  %t394 = load i64, ptr %l154
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__He8655158266a5936c27f8d8be8d0b7c6(ptr %t395)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t396, ptr %l156
  br label %bb84
bb84:
  %t397 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e24
  br i1 %t397, label %bb85, label %bb86
bb85:
  %t399 = load i64, ptr %l154
  %t400 = inttoptr i64 %t399 to ptr
  %t401 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 2
  %t402 = load { i64, ptr }, ptr %t401
  %t403 = extractvalue { i64, ptr } %t402, 1
  %t404 = call ptr @__olang_region_or(ptr %t403, ptr null)
  %t405 = icmp ne ptr %t404, null
  %t406 = select i1 %t405, ptr %t404, ptr null
  %t407 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 1
  %t408 = load { i64, ptr }, ptr %t407
  %t409 = extractvalue { i64, ptr } %t408, 1
  %t410 = call ptr @__olang_region_or(ptr %t409, ptr null)
  %t411 = icmp ne ptr %t410, null
  %t412 = select i1 %t411, ptr %t410, ptr %t406
  %t413 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156, i32 0, i32 0
  %t414 = load { i64, ptr }, ptr %t413
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = call ptr @__olang_region_or(ptr %t415, ptr null)
  %t417 = icmp ne ptr %t416, null
  %t418 = select i1 %t417, ptr %t416, ptr %t412
  %t419 = icmp eq ptr %t418, %t400
  call void @__olang_region_settle(ptr %t400, i1 %t419)
  br label %bb86
bb86:
  %t420 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l156
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t420, ptr %l27
  %t421 = ptrtoint ptr %v3 to i64
  store i64 %t421, ptr %l158, !tbaa !24
  %t422 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e25
  br i1 %t422, label %bb87, label %bb88
bb87:
  %t424 = call ptr @__olang_region_make(ptr %v3)
  %t425 = ptrtoint ptr %t424 to i64
  store i64 %t425, ptr %l158, !tbaa !24
  br label %bb88
bb88:
  %t426 = load i64, ptr %l158
  %t427 = inttoptr i64 %t426 to ptr
  %t428 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t427, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %l160
  br label %bb89
bb89:
  %t429 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e25
  br i1 %t429, label %bb90, label %bb91
bb90:
  %t431 = load i64, ptr %l158
  %t432 = inttoptr i64 %t431 to ptr
  %t433 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160, i32 0, i32 0
  %t434 = load { i64, ptr }, ptr %t433
  %t435 = extractvalue { i64, ptr } %t434, 1
  %t436 = call ptr @__olang_region_or(ptr %t435, ptr null)
  %t437 = icmp ne ptr %t436, null
  %t438 = select i1 %t437, ptr %t436, ptr null
  %t439 = icmp eq ptr %t438, %t432
  call void @__olang_region_settle(ptr %t432, i1 %t439)
  br label %bb91
bb91:
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l160
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %l28
  %t441 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t441, ptr %l162
  br label %bb92
bb92:
  %t442 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l162
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t442, ptr %l29
  %t443 = ptrtoint ptr %v3 to i64
  store i64 %t443, ptr %l163, !tbaa !24
  %t444 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e27
  br i1 %t444, label %bb93, label %bb94
bb93:
  %t446 = call ptr @__olang_region_make(ptr %v3)
  %t447 = ptrtoint ptr %t446 to i64
  store i64 %t447, ptr %l163, !tbaa !24
  br label %bb94
bb94:
  %t448 = load i64, ptr %l163
  %t449 = inttoptr i64 %t448 to ptr
  %t450 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t449, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %l165
  br label %bb95
bb95:
  %t451 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e27
  br i1 %t451, label %bb96, label %bb97
bb96:
  %t453 = load i64, ptr %l163
  %t454 = inttoptr i64 %t453 to ptr
  %t455 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165, i32 0, i32 0
  %t456 = load { i64, ptr }, ptr %t455
  %t457 = extractvalue { i64, ptr } %t456, 1
  %t458 = call ptr @__olang_region_or(ptr %t457, ptr null)
  %t459 = icmp ne ptr %t458, null
  %t460 = select i1 %t459, ptr %t458, ptr null
  %t461 = icmp eq ptr %t460, %t454
  call void @__olang_region_settle(ptr %t454, i1 %t461)
  br label %bb97
bb97:
  %t462 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l165
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t462, ptr %l30
  %t463 = ptrtoint ptr %v3 to i64
  store i64 %t463, ptr %l167, !tbaa !24
  %t464 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e28
  br i1 %t464, label %bb98, label %bb99
bb98:
  %t466 = call ptr @__olang_region_make(ptr %v3)
  %t467 = ptrtoint ptr %t466 to i64
  store i64 %t467, ptr %l167, !tbaa !24
  br label %bb99
bb99:
  %t468 = load i64, ptr %l167
  %t469 = inttoptr i64 %t468 to ptr
  %t470 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t469, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t470, ptr %l169
  br label %bb100
bb100:
  %t471 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e28
  br i1 %t471, label %bb101, label %bb102
bb101:
  %t473 = load i64, ptr %l167
  %t474 = inttoptr i64 %t473 to ptr
  %t475 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l169, i32 0, i32 0
  %t476 = load { i64, ptr }, ptr %t475
  %t477 = extractvalue { i64, ptr } %t476, 1
  %t478 = call ptr @__olang_region_or(ptr %t477, ptr null)
  %t479 = icmp ne ptr %t478, null
  %t480 = select i1 %t479, ptr %t478, ptr null
  %t481 = icmp eq ptr %t480, %t474
  call void @__olang_region_settle(ptr %t474, i1 %t481)
  br label %bb102
bb102:
  %t482 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t482, ptr %l31
  %t483 = ptrtoint ptr %v3 to i64
  store i64 %t483, ptr %l171, !tbaa !24
  %t484 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e29
  br i1 %t484, label %bb103, label %bb104
bb103:
  %t486 = call ptr @__olang_region_make(ptr %v3)
  %t487 = ptrtoint ptr %t486 to i64
  store i64 %t487, ptr %l171, !tbaa !24
  br label %bb104
bb104:
  %t488 = load i64, ptr %l171
  %t489 = inttoptr i64 %t488 to ptr
  %t490 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t489, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t490, ptr %l173
  br label %bb105
bb105:
  %t491 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e29
  br i1 %t491, label %bb106, label %bb107
bb106:
  %t493 = load i64, ptr %l171
  %t494 = inttoptr i64 %t493 to ptr
  %t495 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173, i32 0, i32 0
  %t496 = load { i64, ptr }, ptr %t495
  %t497 = extractvalue { i64, ptr } %t496, 1
  %t498 = call ptr @__olang_region_or(ptr %t497, ptr null)
  %t499 = icmp ne ptr %t498, null
  %t500 = select i1 %t499, ptr %t498, ptr null
  %t501 = icmp eq ptr %t500, %t494
  call void @__olang_region_settle(ptr %t494, i1 %t501)
  br label %bb107
bb107:
  %t502 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l173
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t502, ptr %l32
  %t503 = ptrtoint ptr %v3 to i64
  store i64 %t503, ptr %l175, !tbaa !24
  %t504 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e30
  br i1 %t504, label %bb108, label %bb109
bb108:
  %t506 = call ptr @__olang_region_make(ptr %v3)
  %t507 = ptrtoint ptr %t506 to i64
  store i64 %t507, ptr %l175, !tbaa !24
  br label %bb109
bb109:
  %t508 = load i64, ptr %l175
  %t509 = inttoptr i64 %t508 to ptr
  %t510 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t509, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t510, ptr %l177
  br label %bb110
bb110:
  %t511 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e30
  br i1 %t511, label %bb111, label %bb112
bb111:
  %t513 = load i64, ptr %l175
  %t514 = inttoptr i64 %t513 to ptr
  %t515 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177, i32 0, i32 0
  %t516 = load { i64, ptr }, ptr %t515
  %t517 = extractvalue { i64, ptr } %t516, 1
  %t518 = call ptr @__olang_region_or(ptr %t517, ptr null)
  %t519 = icmp ne ptr %t518, null
  %t520 = select i1 %t519, ptr %t518, ptr null
  %t521 = icmp eq ptr %t520, %t514
  call void @__olang_region_settle(ptr %t514, i1 %t521)
  br label %bb112
bb112:
  %t522 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t522, ptr %l33
  %t523 = ptrtoint ptr %v3 to i64
  store i64 %t523, ptr %l179, !tbaa !24
  %t524 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e31
  br i1 %t524, label %bb113, label %bb114
bb113:
  %t526 = call ptr @__olang_region_make(ptr %v3)
  %t527 = ptrtoint ptr %t526 to i64
  store i64 %t527, ptr %l179, !tbaa !24
  br label %bb114
bb114:
  %t528 = load i64, ptr %l179
  %t529 = inttoptr i64 %t528 to ptr
  %t530 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t529, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t530, ptr %l181
  br label %bb115
bb115:
  %t531 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e31
  br i1 %t531, label %bb116, label %bb117
bb116:
  %t533 = load i64, ptr %l179
  %t534 = inttoptr i64 %t533 to ptr
  %t535 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l181, i32 0, i32 0
  %t536 = load { i64, ptr }, ptr %t535
  %t537 = extractvalue { i64, ptr } %t536, 1
  %t538 = call ptr @__olang_region_or(ptr %t537, ptr null)
  %t539 = icmp ne ptr %t538, null
  %t540 = select i1 %t539, ptr %t538, ptr null
  %t541 = icmp eq ptr %t540, %t534
  call void @__olang_region_settle(ptr %t534, i1 %t541)
  br label %bb117
bb117:
  %t542 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l181
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t542, ptr %l34
  %t543 = ptrtoint ptr %v3 to i64
  store i64 %t543, ptr %l183, !tbaa !24
  %t544 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e32
  br i1 %t544, label %bb118, label %bb119
bb118:
  %t546 = call ptr @__olang_region_make(ptr %v3)
  %t547 = ptrtoint ptr %t546 to i64
  store i64 %t547, ptr %l183, !tbaa !24
  br label %bb119
bb119:
  %t548 = load i64, ptr %l183
  %t549 = inttoptr i64 %t548 to ptr
  %t550 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t549, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t550, ptr %l185
  br label %bb120
bb120:
  %t551 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e32
  br i1 %t551, label %bb121, label %bb122
bb121:
  %t553 = load i64, ptr %l183
  %t554 = inttoptr i64 %t553 to ptr
  %t555 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l185, i32 0, i32 0
  %t556 = load { i64, ptr }, ptr %t555
  %t557 = extractvalue { i64, ptr } %t556, 1
  %t558 = call ptr @__olang_region_or(ptr %t557, ptr null)
  %t559 = icmp ne ptr %t558, null
  %t560 = select i1 %t559, ptr %t558, ptr null
  %t561 = icmp eq ptr %t560, %t554
  call void @__olang_region_settle(ptr %t554, i1 %t561)
  br label %bb122
bb122:
  %t562 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l185
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t562, ptr %l35
  %t563 = ptrtoint ptr %v3 to i64
  store i64 %t563, ptr %l187, !tbaa !24
  %t564 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e33
  br i1 %t564, label %bb123, label %bb124
bb123:
  %t566 = call ptr @__olang_region_make(ptr %v3)
  %t567 = ptrtoint ptr %t566 to i64
  store i64 %t567, ptr %l187, !tbaa !24
  br label %bb124
bb124:
  %t568 = load i64, ptr %l187
  %t569 = inttoptr i64 %t568 to ptr
  %t570 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t569, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t570, ptr %l189
  br label %bb125
bb125:
  %t571 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e33
  br i1 %t571, label %bb126, label %bb127
bb126:
  %t573 = load i64, ptr %l187
  %t574 = inttoptr i64 %t573 to ptr
  %t575 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575
  %t577 = extractvalue { i64, ptr } %t576, 1
  %t578 = call ptr @__olang_region_or(ptr %t577, ptr null)
  %t579 = icmp ne ptr %t578, null
  %t580 = select i1 %t579, ptr %t578, ptr null
  %t581 = icmp eq ptr %t580, %t574
  call void @__olang_region_settle(ptr %t574, i1 %t581)
  br label %bb127
bb127:
  %t582 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l189
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t582, ptr %l36
  %t583 = ptrtoint ptr %v3 to i64
  store i64 %t583, ptr %l191, !tbaa !24
  %t584 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e34
  br i1 %t584, label %bb128, label %bb129
bb128:
  %t586 = call ptr @__olang_region_make(ptr %v3)
  %t587 = ptrtoint ptr %t586 to i64
  store i64 %t587, ptr %l191, !tbaa !24
  br label %bb129
bb129:
  %t588 = load i64, ptr %l191
  %t589 = inttoptr i64 %t588 to ptr
  %t590 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t589, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t590, ptr %l193
  br label %bb130
bb130:
  %t591 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e34
  br i1 %t591, label %bb131, label %bb132
bb131:
  %t593 = load i64, ptr %l191
  %t594 = inttoptr i64 %t593 to ptr
  %t595 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193, i32 0, i32 0
  %t596 = load { i64, ptr }, ptr %t595
  %t597 = extractvalue { i64, ptr } %t596, 1
  %t598 = call ptr @__olang_region_or(ptr %t597, ptr null)
  %t599 = icmp ne ptr %t598, null
  %t600 = select i1 %t599, ptr %t598, ptr null
  %t601 = icmp eq ptr %t600, %t594
  call void @__olang_region_settle(ptr %t594, i1 %t601)
  br label %bb132
bb132:
  %t602 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l193
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t602, ptr %l37
  %t603 = ptrtoint ptr %v3 to i64
  store i64 %t603, ptr %l195, !tbaa !24
  %t604 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e35
  br i1 %t604, label %bb133, label %bb134
bb133:
  %t606 = call ptr @__olang_region_make(ptr %v3)
  %t607 = ptrtoint ptr %t606 to i64
  store i64 %t607, ptr %l195, !tbaa !24
  br label %bb134
bb134:
  %t608 = load i64, ptr %l195
  %t609 = inttoptr i64 %t608 to ptr
  %t610 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t609, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t610, ptr %l197
  br label %bb135
bb135:
  %t611 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e35
  br i1 %t611, label %bb136, label %bb137
bb136:
  %t613 = load i64, ptr %l195
  %t614 = inttoptr i64 %t613 to ptr
  %t615 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l197, i32 0, i32 0
  %t616 = load { i64, ptr }, ptr %t615
  %t617 = extractvalue { i64, ptr } %t616, 1
  %t618 = call ptr @__olang_region_or(ptr %t617, ptr null)
  %t619 = icmp ne ptr %t618, null
  %t620 = select i1 %t619, ptr %t618, ptr null
  %t621 = icmp eq ptr %t620, %t614
  call void @__olang_region_settle(ptr %t614, i1 %t621)
  br label %bb137
bb137:
  %t622 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l197
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t622, ptr %l38
  %t623 = ptrtoint ptr %v3 to i64
  store i64 %t623, ptr %l199, !tbaa !24
  %t624 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e36
  br i1 %t624, label %bb138, label %bb139
bb138:
  %t626 = call ptr @__olang_region_make(ptr %v3)
  %t627 = ptrtoint ptr %t626 to i64
  store i64 %t627, ptr %l199, !tbaa !24
  br label %bb139
bb139:
  %t628 = load i64, ptr %l199
  %t629 = inttoptr i64 %t628 to ptr
  %t630 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t629, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t630, ptr %l201
  br label %bb140
bb140:
  %t631 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e36
  br i1 %t631, label %bb141, label %bb142
bb141:
  %t633 = load i64, ptr %l199
  %t634 = inttoptr i64 %t633 to ptr
  %t635 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l201, i32 0, i32 0
  %t636 = load { i64, ptr }, ptr %t635
  %t637 = extractvalue { i64, ptr } %t636, 1
  %t638 = call ptr @__olang_region_or(ptr %t637, ptr null)
  %t639 = icmp ne ptr %t638, null
  %t640 = select i1 %t639, ptr %t638, ptr null
  %t641 = icmp eq ptr %t640, %t634
  call void @__olang_region_settle(ptr %t634, i1 %t641)
  br label %bb142
bb142:
  %t642 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l201
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t642, ptr %l39
  %t643 = ptrtoint ptr %v3 to i64
  store i64 %t643, ptr %l203, !tbaa !24
  %t644 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e37
  br i1 %t644, label %bb143, label %bb144
bb143:
  %t646 = call ptr @__olang_region_make(ptr %v3)
  %t647 = ptrtoint ptr %t646 to i64
  store i64 %t647, ptr %l203, !tbaa !24
  br label %bb144
bb144:
  %t648 = load i64, ptr %l203
  %t649 = inttoptr i64 %t648 to ptr
  %t650 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t649, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t650, ptr %l205
  br label %bb145
bb145:
  %t651 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e37
  br i1 %t651, label %bb146, label %bb147
bb146:
  %t653 = load i64, ptr %l203
  %t654 = inttoptr i64 %t653 to ptr
  %t655 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l205, i32 0, i32 0
  %t656 = load { i64, ptr }, ptr %t655
  %t657 = extractvalue { i64, ptr } %t656, 1
  %t658 = call ptr @__olang_region_or(ptr %t657, ptr null)
  %t659 = icmp ne ptr %t658, null
  %t660 = select i1 %t659, ptr %t658, ptr null
  %t661 = icmp eq ptr %t660, %t654
  call void @__olang_region_settle(ptr %t654, i1 %t661)
  br label %bb147
bb147:
  %t662 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l205
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t662, ptr %l40
  %t663 = ptrtoint ptr %v3 to i64
  store i64 %t663, ptr %l207, !tbaa !24
  %t664 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e38
  br i1 %t664, label %bb148, label %bb149
bb148:
  %t666 = call ptr @__olang_region_make(ptr %v3)
  %t667 = ptrtoint ptr %t666 to i64
  store i64 %t667, ptr %l207, !tbaa !24
  br label %bb149
bb149:
  %t668 = load i64, ptr %l207
  %t669 = inttoptr i64 %t668 to ptr
  %t670 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t669, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t670, ptr %l209
  br label %bb150
bb150:
  %t671 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e38
  br i1 %t671, label %bb151, label %bb152
bb151:
  %t673 = load i64, ptr %l207
  %t674 = inttoptr i64 %t673 to ptr
  %t675 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209, i32 0, i32 0
  %t676 = load { i64, ptr }, ptr %t675
  %t677 = extractvalue { i64, ptr } %t676, 1
  %t678 = call ptr @__olang_region_or(ptr %t677, ptr null)
  %t679 = icmp ne ptr %t678, null
  %t680 = select i1 %t679, ptr %t678, ptr null
  %t681 = icmp eq ptr %t680, %t674
  call void @__olang_region_settle(ptr %t674, i1 %t681)
  br label %bb152
bb152:
  %t682 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t682, ptr %l41
  %t683 = ptrtoint ptr %v3 to i64
  store i64 %t683, ptr %l211, !tbaa !24
  %t684 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e39
  br i1 %t684, label %bb153, label %bb154
bb153:
  %t686 = call ptr @__olang_region_make(ptr %v3)
  %t687 = ptrtoint ptr %t686 to i64
  store i64 %t687, ptr %l211, !tbaa !24
  br label %bb154
bb154:
  %t688 = load i64, ptr %l211
  %t689 = inttoptr i64 %t688 to ptr
  %t690 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t689, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t690, ptr %l213
  br label %bb155
bb155:
  %t691 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e39
  br i1 %t691, label %bb156, label %bb157
bb156:
  %t693 = load i64, ptr %l211
  %t694 = inttoptr i64 %t693 to ptr
  %t695 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213, i32 0, i32 0
  %t696 = load { i64, ptr }, ptr %t695
  %t697 = extractvalue { i64, ptr } %t696, 1
  %t698 = call ptr @__olang_region_or(ptr %t697, ptr null)
  %t699 = icmp ne ptr %t698, null
  %t700 = select i1 %t699, ptr %t698, ptr null
  %t701 = icmp eq ptr %t700, %t694
  call void @__olang_region_settle(ptr %t694, i1 %t701)
  br label %bb157
bb157:
  %t702 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l213
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t702, ptr %l42
  store i1 false, ptr %l43, !tbaa !21
  store i1 false, ptr %l44, !tbaa !21
  %t703 = ptrtoint ptr %v3 to i64
  store i64 %t703, ptr %l215, !tbaa !24
  %t704 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e42
  br i1 %t704, label %bb158, label %bb159
bb158:
  %t706 = call ptr @__olang_region_make(ptr %v3)
  %t707 = ptrtoint ptr %t706 to i64
  store i64 %t707, ptr %l215, !tbaa !24
  br label %bb159
bb159:
  %t708 = load i64, ptr %l215
  %t709 = inttoptr i64 %t708 to ptr
  %t710 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t709, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t710, ptr %l217
  br label %bb160
bb160:
  %t711 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e42
  br i1 %t711, label %bb161, label %bb162
bb161:
  %t713 = load i64, ptr %l215
  %t714 = inttoptr i64 %t713 to ptr
  %t715 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217, i32 0, i32 0
  %t716 = load { i64, ptr }, ptr %t715
  %t717 = extractvalue { i64, ptr } %t716, 1
  %t718 = call ptr @__olang_region_or(ptr %t717, ptr null)
  %t719 = icmp ne ptr %t718, null
  %t720 = select i1 %t719, ptr %t718, ptr null
  %t721 = icmp eq ptr %t720, %t714
  call void @__olang_region_settle(ptr %t714, i1 %t721)
  br label %bb162
bb162:
  %t722 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l217
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t722, ptr %l45
  %t723 = ptrtoint ptr %v3 to i64
  store i64 %t723, ptr %l219, !tbaa !24
  %t724 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e43
  br i1 %t724, label %bb163, label %bb164
bb163:
  %t726 = call ptr @__olang_region_make(ptr %v3)
  %t727 = ptrtoint ptr %t726 to i64
  store i64 %t727, ptr %l219, !tbaa !24
  br label %bb164
bb164:
  %t728 = load i64, ptr %l219
  %t729 = inttoptr i64 %t728 to ptr
  %t730 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t729, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t730, ptr %l221
  br label %bb165
bb165:
  %t731 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e43
  br i1 %t731, label %bb166, label %bb167
bb166:
  %t733 = load i64, ptr %l219
  %t734 = inttoptr i64 %t733 to ptr
  %t735 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221, i32 0, i32 0
  %t736 = load { i64, ptr }, ptr %t735
  %t737 = extractvalue { i64, ptr } %t736, 1
  %t738 = call ptr @__olang_region_or(ptr %t737, ptr null)
  %t739 = icmp ne ptr %t738, null
  %t740 = select i1 %t739, ptr %t738, ptr null
  %t741 = icmp eq ptr %t740, %t734
  call void @__olang_region_settle(ptr %t734, i1 %t741)
  br label %bb167
bb167:
  %t742 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t742, ptr %l46
  store i1 false, ptr %l47, !tbaa !21
  %t743 = ptrtoint ptr %v3 to i64
  store i64 %t743, ptr %l223, !tbaa !24
  %t744 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e45
  br i1 %t744, label %bb168, label %bb169
bb168:
  %t746 = call ptr @__olang_region_make(ptr %v3)
  %t747 = ptrtoint ptr %t746 to i64
  store i64 %t747, ptr %l223, !tbaa !24
  br label %bb169
bb169:
  %t748 = load i64, ptr %l223
  %t749 = inttoptr i64 %t748 to ptr
  %t750 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t749, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t750, ptr %l225
  br label %bb170
bb170:
  %t751 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e45
  br i1 %t751, label %bb171, label %bb172
bb171:
  %t753 = load i64, ptr %l223
  %t754 = inttoptr i64 %t753 to ptr
  %t755 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225, i32 0, i32 0
  %t756 = load { i64, ptr }, ptr %t755
  %t757 = extractvalue { i64, ptr } %t756, 1
  %t758 = call ptr @__olang_region_or(ptr %t757, ptr null)
  %t759 = icmp ne ptr %t758, null
  %t760 = select i1 %t759, ptr %t758, ptr null
  %t761 = icmp eq ptr %t760, %t754
  call void @__olang_region_settle(ptr %t754, i1 %t761)
  br label %bb172
bb172:
  %t762 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l225
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t762, ptr %l48
  %t763 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t763, ptr %l227
  br label %bb173
bb173:
  %t764 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t764, ptr %l49
  %t765 = ptrtoint ptr %v3 to i64
  store i64 %t765, ptr %l228, !tbaa !24
  %t766 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e47
  br i1 %t766, label %bb174, label %bb175
bb174:
  %t768 = call ptr @__olang_region_make(ptr %v3)
  %t769 = ptrtoint ptr %t768 to i64
  store i64 %t769, ptr %l228, !tbaa !24
  br label %bb175
bb175:
  %t770 = load i64, ptr %l228
  %t771 = inttoptr i64 %t770 to ptr
  %t772 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ector(ptr %t771, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t772, ptr %l230
  br label %bb176
bb176:
  %t773 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e47
  br i1 %t773, label %bb177, label %bb178
bb177:
  %t775 = load i64, ptr %l228
  %t776 = inttoptr i64 %t775 to ptr
  %t777 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l230, i32 0, i32 0
  %t778 = load { i64, ptr }, ptr %t777
  %t779 = extractvalue { i64, ptr } %t778, 1
  %t780 = call ptr @__olang_region_or(ptr %t779, ptr null)
  %t781 = icmp ne ptr %t780, null
  %t782 = select i1 %t781, ptr %t780, ptr null
  %t783 = icmp eq ptr %t782, %t776
  call void @__olang_region_settle(ptr %t776, i1 %t783)
  br label %bb178
bb178:
  %t784 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l230
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t784, ptr %l50
  %t785 = ptrtoint ptr %v3 to i64
  store i64 %t785, ptr %l232, !tbaa !24
  %t786 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e48
  br i1 %t786, label %bb179, label %bb180
bb179:
  %t788 = call ptr @__olang_region_make(ptr %v3)
  %t789 = ptrtoint ptr %t788 to i64
  store i64 %t789, ptr %l232, !tbaa !24
  br label %bb180
bb180:
  %t790 = load i64, ptr %l232
  %t791 = inttoptr i64 %t790 to ptr
  %t792 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t791, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t792, ptr %l234
  br label %bb181
bb181:
  %t793 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e48
  br i1 %t793, label %bb182, label %bb183
bb182:
  %t795 = load i64, ptr %l232
  %t796 = inttoptr i64 %t795 to ptr
  %t797 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234, i32 0, i32 0
  %t798 = load { i64, ptr }, ptr %t797
  %t799 = extractvalue { i64, ptr } %t798, 1
  %t800 = call ptr @__olang_region_or(ptr %t799, ptr null)
  %t801 = icmp ne ptr %t800, null
  %t802 = select i1 %t801, ptr %t800, ptr null
  %t803 = icmp eq ptr %t802, %t796
  call void @__olang_region_settle(ptr %t796, i1 %t803)
  br label %bb183
bb183:
  %t804 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l234
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t804, ptr %l51
  %t805 = ptrtoint ptr %v3 to i64
  store i64 %t805, ptr %l236, !tbaa !24
  %t806 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e49
  br i1 %t806, label %bb184, label %bb185
bb184:
  %t808 = call ptr @__olang_region_make(ptr %v3)
  %t809 = ptrtoint ptr %t808 to i64
  store i64 %t809, ptr %l236, !tbaa !24
  br label %bb185
bb185:
  %t810 = load i64, ptr %l236
  %t811 = inttoptr i64 %t810 to ptr
  %t812 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t811, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t812, ptr %l238
  br label %bb186
bb186:
  %t813 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e49
  br i1 %t813, label %bb187, label %bb188
bb187:
  %t815 = load i64, ptr %l236
  %t816 = inttoptr i64 %t815 to ptr
  %t817 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l238, i32 0, i32 0
  %t818 = load { i64, ptr }, ptr %t817
  %t819 = extractvalue { i64, ptr } %t818, 1
  %t820 = call ptr @__olang_region_or(ptr %t819, ptr null)
  %t821 = icmp ne ptr %t820, null
  %t822 = select i1 %t821, ptr %t820, ptr null
  %t823 = icmp eq ptr %t822, %t816
  call void @__olang_region_settle(ptr %t816, i1 %t823)
  br label %bb188
bb188:
  %t824 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l238
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t824, ptr %l52
  %t825 = ptrtoint ptr %v3 to i64
  store i64 %t825, ptr %l240, !tbaa !24
  %t826 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e50
  br i1 %t826, label %bb189, label %bb190
bb189:
  %t828 = call ptr @__olang_region_make(ptr %v3)
  %t829 = ptrtoint ptr %t828 to i64
  store i64 %t829, ptr %l240, !tbaa !24
  br label %bb190
bb190:
  %t830 = load i64, ptr %l240
  %t831 = inttoptr i64 %t830 to ptr
  %t832 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ector(ptr %t831, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t832, ptr %l242
  br label %bb191
bb191:
  %t833 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e50
  br i1 %t833, label %bb192, label %bb193
bb192:
  %t835 = load i64, ptr %l240
  %t836 = inttoptr i64 %t835 to ptr
  %t837 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242, i32 0, i32 0
  %t838 = load { i64, ptr }, ptr %t837
  %t839 = extractvalue { i64, ptr } %t838, 1
  %t840 = call ptr @__olang_region_or(ptr %t839, ptr null)
  %t841 = icmp ne ptr %t840, null
  %t842 = select i1 %t841, ptr %t840, ptr null
  %t843 = icmp eq ptr %t842, %t836
  call void @__olang_region_settle(ptr %t836, i1 %t843)
  br label %bb193
bb193:
  %t844 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l242
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t844, ptr %l53
  %t845 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t845, ptr %l244
  br label %bb194
bb194:
  %t846 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l244
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t846, ptr %l54
  %t847 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t847, ptr %l245
  br label %bb195
bb195:
  %t848 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l245
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t848, ptr %l55
  %t849 = ptrtoint ptr %v3 to i64
  store i64 %t849, ptr %l246, !tbaa !24
  %t850 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e53
  br i1 %t850, label %bb196, label %bb197
bb196:
  %t852 = call ptr @__olang_region_make(ptr %v3)
  %t853 = ptrtoint ptr %t852 to i64
  store i64 %t853, ptr %l246, !tbaa !24
  br label %bb197
bb197:
  %t854 = load i64, ptr %l246
  %t855 = inttoptr i64 %t854 to ptr
  %t856 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t855, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t856, ptr %l248
  br label %bb198
bb198:
  %t857 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e53
  br i1 %t857, label %bb199, label %bb200
bb199:
  %t859 = load i64, ptr %l246
  %t860 = inttoptr i64 %t859 to ptr
  %t861 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248, i32 0, i32 0
  %t862 = load { i64, ptr }, ptr %t861
  %t863 = extractvalue { i64, ptr } %t862, 1
  %t864 = call ptr @__olang_region_or(ptr %t863, ptr null)
  %t865 = icmp ne ptr %t864, null
  %t866 = select i1 %t865, ptr %t864, ptr null
  %t867 = icmp eq ptr %t866, %t860
  call void @__olang_region_settle(ptr %t860, i1 %t867)
  br label %bb200
bb200:
  %t868 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l248
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t868, ptr %l56
  store i64 -1, ptr %l57, !tbaa !24
  store i64 -1, ptr %l58, !tbaa !24
  %t869 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v3, i32 0, i32 0)
  store %"compiler/source:Span" %t869, ptr %l250
  br label %bb201
bb201:
  %t870 = load %"compiler/source:Span", ptr %l250
  store %"compiler/source:Span" %t870, ptr %l59
  %t871 = ptrtoint ptr %v3 to i64
  store i64 %t871, ptr %l251, !tbaa !24
  %t872 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e57
  br i1 %t872, label %bb202, label %bb203
bb202:
  %t874 = call ptr @__olang_region_make(ptr %v3)
  %t875 = ptrtoint ptr %t874 to i64
  store i64 %t875, ptr %l251, !tbaa !24
  br label %bb203
bb203:
  %t876 = load i64, ptr %l251
  %t877 = inttoptr i64 %t876 to ptr
  %t878 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t877, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t878, ptr %l253
  br label %bb204
bb204:
  %t879 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e57
  br i1 %t879, label %bb205, label %bb206
bb205:
  %t881 = load i64, ptr %l251
  %t882 = inttoptr i64 %t881 to ptr
  %t883 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l253, i32 0, i32 0
  %t884 = load { i64, ptr }, ptr %t883
  %t885 = extractvalue { i64, ptr } %t884, 1
  %t886 = call ptr @__olang_region_or(ptr %t885, ptr null)
  %t887 = icmp ne ptr %t886, null
  %t888 = select i1 %t887, ptr %t886, ptr null
  %t889 = icmp eq ptr %t888, %t882
  call void @__olang_region_settle(ptr %t882, i1 %t889)
  br label %bb206
bb206:
  %t890 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l253
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t890, ptr %l60
  %t891 = ptrtoint ptr %v3 to i64
  store i64 %t891, ptr %l255, !tbaa !24
  %t892 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e58
  br i1 %t892, label %bb207, label %bb208
bb207:
  %t894 = call ptr @__olang_region_make(ptr %v3)
  %t895 = ptrtoint ptr %t894 to i64
  store i64 %t895, ptr %l255, !tbaa !24
  br label %bb208
bb208:
  %t896 = load i64, ptr %l255
  %t897 = inttoptr i64 %t896 to ptr
  %t898 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t897, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t898, ptr %l257
  br label %bb209
bb209:
  %t899 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e58
  br i1 %t899, label %bb210, label %bb211
bb210:
  %t901 = load i64, ptr %l255
  %t902 = inttoptr i64 %t901 to ptr
  %t903 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257, i32 0, i32 0
  %t904 = load { i64, ptr }, ptr %t903
  %t905 = extractvalue { i64, ptr } %t904, 1
  %t906 = call ptr @__olang_region_or(ptr %t905, ptr null)
  %t907 = icmp ne ptr %t906, null
  %t908 = select i1 %t907, ptr %t906, ptr null
  %t909 = icmp eq ptr %t908, %t902
  call void @__olang_region_settle(ptr %t902, i1 %t909)
  br label %bb211
bb211:
  %t910 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t910, ptr %l61
  %t911 = ptrtoint ptr %v3 to i64
  store i64 %t911, ptr %l259, !tbaa !24
  %t912 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e59
  br i1 %t912, label %bb212, label %bb213
bb212:
  %t914 = call ptr @__olang_region_make(ptr %v3)
  %t915 = ptrtoint ptr %t914 to i64
  store i64 %t915, ptr %l259, !tbaa !24
  br label %bb213
bb213:
  %t916 = load i64, ptr %l259
  %t917 = inttoptr i64 %t916 to ptr
  %t918 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2ector(ptr %t917, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t918, ptr %l261
  br label %bb214
bb214:
  %t919 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e59
  br i1 %t919, label %bb215, label %bb216
bb215:
  %t921 = load i64, ptr %l259
  %t922 = inttoptr i64 %t921 to ptr
  %t923 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l261, i32 0, i32 0
  %t924 = load { i64, ptr }, ptr %t923
  %t925 = extractvalue { i64, ptr } %t924, 1
  %t926 = call ptr @__olang_region_or(ptr %t925, ptr null)
  %t927 = icmp ne ptr %t926, null
  %t928 = select i1 %t927, ptr %t926, ptr null
  %t929 = icmp eq ptr %t928, %t922
  call void @__olang_region_settle(ptr %t922, i1 %t929)
  br label %bb216
bb216:
  %t930 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l261
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t930, ptr %l62
  %t931 = ptrtoint ptr %v3 to i64
  store i64 %t931, ptr %l263, !tbaa !24
  %t932 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e60
  br i1 %t932, label %bb217, label %bb218
bb217:
  %t934 = call ptr @__olang_region_make(ptr %v3)
  %t935 = ptrtoint ptr %t934 to i64
  store i64 %t935, ptr %l263, !tbaa !24
  br label %bb218
bb218:
  %t936 = load i64, ptr %l263
  %t937 = inttoptr i64 %t936 to ptr
  %t938 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %t937, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t938, ptr %l265
  br label %bb219
bb219:
  %t939 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e60
  br i1 %t939, label %bb220, label %bb221
bb220:
  %t941 = load i64, ptr %l263
  %t942 = inttoptr i64 %t941 to ptr
  %t943 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l265, i32 0, i32 0
  %t944 = load { i64, ptr }, ptr %t943
  %t945 = extractvalue { i64, ptr } %t944, 1
  %t946 = call ptr @__olang_region_or(ptr %t945, ptr null)
  %t947 = icmp ne ptr %t946, null
  %t948 = select i1 %t947, ptr %t946, ptr null
  %t949 = icmp eq ptr %t948, %t942
  call void @__olang_region_settle(ptr %t942, i1 %t949)
  br label %bb221
bb221:
  %t950 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l265
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t950, ptr %l63
  %t951 = ptrtoint ptr %v3 to i64
  store i64 %t951, ptr %l267, !tbaa !24
  %t952 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e61
  br i1 %t952, label %bb222, label %bb223
bb222:
  %t954 = call ptr @__olang_region_make(ptr %v3)
  %t955 = ptrtoint ptr %t954 to i64
  store i64 %t955, ptr %l267, !tbaa !24
  br label %bb223
bb223:
  %t956 = load i64, ptr %l267
  %t957 = inttoptr i64 %t956 to ptr
  %t958 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t957, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t958, ptr %l269
  br label %bb224
bb224:
  %t959 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e61
  br i1 %t959, label %bb225, label %bb226
bb225:
  %t961 = load i64, ptr %l267
  %t962 = inttoptr i64 %t961 to ptr
  %t963 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269, i32 0, i32 0
  %t964 = load { i64, ptr }, ptr %t963
  %t965 = extractvalue { i64, ptr } %t964, 1
  %t966 = call ptr @__olang_region_or(ptr %t965, ptr null)
  %t967 = icmp ne ptr %t966, null
  %t968 = select i1 %t967, ptr %t966, ptr null
  %t969 = icmp eq ptr %t968, %t962
  call void @__olang_region_settle(ptr %t962, i1 %t969)
  br label %bb226
bb226:
  %t970 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t970, ptr %l64
  %t971 = ptrtoint ptr %v3 to i64
  store i64 %t971, ptr %l271, !tbaa !24
  %t972 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e62
  br i1 %t972, label %bb227, label %bb228
bb227:
  %t974 = call ptr @__olang_region_make(ptr %v3)
  %t975 = ptrtoint ptr %t974 to i64
  store i64 %t975, ptr %l271, !tbaa !24
  br label %bb228
bb228:
  %t976 = load i64, ptr %l271
  %t977 = inttoptr i64 %t976 to ptr
  %t978 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %t977, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t978, ptr %l273
  br label %bb229
bb229:
  %t979 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e62
  br i1 %t979, label %bb230, label %bb231
bb230:
  %t981 = load i64, ptr %l271
  %t982 = inttoptr i64 %t981 to ptr
  %t983 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l273, i32 0, i32 0
  %t984 = load { i64, ptr }, ptr %t983
  %t985 = extractvalue { i64, ptr } %t984, 1
  %t986 = call ptr @__olang_region_or(ptr %t985, ptr null)
  %t987 = icmp ne ptr %t986, null
  %t988 = select i1 %t987, ptr %t986, ptr null
  %t989 = icmp eq ptr %t988, %t982
  call void @__olang_region_settle(ptr %t982, i1 %t989)
  br label %bb231
bb231:
  %t990 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l273
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t990, ptr %l65
  %t991 = ptrtoint ptr %v3 to i64
  store i64 %t991, ptr %l275, !tbaa !24
  %t992 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e63
  br i1 %t992, label %bb232, label %bb233
bb232:
  %t994 = call ptr @__olang_region_make(ptr %v3)
  %t995 = ptrtoint ptr %t994 to i64
  store i64 %t995, ptr %l275, !tbaa !24
  br label %bb233
bb233:
  %t996 = load i64, ptr %l275
  %t997 = inttoptr i64 %t996 to ptr
  %t998 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t997)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t998, ptr %l277
  br label %bb234
bb234:
  %t999 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e63
  br i1 %t999, label %bb235, label %bb236
bb235:
  %t1001 = load i64, ptr %l275
  %t1002 = inttoptr i64 %t1001 to ptr
  %t1003 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l277, i32 0, i32 2
  %t1004 = load { i64, ptr }, ptr %t1003
  %t1005 = extractvalue { i64, ptr } %t1004, 1
  %t1006 = call ptr @__olang_region_or(ptr %t1005, ptr null)
  %t1007 = icmp ne ptr %t1006, null
  %t1008 = select i1 %t1007, ptr %t1006, ptr null
  %t1009 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l277, i32 0, i32 1
  %t1010 = load { i64, ptr }, ptr %t1009
  %t1011 = extractvalue { i64, ptr } %t1010, 1
  %t1012 = call ptr @__olang_region_or(ptr %t1011, ptr null)
  %t1013 = icmp ne ptr %t1012, null
  %t1014 = select i1 %t1013, ptr %t1012, ptr %t1008
  %t1015 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l277, i32 0, i32 0
  %t1016 = load { i64, ptr }, ptr %t1015
  %t1017 = extractvalue { i64, ptr } %t1016, 1
  %t1018 = call ptr @__olang_region_or(ptr %t1017, ptr null)
  %t1019 = icmp ne ptr %t1018, null
  %t1020 = select i1 %t1019, ptr %t1018, ptr %t1014
  %t1021 = icmp eq ptr %t1020, %t1002
  call void @__olang_region_settle(ptr %t1002, i1 %t1021)
  br label %bb236
bb236:
  %t1022 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l277
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1022, ptr %l66
  %t1023 = ptrtoint ptr %v3 to i64
  store i64 %t1023, ptr %l279, !tbaa !24
  %t1024 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e64
  br i1 %t1024, label %bb237, label %bb238
bb237:
  %t1026 = call ptr @__olang_region_make(ptr %v3)
  %t1027 = ptrtoint ptr %t1026 to i64
  store i64 %t1027, ptr %l279, !tbaa !24
  br label %bb238
bb238:
  %t1028 = load i64, ptr %l279
  %t1029 = inttoptr i64 %t1028 to ptr
  %t1030 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t1029)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1030, ptr %l281
  br label %bb239
bb239:
  %t1031 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e64
  br i1 %t1031, label %bb240, label %bb241
bb240:
  %t1033 = load i64, ptr %l279
  %t1034 = inttoptr i64 %t1033 to ptr
  %t1035 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l281, i32 0, i32 2
  %t1036 = load { i64, ptr }, ptr %t1035
  %t1037 = extractvalue { i64, ptr } %t1036, 1
  %t1038 = call ptr @__olang_region_or(ptr %t1037, ptr null)
  %t1039 = icmp ne ptr %t1038, null
  %t1040 = select i1 %t1039, ptr %t1038, ptr null
  %t1041 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l281, i32 0, i32 1
  %t1042 = load { i64, ptr }, ptr %t1041
  %t1043 = extractvalue { i64, ptr } %t1042, 1
  %t1044 = call ptr @__olang_region_or(ptr %t1043, ptr null)
  %t1045 = icmp ne ptr %t1044, null
  %t1046 = select i1 %t1045, ptr %t1044, ptr %t1040
  %t1047 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l281, i32 0, i32 0
  %t1048 = load { i64, ptr }, ptr %t1047
  %t1049 = extractvalue { i64, ptr } %t1048, 1
  %t1050 = call ptr @__olang_region_or(ptr %t1049, ptr null)
  %t1051 = icmp ne ptr %t1050, null
  %t1052 = select i1 %t1051, ptr %t1050, ptr %t1046
  %t1053 = icmp eq ptr %t1052, %t1034
  call void @__olang_region_settle(ptr %t1034, i1 %t1053)
  br label %bb241
bb241:
  %t1054 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l281
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1054, ptr %l67
  %t1055 = ptrtoint ptr %v3 to i64
  store i64 %t1055, ptr %l283, !tbaa !24
  %t1056 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e65
  br i1 %t1056, label %bb242, label %bb243
bb242:
  %t1058 = call ptr @__olang_region_make(ptr %v3)
  %t1059 = ptrtoint ptr %t1058 to i64
  store i64 %t1059, ptr %l283, !tbaa !24
  br label %bb243
bb243:
  %t1060 = load i64, ptr %l283
  %t1061 = inttoptr i64 %t1060 to ptr
  %t1062 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1061, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1062, ptr %l285
  br label %bb244
bb244:
  %t1063 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e65
  br i1 %t1063, label %bb245, label %bb246
bb245:
  %t1065 = load i64, ptr %l283
  %t1066 = inttoptr i64 %t1065 to ptr
  %t1067 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l285, i32 0, i32 0
  %t1068 = load { i64, ptr }, ptr %t1067
  %t1069 = extractvalue { i64, ptr } %t1068, 1
  %t1070 = call ptr @__olang_region_or(ptr %t1069, ptr null)
  %t1071 = icmp ne ptr %t1070, null
  %t1072 = select i1 %t1071, ptr %t1070, ptr null
  %t1073 = icmp eq ptr %t1072, %t1066
  call void @__olang_region_settle(ptr %t1066, i1 %t1073)
  br label %bb246
bb246:
  %t1074 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l285
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1074, ptr %l68
  %t1075 = ptrtoint ptr %v3 to i64
  store i64 %t1075, ptr %l287, !tbaa !24
  %t1076 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e66
  br i1 %t1076, label %bb247, label %bb248
bb247:
  %t1078 = call ptr @__olang_region_make(ptr %v3)
  %t1079 = ptrtoint ptr %t1078 to i64
  store i64 %t1079, ptr %l287, !tbaa !24
  br label %bb248
bb248:
  %t1080 = load i64, ptr %l287
  %t1081 = inttoptr i64 %t1080 to ptr
  %t1082 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1081, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1082, ptr %l289
  br label %bb249
bb249:
  %t1083 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e66
  br i1 %t1083, label %bb250, label %bb251
bb250:
  %t1085 = load i64, ptr %l287
  %t1086 = inttoptr i64 %t1085 to ptr
  %t1087 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l289, i32 0, i32 0
  %t1088 = load { i64, ptr }, ptr %t1087
  %t1089 = extractvalue { i64, ptr } %t1088, 1
  %t1090 = call ptr @__olang_region_or(ptr %t1089, ptr null)
  %t1091 = icmp ne ptr %t1090, null
  %t1092 = select i1 %t1091, ptr %t1090, ptr null
  %t1093 = icmp eq ptr %t1092, %t1086
  call void @__olang_region_settle(ptr %t1086, i1 %t1093)
  br label %bb251
bb251:
  %t1094 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l289
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1094, ptr %l69
  %t1095 = ptrtoint ptr %v3 to i64
  store i64 %t1095, ptr %l291, !tbaa !24
  %t1096 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e67
  br i1 %t1096, label %bb252, label %bb253
bb252:
  %t1098 = call ptr @__olang_region_make(ptr %v3)
  %t1099 = ptrtoint ptr %t1098 to i64
  store i64 %t1099, ptr %l291, !tbaa !24
  br label %bb253
bb253:
  %t1100 = load i64, ptr %l291
  %t1101 = inttoptr i64 %t1100 to ptr
  %t1102 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t1101, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1102, ptr %l293
  br label %bb254
bb254:
  %t1103 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e67
  br i1 %t1103, label %bb255, label %bb256
bb255:
  %t1105 = load i64, ptr %l291
  %t1106 = inttoptr i64 %t1105 to ptr
  %t1107 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l293, i32 0, i32 0
  %t1108 = load { i64, ptr }, ptr %t1107
  %t1109 = extractvalue { i64, ptr } %t1108, 1
  %t1110 = call ptr @__olang_region_or(ptr %t1109, ptr null)
  %t1111 = icmp ne ptr %t1110, null
  %t1112 = select i1 %t1111, ptr %t1110, ptr null
  %t1113 = icmp eq ptr %t1112, %t1106
  call void @__olang_region_settle(ptr %t1106, i1 %t1113)
  br label %bb256
bb256:
  %t1114 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l293
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1114, ptr %l70
  %t1115 = ptrtoint ptr %v3 to i64
  store i64 %t1115, ptr %l295, !tbaa !24
  %t1116 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e68
  br i1 %t1116, label %bb257, label %bb258
bb257:
  %t1118 = call ptr @__olang_region_make(ptr %v3)
  %t1119 = ptrtoint ptr %t1118 to i64
  store i64 %t1119, ptr %l295, !tbaa !24
  br label %bb258
bb258:
  %t1120 = load i64, ptr %l295
  %t1121 = inttoptr i64 %t1120 to ptr
  %t1122 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t1121)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1122, ptr %l297
  br label %bb259
bb259:
  %t1123 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e68
  br i1 %t1123, label %bb260, label %bb261
bb260:
  %t1125 = load i64, ptr %l295
  %t1126 = inttoptr i64 %t1125 to ptr
  %t1127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 2
  %t1128 = load { i64, ptr }, ptr %t1127
  %t1129 = extractvalue { i64, ptr } %t1128, 1
  %t1130 = call ptr @__olang_region_or(ptr %t1129, ptr null)
  %t1131 = icmp ne ptr %t1130, null
  %t1132 = select i1 %t1131, ptr %t1130, ptr null
  %t1133 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 1
  %t1134 = load { i64, ptr }, ptr %t1133
  %t1135 = extractvalue { i64, ptr } %t1134, 1
  %t1136 = call ptr @__olang_region_or(ptr %t1135, ptr null)
  %t1137 = icmp ne ptr %t1136, null
  %t1138 = select i1 %t1137, ptr %t1136, ptr %t1132
  %t1139 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 0
  %t1140 = load { i64, ptr }, ptr %t1139
  %t1141 = extractvalue { i64, ptr } %t1140, 1
  %t1142 = call ptr @__olang_region_or(ptr %t1141, ptr null)
  %t1143 = icmp ne ptr %t1142, null
  %t1144 = select i1 %t1143, ptr %t1142, ptr %t1138
  %t1145 = icmp eq ptr %t1144, %t1126
  call void @__olang_region_settle(ptr %t1126, i1 %t1145)
  br label %bb261
bb261:
  %t1146 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1146, ptr %l71
  %t1147 = ptrtoint ptr %v3 to i64
  store i64 %t1147, ptr %l299, !tbaa !24
  %t1148 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e69
  br i1 %t1148, label %bb262, label %bb263
bb262:
  %t1150 = call ptr @__olang_region_make(ptr %v3)
  %t1151 = ptrtoint ptr %t1150 to i64
  store i64 %t1151, ptr %l299, !tbaa !24
  br label %bb263
bb263:
  %t1152 = load i64, ptr %l299
  %t1153 = inttoptr i64 %t1152 to ptr
  %t1154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1153, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1154, ptr %l301
  br label %bb264
bb264:
  %t1155 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e69
  br i1 %t1155, label %bb265, label %bb266
bb265:
  %t1157 = load i64, ptr %l299
  %t1158 = inttoptr i64 %t1157 to ptr
  %t1159 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301, i32 0, i32 0
  %t1160 = load { i64, ptr }, ptr %t1159
  %t1161 = extractvalue { i64, ptr } %t1160, 1
  %t1162 = call ptr @__olang_region_or(ptr %t1161, ptr null)
  %t1163 = icmp ne ptr %t1162, null
  %t1164 = select i1 %t1163, ptr %t1162, ptr null
  %t1165 = icmp eq ptr %t1164, %t1158
  call void @__olang_region_settle(ptr %t1158, i1 %t1165)
  br label %bb266
bb266:
  %t1166 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1166, ptr %l72
  %t1167 = ptrtoint ptr %v3 to i64
  store i64 %t1167, ptr %l303, !tbaa !24
  %t1168 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e70
  br i1 %t1168, label %bb267, label %bb268
bb267:
  %t1170 = call ptr @__olang_region_make(ptr %v3)
  %t1171 = ptrtoint ptr %t1170 to i64
  store i64 %t1171, ptr %l303, !tbaa !24
  br label %bb268
bb268:
  %t1172 = load i64, ptr %l303
  %t1173 = inttoptr i64 %t1172 to ptr
  %t1174 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1173, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1174, ptr %l305
  br label %bb269
bb269:
  %t1175 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e70
  br i1 %t1175, label %bb270, label %bb271
bb270:
  %t1177 = load i64, ptr %l303
  %t1178 = inttoptr i64 %t1177 to ptr
  %t1179 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305, i32 0, i32 0
  %t1180 = load { i64, ptr }, ptr %t1179
  %t1181 = extractvalue { i64, ptr } %t1180, 1
  %t1182 = call ptr @__olang_region_or(ptr %t1181, ptr null)
  %t1183 = icmp ne ptr %t1182, null
  %t1184 = select i1 %t1183, ptr %t1182, ptr null
  %t1185 = icmp eq ptr %t1184, %t1178
  call void @__olang_region_settle(ptr %t1178, i1 %t1185)
  br label %bb271
bb271:
  %t1186 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l305
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1186, ptr %l73
  %t1187 = ptrtoint ptr %v3 to i64
  store i64 %t1187, ptr %l307, !tbaa !24
  %t1188 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e71
  br i1 %t1188, label %bb272, label %bb273
bb272:
  %t1190 = call ptr @__olang_region_make(ptr %v3)
  %t1191 = ptrtoint ptr %t1190 to i64
  store i64 %t1191, ptr %l307, !tbaa !24
  br label %bb273
bb273:
  %t1192 = load i64, ptr %l307
  %t1193 = inttoptr i64 %t1192 to ptr
  %t1194 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t1193)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1194, ptr %l309
  br label %bb274
bb274:
  %t1195 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e71
  br i1 %t1195, label %bb275, label %bb276
bb275:
  %t1197 = load i64, ptr %l307
  %t1198 = inttoptr i64 %t1197 to ptr
  %t1199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 2
  %t1200 = load { i64, ptr }, ptr %t1199
  %t1201 = extractvalue { i64, ptr } %t1200, 1
  %t1202 = call ptr @__olang_region_or(ptr %t1201, ptr null)
  %t1203 = icmp ne ptr %t1202, null
  %t1204 = select i1 %t1203, ptr %t1202, ptr null
  %t1205 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 1
  %t1206 = load { i64, ptr }, ptr %t1205
  %t1207 = extractvalue { i64, ptr } %t1206, 1
  %t1208 = call ptr @__olang_region_or(ptr %t1207, ptr null)
  %t1209 = icmp ne ptr %t1208, null
  %t1210 = select i1 %t1209, ptr %t1208, ptr %t1204
  %t1211 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309, i32 0, i32 0
  %t1212 = load { i64, ptr }, ptr %t1211
  %t1213 = extractvalue { i64, ptr } %t1212, 1
  %t1214 = call ptr @__olang_region_or(ptr %t1213, ptr null)
  %t1215 = icmp ne ptr %t1214, null
  %t1216 = select i1 %t1215, ptr %t1214, ptr %t1210
  %t1217 = icmp eq ptr %t1216, %t1198
  call void @__olang_region_settle(ptr %t1198, i1 %t1217)
  br label %bb276
bb276:
  %t1218 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l309
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1218, ptr %l74
  %t1219 = ptrtoint ptr %v3 to i64
  store i64 %t1219, ptr %l311, !tbaa !24
  %t1220 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e72
  br i1 %t1220, label %bb277, label %bb278
bb277:
  %t1222 = call ptr @__olang_region_make(ptr %v3)
  %t1223 = ptrtoint ptr %t1222 to i64
  store i64 %t1223, ptr %l311, !tbaa !24
  br label %bb278
bb278:
  %t1224 = load i64, ptr %l311
  %t1225 = inttoptr i64 %t1224 to ptr
  %t1226 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e(ptr %t1225)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1226, ptr %l313
  br label %bb279
bb279:
  %t1227 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e72
  br i1 %t1227, label %bb280, label %bb281
bb280:
  %t1229 = load i64, ptr %l311
  %t1230 = inttoptr i64 %t1229 to ptr
  %t1231 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 2
  %t1232 = load { i64, ptr }, ptr %t1231
  %t1233 = extractvalue { i64, ptr } %t1232, 1
  %t1234 = call ptr @__olang_region_or(ptr %t1233, ptr null)
  %t1235 = icmp ne ptr %t1234, null
  %t1236 = select i1 %t1235, ptr %t1234, ptr null
  %t1237 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 1
  %t1238 = load { i64, ptr }, ptr %t1237
  %t1239 = extractvalue { i64, ptr } %t1238, 1
  %t1240 = call ptr @__olang_region_or(ptr %t1239, ptr null)
  %t1241 = icmp ne ptr %t1240, null
  %t1242 = select i1 %t1241, ptr %t1240, ptr %t1236
  %t1243 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313, i32 0, i32 0
  %t1244 = load { i64, ptr }, ptr %t1243
  %t1245 = extractvalue { i64, ptr } %t1244, 1
  %t1246 = call ptr @__olang_region_or(ptr %t1245, ptr null)
  %t1247 = icmp ne ptr %t1246, null
  %t1248 = select i1 %t1247, ptr %t1246, ptr %t1242
  %t1249 = icmp eq ptr %t1248, %t1230
  call void @__olang_region_settle(ptr %t1230, i1 %t1249)
  br label %bb281
bb281:
  %t1250 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l313
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1250, ptr %l75
  %t1251 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1251, ptr %l315
  br label %bb282
bb282:
  %t1252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l315
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1252, ptr %l76
  %t1253 = ptrtoint ptr %v3 to i64
  store i64 %t1253, ptr %l316, !tbaa !24
  %t1254 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e74
  br i1 %t1254, label %bb283, label %bb284
bb283:
  %t1256 = call ptr @__olang_region_make(ptr %v3)
  %t1257 = ptrtoint ptr %t1256 to i64
  store i64 %t1257, ptr %l316, !tbaa !24
  br label %bb284
bb284:
  %t1258 = load i64, ptr %l316
  %t1259 = inttoptr i64 %t1258 to ptr
  %t1260 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %t1259)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1260, ptr %l318
  br label %bb285
bb285:
  %t1261 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e74
  br i1 %t1261, label %bb286, label %bb287
bb286:
  %t1263 = load i64, ptr %l316
  %t1264 = inttoptr i64 %t1263 to ptr
  %t1265 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l318, i32 0, i32 2
  %t1266 = load { i64, ptr }, ptr %t1265
  %t1267 = extractvalue { i64, ptr } %t1266, 1
  %t1268 = call ptr @__olang_region_or(ptr %t1267, ptr null)
  %t1269 = icmp ne ptr %t1268, null
  %t1270 = select i1 %t1269, ptr %t1268, ptr null
  %t1271 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l318, i32 0, i32 1
  %t1272 = load { i64, ptr }, ptr %t1271
  %t1273 = extractvalue { i64, ptr } %t1272, 1
  %t1274 = call ptr @__olang_region_or(ptr %t1273, ptr null)
  %t1275 = icmp ne ptr %t1274, null
  %t1276 = select i1 %t1275, ptr %t1274, ptr %t1270
  %t1277 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l318, i32 0, i32 0
  %t1278 = load { i64, ptr }, ptr %t1277
  %t1279 = extractvalue { i64, ptr } %t1278, 1
  %t1280 = call ptr @__olang_region_or(ptr %t1279, ptr null)
  %t1281 = icmp ne ptr %t1280, null
  %t1282 = select i1 %t1281, ptr %t1280, ptr %t1276
  %t1283 = icmp eq ptr %t1282, %t1264
  call void @__olang_region_settle(ptr %t1264, i1 %t1283)
  br label %bb287
bb287:
  %t1284 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l318
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1284, ptr %l77
  %t1285 = ptrtoint ptr %v3 to i64
  store i64 %t1285, ptr %l320, !tbaa !24
  %t1286 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e75
  br i1 %t1286, label %bb288, label %bb289
bb288:
  %t1288 = call ptr @__olang_region_make(ptr %v3)
  %t1289 = ptrtoint ptr %t1288 to i64
  store i64 %t1289, ptr %l320, !tbaa !24
  br label %bb289
bb289:
  %t1290 = load i64, ptr %l320
  %t1291 = inttoptr i64 %t1290 to ptr
  %t1292 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ector(ptr %t1291, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1292, ptr %l322
  br label %bb290
bb290:
  %t1293 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e75
  br i1 %t1293, label %bb291, label %bb292
bb291:
  %t1295 = load i64, ptr %l320
  %t1296 = inttoptr i64 %t1295 to ptr
  %t1297 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l322, i32 0, i32 0
  %t1298 = load { i64, ptr }, ptr %t1297
  %t1299 = extractvalue { i64, ptr } %t1298, 1
  %t1300 = call ptr @__olang_region_or(ptr %t1299, ptr null)
  %t1301 = icmp ne ptr %t1300, null
  %t1302 = select i1 %t1301, ptr %t1300, ptr null
  %t1303 = icmp eq ptr %t1302, %t1296
  call void @__olang_region_settle(ptr %t1296, i1 %t1303)
  br label %bb292
bb292:
  %t1304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l322
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1304, ptr %l78
  %t1305 = ptrtoint ptr %v3 to i64
  store i64 %t1305, ptr %l324, !tbaa !24
  %t1306 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e76
  br i1 %t1306, label %bb293, label %bb294
bb293:
  %t1308 = call ptr @__olang_region_make(ptr %v3)
  %t1309 = ptrtoint ptr %t1308 to i64
  store i64 %t1309, ptr %l324, !tbaa !24
  br label %bb294
bb294:
  %t1310 = load i64, ptr %l324
  %t1311 = inttoptr i64 %t1310 to ptr
  %t1312 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t1311, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1312, ptr %l326
  br label %bb295
bb295:
  %t1313 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e76
  br i1 %t1313, label %bb296, label %bb297
bb296:
  %t1315 = load i64, ptr %l324
  %t1316 = inttoptr i64 %t1315 to ptr
  %t1317 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326, i32 0, i32 0
  %t1318 = load { i64, ptr }, ptr %t1317
  %t1319 = extractvalue { i64, ptr } %t1318, 1
  %t1320 = call ptr @__olang_region_or(ptr %t1319, ptr null)
  %t1321 = icmp ne ptr %t1320, null
  %t1322 = select i1 %t1321, ptr %t1320, ptr null
  %t1323 = icmp eq ptr %t1322, %t1316
  call void @__olang_region_settle(ptr %t1316, i1 %t1323)
  br label %bb297
bb297:
  %t1324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1324, ptr %l79
  store i64 -1, ptr %l80, !tbaa !24
  store i1 false, ptr %l81, !tbaa !21
  store i1 false, ptr %l82, !tbaa !21
  store i1 false, ptr %l83, !tbaa !21
  %t1325 = ptrtoint ptr %v3 to i64
  store i64 %t1325, ptr %l328, !tbaa !24
  %t1326 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e81
  br i1 %t1326, label %bb298, label %bb299
bb298:
  %t1328 = call ptr @__olang_region_make(ptr %v3)
  %t1329 = ptrtoint ptr %t1328 to i64
  store i64 %t1329, ptr %l328, !tbaa !24
  br label %bb299
bb299:
  %t1330 = load i64, ptr %l328
  %t1331 = inttoptr i64 %t1330 to ptr
  %t1332 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t1331)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1332, ptr %l330
  br label %bb300
bb300:
  %t1333 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e81
  br i1 %t1333, label %bb301, label %bb302
bb301:
  %t1335 = load i64, ptr %l328
  %t1336 = inttoptr i64 %t1335 to ptr
  %t1337 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l330, i32 0, i32 2
  %t1338 = load { i64, ptr }, ptr %t1337
  %t1339 = extractvalue { i64, ptr } %t1338, 1
  %t1340 = call ptr @__olang_region_or(ptr %t1339, ptr null)
  %t1341 = icmp ne ptr %t1340, null
  %t1342 = select i1 %t1341, ptr %t1340, ptr null
  %t1343 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l330, i32 0, i32 1
  %t1344 = load { i64, ptr }, ptr %t1343
  %t1345 = extractvalue { i64, ptr } %t1344, 1
  %t1346 = call ptr @__olang_region_or(ptr %t1345, ptr null)
  %t1347 = icmp ne ptr %t1346, null
  %t1348 = select i1 %t1347, ptr %t1346, ptr %t1342
  %t1349 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l330, i32 0, i32 0
  %t1350 = load { i64, ptr }, ptr %t1349
  %t1351 = extractvalue { i64, ptr } %t1350, 1
  %t1352 = call ptr @__olang_region_or(ptr %t1351, ptr null)
  %t1353 = icmp ne ptr %t1352, null
  %t1354 = select i1 %t1353, ptr %t1352, ptr %t1348
  %t1355 = icmp eq ptr %t1354, %t1336
  call void @__olang_region_settle(ptr %t1336, i1 %t1355)
  br label %bb302
bb302:
  %t1356 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l330
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1356, ptr %l84
  %t1357 = ptrtoint ptr %v3 to i64
  store i64 %t1357, ptr %l332, !tbaa !24
  %t1358 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e82
  br i1 %t1358, label %bb303, label %bb304
bb303:
  %t1360 = call ptr @__olang_region_make(ptr %v3)
  %t1361 = ptrtoint ptr %t1360 to i64
  store i64 %t1361, ptr %l332, !tbaa !24
  br label %bb304
bb304:
  %t1362 = load i64, ptr %l332
  %t1363 = inttoptr i64 %t1362 to ptr
  %t1364 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1363)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1364, ptr %l334
  br label %bb305
bb305:
  %t1365 = load i1, ptr @olang_2esole_2ecompiler_2ffree_3aFree_2e82
  br i1 %t1365, label %bb306, label %bb307
bb306:
  %t1367 = load i64, ptr %l332
  %t1368 = inttoptr i64 %t1367 to ptr
  %t1369 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l334, i32 0, i32 2
  %t1370 = load { i64, ptr }, ptr %t1369
  %t1371 = extractvalue { i64, ptr } %t1370, 1
  %t1372 = call ptr @__olang_region_or(ptr %t1371, ptr null)
  %t1373 = icmp ne ptr %t1372, null
  %t1374 = select i1 %t1373, ptr %t1372, ptr null
  %t1375 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l334, i32 0, i32 1
  %t1376 = load { i64, ptr }, ptr %t1375
  %t1377 = extractvalue { i64, ptr } %t1376, 1
  %t1378 = call ptr @__olang_region_or(ptr %t1377, ptr null)
  %t1379 = icmp ne ptr %t1378, null
  %t1380 = select i1 %t1379, ptr %t1378, ptr %t1374
  %t1381 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l334, i32 0, i32 0
  %t1382 = load { i64, ptr }, ptr %t1381
  %t1383 = extractvalue { i64, ptr } %t1382, 1
  %t1384 = call ptr @__olang_region_or(ptr %t1383, ptr null)
  %t1385 = icmp ne ptr %t1384, null
  %t1386 = select i1 %t1385, ptr %t1384, ptr %t1380
  %t1387 = icmp eq ptr %t1386, %t1368
  call void @__olang_region_settle(ptr %t1368, i1 %t1387)
  br label %bb307
bb307:
  %t1388 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l334
  %t1389 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 0
  %t1390 = load ptr, ptr %l3, !tbaa !29
  store ptr %t1390, ptr %t1389, !tbaa !29
  %t1391 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 1
  %t1392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1392, ptr %t1391
  %t1393 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 2
  %t1394 = load ptr, ptr %l5, !tbaa !29
  store ptr %t1394, ptr %t1393, !tbaa !29
  %t1395 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 3
  %t1396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1396, ptr %t1395
  %t1397 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 4
  %t1398 = load i64, ptr %l7, !tbaa !24
  store i64 %t1398, ptr %t1397, !tbaa !24
  %t1399 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 5
  %t1400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1400, ptr %t1399
  %t1401 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 6
  %t1402 = load ptr, ptr %l9, !tbaa !29
  store ptr %t1402, ptr %t1401, !tbaa !29
  %t1403 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 7
  %t1404 = load i64, ptr %l10, !tbaa !24
  store i64 %t1404, ptr %t1403, !tbaa !24
  %t1405 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 8
  %t1406 = load i1, ptr %l11, !tbaa !21
  store i1 %t1406, ptr %t1405, !tbaa !21
  %t1407 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 9
  %t1408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1408, ptr %t1407
  %t1409 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 10
  %t1410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1410, ptr %t1409
  %t1411 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 11
  %t1412 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1412, ptr %t1411
  %t1413 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 12
  %t1414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1414, ptr %t1413
  %t1415 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 13
  %t1416 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1416, ptr %t1415
  %t1417 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 14
  %t1418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1418, ptr %t1417
  %t1419 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 15
  %t1420 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1420, ptr %t1419
  %t1421 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 16
  %t1422 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1422, ptr %t1421
  %t1423 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 17
  %t1424 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1424, ptr %t1423
  %t1425 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 18
  %t1426 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l21
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1426, ptr %t1425
  %t1427 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 19
  %t1428 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1428, ptr %t1427
  %t1429 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 20
  %t1430 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1430, ptr %t1429
  %t1431 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 21
  %t1432 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1432, ptr %t1431
  %t1433 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 22
  %t1434 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1434, ptr %t1433
  %t1435 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 23
  %t1436 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1436, ptr %t1435
  %t1437 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 24
  %t1438 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l27
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1438, ptr %t1437
  %t1439 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 25
  %t1440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1440, ptr %t1439
  %t1441 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 26
  %t1442 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1442, ptr %t1441
  %t1443 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 27
  %t1444 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1444, ptr %t1443
  %t1445 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 28
  %t1446 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1446, ptr %t1445
  %t1447 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 29
  %t1448 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1448, ptr %t1447
  %t1449 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 30
  %t1450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1450, ptr %t1449
  %t1451 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 31
  %t1452 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1452, ptr %t1451
  %t1453 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 32
  %t1454 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1454, ptr %t1453
  %t1455 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 33
  %t1456 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1456, ptr %t1455
  %t1457 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 34
  %t1458 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1458, ptr %t1457
  %t1459 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 35
  %t1460 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1460, ptr %t1459
  %t1461 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 36
  %t1462 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1462, ptr %t1461
  %t1463 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 37
  %t1464 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1464, ptr %t1463
  %t1465 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 38
  %t1466 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1466, ptr %t1465
  %t1467 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 39
  %t1468 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1468, ptr %t1467
  %t1469 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 40
  %t1470 = load i1, ptr %l43, !tbaa !21
  store i1 %t1470, ptr %t1469, !tbaa !21
  %t1471 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 41
  %t1472 = load i1, ptr %l44, !tbaa !21
  store i1 %t1472, ptr %t1471, !tbaa !21
  %t1473 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 42
  %t1474 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1474, ptr %t1473
  %t1475 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 43
  %t1476 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1476, ptr %t1475
  %t1477 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 44
  %t1478 = load i1, ptr %l47, !tbaa !21
  store i1 %t1478, ptr %t1477, !tbaa !21
  %t1479 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 45
  %t1480 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1480, ptr %t1479
  %t1481 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 46
  %t1482 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1482, ptr %t1481
  %t1483 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 47
  %t1484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1484, ptr %t1483
  %t1485 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 48
  %t1486 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1486, ptr %t1485
  %t1487 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 49
  %t1488 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1488, ptr %t1487
  %t1489 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 50
  %t1490 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1490, ptr %t1489
  %t1491 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 51
  %t1492 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1492, ptr %t1491
  %t1493 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 52
  %t1494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1494, ptr %t1493
  %t1495 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 53
  %t1496 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1496, ptr %t1495
  %t1497 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 54
  %t1498 = load i64, ptr %l57, !tbaa !24
  store i64 %t1498, ptr %t1497, !tbaa !24
  %t1499 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 55
  %t1500 = load i64, ptr %l58, !tbaa !24
  store i64 %t1500, ptr %t1499, !tbaa !24
  %t1501 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 56
  %t1502 = load %"compiler/source:Span", ptr %l59
  store %"compiler/source:Span" %t1502, ptr %t1501
  %t1503 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 57
  %t1504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1504, ptr %t1503
  %t1505 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 58
  %t1506 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1506, ptr %t1505
  %t1507 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 59
  %t1508 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1508, ptr %t1507
  %t1509 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 60
  %t1510 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l63
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1510, ptr %t1509
  %t1511 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 61
  %t1512 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1512, ptr %t1511
  %t1513 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 62
  %t1514 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1514, ptr %t1513
  %t1515 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 63
  %t1516 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l66
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1516, ptr %t1515
  %t1517 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 64
  %t1518 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l67
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1518, ptr %t1517
  %t1519 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 65
  %t1520 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1520, ptr %t1519
  %t1521 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 66
  %t1522 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1522, ptr %t1521
  %t1523 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 67
  %t1524 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1524, ptr %t1523
  %t1525 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 68
  %t1526 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1526, ptr %t1525
  %t1527 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 69
  %t1528 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l72
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1528, ptr %t1527
  %t1529 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 70
  %t1530 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1530, ptr %t1529
  %t1531 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 71
  %t1532 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l74
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1532, ptr %t1531
  %t1533 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 72
  %t1534 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1534, ptr %t1533
  %t1535 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 73
  %t1536 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1536, ptr %t1535
  %t1537 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 74
  %t1538 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1538, ptr %t1537
  %t1539 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 75
  %t1540 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1540, ptr %t1539
  %t1541 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 76
  %t1542 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l79
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1542, ptr %t1541
  %t1543 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 77
  %t1544 = load i64, ptr %l80, !tbaa !24
  store i64 %t1544, ptr %t1543, !tbaa !24
  %t1545 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 78
  %t1546 = load i1, ptr %l81, !tbaa !21
  store i1 %t1546, ptr %t1545, !tbaa !21
  %t1547 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 79
  %t1548 = load i1, ptr %l82, !tbaa !21
  store i1 %t1548, ptr %t1547, !tbaa !21
  %t1549 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 80
  %t1550 = load i1, ptr %l83, !tbaa !21
  store i1 %t1550, ptr %t1549, !tbaa !21
  %t1551 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 81
  %t1552 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l84
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1552, ptr %t1551
  %t1553 = getelementptr %"compiler/free:Free", ptr %l336, i32 0, i32 82
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1388, ptr %t1553
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l336, i64 2808, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/free:leaf" @compiler_2ffree_3aleaf_2ector(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/free:leaf" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/free:leaf" %t6, i64 %a1, 1
  store %"compiler/free:leaf" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

define dso_local %"compiler/free:orStore" @compiler_2ffree_3aorStore_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %rv = alloca %"compiler/free:orStore"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/free:orStore" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/free:orStore" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/free:orStore" %t12, ptr %a2, 2
  %t16 = insertvalue %"compiler/free:orStore" %t14, ptr %a3, 3
  store %"compiler/free:orStore" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:orStore", ptr %rv
  ret %"compiler/free:orStore" %rr
}

define dso_local %"compiler/free:reason" @compiler_2ffree_3areason_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/free:reason"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/free:reason" undef, i64 %a0, 0
  %t12 = insertvalue %"compiler/free:reason" %t10, i64 %a1, 1
  %t14 = insertvalue %"compiler/free:reason" %t12, %"compiler/source:Span" %a2, 2
  %t16 = insertvalue %"compiler/free:reason" %t14, { i64, ptr } %a3, 3
  store %"compiler/free:reason" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:reason", ptr %rv
  ret %"compiler/free:reason" %rr
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
@.d1 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"removed elements of '" }>, align 8
@.d2 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"' are kept until " }>, align 8
@.d3 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" closes" }>, align 8
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
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d5 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"' keeps what it lets go of until " }>, align 8
@.d6 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" closes" }>, align 8
@.d7 = private constant <{ i64, [62 x i8] }> <{ i64 0, [62 x i8] c"it is let go of only inside calls that may let go of any place" }>, align 8
@.d8 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c": memory: " }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d10 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c": note: " }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d11 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"memory: no place lets go of storage in code that runs again\0A" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" (above)" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d22 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"memory: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d23 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" place" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" let" }>, align 8
@.d25 = private constant <{ i64, [41 x i8] }> <{ i64 0, [41 x i8] c" go of storage in code that runs again - " }>, align 8
@.d26 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" free" }>, align 8
@.d27 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" it at once, " }>, align 8
@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" keep" }>, align 8
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" it" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"T&" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/typed:Plan"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 536, i1 false)
  %t2 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  %t24 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %t22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  %t26 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t25, ptr %t26
  %t27 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/typed:Plan", ptr %l1, i32 0, i32 21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 536, i1 false)
  br label %ret
ret:
  ret void
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
define internal i64 @olang_lambda_33(ptr %env, i32 %a0) #0 {
entry:
  %l5 = alloca i64
  %rv = alloca i64
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t4 = sext i32 %a0 to i64
  %t7 = call i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %vc0, ptr %cv0, i64 %t4)
  store i64 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define internal { i64, ptr } @olang_lambda_34(ptr %env, ptr %v0, i32 %a0) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/free:Free", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/free:Free", ptr %t7, i32 0, i32 1
  %t12 = sext i32 %a0 to i64
  %t15 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %vc0, ptr %vc0, ptr %t9, i64 %t12)
  store ptr %t15, ptr %l9
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l9, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %vc0, ptr %v0, ptr %t20, i32 %t19)
  store { i64, ptr } %t22, ptr %l12
  br label %bb2
bb2:
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ffree_3aleaf_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
define linkonce_odr %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/free:leaf"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/free:leaf"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/free:leaf", ptr %a0
  store %"compiler/free:leaf" %t2, ptr %l1
  %t3 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"compiler/free:leaf", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/free:leaf", ptr %l1
  store %"compiler/free:leaf" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/free:leaf", ptr %rv
  ret %"compiler/free:leaf" %rr
}

@.d35 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0) #0 {
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

@.d36 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
@.d37 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"a writable reference to it handed to a call" }>, align 8
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

@.d38 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"a call's value copied" }>, align 8
@olang_2esole_2eArray_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d39 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d40 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2ffree__2ecompiler__2ffree__3awalker__2estmt_2elocal_2e14 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2ffree_3aFree_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e18 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e19 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__H35bad576be2c40e2a3ddd75966dd2efa(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd7bfb320b31828a1c070683ea7d5fb27(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e20 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__H543b8bd4338e03419f672a832f9f2eca(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e22 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e23 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e24 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId__He8655158266a5936c27f8d8be8d0b7c6(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e31 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e34 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e35 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e36 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e37 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e38 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e47 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e49 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e50 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e53 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e57 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e58 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e59 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e61 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e62 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e63 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e64 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e65 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e66 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e67 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e68 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e69 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e70 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e71 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e72 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ffree_3aFree_2e74 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e75 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e76 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e81 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffree_3aFree_2e82 = weak hidden constant i1 false
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 24
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 24
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fv_H37dabf8663d733dfb3cf8a6ba127be58(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = mul i64 %t13, 8
  %t15 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = mul i64 %t22, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t25 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t24, ptr %t25, !tbaa !27
  %t26 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l7, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l8, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l9, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l8, !tbaa !24
  %t40 = mul i64 %t39, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t43, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec__Hdbcf217951d8a5e6be477b9bbf1b3074(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2ffree_3aleaf_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/free:leaf"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 24
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/free:leaf", ptr %t14, i64 %t12
  %t17 = call %"compiler/free:leaf" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ffree_3aleaf(ptr %v0, ptr %t15)
  store %"compiler/free:leaf" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/free:leaf", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/free:leaf", ptr %t22, i64 %t20
  store %"compiler/free:leaf" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std__Hc31c075a081277beb11a6149e950d3c3(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 40
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %t15)
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %t22, i64 %t20
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 32
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t14, i64 %t12
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t22, i64 %t20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %t23
  %t24 = load i64, ptr %l3, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
define linkonce_odr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20std_2fprelud_Hc8a994261b444ea12c5b83da9413a98f(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %a0
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %l1
  store %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613", ptr %rv
  ret %"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ereported(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eLen_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0)
declare %"compiler/free:letGo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2eAt_3ccompiler_2ffree_3aletGo_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eshown(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2erowBefore(ptr %v0, ptr %a0, %"compiler/free:letGo" %a1, %"compiler/free:letGo" %a2)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eIsSole(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisNamed(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eisContents(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2ecollection(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/free:letGo" %a3)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceName(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2escopeName(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:letGo" %a1, i64 %a2)
declare %"compiler/free:reason" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2eAt_3ccompiler_2ffree_3areason_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLocate(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ffree_2ecompiler_2ffree_3aFree_2eholderRows(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_26303021143ae8be_4bef98a84a02e70a = external constant [0 x i8]
declare ptr @compiler_2ffree_2ecompiler_2ffree_3aFree_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_2d0236bac0ece1bd_eaf4e8c3a594bae9 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eviewsOf(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftyped_2eFreshViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3c, ptr %a3e, ptr %a4c, ptr %a4e)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLinksOwnC(ptr %v0, ptr %a0)
@olang_loc_c5e41b8fc96972ee_4e89d8a2bd660d32 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ekeep(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He7b3466db9a608577543dd7c0832d3d6(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_H39ca684a9144c6cba1af5dc2ea7b2e34(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fp_He39f97315596c9568e753bccdda19b63(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2ePush_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:leaf" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eLen_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %a0)
declare %"compiler/free:leaf" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aleaf_3e_2eAt_3ccompiler_2ffree_3aleaf_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8d4a0f6b46bd0ce9_6c774f94eb5bbfbd = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_4d387e337fecd808_d73c070d6177d604 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_bc9d64d7693be970_b83238a2b46aaa8c = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eRef_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ffree_2eisVar({ i64, [2 x i64] } %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esourceModule(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_97a1f172ac127e68_91804f7c420b5df4 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eonlyLeaf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2esplitPath(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H58704f470d09c6c466fe07940700ab7b(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, { i64, ptr } %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eassignedFresh(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_7a954698926d7de_664d4c02e090fa22 = external constant [0 x i8]
@olang_loc_893474d063c17328_1c44af56cc3f848c = external constant [0 x i8]
declare i1 @compiler_2ffree_2eisConversion(ptr %v0, i32 %a0, { i64, ptr } %a1)
@olang_loc_a532406d51285a24_27441d0f137c6648 = external constant [0 x i8]
@olang_loc_9be7a7b731d47dfc_cd79088c97deb358 = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2eplaceOfPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1777536395e8cd8b_97ff53b4c3030f1f = external constant [0 x i8]
declare i64 @compiler_2ffree_2ecompiler_2ffree_3amustW_2eexprMust(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__H72f5eb830a5b95ea4064fb79c9339d29(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddTo(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %a0)
@olang_loc_ec84fe6443685676_e22a9bc60a48a0b2 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeederArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/free:feedCall" @compiler_2ffree_3afeedCall_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ePush_3ccompiler_2ffree_3afeedCall_3e(ptr %v0, ptr %a0, %"compiler/free:feedCall" %a1)
declare %"compiler/free:feed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eAt_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2einOwner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H5a6912247a81ac1f46c16a43fcc4c44a(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2euntracked(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__Hb802ce24a60c51fc8ca388b849854e24(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2eaddAllTo(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare void @compiler_2ffree_2ecompiler_2ffree_3aFree_2ethrough(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2eT(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ffree_2ecompiler_2ffree_3aFree_2estoredMore(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreAs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6, i1 %a7)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescape(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3, i1 %a4, i64 %a5, i64 %a6)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3aFree_2eunowned(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egoAll(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ego(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/source:Span" %a4, i64 %a5)
declare i64 @compiler_2ffree_2eokind(i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eviewRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2ebody(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2erootPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/free:orCall" @compiler_2ffree_3aorCall_2ector(ptr %v0, ptr %v1, ptr %v2, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, ptr %a5, ptr %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ePush_3ccompiler_2ffree_3aorCall_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/free:orCall" %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eSetAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i64 @compiler_2ffree_2eownCopySite(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_He8fa2eab054d0b98ccbd3d6295fac885(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2emovedPar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ecopyLeaves(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, %"compiler/source:Span" %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2egive(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estoreField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ewholeField(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2eownLocal(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5, i1 %a6)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3awalker_2efeeder(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2emade(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/source:Span" %a3, i1 %a4)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eLen_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %a0)
declare %"compiler/free:store" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2eAt_3ccompiler_2ffree_3astore_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2eRefMut_3ccompiler_2ffree_3afeed_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2etopSite(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eeval(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d8246f320a19bbf9_8add34a618744eed = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eresult(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereturnedOwnLocals(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_5d7536cc463ccac1_135a9313c745645 = external constant [0 x i8]
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eescapedHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_11c10ff2df4ccb13_a4bbf1166c590ff7 = external constant [0 x i8]
@olang_loc_407beb7582aa5744_e540dc6ed5e7bfd8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64__Haa8dec86a2077fe432a5bd923bc4b0fd(ptr %v0, ptr %a0)
@olang_loc_ec0dfed271d7eacc_f2c899624053798 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ffree_2ecompiler_2ffree_3awalker_2ereachTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @compiler_2ffree_2ecompiler_2ffree_3awalker_2eelemRead(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2ffree_2ehas(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2ffree_2ebaseOf(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ffree_2ecompiler_2ffree_3aFree_2ewithinPlace(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_ed7f6e6daad964a6_bdb604c7994d314a = external constant [0 x i8]
@olang_loc_5434155b39f9a43a_fb30a073eb5144de = external constant [0 x i8]
declare i1 @compiler_2ffree_2esamePure(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ffree_2eplaceThrough(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_365b62d925fe4616_77c77337a4accaaa = external constant [0 x i8]
@olang_loc_b94c5fec836ee160_c106f176e2c66bb4 = external constant [0 x i8]
@olang_loc_bc70ad18304b6571_160962e965f972e5 = external constant [0 x i8]
@olang_loc_6c7e0d9d91c4575a_bcb450b004b7d12e = external constant [0 x i8]
@olang_loc_65fd46072274f65b_1273d4b3d3b84def = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aretire_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3astore_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aletGo_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3areason_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorCall_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3aorStore_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20std_2fprelude_2fvec_3aVec_3cBool_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeed_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ffree_3afeedCall_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cc_Hd7bfb320b31828a1c070683ea7d5fb27(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20std_2fprelude_2ftext_3aString_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Array_3cI64_3e_3e_2ector(ptr %v0)
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
