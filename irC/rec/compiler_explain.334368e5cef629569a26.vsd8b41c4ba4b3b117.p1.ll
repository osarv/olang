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
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
define dso_local { i64, ptr } @compiler_2fexplain_2eCaps(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca %"compiler/effects:Facts"
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca %"compiler/effects:Facts"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l81 = alloca i64
  %l85 = alloca ptr
  %l88 = alloca %"compiler/effects:Facts"
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca { i64, ptr }
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca i64
  %l122 = alloca i64
  %l146 = alloca i1
  %l147 = alloca { i64, ptr }
  %l151 = alloca { i64, ptr }
  %l155 = alloca i1
  %l161 = alloca i64
  %l163 = alloca i64
  %l168 = alloca i64
  %l171 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l181 = alloca %"std/prelude/text:StringBuilder"
  %l183 = alloca i64
  %l185 = alloca i64
  %l190 = alloca i64
  %l197 = alloca i64
  %l200 = alloca i64
  %l225 = alloca ptr
  %l227 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l229 = alloca ptr
  %l232 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l235 = alloca i64
  %l236 = alloca { i64, ptr }
  %l238 = alloca i1
  %l240 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t31 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l40
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l40, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 10
  %t15 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H6c17f05b74a2ea6689cdfc72c602a991(ptr %v0, ptr %v0, ptr %t13)
  store { i64, ptr } %t15, ptr %l45
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l47, !tbaa !24
  %t20 = call %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %s0)
  store %"compiler/effects:Facts" %t20, ptr %l48
  br label %bb3
bb3:
  %t21 = load i64, ptr %l47, !tbaa !24
  %t22 = icmp sge i64 %t21, 0
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l47, !tbaa !24
  %t25 = icmp sle i64 %t24, 96076792050570581
  br i1 %t25, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_91de52063b71ca44_3ab230bc0b47a90)
  unreachable
bb6:
  %t27 = load i64, ptr %l47, !tbaa !24
  %t28 = mul i64 %t27, 96
  %t29 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t28)
  %t30 = load %"compiler/effects:Facts", ptr %l48
  store i64 0, ptr %t31
  br label %fill.32
fill.32:
  %t35 = load i64, ptr %t31
  %t36 = icmp slt i64 %t35, %t27
  br i1 %t36, label %fillb.33, label %filld.34
fillb.33:
  %t37 = getelementptr %"compiler/effects:Facts", ptr %t29, i64 %t35
  store %"compiler/effects:Facts" %t30, ptr %t37
  %t38 = add i64 %t35, 1
  store i64 %t38, ptr %t31
  br label %fill.32
filld.34:
  %t39 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t29, 1
  store { i64, ptr } %t40, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 14
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l54
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_91de52063b71ca44_3ab230bc0b47a90)
  unreachable
bb8:
  %t47 = load i64, ptr %l54, !tbaa !24
  store i64 %t47, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = icmp sgt i64 %t48, %t49
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb14
bb11:
  %t58 = load i64, ptr %l5, !tbaa !24
  %t59 = load i64, ptr %l4, !tbaa !24
  %t62 = sub i64 %t58, %t59
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t68 = sub i64 %t66, 1
  %t69 = load i64, ptr %l6, !tbaa !24
  %t72 = sdiv i64 %t68, %t69
  store i64 %t72, ptr %l61, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb13
bb13:
  %t74 = load i64, ptr %l61, !tbaa !24
  store i64 %t74, ptr %l58, !tbaa !24
  br label %bb14
bb14:
  %t75 = load i64, ptr %l58, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb16, label %bb17
bb16:
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = mul i64 %t85, %t86
  %t92 = add i64 %t84, %t89
  store i64 %t92, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = call i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eModuleOf(ptr %v0, ptr %t94, i64 %t95)
  store i64 %t98, ptr %l81
  br label %bb19
bb19:
  %t99 = load i64, ptr %l81, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  %t100 = load i64, ptr %l10, !tbaa !24
  %t102 = icmp sge i64 %t100, 0
  br i1 %t102, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s3
  %t104 = load i64, ptr %l10, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr %"compiler/effects:Facts", ptr %t107, i64 %t104
  store ptr %t108, ptr %l85, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %t109, i64 %t110)
  store %"compiler/effects:Facts" %t113, ptr %l88
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t114 = load ptr, ptr %l85, !tbaa !29
  call void @compiler_2feffects_2eMerge(ptr %s0, ptr %s3, ptr %t114, ptr %l88)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t116 = load i64, ptr %l8, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l8, !tbaa !24
  br label %bb15
bb26:
  %t120 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l92
  br label %bb27
bb27:
  %t121 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t121, ptr %l11
  %t122 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t122, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t124 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t124, 0
  store i64 %t126, ptr %l14, !tbaa !24
  br label %bb28
bb28:
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb29, label %bb30
bb29:
  br label %bb34
bb30:
  br label %bb31
bb31:
  %t136 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t136, ptr %l100, !tbaa !27
  %t137 = load i64, ptr %l13, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr ptr, ptr %t140, i64 %t137
  %t142 = load ptr, ptr %t141, !tbaa !39
  %t146 = getelementptr %"compiler/load:Module", ptr %t142, i32 0, i32 2
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %v0, ptr %l11, { i64, ptr } %t147)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t150 = load i64, ptr %l13, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l13, !tbaa !24
  br label %bb28
bb34:
  %t154 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l108
  br label %bb35
bb35:
  %t155 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t155, ptr %l16
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 0
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/load:Loader", ptr %t162, i32 0, i32 12
  %t165 = load i64, ptr %t164, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l16, i64 %t165)
  br label %bb36
bb36:
  store i64 0, ptr %l17, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t172 = load i64, ptr %l18, !tbaa !24
  %t173 = load i64, ptr %l17, !tbaa !24
  %t176 = icmp sgt i64 %t172, %t173
  br i1 %t176, label %bb37, label %bb38
bb37:
  %t178 = load i64, ptr %l19, !tbaa !24
  %t180 = icmp sgt i64 %t178, 0
  br i1 %t180, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l119, !tbaa !24
  br label %bb42
bb39:
  %t182 = load i64, ptr %l18, !tbaa !24
  %t183 = load i64, ptr %l17, !tbaa !24
  %t186 = sub i64 %t182, %t183
  %t187 = load i64, ptr %l19, !tbaa !24
  %t190 = add i64 %t186, %t187
  %t192 = sub i64 %t190, 1
  %t193 = load i64, ptr %l19, !tbaa !24
  %t196 = sdiv i64 %t192, %t193
  store i64 %t196, ptr %l122, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb41
bb41:
  %t198 = load i64, ptr %l122, !tbaa !24
  store i64 %t198, ptr %l119, !tbaa !24
  br label %bb42
bb42:
  %t199 = load i64, ptr %l119, !tbaa !24
  store i64 %t199, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb43
bb43:
  %t200 = load i64, ptr %l21, !tbaa !24
  %t201 = load i64, ptr %l20, !tbaa !24
  %t204 = icmp slt i64 %t200, %t201
  %t206 = xor i1 %t204, true
  br i1 %t206, label %bb44, label %bb45
bb44:
  br label %bb56
bb45:
  br label %bb46
bb46:
  %t208 = load i64, ptr %l17, !tbaa !24
  %t209 = load i64, ptr %l21, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t213 = mul i64 %t209, %t210
  %t216 = add i64 %t208, %t213
  store i64 %t216, ptr %l22, !tbaa !24
  %t218 = load i64, ptr %l22, !tbaa !24
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/load:Loader", ptr %t225, i32 0, i32 12
  %t228 = load i64, ptr %t227, !tbaa !24
  %t231 = icmp ne i64 %t218, %t228
  br i1 %t231, label %bb47, label %bb48
bb47:
  %t233 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t233, ptr %l147, !tbaa !27
  %t234 = load i64, ptr %l22, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr ptr, ptr %t237, i64 %t234
  %t239 = load ptr, ptr %t238, !tbaa !39
  %t241 = getelementptr %"compiler/load:Module", ptr %t239, i32 0, i32 2
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t243, ptr %l151, !tbaa !27
  %t244 = load i64, ptr %l22, !tbaa !24
  %t246 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !27
  %t248 = getelementptr ptr, ptr %t247, i64 %t244
  %t249 = load ptr, ptr %t248, !tbaa !39
  %t251 = getelementptr %"compiler/load:Module", ptr %t249, i32 0, i32 3
  %t252 = load i1, ptr %t251, !tbaa !21
  %t255 = call i1 @compiler_2fexplain_2ecapsShown(ptr %v0, { i64, ptr } %t242, i1 %t252)
  store i1 %t255, ptr %l155
  br label %bb49
bb48:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb50
bb49:
  %t256 = load i1, ptr %l155, !tbaa !21
  store i1 %t256, ptr %l146, !tbaa !21
  br label %bb50
bb50:
  %t257 = load i1, ptr %l146, !tbaa !21
  br i1 %t257, label %bb51, label %bb52
bb51:
  %t258 = load i64, ptr %l22, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l16, i64 %t258)
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t261 = load i64, ptr %l21, !tbaa !24
  %t263 = add i64 %t261, 1
  store i64 %t263, ptr %l21, !tbaa !24
  br label %bb43
bb56:
  store i64 0, ptr %l23, !tbaa !24
  store ptr %l16, ptr %l24, !tbaa !29
  store i64 0, ptr %l25, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s13
  %t266 = load i64, ptr %l25, !tbaa !24
  store i64 %t266, ptr %l161, !tbaa !24
  %t267 = load ptr, ptr %l24, !tbaa !29
  %t269 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t267)
  store i64 %t269, ptr %l163
  br label %bb58
bb58:
  %t270 = load i64, ptr %l161, !tbaa !24
  %t271 = load i64, ptr %l163, !tbaa !24
  %t272 = icmp slt i64 %t270, %t271
  %t274 = xor i1 %t272, true
  br i1 %t274, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s13)
  br label %bb69
bb60:
  br label %bb61
bb61:
  %t276 = load ptr, ptr %l24, !tbaa !29
  %t277 = load i64, ptr %l25, !tbaa !24
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t276, i64 %t277)
  store i64 %t280, ptr %l168
  br label %bb62
bb62:
  %t281 = load i64, ptr %l168, !tbaa !24
  store i64 %t281, ptr %l26, !tbaa !24
  %t282 = load i64, ptr %l26, !tbaa !24
  %t285 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s13, ptr %l11, i64 %t282)
  store { i64, ptr } %t285, ptr %l171
  br label %bb63
bb63:
  %t286 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 0
  %t288 = load i64, ptr %l23, !tbaa !24
  %t291 = icmp sgt i64 %t287, %t288
  br i1 %t291, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s14
  %t293 = load i64, ptr %l26, !tbaa !24
  %t296 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s14, ptr %l11, i64 %t293)
  store { i64, ptr } %t296, ptr %l177
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t297 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t298 = extractvalue { i64, ptr } %t297, 0
  store i64 %t298, ptr %l23, !tbaa !24
  call void @__olang_scope_close(ptr %s14)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s13)
  br label %bb68
bb68:
  %t300 = load i64, ptr %l25, !tbaa !24
  %t302 = add i64 %t300, 1
  store i64 %t302, ptr %l25, !tbaa !24
  br label %bb57
bb69:
  %t304 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t304, ptr %l181
  br label %bb70
bb70:
  %t305 = load %"std/prelude/text:StringBuilder", ptr %l181
  store %"std/prelude/text:StringBuilder" %t305, ptr %l27
  store ptr %l16, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s17
  %t307 = load i64, ptr %l29, !tbaa !24
  store i64 %t307, ptr %l183, !tbaa !24
  %t308 = load ptr, ptr %l28, !tbaa !29
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t308)
  store i64 %t310, ptr %l185
  br label %bb72
bb72:
  %t311 = load i64, ptr %l183, !tbaa !24
  %t312 = load i64, ptr %l185, !tbaa !24
  %t313 = icmp slt i64 %t311, %t312
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb73, label %bb74
bb73:
  call void @__olang_scope_close(ptr %s17)
  br label %bb102
bb74:
  br label %bb75
bb75:
  %t317 = load ptr, ptr %l28, !tbaa !29
  %t318 = load i64, ptr %l29, !tbaa !24
  %t321 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t317, i64 %t318)
  store i64 %t321, ptr %l190
  br label %bb76
bb76:
  %t322 = load i64, ptr %l190, !tbaa !24
  store i64 %t322, ptr %l30, !tbaa !24
  %t323 = load i64, ptr %l30, !tbaa !24
  %t325 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t326 = load ptr, ptr %t325, !tbaa !27
  %t327 = getelementptr %"compiler/effects:Facts", ptr %t326, i64 %t323
  %t328 = load %"compiler/effects:Facts", ptr %t327
  store %"compiler/effects:Facts" %t328, ptr %l31
  store i64 0, ptr %l32, !tbaa !24
  %t330 = load i64, ptr @G_2ecompiler_2feffects_2eCapCount, !tbaa !24
  store i64 %t330, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t332 = load i64, ptr %l33, !tbaa !24
  %t333 = load i64, ptr %l32, !tbaa !24
  %t336 = icmp sgt i64 %t332, %t333
  br i1 %t336, label %bb77, label %bb78
bb77:
  %t338 = load i64, ptr %l34, !tbaa !24
  %t340 = icmp sgt i64 %t338, 0
  br i1 %t340, label %bb79, label %bb80
bb78:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb82
bb79:
  %t342 = load i64, ptr %l33, !tbaa !24
  %t343 = load i64, ptr %l32, !tbaa !24
  %t346 = sub i64 %t342, %t343
  %t347 = load i64, ptr %l34, !tbaa !24
  %t350 = add i64 %t346, %t347
  %t352 = sub i64 %t350, 1
  %t353 = load i64, ptr %l34, !tbaa !24
  %t356 = sdiv i64 %t352, %t353
  store i64 %t356, ptr %l200, !tbaa !24
  br label %bb81
bb80:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb81
bb81:
  %t358 = load i64, ptr %l200, !tbaa !24
  store i64 %t358, ptr %l197, !tbaa !24
  br label %bb82
bb82:
  %t359 = load i64, ptr %l197, !tbaa !24
  store i64 %t359, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb83
bb83:
  %t360 = load i64, ptr %l36, !tbaa !24
  %t361 = load i64, ptr %l35, !tbaa !24
  %t364 = icmp slt i64 %t360, %t361
  %t366 = xor i1 %t364, true
  br i1 %t366, label %bb84, label %bb85
bb84:
  br label %bb91
bb85:
  br label %bb86
bb86:
  %t368 = load i64, ptr %l32, !tbaa !24
  %t369 = load i64, ptr %l36, !tbaa !24
  %t370 = load i64, ptr %l34, !tbaa !24
  %t373 = mul i64 %t369, %t370
  %t376 = add i64 %t368, %t373
  store i64 %t376, ptr %l37, !tbaa !24
  %t378 = load i64, ptr %l37, !tbaa !24
  %t379 = getelementptr %"compiler/effects:Facts", ptr %l31, i32 0, i32 19
  %t381 = getelementptr [6 x i64], ptr %t379, i64 0, i64 %t378
  %t382 = load i64, ptr %t381, !tbaa !34
  %t383 = load i64, ptr %l30, !tbaa !24
  %t386 = icmp eq i64 %t382, %t383
  br i1 %t386, label %bb87, label %bb88
bb87:
  %t388 = load i64, ptr %l37, !tbaa !24
  %t389 = getelementptr %"compiler/effects:Facts", ptr %l31, i32 0, i32 19
  %t391 = getelementptr [6 x i64], ptr %t389, i64 0, i64 %t388
  store i64 -1, ptr %t391, !tbaa !34
  br label %bb89
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t392 = load i64, ptr %l36, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l36, !tbaa !24
  br label %bb83
bb91:
  store ptr %l31, ptr %l225, !tbaa !29
  %t397 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l11)
  store { i64, ptr } %t397, ptr %l227
  br label %bb92
bb92:
  %t398 = load ptr, ptr %l225, !tbaa !29
  %t399 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t400 = call { i64, ptr } @compiler_2feffects_2eCapText(ptr %s17, ptr %s0, ptr %s17, ptr %t398, { i64, ptr } %t399)
  store { i64, ptr } %t400, ptr %l228
  br label %bb93
bb93:
  %t401 = load { i64, ptr }, ptr %l228, !tbaa !27
  store { i64, ptr } %t401, ptr %l38, !tbaa !27
  store ptr %l27, ptr %l229, !tbaa !29
  %t402 = load i64, ptr %l30, !tbaa !24
  %t405 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l11, i64 %t402)
  store { i64, ptr } %t405, ptr %l232
  br label %bb94
bb94:
  %t406 = load i64, ptr %l23, !tbaa !24
  %t407 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t409 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %s0, ptr %s17, { i64, ptr } %t407, i64 %t406, i8 32)
  store { i64, ptr } %t409, ptr %l234
  br label %bb95
bb95:
  %t410 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t411 = extractvalue { i64, ptr } %t410, 0
  store i64 %t411, ptr %l235, !tbaa !24
  %t412 = load i64, ptr %l235, !tbaa !24
  %t413 = mul i64 %t412, 1
  %t414 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t413)
  %t415 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr %t414, 1
  store { i64, ptr } %t416, ptr %l236, !tbaa !27
  %t417 = getelementptr { i64, ptr }, ptr %l236, i32 0, i32 1
  %t418 = load ptr, ptr %t417, !tbaa !27
  %t419 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !27
  %t421 = load i64, ptr %l235, !tbaa !24
  %t422 = mul i64 %t421, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t418, ptr %t420, i64 %t422, i1 false)
  %t423 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t425 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s17, ptr %s17, { i64, ptr } %t423, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t425, ptr %l238
  br label %bb96
bb96:
  %t426 = load i1, ptr %l238, !tbaa !21
  %t427 = xor i1 %t426, true
  br i1 %t427, label %bb97, label %bb98
bb97:
  %t429 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t429, ptr %l240, !tbaa !27
  br label %bb99
bb98:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l240, !tbaa !27
  br label %bb99
bb99:
  %t431 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t436 = add i64 %t433, %t435
  %t437 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = add i64 %t436, %t439
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t443 = add i64 %t440, %t442
  %t444 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t443)
  call void @olang_textcopy(ptr %t444, ptr %t432, i64 %t433)
  %t445 = getelementptr i8, ptr %t444, i64 %t433
  call void @olang_textcopy(ptr %t445, ptr %t434, i64 %t435)
  %t446 = getelementptr i8, ptr %t445, i64 %t435
  call void @olang_textcopy(ptr %t446, ptr %t438, i64 %t439)
  %t447 = getelementptr i8, ptr %t446, i64 %t439
  call void @olang_textcopy(ptr %t447, ptr %t441, i64 %t442)
  %t448 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t444, 1
  %t451 = extractvalue { i64, ptr } %t449, 0
  %t452 = extractvalue { i64, ptr } %t449, 1
  %t453 = mul i64 %t451, 1
  %t454 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t453)
  call void @llvm.memcpy.p0.p0.i64(ptr %t454, ptr %t452, i64 %t453, i1 false)
  %t455 = insertvalue { i64, ptr } undef, i64 %t451, 0
  %t456 = insertvalue { i64, ptr } %t455, ptr %t454, 1
  %t457 = load ptr, ptr %l229, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %t457, { i64, ptr } %t456)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s17)
  br label %bb101
bb101:
  %t459 = load i64, ptr %l29, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l29, !tbaa !24
  br label %bb71
bb102:
  %t464 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l27)
  store { i64, ptr } %t464, ptr %l247
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s0)
  %t465 = load { i64, ptr }, ptr %l247, !tbaa !27
  store { i64, ptr } %t465, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2eFnText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call { i64, ptr } @compiler_2fexplain_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2)
  store { i64, ptr } %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fexplain_2eItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/names:Entry"
  %l12 = alloca i64
  %l13 = alloca i32
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l29 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca i64
  %l42 = alloca i32
  %l48 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca i64
  %l58 = alloca %"compiler/names:Entry"
  %l68 = alloca i64
  %l74 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l87 = alloca i32
  %l92 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l5, !tbaa !29
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v3, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  %t19 = extractvalue { i32, i64 } %t18, 1
  %t20 = extractvalue { i32, i64 } %t18, 0
  store i32 %t20, ptr %l23
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb3, label %ok.22, !prof !99
ok.22:
  store i64 %t19, ptr %l22
  br label %bb2
bb2:
  %t23 = load i64, ptr %l22, !tbaa !24
  store i64 %t23, ptr %l20, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t24 = load i64, ptr %l20, !tbaa !24
  %t27 = icmp sgt i64 %t24, 0
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t35 = call i64 @compiler_2fexplain_2efnNamed(ptr %v0, ptr %v3, ptr %t29, i64 %t30, { i64, ptr } %t31)
  store i64 %t35, ptr %l29
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t36 = load i64, ptr %l29, !tbaa !24
  store i64 %t36, ptr %l7, !tbaa !24
  %t37 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t37, 0
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t42, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load i64, ptr %l7, !tbaa !24
  %t49 = call { i64, ptr } @compiler_2fexplain_2efnItem(ptr %v0, ptr %v1, ptr %v4, ptr %t43, ptr %t44, i64 %t45)
  store { i64, ptr } %t49, ptr %l36
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t51 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t50, 1
  store { i32, { i64, ptr } } %t51, ptr %rv
  br label %ret
bb13:
  %t52 = load ptr, ptr %l5, !tbaa !29
  store ptr %t52, ptr %l37, !tbaa !29
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l38, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l37, !tbaa !29
  %t57 = call ptr @__olang_region_or(ptr %t56, ptr %v0)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l38, !tbaa !24
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t61 = load i64, ptr %l38
  %t62 = inttoptr i64 %t61 to ptr
  %t65 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t62, ptr %v3, ptr %t59, { i64, ptr } %t60)
  store i32 %t65, ptr %l42
  br label %bb16
bb16:
  %t66 = load i32, ptr %l42, !tbaa !23
  store i32 %t66, ptr %l8, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/check:Checker", ptr %t67, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/names:Resolver", ptr %t73, i32 0, i32 1
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l48
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l48, !tbaa !29
  %t82 = getelementptr %"compiler/names:Table", ptr %t80, i32 0, i32 0
  store ptr %t82, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb18
bb18:
  %t84 = load i64, ptr %l10, !tbaa !24
  store i64 %t84, ptr %l51, !tbaa !24
  %t85 = load ptr, ptr %l9, !tbaa !29
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l53
  br label %bb19
bb19:
  %t88 = load i64, ptr %l51, !tbaa !24
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = icmp slt i64 %t88, %t89
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb20, label %bb21
bb20:
  br label %bb40
bb21:
  br label %bb22
bb22:
  %t94 = load ptr, ptr %l9, !tbaa !29
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store %"compiler/names:Entry" %t98, ptr %l58
  br label %bb23
bb23:
  %t99 = load %"compiler/names:Entry", ptr %l58
  store %"compiler/names:Entry" %t99, ptr %l11
  %t100 = getelementptr %"compiler/names:Entry", ptr %l11, i32 0, i32 0
  %t101 = load i32, ptr %t100, !tbaa !23
  %t102 = load i32, ptr %l8, !tbaa !23
  %t105 = icmp ne i32 %t101, %t102
  br i1 %t105, label %bb24, label %bb25
bb24:
  br label %bb39
bb25:
  br label %bb26
bb26:
  %t107 = getelementptr %"compiler/names:Entry", ptr %l11, i32 0, i32 2
  %t108 = load i32, ptr %t107, !range !{i32 0, i32 9}
  %t110 = trunc i64 3 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load i64, ptr %l3, !tbaa !24
  %t118 = load i32, ptr %l8, !tbaa !23
  %t122 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t116, i64 %t117, i32 %t118)
  store i64 %t122, ptr %l68
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t123 = load i64, ptr %l68, !tbaa !24
  store i64 %t123, ptr %l12, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t126 = icmp sge i64 %t124, 0
  br i1 %t126, label %bb30, label %bb31
bb30:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t130 = load i64, ptr %l12, !tbaa !24
  %t134 = call { i64, ptr } @compiler_2fexplain_2efnItem(ptr %v0, ptr %v1, ptr %v4, ptr %t128, ptr %t129, i64 %t130)
  store { i64, ptr } %t134, ptr %l74
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t135 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t136 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t135, 1
  store { i32, { i64, ptr } } %t136, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t137 = getelementptr %"compiler/names:Entry", ptr %l11, i32 0, i32 2
  %t138 = load i32, ptr %t137, !range !{i32 0, i32 9}
  %t140 = trunc i64 2 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb35, label %bb36
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l3, !tbaa !24
  %t146 = load %"compiler/names:Entry", ptr %l11
  %t151 = call { i64, ptr } @compiler_2fexplain_2eglobalItem(ptr %v0, ptr %v2, ptr %v0, ptr %v4, ptr %t143, ptr %a2, i64 %t145, %"compiler/names:Entry" %t146)
  store { i64, ptr } %t151, ptr %l81
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s0)
  %t152 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t153 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t152, 1
  store { i32, { i64, ptr } } %t153, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t154 = load i64, ptr %l10, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l10, !tbaa !24
  br label %bb18
bb40:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i64, ptr %l3, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t164 = call i32 @compiler_2fexplain_2etypeNamed(ptr %v0, ptr %v3, ptr %t158, i64 %t159, { i64, ptr } %t160)
  store i32 %t164, ptr %l87
  br label %bb41
bb41:
  %t165 = load i32, ptr %l87, !tbaa !23
  store i32 %t165, ptr %l13, !tbaa !23
  %t166 = load i32, ptr %l13, !tbaa !23
  %t168 = icmp sge i32 %t166, 0
  br i1 %t168, label %bb42, label %bb43
bb42:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l13, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2fexplain_2etypeItem(ptr %v0, ptr %v4, ptr %t170, i32 %t171)
  store { i64, ptr } %t174, ptr %l92
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t175 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t176 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t175, 1
  store { i32, { i64, ptr } } %t176, ptr %rv
  br label %ret
bb45:
  call void @__olang_scope_close(ptr %s0)
  %t178 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t178, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2eattrsBefore(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, { i64, ptr } }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l15 = alloca { i64, { i64, ptr } }
  %l20 = alloca i1
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l41 = alloca %"std/prelude/text:StringBuilder"
  %l49 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l56 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l70 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %s0, ptr %t4, i32 %a1)
  store { i64, { i64, ptr } } %t8, ptr %l15
  br label %bb1
bb1:
  %t9 = load { i64, { i64, ptr } }, ptr %l15
  store { i64, { i64, ptr } } %t9, ptr %l2
  %t10 = getelementptr { i64, { i64, ptr } }, ptr %l2, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, { i64, ptr } }, ptr %l2, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp slt i64 %t16, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb4
bb3:
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t24 = icmp eq i64 %t22, 0
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb4
bb4:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t27, ptr %l25, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l26, !tbaa !24
  %t30 = load i64, ptr %l26, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l27, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 0
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = getelementptr %"compiler/load:Loader", ptr %t49, i32 0, i32 10
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l33
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l33, !tbaa !29
  %t58 = getelementptr %"compiler/load:Module", ptr %t56, i32 0, i32 6
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l5, !tbaa !29
  %t61 = load ptr, ptr %l5, !tbaa !29
  %t63 = icmp eq ptr %t61, null
  br i1 %t63, label %bb9, label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_654ac6e7d4d962a_57fceb1b72d2ae56)
  unreachable
bb10:
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t68 = getelementptr %"compiler/source:Source", ptr %t65, i32 0, i32 1
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l6, !tbaa !27
  %t71 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t71, ptr %l41
  br label %bb12
bb12:
  %t72 = load %"std/prelude/text:StringBuilder", ptr %l41
  store %"std/prelude/text:StringBuilder" %t72, ptr %l7
  %t73 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t73, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load i64, ptr %l10, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t87 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t87, ptr %l49, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr ptr, ptr %t91, i64 %t88
  %t93 = load ptr, ptr %t92, !tbaa !39
  store ptr %t93, ptr %l11, !tbaa !29
  store ptr %l7, ptr %l52, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t95, ptr %l53, !tbaa !27
  %t96 = load ptr, ptr %l11, !tbaa !29
  %t98 = getelementptr %"compiler/ast:Attr", ptr %t96, i32 0, i32 0
  %t99 = getelementptr %"compiler/source:Span", ptr %t98, i32 0, i32 0
  %t100 = load i32, ptr %t99, !tbaa !23
  %t102 = sext i32 %t100 to i64
  store i64 %t102, ptr %l56, !tbaa !24
  %t103 = load ptr, ptr %l11, !tbaa !29
  %t105 = getelementptr %"compiler/ast:Attr", ptr %t103, i32 0, i32 0
  %t106 = getelementptr %"compiler/source:Span", ptr %t105, i32 0, i32 1
  %t107 = load i32, ptr %t106, !tbaa !23
  %t109 = sext i32 %t107 to i64
  store i64 %t109, ptr %l59, !tbaa !24
  %t110 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t110, 0
  store i64 %t111, ptr %l60, !tbaa !24
  %t112 = load i64, ptr %l56, !tbaa !24
  %t113 = icmp sge i64 %t112, 0
  br i1 %t113, label %bb17, label %bb18
bb17:
  %t115 = load i64, ptr %l56, !tbaa !24
  %t116 = load i64, ptr %l59, !tbaa !24
  %t117 = icmp sle i64 %t115, %t116
  br i1 %t117, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d0280248a738559f_8af1b7358df9134b)
  unreachable
bb19:
  %t119 = load i64, ptr %l59, !tbaa !24
  %t120 = load i64, ptr %l60, !tbaa !24
  %t121 = icmp sle i64 %t119, %t120
  br i1 %t121, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_d0280248a738559f_8af1b7358df9134b)
  unreachable
bb21:
  %t123 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = load i64, ptr %l56, !tbaa !24
  %t126 = load i64, ptr %l59, !tbaa !24
  %t127 = getelementptr i8, ptr %t124, i64 %t125
  %t128 = sub i64 %t126, %t125
  %t129 = insertvalue { i64, ptr } undef, i64 %t128, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t127, 1
  %t132 = extractvalue { i64, ptr } %t130, 1
  %t133 = extractvalue { i64, ptr } %t130, 0
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t136 = add i64 %t133, %t135
  %t137 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t136)
  call void @olang_textcopy(ptr %t137, ptr %t132, i64 %t133)
  %t138 = getelementptr i8, ptr %t137, i64 %t133
  call void @olang_textcopy(ptr %t138, ptr %t134, i64 %t135)
  %t139 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t137, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = extractvalue { i64, ptr } %t140, 1
  %t144 = mul i64 %t142, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t145, ptr %t143, i64 %t144, i1 false)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  %t148 = load ptr, ptr %l52, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %t148, { i64, ptr } %t147)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_d0280248a738559f_8af1b7358df9134b)
  unreachable
bb23:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb24:
  %t150 = load i64, ptr %l9, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l9, !tbaa !24
  br label %bb13
bb25:
  %t155 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l7)
  store { i64, ptr } %t155, ptr %l70
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t156 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t156, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fexplain_2ecaseWhole(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca { i64, ptr }
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 1
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { { i64, ptr }, ptr }, ptr %t17, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18
  store { i64, ptr } %t19, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t21, ptr %l12, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %a1
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t29 = getelementptr %"compiler/ast:CaseDecl", ptr %t27, i32 0, i32 3
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_5177bd7d484351dd_5d0dbb04dc509331)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %l2, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l10, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  store i64 %t15, ptr %l11, !tbaa !24
  %t16 = icmp sge i64 3, 0
  br i1 %t16, label %bb5, label %bb6
bb4:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 1
  %t21 = extractvalue { i64, ptr } %t18, 0
  %t22 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t21)
  call void @olang_textcopy(ptr %t22, ptr %t20, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l8, !tbaa !27
  br label %bb11
bb5:
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = icmp sle i64 3, %t26
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_559eb4fe50ed7f04_5fd8618740f13e0)
  unreachable
bb7:
  %t29 = load i64, ptr %l10, !tbaa !24
  %t30 = load i64, ptr %l11, !tbaa !24
  %t31 = icmp sle i64 %t29, %t30
  br i1 %t31, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_559eb4fe50ed7f04_5fd8618740f13e0)
  unreachable
bb9:
  %t33 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l10, !tbaa !24
  %t36 = getelementptr i8, ptr %t34, i64 3
  %t37 = sub i64 %t35, 3
  %t38 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t36, 1
  %t40 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t43 = extractvalue { i64, ptr } %t39, 1
  %t44 = extractvalue { i64, ptr } %t39, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t40, i64 %t41)
  %t47 = getelementptr i8, ptr %t46, i64 %t41
  call void @olang_textcopy(ptr %t47, ptr %t43, i64 %t44)
  %t48 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t46, 1
  store { i64, ptr } %t49, ptr %l8, !tbaa !27
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_559eb4fe50ed7f04_5fd8618740f13e0)
  unreachable
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t51 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t51, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2eeffectLine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca i1
  %l18 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l34 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i64
  %l66 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca { i64, ptr }
  %l77 = alloca %"compiler/effects:Facts"
  %l78 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v1, ptr %t8, i64 %t9)
  store i1 %t12, ptr %l18
  br label %bb3
bb3:
  %t13 = load i1, ptr %l18, !tbaa !21
  store i1 %t13, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l14, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v1, ptr %v1, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l22
  br label %bb8
bb8:
  %t23 = load ptr, ptr %l22, !tbaa !29
  store ptr %t23, ptr %l5, !tbaa !29
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l23
  br label %bb9
bb9:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l6
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = getelementptr %"compiler/ast:Func", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  store ptr %l6, ptr %l28, !tbaa !29
  %t35 = ptrtoint ptr %s0 to i64
  store i64 %t35, ptr %l29, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t36, label %bb12, label %bb13
bb11:
  br label %bb19
bb12:
  %t38 = call ptr @__olang_region_make(ptr %s0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l29, !tbaa !24
  br label %bb13
bb13:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr %"compiler/check:Checker", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/generic:Program", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/load:Loader", ptr %t46, i32 0, i32 3
  %t49 = load ptr, ptr %t48, !tbaa !29
  store ptr %t49, ptr %l34, !tbaa !29
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr %"compiler/ast:Func", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb14, label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_98928cfde749f632_385db913ea7e7976)
  unreachable
bb15:
  br label %bb16
bb16:
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Func", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = getelementptr %"compiler/ast:Param", ptr %t60, i32 0, i32 1
  %t64 = load i32, ptr %t63, !tbaa !23
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s2, ptr %t65, i32 %t64)
  store { i64, ptr } %t67, ptr %l42
  br label %bb17
bb17:
  %t68 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t71 = load i64, ptr %l29
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = call ptr @__olang_scope_alloc(ptr %t72, i64 %t70)
  call void @olang_textcopy(ptr %t73, ptr %t69, i64 %t70)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = load i64, ptr %l29
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = extractvalue { i64, ptr } %t75, 0
  %t80 = extractvalue { i64, ptr } %t75, 1
  %t81 = mul i64 %t79, 1
  %t82 = call ptr @__olang_scope_alloc(ptr %t78, i64 %t81)
  call void @llvm.memcpy.p0.p0.i64(ptr %t82, ptr %t80, i64 %t81, i1 false)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l28, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t85, { i64, ptr } %t84)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t89 = getelementptr %"compiler/ast:Func", ptr %t87, i32 0, i32 3
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/ast:Sig", ptr %t90, i32 0, i32 0
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l9, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s5
  %t99 = load i64, ptr %l8, !tbaa !24
  %t100 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t107 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t107, ptr %l54, !tbaa !27
  %t108 = load i64, ptr %l8, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr ptr, ptr %t111, i64 %t108
  %t113 = load ptr, ptr %t112, !tbaa !39
  store ptr %t113, ptr %l10, !tbaa !29
  store ptr %l6, ptr %l57, !tbaa !29
  %t115 = ptrtoint ptr %s0 to i64
  store i64 %t115, ptr %l58, !tbaa !24
  %t116 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t116, label %bb24, label %bb25
bb24:
  %t118 = call ptr @__olang_region_make(ptr %s0)
  %t119 = ptrtoint ptr %t118 to i64
  store i64 %t119, ptr %l58, !tbaa !24
  br label %bb25
bb25:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr %"compiler/check:Checker", ptr %t120, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !29
  %t125 = getelementptr %"compiler/generic:Program", ptr %t123, i32 0, i32 0
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t128 = getelementptr %"compiler/load:Loader", ptr %t126, i32 0, i32 3
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t130 = load ptr, ptr %l10, !tbaa !29
  %t132 = getelementptr %"compiler/ast:Param", ptr %t130, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t136 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s5, ptr %t129, i32 %t133)
  store { i64, ptr } %t136, ptr %l66
  br label %bb26
bb26:
  %t137 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = load i64, ptr %l58
  %t141 = inttoptr i64 %t140 to ptr
  %t142 = call ptr @__olang_scope_alloc(ptr %t141, i64 %t139)
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t142, 1
  %t146 = load i64, ptr %l58
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = extractvalue { i64, ptr } %t144, 0
  %t149 = extractvalue { i64, ptr } %t144, 1
  %t150 = mul i64 %t148, 1
  %t151 = call ptr @__olang_scope_alloc(ptr %t147, i64 %t150)
  call void @llvm.memcpy.p0.p0.i64(ptr %t151, ptr %t149, i64 %t150, i1 false)
  %t152 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t154 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t154, { i64, ptr } %t153)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb28
bb28:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l8, !tbaa !24
  br label %bb20
bb29:
  %t160 = load ptr, ptr %l1, !tbaa !29
  %t162 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v1, ptr %v1, ptr %t160)
  store ptr %t162, ptr %l72
  br label %bb30
bb30:
  %t163 = load ptr, ptr %l72, !tbaa !29
  store ptr %a0, ptr %l73, !tbaa !29
  store { i64, ptr } %a4, ptr %l74, !tbaa !27
  %t167 = load i64, ptr %l3, !tbaa !24
  %t170 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v1, ptr %t163, i64 %t167)
  store %"compiler/effects:Facts" %t170, ptr %l77
  br label %bb31
bb31:
  store ptr %l77, ptr %l78, !tbaa !29
  %t172 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t172, ptr %l80
  br label %bb32
bb32:
  %t173 = load ptr, ptr %l78, !tbaa !29
  %t174 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t175 = call { i64, ptr } @compiler_2feffects_2eDescribe(ptr %s0, ptr %s0, ptr %s0, ptr %t173, { i64, ptr } %t174)
  store { i64, ptr } %t175, ptr %l81
  br label %bb33
bb33:
  %t176 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t188 = add i64 %t185, %t187
  %t189 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t188)
  call void @olang_textcopy(ptr %t189, ptr %t177, i64 %t178)
  %t190 = getelementptr i8, ptr %t189, i64 %t178
  call void @olang_textcopy(ptr %t190, ptr %t179, i64 %t180)
  %t191 = getelementptr i8, ptr %t190, i64 %t180
  call void @olang_textcopy(ptr %t191, ptr %t183, i64 %t184)
  %t192 = getelementptr i8, ptr %t191, i64 %t184
  call void @olang_textcopy(ptr %t192, ptr %t186, i64 %t187)
  %t193 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t189, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t202, { i64, ptr } %t201)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2eerrorsAfter(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l70 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l80 = alloca i64
  %l81 = alloca i64
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l91 = alloca i64
  %l92 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb51
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  store i8 %t57, ptr %l8, !tbaa !22
  %t59 = load i8, ptr %l8, !tbaa !22
  %t61 = icmp eq i8 %t59, 40
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t63 = load i8, ptr %l8, !tbaa !22
  %t65 = icmp eq i8 %t63, 60
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t68 = load i8, ptr %l8, !tbaa !22
  %t70 = icmp eq i8 %t68, 91
  store i1 %t70, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l43, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t77 = load i8, ptr %l8, !tbaa !22
  %t79 = icmp eq i8 %t77, 41
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t81 = load i8, ptr %l8, !tbaa !22
  %t83 = icmp eq i8 %t81, 62
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb25
bb24:
  %t86 = load i8, ptr %l8, !tbaa !22
  %t88 = icmp eq i8 %t86, 93
  store i1 %t88, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr %l1, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l56, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = sub i64 %t96, 1
  store i64 %t98, ptr %l1, !tbaa !24
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t100 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t104 = load i8, ptr %l8, !tbaa !22
  %t106 = icmp eq i8 %t104, 63
  store i1 %t106, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t108 = load i1, ptr %l63, !tbaa !21
  br i1 %t108, label %bb35, label %bb36
bb35:
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = icmp sgt i64 %t109, 0
  store i1 %t111, ptr %l66, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l66, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t114 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t114, ptr %l70, !tbaa !27
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i8, ptr %t120, i64 %t117
  %t122 = load i8, ptr %t121, !tbaa !32
  %t124 = icmp eq i8 %t122, 32
  store i1 %t124, ptr %l69, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb40
bb40:
  %t126 = load i1, ptr %l69, !tbaa !21
  br i1 %t126, label %bb41, label %bb42
bb41:
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l75, !tbaa !27
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = sub i64 %t128, 1
  store i64 %t130, ptr %l77, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t131, 0
  store i64 %t134, ptr %l80, !tbaa !24
  %t135 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t135, 0
  store i64 %t136, ptr %l81, !tbaa !24
  %t137 = load i64, ptr %l77, !tbaa !24
  %t138 = icmp sge i64 %t137, 0
  br i1 %t138, label %bb43, label %bb44
bb42:
  br label %bb49
bb43:
  %t140 = load i64, ptr %l77, !tbaa !24
  %t141 = load i64, ptr %l80, !tbaa !24
  %t142 = icmp sle i64 %t140, %t141
  br i1 %t142, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8f9ce818ff296c0e_932c83e6c6076d82)
  unreachable
bb45:
  %t144 = load i64, ptr %l80, !tbaa !24
  %t145 = load i64, ptr %l81, !tbaa !24
  %t146 = icmp sle i64 %t144, %t145
  br i1 %t146, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_8f9ce818ff296c0e_932c83e6c6076d82)
  unreachable
bb47:
  %t148 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = load i64, ptr %l77, !tbaa !24
  %t151 = load i64, ptr %l80, !tbaa !24
  %t152 = getelementptr i8, ptr %t149, i64 %t150
  %t153 = sub i64 %t151, %t150
  %t154 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t152, 1
  store { i64, ptr } %t155, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_8f9ce818ff296c0e_932c83e6c6076d82)
  unreachable
bb49:
  br label %bb50
bb50:
  %t158 = load i64, ptr %l6, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l6, !tbaa !24
  br label %bb7
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l89, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t162, ptr %l90, !tbaa !27
  %t163 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l91, !tbaa !24
  %t165 = load i64, ptr %l91, !tbaa !24
  %t166 = mul i64 %t165, 1
  %t167 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t166)
  %t168 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t167, 1
  store { i64, ptr } %t169, ptr %l92, !tbaa !27
  %t170 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l91, !tbaa !24
  %t175 = mul i64 %t174, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t171, ptr %t173, i64 %t175, i1 false)
  %t176 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t176, ptr %l90, !tbaa !27
  %t177 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2efields(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/typed:Local"
  %l19 = alloca i32
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca ptr
  %l42 = alloca i32
  %l46 = alloca i1
  %l51 = alloca i32
  %l56 = alloca i32
  %l58 = alloca i1
  %l63 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca ptr
  %l80 = alloca i32
  %l81 = alloca i64
  %l82 = alloca ptr
  %l92 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i64
  %l118 = alloca ptr
  %l122 = alloca i32
  %l124 = alloca %"compiler/typed:Local"
  %l129 = alloca i32
  %l130 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l139 = alloca i64
  %l141 = alloca i64
  %l142 = alloca i64
  %l152 = alloca { i64, ptr }
  %l157 = alloca i1
  %l158 = alloca { i64, ptr }
  %l159 = alloca ptr
  %l160 = alloca ptr
  %l166 = alloca i32
  %l167 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %s6 = alloca %olang.scope
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 14
  store ptr %t3, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l24, !tbaa !24
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l26
  br label %bb2
bb2:
  %t9 = load i64, ptr %l24, !tbaa !24
  %t10 = load i64, ptr %l26, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb73
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v1, ptr %v1, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l31
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l31, !tbaa !29
  store ptr %t20, ptr %l5, !tbaa !29
  %t21 = load ptr, ptr %l5, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Body", ptr %t21, i32 0, i32 1
  %t24 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t24, ptr %l6
  %t26 = load { i64, [2 x i64] }, ptr %l6
  %t28 = extractvalue { i64, [2 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 1
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t32 = getelementptr { i32, i32 }, ptr %t31, i32 0, i32 0
  %t33 = load i32, ptr %t32
  store i32 %t33, ptr %l7, !tbaa !23
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t36 = getelementptr { i32, i32 }, ptr %t35, i32 0, i32 1
  %t37 = load i32, ptr %t36
  store i32 %t37, ptr %l8, !tbaa !23
  br label %bb9
bb8:
  br label %bb66
bb9:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l7, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l42
  br label %bb10
bb10:
  %t49 = load i32, ptr %l42, !range !{i32 0, i32 33}
  %t51 = trunc i64 18 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb15
bb12:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l7, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l51
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t71, i32 %t72)
  store i32 %t75, ptr %l56
  br label %bb14
bb14:
  %t76 = load i32, ptr %l51, !tbaa !23
  %t77 = load i32, ptr %l56, !tbaa !23
  %t78 = icmp ne i32 %t76, %t77
  store i1 %t78, ptr %l46, !tbaa !21
  br label %bb15
bb15:
  %t80 = load i1, ptr %l46, !tbaa !21
  br i1 %t80, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb18
bb17:
  %t81 = load i32, ptr %l8, !tbaa !23
  %t83 = icmp ne i32 %t81, 0
  store i1 %t83, ptr %l58, !tbaa !21
  br label %bb18
bb18:
  %t85 = load i1, ptr %l58, !tbaa !21
  br i1 %t85, label %bb19, label %bb20
bb19:
  br label %bb72
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l63, !tbaa !29
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/generic:Program", ptr %t95, i32 0, i32 2
  %t98 = load i32, ptr %l2, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v1, ptr %t97, i32 %t98)
  store i32 %t101, ptr %l68
  br label %bb22
bb22:
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t103 = load i32, ptr %l68, !tbaa !23
  %t104 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t102, i32 %t103)
  store { i64, ptr } %t104, ptr %l69
  br label %bb23
bb23:
  %t105 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t105, ptr %l9, !tbaa !27
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/load:Loader", ptr %t112, i32 0, i32 10
  store ptr %t114, ptr %l73, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/check:Checker", ptr %t115, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !29
  store ptr %t118, ptr %l75, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  %t125 = load i32, ptr %l2, !tbaa !23
  %t128 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t124, i32 %t125)
  store i32 %t128, ptr %l80
  br label %bb24
bb24:
  %t129 = load ptr, ptr %l75, !tbaa !29
  %t130 = load i32, ptr %l80, !tbaa !23
  %t131 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v1, ptr %t129, i32 %t130)
  store i64 %t131, ptr %l81
  br label %bb25
bb25:
  %t132 = load ptr, ptr %l73, !tbaa !29
  %t133 = load i64, ptr %l81, !tbaa !24
  %t134 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t132, i64 %t133)
  store ptr %t134, ptr %l82
  br label %bb26
bb26:
  %t135 = load ptr, ptr %l82, !tbaa !29
  %t137 = getelementptr %"compiler/load:Module", ptr %t135, i32 0, i32 6
  %t138 = load ptr, ptr %t137, !tbaa !29
  store ptr %t138, ptr %l10, !tbaa !29
  %t140 = load ptr, ptr %l10, !tbaa !29
  %t142 = icmp eq ptr %t140, null
  br i1 %t142, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1ab09a44950d5518_36fac77ffd6769bc)
  unreachable
bb28:
  br label %bb29
bb29:
  %t144 = load ptr, ptr %l10, !tbaa !29
  %t147 = getelementptr %"compiler/source:Source", ptr %t144, i32 0, i32 1
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t150 = load ptr, ptr %l5, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Body", ptr %t150, i32 0, i32 10
  %t154 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t152)
  store i64 %t154, ptr %l92
  br label %bb30
bb30:
  %t155 = load i64, ptr %l92, !tbaa !24
  store i64 %t155, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t156 = load i64, ptr %l13, !tbaa !24
  %t157 = load i64, ptr %l12, !tbaa !24
  %t160 = icmp sgt i64 %t156, %t157
  br i1 %t160, label %bb31, label %bb32
bb31:
  %t162 = load i64, ptr %l14, !tbaa !24
  %t164 = icmp sgt i64 %t162, 0
  br i1 %t164, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb36
bb33:
  %t166 = load i64, ptr %l13, !tbaa !24
  %t167 = load i64, ptr %l12, !tbaa !24
  %t170 = sub i64 %t166, %t167
  %t171 = load i64, ptr %l14, !tbaa !24
  %t174 = add i64 %t170, %t171
  %t176 = sub i64 %t174, 1
  %t177 = load i64, ptr %l14, !tbaa !24
  %t180 = sdiv i64 %t176, %t177
  store i64 %t180, ptr %l99, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb35
bb35:
  %t182 = load i64, ptr %l99, !tbaa !24
  store i64 %t182, ptr %l96, !tbaa !24
  br label %bb36
bb36:
  %t183 = load i64, ptr %l96, !tbaa !24
  store i64 %t183, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t184 = load i64, ptr %l16, !tbaa !24
  %t185 = load i64, ptr %l15, !tbaa !24
  %t188 = icmp slt i64 %t184, %t185
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb65
bb39:
  br label %bb40
bb40:
  %t192 = load i64, ptr %l12, !tbaa !24
  %t193 = load i64, ptr %l16, !tbaa !24
  %t194 = load i64, ptr %l14, !tbaa !24
  %t197 = mul i64 %t193, %t194
  %t200 = add i64 %t192, %t197
  store i64 %t200, ptr %l17, !tbaa !24
  %t202 = load ptr, ptr %l5, !tbaa !29
  %t204 = getelementptr %"compiler/typed:Body", ptr %t202, i32 0, i32 7
  store ptr %t204, ptr %l118, !tbaa !29
  %t205 = load ptr, ptr %l5, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Body", ptr %t205, i32 0, i32 10
  %t208 = load i64, ptr %l17, !tbaa !24
  %t211 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t207, i64 %t208)
  store i32 %t211, ptr %l122
  br label %bb41
bb41:
  %t212 = load i32, ptr %l122, !tbaa !23
  %t213 = sext i32 %t212 to i64
  %t214 = load ptr, ptr %l118, !tbaa !29
  %t216 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t214, i64 %t213)
  store %"compiler/typed:Local" %t216, ptr %l124
  br label %bb42
bb42:
  %t217 = load %"compiler/typed:Local", ptr %l124
  store %"compiler/typed:Local" %t217, ptr %l18
  %t218 = load i64, ptr %l17, !tbaa !24
  %t219 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t224 = icmp slt i64 %t218, %t221
  br i1 %t224, label %bb43, label %bb44
bb43:
  %t226 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t226, ptr %l130, !tbaa !27
  %t227 = load i64, ptr %l17, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i32, ptr %t230, i64 %t227
  %t232 = load i32, ptr %t231, !tbaa !33
  store i32 %t232, ptr %l129, !tbaa !23
  br label %bb45
bb44:
  %t234 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 2
  %t235 = load i32, ptr %t234, !tbaa !23
  store i32 %t235, ptr %l129, !tbaa !23
  br label %bb45
bb45:
  %t237 = load i32, ptr %l129, !tbaa !23
  store i32 %t237, ptr %l19, !tbaa !23
  %t238 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 0
  %t239 = load i32, ptr %t238, !tbaa !23
  %t241 = icmp eq i32 %t239, 0
  br i1 %t241, label %bb46, label %bb47
bb46:
  %t243 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t243, ptr %l137, !tbaa !27
  %t244 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 1
  %t245 = getelementptr %"compiler/source:Span", ptr %t244, i32 0, i32 0
  %t246 = load i32, ptr %t245, !tbaa !23
  %t248 = sext i32 %t246 to i64
  store i64 %t248, ptr %l139, !tbaa !24
  %t249 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 1
  %t250 = getelementptr %"compiler/source:Span", ptr %t249, i32 0, i32 1
  %t251 = load i32, ptr %t250, !tbaa !23
  %t253 = sext i32 %t251 to i64
  store i64 %t253, ptr %l141, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t254, 0
  store i64 %t255, ptr %l142, !tbaa !24
  %t256 = load i64, ptr %l139, !tbaa !24
  %t257 = icmp sge i64 %t256, 0
  br i1 %t257, label %bb48, label %bb49
bb47:
  %t259 = load ptr, ptr %l1, !tbaa !29
  %t261 = getelementptr %"compiler/check:Checker", ptr %t259, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !29
  %t264 = getelementptr %"compiler/generic:Program", ptr %t262, i32 0, i32 0
  %t265 = load ptr, ptr %t264, !tbaa !29
  %t267 = getelementptr %"compiler/load:Loader", ptr %t265, i32 0, i32 3
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t269 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 0
  %t270 = load i32, ptr %t269, !tbaa !23
  %t273 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s6, ptr %t268, i32 %t270)
  store { i64, ptr } %t273, ptr %l152
  br label %bb54
bb48:
  %t274 = load i64, ptr %l139, !tbaa !24
  %t275 = load i64, ptr %l141, !tbaa !24
  %t276 = icmp sle i64 %t274, %t275
  br i1 %t276, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_2b8cc73a4c7e88bd_6bb5eb1cd2f38021)
  unreachable
bb50:
  %t278 = load i64, ptr %l141, !tbaa !24
  %t279 = load i64, ptr %l142, !tbaa !24
  %t280 = icmp sle i64 %t278, %t279
  br i1 %t280, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_2b8cc73a4c7e88bd_6bb5eb1cd2f38021)
  unreachable
bb52:
  %t282 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = load i64, ptr %l139, !tbaa !24
  %t285 = load i64, ptr %l141, !tbaa !24
  %t286 = getelementptr i8, ptr %t283, i64 %t284
  %t287 = sub i64 %t285, %t284
  %t288 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t289 = insertvalue { i64, ptr } %t288, ptr %t286, 1
  store { i64, ptr } %t289, ptr %l136, !tbaa !27
  br label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_2b8cc73a4c7e88bd_6bb5eb1cd2f38021)
  unreachable
bb54:
  %t291 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t291, ptr %l136, !tbaa !27
  br label %bb55
bb55:
  %t292 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t292, ptr %l20, !tbaa !27
  %t293 = load ptr, ptr %l1, !tbaa !29
  %t295 = getelementptr %"compiler/check:Checker", ptr %t293, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !29
  %t297 = load i32, ptr %l2, !tbaa !23
  %t298 = load i64, ptr %l17, !tbaa !24
  %t302 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v1, ptr %t296, i32 %t297, i64 %t298)
  store i1 %t302, ptr %l157
  br label %bb56
bb56:
  %t303 = load i1, ptr %l157, !tbaa !21
  br i1 %t303, label %bb57, label %bb58
bb57:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l158, !tbaa !27
  br label %bb59
bb58:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l158, !tbaa !27
  br label %bb59
bb59:
  %t304 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t304, ptr %l21, !tbaa !27
  store ptr %a0, ptr %l159, !tbaa !29
  %t306 = load ptr, ptr %l1, !tbaa !29
  store ptr %t306, ptr %l160, !tbaa !29
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t311 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t312 = load i32, ptr %l2, !tbaa !23
  %t313 = load i64, ptr %l17, !tbaa !24
  %t318 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v1, ptr %t310, i64 %t311, i32 %t312, i64 0, i64 %t313)
  store i32 %t318, ptr %l166
  br label %bb60
bb60:
  %t319 = load ptr, ptr %l160, !tbaa !29
  %t320 = load i32, ptr %l166, !tbaa !23
  %t321 = call { i64, ptr } @compiler_2fexplain_2eattrsBefore(ptr %v1, ptr %s6, ptr %t319, i32 %t320)
  store { i64, ptr } %t321, ptr %l167
  br label %bb61
bb61:
  %t322 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t322, ptr %l168, !tbaa !27
  %t323 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t323, ptr %l169, !tbaa !27
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t325 = load i32, ptr %l19, !tbaa !23
  %t328 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v1, ptr %s6, ptr %t324, i32 %t325)
  store { i64, ptr } %t328, ptr %l172
  br label %bb62
bb62:
  %t329 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t331 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = add i64 %t330, %t333
  %t335 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = extractvalue { i64, ptr } %t342, 0
  %t345 = add i64 %t341, %t344
  %t346 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = add i64 %t345, %t348
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t352 = add i64 %t349, %t351
  %t353 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t352)
  call void @olang_textcopy(ptr %t353, ptr %t329, i64 %t330)
  %t354 = getelementptr i8, ptr %t353, i64 %t330
  call void @olang_textcopy(ptr %t354, ptr %t332, i64 %t333)
  %t355 = getelementptr i8, ptr %t354, i64 %t333
  call void @olang_textcopy(ptr %t355, ptr %t336, i64 %t337)
  %t356 = getelementptr i8, ptr %t355, i64 %t337
  call void @olang_textcopy(ptr %t356, ptr %t339, i64 %t340)
  %t357 = getelementptr i8, ptr %t356, i64 %t340
  call void @olang_textcopy(ptr %t357, ptr %t343, i64 %t344)
  %t358 = getelementptr i8, ptr %t357, i64 %t344
  call void @olang_textcopy(ptr %t358, ptr %t347, i64 %t348)
  %t359 = getelementptr i8, ptr %t358, i64 %t348
  call void @olang_textcopy(ptr %t359, ptr %t350, i64 %t351)
  %t360 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t361 = insertvalue { i64, ptr } %t360, ptr %t353, 1
  %t363 = extractvalue { i64, ptr } %t361, 0
  %t364 = extractvalue { i64, ptr } %t361, 1
  %t365 = mul i64 %t363, 1
  %t366 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t365)
  call void @llvm.memcpy.p0.p0.i64(ptr %t366, ptr %t364, i64 %t365, i1 false)
  %t367 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t368 = insertvalue { i64, ptr } %t367, ptr %t366, 1
  %t369 = load ptr, ptr %l159, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t369, { i64, ptr } %t368)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s6)
  br label %bb64
bb64:
  %t371 = load i64, ptr %l16, !tbaa !24
  %t373 = add i64 %t371, 1
  store i64 %t373, ptr %l16, !tbaa !24
  br label %bb37
bb65:
  br label %ret
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_b65b7d917c440185_24d12a03c9296209)
  unreachable
bb71:
  br label %bb72
bb72:
  %t375 = load i64, ptr %l4, !tbaa !24
  %t377 = add i64 %t375, 1
  store i64 %t377, ptr %l4, !tbaa !24
  br label %bb1
bb73:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fexplain_2efirstItemEndAll(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l17, !tbaa !24
  store i64 %t31, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l14, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb33
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  store i8 %t57, ptr %l8, !tbaa !22
  %t59 = load i8, ptr %l8, !tbaa !22
  %t61 = icmp eq i8 %t59, 40
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t63 = load i8, ptr %l8, !tbaa !22
  %t65 = icmp eq i8 %t63, 60
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t68 = load i8, ptr %l8, !tbaa !22
  %t70 = icmp eq i8 %t68, 91
  store i1 %t70, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l43, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t77 = load i8, ptr %l8, !tbaa !22
  %t79 = icmp eq i8 %t77, 41
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t81 = load i8, ptr %l8, !tbaa !22
  %t83 = icmp eq i8 %t81, 62
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb25
bb24:
  %t86 = load i8, ptr %l8, !tbaa !22
  %t88 = icmp eq i8 %t86, 93
  store i1 %t88, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr %l1, !tbaa !24
  %t93 = icmp eq i64 %t91, 0
  br i1 %t93, label %bb28, label %bb29
bb27:
  br label %bb31
bb28:
  %t95 = load i64, ptr %l7, !tbaa !24
  store i64 %t95, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t97 = load i64, ptr %l1, !tbaa !24
  %t99 = sub i64 %t97, 1
  store i64 %t99, ptr %l1, !tbaa !24
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t101 = load i64, ptr %l6, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l6, !tbaa !24
  br label %bb7
bb33:
  %t105 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2efnItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca i64
  %l30 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i64
  %l53 = alloca i32
  %l55 = alloca { i64, ptr }
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l69 = alloca i64
  %l84 = alloca { i64, ptr }
  %l85 = alloca ptr
  %l86 = alloca ptr
  %l87 = alloca i64
  %l91 = alloca i32
  %l92 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca ptr
  %l106 = alloca i64
  %l109 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l136 = alloca i64
  %l140 = alloca i64
  %l143 = alloca i64
  %l164 = alloca i64
  %l169 = alloca i64
  %l172 = alloca ptr
  %l176 = alloca i32
  %l182 = alloca i32
  %l183 = alloca ptr
  %l190 = alloca { i64, ptr }
  %l191 = alloca ptr
  %l195 = alloca i32
  %l196 = alloca { i64, ptr }
  %l200 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l20
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l20
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  store ptr %l3, ptr %l21, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l22, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t7, i64 %t8)
  store i64 %t11, ptr %l26
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t15, i64 %t16)
  store ptr %t19, ptr %l30
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l30, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 8
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = load ptr, ptr %l21, !tbaa !29
  %t25 = load ptr, ptr %l22, !tbaa !29
  %t26 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fexplain_2eattrLines(ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %t24, ptr %t25, i64 %t26, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb4
bb4:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t28)
  store i64 %t30, ptr %l34
  br label %bb5
bb5:
  %t31 = load i64, ptr %l34, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t35, i64 %t31)
  store i64 %t39, ptr %l38
  br label %bb6
bb6:
  %t40 = load i64, ptr %l38, !tbaa !24
  %t41 = icmp eq i64 %t40, 0
  br i1 %t41, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t47 = load i64, ptr %l2, !tbaa !24
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t46, i64 %t47, i32 0)
  store i64 %t50, ptr %l43
  br label %bb9
bb8:
  br label %bb21
bb9:
  %t51 = load i64, ptr %l43, !tbaa !24
  store i64 %t51, ptr %l5, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t52, i64 %t53)
  store i64 %t56, ptr %l46
  br label %bb10
bb10:
  %t57 = load i64, ptr %l46, !tbaa !24
  store i64 %t57, ptr %l6, !tbaa !24
  store ptr %l3, ptr %l47, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l48, !tbaa !29
  %t59 = load i64, ptr %l2, !tbaa !24
  store i64 %t59, ptr %l49, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t63, i64 %t64)
  store i32 %t67, ptr %l53
  br label %bb11
bb11:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load ptr, ptr %l48, !tbaa !29
  %t70 = load i64, ptr %l49, !tbaa !24
  %t71 = load i32, ptr %l53, !tbaa !23
  %t73 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %s1, ptr %t69, i64 %t70, i32 %t71, i64 %t68)
  store { i64, ptr } %t73, ptr %l55
  br label %bb12
bb12:
  %t74 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t75, i64 %t76)
  %t81 = getelementptr i8, ptr %t80, i64 %t76
  call void @olang_textcopy(ptr %t81, ptr %t77, i64 %t78)
  %t82 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = extractvalue { i64, ptr } %t83, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load ptr, ptr %l47, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %t91, { i64, ptr } %t90)
  br label %bb13
bb13:
  store ptr %l3, ptr %l58, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l59, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t98 = load i64, ptr %l2, !tbaa !24
  %t101 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t97, i64 %t98)
  store ptr %t101, ptr %l63
  br label %bb14
bb14:
  %t102 = load ptr, ptr %l63, !tbaa !29
  %t104 = getelementptr %"compiler/ast:Func", ptr %t102, i32 0, i32 3
  %t105 = load ptr, ptr %t104, !tbaa !29
  store ptr %t105, ptr %l65, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l2, !tbaa !24
  %t113 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t109, i64 %t110)
  store i64 %t113, ptr %l69
  br label %bb15
bb15:
  %t114 = load ptr, ptr %l58, !tbaa !29
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t116 = load ptr, ptr %l65, !tbaa !29
  %t117 = load i64, ptr %l69, !tbaa !24
  call void @compiler_2fexplain_2econtract(ptr %s0, ptr %v0, ptr %v0, ptr %s1, ptr %t114, ptr %t115, ptr %t116, i64 %t117, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) })
  br label %bb16
bb16:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t120 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2eobligations(ptr %s0, ptr %v0, ptr %v1, ptr %s1, ptr %l3, ptr %t118, ptr %t119, i64 %t120, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb17
bb17:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t127 = load i64, ptr %l2, !tbaa !24
  %t128 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2enoValue(ptr %s0, ptr %v0, ptr %v1, ptr %s1, ptr %l3, ptr %t125, ptr %t126, i64 %t127, i64 %t128, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) })
  br label %bb18
bb18:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l2, !tbaa !24
  %t136 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %s0, ptr %v0, ptr %s1, ptr %l3, ptr %t134, i64 %t135, i64 %t136, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb19
bb19:
  %t142 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t142, ptr %l84
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t143 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
bb21:
  store ptr %l3, ptr %l85, !tbaa !29
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l86, !tbaa !29
  %t145 = load i64, ptr %l2, !tbaa !24
  store i64 %t145, ptr %l87, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t150 = load i64, ptr %l2, !tbaa !24
  %t153 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t149, i64 %t150)
  store i32 %t153, ptr %l91
  br label %bb22
bb22:
  %t154 = load ptr, ptr %l86, !tbaa !29
  %t155 = load i64, ptr %l87, !tbaa !24
  %t156 = load i32, ptr %l91, !tbaa !23
  %t157 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %s0, ptr %t154, i64 %t155, i32 %t156, i64 -1)
  store { i64, ptr } %t157, ptr %l92
  br label %bb23
bb23:
  %t158 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t164 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t163)
  call void @olang_textcopy(ptr %t164, ptr %t159, i64 %t160)
  %t165 = getelementptr i8, ptr %t164, i64 %t160
  call void @olang_textcopy(ptr %t165, ptr %t161, i64 %t162)
  %t166 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t167 = insertvalue { i64, ptr } %t166, ptr %t164, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } %t167, 1
  %t171 = mul i64 %t169, 1
  %t172 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t171)
  call void @llvm.memcpy.p0.p0.i64(ptr %t172, ptr %t170, i64 %t171, i1 false)
  %t173 = insertvalue { i64, ptr } undef, i64 %t169, 0
  %t174 = insertvalue { i64, ptr } %t173, ptr %t172, 1
  %t175 = load ptr, ptr %l85, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t175, { i64, ptr } %t174)
  br label %bb24
bb24:
  store ptr %l3, ptr %l95, !tbaa !29
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l96, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t182 = load i64, ptr %l2, !tbaa !24
  %t185 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t181, i64 %t182)
  store ptr %t185, ptr %l100
  br label %bb25
bb25:
  %t186 = load ptr, ptr %l100, !tbaa !29
  %t188 = getelementptr %"compiler/ast:Func", ptr %t186, i32 0, i32 3
  %t189 = load ptr, ptr %t188, !tbaa !29
  store ptr %t189, ptr %l102, !tbaa !29
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/check:Checker", ptr %t190, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !29
  %t194 = load i64, ptr %l2, !tbaa !24
  %t197 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t193, i64 %t194)
  store i64 %t197, ptr %l106
  br label %bb26
bb26:
  %t198 = load ptr, ptr %l95, !tbaa !29
  %t199 = load ptr, ptr %l96, !tbaa !29
  %t200 = load ptr, ptr %l102, !tbaa !29
  %t201 = load i64, ptr %l106, !tbaa !24
  call void @compiler_2fexplain_2econtract(ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %t198, ptr %t199, ptr %t200, i64 %t201, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) })
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr %l2, !tbaa !24
  %t206 = call { i64, ptr } @compiler_2fneeds_2eLines(ptr %v0, ptr %s4, ptr %t202, i64 %t203)
  store { i64, ptr } %t206, ptr %l109
  br label %bb28
bb28:
  %t207 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 0
  %t209 = extractvalue { i64, ptr } %t207, 1
  %t210 = mul i64 %t208, 16
  %t211 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t210)
  call void @llvm.memcpy.p0.p0.i64(ptr %t211, ptr %t209, i64 %t210, i1 false)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  store { i64, ptr } %t213, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t215 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t215, 0
  store i64 %t217, ptr %l9, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t219 = load i64, ptr %l8, !tbaa !24
  %t220 = load i64, ptr %l9, !tbaa !24
  %t223 = icmp slt i64 %t219, %t220
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t227 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t227, ptr %l117, !tbaa !27
  %t228 = load i64, ptr %l8, !tbaa !24
  %t230 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !27
  %t232 = getelementptr { i64, ptr }, ptr %t231, i64 %t228
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !37
  %t236 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t239 = extractvalue { i64, ptr } %t233, 1
  %t240 = extractvalue { i64, ptr } %t233, 0
  %t241 = add i64 %t237, %t240
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t244 = add i64 %t241, %t243
  %t245 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t244)
  call void @olang_textcopy(ptr %t245, ptr %t236, i64 %t237)
  %t246 = getelementptr i8, ptr %t245, i64 %t237
  call void @olang_textcopy(ptr %t246, ptr %t239, i64 %t240)
  %t247 = getelementptr i8, ptr %t246, i64 %t240
  call void @olang_textcopy(ptr %t247, ptr %t242, i64 %t243)
  %t248 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t249 = insertvalue { i64, ptr } %t248, ptr %t245, 1
  %t251 = extractvalue { i64, ptr } %t249, 0
  %t252 = extractvalue { i64, ptr } %t249, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l3, { i64, ptr } %t256)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s5)
  br label %bb34
bb34:
  %t259 = load i64, ptr %l8, !tbaa !24
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l8, !tbaa !24
  br label %bb29
bb35:
  call void @__olang_scope_close(ptr %s4)
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l1, !tbaa !29
  %t265 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fexplain_2enoValue(ptr %s0, ptr %v0, ptr %v1, ptr %s0, ptr %l3, ptr %t263, ptr %t264, i64 %t265, i64 -1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) })
  br label %bb36
bb36:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/check:Checker", ptr %t270, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t274 = load i64, ptr %l2, !tbaa !24
  %t277 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t273, i64 %t274)
  store ptr %t277, ptr %l133
  br label %bb37
bb37:
  %t278 = load ptr, ptr %l133, !tbaa !29
  store ptr %t278, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/check:Checker", ptr %t279, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !29
  %t284 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %t282)
  store i64 %t284, ptr %l136
  br label %bb38
bb38:
  %t285 = load i64, ptr %l136, !tbaa !24
  store i64 %t285, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t286 = load i64, ptr %l13, !tbaa !24
  %t287 = load i64, ptr %l12, !tbaa !24
  %t290 = icmp sgt i64 %t286, %t287
  br i1 %t290, label %bb39, label %bb40
bb39:
  %t292 = load i64, ptr %l14, !tbaa !24
  %t294 = icmp sgt i64 %t292, 0
  br i1 %t294, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb44
bb41:
  %t296 = load i64, ptr %l13, !tbaa !24
  %t297 = load i64, ptr %l12, !tbaa !24
  %t300 = sub i64 %t296, %t297
  %t301 = load i64, ptr %l14, !tbaa !24
  %t304 = add i64 %t300, %t301
  %t306 = sub i64 %t304, 1
  %t307 = load i64, ptr %l14, !tbaa !24
  %t310 = sdiv i64 %t306, %t307
  store i64 %t310, ptr %l143, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb43
bb43:
  %t312 = load i64, ptr %l143, !tbaa !24
  store i64 %t312, ptr %l140, !tbaa !24
  br label %bb44
bb44:
  %t313 = load i64, ptr %l140, !tbaa !24
  store i64 %t313, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb45
bb45:
  store %olang.scope zeroinitializer, ptr %s9
  %t314 = load i64, ptr %l16, !tbaa !24
  %t315 = load i64, ptr %l15, !tbaa !24
  %t318 = icmp slt i64 %t314, %t315
  %t320 = xor i1 %t318, true
  br i1 %t320, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s9)
  br label %bb67
bb47:
  br label %bb48
bb48:
  %t322 = load i64, ptr %l12, !tbaa !24
  %t323 = load i64, ptr %l16, !tbaa !24
  %t324 = load i64, ptr %l14, !tbaa !24
  %t327 = mul i64 %t323, %t324
  %t330 = add i64 %t322, %t327
  store i64 %t330, ptr %l17, !tbaa !24
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/check:Checker", ptr %t332, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !29
  %t336 = load i64, ptr %l17, !tbaa !24
  %t339 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t335, i64 %t336)
  store i64 %t339, ptr %l164
  br label %bb49
bb49:
  %t340 = load i64, ptr %l2, !tbaa !24
  %t341 = load i64, ptr %l164, !tbaa !24
  %t343 = icmp ne i64 %t341, %t340
  br i1 %t343, label %bb50, label %bb51
bb50:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb51:
  br label %bb52
bb52:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i64, ptr %l17, !tbaa !24
  %t349 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t345, i64 %t346)
  store i64 %t349, ptr %l169
  br label %bb53
bb53:
  %t350 = load i64, ptr %l169, !tbaa !24
  store i64 %t350, ptr %l18, !tbaa !24
  %t351 = load i64, ptr %l18, !tbaa !24
  %t353 = icmp slt i64 %t351, 0
  br i1 %t353, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb55:
  br label %bb56
bb56:
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l172, !tbaa !29
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/check:Checker", ptr %t356, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !29
  %t360 = load i64, ptr %l17, !tbaa !24
  %t363 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t359, i64 %t360)
  store i32 %t363, ptr %l176
  br label %bb57
bb57:
  %t364 = load ptr, ptr %l11, !tbaa !29
  %t366 = getelementptr %"compiler/ast:Func", ptr %t364, i32 0, i32 1
  %t367 = load ptr, ptr %t366, !tbaa !29
  %t368 = load ptr, ptr %l11, !tbaa !29
  %t370 = getelementptr %"compiler/ast:Func", ptr %t368, i32 0, i32 3
  %t371 = load ptr, ptr %t370, !tbaa !29
  %t373 = getelementptr %"compiler/ast:Sig", ptr %t371, i32 0, i32 0
  %t374 = load { i64, ptr }, ptr %t373, !tbaa !27
  %t375 = load ptr, ptr %l172, !tbaa !29
  %t376 = load i32, ptr %l176, !tbaa !23
  %t379 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t375, i32 %t376, ptr %t367, { i64, ptr } %t374)
  store i32 %t379, ptr %l182
  br label %bb58
bb58:
  %t380 = load i32, ptr %l182, !tbaa !23
  store i32 %t380, ptr %l19, !tbaa !23
  store ptr %l3, ptr %l183, !tbaa !29
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = getelementptr %"compiler/check:Checker", ptr %t381, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !29
  %t386 = getelementptr %"compiler/generic:Program", ptr %t384, i32 0, i32 0
  %t387 = load ptr, ptr %t386, !tbaa !29
  %t389 = getelementptr %"compiler/load:Loader", ptr %t387, i32 0, i32 3
  %t390 = load ptr, ptr %t389, !tbaa !29
  %t391 = load ptr, ptr %l11, !tbaa !29
  %t393 = getelementptr %"compiler/ast:Func", ptr %t391, i32 0, i32 2
  %t394 = load i32, ptr %t393, !tbaa !23
  %t397 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s9, ptr %t390, i32 %t394)
  store { i64, ptr } %t397, ptr %l190
  br label %bb59
bb59:
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l191, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t403 = load i64, ptr %l17, !tbaa !24
  %t406 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t402, i64 %t403)
  store i32 %t406, ptr %l195
  br label %bb60
bb60:
  %t407 = load ptr, ptr %l191, !tbaa !29
  %t408 = load i32, ptr %l195, !tbaa !23
  %t409 = call { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %s9, ptr %t407, i32 %t408)
  store { i64, ptr } %t409, ptr %l196
  br label %bb61
bb61:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t411 = load i32, ptr %l19, !tbaa !23
  %t412 = load i64, ptr %l18, !tbaa !24
  %t416 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s9, ptr %t410, i32 %t411, i64 %t412)
  store { i64, ptr } %t416, ptr %l200
  br label %bb62
bb62:
  %t417 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t418 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t419 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t419, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = add i64 %t418, %t421
  %t423 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t423, 1
  %t425 = extractvalue { i64, ptr } %t423, 0
  %t426 = add i64 %t422, %t425
  %t427 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t428 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t429 = add i64 %t426, %t428
  %t430 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t431 = extractvalue { i64, ptr } %t430, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = add i64 %t429, %t432
  %t434 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t436 = add i64 %t433, %t435
  %t437 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t436)
  call void @olang_textcopy(ptr %t437, ptr %t417, i64 %t418)
  %t438 = getelementptr i8, ptr %t437, i64 %t418
  call void @olang_textcopy(ptr %t438, ptr %t420, i64 %t421)
  %t439 = getelementptr i8, ptr %t438, i64 %t421
  call void @olang_textcopy(ptr %t439, ptr %t424, i64 %t425)
  %t440 = getelementptr i8, ptr %t439, i64 %t425
  call void @olang_textcopy(ptr %t440, ptr %t427, i64 %t428)
  %t441 = getelementptr i8, ptr %t440, i64 %t428
  call void @olang_textcopy(ptr %t441, ptr %t431, i64 %t432)
  %t442 = getelementptr i8, ptr %t441, i64 %t432
  call void @olang_textcopy(ptr %t442, ptr %t434, i64 %t435)
  %t443 = insertvalue { i64, ptr } undef, i64 %t436, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t437, 1
  %t446 = extractvalue { i64, ptr } %t444, 0
  %t447 = extractvalue { i64, ptr } %t444, 1
  %t448 = mul i64 %t446, 1
  %t449 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t448)
  call void @llvm.memcpy.p0.p0.i64(ptr %t449, ptr %t447, i64 %t448, i1 false)
  %t450 = insertvalue { i64, ptr } undef, i64 %t446, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  %t452 = load ptr, ptr %l183, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t452, { i64, ptr } %t451)
  br label %bb63
bb63:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load ptr, ptr %l1, !tbaa !29
  %t456 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2eobligations(ptr %s0, ptr %v0, ptr %v1, ptr %s9, ptr %l3, ptr %t454, ptr %t455, i64 %t456, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d31, i32 0, i32 1) })
  br label %bb64
bb64:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load i64, ptr %l2, !tbaa !24
  %t463 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %s0, ptr %v0, ptr %s9, ptr %l3, ptr %t461, i64 %t462, i64 %t463, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d32, i32 0, i32 1) })
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s9)
  br label %bb66
bb66:
  %t468 = load i64, ptr %l16, !tbaa !24
  %t470 = add i64 %t468, 1
  store i64 %t470, ptr %l16, !tbaa !24
  br label %bb45
bb67:
  %t473 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t473, ptr %l214
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t474 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t474, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fexplain_2efnNamed(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/names:Entry"
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i32
  %l50 = alloca ptr
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l60 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca i32
  %l68 = alloca i64
  %l72 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca i64
  %l81 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca { i64, ptr }
  %l86 = alloca i64
  %l87 = alloca i64
  %l93 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca i64
  %l99 = alloca i32
  %l105 = alloca ptr
  %l108 = alloca i64
  %l110 = alloca i64
  %l115 = alloca %"compiler/names:Entry"
  %l119 = alloca i1
  %l126 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l3, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) })
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l19
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb2, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l18
  br label %bb1
bb1:
  %t19 = load i64, ptr %l18, !tbaa !24
  store i64 %t19, ptr %l16, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l16, !tbaa !24
  br label %bb4
bb4:
  %t20 = load i64, ptr %l16, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l22, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l23, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l24, !tbaa !27
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l25, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l26, !tbaa !24
  %t31 = icmp sge i64 0, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  br label %bb50
bb7:
  %t33 = load i64, ptr %l25, !tbaa !24
  %t34 = icmp sle i64 0, %t33
  br i1 %t34, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_83191eb44b7384_f52b74cb91a30b30)
  unreachable
bb9:
  %t36 = load i64, ptr %l25, !tbaa !24
  %t37 = load i64, ptr %l26, !tbaa !24
  %t38 = icmp sle i64 %t36, %t37
  br i1 %t38, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_83191eb44b7384_f52b74cb91a30b30)
  unreachable
bb11:
  %t40 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l25, !tbaa !24
  %t43 = getelementptr i8, ptr %t41, i64 0
  %t44 = sub i64 %t42, 0
  %t45 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t46 = insertvalue { i64, ptr } %t45, ptr %t43, 1
  %t47 = load ptr, ptr %l22, !tbaa !29
  %t48 = load i64, ptr %l23, !tbaa !24
  %t50 = call i32 @compiler_2fexplain_2etypeNamed(ptr %v0, ptr %v1, ptr %t47, i64 %t48, { i64, ptr } %t46)
  store i32 %t50, ptr %l31
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_83191eb44b7384_f52b74cb91a30b30)
  unreachable
bb13:
  %t51 = load i32, ptr %l31, !tbaa !23
  store i32 %t51, ptr %l5, !tbaa !23
  %t52 = load ptr, ptr %l3, !tbaa !29
  store ptr %t52, ptr %l32, !tbaa !29
  %t53 = ptrtoint ptr %v0 to i64
  store i64 %t53, ptr %l33, !tbaa !24
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t54, label %bb14, label %bb15
bb14:
  %t56 = load ptr, ptr %l32, !tbaa !29
  %t57 = call ptr @__olang_region_or(ptr %t56, ptr %v0)
  %t58 = ptrtoint ptr %t57 to i64
  store i64 %t58, ptr %l33, !tbaa !24
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l3, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t60, ptr %l36, !tbaa !27
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l38, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t64, 0
  store i64 %t67, ptr %l41, !tbaa !24
  %t68 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  store i64 %t69, ptr %l42, !tbaa !24
  %t70 = load i64, ptr %l38, !tbaa !24
  %t71 = icmp sge i64 %t70, 0
  br i1 %t71, label %bb16, label %bb17
bb16:
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = load i64, ptr %l41, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_b6495ab5ccd815f1_8b49adc496fcf80d)
  unreachable
bb18:
  %t77 = load i64, ptr %l41, !tbaa !24
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 %t77, %t78
  br i1 %t79, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_b6495ab5ccd815f1_8b49adc496fcf80d)
  unreachable
bb20:
  %t81 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = load i64, ptr %l38, !tbaa !24
  %t84 = load i64, ptr %l41, !tbaa !24
  %t85 = getelementptr i8, ptr %t82, i64 %t83
  %t86 = sub i64 %t84, %t83
  %t87 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t85, 1
  %t89 = load i64, ptr %l33
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = load ptr, ptr %l35, !tbaa !29
  %t93 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t90, ptr %v1, ptr %t91, { i64, ptr } %t88)
  store i32 %t93, ptr %l47
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_b6495ab5ccd815f1_8b49adc496fcf80d)
  unreachable
bb22:
  %t94 = load i32, ptr %l47, !tbaa !23
  store i32 %t94, ptr %l6, !tbaa !23
  %t95 = load i32, ptr %l5, !tbaa !23
  %t97 = icmp slt i32 %t95, 0
  br i1 %t97, label %bb23, label %bb24
bb23:
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l50, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  store i64 %t100, ptr %l51, !tbaa !24
  %t101 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t101, ptr %l52, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  store i64 %t102, ptr %l53, !tbaa !24
  %t103 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t104 = extractvalue { i64, ptr } %t103, 0
  store i64 %t104, ptr %l54, !tbaa !24
  %t105 = icmp sge i64 0, 0
  br i1 %t105, label %bb25, label %bb26
bb24:
  br label %bb32
bb25:
  %t107 = load i64, ptr %l53, !tbaa !24
  %t108 = icmp sle i64 0, %t107
  br i1 %t108, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f77a02592a0a9372_4ac4ccf0828b43ae)
  unreachable
bb27:
  %t110 = load i64, ptr %l53, !tbaa !24
  %t111 = load i64, ptr %l54, !tbaa !24
  %t112 = icmp sle i64 %t110, %t111
  br i1 %t112, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f77a02592a0a9372_4ac4ccf0828b43ae)
  unreachable
bb29:
  %t114 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = load i64, ptr %l53, !tbaa !24
  %t117 = getelementptr i8, ptr %t115, i64 0
  %t118 = sub i64 %t116, 0
  %t119 = insertvalue { i64, ptr } undef, i64 %t118, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t117, 1
  %t121 = load i32, ptr %l6, !tbaa !23
  %t122 = load ptr, ptr %l50, !tbaa !29
  %t123 = load i64, ptr %l51, !tbaa !24
  %t126 = call i64 @compiler_2fexplain_2ewrittenMethod(ptr %v0, ptr %v1, ptr %t122, i64 %t123, { i64, ptr } %t120, i32 %t121)
  store i64 %t126, ptr %l60
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_f77a02592a0a9372_4ac4ccf0828b43ae)
  unreachable
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t127 = load i64, ptr %l60, !tbaa !24
  store i64 %t127, ptr %rv
  br label %ret
bb32:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  store ptr %t131, ptr %l62, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t136 = load i32, ptr %l5, !tbaa !23
  %t139 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t135, i32 %t136)
  store i32 %t139, ptr %l66
  br label %bb33
bb33:
  %t140 = load i32, ptr %l6, !tbaa !23
  %t141 = load ptr, ptr %l62, !tbaa !29
  %t142 = load i32, ptr %l66, !tbaa !23
  %t144 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t141, i32 %t142, i32 %t140)
  store i64 %t144, ptr %l68
  br label %bb34
bb34:
  %t145 = load i64, ptr %l68, !tbaa !24
  store i64 %t145, ptr %l7, !tbaa !24
  %t146 = load i64, ptr %l7, !tbaa !24
  %t148 = icmp slt i64 %t146, 0
  br i1 %t148, label %bb35, label %bb36
bb35:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  store ptr %t153, ptr %l72, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/check:Checker", ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t158 = load i32, ptr %l5, !tbaa !23
  %t161 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t157, i32 %t158)
  store i32 %t161, ptr %l76
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t162 = load i32, ptr %l6, !tbaa !23
  %t163 = load ptr, ptr %l72, !tbaa !29
  %t164 = load i32, ptr %l76, !tbaa !23
  %t166 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t163, i32 %t164, i32 %t162, i1 true)
  store i64 %t166, ptr %l78
  br label %bb38
bb38:
  %t167 = load i64, ptr %l78, !tbaa !24
  store i64 %t167, ptr %l7, !tbaa !24
  br label %bb39
bb39:
  %t168 = load i64, ptr %l7, !tbaa !24
  %t170 = icmp sge i64 %t168, 0
  br i1 %t170, label %bb40, label %bb41
bb40:
  %t172 = load i64, ptr %l7, !tbaa !24
  store i64 %t172, ptr %l81, !tbaa !24
  br label %bb49
bb41:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l83, !tbaa !29
  %t175 = load i64, ptr %l1, !tbaa !24
  store i64 %t175, ptr %l84, !tbaa !24
  %t176 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t176, ptr %l85, !tbaa !27
  %t177 = load i64, ptr %l4, !tbaa !24
  store i64 %t177, ptr %l86, !tbaa !24
  %t178 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t179 = extractvalue { i64, ptr } %t178, 0
  store i64 %t179, ptr %l87, !tbaa !24
  %t180 = icmp sge i64 0, 0
  br i1 %t180, label %bb42, label %bb43
bb42:
  %t182 = load i64, ptr %l86, !tbaa !24
  %t183 = icmp sle i64 0, %t182
  br i1 %t183, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_85b05f6e7a1e78ef_648f77bc98c82cab)
  unreachable
bb44:
  %t185 = load i64, ptr %l86, !tbaa !24
  %t186 = load i64, ptr %l87, !tbaa !24
  %t187 = icmp sle i64 %t185, %t186
  br i1 %t187, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_85b05f6e7a1e78ef_648f77bc98c82cab)
  unreachable
bb46:
  %t189 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = load i64, ptr %l86, !tbaa !24
  %t192 = getelementptr i8, ptr %t190, i64 0
  %t193 = sub i64 %t191, 0
  %t194 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t192, 1
  %t196 = load i32, ptr %l6, !tbaa !23
  %t197 = load ptr, ptr %l83, !tbaa !29
  %t198 = load i64, ptr %l84, !tbaa !24
  %t201 = call i64 @compiler_2fexplain_2ewrittenMethod(ptr %v0, ptr %v1, ptr %t197, i64 %t198, { i64, ptr } %t195, i32 %t196)
  store i64 %t201, ptr %l93
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_85b05f6e7a1e78ef_648f77bc98c82cab)
  unreachable
bb48:
  %t202 = load i64, ptr %l93, !tbaa !24
  store i64 %t202, ptr %l81, !tbaa !24
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s0)
  %t203 = load i64, ptr %l81, !tbaa !24
  store i64 %t203, ptr %rv
  br label %ret
bb50:
  %t204 = load ptr, ptr %l3, !tbaa !29
  store ptr %t204, ptr %l94, !tbaa !29
  %t205 = ptrtoint ptr %v0 to i64
  store i64 %t205, ptr %l95, !tbaa !24
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t206, label %bb51, label %bb52
bb51:
  %t208 = load ptr, ptr %l94, !tbaa !29
  %t209 = call ptr @__olang_region_or(ptr %t208, ptr %v0)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l95, !tbaa !24
  br label %bb52
bb52:
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t212 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t213 = load i64, ptr %l95
  %t214 = inttoptr i64 %t213 to ptr
  %t217 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %t214, ptr %v1, ptr %t211, { i64, ptr } %t212)
  store i32 %t217, ptr %l99
  br label %bb53
bb53:
  %t218 = load i32, ptr %l99, !tbaa !23
  store i32 %t218, ptr %l8, !tbaa !23
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/check:Checker", ptr %t219, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !29
  %t224 = getelementptr %"compiler/generic:Program", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/names:Resolver", ptr %t225, i32 0, i32 1
  %t228 = load i64, ptr %l1, !tbaa !24
  %t231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t227, i64 %t228)
  store ptr %t231, ptr %l105
  br label %bb54
bb54:
  %t232 = load ptr, ptr %l105, !tbaa !29
  %t234 = getelementptr %"compiler/names:Table", ptr %t232, i32 0, i32 0
  store ptr %t234, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb55
bb55:
  %t236 = load i64, ptr %l10, !tbaa !24
  store i64 %t236, ptr %l108, !tbaa !24
  %t237 = load ptr, ptr %l9, !tbaa !29
  %t239 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t237)
  store i64 %t239, ptr %l110
  br label %bb56
bb56:
  %t240 = load i64, ptr %l108, !tbaa !24
  %t241 = load i64, ptr %l110, !tbaa !24
  %t242 = icmp slt i64 %t240, %t241
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb57, label %bb58
bb57:
  br label %bb69
bb58:
  br label %bb59
bb59:
  %t246 = load ptr, ptr %l9, !tbaa !29
  %t247 = load i64, ptr %l10, !tbaa !24
  %t250 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t246, i64 %t247)
  store %"compiler/names:Entry" %t250, ptr %l115
  br label %bb60
bb60:
  %t251 = load %"compiler/names:Entry", ptr %l115
  store %"compiler/names:Entry" %t251, ptr %l11
  %t252 = getelementptr %"compiler/names:Entry", ptr %l11, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t254 = load i32, ptr %l8, !tbaa !23
  %t257 = icmp eq i32 %t253, %t254
  br i1 %t257, label %bb61, label %bb62
bb61:
  %t259 = getelementptr %"compiler/names:Entry", ptr %l11, i32 0, i32 2
  %t260 = load i32, ptr %t259, !range !{i32 0, i32 9}
  %t262 = trunc i64 3 to i32
  %t263 = icmp eq i32 %t260, %t262
  store i1 %t263, ptr %l119, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb63
bb63:
  %t265 = load i1, ptr %l119, !tbaa !21
  br i1 %t265, label %bb64, label %bb65
bb64:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t270 = load i64, ptr %l1, !tbaa !24
  %t271 = load i32, ptr %l8, !tbaa !23
  %t275 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %t269, i64 %t270, i32 %t271)
  store i64 %t275, ptr %l126
  br label %bb66
bb65:
  br label %bb67
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t276 = load i64, ptr %l126, !tbaa !24
  store i64 %t276, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t277 = load i64, ptr %l10, !tbaa !24
  %t279 = add i64 %t277, 1
  store i64 %t279, ptr %l10, !tbaa !24
  br label %bb55
bb69:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2elisted(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l19 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca i64
  %l29 = alloca %"compiler/source:Span"
  %l31 = alloca i64
  %l32 = alloca i64
  %l40 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 %t18
  %t23 = load ptr, ptr %t22, !tbaa !39
  store ptr %t23, ptr %l6, !tbaa !29
  %t26 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l2)
  store i64 %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = load i64, ptr %l19, !tbaa !24
  %t28 = icmp sgt i64 %t27, 0
  br i1 %t28, label %bb7, label %bb8
bb7:
  store %olang.scope zeroinitializer, ptr %s3
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d34, i32 0, i32 1) })
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb10
bb10:
  store ptr %l2, ptr %l22, !tbaa !29
  store { i64, ptr } %a0, ptr %l23, !tbaa !27
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t32)
  store %"compiler/source:Span" %t34, ptr %l25
  br label %bb11
bb11:
  %t35 = getelementptr %"compiler/source:Span", ptr %l25, i32 0, i32 0
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store i64 %t38, ptr %l27, !tbaa !24
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t41 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t39)
  store %"compiler/source:Span" %t41, ptr %l29
  br label %bb12
bb12:
  %t42 = getelementptr %"compiler/source:Span", ptr %l29, i32 0, i32 1
  %t43 = load i32, ptr %t42, !tbaa !23
  %t45 = sext i32 %t43 to i64
  store i64 %t45, ptr %l31, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l32, !tbaa !24
  %t48 = load i64, ptr %l27, !tbaa !24
  %t49 = icmp sge i64 %t48, 0
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l27, !tbaa !24
  %t52 = load i64, ptr %l31, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_24a71f1628ab63b4_59f385be22d57b28)
  unreachable
bb15:
  %t55 = load i64, ptr %l31, !tbaa !24
  %t56 = load i64, ptr %l32, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_24a71f1628ab63b4_59f385be22d57b28)
  unreachable
bb17:
  %t59 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l27, !tbaa !24
  %t62 = load i64, ptr %l31, !tbaa !24
  %t63 = getelementptr i8, ptr %t60, i64 %t61
  %t64 = sub i64 %t62, %t61
  %t65 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  %t67 = load ptr, ptr %l22, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t67, { i64, ptr } %t66)
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_24a71f1628ab63b4_59f385be22d57b28)
  unreachable
bb19:
  br label %bb20
bb20:
  %t69 = load i64, ptr %l4, !tbaa !24
  %t71 = add i64 %t69, 1
  store i64 %t71, ptr %l4, !tbaa !24
  br label %bb2
bb21:
  %t74 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t74, ptr %l40
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t75, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca { i64, ptr }
  %l37 = alloca i64
  %l40 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l52 = alloca ptr
  %l53 = alloca i32
  %l56 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l4
  %t3 = load ptr, ptr %l2, !tbaa !29
  %t5 = icmp eq ptr %t3, null
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Param", ptr %t9, i32 0, i32 1
  %t12 = load i32, ptr %t11, !tbaa !23
  %t14 = sext i32 %t12 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t14)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l7, !tbaa !24
  br label %bb8
bb7:
  br label %bb15
bb8:
  %t29 = load i64, ptr %l6, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t37, ptr %l27, !tbaa !27
  %t38 = load i64, ptr %l6, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  %t47 = getelementptr %"compiler/ast:Param", ptr %t43, i32 0, i32 1
  %t48 = load i32, ptr %t47, !tbaa !23
  %t50 = sext i32 %t48 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l4, i64 %t50)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t53 = load i64, ptr %l6, !tbaa !24
  %t55 = add i64 %t53, 1
  store i64 %t55, ptr %l6, !tbaa !24
  br label %bb8
bb14:
  br label %bb15
bb15:
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l4)
  store i64 %t58, ptr %l37
  br label %bb16
bb16:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  store ptr %t64, ptr %l40, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l1, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l45
  br label %bb17
bb17:
  %t75 = load ptr, ptr %l40, !tbaa !29
  %t76 = load i32, ptr %l45, !tbaa !23
  %t77 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t75, i32 %t76)
  store { i64, ptr } %t77, ptr %l46
  br label %bb18
bb18:
  %t78 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t79 = extractvalue { i64, ptr } %t78, 0
  %t80 = load i64, ptr %l37, !tbaa !24
  %t82 = icmp ne i64 %t80, %t79
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load i32, ptr %l1, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t84, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 2
  store ptr %t91, ptr %l52, !tbaa !29
  %t92 = load i32, ptr %l1, !tbaa !23
  store i32 %t92, ptr %l53, !tbaa !23
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  store ptr %t98, ptr %l56, !tbaa !29
  %t100 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t100, ptr %l58
  br label %bb22
bb22:
  %t101 = load ptr, ptr %l56, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t103 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %s0, ptr %t101, { i64, ptr } %t102)
  store i64 %t103, ptr %l59
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l52, !tbaa !29
  %t105 = load i32, ptr %l53, !tbaa !23
  %t106 = load i64, ptr %l59, !tbaa !24
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %t104, i32 %t105, i64 %t106)
  store i32 %t107, ptr %l60
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t108 = load i32, ptr %l60, !tbaa !23
  store i32 %t108, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fexplain_2eobligations(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s2
  %t6 = load i64, ptr %l3, !tbaa !24
  %t9 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 3
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t20 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v2, ptr %v1, ptr %s2, ptr %a2, i64 %t6, ptr %t16)
  store { i64, ptr } %t20, ptr %l17
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  %t23 = extractvalue { i64, ptr } %t21, 1
  %t24 = mul i64 %t22, 16
  %t25 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s3)
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t41, ptr %l25, !tbaa !27
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %t45, i64 %t42
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !37
  %t53 = extractvalue { i64, ptr } %a4, 1
  %t54 = extractvalue { i64, ptr } %a4, 0
  %t55 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t59 = extractvalue { i64, ptr } %t47, 1
  %t60 = extractvalue { i64, ptr } %t47, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t53, i64 %t54)
  %t66 = getelementptr i8, ptr %t65, i64 %t54
  call void @olang_textcopy(ptr %t66, ptr %t55, i64 %t56)
  %t67 = getelementptr i8, ptr %t66, i64 %t56
  call void @olang_textcopy(ptr %t67, ptr %t59, i64 %t60)
  %t68 = getelementptr i8, ptr %t67, i64 %t60
  call void @olang_textcopy(ptr %t68, ptr %t62, i64 %t63)
  %t69 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t65, 1
  %t72 = extractvalue { i64, ptr } %t70, 0
  %t73 = extractvalue { i64, ptr } %t70, 1
  %t74 = mul i64 %t72, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t74)
  call void @llvm.memcpy.p0.p0.i64(ptr %t75, ptr %t73, i64 %t74, i1 false)
  %t76 = insertvalue { i64, ptr } undef, i64 %t72, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %a0, { i64, ptr } %t77)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb10
bb10:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb5
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fexplain_2ereceiverVars(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l6 = alloca ptr
  %l13 = alloca ptr
  %l16 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l29 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i32
  %l48 = alloca ptr
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Func", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = getelementptr %"compiler/generic:Program", ptr %t20, i32 0, i32 2
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l16, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t32, i64 %t33)
  store i32 %t36, ptr %l20
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l16, !tbaa !29
  %t38 = load i32, ptr %l20, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t39, ptr %l21
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l13, !tbaa !29
  %t41 = load i32, ptr %l21, !tbaa !23
  %t42 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t40, i32 %t41)
  store { i64, ptr } %t42, ptr %l22
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %l23, !tbaa !27
  %t44 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i32, ptr %t45, i64 0
  %t47 = load i32, ptr %t46, !tbaa !33
  store i32 %t47, ptr %l2, !tbaa !23
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l2, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l29
  br label %bb8
bb8:
  %t59 = load i32, ptr %l29, !range !{i32 0, i32 33}
  %t61 = trunc i64 20 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb9, label %bb10
bb9:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l2, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l36
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t74 = load i32, ptr %l36, !tbaa !23
  store i32 %t74, ptr %l2, !tbaa !23
  br label %bb12
bb12:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = getelementptr %"compiler/generic:Program", ptr %t78, i32 0, i32 2
  %t81 = load i32, ptr %l2, !tbaa !23
  %t84 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t80, i32 %t81)
  store i32 %t84, ptr %l41
  br label %bb13
bb13:
  %t85 = load i32, ptr %l41, !range !{i32 0, i32 33}
  %t87 = trunc i64 18 to i32
  %t88 = icmp eq i32 %t85, %t87
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  store ptr %t98, ptr %l48, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t104 = getelementptr %"compiler/generic:Program", ptr %t102, i32 0, i32 2
  %t105 = load i32, ptr %l2, !tbaa !23
  %t108 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t104, i32 %t105)
  store i32 %t108, ptr %l53
  br label %bb17
bb17:
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = load i32, ptr %l53, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l54
  br label %bb18
bb18:
  %t112 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  call void @__olang_scope_close(ptr %s0)
  store i64 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fexplain_2etraitsMet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
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
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l54 = alloca ptr
  %l57 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l85 = alloca %"compiler/names:Entry"
  %l89 = alloca i1
  %l93 = alloca %"compiler/names:Entry"
  %l100 = alloca i32
  %l105 = alloca i32
  %l109 = alloca i1
  %l111 = alloca ptr
  %l113 = alloca i64
  %l114 = alloca i64
  %l119 = alloca i32
  %l124 = alloca i1
  %l125 = alloca ptr
  %l126 = alloca i64
  %l130 = alloca { i64, ptr }
  %l137 = alloca i64
  %l139 = alloca ptr
  %l141 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l19
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t8 = getelementptr %"compiler/generic:Program", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 1
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H1e7e683fc0332c06b6c705cd46691777(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l24, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb3, label %bb4
bb3:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb5:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l31, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l31, !tbaa !24
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb10, label %bb11
bb10:
  br label %bb55
bb11:
  br label %bb12
bb12:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Program", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/names:Resolver", ptr %t67, i32 0, i32 1
  %t70 = load i64, ptr %l9, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v1, ptr %v1, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l54
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l54, !tbaa !29
  store ptr %t74, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  %t75 = load ptr, ptr %l10, !tbaa !29
  %t77 = getelementptr %"compiler/names:Table", ptr %t75, i32 0, i32 0
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v1, ptr %t77)
  store i64 %t79, ptr %l57
  br label %bb14
bb14:
  %t80 = load i64, ptr %l57, !tbaa !24
  store i64 %t80, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = icmp sgt i64 %t81, %t82
  br i1 %t85, label %bb15, label %bb16
bb15:
  %t87 = load i64, ptr %l13, !tbaa !24
  %t89 = icmp sgt i64 %t87, 0
  br i1 %t89, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb20
bb17:
  %t91 = load i64, ptr %l12, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load i64, ptr %l13, !tbaa !24
  %t99 = add i64 %t95, %t96
  %t101 = sub i64 %t99, 1
  %t102 = load i64, ptr %l13, !tbaa !24
  %t105 = sdiv i64 %t101, %t102
  store i64 %t105, ptr %l64, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb19
bb19:
  %t107 = load i64, ptr %l64, !tbaa !24
  store i64 %t107, ptr %l61, !tbaa !24
  br label %bb20
bb20:
  %t108 = load i64, ptr %l61, !tbaa !24
  store i64 %t108, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t109 = load i64, ptr %l15, !tbaa !24
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = icmp slt i64 %t109, %t110
  %t115 = xor i1 %t113, true
  br i1 %t115, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb53
bb23:
  br label %bb24
bb24:
  %t117 = load i64, ptr %l11, !tbaa !24
  %t118 = load i64, ptr %l15, !tbaa !24
  %t119 = load i64, ptr %l13, !tbaa !24
  %t122 = mul i64 %t118, %t119
  %t125 = add i64 %t117, %t122
  store i64 %t125, ptr %l16, !tbaa !24
  %t127 = load ptr, ptr %l10, !tbaa !29
  %t129 = getelementptr %"compiler/names:Table", ptr %t127, i32 0, i32 0
  %t130 = load i64, ptr %l16, !tbaa !24
  %t133 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v1, ptr %s4, ptr %t129, i64 %t130)
  store %"compiler/names:Entry" %t133, ptr %l85
  br label %bb25
bb25:
  %t134 = getelementptr %"compiler/names:Entry", ptr %l85, i32 0, i32 2
  %t135 = load i32, ptr %t134, !range !{i32 0, i32 9}
  %t137 = trunc i64 4 to i32
  %t138 = icmp eq i32 %t135, %t137
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb29
bb27:
  %t142 = load ptr, ptr %l10, !tbaa !29
  %t144 = getelementptr %"compiler/names:Table", ptr %t142, i32 0, i32 0
  %t145 = load i64, ptr %l16, !tbaa !24
  %t148 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v1, ptr %v1, ptr %t144, i64 %t145)
  store %"compiler/names:Entry" %t148, ptr %l93
  br label %bb28
bb28:
  %t149 = getelementptr %"compiler/names:Entry", ptr %l93, i32 0, i32 4
  %t150 = load ptr, ptr %t149, !tbaa !29
  %t152 = icmp eq ptr %t150, null
  store i1 %t152, ptr %l89, !tbaa !21
  br label %bb29
bb29:
  %t154 = load i1, ptr %l89, !tbaa !21
  br i1 %t154, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb31:
  br label %bb32
bb32:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t159 = load i64, ptr %l9, !tbaa !24
  %t160 = load i64, ptr %l16, !tbaa !24
  %t164 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v1, ptr %t158, i64 %t159, i64 %t160)
  store i32 %t164, ptr %l100
  br label %bb33
bb33:
  %t165 = load i32, ptr %l100, !tbaa !23
  store i32 %t165, ptr %l17, !tbaa !23
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/check:Checker", ptr %t166, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = getelementptr %"compiler/generic:Program", ptr %t169, i32 0, i32 2
  %t172 = load i32, ptr %l17, !tbaa !23
  %t175 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v1, ptr %t171, i32 %t172)
  store i32 %t175, ptr %l105
  br label %bb34
bb34:
  %t176 = load i32, ptr %l105, !range !{i32 0, i32 6}
  %t178 = trunc i64 3 to i32
  %t179 = icmp eq i32 %t176, %t178
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb39
bb36:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/check:Checker", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  store ptr %t186, ptr %l111, !tbaa !29
  %t187 = load i32, ptr %l17, !tbaa !23
  %t189 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t187)
  store i64 %t189, ptr %l113
  br label %bb37
bb37:
  %t190 = load ptr, ptr %l111, !tbaa !29
  %t191 = load i64, ptr %l113, !tbaa !24
  %t192 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v1, ptr %t190, i64 %t191)
  store i64 %t192, ptr %l114
  br label %bb38
bb38:
  %t193 = load i64, ptr %l114, !tbaa !24
  %t194 = icmp sgt i64 %t193, 0
  store i1 %t194, ptr %l109, !tbaa !21
  br label %bb39
bb39:
  %t196 = load i1, ptr %l109, !tbaa !21
  br i1 %t196, label %bb40, label %bb41
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb41:
  br label %bb42
bb42:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t201 = load i32, ptr %l17, !tbaa !23
  %t204 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v1, ptr %t200, i32 %t201)
  store i32 %t204, ptr %l119
  br label %bb43
bb43:
  %t205 = load i32, ptr %l119, !tbaa !23
  store i32 %t205, ptr %l18, !tbaa !23
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr %"compiler/check:Checker", ptr %t206, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !29
  %t211 = load i32, ptr %l18, !tbaa !23
  %t215 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v1, ptr %t209, i32 %a2, i32 %t211)
  store i1 %t215, ptr %l124
  br label %bb44
bb44:
  %t216 = load i1, ptr %l124, !tbaa !21
  br i1 %t216, label %bb45, label %bb46
bb45:
  store ptr %l3, ptr %l125, !tbaa !29
  %t217 = ptrtoint ptr %s0 to i64
  store i64 %t217, ptr %l126, !tbaa !24
  %t218 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t218, label %bb47, label %bb48
bb46:
  br label %bb51
bb47:
  %t220 = call ptr @__olang_region_make(ptr %s0)
  %t221 = ptrtoint ptr %t220 to i64
  store i64 %t221, ptr %l126, !tbaa !24
  br label %bb48
bb48:
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t223 = load i32, ptr %l18, !tbaa !23
  %t224 = load i64, ptr %l126
  %t225 = inttoptr i64 %t224 to ptr
  %t228 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v1, ptr %t225, ptr %t222, i32 %t223)
  store { i64, ptr } %t228, ptr %l130
  br label %bb49
bb49:
  %t229 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t230 = load i64, ptr %l126
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = extractvalue { i64, ptr } %t229, 0
  %t233 = extractvalue { i64, ptr } %t229, 1
  %t234 = mul i64 %t232, 1
  %t235 = call ptr @__olang_scope_alloc(ptr %t231, i64 %t234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t235, ptr %t233, i64 %t234, i1 false)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t238 = load ptr, ptr %l125, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t238, { i64, ptr } %t237)
  br label %bb50
bb50:
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb52:
  %t240 = load i64, ptr %l15, !tbaa !24
  %t242 = add i64 %t240, 1
  store i64 %t242, ptr %l15, !tbaa !24
  br label %bb21
bb53:
  br label %bb54
bb54:
  %t244 = load i64, ptr %l8, !tbaa !24
  %t246 = add i64 %t244, 1
  store i64 %t246, ptr %l8, !tbaa !24
  br label %bb9
bb55:
  %t249 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l3)
  store i64 %t249, ptr %l137
  br label %bb56
bb56:
  %t250 = load i64, ptr %l137, !tbaa !24
  %t251 = icmp sgt i64 %t250, 0
  br i1 %t251, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  store ptr %a0, ptr %l139, !tbaa !29
  %t255 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s10, ptr %s10, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store { i64, ptr } %t255, ptr %l141
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t256 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t258 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t264 = add i64 %t261, %t263
  %t265 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t264)
  call void @olang_textcopy(ptr %t265, ptr %t256, i64 %t257)
  %t266 = getelementptr i8, ptr %t265, i64 %t257
  call void @olang_textcopy(ptr %t266, ptr %t259, i64 %t260)
  %t267 = getelementptr i8, ptr %t266, i64 %t260
  call void @olang_textcopy(ptr %t267, ptr %t262, i64 %t263)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t265, 1
  %t271 = extractvalue { i64, ptr } %t269, 0
  %t272 = extractvalue { i64, ptr } %t269, 1
  %t273 = mul i64 %t271, 1
  %t274 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t273)
  call void @llvm.memcpy.p0.p0.i64(ptr %t274, ptr %t272, i64 %t273, i1 false)
  %t275 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t274, 1
  %t277 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s10, ptr %t277, { i64, ptr } %t276)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s10)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l28 = alloca i32
  %l35 = alloca i32
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l8
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 60)
  br label %bb2
bb2:
  store i64 0, ptr %l3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/check:Checker", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/generic:Program", ptr %t7, i32 0, i32 2
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %a1)
  store { i64, ptr } %t13, ptr %l14
  br label %bb3
bb3:
  %t14 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb28
bb6:
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t27, ptr %l21, !tbaa !27
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i32, ptr %t31, i64 %t28
  %t33 = load i32, ptr %t32, !tbaa !33
  store i32 %t33, ptr %l7, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l7, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l28
  br label %bb8
bb8:
  %t45 = load i32, ptr %l28, !range !{i32 0, i32 33}
  %t47 = trunc i64 30 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  %t56 = load i32, ptr %l7, !tbaa !23
  %t59 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %t55, i32 %t56)
  store i32 %t59, ptr %l35
  br label %bb11
bb10:
  br label %bb20
bb11:
  %t60 = load i32, ptr %l35, !tbaa !23
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l2, ptr %l37, !tbaa !29
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb14, label %bb15
bb13:
  br label %bb19
bb14:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l7, !tbaa !23
  %t71 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s4, ptr %t67, i32 %t68)
  store { i64, ptr } %t71, ptr %l43
  br label %bb17
bb17:
  %t72 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = add i64 %t74, %t77
  %t79 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t78)
  call void @olang_textcopy(ptr %t79, ptr %t73, i64 %t74)
  %t80 = getelementptr i8, ptr %t79, i64 %t74
  call void @olang_textcopy(ptr %t80, ptr %t76, i64 %t77)
  %t81 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t79, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } %t82, 1
  %t86 = mul i64 %t84, 1
  %t87 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t86)
  call void @llvm.memcpy.p0.p0.i64(ptr %t87, ptr %t85, i64 %t86, i1 false)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t87, 1
  %t90 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t90, { i64, ptr } %t89)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb20:
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s6)
  br label %bb24
bb24:
  store ptr %l2, ptr %l49, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l7, !tbaa !23
  %t101 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s2, ptr %t97, i32 %t98)
  store { i64, ptr } %t101, ptr %l52
  br label %bb25
bb25:
  %t102 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t102, 0
  %t104 = extractvalue { i64, ptr } %t102, 1
  %t105 = mul i64 %t103, 1
  %t106 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t105)
  call void @llvm.memcpy.p0.p0.i64(ptr %t106, ptr %t104, i64 %t105, i1 false)
  %t107 = insertvalue { i64, ptr } undef, i64 %t103, 0
  %t108 = insertvalue { i64, ptr } %t107, ptr %t106, 1
  %t109 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t109, { i64, ptr } %t108)
  br label %bb26
bb26:
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb27:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb4
bb28:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 62)
  br label %bb29
bb29:
  %t121 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t121, ptr %l60
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2etypeItem(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
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
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i32
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca %"std/prelude/text:StringBuilder"
  %l63 = alloca i32
  %l67 = alloca i1
  %l71 = alloca ptr
  %l75 = alloca ptr
  %l76 = alloca ptr
  %l80 = alloca i64
  %l87 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca { i64, ptr }
  %l94 = alloca ptr
  %l96 = alloca i64
  %l97 = alloca { i64, ptr }
  %l103 = alloca i32
  %l113 = alloca i1
  %l123 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l131 = alloca i64
  %l132 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l153 = alloca i64
  %l156 = alloca i64
  %l174 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l183 = alloca i64
  %l184 = alloca { i64, ptr }
  %l188 = alloca i64
  %l189 = alloca i64
  %l202 = alloca { i64, ptr }
  %l208 = alloca i64
  %l211 = alloca i64
  %l229 = alloca ptr
  %l231 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l245 = alloca { i64, ptr }
  %l251 = alloca ptr
  %l255 = alloca i64
  %l261 = alloca ptr
  %l278 = alloca ptr
  %l279 = alloca i1
  %l289 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l298 = alloca ptr
  %l301 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca i1
  %l323 = alloca { i64, ptr }
  %l326 = alloca ptr
  %l327 = alloca { i64, ptr }
  %l330 = alloca i64
  %l333 = alloca i64
  %l334 = alloca i64
  %l339 = alloca { i64, ptr }
  %l345 = alloca { i64, ptr }
  %l348 = alloca ptr
  %l349 = alloca { i64, ptr }
  %l352 = alloca { i64, ptr }
  %l360 = alloca ptr
  %l365 = alloca i32
  %l366 = alloca { i64, ptr }
  %l371 = alloca { i64, ptr }
  %l377 = alloca i64
  %l380 = alloca i64
  %l399 = alloca ptr
  %l400 = alloca ptr
  %l406 = alloca i32
  %l407 = alloca { i64, ptr }
  %l409 = alloca ptr
  %l411 = alloca { i64, ptr }
  %l414 = alloca { i64, ptr }
  %l419 = alloca i1
  %l420 = alloca { i64, ptr }
  %l438 = alloca i32
  %l439 = alloca ptr
  %l440 = alloca { i64, ptr }
  %l443 = alloca { i64, ptr }
  %l447 = alloca i1
  %l448 = alloca { i64, ptr }
  %l453 = alloca i32
  %l456 = alloca { i64, ptr }
  %l459 = alloca { i64, ptr }
  %l462 = alloca { i64, ptr }
  %l468 = alloca ptr
  %l474 = alloca ptr
  %l475 = alloca i1
  %l483 = alloca ptr
  %l484 = alloca ptr
  %l488 = alloca i32
  %l492 = alloca i32
  %l493 = alloca { i64, ptr }
  %l495 = alloca i64
  %l496 = alloca ptr
  %l498 = alloca i64
  %l499 = alloca i64
  %l503 = alloca { i64, ptr }
  %l505 = alloca i64
  %l507 = alloca i64
  %l508 = alloca i64
  %l513 = alloca { i64, ptr }
  %l514 = alloca i64
  %l515 = alloca { i64, ptr }
  %l521 = alloca ptr
  %l522 = alloca ptr
  %l526 = alloca i32
  %l530 = alloca ptr
  %l534 = alloca { i64, ptr }
  %l535 = alloca i32
  %l536 = alloca { i64, ptr }
  %l538 = alloca i64
  %l539 = alloca ptr
  %l540 = alloca i64
  %l541 = alloca i64
  %l545 = alloca { i64, ptr }
  %l549 = alloca ptr
  %l553 = alloca { i64, ptr }
  %l557 = alloca i64
  %l558 = alloca { i64, ptr }
  %l559 = alloca ptr
  %l560 = alloca { i64, ptr }
  %l563 = alloca { i64, ptr }
  %l568 = alloca i1
  %l569 = alloca { i64, ptr }
  %l570 = alloca { i64, ptr }
  %l572 = alloca i64
  %l574 = alloca i64
  %l575 = alloca i64
  %l580 = alloca { i64, ptr }
  %l581 = alloca i64
  %l582 = alloca { i64, ptr }
  %l588 = alloca ptr
  %l594 = alloca ptr
  %l595 = alloca i1
  %l604 = alloca ptr
  %l605 = alloca ptr
  %l610 = alloca ptr
  %l614 = alloca i64
  %l631 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s34 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %s42 = alloca %olang.scope
  %s45 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l59
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l59
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l63
  br label %bb2
bb2:
  %t11 = load i32, ptr %l63, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l67
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store ptr %t27, ptr %l71
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l71, !tbaa !29
  store ptr %t28, ptr %l4, !tbaa !29
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l2, ptr %l75, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l76, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l80
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TypeDecl", ptr %t44, i32 0, i32 4
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t48 = load ptr, ptr %l75, !tbaa !29
  %t49 = load ptr, ptr %l76, !tbaa !29
  %t50 = load i64, ptr %l80, !tbaa !24
  call void @compiler_2fexplain_2eattrLines(ptr %s0, ptr %v0, ptr %v0, ptr %s1, ptr %t48, ptr %t49, i64 %t50, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/load:Loader", ptr %t58, i32 0, i32 3
  %t61 = load ptr, ptr %t60, !tbaa !29
  store ptr %t61, ptr %l5, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  store ptr %t63, ptr %l87, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l92
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l87, !tbaa !29
  %t75 = load i32, ptr %l92, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t74, i32 %t75)
  store { i64, ptr } %t76, ptr %l93
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l94, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t80 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t78)
  store i64 %t80, ptr %l96
  br label %bb12
bb12:
  %t81 = load ptr, ptr %l94, !tbaa !29
  %t82 = load i64, ptr %l96, !tbaa !24
  %t83 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s0, ptr %t81, i64 %t82, i64 0)
  store { i64, ptr } %t83, ptr %l97
  br label %bb13
bb13:
  %t84 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = extractvalue { i64, ptr } %t87, 0
  %t90 = add i64 %t86, %t89
  %t91 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t90)
  call void @olang_textcopy(ptr %t91, ptr %t85, i64 %t86)
  %t92 = getelementptr i8, ptr %t91, i64 %t86
  call void @olang_textcopy(ptr %t92, ptr %t88, i64 %t89)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  store { i64, ptr } %t94, ptr %l6, !tbaa !27
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = getelementptr %"compiler/generic:Program", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %l1, !tbaa !23
  %t105 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t101, i32 %t102)
  store i32 %t105, ptr %l103
  br label %bb14
bb14:
  %t106 = load i32, ptr %l103, !range !{i32 0, i32 6}
  store i32 %t106, ptr %l7
  %t107 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t109 = trunc i64 5 to i32
  %t110 = icmp eq i32 %t107, %t109
  br i1 %t110, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t112 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t113 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t116 = extractvalue { i64, ptr } %t112, 1
  %t117 = extractvalue { i64, ptr } %t112, 0
  %t118 = add i64 %t114, %t117
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t121 = add i64 %t118, %t120
  %t122 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t121)
  call void @olang_textcopy(ptr %t122, ptr %t113, i64 %t114)
  %t123 = getelementptr i8, ptr %t122, i64 %t114
  call void @olang_textcopy(ptr %t123, ptr %t116, i64 %t117)
  %t124 = getelementptr i8, ptr %t123, i64 %t117
  call void @olang_textcopy(ptr %t124, ptr %t119, i64 %t120)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t122, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t126, ptr %rv
  br label %ret
bb18:
  %t128 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t130 = trunc i64 2 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb78
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/check:Checker", ptr %t133, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !29
  %t137 = load i32, ptr %l1, !tbaa !23
  %t140 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %t136, i32 %t137)
  store i1 %t140, ptr %l113
  br label %bb22
bb22:
  %t141 = load i1, ptr %l113, !tbaa !21
  br i1 %t141, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t142 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t143 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t146 = extractvalue { i64, ptr } %t142, 1
  %t147 = extractvalue { i64, ptr } %t142, 0
  %t148 = add i64 %t144, %t147
  %t149 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t148)
  call void @olang_textcopy(ptr %t149, ptr %t143, i64 %t144)
  %t150 = getelementptr i8, ptr %t149, i64 %t144
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t148, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t154 = extractvalue { i64, ptr } %t152, 0
  %t155 = extractvalue { i64, ptr } %t152, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l2, { i64, ptr } %t159)
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2ewordPayload(ptr %s0, ptr %v0, ptr %l2, ptr %t162, i32 %t163, i64 0)
  br label %bb26
bb26:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l2, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb27
bb27:
  %t169 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t169, ptr %l123
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t170 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t170, ptr %rv
  br label %ret
bb29:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/check:Checker", ptr %t171, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t176 = getelementptr %"compiler/generic:Program", ptr %t174, i32 0, i32 0
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = getelementptr %"compiler/load:Loader", ptr %t177, i32 0, i32 10
  store ptr %t179, ptr %l127, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t184 = load i32, ptr %l1, !tbaa !23
  %t187 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t183, i32 %t184)
  store i64 %t187, ptr %l131
  br label %bb30
bb30:
  %t188 = load ptr, ptr %l127, !tbaa !29
  %t189 = load i64, ptr %l131, !tbaa !24
  %t190 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t188, i64 %t189)
  store ptr %t190, ptr %l132
  br label %bb31
bb31:
  %t191 = load ptr, ptr %l132, !tbaa !29
  %t193 = getelementptr %"compiler/load:Module", ptr %t191, i32 0, i32 6
  %t194 = load ptr, ptr %t193, !tbaa !29
  store ptr %t194, ptr %l8, !tbaa !29
  %t196 = load ptr, ptr %l8, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb32, label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_85d3fea1d96f25de_7b2f6a0f1962587a)
  unreachable
bb33:
  br label %bb34
bb34:
  %t200 = load ptr, ptr %l8, !tbaa !29
  %t203 = getelementptr %"compiler/source:Source", ptr %t200, i32 0, i32 1
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l9, !tbaa !27
  %t206 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t207 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t208 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t210 = extractvalue { i64, ptr } %t206, 1
  %t211 = extractvalue { i64, ptr } %t206, 0
  %t212 = add i64 %t208, %t211
  %t213 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t214 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t215 = add i64 %t212, %t214
  %t216 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t215)
  call void @olang_textcopy(ptr %t216, ptr %t207, i64 %t208)
  %t217 = getelementptr i8, ptr %t216, i64 %t208
  call void @olang_textcopy(ptr %t217, ptr %t210, i64 %t211)
  %t218 = getelementptr i8, ptr %t217, i64 %t211
  call void @olang_textcopy(ptr %t218, ptr %t213, i64 %t214)
  %t219 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t220 = insertvalue { i64, ptr } %t219, ptr %t216, 1
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = extractvalue { i64, ptr } %t220, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l2, { i64, ptr } %t227)
  br label %bb35
bb35:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t234 = load i32, ptr %l1, !tbaa !23
  %t237 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %s5, ptr %t233, i32 %t234)
  store { i64, ptr } %t237, ptr %l147
  br label %bb36
bb36:
  %t238 = load { i64, ptr }, ptr %l147, !tbaa !27
  store { i64, ptr } %t238, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  store i64 %t241, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t243 = load i64, ptr %l12, !tbaa !24
  %t244 = load i64, ptr %l11, !tbaa !24
  %t247 = icmp sgt i64 %t243, %t244
  br i1 %t247, label %bb37, label %bb38
bb37:
  %t249 = load i64, ptr %l13, !tbaa !24
  %t251 = icmp sgt i64 %t249, 0
  br i1 %t251, label %bb39, label %bb40
bb38:
  store i64 0, ptr %l153, !tbaa !24
  br label %bb42
bb39:
  %t253 = load i64, ptr %l12, !tbaa !24
  %t254 = load i64, ptr %l11, !tbaa !24
  %t257 = sub i64 %t253, %t254
  %t258 = load i64, ptr %l13, !tbaa !24
  %t261 = add i64 %t257, %t258
  %t263 = sub i64 %t261, 1
  %t264 = load i64, ptr %l13, !tbaa !24
  %t267 = sdiv i64 %t263, %t264
  store i64 %t267, ptr %l156, !tbaa !24
  br label %bb41
bb40:
  store i64 0, ptr %l156, !tbaa !24
  br label %bb41
bb41:
  %t269 = load i64, ptr %l156, !tbaa !24
  store i64 %t269, ptr %l153, !tbaa !24
  br label %bb42
bb42:
  %t270 = load i64, ptr %l153, !tbaa !24
  store i64 %t270, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb43
bb43:
  store %olang.scope zeroinitializer, ptr %s10
  %t271 = load i64, ptr %l15, !tbaa !24
  %t272 = load i64, ptr %l14, !tbaa !24
  %t275 = icmp slt i64 %t271, %t272
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s10)
  br label %bb58
bb45:
  br label %bb46
bb46:
  %t279 = load i64, ptr %l11, !tbaa !24
  %t280 = load i64, ptr %l15, !tbaa !24
  %t281 = load i64, ptr %l13, !tbaa !24
  %t284 = mul i64 %t280, %t281
  %t287 = add i64 %t279, %t284
  store i64 %t287, ptr %l16, !tbaa !24
  store ptr %l2, ptr %l174, !tbaa !29
  %t289 = load i64, ptr %l16, !tbaa !24
  %t291 = icmp sgt i64 %t289, 0
  br i1 %t291, label %bb47, label %bb48
bb47:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l177, !tbaa !27
  br label %bb49
bb48:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l177, !tbaa !27
  br label %bb49
bb49:
  %t293 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t293, ptr %l178, !tbaa !27
  %t294 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t294, ptr %l179, !tbaa !27
  %t295 = load i64, ptr %l16, !tbaa !24
  %t297 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !27
  %t299 = getelementptr ptr, ptr %t298, i64 %t295
  %t300 = load ptr, ptr %t299, !tbaa !39
  %t302 = getelementptr %"compiler/ast:Path", ptr %t300, i32 0, i32 0
  %t303 = getelementptr %"compiler/source:Span", ptr %t302, i32 0, i32 0
  %t304 = load i32, ptr %t303, !tbaa !23
  %t306 = sext i32 %t304 to i64
  store i64 %t306, ptr %l183, !tbaa !24
  %t307 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t307, ptr %l184, !tbaa !27
  %t308 = load i64, ptr %l16, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr ptr, ptr %t311, i64 %t308
  %t313 = load ptr, ptr %t312, !tbaa !39
  %t315 = getelementptr %"compiler/ast:Path", ptr %t313, i32 0, i32 0
  %t316 = getelementptr %"compiler/source:Span", ptr %t315, i32 0, i32 1
  %t317 = load i32, ptr %t316, !tbaa !23
  %t319 = sext i32 %t317 to i64
  store i64 %t319, ptr %l188, !tbaa !24
  %t320 = load { i64, ptr }, ptr %l178, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 0
  store i64 %t321, ptr %l189, !tbaa !24
  %t322 = load i64, ptr %l183, !tbaa !24
  %t323 = icmp sge i64 %t322, 0
  br i1 %t323, label %bb50, label %bb51
bb50:
  %t325 = load i64, ptr %l183, !tbaa !24
  %t326 = load i64, ptr %l188, !tbaa !24
  %t327 = icmp sle i64 %t325, %t326
  br i1 %t327, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb52:
  %t329 = load i64, ptr %l188, !tbaa !24
  %t330 = load i64, ptr %l189, !tbaa !24
  %t331 = icmp sle i64 %t329, %t330
  br i1 %t331, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb54:
  %t333 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = load i64, ptr %l183, !tbaa !24
  %t336 = load i64, ptr %l188, !tbaa !24
  %t337 = getelementptr i8, ptr %t334, i64 %t335
  %t338 = sub i64 %t336, %t335
  %t339 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t337, 1
  %t341 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t341, 1
  %t343 = extractvalue { i64, ptr } %t341, 0
  %t345 = extractvalue { i64, ptr } %t340, 1
  %t346 = extractvalue { i64, ptr } %t340, 0
  %t347 = add i64 %t343, %t346
  %t348 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t347)
  call void @olang_textcopy(ptr %t348, ptr %t342, i64 %t343)
  %t349 = getelementptr i8, ptr %t348, i64 %t343
  call void @olang_textcopy(ptr %t349, ptr %t345, i64 %t346)
  %t350 = insertvalue { i64, ptr } undef, i64 %t347, 0
  %t351 = insertvalue { i64, ptr } %t350, ptr %t348, 1
  %t353 = extractvalue { i64, ptr } %t351, 0
  %t354 = extractvalue { i64, ptr } %t351, 1
  %t355 = mul i64 %t353, 1
  %t356 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t355)
  call void @llvm.memcpy.p0.p0.i64(ptr %t356, ptr %t354, i64 %t355, i1 false)
  %t357 = insertvalue { i64, ptr } undef, i64 %t353, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t356, 1
  %t359 = load ptr, ptr %l174, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t359, { i64, ptr } %t358)
  br label %bb56
bb55:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb56:
  call void @__olang_scope_close(ptr %s10)
  br label %bb57
bb57:
  %t361 = load i64, ptr %l15, !tbaa !24
  %t363 = add i64 %t361, 1
  store i64 %t363, ptr %l15, !tbaa !24
  br label %bb43
bb58:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d52, i32 0, i32 1) })
  br label %bb59
bb59:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/check:Checker", ptr %t366, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !29
  %t370 = load i32, ptr %l1, !tbaa !23
  %t373 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %s5, ptr %t369, i32 %t370)
  store { i64, ptr } %t373, ptr %l202
  br label %bb60
bb60:
  %t374 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t374, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t375 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t377 = extractvalue { i64, ptr } %t375, 0
  store i64 %t377, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t379 = load i64, ptr %l19, !tbaa !24
  %t380 = load i64, ptr %l18, !tbaa !24
  %t383 = icmp sgt i64 %t379, %t380
  br i1 %t383, label %bb61, label %bb62
bb61:
  %t385 = load i64, ptr %l20, !tbaa !24
  %t387 = icmp sgt i64 %t385, 0
  br i1 %t387, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l208, !tbaa !24
  br label %bb66
bb63:
  %t389 = load i64, ptr %l19, !tbaa !24
  %t390 = load i64, ptr %l18, !tbaa !24
  %t393 = sub i64 %t389, %t390
  %t394 = load i64, ptr %l20, !tbaa !24
  %t397 = add i64 %t393, %t394
  %t399 = sub i64 %t397, 1
  %t400 = load i64, ptr %l20, !tbaa !24
  %t403 = sdiv i64 %t399, %t400
  store i64 %t403, ptr %l211, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l211, !tbaa !24
  br label %bb65
bb65:
  %t405 = load i64, ptr %l211, !tbaa !24
  store i64 %t405, ptr %l208, !tbaa !24
  br label %bb66
bb66:
  %t406 = load i64, ptr %l208, !tbaa !24
  store i64 %t406, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s14
  %t407 = load i64, ptr %l22, !tbaa !24
  %t408 = load i64, ptr %l21, !tbaa !24
  %t411 = icmp slt i64 %t407, %t408
  %t413 = xor i1 %t411, true
  br i1 %t413, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s14)
  br label %bb76
bb69:
  br label %bb70
bb70:
  %t415 = load i64, ptr %l18, !tbaa !24
  %t416 = load i64, ptr %l22, !tbaa !24
  %t417 = load i64, ptr %l20, !tbaa !24
  %t420 = mul i64 %t416, %t417
  %t423 = add i64 %t415, %t420
  store i64 %t423, ptr %l23, !tbaa !24
  store ptr %l2, ptr %l229, !tbaa !29
  %t425 = load ptr, ptr %l5, !tbaa !29
  %t426 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t426, ptr %l231, !tbaa !27
  %t427 = load i64, ptr %l23, !tbaa !24
  %t429 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !27
  %t431 = getelementptr i32, ptr %t430, i64 %t427
  %t432 = load i32, ptr %t431, !tbaa !33
  %t435 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s14, ptr %t425, i32 %t432)
  store { i64, ptr } %t435, ptr %l234
  br label %bb71
bb71:
  %t436 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t437 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t438 = load { i64, ptr }, ptr %l234, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t438, 1
  %t440 = extractvalue { i64, ptr } %t438, 0
  %t441 = add i64 %t437, %t440
  %t442 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t441)
  call void @olang_textcopy(ptr %t442, ptr %t436, i64 %t437)
  %t443 = getelementptr i8, ptr %t442, i64 %t437
  call void @olang_textcopy(ptr %t443, ptr %t439, i64 %t440)
  %t444 = insertvalue { i64, ptr } undef, i64 %t441, 0
  %t445 = insertvalue { i64, ptr } %t444, ptr %t442, 1
  %t447 = extractvalue { i64, ptr } %t445, 0
  %t448 = extractvalue { i64, ptr } %t445, 1
  %t449 = mul i64 %t447, 1
  %t450 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t449)
  call void @llvm.memcpy.p0.p0.i64(ptr %t450, ptr %t448, i64 %t449, i1 false)
  %t451 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t450, 1
  %t453 = load ptr, ptr %l229, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %t453, { i64, ptr } %t452)
  br label %bb72
bb72:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i32, ptr %l3, !tbaa !23
  %t457 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2fexplain_2ewordPayload(ptr %s0, ptr %v0, ptr %l2, ptr %t455, i32 %t456, i64 %t457)
  br label %bb73
bb73:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s14)
  br label %bb75
bb75:
  %t463 = load i64, ptr %l22, !tbaa !24
  %t465 = add i64 %t463, 1
  store i64 %t465, ptr %l22, !tbaa !24
  br label %bb67
bb76:
  %t468 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t468, ptr %l245
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t469 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t469, ptr %rv
  br label %ret
bb78:
  %t470 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t472 = trunc i64 3 to i32
  %t473 = icmp eq i32 %t470, %t472
  br i1 %t473, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb143
bb81:
  store %olang.scope zeroinitializer, ptr %s17
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/check:Checker", ptr %t475, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t479 = load i32, ptr %l1, !tbaa !23
  %t482 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t478, i32 %t479)
  store ptr %t482, ptr %l251
  br label %bb82
bb82:
  %t483 = load ptr, ptr %l251, !tbaa !29
  store ptr %t483, ptr %l24, !tbaa !29
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t486 = getelementptr %"compiler/check:Checker", ptr %t484, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !29
  %t488 = load i32, ptr %l1, !tbaa !23
  %t491 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t487, i32 %t488)
  store i64 %t491, ptr %l255
  br label %bb83
bb83:
  %t492 = load i64, ptr %l255, !tbaa !24
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/check:Checker", ptr %t493, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !29
  %t498 = getelementptr %"compiler/generic:Program", ptr %t496, i32 0, i32 0
  %t499 = load ptr, ptr %t498, !tbaa !29
  %t501 = getelementptr %"compiler/load:Loader", ptr %t499, i32 0, i32 10
  %t505 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t501, i64 %t492)
  store ptr %t505, ptr %l261
  br label %bb84
bb84:
  %t506 = load ptr, ptr %l261, !tbaa !29
  %t508 = getelementptr %"compiler/load:Module", ptr %t506, i32 0, i32 6
  %t509 = load ptr, ptr %t508, !tbaa !29
  store ptr %t509, ptr %l26, !tbaa !29
  %t511 = load ptr, ptr %l26, !tbaa !29
  %t513 = icmp eq ptr %t511, null
  br i1 %t513, label %bb85, label %bb86
bb85:
  call void @__olang_check_failed(ptr @olang_loc_a185ff5f85e75430_c999a61f9f0eedcc)
  unreachable
bb86:
  br label %bb87
bb87:
  %t515 = load ptr, ptr %l26, !tbaa !29
  %t518 = getelementptr %"compiler/source:Source", ptr %t515, i32 0, i32 1
  %t519 = load { i64, ptr }, ptr %t518, !tbaa !27
  store { i64, ptr } %t519, ptr %l27, !tbaa !27
  %t521 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t522 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t523 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t525 = extractvalue { i64, ptr } %t521, 1
  %t526 = extractvalue { i64, ptr } %t521, 0
  %t527 = add i64 %t523, %t526
  %t528 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t529 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t530 = add i64 %t527, %t529
  %t531 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t530)
  call void @olang_textcopy(ptr %t531, ptr %t522, i64 %t523)
  %t532 = getelementptr i8, ptr %t531, i64 %t523
  call void @olang_textcopy(ptr %t532, ptr %t525, i64 %t526)
  %t533 = getelementptr i8, ptr %t532, i64 %t526
  call void @olang_textcopy(ptr %t533, ptr %t528, i64 %t529)
  %t534 = insertvalue { i64, ptr } undef, i64 %t530, 0
  %t535 = insertvalue { i64, ptr } %t534, ptr %t531, 1
  %t537 = extractvalue { i64, ptr } %t535, 0
  %t538 = extractvalue { i64, ptr } %t535, 1
  %t539 = mul i64 %t537, 1
  %t540 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t539)
  call void @llvm.memcpy.p0.p0.i64(ptr %t540, ptr %t538, i64 %t539, i1 false)
  %t541 = insertvalue { i64, ptr } undef, i64 %t537, 0
  %t542 = insertvalue { i64, ptr } %t541, ptr %t540, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %l2, { i64, ptr } %t542)
  br label %bb88
bb88:
  %t545 = load ptr, ptr %l24, !tbaa !29
  %t547 = icmp eq ptr %t545, null
  br i1 %t547, label %bb89, label %bb90
bb89:
  call void @__olang_check_failed(ptr @olang_loc_60d3429e949e0f0f_c9b6e73225d64a3b)
  unreachable
bb90:
  br label %bb91
bb91:
  %t549 = load ptr, ptr %l24, !tbaa !29
  %t552 = getelementptr %"compiler/ast:TypeDecl", ptr %t549, i32 0, i32 3
  %t553 = load ptr, ptr %t552, !tbaa !29
  store ptr %t553, ptr %l28, !tbaa !29
  %t555 = load ptr, ptr %l28, !tbaa !29
  store ptr %t555, ptr %l278, !tbaa !29
  store i1 false, ptr %l279, !tbaa !21
  %t556 = load ptr, ptr %l278, !tbaa !29
  %t557 = icmp ne ptr %t556, null
  br i1 %t557, label %bb92, label %bb93
bb92:
  %t559 = load ptr, ptr %l278, !tbaa !29
  %t560 = load i64, ptr %t559, !range !{i64 0, i64 5}
  %t562 = icmp eq i64 %t560, 2
  store i1 %t562, ptr %l279, !tbaa !21
  br label %bb93
bb93:
  %t563 = load i1, ptr %l279, !tbaa !21
  br i1 %t563, label %bb94, label %bb95
bb94:
  %t564 = load ptr, ptr %l28, !tbaa !29
  %t566 = getelementptr { i64, [6 x i64] }, ptr %t564, i32 0, i32 1
  %t567 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t566, i32 0, i32 1
  %t568 = load { i64, ptr }, ptr %t567
  store { i64, ptr } %t568, ptr %l29, !tbaa !27
  %t570 = load ptr, ptr %l28, !tbaa !29
  %t572 = getelementptr { i64, [6 x i64] }, ptr %t570, i32 0, i32 1
  %t573 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t572, i32 0, i32 2
  %t574 = load { i64, ptr }, ptr %t573
  store { i64, ptr } %t574, ptr %l30, !tbaa !27
  br label %bb96
bb95:
  br label %bb107
bb96:
  %t576 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t576, 0
  %t580 = icmp sgt i64 %t578, 0
  br i1 %t580, label %bb97, label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s20
  store ptr %l2, ptr %l289, !tbaa !29
  %t582 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t583 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t586 = call { i64, ptr } @compiler_2fexplain_2elisted(ptr %v0, ptr %v0, ptr %s20, { i64, ptr } %t582, { i64, ptr } %t583)
  store { i64, ptr } %t586, ptr %l292
  br label %bb99
bb98:
  br label %bb101
bb99:
  %t587 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t588 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t589 = load { i64, ptr }, ptr %l292, !tbaa !27
  %t590 = extractvalue { i64, ptr } %t589, 1
  %t591 = extractvalue { i64, ptr } %t589, 0
  %t592 = add i64 %t588, %t591
  %t593 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t592)
  call void @olang_textcopy(ptr %t593, ptr %t587, i64 %t588)
  %t594 = getelementptr i8, ptr %t593, i64 %t588
  call void @olang_textcopy(ptr %t594, ptr %t590, i64 %t591)
  %t595 = insertvalue { i64, ptr } undef, i64 %t592, 0
  %t596 = insertvalue { i64, ptr } %t595, ptr %t593, 1
  %t598 = extractvalue { i64, ptr } %t596, 0
  %t599 = extractvalue { i64, ptr } %t596, 1
  %t600 = mul i64 %t598, 1
  %t601 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t600)
  call void @llvm.memcpy.p0.p0.i64(ptr %t601, ptr %t599, i64 %t600, i1 false)
  %t602 = insertvalue { i64, ptr } undef, i64 %t598, 0
  %t603 = insertvalue { i64, ptr } %t602, ptr %t601, 1
  %t604 = load ptr, ptr %l289, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s20, ptr %t604, { i64, ptr } %t603)
  br label %bb100
bb100:
  call void @__olang_scope_close(ptr %s20)
  br label %bb101
bb101:
  %t606 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t608 = extractvalue { i64, ptr } %t606, 0
  %t610 = icmp sgt i64 %t608, 0
  br i1 %t610, label %bb102, label %bb103
bb102:
  store %olang.scope zeroinitializer, ptr %s22
  store ptr %l2, ptr %l298, !tbaa !29
  %t612 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t613 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t616 = call { i64, ptr } @compiler_2fexplain_2elisted(ptr %v0, ptr %v0, ptr %s22, { i64, ptr } %t612, { i64, ptr } %t613)
  store { i64, ptr } %t616, ptr %l301
  br label %bb104
bb103:
  br label %bb106
bb104:
  %t617 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t618 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t619 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 1
  %t621 = extractvalue { i64, ptr } %t619, 0
  %t622 = add i64 %t618, %t621
  %t623 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t622)
  call void @olang_textcopy(ptr %t623, ptr %t617, i64 %t618)
  %t624 = getelementptr i8, ptr %t623, i64 %t618
  call void @olang_textcopy(ptr %t624, ptr %t620, i64 %t621)
  %t625 = insertvalue { i64, ptr } undef, i64 %t622, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t623, 1
  %t628 = extractvalue { i64, ptr } %t626, 0
  %t629 = extractvalue { i64, ptr } %t626, 1
  %t630 = mul i64 %t628, 1
  %t631 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t630)
  call void @llvm.memcpy.p0.p0.i64(ptr %t631, ptr %t629, i64 %t630, i1 false)
  %t632 = insertvalue { i64, ptr } undef, i64 %t628, 0
  %t633 = insertvalue { i64, ptr } %t632, ptr %t631, 1
  %t634 = load ptr, ptr %l298, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s22, ptr %t634, { i64, ptr } %t633)
  br label %bb105
bb105:
  call void @__olang_scope_close(ptr %s22)
  br label %bb106
bb106:
  br label %bb112
bb107:
  br i1 true, label %bb108, label %bb109
bb108:
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb112
bb111:
  call void @__olang_check_failed(ptr @olang_loc_9e7f77c067ece8f1_2a0afb54e00d35)
  unreachable
bb112:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %l2, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) })
  br label %bb113
bb113:
  %t637 = load ptr, ptr %l24, !tbaa !29
  %t639 = icmp eq ptr %t637, null
  br i1 %t639, label %bb114, label %bb115
bb114:
  call void @__olang_check_failed(ptr @olang_loc_7b101762ff8ffda9_ced5d247097fb61d)
  unreachable
bb115:
  br label %bb116
bb116:
  %t641 = load ptr, ptr %l24, !tbaa !29
  %t644 = getelementptr %"compiler/ast:TypeDecl", ptr %t641, i32 0, i32 3
  %t645 = load ptr, ptr %t644, !tbaa !29
  store ptr %t645, ptr %l31, !tbaa !29
  %t647 = load ptr, ptr %l31, !tbaa !29
  store ptr %t647, ptr %l310, !tbaa !29
  store i1 false, ptr %l311, !tbaa !21
  %t648 = load ptr, ptr %l310, !tbaa !29
  %t649 = icmp ne ptr %t648, null
  br i1 %t649, label %bb117, label %bb118
bb117:
  %t651 = load ptr, ptr %l310, !tbaa !29
  %t652 = load i64, ptr %t651, !range !{i64 0, i64 5}
  %t654 = icmp eq i64 %t652, 2
  store i1 %t654, ptr %l311, !tbaa !21
  br label %bb118
bb118:
  %t655 = load i1, ptr %l311, !tbaa !21
  br i1 %t655, label %bb119, label %bb120
bb119:
  %t656 = load ptr, ptr %l31, !tbaa !29
  %t658 = getelementptr { i64, [6 x i64] }, ptr %t656, i32 0, i32 1
  %t659 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t658, i32 0, i32 0
  %t660 = load { i64, ptr }, ptr %t659
  store { i64, ptr } %t660, ptr %l32, !tbaa !27
  br label %bb121
bb120:
  br label %bb136
bb121:
  %t662 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t662, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t664 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t666 = extractvalue { i64, ptr } %t664, 0
  store i64 %t666, ptr %l35, !tbaa !24
  br label %bb122
bb122:
  store %olang.scope zeroinitializer, ptr %s27
  %t668 = load i64, ptr %l34, !tbaa !24
  %t669 = load i64, ptr %l35, !tbaa !24
  %t672 = icmp slt i64 %t668, %t669
  %t674 = xor i1 %t672, true
  br i1 %t674, label %bb123, label %bb124
bb123:
  call void @__olang_scope_close(ptr %s27)
  br label %bb135
bb124:
  br label %bb125
bb125:
  %t676 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t676, ptr %l323, !tbaa !27
  %t677 = load i64, ptr %l34, !tbaa !24
  %t679 = getelementptr { i64, ptr }, ptr %l323, i32 0, i32 1
  %t680 = load ptr, ptr %t679, !tbaa !27
  %t681 = getelementptr ptr, ptr %t680, i64 %t677
  %t682 = load ptr, ptr %t681, !tbaa !39
  store ptr %t682, ptr %l36, !tbaa !29
  store ptr %l2, ptr %l326, !tbaa !29
  %t684 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t684, ptr %l327, !tbaa !27
  %t685 = load ptr, ptr %l36, !tbaa !29
  %t687 = getelementptr %"compiler/ast:Func", ptr %t685, i32 0, i32 0
  %t688 = getelementptr %"compiler/source:Span", ptr %t687, i32 0, i32 0
  %t689 = load i32, ptr %t688, !tbaa !23
  %t691 = sext i32 %t689 to i64
  store i64 %t691, ptr %l330, !tbaa !24
  %t692 = load ptr, ptr %l36, !tbaa !29
  %t694 = getelementptr %"compiler/ast:Func", ptr %t692, i32 0, i32 0
  %t695 = getelementptr %"compiler/source:Span", ptr %t694, i32 0, i32 1
  %t696 = load i32, ptr %t695, !tbaa !23
  %t698 = sext i32 %t696 to i64
  store i64 %t698, ptr %l333, !tbaa !24
  %t699 = load { i64, ptr }, ptr %l327, !tbaa !27
  %t700 = extractvalue { i64, ptr } %t699, 0
  store i64 %t700, ptr %l334, !tbaa !24
  %t701 = load i64, ptr %l330, !tbaa !24
  %t702 = icmp sge i64 %t701, 0
  br i1 %t702, label %bb126, label %bb127
bb126:
  %t704 = load i64, ptr %l330, !tbaa !24
  %t705 = load i64, ptr %l333, !tbaa !24
  %t706 = icmp sle i64 %t704, %t705
  br i1 %t706, label %bb128, label %bb129
bb127:
  call void @__olang_check_failed(ptr @olang_loc_e7cf316846733e6c_5d444c1e6a143730)
  unreachable
bb128:
  %t708 = load i64, ptr %l333, !tbaa !24
  %t709 = load i64, ptr %l334, !tbaa !24
  %t710 = icmp sle i64 %t708, %t709
  br i1 %t710, label %bb130, label %bb131
bb129:
  call void @__olang_check_failed(ptr @olang_loc_e7cf316846733e6c_5d444c1e6a143730)
  unreachable
bb130:
  %t712 = getelementptr { i64, ptr }, ptr %l327, i32 0, i32 1
  %t713 = load ptr, ptr %t712, !tbaa !27
  %t714 = load i64, ptr %l330, !tbaa !24
  %t715 = load i64, ptr %l333, !tbaa !24
  %t716 = getelementptr i8, ptr %t713, i64 %t714
  %t717 = sub i64 %t715, %t714
  %t718 = insertvalue { i64, ptr } undef, i64 %t717, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t716, 1
  %t721 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s27, { i64, ptr } %t719)
  store { i64, ptr } %t721, ptr %l339
  br label %bb132
bb131:
  call void @__olang_check_failed(ptr @olang_loc_e7cf316846733e6c_5d444c1e6a143730)
  unreachable
bb132:
  %t722 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t723 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  %t724 = load { i64, ptr }, ptr %l339, !tbaa !27
  %t725 = extractvalue { i64, ptr } %t724, 1
  %t726 = extractvalue { i64, ptr } %t724, 0
  %t727 = add i64 %t723, %t726
  %t728 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t729 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t730 = add i64 %t727, %t729
  %t731 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t730)
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
  %t740 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t739)
  call void @llvm.memcpy.p0.p0.i64(ptr %t740, ptr %t738, i64 %t739, i1 false)
  %t741 = insertvalue { i64, ptr } undef, i64 %t737, 0
  %t742 = insertvalue { i64, ptr } %t741, ptr %t740, 1
  %t743 = load ptr, ptr %l326, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %t743, { i64, ptr } %t742)
  br label %bb133
bb133:
  call void @__olang_scope_close(ptr %s27)
  br label %bb134
bb134:
  %t745 = load i64, ptr %l34, !tbaa !24
  %t747 = add i64 %t745, 1
  store i64 %t747, ptr %l34, !tbaa !24
  br label %bb122
bb135:
  br label %bb141
bb136:
  br i1 true, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb141
bb140:
  call void @__olang_check_failed(ptr @olang_loc_4e8cd845c965dada_c1eb458e34ff6f7e)
  unreachable
bb141:
  %t750 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t750, ptr %l345
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s0)
  %t751 = load { i64, ptr }, ptr %l345, !tbaa !27
  store { i64, ptr } %t751, ptr %rv
  br label %ret
bb143:
  %t752 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t754 = trunc i64 1 to i32
  %t755 = icmp eq i32 %t752, %t754
  br i1 %t755, label %bb144, label %bb145
bb144:
  br label %bb146
bb145:
  br label %bb179
bb146:
  store %olang.scope zeroinitializer, ptr %s31
  store ptr %l2, ptr %l348, !tbaa !29
  %t757 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t757, ptr %l349, !tbaa !27
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t759 = load i32, ptr %l3, !tbaa !23
  %t762 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s31, ptr %t758, i32 %t759)
  store { i64, ptr } %t762, ptr %l352
  br label %bb147
bb147:
  %t763 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t764 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  %t765 = load { i64, ptr }, ptr %l349, !tbaa !27
  %t766 = extractvalue { i64, ptr } %t765, 1
  %t767 = extractvalue { i64, ptr } %t765, 0
  %t768 = add i64 %t764, %t767
  %t769 = load { i64, ptr }, ptr %l352, !tbaa !27
  %t770 = extractvalue { i64, ptr } %t769, 1
  %t771 = extractvalue { i64, ptr } %t769, 0
  %t772 = add i64 %t768, %t771
  %t773 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t774 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  %t775 = add i64 %t772, %t774
  %t776 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t775)
  call void @olang_textcopy(ptr %t776, ptr %t763, i64 %t764)
  %t777 = getelementptr i8, ptr %t776, i64 %t764
  call void @olang_textcopy(ptr %t777, ptr %t766, i64 %t767)
  %t778 = getelementptr i8, ptr %t777, i64 %t767
  call void @olang_textcopy(ptr %t778, ptr %t770, i64 %t771)
  %t779 = getelementptr i8, ptr %t778, i64 %t771
  call void @olang_textcopy(ptr %t779, ptr %t773, i64 %t774)
  %t780 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t781 = insertvalue { i64, ptr } %t780, ptr %t776, 1
  %t783 = extractvalue { i64, ptr } %t781, 0
  %t784 = extractvalue { i64, ptr } %t781, 1
  %t785 = mul i64 %t783, 1
  %t786 = call ptr @__olang_scope_alloc(ptr %s31, i64 %t785)
  call void @llvm.memcpy.p0.p0.i64(ptr %t786, ptr %t784, i64 %t785, i1 false)
  %t787 = insertvalue { i64, ptr } undef, i64 %t783, 0
  %t788 = insertvalue { i64, ptr } %t787, ptr %t786, 1
  %t789 = load ptr, ptr %l348, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s31, ptr %t789, { i64, ptr } %t788)
  br label %bb148
bb148:
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t792 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2egenLine(ptr %s0, ptr %v0, ptr %l2, ptr %t791, i32 %t792)
  br label %bb149
bb149:
  %t796 = load ptr, ptr %l0, !tbaa !29
  %t798 = getelementptr %"compiler/check:Checker", ptr %t796, i32 0, i32 1
  %t799 = load ptr, ptr %t798, !tbaa !29
  %t801 = getelementptr %"compiler/generic:Program", ptr %t799, i32 0, i32 2
  store ptr %t801, ptr %l360, !tbaa !29
  %t802 = load ptr, ptr %l0, !tbaa !29
  %t804 = getelementptr %"compiler/check:Checker", ptr %t802, i32 0, i32 1
  %t805 = load ptr, ptr %t804, !tbaa !29
  %t807 = getelementptr %"compiler/generic:Program", ptr %t805, i32 0, i32 2
  %t808 = load i32, ptr %l3, !tbaa !23
  %t811 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t807, i32 %t808)
  store i32 %t811, ptr %l365
  br label %bb150
bb150:
  %t812 = load ptr, ptr %l360, !tbaa !29
  %t813 = load i32, ptr %l365, !tbaa !23
  %t814 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t812, i32 %t813)
  store { i64, ptr } %t814, ptr %l366
  br label %bb151
bb151:
  %t815 = load { i64, ptr }, ptr %l366, !tbaa !27
  store { i64, ptr } %t815, ptr %l37, !tbaa !27
  %t816 = load ptr, ptr %l0, !tbaa !29
  %t818 = getelementptr %"compiler/check:Checker", ptr %t816, i32 0, i32 1
  %t819 = load ptr, ptr %t818, !tbaa !29
  %t821 = getelementptr %"compiler/generic:Program", ptr %t819, i32 0, i32 2
  %t822 = load i32, ptr %l3, !tbaa !23
  %t825 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s31, ptr %t821, i32 %t822)
  store { i64, ptr } %t825, ptr %l371
  br label %bb152
bb152:
  %t826 = load { i64, ptr }, ptr %l371, !tbaa !27
  store { i64, ptr } %t826, ptr %l38, !tbaa !27
  store i64 0, ptr %l39, !tbaa !24
  %t827 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t829 = extractvalue { i64, ptr } %t827, 0
  store i64 %t829, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t831 = load i64, ptr %l40, !tbaa !24
  %t832 = load i64, ptr %l39, !tbaa !24
  %t835 = icmp sgt i64 %t831, %t832
  br i1 %t835, label %bb153, label %bb154
bb153:
  %t837 = load i64, ptr %l41, !tbaa !24
  %t839 = icmp sgt i64 %t837, 0
  br i1 %t839, label %bb155, label %bb156
bb154:
  store i64 0, ptr %l377, !tbaa !24
  br label %bb158
bb155:
  %t841 = load i64, ptr %l40, !tbaa !24
  %t842 = load i64, ptr %l39, !tbaa !24
  %t845 = sub i64 %t841, %t842
  %t846 = load i64, ptr %l41, !tbaa !24
  %t849 = add i64 %t845, %t846
  %t851 = sub i64 %t849, 1
  %t852 = load i64, ptr %l41, !tbaa !24
  %t855 = sdiv i64 %t851, %t852
  store i64 %t855, ptr %l380, !tbaa !24
  br label %bb157
bb156:
  store i64 0, ptr %l380, !tbaa !24
  br label %bb157
bb157:
  %t857 = load i64, ptr %l380, !tbaa !24
  store i64 %t857, ptr %l377, !tbaa !24
  br label %bb158
bb158:
  %t858 = load i64, ptr %l377, !tbaa !24
  store i64 %t858, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb159
bb159:
  store %olang.scope zeroinitializer, ptr %s34
  %t859 = load i64, ptr %l43, !tbaa !24
  %t860 = load i64, ptr %l42, !tbaa !24
  %t863 = icmp slt i64 %t859, %t860
  %t865 = xor i1 %t863, true
  br i1 %t865, label %bb160, label %bb161
bb160:
  call void @__olang_scope_close(ptr %s34)
  br label %bb178
bb161:
  br label %bb162
bb162:
  %t867 = load i64, ptr %l39, !tbaa !24
  %t868 = load i64, ptr %l43, !tbaa !24
  %t869 = load i64, ptr %l41, !tbaa !24
  %t872 = mul i64 %t868, %t869
  %t875 = add i64 %t867, %t872
  store i64 %t875, ptr %l44, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s34, ptr %l2, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) })
  br label %bb163
bb163:
  store ptr %l2, ptr %l399, !tbaa !29
  %t878 = load ptr, ptr %l0, !tbaa !29
  store ptr %t878, ptr %l400, !tbaa !29
  %t879 = load ptr, ptr %l0, !tbaa !29
  %t881 = getelementptr %"compiler/check:Checker", ptr %t879, i32 0, i32 1
  %t882 = load ptr, ptr %t881, !tbaa !29
  %t883 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t884 = load i32, ptr %l3, !tbaa !23
  %t885 = load i64, ptr %l44, !tbaa !24
  %t890 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %t882, i64 %t883, i32 %t884, i64 %t885, i64 0)
  store i32 %t890, ptr %l406
  br label %bb164
bb164:
  %t891 = load ptr, ptr %l400, !tbaa !29
  %t892 = load i32, ptr %l406, !tbaa !23
  %t893 = call { i64, ptr } @compiler_2fexplain_2eattrsBefore(ptr %v0, ptr %s34, ptr %t891, i32 %t892)
  store { i64, ptr } %t893, ptr %l407
  br label %bb165
bb165:
  %t894 = load { i64, ptr }, ptr %l407, !tbaa !27
  %t895 = extractvalue { i64, ptr } %t894, 0
  %t896 = extractvalue { i64, ptr } %t894, 1
  %t897 = mul i64 %t895, 1
  %t898 = call ptr @__olang_scope_alloc(ptr %s34, i64 %t897)
  call void @llvm.memcpy.p0.p0.i64(ptr %t898, ptr %t896, i64 %t897, i1 false)
  %t899 = insertvalue { i64, ptr } undef, i64 %t895, 0
  %t900 = insertvalue { i64, ptr } %t899, ptr %t898, 1
  %t901 = load ptr, ptr %l399, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s34, ptr %t901, { i64, ptr } %t900)
  br label %bb166
bb166:
  store ptr %l2, ptr %l409, !tbaa !29
  %t903 = load ptr, ptr %l5, !tbaa !29
  %t904 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t904, ptr %l411, !tbaa !27
  %t905 = load i64, ptr %l44, !tbaa !24
  %t907 = getelementptr { i64, ptr }, ptr %l411, i32 0, i32 1
  %t908 = load ptr, ptr %t907, !tbaa !27
  %t909 = getelementptr i32, ptr %t908, i64 %t905
  %t910 = load i32, ptr %t909, !tbaa !33
  %t913 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t903, i32 %t910)
  store { i64, ptr } %t913, ptr %l414
  br label %bb167
bb167:
  %t914 = load ptr, ptr %l409, !tbaa !29
  %t915 = load { i64, ptr }, ptr %l414, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t914, { i64, ptr } %t915)
  br label %bb168
bb168:
  %t916 = load i64, ptr %l44, !tbaa !24
  %t917 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t919 = extractvalue { i64, ptr } %t917, 0
  %t922 = icmp slt i64 %t916, %t919
  br i1 %t922, label %bb169, label %bb170
bb169:
  %t924 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t924, ptr %l420, !tbaa !27
  %t925 = load i64, ptr %l44, !tbaa !24
  %t927 = getelementptr { i64, ptr }, ptr %l420, i32 0, i32 1
  %t928 = load ptr, ptr %t927, !tbaa !27
  %t929 = getelementptr i32, ptr %t928, i64 %t925
  %t930 = load i32, ptr %t929, !tbaa !33
  %t932 = icmp ne i32 %t930, 0
  store i1 %t932, ptr %l419, !tbaa !21
  br label %bb171
bb170:
  store i1 false, ptr %l419, !tbaa !21
  br label %bb171
bb171:
  %t934 = load i1, ptr %l419, !tbaa !21
  br i1 %t934, label %bb172, label %bb173
bb172:
  %t935 = load ptr, ptr %l0, !tbaa !29
  %t936 = load i32, ptr %l1, !tbaa !23
  %t937 = load i32, ptr %l3, !tbaa !23
  %t938 = load i64, ptr %l44, !tbaa !24
  call void @compiler_2fexplain_2epushPayload(ptr %s0, ptr %v0, ptr %l2, ptr %t935, i32 %t936, i32 %t937, i64 %t938)
  br label %bb174
bb173:
  br label %bb175
bb174:
  br label %bb175
bb175:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb176
bb176:
  call void @__olang_scope_close(ptr %s34)
  br label %bb177
bb177:
  %t945 = load i64, ptr %l43, !tbaa !24
  %t947 = add i64 %t945, 1
  store i64 %t947, ptr %l43, !tbaa !24
  br label %bb159
bb178:
  call void @__olang_scope_close(ptr %s31)
  br label %bb297
bb179:
  %t949 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t951 = trunc i64 4 to i32
  %t952 = icmp eq i32 %t949, %t951
  br i1 %t952, label %bb180, label %bb181
bb180:
  br label %bb182
bb181:
  br label %bb232
bb182:
  store %olang.scope zeroinitializer, ptr %s37
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t956 = getelementptr %"compiler/check:Checker", ptr %t954, i32 0, i32 1
  %t957 = load ptr, ptr %t956, !tbaa !29
  %t959 = getelementptr %"compiler/generic:Program", ptr %t957, i32 0, i32 2
  %t960 = load i32, ptr %l3, !tbaa !23
  %t963 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t959, i32 %t960)
  store i32 %t963, ptr %l438
  br label %bb183
bb183:
  %t964 = load i32, ptr %l438, !tbaa !23
  store i32 %t964, ptr %l45, !tbaa !23
  store ptr %l2, ptr %l439, !tbaa !29
  %t965 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t965, ptr %l440, !tbaa !27
  %t966 = load ptr, ptr %l0, !tbaa !29
  %t967 = load i32, ptr %l3, !tbaa !23
  %t970 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s37, ptr %t966, i32 %t967)
  store { i64, ptr } %t970, ptr %l443
  br label %bb184
bb184:
  %t971 = load ptr, ptr %l0, !tbaa !29
  %t973 = getelementptr %"compiler/check:Checker", ptr %t971, i32 0, i32 1
  %t974 = load ptr, ptr %t973, !tbaa !29
  %t975 = load i32, ptr %l3, !tbaa !23
  %t978 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t974, i32 %t975)
  store i1 %t978, ptr %l447
  br label %bb185
bb185:
  %t979 = load i1, ptr %l447, !tbaa !21
  br i1 %t979, label %bb186, label %bb187
bb186:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l448, !tbaa !27
  br label %bb188
bb187:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, ptr %l448, !tbaa !27
  br label %bb188
bb188:
  %t980 = load ptr, ptr %l0, !tbaa !29
  %t982 = getelementptr %"compiler/check:Checker", ptr %t980, i32 0, i32 1
  %t983 = load ptr, ptr %t982, !tbaa !29
  %t985 = getelementptr %"compiler/generic:Program", ptr %t983, i32 0, i32 2
  %t986 = load i32, ptr %l45, !tbaa !23
  %t989 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t985, i32 %t986)
  store i32 %t989, ptr %l453
  br label %bb189
bb189:
  %t990 = load i32, ptr %l453, !range !{i32 0, i32 33}
  %t992 = trunc i64 21 to i32
  %t993 = icmp eq i32 %t990, %t992
  br i1 %t993, label %bb190, label %bb191
bb190:
  %t995 = load ptr, ptr %l0, !tbaa !29
  %t996 = load i32, ptr %l45, !tbaa !23
  %t999 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s37, ptr %t995, i32 %t996)
  store { i64, ptr } %t999, ptr %l459
  br label %bb192
bb191:
  %t1000 = load ptr, ptr %l0, !tbaa !29
  %t1001 = load i32, ptr %l45, !tbaa !23
  %t1004 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s37, ptr %t1000, i32 %t1001)
  store { i64, ptr } %t1004, ptr %l462
  br label %bb193
bb192:
  %t1005 = load { i64, ptr }, ptr %l459, !tbaa !27
  store { i64, ptr } %t1005, ptr %l456, !tbaa !27
  br label %bb194
bb193:
  %t1006 = load { i64, ptr }, ptr %l462, !tbaa !27
  store { i64, ptr } %t1006, ptr %l456, !tbaa !27
  br label %bb194
bb194:
  %t1007 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t1008 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  %t1009 = load { i64, ptr }, ptr %l440, !tbaa !27
  %t1010 = extractvalue { i64, ptr } %t1009, 1
  %t1011 = extractvalue { i64, ptr } %t1009, 0
  %t1012 = add i64 %t1008, %t1011
  %t1013 = load { i64, ptr }, ptr %l443, !tbaa !27
  %t1014 = extractvalue { i64, ptr } %t1013, 1
  %t1015 = extractvalue { i64, ptr } %t1013, 0
  %t1016 = add i64 %t1012, %t1015
  %t1017 = load { i64, ptr }, ptr %l448, !tbaa !27
  %t1018 = extractvalue { i64, ptr } %t1017, 1
  %t1019 = extractvalue { i64, ptr } %t1017, 0
  %t1020 = add i64 %t1016, %t1019
  %t1021 = load { i64, ptr }, ptr %l456, !tbaa !27
  %t1022 = extractvalue { i64, ptr } %t1021, 1
  %t1023 = extractvalue { i64, ptr } %t1021, 0
  %t1024 = add i64 %t1020, %t1023
  %t1025 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t1024)
  call void @olang_textcopy(ptr %t1025, ptr %t1007, i64 %t1008)
  %t1026 = getelementptr i8, ptr %t1025, i64 %t1008
  call void @olang_textcopy(ptr %t1026, ptr %t1010, i64 %t1011)
  %t1027 = getelementptr i8, ptr %t1026, i64 %t1011
  call void @olang_textcopy(ptr %t1027, ptr %t1014, i64 %t1015)
  %t1028 = getelementptr i8, ptr %t1027, i64 %t1015
  call void @olang_textcopy(ptr %t1028, ptr %t1018, i64 %t1019)
  %t1029 = getelementptr i8, ptr %t1028, i64 %t1019
  call void @olang_textcopy(ptr %t1029, ptr %t1022, i64 %t1023)
  %t1030 = insertvalue { i64, ptr } undef, i64 %t1024, 0
  %t1031 = insertvalue { i64, ptr } %t1030, ptr %t1025, 1
  %t1033 = extractvalue { i64, ptr } %t1031, 0
  %t1034 = extractvalue { i64, ptr } %t1031, 1
  %t1035 = mul i64 %t1033, 1
  %t1036 = call ptr @__olang_scope_alloc(ptr %s37, i64 %t1035)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1036, ptr %t1034, i64 %t1035, i1 false)
  %t1037 = insertvalue { i64, ptr } undef, i64 %t1033, 0
  %t1038 = insertvalue { i64, ptr } %t1037, ptr %t1036, 1
  %t1039 = load ptr, ptr %l439, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s37, ptr %t1039, { i64, ptr } %t1038)
  br label %bb195
bb195:
  %t1041 = load ptr, ptr %l0, !tbaa !29
  %t1043 = getelementptr %"compiler/check:Checker", ptr %t1041, i32 0, i32 1
  %t1044 = load ptr, ptr %t1043, !tbaa !29
  %t1045 = load i32, ptr %l1, !tbaa !23
  %t1048 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t1044, i32 %t1045)
  store ptr %t1048, ptr %l468
  br label %bb196
bb196:
  %t1049 = load ptr, ptr %l468, !tbaa !29
  store ptr %t1049, ptr %l46, !tbaa !29
  %t1050 = load ptr, ptr %l46, !tbaa !29
  %t1052 = icmp eq ptr %t1050, null
  br i1 %t1052, label %bb197, label %bb198
bb197:
  call void @__olang_check_failed(ptr @olang_loc_12615553f525a8d6_4928bb51d62e2722)
  unreachable
bb198:
  br label %bb199
bb199:
  %t1054 = load ptr, ptr %l46, !tbaa !29
  %t1057 = getelementptr %"compiler/ast:TypeDecl", ptr %t1054, i32 0, i32 3
  %t1058 = load ptr, ptr %t1057, !tbaa !29
  store ptr %t1058, ptr %l47, !tbaa !29
  %t1060 = load ptr, ptr %l47, !tbaa !29
  store ptr %t1060, ptr %l474, !tbaa !29
  store i1 false, ptr %l475, !tbaa !21
  %t1061 = load ptr, ptr %l474, !tbaa !29
  %t1062 = icmp ne ptr %t1061, null
  br i1 %t1062, label %bb200, label %bb201
bb200:
  %t1064 = load ptr, ptr %l474, !tbaa !29
  %t1065 = load i64, ptr %t1064, !range !{i64 0, i64 5}
  %t1067 = icmp eq i64 %t1065, 3
  store i1 %t1067, ptr %l475, !tbaa !21
  br label %bb201
bb201:
  %t1068 = load i1, ptr %l475, !tbaa !21
  br i1 %t1068, label %bb202, label %bb203
bb202:
  %t1069 = load ptr, ptr %l47, !tbaa !29
  %t1071 = getelementptr { i64, [6 x i64] }, ptr %t1069, i32 0, i32 1
  %t1072 = getelementptr { ptr, ptr }, ptr %t1071, i32 0, i32 1
  %t1073 = load ptr, ptr %t1072
  store ptr %t1073, ptr %l48, !tbaa !29
  br label %bb204
bb203:
  br label %bb225
bb204:
  %t1075 = load ptr, ptr %l48, !tbaa !29
  %t1077 = icmp eq ptr %t1075, null
  %t1079 = xor i1 %t1077, true
  br i1 %t1079, label %bb205, label %bb206
bb205:
  store %olang.scope zeroinitializer, ptr %s39
  %t1081 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1081, ptr %l483, !tbaa !29
  %t1082 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1082, ptr %l484, !tbaa !29
  %t1083 = load ptr, ptr %l0, !tbaa !29
  %t1085 = getelementptr %"compiler/check:Checker", ptr %t1083, i32 0, i32 1
  %t1086 = load ptr, ptr %t1085, !tbaa !29
  %t1087 = load i32, ptr %l3, !tbaa !23
  %t1090 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t1086, i32 %t1087)
  store i32 %t1090, ptr %l488
  br label %bb207
bb206:
  br label %bb225
bb207:
  %t1091 = load ptr, ptr %l48, !tbaa !29
  %t1093 = getelementptr %"compiler/ast:Func", ptr %t1091, i32 0, i32 3
  %t1094 = load ptr, ptr %t1093, !tbaa !29
  %t1096 = getelementptr %"compiler/ast:Sig", ptr %t1094, i32 0, i32 0
  %t1097 = load { i64, ptr }, ptr %t1096, !tbaa !27
  %t1098 = load ptr, ptr %l484, !tbaa !29
  %t1099 = load i32, ptr %l488, !tbaa !23
  %t1101 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %s39, ptr %v0, ptr %t1098, i32 %t1099, ptr null, { i64, ptr } %t1097)
  store i32 %t1101, ptr %l492
  br label %bb208
bb208:
  %t1102 = load ptr, ptr %l483, !tbaa !29
  %t1103 = load i32, ptr %l492, !tbaa !23
  %t1104 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s39, ptr %t1102, i32 %t1103)
  store { i64, ptr } %t1104, ptr %l493
  br label %bb209
bb209:
  %t1105 = load { i64, ptr }, ptr %l493, !tbaa !27
  store { i64, ptr } %t1105, ptr %l49, !tbaa !27
  %t1106 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1108 = call i64 @compiler_2fexplain_2efirstClose(ptr %s39, { i64, ptr } %t1106)
  store i64 %t1108, ptr %l495
  br label %bb210
bb210:
  %t1109 = load i64, ptr %l495, !tbaa !24
  store i64 %t1109, ptr %l50, !tbaa !24
  store ptr %l2, ptr %l496, !tbaa !29
  %t1110 = load i64, ptr %l50, !tbaa !24
  %t1112 = add i64 %t1110, 1
  store i64 %t1112, ptr %l498, !tbaa !24
  %t1113 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1114 = extractvalue { i64, ptr } %t1113, 0
  store i64 %t1114, ptr %l499, !tbaa !24
  %t1115 = icmp sge i64 2, 0
  br i1 %t1115, label %bb211, label %bb212
bb211:
  %t1117 = load i64, ptr %l498, !tbaa !24
  %t1118 = icmp sle i64 2, %t1117
  br i1 %t1118, label %bb213, label %bb214
bb212:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb213:
  %t1120 = load i64, ptr %l498, !tbaa !24
  %t1121 = load i64, ptr %l499, !tbaa !24
  %t1122 = icmp sle i64 %t1120, %t1121
  br i1 %t1122, label %bb215, label %bb216
bb214:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb215:
  %t1124 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t1125 = load ptr, ptr %t1124, !tbaa !27
  %t1126 = load i64, ptr %l498, !tbaa !24
  %t1127 = getelementptr i8, ptr %t1125, i64 2
  %t1128 = sub i64 %t1126, 2
  %t1129 = insertvalue { i64, ptr } undef, i64 %t1128, 0
  %t1130 = insertvalue { i64, ptr } %t1129, ptr %t1127, 1
  store { i64, ptr } %t1130, ptr %l503, !tbaa !27
  %t1131 = load i64, ptr %l50, !tbaa !24
  %t1133 = add i64 %t1131, 1
  store i64 %t1133, ptr %l505, !tbaa !24
  %t1134 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1136 = extractvalue { i64, ptr } %t1134, 0
  store i64 %t1136, ptr %l507, !tbaa !24
  %t1137 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t1138 = extractvalue { i64, ptr } %t1137, 0
  store i64 %t1138, ptr %l508, !tbaa !24
  %t1139 = load i64, ptr %l505, !tbaa !24
  %t1140 = icmp sge i64 %t1139, 0
  br i1 %t1140, label %bb217, label %bb218
bb216:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb217:
  %t1142 = load i64, ptr %l505, !tbaa !24
  %t1143 = load i64, ptr %l507, !tbaa !24
  %t1144 = icmp sle i64 %t1142, %t1143
  br i1 %t1144, label %bb219, label %bb220
bb218:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb219:
  %t1146 = load i64, ptr %l507, !tbaa !24
  %t1147 = load i64, ptr %l508, !tbaa !24
  %t1148 = icmp sle i64 %t1146, %t1147
  br i1 %t1148, label %bb221, label %bb222
bb220:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb221:
  %t1150 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t1151 = load ptr, ptr %t1150, !tbaa !27
  %t1152 = load i64, ptr %l505, !tbaa !24
  %t1153 = load i64, ptr %l507, !tbaa !24
  %t1154 = getelementptr i8, ptr %t1151, i64 %t1152
  %t1155 = sub i64 %t1153, %t1152
  %t1156 = insertvalue { i64, ptr } undef, i64 %t1155, 0
  %t1157 = insertvalue { i64, ptr } %t1156, ptr %t1154, 1
  %t1159 = call { i64, ptr } @compiler_2fexplain_2eerrorsAfter(ptr %s39, ptr %s39, { i64, ptr } %t1157)
  store { i64, ptr } %t1159, ptr %l513
  br label %bb223
bb222:
  call void @__olang_check_failed(ptr @olang_loc_d47c24bdc65fe2cb_f786417b6ea94537)
  unreachable
bb223:
  %t1160 = load { i64, ptr }, ptr %l513, !tbaa !27
  %t1161 = extractvalue { i64, ptr } %t1160, 0
  store i64 %t1161, ptr %l514, !tbaa !24
  %t1162 = load i64, ptr %l514, !tbaa !24
  %t1163 = mul i64 %t1162, 1
  %t1164 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1163)
  %t1165 = insertvalue { i64, ptr } undef, i64 %t1162, 0
  %t1166 = insertvalue { i64, ptr } %t1165, ptr %t1164, 1
  store { i64, ptr } %t1166, ptr %l515, !tbaa !27
  %t1167 = getelementptr { i64, ptr }, ptr %l515, i32 0, i32 1
  %t1168 = load ptr, ptr %t1167, !tbaa !27
  %t1169 = getelementptr { i64, ptr }, ptr %l513, i32 0, i32 1
  %t1170 = load ptr, ptr %t1169, !tbaa !27
  %t1171 = load i64, ptr %l514, !tbaa !24
  %t1172 = mul i64 %t1171, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1168, ptr %t1170, i64 %t1172, i1 false)
  %t1173 = load { i64, ptr }, ptr %l503, !tbaa !27
  %t1174 = extractvalue { i64, ptr } %t1173, 1
  %t1175 = extractvalue { i64, ptr } %t1173, 0
  %t1176 = load { i64, ptr }, ptr %l515, !tbaa !27
  %t1177 = extractvalue { i64, ptr } %t1176, 1
  %t1178 = extractvalue { i64, ptr } %t1176, 0
  %t1179 = add i64 %t1175, %t1178
  %t1180 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1179)
  call void @olang_textcopy(ptr %t1180, ptr %t1174, i64 %t1175)
  %t1181 = getelementptr i8, ptr %t1180, i64 %t1175
  call void @olang_textcopy(ptr %t1181, ptr %t1177, i64 %t1178)
  %t1182 = insertvalue { i64, ptr } undef, i64 %t1179, 0
  %t1183 = insertvalue { i64, ptr } %t1182, ptr %t1180, 1
  %t1185 = extractvalue { i64, ptr } %t1183, 0
  %t1186 = extractvalue { i64, ptr } %t1183, 1
  %t1187 = mul i64 %t1185, 1
  %t1188 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1187)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1188, ptr %t1186, i64 %t1187, i1 false)
  %t1189 = insertvalue { i64, ptr } undef, i64 %t1185, 0
  %t1190 = insertvalue { i64, ptr } %t1189, ptr %t1188, 1
  %t1191 = load ptr, ptr %l496, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s39, ptr %t1191, { i64, ptr } %t1190)
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s39)
  br label %bb230
bb225:
  br i1 true, label %bb226, label %bb227
bb226:
  br label %bb228
bb227:
  br label %bb229
bb228:
  br label %bb230
bb229:
  call void @__olang_check_failed(ptr @olang_loc_6531017cd55dbf94_87ab3d542028c5d8)
  unreachable
bb230:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb231
bb231:
  call void @__olang_scope_close(ptr %s37)
  br label %bb297
bb232:
  %t1194 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t1196 = trunc i64 0 to i32
  %t1197 = icmp eq i32 %t1194, %t1196
  br i1 %t1197, label %bb233, label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb296
bb235:
  store %olang.scope zeroinitializer, ptr %s42
  %t1199 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1199, ptr %l521, !tbaa !29
  %t1200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1200, ptr %l522, !tbaa !29
  %t1201 = load ptr, ptr %l0, !tbaa !29
  %t1203 = getelementptr %"compiler/check:Checker", ptr %t1201, i32 0, i32 1
  %t1204 = load ptr, ptr %t1203, !tbaa !29
  %t1205 = load i32, ptr %l3, !tbaa !23
  %t1208 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t1204, i32 %t1205)
  store i32 %t1208, ptr %l526
  br label %bb236
bb236:
  %t1209 = load ptr, ptr %l0, !tbaa !29
  %t1211 = getelementptr %"compiler/check:Checker", ptr %t1209, i32 0, i32 1
  %t1212 = load ptr, ptr %t1211, !tbaa !29
  %t1213 = load i32, ptr %l1, !tbaa !23
  %t1216 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t1212, i32 %t1213)
  store ptr %t1216, ptr %l530
  br label %bb237
bb237:
  %t1217 = load ptr, ptr %l530, !tbaa !29
  store ptr %t1217, ptr %l51, !tbaa !29
  %t1218 = load ptr, ptr %l51, !tbaa !29
  %t1220 = icmp eq ptr %t1218, null
  br i1 %t1220, label %bb238, label %bb239
bb238:
  call void @__olang_check_failed(ptr @olang_loc_fdc41c6a76f01a06_9680a398378cbf4a)
  unreachable
bb239:
  br label %bb240
bb240:
  %t1222 = load ptr, ptr %l51, !tbaa !29
  %t1224 = call { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %s42, ptr %t1222)
  store { i64, ptr } %t1224, ptr %l534
  br label %bb241
bb241:
  %t1225 = load ptr, ptr %l522, !tbaa !29
  %t1226 = load i32, ptr %l526, !tbaa !23
  %t1227 = load { i64, ptr }, ptr %l534, !tbaa !27
  %t1228 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %s42, ptr %s42, ptr %t1225, i32 %t1226, ptr null, { i64, ptr } %t1227)
  store i32 %t1228, ptr %l535
  br label %bb242
bb242:
  %t1229 = load ptr, ptr %l521, !tbaa !29
  %t1230 = load i32, ptr %l535, !tbaa !23
  %t1231 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s42, ptr %t1229, i32 %t1230)
  store { i64, ptr } %t1231, ptr %l536
  br label %bb243
bb243:
  %t1232 = load { i64, ptr }, ptr %l536, !tbaa !27
  store { i64, ptr } %t1232, ptr %l52, !tbaa !27
  %t1233 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1235 = call i64 @compiler_2fexplain_2efirstClose(ptr %s42, { i64, ptr } %t1233)
  store i64 %t1235, ptr %l538
  br label %bb244
bb244:
  %t1236 = load i64, ptr %l538, !tbaa !24
  store i64 %t1236, ptr %l53, !tbaa !24
  %t1237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1237, ptr %l539, !tbaa !29
  %t1238 = load i64, ptr %l53, !tbaa !24
  store i64 %t1238, ptr %l540, !tbaa !24
  %t1239 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1240 = extractvalue { i64, ptr } %t1239, 0
  store i64 %t1240, ptr %l541, !tbaa !24
  %t1241 = icmp sge i64 3, 0
  br i1 %t1241, label %bb245, label %bb246
bb245:
  %t1243 = load i64, ptr %l540, !tbaa !24
  %t1244 = icmp sle i64 3, %t1243
  br i1 %t1244, label %bb247, label %bb248
bb246:
  call void @__olang_check_failed(ptr @olang_loc_4a4f0a2a7fb90dfd_df3cc4daa7702d41)
  unreachable
bb247:
  %t1246 = load i64, ptr %l540, !tbaa !24
  %t1247 = load i64, ptr %l541, !tbaa !24
  %t1248 = icmp sle i64 %t1246, %t1247
  br i1 %t1248, label %bb249, label %bb250
bb248:
  call void @__olang_check_failed(ptr @olang_loc_4a4f0a2a7fb90dfd_df3cc4daa7702d41)
  unreachable
bb249:
  %t1250 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t1251 = load ptr, ptr %t1250, !tbaa !27
  %t1252 = load i64, ptr %l540, !tbaa !24
  %t1253 = getelementptr i8, ptr %t1251, i64 3
  %t1254 = sub i64 %t1252, 3
  %t1255 = insertvalue { i64, ptr } undef, i64 %t1254, 0
  %t1256 = insertvalue { i64, ptr } %t1255, ptr %t1253, 1
  store { i64, ptr } %t1256, ptr %l545, !tbaa !27
  %t1257 = load ptr, ptr %l0, !tbaa !29
  %t1259 = getelementptr %"compiler/check:Checker", ptr %t1257, i32 0, i32 1
  %t1260 = load ptr, ptr %t1259, !tbaa !29
  %t1261 = load i32, ptr %l1, !tbaa !23
  %t1264 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t1260, i32 %t1261)
  store ptr %t1264, ptr %l549
  br label %bb251
bb250:
  call void @__olang_check_failed(ptr @olang_loc_4a4f0a2a7fb90dfd_df3cc4daa7702d41)
  unreachable
bb251:
  %t1265 = load ptr, ptr %l549, !tbaa !29
  store ptr %t1265, ptr %l54, !tbaa !29
  %t1266 = load ptr, ptr %l54, !tbaa !29
  %t1268 = icmp eq ptr %t1266, null
  br i1 %t1268, label %bb252, label %bb253
bb252:
  call void @__olang_check_failed(ptr @olang_loc_5a4859640df0add8_178cc34ee3f1765c)
  unreachable
bb253:
  br label %bb254
bb254:
  %t1270 = load ptr, ptr %l54, !tbaa !29
  %t1272 = call { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %s42, ptr %t1270)
  store { i64, ptr } %t1272, ptr %l553
  br label %bb255
bb255:
  %t1273 = load ptr, ptr %l0, !tbaa !29
  %t1275 = getelementptr %"compiler/check:Checker", ptr %t1273, i32 0, i32 1
  %t1276 = load ptr, ptr %t1275, !tbaa !29
  %t1277 = load i32, ptr %l1, !tbaa !23
  %t1280 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t1276, i32 %t1277)
  store i64 %t1280, ptr %l557
  br label %bb256
bb256:
  %t1281 = load ptr, ptr %l539, !tbaa !29
  %t1282 = load { i64, ptr }, ptr %l545, !tbaa !27
  %t1283 = load { i64, ptr }, ptr %l553, !tbaa !27
  %t1284 = load i64, ptr %l557, !tbaa !24
  %t1285 = call { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %s42, ptr %s42, ptr %s42, ptr %t1281, { i64, ptr } %t1282, { i64, ptr } %t1283, i64 %t1284, i64 0)
  store { i64, ptr } %t1285, ptr %l558
  br label %bb257
bb257:
  %t1286 = load { i64, ptr }, ptr %l558, !tbaa !27
  store { i64, ptr } %t1286, ptr %l55, !tbaa !27
  store ptr %l2, ptr %l559, !tbaa !29
  %t1287 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t1287, ptr %l560, !tbaa !27
  %t1288 = load ptr, ptr %l0, !tbaa !29
  %t1289 = load i32, ptr %l3, !tbaa !23
  %t1292 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s42, ptr %t1288, i32 %t1289)
  store { i64, ptr } %t1292, ptr %l563
  br label %bb258
bb258:
  %t1293 = load ptr, ptr %l0, !tbaa !29
  %t1295 = getelementptr %"compiler/check:Checker", ptr %t1293, i32 0, i32 1
  %t1296 = load ptr, ptr %t1295, !tbaa !29
  %t1298 = getelementptr %"compiler/generic:Program", ptr %t1296, i32 0, i32 2
  %t1299 = load i32, ptr %l3, !tbaa !23
  %t1302 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t1298, i32 %t1299)
  store i1 %t1302, ptr %l568
  br label %bb259
bb259:
  %t1303 = load i1, ptr %l568, !tbaa !21
  br i1 %t1303, label %bb260, label %bb261
bb260:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l569, !tbaa !27
  br label %bb262
bb261:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l569, !tbaa !27
  br label %bb262
bb262:
  %t1304 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t1304, ptr %l570, !tbaa !27
  %t1305 = load i64, ptr %l53, !tbaa !24
  %t1307 = add i64 %t1305, 1
  store i64 %t1307, ptr %l572, !tbaa !24
  %t1308 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1310 = extractvalue { i64, ptr } %t1308, 0
  store i64 %t1310, ptr %l574, !tbaa !24
  %t1311 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t1312 = extractvalue { i64, ptr } %t1311, 0
  store i64 %t1312, ptr %l575, !tbaa !24
  %t1313 = load i64, ptr %l572, !tbaa !24
  %t1314 = icmp sge i64 %t1313, 0
  br i1 %t1314, label %bb263, label %bb264
bb263:
  %t1316 = load i64, ptr %l572, !tbaa !24
  %t1317 = load i64, ptr %l574, !tbaa !24
  %t1318 = icmp sle i64 %t1316, %t1317
  br i1 %t1318, label %bb265, label %bb266
bb264:
  call void @__olang_check_failed(ptr @olang_loc_731041b9517c977f_a1670725ff3ccc5b)
  unreachable
bb265:
  %t1320 = load i64, ptr %l574, !tbaa !24
  %t1321 = load i64, ptr %l575, !tbaa !24
  %t1322 = icmp sle i64 %t1320, %t1321
  br i1 %t1322, label %bb267, label %bb268
bb266:
  call void @__olang_check_failed(ptr @olang_loc_731041b9517c977f_a1670725ff3ccc5b)
  unreachable
bb267:
  %t1324 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t1325 = load ptr, ptr %t1324, !tbaa !27
  %t1326 = load i64, ptr %l572, !tbaa !24
  %t1327 = load i64, ptr %l574, !tbaa !24
  %t1328 = getelementptr i8, ptr %t1325, i64 %t1326
  %t1329 = sub i64 %t1327, %t1326
  %t1330 = insertvalue { i64, ptr } undef, i64 %t1329, 0
  %t1331 = insertvalue { i64, ptr } %t1330, ptr %t1328, 1
  %t1333 = call { i64, ptr } @compiler_2fexplain_2eerrorsAfter(ptr %s42, ptr %s42, { i64, ptr } %t1331)
  store { i64, ptr } %t1333, ptr %l580
  br label %bb269
bb268:
  call void @__olang_check_failed(ptr @olang_loc_731041b9517c977f_a1670725ff3ccc5b)
  unreachable
bb269:
  %t1334 = load { i64, ptr }, ptr %l580, !tbaa !27
  %t1335 = extractvalue { i64, ptr } %t1334, 0
  store i64 %t1335, ptr %l581, !tbaa !24
  %t1336 = load i64, ptr %l581, !tbaa !24
  %t1337 = mul i64 %t1336, 1
  %t1338 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1337)
  %t1339 = insertvalue { i64, ptr } undef, i64 %t1336, 0
  %t1340 = insertvalue { i64, ptr } %t1339, ptr %t1338, 1
  store { i64, ptr } %t1340, ptr %l582, !tbaa !27
  %t1341 = getelementptr { i64, ptr }, ptr %l582, i32 0, i32 1
  %t1342 = load ptr, ptr %t1341, !tbaa !27
  %t1343 = getelementptr { i64, ptr }, ptr %l580, i32 0, i32 1
  %t1344 = load ptr, ptr %t1343, !tbaa !27
  %t1345 = load i64, ptr %l581, !tbaa !24
  %t1346 = mul i64 %t1345, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t1342, ptr %t1344, i64 %t1346, i1 false)
  %t1347 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t1348 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  %t1349 = load { i64, ptr }, ptr %l560, !tbaa !27
  %t1350 = extractvalue { i64, ptr } %t1349, 1
  %t1351 = extractvalue { i64, ptr } %t1349, 0
  %t1352 = add i64 %t1348, %t1351
  %t1353 = load { i64, ptr }, ptr %l563, !tbaa !27
  %t1354 = extractvalue { i64, ptr } %t1353, 1
  %t1355 = extractvalue { i64, ptr } %t1353, 0
  %t1356 = add i64 %t1352, %t1355
  %t1357 = load { i64, ptr }, ptr %l569, !tbaa !27
  %t1358 = extractvalue { i64, ptr } %t1357, 1
  %t1359 = extractvalue { i64, ptr } %t1357, 0
  %t1360 = add i64 %t1356, %t1359
  %t1361 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t1362 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  %t1363 = add i64 %t1360, %t1362
  %t1364 = load { i64, ptr }, ptr %l570, !tbaa !27
  %t1365 = extractvalue { i64, ptr } %t1364, 1
  %t1366 = extractvalue { i64, ptr } %t1364, 0
  %t1367 = add i64 %t1363, %t1366
  %t1368 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t1369 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  %t1370 = add i64 %t1367, %t1369
  %t1371 = load { i64, ptr }, ptr %l582, !tbaa !27
  %t1372 = extractvalue { i64, ptr } %t1371, 1
  %t1373 = extractvalue { i64, ptr } %t1371, 0
  %t1374 = add i64 %t1370, %t1373
  %t1375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t1376 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t1377 = add i64 %t1374, %t1376
  %t1378 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1377)
  call void @olang_textcopy(ptr %t1378, ptr %t1347, i64 %t1348)
  %t1379 = getelementptr i8, ptr %t1378, i64 %t1348
  call void @olang_textcopy(ptr %t1379, ptr %t1350, i64 %t1351)
  %t1380 = getelementptr i8, ptr %t1379, i64 %t1351
  call void @olang_textcopy(ptr %t1380, ptr %t1354, i64 %t1355)
  %t1381 = getelementptr i8, ptr %t1380, i64 %t1355
  call void @olang_textcopy(ptr %t1381, ptr %t1358, i64 %t1359)
  %t1382 = getelementptr i8, ptr %t1381, i64 %t1359
  call void @olang_textcopy(ptr %t1382, ptr %t1361, i64 %t1362)
  %t1383 = getelementptr i8, ptr %t1382, i64 %t1362
  call void @olang_textcopy(ptr %t1383, ptr %t1365, i64 %t1366)
  %t1384 = getelementptr i8, ptr %t1383, i64 %t1366
  call void @olang_textcopy(ptr %t1384, ptr %t1368, i64 %t1369)
  %t1385 = getelementptr i8, ptr %t1384, i64 %t1369
  call void @olang_textcopy(ptr %t1385, ptr %t1372, i64 %t1373)
  %t1386 = getelementptr i8, ptr %t1385, i64 %t1373
  call void @olang_textcopy(ptr %t1386, ptr %t1375, i64 %t1376)
  %t1387 = insertvalue { i64, ptr } undef, i64 %t1377, 0
  %t1388 = insertvalue { i64, ptr } %t1387, ptr %t1378, 1
  %t1390 = extractvalue { i64, ptr } %t1388, 0
  %t1391 = extractvalue { i64, ptr } %t1388, 1
  %t1392 = mul i64 %t1390, 1
  %t1393 = call ptr @__olang_scope_alloc(ptr %s42, i64 %t1392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1393, ptr %t1391, i64 %t1392, i1 false)
  %t1394 = insertvalue { i64, ptr } undef, i64 %t1390, 0
  %t1395 = insertvalue { i64, ptr } %t1394, ptr %t1393, 1
  %t1396 = load ptr, ptr %l559, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s42, ptr %t1396, { i64, ptr } %t1395)
  br label %bb270
bb270:
  %t1398 = load ptr, ptr %l0, !tbaa !29
  %t1400 = getelementptr %"compiler/check:Checker", ptr %t1398, i32 0, i32 1
  %t1401 = load ptr, ptr %t1400, !tbaa !29
  %t1402 = load i32, ptr %l1, !tbaa !23
  %t1405 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t1401, i32 %t1402)
  store ptr %t1405, ptr %l588
  br label %bb271
bb271:
  %t1406 = load ptr, ptr %l588, !tbaa !29
  store ptr %t1406, ptr %l56, !tbaa !29
  %t1407 = load ptr, ptr %l56, !tbaa !29
  %t1409 = icmp eq ptr %t1407, null
  br i1 %t1409, label %bb272, label %bb273
bb272:
  call void @__olang_check_failed(ptr @olang_loc_b306a27fe8c8780a_4c00da05a7c42646)
  unreachable
bb273:
  br label %bb274
bb274:
  %t1411 = load ptr, ptr %l56, !tbaa !29
  %t1414 = getelementptr %"compiler/ast:TypeDecl", ptr %t1411, i32 0, i32 3
  %t1415 = load ptr, ptr %t1414, !tbaa !29
  store ptr %t1415, ptr %l57, !tbaa !29
  %t1417 = load ptr, ptr %l57, !tbaa !29
  store ptr %t1417, ptr %l594, !tbaa !29
  store i1 false, ptr %l595, !tbaa !21
  %t1418 = load ptr, ptr %l594, !tbaa !29
  %t1419 = icmp ne ptr %t1418, null
  br i1 %t1419, label %bb275, label %bb276
bb275:
  %t1421 = load ptr, ptr %l594, !tbaa !29
  %t1422 = load i64, ptr %t1421, !range !{i64 0, i64 5}
  %t1424 = icmp eq i64 %t1422, 0
  store i1 %t1424, ptr %l595, !tbaa !21
  br label %bb276
bb276:
  %t1425 = load i1, ptr %l595, !tbaa !21
  br i1 %t1425, label %bb277, label %bb278
bb277:
  %t1426 = load ptr, ptr %l57, !tbaa !29
  %t1428 = getelementptr { i64, [6 x i64] }, ptr %t1426, i32 0, i32 1
  %t1429 = getelementptr { ptr }, ptr %t1428, i32 0, i32 0
  %t1430 = load ptr, ptr %t1429
  store ptr %t1430, ptr %l58, !tbaa !29
  br label %bb279
bb278:
  br label %bb288
bb279:
  %t1432 = load ptr, ptr %l58, !tbaa !29
  %t1434 = getelementptr %"compiler/ast:StructBody", ptr %t1432, i32 0, i32 1
  %t1435 = load ptr, ptr %t1434, !tbaa !29
  %t1437 = icmp eq ptr %t1435, null
  %t1439 = xor i1 %t1437, true
  br i1 %t1439, label %bb280, label %bb281
bb280:
  store %olang.scope zeroinitializer, ptr %s45
  store ptr %l2, ptr %l604, !tbaa !29
  %t1441 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1441, ptr %l605, !tbaa !29
  %t1442 = load ptr, ptr %l58, !tbaa !29
  %t1444 = getelementptr %"compiler/ast:StructBody", ptr %t1442, i32 0, i32 1
  %t1445 = load ptr, ptr %t1444, !tbaa !29
  %t1447 = icmp eq ptr %t1445, null
  br i1 %t1447, label %bb282, label %bb283
bb281:
  br label %bb287
bb282:
  call void @__olang_check_failed(ptr @olang_loc_5d61f9982e85490b_19b97e7dc205ed37)
  unreachable
bb283:
  br label %bb284
bb284:
  %t1449 = load ptr, ptr %l58, !tbaa !29
  %t1451 = getelementptr %"compiler/ast:StructBody", ptr %t1449, i32 0, i32 1
  %t1452 = load ptr, ptr %t1451, !tbaa !29
  store ptr %t1452, ptr %l610, !tbaa !29
  %t1453 = load ptr, ptr %l0, !tbaa !29
  %t1455 = getelementptr %"compiler/check:Checker", ptr %t1453, i32 0, i32 1
  %t1456 = load ptr, ptr %t1455, !tbaa !29
  %t1457 = load i32, ptr %l1, !tbaa !23
  %t1460 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t1456, i32 %t1457)
  store i64 %t1460, ptr %l614
  br label %bb285
bb285:
  %t1461 = load ptr, ptr %l604, !tbaa !29
  %t1462 = load ptr, ptr %l605, !tbaa !29
  %t1463 = load ptr, ptr %l610, !tbaa !29
  %t1464 = load i64, ptr %l614, !tbaa !24
  call void @compiler_2fexplain_2econtract(ptr %s0, ptr %v0, ptr %v0, ptr %s45, ptr %t1461, ptr %t1462, ptr %t1463, i64 %t1464, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d73, i32 0, i32 1) })
  br label %bb286
bb286:
  call void @__olang_scope_close(ptr %s45)
  br label %bb287
bb287:
  br label %bb293
bb288:
  br i1 true, label %bb289, label %bb290
bb289:
  br label %bb291
bb290:
  br label %bb292
bb291:
  br label %bb293
bb292:
  call void @__olang_check_failed(ptr @olang_loc_3df602fba2cf8b3_3b7d9b6ebe07120f)
  unreachable
bb293:
  %t1465 = load ptr, ptr %l0, !tbaa !29
  %t1466 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2egenLine(ptr %s0, ptr %v0, ptr %l2, ptr %t1465, i32 %t1466)
  br label %bb294
bb294:
  %t1470 = load ptr, ptr %l0, !tbaa !29
  %t1471 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2efields(ptr %s0, ptr %v0, ptr %l2, ptr %t1470, i32 %t1471)
  br label %bb295
bb295:
  call void @__olang_scope_close(ptr %s42)
  br label %bb297
bb296:
  call void @__olang_check_failed(ptr @olang_loc_94295b17b6f8c92c_4d0fd7ff7c3c10d0)
  unreachable
bb297:
  %t1475 = load ptr, ptr %l0, !tbaa !29
  %t1476 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2ebuilders(ptr %s0, ptr %v0, ptr %l2, ptr %t1475, i32 %t1476)
  br label %bb298
bb298:
  %t1480 = load ptr, ptr %l0, !tbaa !29
  %t1481 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2emethods(ptr %s0, ptr %v0, ptr %l2, ptr %t1480, i32 %t1481)
  br label %bb299
bb299:
  %t1485 = load ptr, ptr %l0, !tbaa !29
  %t1486 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2etraitsMet(ptr %s0, ptr %v0, ptr %l2, ptr %t1485, i32 %t1486)
  br label %bb300
bb300:
  %t1491 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t1491, ptr %l631
  br label %bb301
bb301:
  call void @__olang_scope_close(ptr %s0)
  %t1492 = load { i64, ptr }, ptr %l631, !tbaa !27
  store { i64, ptr } %t1492, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fexplain_2etypeNamed(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l16 = alloca i32
  %l21 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 3
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t19 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %t15, { i64, ptr } %a2)
  store i32 %t19, ptr %l12
  br label %bb1
bb1:
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i32, ptr %l12, !tbaa !23
  %t23 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %t20, i64 %t21, i32 %t22)
  store i64 %t23, ptr %l13
  br label %bb2
bb2:
  %t24 = load i64, ptr %l13, !tbaa !24
  store i64 %t24, ptr %l3, !tbaa !24
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  br i1 %t27, label %bb3, label %bb4
bb3:
  store i32 -1, ptr %l16, !tbaa !23
  br label %bb6
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t38 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t32, i64 %t33, i64 %t34)
  store i32 %t38, ptr %l21
  br label %bb5
bb5:
  %t39 = load i32, ptr %l21, !tbaa !23
  store i32 %t39, ptr %l16, !tbaa !23
  br label %bb6
bb6:
  %t40 = load i32, ptr %l16, !tbaa !23
  store i32 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d2 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"   " }>, align 8
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn&(" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d9 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"# effects: " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"weak " }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"    # " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d28 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"    instance " }>, align 8
@.d29 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d31 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d32 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d34 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d35 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"# scopes: " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d37 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d38 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"    meets " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d41 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d42 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d44 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"extern type " }>, align 8
@.d45 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error " }>, align 8
@.d47 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"   # declared where it is raised (R3b)\0A" }>, align 8
@.d48 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d49 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" error" }>, align 8
@.d50 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d52 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d53 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d54 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" trait" }>, align 8
@.d56 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" extends " }>, align 8
@.d57 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d61 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" enum\0A" }>, align 8
@.d63 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d64 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" extends " }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d66 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d67 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" packed" }>, align 8
@.d68 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d69 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d70 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" struct(" }>, align 8
@.d71 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d72 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d73 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
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
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H6c17f05b74a2ea6689cdfc72c602a991(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/effects:Facts" @compiler_2feffects_3aFacts_2ector(ptr %v0)
@olang_loc_91de52063b71ca44_3ab230bc0b47a90 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i64 @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eModuleOf(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feffects_2eMerge(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fexplain_2ecapsShown(ptr %v0, { i64, ptr } %a0, i1 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
@G_2ecompiler_2feffects_2eCapCount = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2feffects_2eCapText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fexplain_2eglobalItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, %"compiler/names:Entry" %a3)
declare { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_654ac6e7d4d962a_57fceb1b72d2ae56 = external constant [0 x i8]
@olang_loc_d0280248a738559f_8af1b7358df9134b = external constant [0 x i8]
@olang_loc_5177bd7d484351dd_5d0dbb04dc509331 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_559eb4fe50ed7f04_5fd8618740f13e0 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_98928cfde749f632_385db913ea7e7976 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2feffects_2eDescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_8f9ce818ff296c0e_932c83e6c6076d82 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1ab09a44950d5518_36fac77ffd6769bc = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2b8cc73a4c7e88bd_6bb5eb1cd2f38021 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4)
@olang_loc_b65b7d917c440185_24d12a03c9296209 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fexplain_2eattrLines(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i64 %a3)
declare void @compiler_2fexplain_2econtract(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4)
declare void @compiler_2fexplain_2enoValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4, { i64, ptr } %a5)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fneeds_2eLines(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_83191eb44b7384_f52b74cb91a30b30 = external constant [0 x i8]
@olang_loc_b6495ab5ccd815f1_8b49adc496fcf80d = external constant [0 x i8]
@olang_loc_f77a02592a0a9372_4ac4ccf0828b43ae = external constant [0 x i8]
declare i64 @compiler_2fexplain_2ewrittenMethod(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
@olang_loc_85b05f6e7a1e78ef_648f77bc98c82cab = external constant [0 x i8]
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
@olang_loc_24a71f1628ab63b4_59f385be22d57b28 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H1e7e683fc0332c06b6c705cd46691777(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fexplain_2ewordPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
@olang_loc_85d3fea1d96f25de_7b2f6a0f1962587a = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_a185ff5f85e75430_c999a61f9f0eedcc = external constant [0 x i8]
@olang_loc_60d3429e949e0f0f_c9b6e73225d64a3b = external constant [0 x i8]
@olang_loc_9e7f77c067ece8f1_2a0afb54e00d35 = external constant [0 x i8]
@olang_loc_7b101762ff8ffda9_ced5d247097fb61d = external constant [0 x i8]
@olang_loc_e7cf316846733e6c_5d444c1e6a143730 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_4e8cd845c965dada_c1eb458e34ff6f7e = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2fexplain_2egenLine(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fexplain_2epushPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_12615553f525a8d6_4928bb51d62e2722 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fexplain_2efirstClose(ptr %v0, { i64, ptr } %a0)
@olang_loc_d47c24bdc65fe2cb_f786417b6ea94537 = external constant [0 x i8]
@olang_loc_6531017cd55dbf94_87ab3d542028c5d8 = external constant [0 x i8]
@olang_loc_fdc41c6a76f01a06_9680a398378cbf4a = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_4a4f0a2a7fb90dfd_df3cc4daa7702d41 = external constant [0 x i8]
@olang_loc_5a4859640df0add8_178cc34ee3f1765c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_731041b9517c977f_a1670725ff3ccc5b = external constant [0 x i8]
@olang_loc_b306a27fe8c8780a_4c00da05a7c42646 = external constant [0 x i8]
@olang_loc_5d61f9982e85490b_19b97e7dc205ed37 = external constant [0 x i8]
@olang_loc_3df602fba2cf8b3_3b7d9b6ebe07120f = external constant [0 x i8]
@olang_loc_94295b17b6f8c92c_4d0fd7ff7c3c10d0 = external constant [0 x i8]
declare void @compiler_2fexplain_2ebuilders(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare void @compiler_2fexplain_2emethods(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)

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
