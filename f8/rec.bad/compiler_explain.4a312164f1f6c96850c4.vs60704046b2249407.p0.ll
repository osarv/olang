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
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/effects:Facts" = type { i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i1, i64, [6 x i64], i64, i64 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/explain:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fsBody", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:instTree", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fsBody" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:instTree" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
@G_2ecompiler_2fexplain_2eLongValue = constant <{ [8 x i8] }> <{ [8 x i8] c"\90\01\00\00\00\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2fexplain_2eAsValueWhere(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t5, ptr %l8, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l9, !tbaa !24
  %t8 = load i64, ptr %l9, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t19, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 3
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v1, ptr %v0, ptr %s0, ptr %t21, i64 %t22, ptr %t32)
  store { i64, ptr } %t36, ptr %l17
  br label %bb4
bb4:
  %t37 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eValueCovered(ptr %v1, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l24
  br label %bb7
bb6:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t49 = load i1, ptr %l24, !tbaa !21
  %t50 = xor i1 %t49, true
  store i1 %t50, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t52 = load i1, ptr %l21, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t55 = call { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t53, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store { i64, ptr } %t55, ptr %l27
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t56 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t58 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t65 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t64)
  call void @olang_textcopy(ptr %t65, ptr %t56, i64 %t57)
  %t66 = getelementptr i8, ptr %t65, i64 %t57
  call void @olang_textcopy(ptr %t66, ptr %t59, i64 %t60)
  %t67 = getelementptr i8, ptr %t66, i64 %t60
  call void @olang_textcopy(ptr %t67, ptr %t62, i64 %t63)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t65, 1
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t69, ptr %rv
  br label %ret
bb12:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eGivesHeld(ptr %v1, ptr %s0, ptr %t71, i64 %t72)
  store { i64, ptr } %t75, ptr %l31
  br label %bb13
bb13:
  %t76 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t76, ptr %l4, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t79, ptr %l33
  br label %bb14
bb14:
  %t80 = load i1, ptr %l33, !tbaa !21
  br i1 %t80, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t81, ptr %l35, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  store i64 %t83, ptr %l36, !tbaa !24
  %t84 = load i64, ptr %l36, !tbaa !24
  %t85 = mul i64 %t84, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t85)
  %t87 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  store { i64, ptr } %t88, ptr %l37, !tbaa !27
  %t89 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l36, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  %t95 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t95, ptr %l35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t96 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t96, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t97 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t98 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t101 = extractvalue { i64, ptr } %t97, 1
  %t102 = extractvalue { i64, ptr } %t97, 0
  %t103 = add i64 %t99, %t102
  %t104 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 73, ptr getelementptr inbounds (<{ i64, [73 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t106 = add i64 %t103, %t105
  %t107 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t98, i64 %t99)
  %t108 = getelementptr i8, ptr %t107, i64 %t99
  call void @olang_textcopy(ptr %t108, ptr %t101, i64 %t102)
  %t109 = getelementptr i8, ptr %t108, i64 %t102
  call void @olang_textcopy(ptr %t109, ptr %t104, i64 %t105)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t107, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fexplain_2eBuilderOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l15 = alloca i32
  %l24 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %t4, i64 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb5
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l15
  br label %bb4
bb4:
  %t26 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t28 = trunc i64 18 to i32
  %t29 = icmp eq i32 %t26, %t28
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t33 = load i1, ptr %l10, !tbaa !21
  br i1 %t33, label %bb6, label %bb7
bb6:
  store i32 -1, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l24
  br label %bb9
bb9:
  %t45 = load i32, ptr %l24, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fexplain_2eBuilders(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca ptr
  %l47 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i32
  %l61 = alloca { i64, ptr }
  %l65 = alloca i1
  %l69 = alloca i1
  %l71 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t6)
  br label %bb2
bb2:
  store i64 0, ptr %l4, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l17
  br label %bb3
bb3:
  %t14 = load i64, ptr %l17, !tbaa !24
  store i64 %t14, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb6:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l24, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t41 = load i64, ptr %l24, !tbaa !24
  store i64 %t41, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l21, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb12:
  br label %bb13
bb13:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  store i64 %t59, ptr %l9, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l9, !tbaa !24
  %t68 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t64, i64 %t65)
  store ptr %t68, ptr %l45
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l45, !tbaa !29
  store ptr %t69, ptr %l10, !tbaa !29
  %t70 = load ptr, ptr %l10, !tbaa !29
  %t72 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t70)
  store i1 %t72, ptr %l47
  br label %bb15
bb15:
  %t73 = load i1, ptr %l47, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb19
bb17:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = call i32 @compiler_2fexplain_2eBuilderOf(ptr %v0, ptr %t76, i64 %t77)
  store i32 %t80, ptr %l52
  br label %bb18
bb18:
  %t82 = load i32, ptr %l52, !tbaa !23
  %t84 = icmp ne i32 %t82, %a1
  store i1 %t84, ptr %l49, !tbaa !21
  br label %bb19
bb19:
  %t86 = load i1, ptr %l49, !tbaa !21
  br i1 %t86, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb21:
  br label %bb22
bb22:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/check:Checker", ptr %t87, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = getelementptr %"compiler/generic:Program", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/load:Loader", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load ptr, ptr %l10, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Func", ptr %t97, i32 0, i32 10
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t96, i32 %t100)
  store { i64, ptr } %t103, ptr %l61
  br label %bb23
bb23:
  %t104 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t106)
  call void @olang_textcopy(ptr %t107, ptr %t105, i64 %t106)
  %t108 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t107, 1
  store { i64, ptr } %t109, ptr %l11, !tbaa !27
  %t113 = xor i1 %a2, true
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t115 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = icmp sgt i64 %t117, 0
  br i1 %t119, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb30
bb26:
  %t121 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i8, ptr %t122, i64 0
  %t124 = load i8, ptr %t123, !tbaa !32
  %t126 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t124)
  store i1 %t126, ptr %l71
  br label %bb28
bb27:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb29
bb28:
  %t127 = load i1, ptr %l71, !tbaa !21
  store i1 %t127, ptr %l69, !tbaa !21
  br label %bb29
bb29:
  %t128 = load i1, ptr %l69, !tbaa !21
  %t129 = xor i1 %t128, true
  store i1 %t129, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t131 = load i1, ptr %l65, !tbaa !21
  br i1 %t131, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t132 = load i64, ptr %l9, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %l3, i64 %t132)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  %t135 = load i64, ptr %l8, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l8, !tbaa !24
  br label %bb10
bb36:
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

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
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 18
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
  %t379 = getelementptr %"compiler/effects:Facts", ptr %l31, i32 0, i32 20
  %t381 = getelementptr [6 x i64], ptr %t379, i64 0, i64 %t378
  %t382 = load i64, ptr %t381, !tbaa !34
  %t383 = load i64, ptr %l30, !tbaa !24
  %t386 = icmp eq i64 %t382, %t383
  br i1 %t386, label %bb87, label %bb88
bb87:
  %t388 = load i64, ptr %l37, !tbaa !24
  %t389 = getelementptr %"compiler/effects:Facts", ptr %l31, i32 0, i32 20
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
  %t425 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s17, ptr %s17, { i64, ptr } %t423, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l240, !tbaa !27
  br label %bb99
bb99:
  %t431 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 1
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t434 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t435 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t436 = add i64 %t433, %t435
  %t437 = load { i64, ptr }, ptr %l240, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t437, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = add i64 %t436, %t439
  %t441 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t442 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
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

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fexplain_2eCodes(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %lp7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %lp19 = alloca ptr
  %l25 = alloca i64
  %l32 = alloca ptr
  %l40 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i64
  %l67 = alloca i64
  %l68 = alloca ptr
  %l69 = alloca i64
  %l71 = alloca ptr
  %l72 = alloca i64
  %l76 = alloca i32
  %l79 = alloca i64
  %l80 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca %"compiler/explain:Code"
  %l92 = alloca i64
  %l96 = alloca i64
  %l99 = alloca i64
  %l120 = alloca i64
  %l125 = alloca i64
  %l128 = alloca ptr
  %l132 = alloca i32
  %l138 = alloca i32
  %l145 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l158 = alloca { i64, ptr }
  %l159 = alloca { i64, ptr }
  %l160 = alloca i64
  %l164 = alloca { i64, ptr }
  %l165 = alloca %"compiler/explain:Code"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t11 = call i64 @compiler_2fexplain_2efnNamed(ptr %v0, ptr %v1, ptr %t5, i64 %t6, { i64, ptr } %a2)
  store i64 %t11, ptr %l25
  br label %bb2
bb2:
  %t12 = load i64, ptr %l25, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t18 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t18, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t22, i64 %t23)
  store ptr %t26, ptr %l32
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l32, !tbaa !29
  store ptr %t27, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = getelementptr %"compiler/load:Loader", ptr %t34, i32 0, i32 4
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/load:Loader", ptr %t45, i32 0, i32 10
  store ptr %t47, ptr %l40, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i64, ptr %l3, !tbaa !24
  %t55 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t51, i64 %t52)
  store i64 %t55, ptr %l44
  br label %bb7
bb7:
  %t56 = load ptr, ptr %l40, !tbaa !29
  %t57 = load i64, ptr %l44, !tbaa !24
  %t58 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t56, i64 %t57)
  store ptr %t58, ptr %l45
  br label %bb8
bb8:
  %t59 = load ptr, ptr %l45, !tbaa !29
  %t61 = getelementptr %"compiler/load:Module", ptr %t59, i32 0, i32 4
  %t62 = load i64, ptr %t61, !tbaa !24
  store i64 %t62, ptr %l6, !tbaa !24
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v2, ptr %t64, i64 %t65)
  store { i64, ptr } %t68, ptr %l50
  br label %bb9
bb9:
  %t69 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t69, ptr %lp7
  %t70 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t71 = load ptr, ptr %lp7
  store { i64, ptr } %t70, ptr %t71, !tbaa !27
  %t72 = load ptr, ptr %l5, !tbaa !29
  %t73 = load i64, ptr %l6, !tbaa !24
  %t74 = load ptr, ptr %l4, !tbaa !29
  %t76 = getelementptr %"compiler/ast:Func", ptr %t74, i32 0, i32 0
  %t77 = getelementptr %"compiler/source:Span", ptr %t76, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = sext i32 %t78 to i64
  %t84 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %t72, i64 %t73, i64 %t80)
  store i64 %t84, ptr %l56
  br label %bb10
bb10:
  %t85 = load i64, ptr %l56, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  %t86 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t86, ptr %l57
  br label %bb11
bb11:
  %t87 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t87, ptr %l9
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l59, !tbaa !29
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t92)
  store i64 %t94, ptr %l61
  br label %bb12
bb12:
  %t95 = load ptr, ptr %l59, !tbaa !29
  %t96 = load i64, ptr %l61, !tbaa !24
  %t97 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t97, ptr %l62
  br label %bb13
bb13:
  %t98 = load i64, ptr %l62, !tbaa !24
  %t99 = icmp eq i64 %t98, 0
  br i1 %t99, label %bb14, label %bb15
bb14:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t105 = load i64, ptr %l3, !tbaa !24
  %t108 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t104, i64 %t105, i32 0)
  store i64 %t108, ptr %l67
  br label %bb16
bb15:
  br label %bb25
bb16:
  %t109 = load i64, ptr %l67, !tbaa !24
  store i64 %t109, ptr %l10, !tbaa !24
  store ptr %l9, ptr %l68, !tbaa !29
  %t110 = ptrtoint ptr %v2 to i64
  store i64 %t110, ptr %l69, !tbaa !24
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fexplain_3aCode_2e0
  br i1 %t111, label %bb17, label %bb18
bb17:
  %t113 = call ptr @__olang_region_make(ptr %v2)
  %t114 = ptrtoint ptr %t113 to i64
  store i64 %t114, ptr %l69, !tbaa !24
  br label %bb18
bb18:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l71, !tbaa !29
  %t116 = load i64, ptr %l3, !tbaa !24
  store i64 %t116, ptr %l72, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t121 = load i64, ptr %l10, !tbaa !24
  %t124 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t120, i64 %t121)
  store i32 %t124, ptr %l76
  br label %bb19
bb19:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l10, !tbaa !24
  %t129 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t125, i64 %t126)
  store i64 %t129, ptr %l79
  br label %bb20
bb20:
  %t130 = load i64, ptr %l69
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = load ptr, ptr %l71, !tbaa !29
  %t133 = load i64, ptr %l72, !tbaa !24
  %t134 = load i32, ptr %l76, !tbaa !23
  %t135 = load i64, ptr %l79, !tbaa !24
  %t136 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %t131, ptr %t132, i64 %t133, i32 %t134, i64 %t135)
  store { i64, ptr } %t136, ptr %l80
  br label %bb21
bb21:
  %t137 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t138 = load i64, ptr %l69
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = extractvalue { i64, ptr } %t137, 0
  %t141 = extractvalue { i64, ptr } %t137, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %t139, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l81, !tbaa !27
  %t146 = load ptr, ptr %lp7
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  store { i64, ptr } %t147, ptr %l82, !tbaa !27
  %t148 = load i64, ptr %l8, !tbaa !24
  store i64 %t148, ptr %l83, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load i64, ptr %l10, !tbaa !24
  %t156 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v0, ptr %t152, i64 %t153)
  store { i64, ptr } %t156, ptr %l87
  br label %bb22
bb22:
  %t157 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t159 = load i64, ptr %l83, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t161 = call %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t157, { i64, ptr } %t158, i64 %t159, { i64, ptr } %t160)
  store %"compiler/explain:Code" %t161, ptr %l88
  br label %bb23
bb23:
  %t162 = load ptr, ptr %l68, !tbaa !29
  %t163 = load %"compiler/explain:Code", ptr %l88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v2, ptr %v2, ptr %t162, %"compiler/explain:Code" %t163)
  br label %bb24
bb24:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t166 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t166, ptr %rv
  br label %ret
bb25:
  store i64 0, ptr %l11, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/check:Checker", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l92
  br label %bb26
bb26:
  %t173 = load i64, ptr %l92, !tbaa !24
  store i64 %t173, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l12, !tbaa !24
  %t175 = load i64, ptr %l11, !tbaa !24
  %t178 = icmp sgt i64 %t174, %t175
  br i1 %t178, label %bb27, label %bb28
bb27:
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = icmp sgt i64 %t180, 0
  br i1 %t182, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb32
bb29:
  %t184 = load i64, ptr %l12, !tbaa !24
  %t185 = load i64, ptr %l11, !tbaa !24
  %t188 = sub i64 %t184, %t185
  %t189 = load i64, ptr %l13, !tbaa !24
  %t192 = add i64 %t188, %t189
  %t194 = sub i64 %t192, 1
  %t195 = load i64, ptr %l13, !tbaa !24
  %t198 = sdiv i64 %t194, %t195
  store i64 %t198, ptr %l99, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb31
bb31:
  %t200 = load i64, ptr %l99, !tbaa !24
  store i64 %t200, ptr %l96, !tbaa !24
  br label %bb32
bb32:
  %t201 = load i64, ptr %l96, !tbaa !24
  store i64 %t201, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t202 = load i64, ptr %l15, !tbaa !24
  %t203 = load i64, ptr %l14, !tbaa !24
  %t206 = icmp slt i64 %t202, %t203
  %t208 = xor i1 %t206, true
  br i1 %t208, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb55
bb35:
  br label %bb36
bb36:
  %t210 = load i64, ptr %l11, !tbaa !24
  %t211 = load i64, ptr %l15, !tbaa !24
  %t212 = load i64, ptr %l13, !tbaa !24
  %t215 = mul i64 %t211, %t212
  %t218 = add i64 %t210, %t215
  store i64 %t218, ptr %l16, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t224 = load i64, ptr %l16, !tbaa !24
  %t227 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t223, i64 %t224)
  store i64 %t227, ptr %l120
  br label %bb37
bb37:
  %t228 = load i64, ptr %l3, !tbaa !24
  %t229 = load i64, ptr %l120, !tbaa !24
  %t231 = icmp ne i64 %t229, %t228
  br i1 %t231, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb39:
  br label %bb40
bb40:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l16, !tbaa !24
  %t237 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t233, i64 %t234)
  store i64 %t237, ptr %l125
  br label %bb41
bb41:
  %t238 = load i64, ptr %l125, !tbaa !24
  store i64 %t238, ptr %l17, !tbaa !24
  %t239 = load i64, ptr %l17, !tbaa !24
  %t241 = icmp slt i64 %t239, 0
  br i1 %t241, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb43:
  br label %bb44
bb44:
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l128, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/check:Checker", ptr %t244, i32 0, i32 1
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t248 = load i64, ptr %l16, !tbaa !24
  %t251 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t247, i64 %t248)
  store i32 %t251, ptr %l132
  br label %bb45
bb45:
  %t252 = load ptr, ptr %l4, !tbaa !29
  %t254 = getelementptr %"compiler/ast:Func", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load ptr, ptr %l4, !tbaa !29
  %t258 = getelementptr %"compiler/ast:Func", ptr %t256, i32 0, i32 3
  %t259 = load ptr, ptr %t258, !tbaa !29
  %t261 = getelementptr %"compiler/ast:Sig", ptr %t259, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  %t263 = load ptr, ptr %l128, !tbaa !29
  %t264 = load i32, ptr %l132, !tbaa !23
  %t267 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t263, i32 %t264, ptr %t255, { i64, ptr } %t262)
  store i32 %t267, ptr %l138
  br label %bb46
bb46:
  %t268 = load i32, ptr %l138, !tbaa !23
  store i32 %t268, ptr %l18, !tbaa !23
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t274 = getelementptr %"compiler/generic:Program", ptr %t272, i32 0, i32 0
  %t275 = load ptr, ptr %t274, !tbaa !29
  %t277 = getelementptr %"compiler/load:Loader", ptr %t275, i32 0, i32 3
  %t278 = load ptr, ptr %t277, !tbaa !29
  %t279 = load ptr, ptr %l4, !tbaa !29
  %t281 = getelementptr %"compiler/ast:Func", ptr %t279, i32 0, i32 2
  %t282 = load i32, ptr %t281, !tbaa !23
  %t285 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t278, i32 %t282)
  store { i64, ptr } %t285, ptr %l145
  br label %bb47
bb47:
  %t286 = load ptr, ptr %l0, !tbaa !29
  store ptr %t286, ptr %l146, !tbaa !29
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t291 = load i64, ptr %l16, !tbaa !24
  %t294 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t290, i64 %t291)
  store i32 %t294, ptr %l150
  br label %bb48
bb48:
  %t295 = load ptr, ptr %l146, !tbaa !29
  %t296 = load i32, ptr %l150, !tbaa !23
  %t297 = call { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %s4, ptr %t295, i32 %t296)
  store { i64, ptr } %t297, ptr %l151
  br label %bb49
bb49:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load i32, ptr %l18, !tbaa !23
  %t300 = load i64, ptr %l17, !tbaa !24
  %t304 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s4, ptr %t298, i32 %t299, i64 %t300)
  store { i64, ptr } %t304, ptr %l155
  br label %bb50
bb50:
  %t305 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t306 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t307 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 1
  %t309 = extractvalue { i64, ptr } %t307, 0
  %t310 = add i64 %t306, %t309
  %t311 = load { i64, ptr }, ptr %l151, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 1
  %t313 = extractvalue { i64, ptr } %t311, 0
  %t314 = add i64 %t310, %t313
  %t315 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t316 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t317 = add i64 %t314, %t316
  %t318 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 1
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t321 = add i64 %t317, %t320
  %t322 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t321)
  call void @olang_textcopy(ptr %t322, ptr %t305, i64 %t306)
  %t323 = getelementptr i8, ptr %t322, i64 %t306
  call void @olang_textcopy(ptr %t323, ptr %t308, i64 %t309)
  %t324 = getelementptr i8, ptr %t323, i64 %t309
  call void @olang_textcopy(ptr %t324, ptr %t312, i64 %t313)
  %t325 = getelementptr i8, ptr %t324, i64 %t313
  call void @olang_textcopy(ptr %t325, ptr %t315, i64 %t316)
  %t326 = getelementptr i8, ptr %t325, i64 %t316
  call void @olang_textcopy(ptr %t326, ptr %t319, i64 %t320)
  %t327 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t328 = insertvalue { i64, ptr } %t327, ptr %t322, 1
  %t329 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t329, ptr %lp19
  %t331 = load ptr, ptr %lp19
  store { i64, ptr } %t328, ptr %t331, !tbaa !27
  store ptr %l9, ptr %l157, !tbaa !29
  %t332 = load ptr, ptr %lp19
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !27
  store { i64, ptr } %t333, ptr %l158, !tbaa !27
  %t334 = load ptr, ptr %lp7
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l159, !tbaa !27
  %t336 = load i64, ptr %l8, !tbaa !24
  store i64 %t336, ptr %l160, !tbaa !24
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t341 = load i64, ptr %l16, !tbaa !24
  %t344 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v0, ptr %t340, i64 %t341)
  store { i64, ptr } %t344, ptr %l164
  br label %bb51
bb51:
  %t345 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t346 = load { i64, ptr }, ptr %l159, !tbaa !27
  %t347 = load i64, ptr %l160, !tbaa !24
  %t348 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t349 = call %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v2, ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t345, { i64, ptr } %t346, i64 %t347, { i64, ptr } %t348)
  store %"compiler/explain:Code" %t349, ptr %l165
  br label %bb52
bb52:
  %t350 = load ptr, ptr %l157, !tbaa !29
  %t351 = load %"compiler/explain:Code", ptr %l165
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v2, ptr %v2, ptr %t350, %"compiler/explain:Code" %t351)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s4)
  br label %bb54
bb54:
  %t352 = load i64, ptr %l15, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l15, !tbaa !24
  br label %bb33
bb55:
  %t356 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t358 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t356, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t358, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2eFnLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca i64
  %l28 = alloca i32
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t5)
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t8, i64 %t9)
  store i64 %t10, ptr %l7
  br label %bb2
bb2:
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = icmp eq i64 %t11, 0
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t17, i64 %t18, i32 0)
  store i64 %t21, ptr %l12
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load i64, ptr %l12, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  store i64 %t24, ptr %l14, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/check:Checker", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t28, i64 %t29)
  store i32 %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t33, i64 %t34)
  store i64 %t37, ptr %l21
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l13, !tbaa !29
  %t39 = load i64, ptr %l14, !tbaa !24
  %t40 = load i32, ptr %l18, !tbaa !23
  %t41 = load i64, ptr %l21, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %t38, i64 %t39, i32 %t40, i64 %t41)
  store { i64, ptr } %t42, ptr %l22
  br label %bb8
bb8:
  %t43 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l23, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  store i64 %t45, ptr %l24, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t49, i64 %t50)
  store i32 %t53, ptr %l28
  br label %bb10
bb10:
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load i64, ptr %l24, !tbaa !24
  %t56 = load i32, ptr %l28, !tbaa !23
  %t57 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %t54, i64 %t55, i32 %t56, i64 -1)
  store { i64, ptr } %t57, ptr %l29
  br label %bb11
bb11:
  %t58 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
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
  %t18 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v3, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) })
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

define dso_local { i64, ptr } @compiler_2fexplain_2eNoValueWhy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l46 = alloca i64
  %l51 = alloca i64
  %l54 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca i1
  %l65 = alloca i1
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l89 = alloca i64
  %l90 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l2, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/load:Loader", ptr %t16, i32 0, i32 3
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Func", ptr %t20, i32 0, i32 2
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t19, i32 %t23)
  store { i64, ptr } %t26, ptr %l18
  br label %bb2
bb2:
  %t27 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t27, ptr %l5, !tbaa !27
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Func", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 64, ptr getelementptr inbounds (<{ i64, [64 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t37, ptr %l24, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l25, !tbaa !24
  %t40 = load i64, ptr %l25, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l26, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l25, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t51, ptr %l24, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t56, i64 %t57)
  store i1 %t60, ptr %l30
  br label %bb6
bb6:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l31, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t62, ptr %l32, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i64, ptr %l33, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l34, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l33, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t76, ptr %l32, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t78 = load i64, ptr %l2, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t78)
  store i64 %t80, ptr %l36
  br label %bb10
bb10:
  %t81 = load i64, ptr %l36, !tbaa !24
  store i64 %t81, ptr %l6, !tbaa !24
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 5
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l39, !tbaa !24
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t88)
  store i1 %t90, ptr %l41
  br label %bb11
bb11:
  %t91 = load i1, ptr %l41, !tbaa !21
  br i1 %t91, label %bb12, label %bb13
bb12:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i64, ptr %l2, !tbaa !24
  %t99 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l46
  br label %bb14
bb13:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb15
bb14:
  %t100 = load i64, ptr %l46, !tbaa !24
  store i64 %t100, ptr %l42, !tbaa !24
  br label %bb15
bb15:
  %t101 = load i64, ptr %l39, !tbaa !24
  %t102 = load i64, ptr %l42, !tbaa !24
  %t103 = add i64 %t101, %t102
  store i64 %t103, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/check:Checker", ptr %t105, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t109 = load i64, ptr %l6, !tbaa !24
  %t112 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t108, i64 %t109)
  store i64 %t112, ptr %l51
  br label %bb16
bb16:
  %t113 = load i64, ptr %l7, !tbaa !24
  %t114 = load i64, ptr %l51, !tbaa !24
  %t116 = icmp sgt i64 %t114, %t113
  br i1 %t116, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l54, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t118, ptr %l55, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l56, !tbaa !24
  %t121 = load i64, ptr %l56, !tbaa !24
  %t122 = mul i64 %t121, 1
  %t123 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t122)
  %t124 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t125 = insertvalue { i64, ptr } %t124, ptr %t123, 1
  store { i64, ptr } %t125, ptr %l57, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l56, !tbaa !24
  %t131 = mul i64 %t130, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t127, ptr %t129, i64 %t131, i1 false)
  %t132 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t132, ptr %l55, !tbaa !27
  %t133 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t133, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i64, ptr %l6, !tbaa !24
  %t141 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t137, i64 %t138)
  store i64 %t141, ptr %l61
  br label %bb20
bb20:
  %t142 = load i64, ptr %l61, !tbaa !24
  %t143 = icmp sgt i64 %t142, 0
  br i1 %t143, label %bb21, label %bb22
bb21:
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t147 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t145)
  store i1 %t147, ptr %l65
  br label %bb23
bb22:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb24
bb23:
  %t148 = load i1, ptr %l65, !tbaa !21
  store i1 %t148, ptr %l63, !tbaa !21
  br label %bb24
bb24:
  %t149 = load i1, ptr %l63, !tbaa !21
  br i1 %t149, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t150 = load ptr, ptr %l4, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/check:Checker", ptr %t151, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 0
  %t157 = load ptr, ptr %t156, !tbaa !29
  %t159 = getelementptr %"compiler/load:Loader", ptr %t157, i32 0, i32 3
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t163 = call { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v0, ptr %s4, ptr %t150, ptr %t160)
  store { i64, ptr } %t163, ptr %l71
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/check:Checker", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  %t169 = getelementptr %"compiler/generic:Program", ptr %t167, i32 0, i32 0
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = getelementptr %"compiler/load:Loader", ptr %t170, i32 0, i32 3
  %t173 = load ptr, ptr %t172, !tbaa !29
  %t174 = load ptr, ptr %l4, !tbaa !29
  %t176 = getelementptr %"compiler/ast:Func", ptr %t174, i32 0, i32 10
  %t177 = load i32, ptr %t176, !tbaa !23
  %t180 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t173, i32 %t177)
  store { i64, ptr } %t180, ptr %l78
  br label %bb28
bb28:
  %t181 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t182 = extractvalue { i64, ptr } { i64 66, ptr getelementptr inbounds (<{ i64, [66 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t183 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = extractvalue { i64, ptr } %t183, 0
  %t186 = add i64 %t182, %t185
  %t187 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t189 = add i64 %t186, %t188
  %t190 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = add i64 %t189, %t192
  %t194 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t196 = add i64 %t193, %t195
  %t197 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t196)
  call void @olang_textcopy(ptr %t197, ptr %t181, i64 %t182)
  %t198 = getelementptr i8, ptr %t197, i64 %t182
  call void @olang_textcopy(ptr %t198, ptr %t184, i64 %t185)
  %t199 = getelementptr i8, ptr %t198, i64 %t185
  call void @olang_textcopy(ptr %t199, ptr %t187, i64 %t188)
  %t200 = getelementptr i8, ptr %t199, i64 %t188
  call void @olang_textcopy(ptr %t200, ptr %t191, i64 %t192)
  %t201 = getelementptr i8, ptr %t200, i64 %t192
  call void @olang_textcopy(ptr %t201, ptr %t194, i64 %t195)
  %t202 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t197, 1
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } %t203, ptr %rv
  br label %ret
bb29:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/check:Checker", ptr %t205, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !29
  %t209 = load i64, ptr %l6, !tbaa !24
  %t212 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t208, i64 %t209)
  store i64 %t212, ptr %l83
  br label %bb30
bb30:
  %t213 = load i64, ptr %l83, !tbaa !24
  %t214 = icmp sgt i64 %t213, 0
  br i1 %t214, label %bb31, label %bb32
bb31:
  %t216 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t217 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 58, ptr getelementptr inbounds (<{ i64, [58 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t220 = extractvalue { i64, ptr } %t216, 1
  %t221 = extractvalue { i64, ptr } %t216, 0
  %t222 = add i64 %t218, %t221
  %t223 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t226 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t225)
  call void @olang_textcopy(ptr %t226, ptr %t217, i64 %t218)
  %t227 = getelementptr i8, ptr %t226, i64 %t218
  call void @olang_textcopy(ptr %t227, ptr %t220, i64 %t221)
  %t228 = getelementptr i8, ptr %t227, i64 %t221
  call void @olang_textcopy(ptr %t228, ptr %t223, i64 %t224)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t226, 1
  store { i64, ptr } %t230, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l87, !tbaa !27
  %t232 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t232, ptr %l88, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t234 = extractvalue { i64, ptr } %t233, 0
  store i64 %t234, ptr %l89, !tbaa !24
  %t235 = load i64, ptr %l89, !tbaa !24
  %t236 = mul i64 %t235, 1
  %t237 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t236)
  %t238 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t237, 1
  store { i64, ptr } %t239, ptr %l90, !tbaa !27
  %t240 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t241 = load ptr, ptr %t240, !tbaa !27
  %t242 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t243 = load ptr, ptr %t242, !tbaa !27
  %t244 = load i64, ptr %l89, !tbaa !24
  %t245 = mul i64 %t244, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t241, ptr %t243, i64 %t245, i1 false)
  %t246 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t246, ptr %l88, !tbaa !27
  %t247 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t247, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2eattrLines(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l19 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %s3 = alloca %olang.scope
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/load:Loader", ptr %t13, i32 0, i32 10
  %t19 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t15, i64 %a2)
  store ptr %t19, ptr %l19
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l19, !tbaa !29
  %t22 = getelementptr %"compiler/load:Module", ptr %t20, i32 0, i32 6
  %t23 = load ptr, ptr %t22, !tbaa !29
  store ptr %t23, ptr %l5, !tbaa !29
  %t25 = load ptr, ptr %l5, !tbaa !29
  %t27 = icmp eq ptr %t25, null
  br i1 %t27, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e4b17f5ad4d0393_dacada4c9c892187)
  unreachable
bb6:
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/source:Source", ptr %t29, i32 0, i32 1
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l6, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l9, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s3
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t49 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t49, ptr %l34, !tbaa !27
  %t50 = load i64, ptr %l8, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr ptr, ptr %t53, i64 %t50
  %t55 = load ptr, ptr %t54, !tbaa !39
  store ptr %t55, ptr %l10, !tbaa !29
  store ptr %a0, ptr %l37, !tbaa !29
  store { i64, ptr } %a4, ptr %l38, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l39, !tbaa !27
  %t60 = load ptr, ptr %l10, !tbaa !29
  %t62 = getelementptr %"compiler/ast:Attr", ptr %t60, i32 0, i32 0
  %t63 = getelementptr %"compiler/source:Span", ptr %t62, i32 0, i32 0
  %t64 = load i32, ptr %t63, !tbaa !23
  %t66 = sext i32 %t64 to i64
  store i64 %t66, ptr %l42, !tbaa !24
  %t67 = load ptr, ptr %l10, !tbaa !29
  %t69 = getelementptr %"compiler/ast:Attr", ptr %t67, i32 0, i32 0
  %t70 = getelementptr %"compiler/source:Span", ptr %t69, i32 0, i32 1
  %t71 = load i32, ptr %t70, !tbaa !23
  %t73 = sext i32 %t71 to i64
  store i64 %t73, ptr %l45, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l46, !tbaa !24
  %t76 = load i64, ptr %l42, !tbaa !24
  %t77 = icmp sge i64 %t76, 0
  br i1 %t77, label %bb12, label %bb13
bb12:
  %t79 = load i64, ptr %l42, !tbaa !24
  %t80 = load i64, ptr %l45, !tbaa !24
  %t81 = icmp sle i64 %t79, %t80
  br i1 %t81, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb14:
  %t83 = load i64, ptr %l45, !tbaa !24
  %t84 = load i64, ptr %l46, !tbaa !24
  %t85 = icmp sle i64 %t83, %t84
  br i1 %t85, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb16:
  %t87 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = load i64, ptr %l42, !tbaa !24
  %t90 = load i64, ptr %l45, !tbaa !24
  %t91 = getelementptr i8, ptr %t88, i64 %t89
  %t92 = sub i64 %t90, %t89
  %t93 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t95 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t99 = extractvalue { i64, ptr } %t94, 1
  %t100 = extractvalue { i64, ptr } %t94, 0
  %t101 = add i64 %t97, %t100
  %t102 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t104 = add i64 %t101, %t103
  %t105 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t104)
  call void @olang_textcopy(ptr %t105, ptr %t96, i64 %t97)
  %t106 = getelementptr i8, ptr %t105, i64 %t97
  call void @olang_textcopy(ptr %t106, ptr %t99, i64 %t100)
  %t107 = getelementptr i8, ptr %t106, i64 %t100
  call void @olang_textcopy(ptr %t107, ptr %t102, i64 %t103)
  %t108 = insertvalue { i64, ptr } undef, i64 %t104, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t105, 1
  %t111 = extractvalue { i64, ptr } %t109, 0
  %t112 = extractvalue { i64, ptr } %t109, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t117, { i64, ptr } %t116)
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_31b785093080fa1c_de0f6dc4f3b337d0)
  unreachable
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l8, !tbaa !24
  br label %bb8
bb20:
  br label %ret
ret:
  ret void
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l24, !tbaa !27
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
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fexplain_2ebuilders(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fexplain_2eBuilders(ptr %v1, ptr %s1, ptr %t1, i32 %a2, i1 false)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t7 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  store ptr %t7, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l4, !tbaa !24
  store i64 %t9, ptr %l10, !tbaa !24
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s1, ptr %t10)
  store i64 %t12, ptr %l12
  br label %bb3
bb3:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb11
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s1, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l17
  br label %bb7
bb7:
  %t24 = load i64, ptr %l17, !tbaa !24
  store ptr %a0, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fexplain_2eFnLine(ptr %v1, ptr %s2, ptr %t26, i64 %t24)
  store { i64, ptr } %t30, ptr %l21
  br label %bb8
bb8:
  %t31 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t33 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t39 = add i64 %t36, %t38
  %t40 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t31, i64 %t32)
  %t41 = getelementptr i8, ptr %t40, i64 %t32
  call void @olang_textcopy(ptr %t41, ptr %t34, i64 %t35)
  %t42 = getelementptr i8, ptr %t41, i64 %t35
  call void @olang_textcopy(ptr %t42, ptr %t37, i64 %t38)
  %t43 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t40, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t52 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t52, { i64, ptr } %t51)
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb10
bb10:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l4, !tbaa !24
  br label %bb2
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fexplain_2ecapsShown(ptr %v0, { i64, ptr } %a0, i1 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %l10 = alloca i1
  %l12 = alloca i1
  %l14 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = xor i1 %a1, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t7, ptr %l6
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t8 = load i1, ptr %l6, !tbaa !21
  %t9 = xor i1 %t8, true
  store i1 %t9, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t11 = load i1, ptr %l4, !tbaa !21
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t12 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb7
bb6:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb8
bb7:
  %t15 = load i1, ptr %l10, !tbaa !21
  %t16 = xor i1 %t15, true
  store i1 %t16, ptr %l8, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s0, { i64, ptr } %t19, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t21, ptr %l14
  br label %bb11
bb10:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t22 = load i1, ptr %l14, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i1, ptr %l12, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2ecasePayload(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
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
  %t29 = getelementptr %"compiler/ast:CaseDecl", ptr %t27, i32 0, i32 2
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t32 = icmp sge i64 0, 0
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = icmp sle i64 0, 1152921504606846975
  br i1 %t34, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_430839a36fc86f5_d60a2ea9e5c9a99)
  unreachable
bb12:
  %t36 = mul i64 0, 8
  %t37 = insertvalue { i64, ptr } undef, i64 0, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t38, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_430839a36fc86f5_d60a2ea9e5c9a99)
  unreachable
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8ab7a894dba5a8d7_a5979f5013b78ba3)
  unreachable
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

define dso_local { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %a0, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t7 = load ptr, ptr %l5, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [6 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/ast:StructBody", ptr %t21, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t26 = icmp sge i64 0, 0
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = icmp sle i64 0, 1152921504606846975
  br i1 %t28, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_6448edf003c535f3_ebaded49d6e07c97)
  unreachable
bb12:
  %t30 = mul i64 0, 8
  %t31 = insertvalue { i64, ptr } undef, i64 0, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb13:
  call void @__olang_check_failed(ptr @olang_loc_6448edf003c535f3_ebaded49d6e07c97)
  unreachable
bb14:
  call void @__olang_check_failed(ptr @olang_loc_979fe2e14fb6de05_5947910940c194f1)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2ectorRequires(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l51 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t4, i32 %t5)
  store ptr %t8, ptr %l10
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l10, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_1f3e281b9e5e1c1b_28b60c21bdf8ccb7)
  unreachable
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TypeDecl", ptr %t14, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 5}
  %t27 = icmp eq i64 %t25, 0
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = getelementptr { i64, [6 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { ptr }, ptr %t31, i32 0, i32 0
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l5, !tbaa !29
  br label %bb9
bb8:
  br label %bb12
bb9:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = getelementptr %"compiler/ast:StructBody", ptr %t37, i32 0, i32 2
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l25, !tbaa !27
  %t41 = load ptr, ptr %l5, !tbaa !29
  %t43 = getelementptr %"compiler/ast:StructBody", ptr %t41, i32 0, i32 0
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l27, !tbaa !27
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t52 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v1, ptr %t48, i32 %t49)
  store i64 %t52, ptr %l31
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l22, !tbaa !29
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t57 = load i64, ptr %l31, !tbaa !24
  call void @compiler_2fexplain_2ereqLines(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %s1, ptr %s1, ptr %t53, ptr %t54, { i64, ptr } %t55, { i64, ptr } %t56, ptr null, i64 %t57, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) })
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb27
bb12:
  %t58 = load ptr, ptr %l4, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t60 = icmp ne ptr %t59, null
  br i1 %t60, label %bb13, label %bb14
bb13:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = load i64, ptr %t62, !range !{i64 0, i64 5}
  %t65 = icmp eq i64 %t63, 3
  store i1 %t65, ptr %l33, !tbaa !21
  br label %bb14
bb14:
  %t66 = load i1, ptr %l33, !tbaa !21
  br i1 %t66, label %bb15, label %bb16
bb15:
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = getelementptr { i64, [6 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { ptr, ptr }, ptr %t69, i32 0, i32 1
  %t71 = load ptr, ptr %t70
  store ptr %t71, ptr %l6, !tbaa !29
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t79 = load ptr, ptr %l0, !tbaa !29
  store ptr %t79, ptr %l41, !tbaa !29
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l42, !tbaa !29
  %t81 = load ptr, ptr %l6, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Func", ptr %t81, i32 0, i32 4
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l44, !tbaa !27
  %t85 = load ptr, ptr %l6, !tbaa !29
  %t87 = getelementptr %"compiler/ast:Func", ptr %t85, i32 0, i32 3
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/ast:Sig", ptr %t88, i32 0, i32 0
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t96 = load i32, ptr %l2, !tbaa !23
  %t99 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v1, ptr %t95, i32 %t96)
  store i64 %t99, ptr %l51
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t100 = load ptr, ptr %l41, !tbaa !29
  %t101 = load ptr, ptr %l42, !tbaa !29
  %t102 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t104 = load i64, ptr %l51, !tbaa !24
  call void @compiler_2fexplain_2ereqLines(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %s2, ptr %s2, ptr %t100, ptr %t101, { i64, ptr } %t102, { i64, ptr } %t103, ptr null, i64 %t104, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d33, i32 0, i32 1) })
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
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
  call void @__olang_check_failed(ptr @olang_loc_56ca0331d7501bc3_73eac84a38a3448f)
  unreachable
bb27:
  br label %ret
ret:
  ret void
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
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) })
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
  %t40 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
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

define dso_local { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l14 = alloca i1
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l5
  br label %bb1
bb1:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l6, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t10, ptr %l7, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l9, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t24, ptr %l7, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t32 = load i32, ptr %l1, !tbaa !23
  %t35 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t35, ptr %l14
  br label %bb5
bb5:
  %t36 = load i1, ptr %l14, !tbaa !21
  br i1 %t36, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t37, ptr %l16, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  store i64 %t39, ptr %l17, !tbaa !24
  %t40 = load i64, ptr %l17, !tbaa !24
  %t41 = mul i64 %t40, 1
  %t42 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t41)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l18, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = load i64, ptr %l17, !tbaa !24
  %t50 = mul i64 %t49, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t46, ptr %t48, i64 %t50, i1 false)
  %t51 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t51, ptr %l16, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t52, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l19, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t53, ptr %l20, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l21, !tbaa !24
  %t56 = load i64, ptr %l21, !tbaa !24
  %t57 = mul i64 %t56, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t57)
  %t59 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  store { i64, ptr } %t60, ptr %l22, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = load i64, ptr %l21, !tbaa !24
  %t66 = mul i64 %t65, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t62, ptr %t64, i64 %t66, i1 false)
  %t67 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t67, ptr %l20, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
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
  %t179 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = extractvalue { i64, ptr } %t182, 0
  %t185 = add i64 %t181, %t184
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t187 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
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

define dso_local { i64, ptr } @compiler_2fexplain_2eerrorTypeItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l29 = alloca i1
  %l39 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l69 = alloca i64
  %l72 = alloca i64
  %l90 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca i64
  %l100 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l118 = alloca { i64, ptr }
  %l124 = alloca i64
  %l127 = alloca i64
  %l145 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 3
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l5, !tbaa !29
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l2, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v1, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l29
  br label %bb1
bb1:
  %t20 = load i1, ptr %l29, !tbaa !21
  br i1 %t20, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t23 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t26 = extractvalue { i64, ptr } %t22, 1
  %t27 = extractvalue { i64, ptr } %t22, 0
  %t28 = add i64 %t24, %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = getelementptr i8, ptr %t29, i64 %t24
  call void @olang_textcopy(ptr %t30, ptr %t26, i64 %t27)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t29, 1
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t35 = extractvalue { i64, ptr } %t32, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t21, { i64, ptr } %t39)
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2ewordPayload(ptr %v0, ptr %v1, ptr %t42, ptr %t43, i32 %t44, i64 0)
  br label %bb5
bb5:
  %t48 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t48, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d42, i32 0, i32 1) })
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v3, ptr %t50)
  store { i64, ptr } %t52, ptr %l39
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t53 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t53, ptr %rv
  br label %ret
bb8:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/load:Loader", ptr %t60, i32 0, i32 10
  store ptr %t62, ptr %l43, !tbaa !29
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v1, ptr %t66, i32 %t67)
  store i64 %t70, ptr %l47
  br label %bb9
bb9:
  %t71 = load ptr, ptr %l43, !tbaa !29
  %t72 = load i64, ptr %l47, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t71, i64 %t72)
  store ptr %t73, ptr %l48
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l48, !tbaa !29
  %t76 = getelementptr %"compiler/load:Module", ptr %t74, i32 0, i32 6
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l6, !tbaa !29
  %t79 = load ptr, ptr %l6, !tbaa !29
  %t81 = icmp eq ptr %t79, null
  br i1 %t81, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e71eefb410212e60_d710e4409f4406c4)
  unreachable
bb12:
  br label %bb13
bb13:
  %t83 = load ptr, ptr %l6, !tbaa !29
  %t86 = getelementptr %"compiler/source:Source", ptr %t83, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l7, !tbaa !27
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t94 = extractvalue { i64, ptr } %t90, 1
  %t95 = extractvalue { i64, ptr } %t90, 0
  %t96 = add i64 %t92, %t95
  %t97 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t99 = add i64 %t96, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t91, i64 %t92)
  %t101 = getelementptr i8, ptr %t100, i64 %t92
  call void @olang_textcopy(ptr %t101, ptr %t94, i64 %t95)
  %t102 = getelementptr i8, ptr %t101, i64 %t95
  call void @olang_textcopy(ptr %t102, ptr %t97, i64 %t98)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t100, 1
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t107 = extractvalue { i64, ptr } %t104, 1
  %t108 = mul i64 %t106, 1
  %t109 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t108)
  call void @llvm.memcpy.p0.p0.i64(ptr %t109, ptr %t107, i64 %t108, i1 false)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t89, { i64, ptr } %t111)
  br label %bb14
bb14:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t118 = load i32, ptr %l2, !tbaa !23
  %t121 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v1, ptr %s0, ptr %t117, i32 %t118)
  store { i64, ptr } %t121, ptr %l63
  br label %bb15
bb15:
  %t122 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t122, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  store i64 %t125, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t128 = load i64, ptr %l9, !tbaa !24
  %t131 = icmp sgt i64 %t127, %t128
  br i1 %t131, label %bb16, label %bb17
bb16:
  %t133 = load i64, ptr %l11, !tbaa !24
  %t135 = icmp sgt i64 %t133, 0
  br i1 %t135, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb21
bb18:
  %t137 = load i64, ptr %l10, !tbaa !24
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = sub i64 %t137, %t138
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t147 = sub i64 %t145, 1
  %t148 = load i64, ptr %l11, !tbaa !24
  %t151 = sdiv i64 %t147, %t148
  store i64 %t151, ptr %l72, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb20
bb20:
  %t153 = load i64, ptr %l72, !tbaa !24
  store i64 %t153, ptr %l69, !tbaa !24
  br label %bb21
bb21:
  %t154 = load i64, ptr %l69, !tbaa !24
  store i64 %t154, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t155 = load i64, ptr %l13, !tbaa !24
  %t156 = load i64, ptr %l12, !tbaa !24
  %t159 = icmp slt i64 %t155, %t156
  %t161 = xor i1 %t159, true
  br i1 %t161, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb24:
  br label %bb25
bb25:
  %t163 = load i64, ptr %l9, !tbaa !24
  %t164 = load i64, ptr %l13, !tbaa !24
  %t165 = load i64, ptr %l11, !tbaa !24
  %t168 = mul i64 %t164, %t165
  %t171 = add i64 %t163, %t168
  store i64 %t171, ptr %l14, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l90, !tbaa !29
  %t174 = load i64, ptr %l14, !tbaa !24
  %t176 = icmp sgt i64 %t174, 0
  br i1 %t176, label %bb26, label %bb27
bb26:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb28
bb27:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l93, !tbaa !27
  br label %bb28
bb28:
  %t178 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t178, ptr %l94, !tbaa !27
  %t179 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t179, ptr %l95, !tbaa !27
  %t180 = load i64, ptr %l14, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr ptr, ptr %t183, i64 %t180
  %t185 = load ptr, ptr %t184, !tbaa !39
  %t187 = getelementptr %"compiler/ast:Path", ptr %t185, i32 0, i32 0
  %t188 = getelementptr %"compiler/source:Span", ptr %t187, i32 0, i32 0
  %t189 = load i32, ptr %t188, !tbaa !23
  %t191 = sext i32 %t189 to i64
  store i64 %t191, ptr %l99, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t192, ptr %l100, !tbaa !27
  %t193 = load i64, ptr %l14, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr ptr, ptr %t196, i64 %t193
  %t198 = load ptr, ptr %t197, !tbaa !39
  %t200 = getelementptr %"compiler/ast:Path", ptr %t198, i32 0, i32 0
  %t201 = getelementptr %"compiler/source:Span", ptr %t200, i32 0, i32 1
  %t202 = load i32, ptr %t201, !tbaa !23
  %t204 = sext i32 %t202 to i64
  store i64 %t204, ptr %l104, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 0
  store i64 %t206, ptr %l105, !tbaa !24
  %t207 = load i64, ptr %l99, !tbaa !24
  %t208 = icmp sge i64 %t207, 0
  br i1 %t208, label %bb29, label %bb30
bb29:
  %t210 = load i64, ptr %l99, !tbaa !24
  %t211 = load i64, ptr %l104, !tbaa !24
  %t212 = icmp sle i64 %t210, %t211
  br i1 %t212, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_5296f019e964cb45_44665f46e1029c89)
  unreachable
bb31:
  %t214 = load i64, ptr %l104, !tbaa !24
  %t215 = load i64, ptr %l105, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_5296f019e964cb45_44665f46e1029c89)
  unreachable
bb33:
  %t218 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = load i64, ptr %l99, !tbaa !24
  %t221 = load i64, ptr %l104, !tbaa !24
  %t222 = getelementptr i8, ptr %t219, i64 %t220
  %t223 = sub i64 %t221, %t220
  %t224 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t222, 1
  %t226 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t226, 1
  %t228 = extractvalue { i64, ptr } %t226, 0
  %t230 = extractvalue { i64, ptr } %t225, 1
  %t231 = extractvalue { i64, ptr } %t225, 0
  %t232 = add i64 %t228, %t231
  %t233 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t232)
  call void @olang_textcopy(ptr %t233, ptr %t227, i64 %t228)
  %t234 = getelementptr i8, ptr %t233, i64 %t228
  call void @olang_textcopy(ptr %t234, ptr %t230, i64 %t231)
  %t235 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t233, 1
  %t238 = extractvalue { i64, ptr } %t236, 0
  %t239 = extractvalue { i64, ptr } %t236, 1
  %t240 = mul i64 %t238, 1
  %t241 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t240)
  call void @llvm.memcpy.p0.p0.i64(ptr %t241, ptr %t239, i64 %t240, i1 false)
  %t242 = insertvalue { i64, ptr } undef, i64 %t238, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %t241, 1
  %t244 = load ptr, ptr %l90, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t244, { i64, ptr } %t243)
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_5296f019e964cb45_44665f46e1029c89)
  unreachable
bb35:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb36:
  %t246 = load i64, ptr %l13, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l13, !tbaa !24
  br label %bb22
bb37:
  %t250 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t250, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d47, i32 0, i32 1) })
  br label %bb38
bb38:
  %t252 = load ptr, ptr %l1, !tbaa !29
  %t254 = getelementptr %"compiler/check:Checker", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i32, ptr %l2, !tbaa !23
  %t259 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v1, ptr %s0, ptr %t255, i32 %t256)
  store { i64, ptr } %t259, ptr %l118
  br label %bb39
bb39:
  %t260 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t260, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t261 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t261, 0
  store i64 %t263, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t265 = load i64, ptr %l17, !tbaa !24
  %t266 = load i64, ptr %l16, !tbaa !24
  %t269 = icmp sgt i64 %t265, %t266
  br i1 %t269, label %bb40, label %bb41
bb40:
  %t271 = load i64, ptr %l18, !tbaa !24
  %t273 = icmp sgt i64 %t271, 0
  br i1 %t273, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb45
bb42:
  %t275 = load i64, ptr %l17, !tbaa !24
  %t276 = load i64, ptr %l16, !tbaa !24
  %t279 = sub i64 %t275, %t276
  %t280 = load i64, ptr %l18, !tbaa !24
  %t283 = add i64 %t279, %t280
  %t285 = sub i64 %t283, 1
  %t286 = load i64, ptr %l18, !tbaa !24
  %t289 = sdiv i64 %t285, %t286
  store i64 %t289, ptr %l127, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l127, !tbaa !24
  br label %bb44
bb44:
  %t291 = load i64, ptr %l127, !tbaa !24
  store i64 %t291, ptr %l124, !tbaa !24
  br label %bb45
bb45:
  %t292 = load i64, ptr %l124, !tbaa !24
  store i64 %t292, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  %t293 = load i64, ptr %l20, !tbaa !24
  %t294 = load i64, ptr %l19, !tbaa !24
  %t297 = icmp slt i64 %t293, %t294
  %t299 = xor i1 %t297, true
  br i1 %t299, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb55
bb48:
  br label %bb49
bb49:
  %t301 = load i64, ptr %l16, !tbaa !24
  %t302 = load i64, ptr %l20, !tbaa !24
  %t303 = load i64, ptr %l18, !tbaa !24
  %t306 = mul i64 %t302, %t303
  %t309 = add i64 %t301, %t306
  store i64 %t309, ptr %l21, !tbaa !24
  %t311 = load ptr, ptr %l0, !tbaa !29
  store ptr %t311, ptr %l145, !tbaa !29
  %t312 = load ptr, ptr %l5, !tbaa !29
  %t313 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t313, ptr %l147, !tbaa !27
  %t314 = load i64, ptr %l21, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i32, ptr %t317, i64 %t314
  %t319 = load i32, ptr %t318, !tbaa !33
  %t322 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s9, ptr %t312, i32 %t319)
  store { i64, ptr } %t322, ptr %l150
  br label %bb50
bb50:
  %t323 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t325 = load { i64, ptr }, ptr %l150, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t325, 1
  %t327 = extractvalue { i64, ptr } %t325, 0
  %t328 = add i64 %t324, %t327
  %t329 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t328)
  call void @olang_textcopy(ptr %t329, ptr %t323, i64 %t324)
  %t330 = getelementptr i8, ptr %t329, i64 %t324
  call void @olang_textcopy(ptr %t330, ptr %t326, i64 %t327)
  %t331 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t332 = insertvalue { i64, ptr } %t331, ptr %t329, 1
  %t334 = extractvalue { i64, ptr } %t332, 0
  %t335 = extractvalue { i64, ptr } %t332, 1
  %t336 = mul i64 %t334, 1
  %t337 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t336)
  call void @llvm.memcpy.p0.p0.i64(ptr %t337, ptr %t335, i64 %t336, i1 false)
  %t338 = insertvalue { i64, ptr } undef, i64 %t334, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t340 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s9, ptr %t340, { i64, ptr } %t339)
  br label %bb51
bb51:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load ptr, ptr %l1, !tbaa !29
  %t344 = load i32, ptr %l3, !tbaa !23
  %t345 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fexplain_2ewordPayload(ptr %v0, ptr %v1, ptr %t342, ptr %t343, i32 %t344, i64 %t345)
  br label %bb52
bb52:
  %t350 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t350, i8 10)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s9)
  br label %bb54
bb54:
  %t352 = load i64, ptr %l20, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l20, !tbaa !24
  br label %bb46
bb55:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v3, ptr %t356)
  store { i64, ptr } %t358, ptr %l161
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s0)
  %t359 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t359, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l89, !tbaa !27
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
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 18
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d50, i32 0, i32 1) }, ptr %l158, !tbaa !27
  br label %bb59
bb58:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l158, !tbaa !27
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
  %t329 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t330 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t331 = load { i64, ptr }, ptr %l167, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = add i64 %t330, %t333
  %t335 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = load { i64, ptr }, ptr %l169, !tbaa !27
  %t343 = extractvalue { i64, ptr } %t342, 1
  %t344 = extractvalue { i64, ptr } %t342, 0
  %t345 = add i64 %t341, %t344
  %t346 = load { i64, ptr }, ptr %l172, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t346, 1
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = add i64 %t345, %t348
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
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

define dso_local i64 @compiler_2fexplain_2efirstClose(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t1, ptr %l1, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t2, 0
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = icmp sge i64 3, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sle i64 3, %t10
  br i1 %t11, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sle i64 %t13, %t14
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb5:
  %t17 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = getelementptr i8, ptr %t18, i64 3
  %t21 = sub i64 %t19, 3
  %t22 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t20, 1
  %t25 = call i64 @compiler_2fexplain_2efirstItemEndAll(ptr %v0, { i64, ptr } %t23)
  store i64 %t25, ptr %l10
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6896438a508f3415_b4ea8b5a918f5051)
  unreachable
bb7:
  %t26 = load i64, ptr %l10, !tbaa !24
  %t27 = add i64 3, %t26
  store i64 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fexplain_2efirstItemEnd(ptr %v0, { i64, ptr } %a0) #0 {
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
  br label %bb42
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
  br label %bb41
bb30:
  br label %bb31
bb31:
  %t100 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t104 = load i8, ptr %l8, !tbaa !22
  %t106 = icmp eq i8 %t104, 44
  br i1 %t106, label %bb34, label %bb35
bb33:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb37
bb34:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb36
bb35:
  %t108 = load i8, ptr %l8, !tbaa !22
  %t110 = icmp eq i8 %t108, 41
  store i1 %t110, ptr %l66, !tbaa !21
  br label %bb36
bb36:
  %t112 = load i1, ptr %l66, !tbaa !21
  store i1 %t112, ptr %l63, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l63, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t114 = load i64, ptr %l7, !tbaa !24
  store i64 %t114, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l6, !tbaa !24
  br label %bb7
bb42:
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  store i64 %t122, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2fexplain_2efitsLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l6 = alloca i32
  %l7 = alloca %"compiler/effects:Facts"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l31 = alloca i1
  %l34 = alloca ptr
  %l39 = alloca i32
  %l44 = alloca i32
  %l47 = alloca i32
  %l52 = alloca i32
  %l57 = alloca i64
  %l58 = alloca i32
  %l60 = alloca ptr
  %l62 = alloca %"compiler/effects:Facts"
  %l68 = alloca i64
  %l71 = alloca i64
  %l91 = alloca i1
  %l93 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca i1
  %l99 = alloca i64
  %l104 = alloca i64
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i32
  %l113 = alloca ptr
  %l114 = alloca i64
  %l117 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca i32
  %l123 = alloca { i64, ptr }
  %l131 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l143 = alloca i1
  %l144 = alloca i64
  %l148 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l161 = alloca { i64, ptr }
  %l165 = alloca i1
  %l166 = alloca i64
  %l170 = alloca { i64, ptr }
  %l172 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l181 = alloca i1
  %l183 = alloca ptr
  %l184 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s14 = alloca %olang.scope
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i32, ptr %l3, !tbaa !23
  store i32 %t5, ptr %l6, !tbaa !23
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v1, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l31
  br label %bb4
bb4:
  %t12 = load i1, ptr %l31, !tbaa !21
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  store ptr %t18, ptr %l34, !tbaa !29
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l39
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l3, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v1, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l44
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v1, ptr %t39, i64 %t40)
  store i32 %t43, ptr %l47
  br label %bb9
bb9:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t46 = getelementptr %"compiler/check:Checker", ptr %t44, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 2
  %t50 = load i32, ptr %l3, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v1, ptr %t49, i32 %t50)
  store i32 %t53, ptr %l52
  br label %bb10
bb10:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = load i32, ptr %l3, !tbaa !23
  %t63 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v1, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l57
  br label %bb11
bb11:
  %t64 = load ptr, ptr %l34, !tbaa !29
  %t65 = load i32, ptr %l39, !tbaa !23
  %t66 = load i32, ptr %l44, !tbaa !23
  %t67 = load i32, ptr %l47, !tbaa !23
  %t68 = load i32, ptr %l52, !tbaa !23
  %t69 = load i64, ptr %l57, !tbaa !24
  %t70 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v1, ptr %t64, i32 %t65, i32 %t66, i32 %t67, i32 %t68, i64 %t69, i1 false, i32 0, i64 0)
  store i32 %t70, ptr %l58
  br label %bb12
bb12:
  %t71 = load i32, ptr %l58, !tbaa !23
  store i32 %t71, ptr %l6, !tbaa !23
  br label %bb13
bb13:
  %t72 = load ptr, ptr %l1, !tbaa !29
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eEffects(ptr %v1, ptr %v1, ptr %t72)
  store ptr %t74, ptr %l60
  br label %bb14
bb14:
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load ptr, ptr %l60, !tbaa !29
  %t78 = call %"compiler/effects:Facts" @compiler_2feffects_2ecompiler_2feffects_3aEffects_2eOf(ptr %v1, ptr %t76, i64 %t75)
  store %"compiler/effects:Facts" %t78, ptr %l62
  br label %bb15
bb15:
  %t79 = load %"compiler/effects:Facts", ptr %l62
  store %"compiler/effects:Facts" %t79, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t80 = load [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames
  store i64 8, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load i64, ptr %l11, !tbaa !24
  %t91 = icmp sgt i64 %t89, 0
  br i1 %t91, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb21
bb18:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = sub i64 %t93, %t94
  %t98 = load i64, ptr %l11, !tbaa !24
  %t101 = add i64 %t97, %t98
  %t103 = sub i64 %t101, 1
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = sdiv i64 %t103, %t104
  store i64 %t107, ptr %l71, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb20
bb20:
  %t109 = load i64, ptr %l71, !tbaa !24
  store i64 %t109, ptr %l68, !tbaa !24
  br label %bb21
bb21:
  %t110 = load i64, ptr %l68, !tbaa !24
  store i64 %t110, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t111 = load i64, ptr %l13, !tbaa !24
  %t112 = load i64, ptr %l12, !tbaa !24
  %t115 = icmp slt i64 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t119 = load i64, ptr %l9, !tbaa !24
  %t120 = load i64, ptr %l13, !tbaa !24
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = mul i64 %t120, %t121
  %t127 = add i64 %t119, %t124
  store i64 %t127, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l14, !tbaa !24
  %t131 = getelementptr [8 x { i64, ptr }], ptr @G_2ecompiler_2ftypes_2ePromiseNames, i64 0, i64 %t129
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !37
  %t133 = load ptr, ptr @__olang_prog_scope
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t133, ptr %s4, { i64, ptr } %t132, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t135, ptr %l91
  br label %bb26
bb26:
  %t136 = load i1, ptr %l91, !tbaa !21
  br i1 %t136, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t137 = load i64, ptr %l14, !tbaa !24
  store i64 %t137, ptr %l93, !tbaa !24
  %t138 = load i64, ptr %l93, !tbaa !24
  %t139 = load i64, ptr %l93, !tbaa !24
  %t140 = shl i64 1, %t139
  %t143 = call { i64, ptr } @compiler_2feffects_2eBreaks(ptr %s0, ptr %s4, ptr %l7, i64 %t140)
  store { i64, ptr } %t143, ptr %l95
  br label %bb30
bb30:
  %t144 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t152 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t150, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t152, ptr %l97
  br label %bb31
bb31:
  %t153 = load i1, ptr %l97, !tbaa !21
  br i1 %t153, label %bb32, label %bb33
bb32:
  %t154 = load i64, ptr %l8, !tbaa !24
  %t155 = load i64, ptr %l14, !tbaa !24
  store i64 %t155, ptr %l99, !tbaa !24
  %t156 = load i64, ptr %l99, !tbaa !24
  %t157 = load i64, ptr %l99, !tbaa !24
  %t158 = shl i64 1, %t157
  %t161 = or i64 %t154, %t158
  store i64 %t161, ptr %l8, !tbaa !24
  br label %bb34
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t163 = load i64, ptr %l13, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l13, !tbaa !24
  br label %bb22
bb36:
  %t167 = ptrtoint ptr %s0 to i64
  store i64 %t167, ptr %l104, !tbaa !24
  %t168 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t168, label %bb37, label %bb38
bb37:
  %t170 = call ptr @__olang_region_make(ptr %s0)
  %t171 = ptrtoint ptr %t170 to i64
  store i64 %t171, ptr %l104, !tbaa !24
  br label %bb38
bb38:
  %t172 = load ptr, ptr %l1, !tbaa !29
  store ptr %t172, ptr %l106, !tbaa !29
  %t173 = load ptr, ptr %l1, !tbaa !29
  %t175 = getelementptr %"compiler/check:Checker", ptr %t173, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t178 = getelementptr %"compiler/generic:Program", ptr %t176, i32 0, i32 2
  store ptr %t178, ptr %l109, !tbaa !29
  %t179 = load i32, ptr %l6, !tbaa !23
  store i32 %t179, ptr %l110, !tbaa !23
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr %"compiler/check:Checker", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = getelementptr %"compiler/generic:Program", ptr %t183, i32 0, i32 2
  store ptr %t185, ptr %l113, !tbaa !29
  %t186 = load i64, ptr %l8, !tbaa !24
  store i64 %t186, ptr %l114, !tbaa !24
  %t187 = icmp sge i64 0, 0
  br i1 %t187, label %bb39, label %bb40
bb39:
  %t189 = icmp sle i64 0, 1152921504606846975
  br i1 %t189, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_a9d5b4a7460205c1_2b5a1ac3293d7e25)
  unreachable
bb41:
  %t191 = mul i64 0, 8
  %t192 = insertvalue { i64, ptr } undef, i64 0, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t193, ptr %l117, !tbaa !27
  %t194 = icmp sge i64 0, 0
  br i1 %t194, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_a9d5b4a7460205c1_2b5a1ac3293d7e25)
  unreachable
bb43:
  %t196 = icmp sle i64 0, 1152921504606846975
  br i1 %t196, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_a9d5b4a7460205c1_2b5a1ac3293d7e25)
  unreachable
bb45:
  %t198 = mul i64 0, 8
  %t199 = insertvalue { i64, ptr } undef, i64 0, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t201 = load ptr, ptr %l113, !tbaa !29
  %t202 = load i64, ptr %l114, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t205 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromises(ptr %v1, ptr %s0, ptr %s0, ptr %t201, i64 %t202, { i64, ptr } %t203, { i64, ptr } %t200)
  store i64 %t205, ptr %l121
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_a9d5b4a7460205c1_2b5a1ac3293d7e25)
  unreachable
bb47:
  %t206 = load ptr, ptr %l109, !tbaa !29
  %t207 = load i32, ptr %l110, !tbaa !23
  %t208 = load i64, ptr %l121, !tbaa !24
  %t209 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v1, ptr %t206, i32 %t207, i64 %t208)
  store i32 %t209, ptr %l122
  br label %bb48
bb48:
  %t210 = load i64, ptr %l104
  %t211 = inttoptr i64 %t210 to ptr
  %t212 = load ptr, ptr %l106, !tbaa !29
  %t213 = load i32, ptr %l122, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v1, ptr %t211, ptr %t212, i32 %t213)
  store { i64, ptr } %t214, ptr %l123
  br label %bb49
bb49:
  %t215 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t215, label %bb50, label %bb51
bb50:
  %t217 = load i64, ptr %l104
  %t218 = inttoptr i64 %t217 to ptr
  %t219 = load { i64, ptr }, ptr %l123
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = icmp ne ptr %t221, null
  %t223 = select i1 %t222, ptr %t221, ptr null
  %t224 = icmp eq ptr %t223, %t218
  call void @__olang_region_settle(ptr %t218, i1 %t224)
  br label %bb51
bb51:
  %t225 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t225, ptr %l15, !tbaa !27
  %t226 = load ptr, ptr %l2, !tbaa !29
  %t227 = load i64, ptr %l4, !tbaa !24
  %t228 = load ptr, ptr %l1, !tbaa !29
  %t230 = getelementptr %"compiler/check:Checker", ptr %t228, i32 0, i32 1
  %t231 = load ptr, ptr %t230, !tbaa !29
  %t233 = getelementptr %"compiler/generic:Program", ptr %t231, i32 0, i32 0
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t236 = getelementptr %"compiler/load:Loader", ptr %t234, i32 0, i32 3
  %t237 = load ptr, ptr %t236, !tbaa !29
  %t241 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRelationWords(ptr %v2, ptr %v1, ptr %s0, ptr %t226, i64 %t227, ptr %t237)
  store { i64, ptr } %t241, ptr %l131
  br label %bb52
bb52:
  %t242 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t242, ptr %l16, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t243, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t245 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  store i64 %t247, ptr %l19, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s9
  %t249 = load i64, ptr %l18, !tbaa !24
  %t250 = load i64, ptr %l19, !tbaa !24
  %t253 = icmp slt i64 %t249, %t250
  %t255 = xor i1 %t253, true
  br i1 %t255, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s9)
  br label %bb68
bb55:
  br label %bb56
bb56:
  %t257 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t257, ptr %l139, !tbaa !27
  %t258 = load i64, ptr %l18, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr { i64, ptr }, ptr %t261, i64 %t258
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !37
  store { i64, ptr } %t263, ptr %l20, !tbaa !27
  %t265 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t267 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s9, { i64, ptr } %t265, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t267, ptr %l143
  br label %bb57
bb57:
  %t268 = load i1, ptr %l143, !tbaa !21
  br i1 %t268, label %bb58, label %bb59
bb58:
  %t269 = ptrtoint ptr %s0 to i64
  store i64 %t269, ptr %l144, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t270, label %bb60, label %bb61
bb59:
  br label %bb66
bb60:
  %t272 = call ptr @__olang_region_make(ptr %s0)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l144, !tbaa !24
  br label %bb61
bb61:
  %t274 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t274, 1
  %t278 = extractvalue { i64, ptr } %t274, 0
  %t279 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t280 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t281 = add i64 %t278, %t280
  %t283 = extractvalue { i64, ptr } %t275, 1
  %t284 = extractvalue { i64, ptr } %t275, 0
  %t285 = add i64 %t281, %t284
  %t286 = load i64, ptr %l144
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = call ptr @__olang_scope_alloc(ptr %t287, i64 %t285)
  call void @olang_textcopy(ptr %t288, ptr %t277, i64 %t278)
  %t289 = getelementptr i8, ptr %t288, i64 %t278
  call void @olang_textcopy(ptr %t289, ptr %t279, i64 %t280)
  %t290 = getelementptr i8, ptr %t289, i64 %t280
  call void @olang_textcopy(ptr %t290, ptr %t283, i64 %t284)
  %t291 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t288, 1
  store { i64, ptr } %t292, ptr %l148, !tbaa !27
  %t293 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t293, label %bb62, label %bb63
bb62:
  %t295 = load i64, ptr %l144
  %t296 = inttoptr i64 %t295 to ptr
  %t297 = load { i64, ptr }, ptr %l148
  %t298 = extractvalue { i64, ptr } %t297, 1
  %t299 = call ptr @__olang_region_or(ptr %t298, ptr null)
  %t300 = icmp ne ptr %t299, null
  %t301 = select i1 %t300, ptr %t299, ptr null
  %t302 = icmp eq ptr %t301, %t296
  call void @__olang_region_settle(ptr %t296, i1 %t302)
  br label %bb63
bb63:
  %t303 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t303, ptr %l150, !tbaa !27
  %t304 = load { i64, ptr }, ptr %l148, !tbaa !27
  store { i64, ptr } %t304, ptr %l15, !tbaa !27
  %t305 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t305, label %bb64, label %bb65
bb64:
  %t307 = load { i64, ptr }, ptr %l150
  %t308 = extractvalue { i64, ptr } %t307, 1
  call void @__olang_region_release(ptr %t308)
  store { i64, ptr } zeroinitializer, ptr %l150
  br label %bb65
bb65:
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s9)
  br label %bb67
bb67:
  %t309 = load i64, ptr %l18, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l18, !tbaa !24
  br label %bb53
bb68:
  %t313 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t313, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t315 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t317 = extractvalue { i64, ptr } %t315, 0
  store i64 %t317, ptr %l23, !tbaa !24
  br label %bb69
bb69:
  store %olang.scope zeroinitializer, ptr %s14
  %t319 = load i64, ptr %l22, !tbaa !24
  %t320 = load i64, ptr %l23, !tbaa !24
  %t323 = icmp slt i64 %t319, %t320
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s14)
  br label %bb84
bb71:
  br label %bb72
bb72:
  %t327 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t327, ptr %l161, !tbaa !27
  %t328 = load i64, ptr %l22, !tbaa !24
  %t330 = getelementptr { i64, ptr }, ptr %l161, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr { i64, ptr }, ptr %t331, i64 %t328
  %t333 = load { i64, ptr }, ptr %t332, !tbaa !37
  store { i64, ptr } %t333, ptr %l24, !tbaa !27
  %t335 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t337 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s14, { i64, ptr } %t335, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t337, ptr %l165
  br label %bb73
bb73:
  %t338 = load i1, ptr %l165, !tbaa !21
  br i1 %t338, label %bb74, label %bb75
bb74:
  %t339 = ptrtoint ptr %s0 to i64
  store i64 %t339, ptr %l166, !tbaa !24
  %t340 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t340, label %bb76, label %bb77
bb75:
  br label %bb82
bb76:
  %t342 = call ptr @__olang_region_make(ptr %s0)
  %t343 = ptrtoint ptr %t342 to i64
  store i64 %t343, ptr %l166, !tbaa !24
  br label %bb77
bb77:
  %t344 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t347 = extractvalue { i64, ptr } %t344, 1
  %t348 = extractvalue { i64, ptr } %t344, 0
  %t349 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t350 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  %t351 = add i64 %t348, %t350
  %t353 = extractvalue { i64, ptr } %t345, 1
  %t354 = extractvalue { i64, ptr } %t345, 0
  %t355 = add i64 %t351, %t354
  %t356 = load i64, ptr %l166
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = call ptr @__olang_scope_alloc(ptr %t357, i64 %t355)
  call void @olang_textcopy(ptr %t358, ptr %t347, i64 %t348)
  %t359 = getelementptr i8, ptr %t358, i64 %t348
  call void @olang_textcopy(ptr %t359, ptr %t349, i64 %t350)
  %t360 = getelementptr i8, ptr %t359, i64 %t350
  call void @olang_textcopy(ptr %t360, ptr %t353, i64 %t354)
  %t361 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t362 = insertvalue { i64, ptr } %t361, ptr %t358, 1
  store { i64, ptr } %t362, ptr %l170, !tbaa !27
  %t363 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t363, label %bb78, label %bb79
bb78:
  %t365 = load i64, ptr %l166
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = load { i64, ptr }, ptr %l170
  %t368 = extractvalue { i64, ptr } %t367, 1
  %t369 = call ptr @__olang_region_or(ptr %t368, ptr null)
  %t370 = icmp ne ptr %t369, null
  %t371 = select i1 %t370, ptr %t369, ptr null
  %t372 = icmp eq ptr %t371, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t372)
  br label %bb79
bb79:
  %t373 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t373, ptr %l172, !tbaa !27
  %t374 = load { i64, ptr }, ptr %l170, !tbaa !27
  store { i64, ptr } %t374, ptr %l15, !tbaa !27
  %t375 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15
  br i1 %t375, label %bb80, label %bb81
bb80:
  %t377 = load { i64, ptr }, ptr %l172
  %t378 = extractvalue { i64, ptr } %t377, 1
  call void @__olang_region_release(ptr %t378)
  store { i64, ptr } zeroinitializer, ptr %l172
  br label %bb81
bb81:
  br label %bb82
bb82:
  call void @__olang_scope_close(ptr %s14)
  br label %bb83
bb83:
  %t379 = load i64, ptr %l22, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l22, !tbaa !24
  br label %bb69
bb84:
  %t383 = load ptr, ptr %l1, !tbaa !29
  %t384 = load ptr, ptr %l2, !tbaa !29
  %t385 = load i64, ptr %l4, !tbaa !24
  %t389 = call { i64, ptr } @compiler_2fexplain_2eAsValueWhere(ptr %v1, ptr %v2, ptr %s0, ptr %t383, ptr %t384, i64 %t385)
  store { i64, ptr } %t389, ptr %l179
  br label %bb85
bb85:
  %t390 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t391 = extractvalue { i64, ptr } %t390, 0
  %t392 = extractvalue { i64, ptr } %t390, 1
  %t393 = mul i64 %t391, 1
  %t394 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t393)
  call void @llvm.memcpy.p0.p0.i64(ptr %t394, ptr %t392, i64 %t393, i1 false)
  %t395 = insertvalue { i64, ptr } undef, i64 %t391, 0
  %t396 = insertvalue { i64, ptr } %t395, ptr %t394, 1
  %t398 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t396, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t398, ptr %l181
  br label %bb86
bb86:
  %t399 = load i1, ptr %l181, !tbaa !21
  %t400 = xor i1 %t399, true
  store ptr %a0, ptr %l183, !tbaa !29
  store { i64, ptr } %a5, ptr %l184, !tbaa !27
  %t404 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t404, ptr %l185, !tbaa !27
  br i1 %t400, label %bb87, label %bb88
bb87:
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l187, !tbaa !27
  br label %bb89
bb88:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d63, i32 0, i32 1) }, ptr %l187, !tbaa !27
  br label %bb89
bb89:
  %t407 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t408 = extractvalue { i64, ptr } %t407, 1
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t410 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t411 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t412 = add i64 %t409, %t411
  %t413 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t413, 1
  %t415 = extractvalue { i64, ptr } %t413, 0
  %t416 = add i64 %t412, %t415
  %t417 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t418 = extractvalue { i64, ptr } %t417, 1
  %t419 = extractvalue { i64, ptr } %t417, 0
  %t420 = add i64 %t416, %t419
  %t421 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t422 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  %t423 = add i64 %t420, %t422
  %t424 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t423)
  call void @olang_textcopy(ptr %t424, ptr %t408, i64 %t409)
  %t425 = getelementptr i8, ptr %t424, i64 %t409
  call void @olang_textcopy(ptr %t425, ptr %t410, i64 %t411)
  %t426 = getelementptr i8, ptr %t425, i64 %t411
  call void @olang_textcopy(ptr %t426, ptr %t414, i64 %t415)
  %t427 = getelementptr i8, ptr %t426, i64 %t415
  call void @olang_textcopy(ptr %t427, ptr %t418, i64 %t419)
  %t428 = getelementptr i8, ptr %t427, i64 %t419
  call void @olang_textcopy(ptr %t428, ptr %t421, i64 %t422)
  %t429 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr %t424, 1
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = extractvalue { i64, ptr } %t430, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t438 = load ptr, ptr %l183, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t438, { i64, ptr } %t437)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %l67 = alloca i64
  %l86 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i64
  %l93 = alloca i32
  %l94 = alloca { i64, ptr }
  %l97 = alloca ptr
  %l98 = alloca ptr
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
  %l223 = alloca { i64, ptr }
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
  call void @compiler_2fexplain_2eattrLines(ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %t24, ptr %t25, i64 %t26, { i64, ptr } %t23, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d66, i32 0, i32 1) })
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
  br label %bb22
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
  %t77 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
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
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t106 = load i64, ptr %l2, !tbaa !24
  %t109 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t105, i64 %t106)
  store i64 %t109, ptr %l67
  br label %bb15
bb15:
  %t110 = load ptr, ptr %l58, !tbaa !29
  %t111 = load ptr, ptr %l59, !tbaa !29
  %t112 = load ptr, ptr %l63, !tbaa !29
  %t113 = load i64, ptr %l67, !tbaa !24
  call void @compiler_2fexplain_2erequires(ptr %s0, ptr %v0, ptr %v0, ptr %s1, ptr %t110, ptr %t111, ptr %t112, i64 %t113, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d68, i32 0, i32 1) })
  br label %bb16
bb16:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t116 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2eobligations(ptr %s0, ptr %v0, ptr %v1, ptr %s1, ptr %l3, ptr %t114, ptr %t115, i64 %t116, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d69, i32 0, i32 1) })
  br label %bb17
bb17:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load ptr, ptr %l1, !tbaa !29
  %t123 = load i64, ptr %l2, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2enoValue(ptr %s0, ptr %v0, ptr %v1, ptr %s1, ptr %l3, ptr %t121, ptr %t122, i64 %t123, i64 %t124, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d70, i32 0, i32 1) })
  br label %bb18
bb18:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l2, !tbaa !24
  %t132 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %s0, ptr %v0, ptr %s1, ptr %l3, ptr %t130, i64 %t131, i64 %t132, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) })
  br label %bb19
bb19:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load ptr, ptr %l1, !tbaa !29
  %t139 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fexplain_2etwinLines(ptr %s0, ptr %v0, ptr %v1, ptr %s1, ptr %l3, ptr %t137, ptr %t138, i64 %t139, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d72, i32 0, i32 1) })
  br label %bb20
bb20:
  %t145 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t145, ptr %l86
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t146 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t146, ptr %rv
  br label %ret
bb22:
  store ptr %l3, ptr %l87, !tbaa !29
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l88, !tbaa !29
  %t148 = load i64, ptr %l2, !tbaa !24
  store i64 %t148, ptr %l89, !tbaa !24
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/check:Checker", ptr %t149, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !29
  %t153 = load i64, ptr %l2, !tbaa !24
  %t156 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t152, i64 %t153)
  store i32 %t156, ptr %l93
  br label %bb23
bb23:
  %t157 = load ptr, ptr %l88, !tbaa !29
  %t158 = load i64, ptr %l89, !tbaa !24
  %t159 = load i32, ptr %l93, !tbaa !23
  %t160 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %s0, ptr %t157, i64 %t158, i32 %t159, i64 -1)
  store { i64, ptr } %t160, ptr %l94
  br label %bb24
bb24:
  %t161 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t165 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t166 = add i64 %t163, %t165
  %t167 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t166)
  call void @olang_textcopy(ptr %t167, ptr %t162, i64 %t163)
  %t168 = getelementptr i8, ptr %t167, i64 %t163
  call void @olang_textcopy(ptr %t168, ptr %t164, i64 %t165)
  %t169 = insertvalue { i64, ptr } undef, i64 %t166, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t167, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t178 = load ptr, ptr %l87, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t178, { i64, ptr } %t177)
  br label %bb25
bb25:
  store ptr %l3, ptr %l97, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l98, !tbaa !29
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/check:Checker", ptr %t181, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t185 = load i64, ptr %l2, !tbaa !24
  %t188 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t184, i64 %t185)
  store ptr %t188, ptr %l102
  br label %bb26
bb26:
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/check:Checker", ptr %t189, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t193 = load i64, ptr %l2, !tbaa !24
  %t196 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t192, i64 %t193)
  store i64 %t196, ptr %l106
  br label %bb27
bb27:
  %t197 = load ptr, ptr %l97, !tbaa !29
  %t198 = load ptr, ptr %l98, !tbaa !29
  %t199 = load ptr, ptr %l102, !tbaa !29
  %t200 = load i64, ptr %l106, !tbaa !24
  call void @compiler_2fexplain_2erequires(ptr %s0, ptr %v0, ptr %v0, ptr %s0, ptr %t197, ptr %t198, ptr %t199, i64 %t200, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d74, i32 0, i32 1) })
  br label %bb28
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i64, ptr %l2, !tbaa !24
  %t205 = call { i64, ptr } @compiler_2fneeds_2eLines(ptr %v0, ptr %s4, ptr %t201, i64 %t202)
  store { i64, ptr } %t205, ptr %l109
  br label %bb29
bb29:
  %t206 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = mul i64 %t207, 16
  %t210 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  store { i64, ptr } %t212, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t214 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 0
  store i64 %t216, ptr %l9, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t218 = load i64, ptr %l8, !tbaa !24
  %t219 = load i64, ptr %l9, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s5)
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t226 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t226, ptr %l117, !tbaa !27
  %t227 = load i64, ptr %l8, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr { i64, ptr }, ptr %t230, i64 %t227
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !37
  %t235 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t238 = extractvalue { i64, ptr } %t232, 1
  %t239 = extractvalue { i64, ptr } %t232, 0
  %t240 = add i64 %t236, %t239
  %t241 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t242 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  %t243 = add i64 %t240, %t242
  %t244 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t243)
  call void @olang_textcopy(ptr %t244, ptr %t235, i64 %t236)
  %t245 = getelementptr i8, ptr %t244, i64 %t236
  call void @olang_textcopy(ptr %t245, ptr %t238, i64 %t239)
  %t246 = getelementptr i8, ptr %t245, i64 %t239
  call void @olang_textcopy(ptr %t246, ptr %t241, i64 %t242)
  %t247 = insertvalue { i64, ptr } undef, i64 %t243, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t244, 1
  %t250 = extractvalue { i64, ptr } %t248, 0
  %t251 = extractvalue { i64, ptr } %t248, 1
  %t252 = mul i64 %t250, 1
  %t253 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t252)
  call void @llvm.memcpy.p0.p0.i64(ptr %t253, ptr %t251, i64 %t252, i1 false)
  %t254 = insertvalue { i64, ptr } undef, i64 %t250, 0
  %t255 = insertvalue { i64, ptr } %t254, ptr %t253, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l3, { i64, ptr } %t255)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb35
bb35:
  %t258 = load i64, ptr %l8, !tbaa !24
  %t260 = add i64 %t258, 1
  store i64 %t260, ptr %l8, !tbaa !24
  br label %bb30
bb36:
  call void @__olang_scope_close(ptr %s4)
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t264 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fexplain_2enoValue(ptr %s0, ptr %v0, ptr %v1, ptr %s0, ptr %l3, ptr %t262, ptr %t263, i64 %t264, i64 -1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) })
  br label %bb37
bb37:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/check:Checker", ptr %t269, i32 0, i32 1
  %t272 = load ptr, ptr %t271, !tbaa !29
  %t273 = load i64, ptr %l2, !tbaa !24
  %t276 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t272, i64 %t273)
  store ptr %t276, ptr %l133
  br label %bb38
bb38:
  %t277 = load ptr, ptr %l133, !tbaa !29
  store ptr %t277, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/check:Checker", ptr %t278, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !29
  %t283 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %t281)
  store i64 %t283, ptr %l136
  br label %bb39
bb39:
  %t284 = load i64, ptr %l136, !tbaa !24
  store i64 %t284, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t285 = load i64, ptr %l13, !tbaa !24
  %t286 = load i64, ptr %l12, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb40, label %bb41
bb40:
  %t291 = load i64, ptr %l14, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb45
bb42:
  %t295 = load i64, ptr %l13, !tbaa !24
  %t296 = load i64, ptr %l12, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l14, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l14, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l143, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l143, !tbaa !24
  br label %bb44
bb44:
  %t311 = load i64, ptr %l143, !tbaa !24
  store i64 %t311, ptr %l140, !tbaa !24
  br label %bb45
bb45:
  %t312 = load i64, ptr %l140, !tbaa !24
  store i64 %t312, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb46
bb46:
  store %olang.scope zeroinitializer, ptr %s9
  %t313 = load i64, ptr %l16, !tbaa !24
  %t314 = load i64, ptr %l15, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb47, label %bb48
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb70
bb48:
  br label %bb49
bb49:
  %t321 = load i64, ptr %l12, !tbaa !24
  %t322 = load i64, ptr %l16, !tbaa !24
  %t323 = load i64, ptr %l14, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  store i64 %t329, ptr %l17, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/check:Checker", ptr %t331, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t335 = load i64, ptr %l17, !tbaa !24
  %t338 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t334, i64 %t335)
  store i64 %t338, ptr %l164
  br label %bb50
bb50:
  %t339 = load i64, ptr %l2, !tbaa !24
  %t340 = load i64, ptr %l164, !tbaa !24
  %t342 = icmp ne i64 %t340, %t339
  br i1 %t342, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb52:
  br label %bb53
bb53:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load i64, ptr %l17, !tbaa !24
  %t348 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %t344, i64 %t345)
  store i64 %t348, ptr %l169
  br label %bb54
bb54:
  %t349 = load i64, ptr %l169, !tbaa !24
  store i64 %t349, ptr %l18, !tbaa !24
  %t350 = load i64, ptr %l18, !tbaa !24
  %t352 = icmp slt i64 %t350, 0
  br i1 %t352, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb56:
  br label %bb57
bb57:
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l172, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/check:Checker", ptr %t355, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !29
  %t359 = load i64, ptr %l17, !tbaa !24
  %t362 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t358, i64 %t359)
  store i32 %t362, ptr %l176
  br label %bb58
bb58:
  %t363 = load ptr, ptr %l11, !tbaa !29
  %t365 = getelementptr %"compiler/ast:Func", ptr %t363, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !29
  %t367 = load ptr, ptr %l11, !tbaa !29
  %t369 = getelementptr %"compiler/ast:Func", ptr %t367, i32 0, i32 3
  %t370 = load ptr, ptr %t369, !tbaa !29
  %t372 = getelementptr %"compiler/ast:Sig", ptr %t370, i32 0, i32 0
  %t373 = load { i64, ptr }, ptr %t372, !tbaa !27
  %t374 = load ptr, ptr %l172, !tbaa !29
  %t375 = load i32, ptr %l176, !tbaa !23
  %t378 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t374, i32 %t375, ptr %t366, { i64, ptr } %t373)
  store i32 %t378, ptr %l182
  br label %bb59
bb59:
  %t379 = load i32, ptr %l182, !tbaa !23
  store i32 %t379, ptr %l19, !tbaa !23
  store ptr %l3, ptr %l183, !tbaa !29
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 0
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/load:Loader", ptr %t386, i32 0, i32 3
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t390 = load ptr, ptr %l11, !tbaa !29
  %t392 = getelementptr %"compiler/ast:Func", ptr %t390, i32 0, i32 2
  %t393 = load i32, ptr %t392, !tbaa !23
  %t396 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s9, ptr %t389, i32 %t393)
  store { i64, ptr } %t396, ptr %l190
  br label %bb60
bb60:
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l191, !tbaa !29
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = getelementptr %"compiler/check:Checker", ptr %t398, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !29
  %t402 = load i64, ptr %l17, !tbaa !24
  %t405 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %t401, i64 %t402)
  store i32 %t405, ptr %l195
  br label %bb61
bb61:
  %t406 = load ptr, ptr %l191, !tbaa !29
  %t407 = load i32, ptr %l195, !tbaa !23
  %t408 = call { i64, ptr } @compiler_2fexplain_2etypeArgs(ptr %v0, ptr %s9, ptr %t406, i32 %t407)
  store { i64, ptr } %t408, ptr %l196
  br label %bb62
bb62:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i32, ptr %l19, !tbaa !23
  %t411 = load i64, ptr %l18, !tbaa !24
  %t415 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s9, ptr %t409, i32 %t410, i64 %t411)
  store { i64, ptr } %t415, ptr %l200
  br label %bb63
bb63:
  %t416 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t418 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t419 = extractvalue { i64, ptr } %t418, 1
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t421 = add i64 %t417, %t420
  %t422 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t425 = add i64 %t421, %t424
  %t426 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t427 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t428 = add i64 %t425, %t427
  %t429 = load { i64, ptr }, ptr %l200, !tbaa !27
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = extractvalue { i64, ptr } %t429, 0
  %t432 = add i64 %t428, %t431
  %t433 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t434 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t435 = add i64 %t432, %t434
  %t436 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t435)
  call void @olang_textcopy(ptr %t436, ptr %t416, i64 %t417)
  %t437 = getelementptr i8, ptr %t436, i64 %t417
  call void @olang_textcopy(ptr %t437, ptr %t419, i64 %t420)
  %t438 = getelementptr i8, ptr %t437, i64 %t420
  call void @olang_textcopy(ptr %t438, ptr %t423, i64 %t424)
  %t439 = getelementptr i8, ptr %t438, i64 %t424
  call void @olang_textcopy(ptr %t439, ptr %t426, i64 %t427)
  %t440 = getelementptr i8, ptr %t439, i64 %t427
  call void @olang_textcopy(ptr %t440, ptr %t430, i64 %t431)
  %t441 = getelementptr i8, ptr %t440, i64 %t431
  call void @olang_textcopy(ptr %t441, ptr %t433, i64 %t434)
  %t442 = insertvalue { i64, ptr } undef, i64 %t435, 0
  %t443 = insertvalue { i64, ptr } %t442, ptr %t436, 1
  %t445 = extractvalue { i64, ptr } %t443, 0
  %t446 = extractvalue { i64, ptr } %t443, 1
  %t447 = mul i64 %t445, 1
  %t448 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t447)
  call void @llvm.memcpy.p0.p0.i64(ptr %t448, ptr %t446, i64 %t447, i1 false)
  %t449 = insertvalue { i64, ptr } undef, i64 %t445, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t448, 1
  %t451 = load ptr, ptr %l183, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t451, { i64, ptr } %t450)
  br label %bb64
bb64:
  %t453 = load ptr, ptr %l0, !tbaa !29
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t455 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2eobligations(ptr %s0, ptr %v0, ptr %v1, ptr %s9, ptr %l3, ptr %t453, ptr %t454, i64 %t455, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb65
bb65:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load ptr, ptr %l1, !tbaa !29
  %t462 = load i32, ptr %l19, !tbaa !23
  %t463 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2efitsLine(ptr %s0, ptr %v0, ptr %v1, ptr %s9, ptr %l3, ptr %t460, ptr %t461, i32 %t462, i64 %t463, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d82, i32 0, i32 1) })
  br label %bb66
bb66:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i64, ptr %l2, !tbaa !24
  %t471 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %s0, ptr %v0, ptr %s9, ptr %l3, ptr %t469, i64 %t470, i64 %t471, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d83, i32 0, i32 1) })
  br label %bb67
bb67:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load ptr, ptr %l1, !tbaa !29
  %t478 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fexplain_2etwinLines(ptr %s0, ptr %v0, ptr %v1, ptr %s9, ptr %l3, ptr %t476, ptr %t477, i64 %t478, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d84, i32 0, i32 1) })
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb69
bb69:
  %t483 = load i64, ptr %l16, !tbaa !24
  %t485 = add i64 %t483, 1
  store i64 %t485, ptr %l16, !tbaa !24
  br label %bb46
bb70:
  %t488 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t488, ptr %l223
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s0)
  %t489 = load { i64, ptr }, ptr %l223, !tbaa !27
  store { i64, ptr } %t489, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i8
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l50 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i64
  %l59 = alloca ptr
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l79 = alloca i64
  %l80 = alloca i64
  %l84 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l94 = alloca i64
  %l98 = alloca i64
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l112 = alloca i32
  %l114 = alloca { i64, ptr }
  %l118 = alloca i1
  %l119 = alloca ptr
  %l124 = alloca i32
  %l125 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca i1
  %l131 = alloca i1
  %l132 = alloca i64
  %l138 = alloca i64
  %l139 = alloca i64
  %l143 = alloca { i64, ptr }
  %l145 = alloca i64
  %l146 = alloca i64
  %l152 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l158 = alloca i1
  %l159 = alloca i1
  %l161 = alloca i1
  %l162 = alloca i64
  %l168 = alloca i64
  %l169 = alloca i64
  %l173 = alloca { i64, ptr }
  %l175 = alloca i64
  %l176 = alloca i64
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l188 = alloca i1
  %l189 = alloca i1
  %l191 = alloca i1
  %l193 = alloca i64
  %l194 = alloca i64
  %l207 = alloca i64
  %l210 = alloca i64
  %l228 = alloca { i64, ptr }
  %l233 = alloca i1
  %l240 = alloca i1
  %l243 = alloca i1
  %l250 = alloca i1
  %l253 = alloca i1
  %l256 = alloca i1
  %l259 = alloca i1
  %l265 = alloca i1
  %l266 = alloca { i64, ptr }
  %l274 = alloca i64
  %l280 = alloca i64
  %l281 = alloca i64
  %l285 = alloca { i64, ptr }
  %l286 = alloca { i64, ptr }
  %l287 = alloca i64
  %l288 = alloca i64
  %l292 = alloca { i64, ptr }
  %l293 = alloca { i64, ptr }
  %l294 = alloca i64
  %l297 = alloca i64
  %l298 = alloca i64
  %l304 = alloca { i64, ptr }
  %l306 = alloca { i64, ptr }
  %l311 = alloca i1
  %l312 = alloca { i64, ptr }
  %l314 = alloca i64
  %l315 = alloca ptr
  %l316 = alloca i64
  %l317 = alloca i64
  %l321 = alloca { i64, ptr }
  %l324 = alloca { i64, ptr }
  %l328 = alloca i64
  %l333 = alloca i64
  %l334 = alloca { i64, ptr }
  %l335 = alloca i64
  %l337 = alloca i64
  %l338 = alloca i64
  %l352 = alloca i64
  %l353 = alloca i64
  %l354 = alloca i64
  %l362 = alloca { i64, ptr }
  %l364 = alloca i64
  %l366 = alloca i64
  %l367 = alloca i64
  %l372 = alloca i64
  %l374 = alloca i64
  %l375 = alloca i64
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store ptr %t8, ptr %l30
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l30, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = ptrtoint ptr %s0 to i64
  store i64 %t10, ptr %l31, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = call ptr @__olang_region_make(ptr %s0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l31, !tbaa !24
  br label %bb3
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/ast:Func", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %t27, !tbaa !23
  %t31 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t24, i32 %t28)
  store { i64, ptr } %t31, ptr %l39
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l40, !tbaa !29
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t33)
  store i64 %t35, ptr %l42
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i64, ptr %l1, !tbaa !24
  %t40 = call i64 @compiler_2fexplain_2ereceiverVars(ptr %v0, ptr %t36, i64 %t37)
  store i64 %t40, ptr %l45
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l40, !tbaa !29
  %t42 = load i64, ptr %l42, !tbaa !24
  %t43 = load i64, ptr %l45, !tbaa !24
  %t44 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s0, ptr %t41, i64 %t42, i64 %t43)
  store { i64, ptr } %t44, ptr %l46
  br label %bb7
bb7:
  %t45 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = add i64 %t47, %t50
  %t52 = load i64, ptr %l31
  %t53 = inttoptr i64 %t52 to ptr
  %t54 = call ptr @__olang_scope_alloc(ptr %t53, i64 %t51)
  call void @olang_textcopy(ptr %t54, ptr %t46, i64 %t47)
  %t55 = getelementptr i8, ptr %t54, i64 %t47
  call void @olang_textcopy(ptr %t55, ptr %t49, i64 %t50)
  %t56 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  store { i64, ptr } %t57, ptr %l47, !tbaa !27
  %t58 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5
  br i1 %t58, label %bb8, label %bb9
bb8:
  %t60 = load i64, ptr %l31
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = load { i64, ptr }, ptr %l47
  %t63 = extractvalue { i64, ptr } %t62, 1
  %t64 = call ptr @__olang_region_or(ptr %t63, ptr null)
  %t65 = icmp ne ptr %t64, null
  %t66 = select i1 %t65, ptr %t64, ptr null
  %t67 = icmp eq ptr %t66, %t61
  call void @__olang_region_settle(ptr %t61, i1 %t67)
  br label %bb9
bb9:
  %t68 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t68, ptr %l5, !tbaa !27
  %t69 = load ptr, ptr %l4, !tbaa !29
  %t71 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %t69)
  store i1 %t71, ptr %l50
  br label %bb10
bb10:
  %t72 = load i1, ptr %l50, !tbaa !21
  br i1 %t72, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/check:Checker", ptr %t73, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !29
  %t78 = getelementptr %"compiler/generic:Program", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/load:Loader", ptr %t79, i32 0, i32 10
  store ptr %t81, ptr %l54, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t89 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t85, i64 %t86)
  store i64 %t89, ptr %l58
  br label %bb13
bb12:
  br label %bb38
bb13:
  %t90 = load ptr, ptr %l54, !tbaa !29
  %t91 = load i64, ptr %l58, !tbaa !24
  %t92 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t90, i64 %t91)
  store ptr %t92, ptr %l59
  br label %bb14
bb14:
  %t93 = load ptr, ptr %l59, !tbaa !29
  %t95 = getelementptr %"compiler/load:Module", ptr %t93, i32 0, i32 6
  %t96 = load ptr, ptr %t95, !tbaa !29
  store ptr %t96, ptr %l6, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_fc7f64fd7b454af3_cf2a3e2278d9fc1f)
  unreachable
bb16:
  br label %bb17
bb17:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr %"compiler/source:Source", ptr %t102, i32 0, i32 1
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l7, !tbaa !27
  %t108 = load ptr, ptr %l4, !tbaa !29
  %t110 = getelementptr %"compiler/ast:Func", ptr %t108, i32 0, i32 9
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = icmp eq ptr %t111, null
  br i1 %t113, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_499d9639469ba124_2d1e6838c6dcdf80)
  unreachable
bb19:
  br label %bb20
bb20:
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/ast:Func", ptr %t115, i32 0, i32 9
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t120 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %t118)
  store %"compiler/source:Span" %t120, ptr %l72
  br label %bb21
bb21:
  %t121 = load %"compiler/source:Span", ptr %l72
  store %"compiler/source:Span" %t121, ptr %l8
  %t122 = ptrtoint ptr %s0 to i64
  store i64 %t122, ptr %l73, !tbaa !24
  %t123 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5
  br i1 %t123, label %bb22, label %bb23
bb22:
  %t125 = call ptr @__olang_region_make(ptr %s0)
  %t126 = ptrtoint ptr %t125 to i64
  store i64 %t126, ptr %l73, !tbaa !24
  br label %bb23
bb23:
  %t127 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t127, ptr %l75, !tbaa !27
  %t128 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t129 = load i32, ptr %t128, !tbaa !23
  %t131 = sext i32 %t129 to i64
  store i64 %t131, ptr %l77, !tbaa !24
  %t132 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 1
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = sext i32 %t133 to i64
  store i64 %t135, ptr %l79, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 0
  store i64 %t137, ptr %l80, !tbaa !24
  %t138 = load i64, ptr %l77, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  br i1 %t139, label %bb24, label %bb25
bb24:
  %t141 = load i64, ptr %l77, !tbaa !24
  %t142 = load i64, ptr %l79, !tbaa !24
  %t143 = icmp sle i64 %t141, %t142
  br i1 %t143, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb26:
  %t145 = load i64, ptr %l79, !tbaa !24
  %t146 = load i64, ptr %l80, !tbaa !24
  %t147 = icmp sle i64 %t145, %t146
  br i1 %t147, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb28:
  %t149 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l77, !tbaa !24
  %t152 = load i64, ptr %l79, !tbaa !24
  %t153 = getelementptr i8, ptr %t150, i64 %t151
  %t154 = sub i64 %t152, %t151
  %t155 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t153, 1
  store { i64, ptr } %t156, ptr %l84, !tbaa !27
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/check:Checker", ptr %t157, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 3
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t169 = getelementptr %"compiler/ast:Func", ptr %t167, i32 0, i32 10
  %t170 = load i32, ptr %t169, !tbaa !23
  %t173 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t166, i32 %t170)
  store { i64, ptr } %t173, ptr %l91
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23)
  unreachable
bb30:
  %t174 = load ptr, ptr %l0, !tbaa !29
  store ptr %t174, ptr %l92, !tbaa !29
  %t175 = load i64, ptr %l1, !tbaa !24
  %t177 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t175)
  store i64 %t177, ptr %l94
  br label %bb31
bb31:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  %t185 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %t181, i64 %t182)
  store i64 %t185, ptr %l98
  br label %bb32
bb32:
  %t186 = load ptr, ptr %l92, !tbaa !29
  %t187 = load i64, ptr %l94, !tbaa !24
  %t188 = load i64, ptr %l98, !tbaa !24
  %t189 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s2, ptr %t186, i64 %t187, i64 %t188)
  store { i64, ptr } %t189, ptr %l99
  br label %bb33
bb33:
  %t190 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 1
  %t192 = extractvalue { i64, ptr } %t190, 0
  %t193 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = add i64 %t195, %t198
  %t200 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = add i64 %t199, %t202
  %t204 = load i64, ptr %l73
  %t205 = inttoptr i64 %t204 to ptr
  %t206 = call ptr @__olang_scope_alloc(ptr %t205, i64 %t203)
  call void @olang_textcopy(ptr %t206, ptr %t191, i64 %t192)
  %t207 = getelementptr i8, ptr %t206, i64 %t192
  call void @olang_textcopy(ptr %t207, ptr %t193, i64 %t194)
  %t208 = getelementptr i8, ptr %t207, i64 %t194
  call void @olang_textcopy(ptr %t208, ptr %t197, i64 %t198)
  %t209 = getelementptr i8, ptr %t208, i64 %t198
  call void @olang_textcopy(ptr %t209, ptr %t201, i64 %t202)
  %t210 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t206, 1
  store { i64, ptr } %t211, ptr %l100, !tbaa !27
  %t212 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5
  br i1 %t212, label %bb34, label %bb35
bb34:
  %t214 = load i64, ptr %l73
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = load { i64, ptr }, ptr %l100
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr null
  %t221 = icmp eq ptr %t220, %t215
  call void @__olang_region_settle(ptr %t215, i1 %t221)
  br label %bb35
bb35:
  %t222 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t222, ptr %l102, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t223, ptr %l5, !tbaa !27
  %t224 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5
  br i1 %t224, label %bb36, label %bb37
bb36:
  %t226 = load { i64, ptr }, ptr %l102
  %t227 = extractvalue { i64, ptr } %t226, 1
  call void @__olang_region_release(ptr %t227)
  store { i64, ptr } zeroinitializer, ptr %l102
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s2)
  br label %bb38
bb38:
  %t228 = load ptr, ptr %l0, !tbaa !29
  store ptr %t228, ptr %l104, !tbaa !29
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i32, ptr %l2, !tbaa !23
  %t231 = load ptr, ptr %l4, !tbaa !29
  %t233 = getelementptr %"compiler/ast:Func", ptr %t231, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !29
  %t235 = load ptr, ptr %l4, !tbaa !29
  %t237 = getelementptr %"compiler/ast:Func", ptr %t235, i32 0, i32 3
  %t238 = load ptr, ptr %t237, !tbaa !29
  %t240 = getelementptr %"compiler/ast:Sig", ptr %t238, i32 0, i32 0
  %t241 = load { i64, ptr }, ptr %t240, !tbaa !27
  %t246 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %v0, ptr %v0, ptr %t229, i32 %t230, ptr %t234, { i64, ptr } %t241)
  store i32 %t246, ptr %l112
  br label %bb39
bb39:
  %t248 = load ptr, ptr %l104, !tbaa !29
  %t249 = load i32, ptr %l112, !tbaa !23
  %t251 = call { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %s0, ptr %t248, i32 %t249, i64 %a3)
  store { i64, ptr } %t251, ptr %l114
  br label %bb40
bb40:
  %t252 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t252, ptr %l9, !tbaa !27
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/check:Checker", ptr %t253, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !29
  %t257 = load i64, ptr %l1, !tbaa !24
  %t260 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %t256, i64 %t257)
  store i1 %t260, ptr %l118
  br label %bb41
bb41:
  %t261 = load i1, ptr %l118, !tbaa !21
  br i1 %t261, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s4
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l119, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/check:Checker", ptr %t263, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !29
  %t268 = getelementptr %"compiler/generic:Program", ptr %t266, i32 0, i32 2
  %t269 = load i32, ptr %l2, !tbaa !23
  %t272 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t268, i32 %t269)
  store i32 %t272, ptr %l124
  br label %bb44
bb43:
  br label %bb181
bb44:
  %t273 = load ptr, ptr %l119, !tbaa !29
  %t274 = load i32, ptr %l124, !tbaa !23
  %t275 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s4, ptr %t273, i32 %t274)
  store { i64, ptr } %t275, ptr %l125
  br label %bb45
bb45:
  %t276 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t276, ptr %l10, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t281 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t277, { i64, ptr } %t278)
  store i1 %t281, ptr %l128
  br label %bb46
bb46:
  %t282 = load i1, ptr %l128, !tbaa !21
  br i1 %t282, label %bb47, label %bb48
bb47:
  %t283 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t285 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s4, { i64, ptr } %t283, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t285, ptr %l131
  br label %bb49
bb48:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb50
bb49:
  %t286 = load i1, ptr %l131, !tbaa !21
  store i1 %t286, ptr %l129, !tbaa !21
  br label %bb50
bb50:
  %t287 = load i1, ptr %l129, !tbaa !21
  br i1 %t287, label %bb51, label %bb52
bb51:
  %t288 = ptrtoint ptr %s0 to i64
  store i64 %t288, ptr %l132, !tbaa !24
  %t289 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t289, label %bb53, label %bb54
bb52:
  store %olang.scope zeroinitializer, ptr %s7
  %t291 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t292 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t295 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t291, { i64, ptr } %t292)
  store i1 %t295, ptr %l158
  br label %bb71
bb53:
  %t296 = call ptr @__olang_region_make(ptr %s0)
  %t297 = ptrtoint ptr %t296 to i64
  store i64 %t297, ptr %l132, !tbaa !24
  br label %bb54
bb54:
  %t298 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t300 = extractvalue { i64, ptr } %t298, 0
  %t301 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t306 = sub i64 %t300, %t303
  store i64 %t306, ptr %l138, !tbaa !24
  %t307 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t308 = extractvalue { i64, ptr } %t307, 0
  store i64 %t308, ptr %l139, !tbaa !24
  %t309 = icmp sge i64 0, 0
  br i1 %t309, label %bb55, label %bb56
bb55:
  %t311 = load i64, ptr %l138, !tbaa !24
  %t312 = icmp sle i64 0, %t311
  br i1 %t312, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb57:
  %t314 = load i64, ptr %l138, !tbaa !24
  %t315 = load i64, ptr %l139, !tbaa !24
  %t316 = icmp sle i64 %t314, %t315
  br i1 %t316, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb59:
  %t318 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = load i64, ptr %l138, !tbaa !24
  %t321 = getelementptr i8, ptr %t319, i64 0
  %t322 = sub i64 %t320, 0
  %t323 = insertvalue { i64, ptr } undef, i64 %t322, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t321, 1
  store { i64, ptr } %t324, ptr %l143, !tbaa !27
  %t325 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t327 = extractvalue { i64, ptr } %t325, 0
  store i64 %t327, ptr %l145, !tbaa !24
  %t328 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 0
  store i64 %t329, ptr %l146, !tbaa !24
  %t330 = icmp sge i64 9, 0
  br i1 %t330, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb61:
  %t332 = load i64, ptr %l145, !tbaa !24
  %t333 = icmp sle i64 9, %t332
  br i1 %t333, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb63:
  %t335 = load i64, ptr %l145, !tbaa !24
  %t336 = load i64, ptr %l146, !tbaa !24
  %t337 = icmp sle i64 %t335, %t336
  br i1 %t337, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb65:
  %t339 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !27
  %t341 = load i64, ptr %l145, !tbaa !24
  %t342 = getelementptr i8, ptr %t340, i64 9
  %t343 = sub i64 %t341, 9
  %t344 = insertvalue { i64, ptr } undef, i64 %t343, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t342, 1
  %t346 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t347 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 1
  %t349 = extractvalue { i64, ptr } %t347, 0
  %t350 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t351 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t352 = add i64 %t349, %t351
  %t354 = extractvalue { i64, ptr } %t345, 1
  %t355 = extractvalue { i64, ptr } %t345, 0
  %t356 = add i64 %t352, %t355
  %t357 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t358 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  %t359 = add i64 %t356, %t358
  %t361 = extractvalue { i64, ptr } %t346, 1
  %t362 = extractvalue { i64, ptr } %t346, 0
  %t363 = add i64 %t359, %t362
  %t364 = load i64, ptr %l132
  %t365 = inttoptr i64 %t364 to ptr
  %t366 = call ptr @__olang_scope_alloc(ptr %t365, i64 %t363)
  call void @olang_textcopy(ptr %t366, ptr %t348, i64 %t349)
  %t367 = getelementptr i8, ptr %t366, i64 %t349
  call void @olang_textcopy(ptr %t367, ptr %t350, i64 %t351)
  %t368 = getelementptr i8, ptr %t367, i64 %t351
  call void @olang_textcopy(ptr %t368, ptr %t354, i64 %t355)
  %t369 = getelementptr i8, ptr %t368, i64 %t355
  call void @olang_textcopy(ptr %t369, ptr %t357, i64 %t358)
  %t370 = getelementptr i8, ptr %t369, i64 %t358
  call void @olang_textcopy(ptr %t370, ptr %t361, i64 %t362)
  %t371 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t372 = insertvalue { i64, ptr } %t371, ptr %t366, 1
  store { i64, ptr } %t372, ptr %l152, !tbaa !27
  %t373 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t373, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546)
  unreachable
bb67:
  %t375 = load i64, ptr %l132
  %t376 = inttoptr i64 %t375 to ptr
  %t377 = load { i64, ptr }, ptr %l152
  %t378 = extractvalue { i64, ptr } %t377, 1
  %t379 = call ptr @__olang_region_or(ptr %t378, ptr null)
  %t380 = icmp ne ptr %t379, null
  %t381 = select i1 %t380, ptr %t379, ptr null
  %t382 = icmp eq ptr %t381, %t376
  call void @__olang_region_settle(ptr %t376, i1 %t382)
  br label %bb68
bb68:
  %t383 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t383, ptr %l154, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l152, !tbaa !27
  store { i64, ptr } %t384, ptr %l9, !tbaa !27
  %t385 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t385, label %bb69, label %bb70
bb69:
  %t387 = load { i64, ptr }, ptr %l154
  %t388 = extractvalue { i64, ptr } %t387, 1
  call void @__olang_region_release(ptr %t388)
  store { i64, ptr } zeroinitializer, ptr %l154
  br label %bb70
bb70:
  br label %bb180
bb71:
  %t389 = load i1, ptr %l158, !tbaa !21
  br i1 %t389, label %bb72, label %bb73
bb72:
  %t390 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t392 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s7, { i64, ptr } %t390, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t392, ptr %l161
  br label %bb74
bb73:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb75
bb74:
  %t393 = load i1, ptr %l161, !tbaa !21
  store i1 %t393, ptr %l159, !tbaa !21
  br label %bb75
bb75:
  %t394 = load i1, ptr %l159, !tbaa !21
  br i1 %t394, label %bb76, label %bb77
bb76:
  %t395 = ptrtoint ptr %s0 to i64
  store i64 %t395, ptr %l162, !tbaa !24
  %t396 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t396, label %bb78, label %bb79
bb77:
  store %olang.scope zeroinitializer, ptr %s10
  %t398 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t399 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t402 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s4, { i64, ptr } %t398, { i64, ptr } %t399)
  store i1 %t402, ptr %l188
  br label %bb96
bb78:
  %t403 = call ptr @__olang_region_make(ptr %s0)
  %t404 = ptrtoint ptr %t403 to i64
  store i64 %t404, ptr %l162, !tbaa !24
  br label %bb79
bb79:
  %t405 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t413 = sub i64 %t407, %t410
  store i64 %t413, ptr %l168, !tbaa !24
  %t414 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 0
  store i64 %t415, ptr %l169, !tbaa !24
  %t416 = icmp sge i64 0, 0
  br i1 %t416, label %bb80, label %bb81
bb80:
  %t418 = load i64, ptr %l168, !tbaa !24
  %t419 = icmp sle i64 0, %t418
  br i1 %t419, label %bb82, label %bb83
bb81:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb82:
  %t421 = load i64, ptr %l168, !tbaa !24
  %t422 = load i64, ptr %l169, !tbaa !24
  %t423 = icmp sle i64 %t421, %t422
  br i1 %t423, label %bb84, label %bb85
bb83:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb84:
  %t425 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t426 = load ptr, ptr %t425, !tbaa !27
  %t427 = load i64, ptr %l168, !tbaa !24
  %t428 = getelementptr i8, ptr %t426, i64 0
  %t429 = sub i64 %t427, 0
  %t430 = insertvalue { i64, ptr } undef, i64 %t429, 0
  %t431 = insertvalue { i64, ptr } %t430, ptr %t428, 1
  store { i64, ptr } %t431, ptr %l173, !tbaa !27
  %t432 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t432, 0
  store i64 %t434, ptr %l175, !tbaa !24
  %t435 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t436 = extractvalue { i64, ptr } %t435, 0
  store i64 %t436, ptr %l176, !tbaa !24
  %t437 = icmp sge i64 16, 0
  br i1 %t437, label %bb86, label %bb87
bb85:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb86:
  %t439 = load i64, ptr %l175, !tbaa !24
  %t440 = icmp sle i64 16, %t439
  br i1 %t440, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb88:
  %t442 = load i64, ptr %l175, !tbaa !24
  %t443 = load i64, ptr %l176, !tbaa !24
  %t444 = icmp sle i64 %t442, %t443
  br i1 %t444, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb90:
  %t446 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t447 = load ptr, ptr %t446, !tbaa !27
  %t448 = load i64, ptr %l175, !tbaa !24
  %t449 = getelementptr i8, ptr %t447, i64 16
  %t450 = sub i64 %t448, 16
  %t451 = insertvalue { i64, ptr } undef, i64 %t450, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t449, 1
  %t453 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t454 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t454, 1
  %t456 = extractvalue { i64, ptr } %t454, 0
  %t457 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t458 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  %t459 = add i64 %t456, %t458
  %t461 = extractvalue { i64, ptr } %t452, 1
  %t462 = extractvalue { i64, ptr } %t452, 0
  %t463 = add i64 %t459, %t462
  %t464 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t465 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  %t466 = add i64 %t463, %t465
  %t468 = extractvalue { i64, ptr } %t453, 1
  %t469 = extractvalue { i64, ptr } %t453, 0
  %t470 = add i64 %t466, %t469
  %t471 = load i64, ptr %l162
  %t472 = inttoptr i64 %t471 to ptr
  %t473 = call ptr @__olang_scope_alloc(ptr %t472, i64 %t470)
  call void @olang_textcopy(ptr %t473, ptr %t455, i64 %t456)
  %t474 = getelementptr i8, ptr %t473, i64 %t456
  call void @olang_textcopy(ptr %t474, ptr %t457, i64 %t458)
  %t475 = getelementptr i8, ptr %t474, i64 %t458
  call void @olang_textcopy(ptr %t475, ptr %t461, i64 %t462)
  %t476 = getelementptr i8, ptr %t475, i64 %t462
  call void @olang_textcopy(ptr %t476, ptr %t464, i64 %t465)
  %t477 = getelementptr i8, ptr %t476, i64 %t465
  call void @olang_textcopy(ptr %t477, ptr %t468, i64 %t469)
  %t478 = insertvalue { i64, ptr } undef, i64 %t470, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t473, 1
  store { i64, ptr } %t479, ptr %l182, !tbaa !27
  %t480 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t480, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_904aca603cad2e45_e62ac09e4cb76009)
  unreachable
bb92:
  %t482 = load i64, ptr %l162
  %t483 = inttoptr i64 %t482 to ptr
  %t484 = load { i64, ptr }, ptr %l182
  %t485 = extractvalue { i64, ptr } %t484, 1
  %t486 = call ptr @__olang_region_or(ptr %t485, ptr null)
  %t487 = icmp ne ptr %t486, null
  %t488 = select i1 %t487, ptr %t486, ptr null
  %t489 = icmp eq ptr %t488, %t483
  call void @__olang_region_settle(ptr %t483, i1 %t489)
  br label %bb93
bb93:
  %t490 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t490, ptr %l184, !tbaa !27
  %t491 = load { i64, ptr }, ptr %l182, !tbaa !27
  store { i64, ptr } %t491, ptr %l9, !tbaa !27
  %t492 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t492, label %bb94, label %bb95
bb94:
  %t494 = load { i64, ptr }, ptr %l184
  %t495 = extractvalue { i64, ptr } %t494, 1
  call void @__olang_region_release(ptr %t495)
  store { i64, ptr } zeroinitializer, ptr %l184
  br label %bb95
bb95:
  br label %bb179
bb96:
  %t496 = load i1, ptr %l188, !tbaa !21
  br i1 %t496, label %bb97, label %bb98
bb97:
  %t497 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t499 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s4, ptr %s10, { i64, ptr } %t497, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d92, i32 0, i32 1) })
  store i1 %t499, ptr %l191
  br label %bb99
bb98:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb100
bb99:
  %t500 = load i1, ptr %l191, !tbaa !21
  store i1 %t500, ptr %l189, !tbaa !21
  br label %bb100
bb100:
  %t501 = load i1, ptr %l189, !tbaa !21
  br i1 %t501, label %bb101, label %bb102
bb101:
  %t502 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t504 = extractvalue { i64, ptr } %t502, 0
  store i64 %t504, ptr %l193, !tbaa !24
  %t505 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t506 = extractvalue { i64, ptr } %t505, 0
  store i64 %t506, ptr %l194, !tbaa !24
  %t507 = icmp sge i64 13, 0
  br i1 %t507, label %bb103, label %bb104
bb102:
  br label %bb178
bb103:
  %t509 = load i64, ptr %l193, !tbaa !24
  %t510 = icmp sle i64 13, %t509
  br i1 %t510, label %bb105, label %bb106
bb104:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb105:
  %t512 = load i64, ptr %l193, !tbaa !24
  %t513 = load i64, ptr %l194, !tbaa !24
  %t514 = icmp sle i64 %t512, %t513
  br i1 %t514, label %bb107, label %bb108
bb106:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb107:
  %t516 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = load i64, ptr %l193, !tbaa !24
  %t519 = getelementptr i8, ptr %t517, i64 13
  %t520 = sub i64 %t518, 13
  %t521 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t519, 1
  store { i64, ptr } %t522, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t524 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t526 = extractvalue { i64, ptr } %t524, 0
  %t528 = sub i64 %t526, 1
  store i64 %t528, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t530 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t532 = extractvalue { i64, ptr } %t530, 0
  store i64 %t532, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t534 = load i64, ptr %l15, !tbaa !24
  %t535 = load i64, ptr %l14, !tbaa !24
  %t538 = icmp sgt i64 %t534, %t535
  br i1 %t538, label %bb109, label %bb110
bb108:
  call void @__olang_check_failed(ptr @olang_loc_e59c902bb0ddc268_5b11d99e1c27629c)
  unreachable
bb109:
  %t540 = load i64, ptr %l16, !tbaa !24
  %t542 = icmp sgt i64 %t540, 0
  br i1 %t542, label %bb111, label %bb112
bb110:
  store i64 0, ptr %l207, !tbaa !24
  br label %bb114
bb111:
  %t544 = load i64, ptr %l15, !tbaa !24
  %t545 = load i64, ptr %l14, !tbaa !24
  %t548 = sub i64 %t544, %t545
  %t549 = load i64, ptr %l16, !tbaa !24
  %t552 = add i64 %t548, %t549
  %t554 = sub i64 %t552, 1
  %t555 = load i64, ptr %l16, !tbaa !24
  %t558 = sdiv i64 %t554, %t555
  store i64 %t558, ptr %l210, !tbaa !24
  br label %bb113
bb112:
  store i64 0, ptr %l210, !tbaa !24
  br label %bb113
bb113:
  %t560 = load i64, ptr %l210, !tbaa !24
  store i64 %t560, ptr %l207, !tbaa !24
  br label %bb114
bb114:
  %t561 = load i64, ptr %l207, !tbaa !24
  store i64 %t561, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb115
bb115:
  %t562 = load i64, ptr %l18, !tbaa !24
  %t563 = load i64, ptr %l17, !tbaa !24
  %t566 = icmp slt i64 %t562, %t563
  %t568 = xor i1 %t566, true
  br i1 %t568, label %bb116, label %bb117
bb116:
  br label %bb153
bb117:
  br label %bb118
bb118:
  %t570 = load i64, ptr %l14, !tbaa !24
  %t571 = load i64, ptr %l18, !tbaa !24
  %t572 = load i64, ptr %l16, !tbaa !24
  %t575 = mul i64 %t571, %t572
  %t578 = add i64 %t570, %t575
  store i64 %t578, ptr %l19, !tbaa !24
  %t580 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t580, ptr %l228, !tbaa !27
  %t581 = load i64, ptr %l19, !tbaa !24
  %t583 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t584 = load ptr, ptr %t583, !tbaa !27
  %t585 = getelementptr i8, ptr %t584, i64 %t581
  %t586 = load i8, ptr %t585, !tbaa !32
  store i8 %t586, ptr %l20, !tbaa !22
  %t588 = load i8, ptr %l20, !tbaa !22
  %t590 = icmp eq i8 %t588, 60
  br i1 %t590, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l233, !tbaa !21
  br label %bb121
bb120:
  %t592 = load i8, ptr %l20, !tbaa !22
  %t594 = icmp eq i8 %t592, 40
  store i1 %t594, ptr %l233, !tbaa !21
  br label %bb121
bb121:
  %t596 = load i1, ptr %l233, !tbaa !21
  br i1 %t596, label %bb122, label %bb123
bb122:
  %t597 = load i64, ptr %l12, !tbaa !24
  %t599 = add i64 %t597, 1
  store i64 %t599, ptr %l12, !tbaa !24
  br label %bb124
bb123:
  br label %bb124
bb124:
  %t601 = load i8, ptr %l20, !tbaa !22
  %t603 = icmp eq i8 %t601, 62
  br i1 %t603, label %bb125, label %bb126
bb125:
  store i1 true, ptr %l240, !tbaa !21
  br label %bb127
bb126:
  %t605 = load i8, ptr %l20, !tbaa !22
  %t607 = icmp eq i8 %t605, 41
  store i1 %t607, ptr %l240, !tbaa !21
  br label %bb127
bb127:
  %t609 = load i1, ptr %l240, !tbaa !21
  br i1 %t609, label %bb128, label %bb129
bb128:
  %t610 = load i64, ptr %l12, !tbaa !24
  %t612 = icmp sgt i64 %t610, 0
  store i1 %t612, ptr %l243, !tbaa !21
  br label %bb130
bb129:
  store i1 false, ptr %l243, !tbaa !21
  br label %bb130
bb130:
  %t614 = load i1, ptr %l243, !tbaa !21
  br i1 %t614, label %bb131, label %bb132
bb131:
  %t615 = load i64, ptr %l12, !tbaa !24
  %t617 = sub i64 %t615, 1
  store i64 %t617, ptr %l12, !tbaa !24
  br label %bb152
bb132:
  br label %bb133
bb133:
  %t619 = load i64, ptr %l12, !tbaa !24
  %t621 = icmp eq i64 %t619, 0
  br i1 %t621, label %bb134, label %bb135
bb134:
  %t623 = load i8, ptr %l20, !tbaa !22
  %t625 = icmp eq i8 %t623, 62
  br i1 %t625, label %bb136, label %bb137
bb135:
  store i1 false, ptr %l250, !tbaa !21
  br label %bb148
bb136:
  store i1 true, ptr %l253, !tbaa !21
  br label %bb138
bb137:
  %t627 = load i8, ptr %l20, !tbaa !22
  %t629 = icmp eq i8 %t627, 44
  store i1 %t629, ptr %l253, !tbaa !21
  br label %bb138
bb138:
  %t631 = load i1, ptr %l253, !tbaa !21
  br i1 %t631, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l256, !tbaa !21
  br label %bb147
bb140:
  %t632 = load i8, ptr %l20, !tbaa !22
  %t634 = icmp eq i8 %t632, 32
  br i1 %t634, label %bb141, label %bb142
bb141:
  %t636 = load i64, ptr %l19, !tbaa !24
  %t638 = add i64 %t636, 1
  %t639 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t641 = extractvalue { i64, ptr } %t639, 0
  %t644 = icmp slt i64 %t638, %t641
  store i1 %t644, ptr %l259, !tbaa !21
  br label %bb143
bb142:
  store i1 false, ptr %l259, !tbaa !21
  br label %bb143
bb143:
  %t646 = load i1, ptr %l259, !tbaa !21
  br i1 %t646, label %bb144, label %bb145
bb144:
  %t647 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t647, ptr %l266, !tbaa !27
  %t648 = load i64, ptr %l19, !tbaa !24
  %t650 = add i64 %t648, 1
  %t652 = getelementptr { i64, ptr }, ptr %l266, i32 0, i32 1
  %t653 = load ptr, ptr %t652, !tbaa !27
  %t654 = getelementptr i8, ptr %t653, i64 %t650
  %t655 = load i8, ptr %t654, !tbaa !32
  %t657 = icmp eq i8 %t655, 63
  store i1 %t657, ptr %l265, !tbaa !21
  br label %bb146
bb145:
  store i1 false, ptr %l265, !tbaa !21
  br label %bb146
bb146:
  %t659 = load i1, ptr %l265, !tbaa !21
  store i1 %t659, ptr %l256, !tbaa !21
  br label %bb147
bb147:
  %t660 = load i1, ptr %l256, !tbaa !21
  store i1 %t660, ptr %l250, !tbaa !21
  br label %bb148
bb148:
  %t661 = load i1, ptr %l250, !tbaa !21
  br i1 %t661, label %bb149, label %bb150
bb149:
  %t662 = load i64, ptr %l19, !tbaa !24
  store i64 %t662, ptr %l13, !tbaa !24
  br label %bb153
bb150:
  br label %bb151
bb151:
  br label %bb152
bb152:
  %t664 = load i64, ptr %l18, !tbaa !24
  %t666 = add i64 %t664, 1
  store i64 %t666, ptr %l18, !tbaa !24
  br label %bb115
bb153:
  %t668 = ptrtoint ptr %s0 to i64
  store i64 %t668, ptr %l274, !tbaa !24
  %t669 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t669, label %bb154, label %bb155
bb154:
  %t671 = call ptr @__olang_region_make(ptr %s0)
  %t672 = ptrtoint ptr %t671 to i64
  store i64 %t672, ptr %l274, !tbaa !24
  br label %bb155
bb155:
  %t673 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t675 = extractvalue { i64, ptr } %t673, 0
  %t676 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t678 = extractvalue { i64, ptr } %t676, 0
  %t681 = sub i64 %t675, %t678
  store i64 %t681, ptr %l280, !tbaa !24
  %t682 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t683 = extractvalue { i64, ptr } %t682, 0
  store i64 %t683, ptr %l281, !tbaa !24
  %t684 = icmp sge i64 0, 0
  br i1 %t684, label %bb156, label %bb157
bb156:
  %t686 = load i64, ptr %l280, !tbaa !24
  %t687 = icmp sle i64 0, %t686
  br i1 %t687, label %bb158, label %bb159
bb157:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb158:
  %t689 = load i64, ptr %l280, !tbaa !24
  %t690 = load i64, ptr %l281, !tbaa !24
  %t691 = icmp sle i64 %t689, %t690
  br i1 %t691, label %bb160, label %bb161
bb159:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb160:
  %t693 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t694 = load ptr, ptr %t693, !tbaa !27
  %t695 = load i64, ptr %l280, !tbaa !24
  %t696 = getelementptr i8, ptr %t694, i64 0
  %t697 = sub i64 %t695, 0
  %t698 = insertvalue { i64, ptr } undef, i64 %t697, 0
  %t699 = insertvalue { i64, ptr } %t698, ptr %t696, 1
  store { i64, ptr } %t699, ptr %l285, !tbaa !27
  %t700 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t700, ptr %l286, !tbaa !27
  %t701 = load i64, ptr %l13, !tbaa !24
  store i64 %t701, ptr %l287, !tbaa !24
  %t702 = load { i64, ptr }, ptr %l286, !tbaa !27
  %t703 = extractvalue { i64, ptr } %t702, 0
  store i64 %t703, ptr %l288, !tbaa !24
  %t704 = icmp sge i64 0, 0
  br i1 %t704, label %bb162, label %bb163
bb161:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb162:
  %t706 = load i64, ptr %l287, !tbaa !24
  %t707 = icmp sle i64 0, %t706
  br i1 %t707, label %bb164, label %bb165
bb163:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb164:
  %t709 = load i64, ptr %l287, !tbaa !24
  %t710 = load i64, ptr %l288, !tbaa !24
  %t711 = icmp sle i64 %t709, %t710
  br i1 %t711, label %bb166, label %bb167
bb165:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb166:
  %t713 = getelementptr { i64, ptr }, ptr %l286, i32 0, i32 1
  %t714 = load ptr, ptr %t713, !tbaa !27
  %t715 = load i64, ptr %l287, !tbaa !24
  %t716 = getelementptr i8, ptr %t714, i64 0
  %t717 = sub i64 %t715, 0
  %t718 = insertvalue { i64, ptr } undef, i64 %t717, 0
  %t719 = insertvalue { i64, ptr } %t718, ptr %t716, 1
  store { i64, ptr } %t719, ptr %l292, !tbaa !27
  %t720 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t720, ptr %l293, !tbaa !27
  %t721 = load i64, ptr %l13, !tbaa !24
  store i64 %t721, ptr %l294, !tbaa !24
  %t722 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t725 = extractvalue { i64, ptr } %t722, 0
  store i64 %t725, ptr %l297, !tbaa !24
  %t726 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t727 = extractvalue { i64, ptr } %t726, 0
  store i64 %t727, ptr %l298, !tbaa !24
  %t728 = load i64, ptr %l294, !tbaa !24
  %t729 = icmp sge i64 %t728, 0
  br i1 %t729, label %bb168, label %bb169
bb167:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb168:
  %t731 = load i64, ptr %l294, !tbaa !24
  %t732 = load i64, ptr %l297, !tbaa !24
  %t733 = icmp sle i64 %t731, %t732
  br i1 %t733, label %bb170, label %bb171
bb169:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb170:
  %t735 = load i64, ptr %l297, !tbaa !24
  %t736 = load i64, ptr %l298, !tbaa !24
  %t737 = icmp sle i64 %t735, %t736
  br i1 %t737, label %bb172, label %bb173
bb171:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb172:
  %t739 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t740 = load ptr, ptr %t739, !tbaa !27
  %t741 = load i64, ptr %l294, !tbaa !24
  %t742 = load i64, ptr %l297, !tbaa !24
  %t743 = getelementptr i8, ptr %t740, i64 %t741
  %t744 = sub i64 %t742, %t741
  %t745 = insertvalue { i64, ptr } undef, i64 %t744, 0
  %t746 = insertvalue { i64, ptr } %t745, ptr %t743, 1
  %t747 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t748 = load { i64, ptr }, ptr %l285, !tbaa !27
  %t749 = extractvalue { i64, ptr } %t748, 1
  %t750 = extractvalue { i64, ptr } %t748, 0
  %t751 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t752 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t753 = add i64 %t750, %t752
  %t754 = load { i64, ptr }, ptr %l292, !tbaa !27
  %t755 = extractvalue { i64, ptr } %t754, 1
  %t756 = extractvalue { i64, ptr } %t754, 0
  %t757 = add i64 %t753, %t756
  %t758 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t759 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t760 = add i64 %t757, %t759
  %t762 = extractvalue { i64, ptr } %t746, 1
  %t763 = extractvalue { i64, ptr } %t746, 0
  %t764 = add i64 %t760, %t763
  %t765 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t766 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t767 = add i64 %t764, %t766
  %t769 = extractvalue { i64, ptr } %t747, 1
  %t770 = extractvalue { i64, ptr } %t747, 0
  %t771 = add i64 %t767, %t770
  %t772 = load i64, ptr %l274
  %t773 = inttoptr i64 %t772 to ptr
  %t774 = call ptr @__olang_scope_alloc(ptr %t773, i64 %t771)
  call void @olang_textcopy(ptr %t774, ptr %t749, i64 %t750)
  %t775 = getelementptr i8, ptr %t774, i64 %t750
  call void @olang_textcopy(ptr %t775, ptr %t751, i64 %t752)
  %t776 = getelementptr i8, ptr %t775, i64 %t752
  call void @olang_textcopy(ptr %t776, ptr %t755, i64 %t756)
  %t777 = getelementptr i8, ptr %t776, i64 %t756
  call void @olang_textcopy(ptr %t777, ptr %t758, i64 %t759)
  %t778 = getelementptr i8, ptr %t777, i64 %t759
  call void @olang_textcopy(ptr %t778, ptr %t762, i64 %t763)
  %t779 = getelementptr i8, ptr %t778, i64 %t763
  call void @olang_textcopy(ptr %t779, ptr %t765, i64 %t766)
  %t780 = getelementptr i8, ptr %t779, i64 %t766
  call void @olang_textcopy(ptr %t780, ptr %t769, i64 %t770)
  %t781 = insertvalue { i64, ptr } undef, i64 %t771, 0
  %t782 = insertvalue { i64, ptr } %t781, ptr %t774, 1
  store { i64, ptr } %t782, ptr %l304, !tbaa !27
  %t783 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t783, label %bb174, label %bb175
bb173:
  call void @__olang_check_failed(ptr @olang_loc_f3704e37964cb683_929f8ce39c458747)
  unreachable
bb174:
  %t785 = load i64, ptr %l274
  %t786 = inttoptr i64 %t785 to ptr
  %t787 = load { i64, ptr }, ptr %l304
  %t788 = extractvalue { i64, ptr } %t787, 1
  %t789 = call ptr @__olang_region_or(ptr %t788, ptr null)
  %t790 = icmp ne ptr %t789, null
  %t791 = select i1 %t790, ptr %t789, ptr null
  %t792 = icmp eq ptr %t791, %t786
  call void @__olang_region_settle(ptr %t786, i1 %t792)
  br label %bb175
bb175:
  %t793 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t793, ptr %l306, !tbaa !27
  %t794 = load { i64, ptr }, ptr %l304, !tbaa !27
  store { i64, ptr } %t794, ptr %l9, !tbaa !27
  %t795 = load i1, ptr @olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9
  br i1 %t795, label %bb176, label %bb177
bb176:
  %t797 = load { i64, ptr }, ptr %l306
  %t798 = extractvalue { i64, ptr } %t797, 1
  call void @__olang_region_release(ptr %t798)
  store { i64, ptr } zeroinitializer, ptr %l306
  br label %bb177
bb177:
  br label %bb178
bb178:
  call void @__olang_scope_close(ptr %s10)
  br label %bb179
bb179:
  call void @__olang_scope_close(ptr %s7)
  br label %bb180
bb180:
  call void @__olang_scope_close(ptr %s4)
  br label %bb181
bb181:
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t801 = getelementptr %"compiler/check:Checker", ptr %t799, i32 0, i32 1
  %t802 = load ptr, ptr %t801, !tbaa !29
  %t803 = load i64, ptr %l1, !tbaa !24
  %t806 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t802, i64 %t803)
  store i1 %t806, ptr %l311
  br label %bb182
bb182:
  %t807 = load i1, ptr %l311, !tbaa !21
  br i1 %t807, label %bb183, label %bb184
bb183:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d96, i32 0, i32 1) }, ptr %l312, !tbaa !27
  br label %bb185
bb184:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d97, i32 0, i32 1) }, ptr %l312, !tbaa !27
  br label %bb185
bb185:
  %t808 = load { i64, ptr }, ptr %l312, !tbaa !27
  store { i64, ptr } %t808, ptr %l21, !tbaa !27
  %t809 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t811 = call i64 @compiler_2fexplain_2efirstClose(ptr %s0, { i64, ptr } %t809)
  store i64 %t811, ptr %l314
  br label %bb186
bb186:
  %t812 = load i64, ptr %l314, !tbaa !24
  store i64 %t812, ptr %l22, !tbaa !24
  %t813 = load ptr, ptr %l0, !tbaa !29
  store ptr %t813, ptr %l315, !tbaa !29
  %t814 = load i64, ptr %l22, !tbaa !24
  store i64 %t814, ptr %l316, !tbaa !24
  %t815 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t816 = extractvalue { i64, ptr } %t815, 0
  store i64 %t816, ptr %l317, !tbaa !24
  %t817 = icmp sge i64 3, 0
  br i1 %t817, label %bb187, label %bb188
bb187:
  %t819 = load i64, ptr %l316, !tbaa !24
  %t820 = icmp sle i64 3, %t819
  br i1 %t820, label %bb189, label %bb190
bb188:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb189:
  %t822 = load i64, ptr %l316, !tbaa !24
  %t823 = load i64, ptr %l317, !tbaa !24
  %t824 = icmp sle i64 %t822, %t823
  br i1 %t824, label %bb191, label %bb192
bb190:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb191:
  %t826 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t827 = load ptr, ptr %t826, !tbaa !27
  %t828 = load i64, ptr %l316, !tbaa !24
  %t829 = getelementptr i8, ptr %t827, i64 3
  %t830 = sub i64 %t828, 3
  %t831 = insertvalue { i64, ptr } undef, i64 %t830, 0
  %t832 = insertvalue { i64, ptr } %t831, ptr %t829, 1
  store { i64, ptr } %t832, ptr %l321, !tbaa !27
  %t833 = load ptr, ptr %l4, !tbaa !29
  %t835 = getelementptr %"compiler/ast:Func", ptr %t833, i32 0, i32 3
  %t836 = load ptr, ptr %t835, !tbaa !29
  %t838 = getelementptr %"compiler/ast:Sig", ptr %t836, i32 0, i32 0
  %t839 = load { i64, ptr }, ptr %t838, !tbaa !27
  store { i64, ptr } %t839, ptr %l324, !tbaa !27
  %t840 = load ptr, ptr %l0, !tbaa !29
  %t842 = getelementptr %"compiler/check:Checker", ptr %t840, i32 0, i32 1
  %t843 = load ptr, ptr %t842, !tbaa !29
  %t844 = load i64, ptr %l1, !tbaa !24
  %t847 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t843, i64 %t844)
  store i64 %t847, ptr %l328
  br label %bb193
bb192:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb193:
  %t848 = load ptr, ptr %l4, !tbaa !29
  %t850 = getelementptr %"compiler/ast:Func", ptr %t848, i32 0, i32 1
  %t851 = load ptr, ptr %t850, !tbaa !29
  %t853 = icmp eq ptr %t851, null
  %t855 = xor i1 %t853, true
  br i1 %t855, label %bb194, label %bb195
bb194:
  store i64 1, ptr %l333, !tbaa !24
  br label %bb196
bb195:
  store i64 0, ptr %l333, !tbaa !24
  br label %bb196
bb196:
  %t857 = load ptr, ptr %l315, !tbaa !29
  %t858 = load { i64, ptr }, ptr %l321, !tbaa !27
  %t859 = load { i64, ptr }, ptr %l324, !tbaa !27
  %t860 = load i64, ptr %l328, !tbaa !24
  %t861 = load i64, ptr %l333, !tbaa !24
  %t862 = call { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %s0, ptr %v0, ptr %s0, ptr %t857, { i64, ptr } %t858, { i64, ptr } %t859, i64 %t860, i64 %t861)
  store { i64, ptr } %t862, ptr %l334
  br label %bb197
bb197:
  %t863 = load i64, ptr %l22, !tbaa !24
  store i64 %t863, ptr %l335, !tbaa !24
  %t864 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t866 = extractvalue { i64, ptr } %t864, 0
  store i64 %t866, ptr %l337, !tbaa !24
  %t867 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t868 = extractvalue { i64, ptr } %t867, 0
  store i64 %t868, ptr %l338, !tbaa !24
  %t869 = load i64, ptr %l335, !tbaa !24
  %t870 = icmp sge i64 %t869, 0
  br i1 %t870, label %bb198, label %bb199
bb198:
  %t872 = load i64, ptr %l335, !tbaa !24
  %t873 = load i64, ptr %l337, !tbaa !24
  %t874 = icmp sle i64 %t872, %t873
  br i1 %t874, label %bb200, label %bb201
bb199:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb200:
  %t876 = load i64, ptr %l337, !tbaa !24
  %t877 = load i64, ptr %l338, !tbaa !24
  %t878 = icmp sle i64 %t876, %t877
  br i1 %t878, label %bb202, label %bb203
bb201:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb202:
  %t880 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t881 = load ptr, ptr %t880, !tbaa !27
  %t882 = load i64, ptr %l335, !tbaa !24
  %t883 = load i64, ptr %l337, !tbaa !24
  %t884 = getelementptr i8, ptr %t881, i64 %t882
  %t885 = sub i64 %t883, %t882
  %t886 = insertvalue { i64, ptr } undef, i64 %t885, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t884, 1
  %t888 = load { i64, ptr }, ptr %l334, !tbaa !27
  %t889 = extractvalue { i64, ptr } %t888, 1
  %t890 = extractvalue { i64, ptr } %t888, 0
  %t892 = extractvalue { i64, ptr } %t887, 1
  %t893 = extractvalue { i64, ptr } %t887, 0
  %t894 = add i64 %t890, %t893
  %t895 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t894)
  call void @olang_textcopy(ptr %t895, ptr %t889, i64 %t890)
  %t896 = getelementptr i8, ptr %t895, i64 %t890
  call void @olang_textcopy(ptr %t896, ptr %t892, i64 %t893)
  %t897 = insertvalue { i64, ptr } undef, i64 %t894, 0
  %t898 = insertvalue { i64, ptr } %t897, ptr %t895, 1
  store { i64, ptr } %t898, ptr %l23, !tbaa !27
  %t900 = load ptr, ptr %l4, !tbaa !29
  %t902 = getelementptr %"compiler/ast:Func", ptr %t900, i32 0, i32 1
  %t903 = load ptr, ptr %t902, !tbaa !29
  %t905 = icmp eq ptr %t903, null
  br i1 %t905, label %bb204, label %bb205
bb203:
  call void @__olang_check_failed(ptr @olang_loc_87334f8237d1e26_d87acd2b8515436a)
  unreachable
bb204:
  %t907 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t908 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t909 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t911 = extractvalue { i64, ptr } %t907, 1
  %t912 = extractvalue { i64, ptr } %t907, 0
  %t914 = extractvalue { i64, ptr } %t908, 1
  %t915 = extractvalue { i64, ptr } %t908, 0
  %t916 = add i64 %t912, %t915
  %t917 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t918 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t919 = add i64 %t916, %t918
  %t921 = extractvalue { i64, ptr } %t909, 1
  %t922 = extractvalue { i64, ptr } %t909, 0
  %t923 = add i64 %t919, %t922
  %t924 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t923)
  call void @olang_textcopy(ptr %t924, ptr %t911, i64 %t912)
  %t925 = getelementptr i8, ptr %t924, i64 %t912
  call void @olang_textcopy(ptr %t925, ptr %t914, i64 %t915)
  %t926 = getelementptr i8, ptr %t925, i64 %t915
  call void @olang_textcopy(ptr %t926, ptr %t917, i64 %t918)
  %t927 = getelementptr i8, ptr %t926, i64 %t918
  call void @olang_textcopy(ptr %t927, ptr %t921, i64 %t922)
  %t928 = insertvalue { i64, ptr } undef, i64 %t923, 0
  %t929 = insertvalue { i64, ptr } %t928, ptr %t924, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t929, ptr %rv
  br label %ret
bb205:
  br label %bb206
bb206:
  %t931 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t933 = call i64 @compiler_2fexplain_2efirstItemEnd(ptr %s0, { i64, ptr } %t931)
  store i64 %t933, ptr %l352
  br label %bb207
bb207:
  %t934 = load i64, ptr %l352, !tbaa !24
  store i64 %t934, ptr %l24, !tbaa !24
  %t935 = load i64, ptr %l24, !tbaa !24
  store i64 %t935, ptr %l353, !tbaa !24
  %t936 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t937 = extractvalue { i64, ptr } %t936, 0
  store i64 %t937, ptr %l354, !tbaa !24
  %t938 = icmp sge i64 0, 0
  br i1 %t938, label %bb208, label %bb209
bb208:
  %t940 = load i64, ptr %l353, !tbaa !24
  %t941 = icmp sle i64 0, %t940
  br i1 %t941, label %bb210, label %bb211
bb209:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb210:
  %t943 = load i64, ptr %l353, !tbaa !24
  %t944 = load i64, ptr %l354, !tbaa !24
  %t945 = icmp sle i64 %t943, %t944
  br i1 %t945, label %bb212, label %bb213
bb211:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb212:
  %t947 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t948 = load ptr, ptr %t947, !tbaa !27
  %t949 = load i64, ptr %l353, !tbaa !24
  %t950 = getelementptr i8, ptr %t948, i64 0
  %t951 = sub i64 %t949, 0
  %t952 = insertvalue { i64, ptr } undef, i64 %t951, 0
  %t953 = insertvalue { i64, ptr } %t952, ptr %t950, 1
  store { i64, ptr } %t953, ptr %l25, !tbaa !27
  %t955 = load i64, ptr %l24, !tbaa !24
  %t957 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t958 = load ptr, ptr %t957, !tbaa !27
  %t959 = getelementptr i8, ptr %t958, i64 %t955
  %t960 = load i8, ptr %t959, !tbaa !32
  %t962 = icmp eq i8 %t960, 44
  br i1 %t962, label %bb214, label %bb215
bb213:
  call void @__olang_check_failed(ptr @olang_loc_96b8876366bd9a81_fe1335b03e31611d)
  unreachable
bb214:
  %t964 = load i64, ptr %l24, !tbaa !24
  %t966 = add i64 %t964, 2
  store i64 %t966, ptr %l364, !tbaa !24
  %t967 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t969 = extractvalue { i64, ptr } %t967, 0
  store i64 %t969, ptr %l366, !tbaa !24
  %t970 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t971 = extractvalue { i64, ptr } %t970, 0
  store i64 %t971, ptr %l367, !tbaa !24
  %t972 = load i64, ptr %l364, !tbaa !24
  %t973 = icmp sge i64 %t972, 0
  br i1 %t973, label %bb216, label %bb217
bb215:
  %t975 = load i64, ptr %l24, !tbaa !24
  store i64 %t975, ptr %l372, !tbaa !24
  %t976 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t978 = extractvalue { i64, ptr } %t976, 0
  store i64 %t978, ptr %l374, !tbaa !24
  %t979 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t980 = extractvalue { i64, ptr } %t979, 0
  store i64 %t980, ptr %l375, !tbaa !24
  %t981 = load i64, ptr %l372, !tbaa !24
  %t982 = icmp sge i64 %t981, 0
  br i1 %t982, label %bb222, label %bb223
bb216:
  %t984 = load i64, ptr %l364, !tbaa !24
  %t985 = load i64, ptr %l366, !tbaa !24
  %t986 = icmp sle i64 %t984, %t985
  br i1 %t986, label %bb218, label %bb219
bb217:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb218:
  %t988 = load i64, ptr %l366, !tbaa !24
  %t989 = load i64, ptr %l367, !tbaa !24
  %t990 = icmp sle i64 %t988, %t989
  br i1 %t990, label %bb220, label %bb221
bb219:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb220:
  %t992 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t993 = load ptr, ptr %t992, !tbaa !27
  %t994 = load i64, ptr %l364, !tbaa !24
  %t995 = load i64, ptr %l366, !tbaa !24
  %t996 = getelementptr i8, ptr %t993, i64 %t994
  %t997 = sub i64 %t995, %t994
  %t998 = insertvalue { i64, ptr } undef, i64 %t997, 0
  %t999 = insertvalue { i64, ptr } %t998, ptr %t996, 1
  store { i64, ptr } %t999, ptr %l362, !tbaa !27
  br label %bb228
bb221:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb222:
  %t1001 = load i64, ptr %l372, !tbaa !24
  %t1002 = load i64, ptr %l374, !tbaa !24
  %t1003 = icmp sle i64 %t1001, %t1002
  br i1 %t1003, label %bb224, label %bb225
bb223:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb224:
  %t1005 = load i64, ptr %l374, !tbaa !24
  %t1006 = load i64, ptr %l375, !tbaa !24
  %t1007 = icmp sle i64 %t1005, %t1006
  br i1 %t1007, label %bb226, label %bb227
bb225:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb226:
  %t1009 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t1010 = load ptr, ptr %t1009, !tbaa !27
  %t1011 = load i64, ptr %l372, !tbaa !24
  %t1012 = load i64, ptr %l374, !tbaa !24
  %t1013 = getelementptr i8, ptr %t1010, i64 %t1011
  %t1014 = sub i64 %t1012, %t1011
  %t1015 = insertvalue { i64, ptr } undef, i64 %t1014, 0
  %t1016 = insertvalue { i64, ptr } %t1015, ptr %t1013, 1
  store { i64, ptr } %t1016, ptr %l362, !tbaa !27
  br label %bb228
bb227:
  call void @__olang_check_failed(ptr @olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0)
  unreachable
bb228:
  %t1018 = load { i64, ptr }, ptr %l362, !tbaa !27
  %t1019 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t1020 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t1021 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t1024 = extractvalue { i64, ptr } %t1019, 1
  %t1025 = extractvalue { i64, ptr } %t1019, 0
  %t1026 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t1027 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t1028 = add i64 %t1025, %t1027
  %t1030 = extractvalue { i64, ptr } %t1020, 1
  %t1031 = extractvalue { i64, ptr } %t1020, 0
  %t1032 = add i64 %t1028, %t1031
  %t1033 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t1034 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  %t1035 = add i64 %t1032, %t1034
  %t1037 = extractvalue { i64, ptr } %t1021, 1
  %t1038 = extractvalue { i64, ptr } %t1021, 0
  %t1039 = add i64 %t1035, %t1038
  %t1040 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t1041 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t1042 = add i64 %t1039, %t1041
  %t1044 = extractvalue { i64, ptr } %t1018, 1
  %t1045 = extractvalue { i64, ptr } %t1018, 0
  %t1046 = add i64 %t1042, %t1045
  %t1047 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t1046)
  call void @olang_textcopy(ptr %t1047, ptr %t1024, i64 %t1025)
  %t1048 = getelementptr i8, ptr %t1047, i64 %t1025
  call void @olang_textcopy(ptr %t1048, ptr %t1026, i64 %t1027)
  %t1049 = getelementptr i8, ptr %t1048, i64 %t1027
  call void @olang_textcopy(ptr %t1049, ptr %t1030, i64 %t1031)
  %t1050 = getelementptr i8, ptr %t1049, i64 %t1031
  call void @olang_textcopy(ptr %t1050, ptr %t1033, i64 %t1034)
  %t1051 = getelementptr i8, ptr %t1050, i64 %t1034
  call void @olang_textcopy(ptr %t1051, ptr %t1037, i64 %t1038)
  %t1052 = getelementptr i8, ptr %t1051, i64 %t1038
  call void @olang_textcopy(ptr %t1052, ptr %t1040, i64 %t1041)
  %t1053 = getelementptr i8, ptr %t1052, i64 %t1041
  call void @olang_textcopy(ptr %t1053, ptr %t1044, i64 %t1045)
  %t1054 = insertvalue { i64, ptr } undef, i64 %t1046, 0
  %t1055 = insertvalue { i64, ptr } %t1054, ptr %t1047, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t1055, ptr %rv
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
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t12, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d101, i32 0, i32 1) })
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

define dso_local void @compiler_2fexplain_2egenLine(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 5
  %t9 = sext i32 %a2 to i64
  %t12 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v1, ptr %s0, ptr %t6, i64 %t9)
  %t13 = extractvalue { i32, { i64, ptr } } %t12, 1
  %t14 = extractvalue { i32, { i64, ptr } } %t12, 0
  store i32 %t14, ptr %l11
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb2, label %ok.16, !prof !99
ok.16:
  store { i64, ptr } %t13, ptr %l10
  br label %bb1
bb1:
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l12, !tbaa !24
  %t19 = load i64, ptr %l12, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l13, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l12, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t30, ptr %l4, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t35 = extractvalue { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  %t37 = extractvalue { i64, ptr } %t31, 1
  %t38 = extractvalue { i64, ptr } %t31, 0
  %t39 = add i64 %t35, %t38
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  %t42 = add i64 %t39, %t41
  %t43 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t42)
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
  %t52 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t51)
  call void @llvm.memcpy.p0.p0.i64(ptr %t52, ptr %t50, i64 %t51, i1 false)
  %t53 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } %t54)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2eglobalItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, %"compiler/names:Entry" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/names:Entry"
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca i32
  %l47 = alloca i32
  %l50 = alloca i32
  %l55 = alloca i32
  %l57 = alloca i32
  %l59 = alloca i32
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store %"compiler/names:Entry" %a3, ptr %l3
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
  store ptr %t10, ptr %l4, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eGlobalType(ptr %v0, ptr %t12, i64 %t13, i32 %t15)
  store i32 %t19, ptr %l18
  br label %bb1
bb1:
  %t20 = load i32, ptr %l18, !tbaa !23
  store i32 %t20, ptr %l5, !tbaa !23
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t21, i32 %t23)
  store { i64, ptr } %t26, ptr %l21
  br label %bb2
bb2:
  %t27 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 3
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d104, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d105, i32 0, i32 1) }, ptr %l23, !tbaa !27
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l5, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s0, ptr %t30, i32 %t31)
  store { i64, ptr } %t34, ptr %l26
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = add i64 %t37, %t40
  %t42 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t36, i64 %t37)
  %t47 = getelementptr i8, ptr %t46, i64 %t37
  call void @olang_textcopy(ptr %t47, ptr %t39, i64 %t40)
  %t48 = getelementptr i8, ptr %t47, i64 %t40
  call void @olang_textcopy(ptr %t48, ptr %t43, i64 %t44)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t46, 1
  store { i64, ptr } %t50, ptr %l6, !tbaa !27
  %t52 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 3
  %t53 = load i1, ptr %t52, !tbaa !21
  br i1 %t53, label %bb7, label %bb8
bb7:
  %t55 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 1
  %t58 = extractvalue { i64, ptr } %t55, 0
  %t59 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t57, i64 %t58)
  %t63 = getelementptr i8, ptr %t62, i64 %t58
  call void @olang_textcopy(ptr %t63, ptr %t59, i64 %t60)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t62, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t65, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t71 = getelementptr %"compiler/names:Entry", ptr %l3, i32 0, i32 1
  %t72 = load %"compiler/source:Span", ptr %t71
  %t77 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRenderBody(ptr %v0, ptr %t67, i64 %t68, i32 %t70, %"compiler/source:Span" %t72)
  store i64 %t77, ptr %l35
  br label %bb10
bb10:
  %t78 = load i64, ptr %l35, !tbaa !24
  %t83 = call { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v1, ptr %s0, ptr %a1, i64 %t78)
  %t84 = extractvalue { i32, { i64, ptr } } %t83, 1
  %t85 = extractvalue { i32, { i64, ptr } } %t83, 0
  store i32 %t85, ptr %l40
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb12, label %ok.87, !prof !99
ok.87:
  store { i64, ptr } %t84, ptr %l39
  br label %bb11
bb11:
  %t88 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t88, ptr %l36, !tbaa !27
  br label %bb14
bb12:
  br label %bb13
bb13:
  %t89 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t91, i64 %t92)
  %t97 = getelementptr i8, ptr %t96, i64 %t92
  call void @olang_textcopy(ptr %t97, ptr %t93, i64 %t94)
  %t98 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t99, ptr %rv
  br label %ret
bb14:
  %t101 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t101, ptr %l8, !tbaa !27
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/check:Checker", ptr %t102, i32 0, i32 1
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l5, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l47
  br label %bb15
bb15:
  %t112 = load i32, ptr %l47, !range !{i32 0, i32 33}
  %t114 = trunc i64 20 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb16, label %bb17
bb16:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/check:Checker", ptr %t117, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t122 = getelementptr %"compiler/generic:Program", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %l5, !tbaa !23
  %t126 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t122, i32 %t123)
  store i32 %t126, ptr %l55
  br label %bb18
bb17:
  %t127 = load i32, ptr %l5, !tbaa !23
  store i32 %t127, ptr %l50, !tbaa !23
  br label %bb19
bb18:
  %t129 = load i32, ptr %l55, !tbaa !23
  store i32 %t129, ptr %l50, !tbaa !23
  br label %bb19
bb19:
  %t130 = load i32, ptr %l50, !tbaa !23
  store i32 %t130, ptr %l57, !tbaa !23
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTextType(ptr %v0, ptr %t132)
  store i32 %t134, ptr %l59
  br label %bb20
bb20:
  %t135 = load i32, ptr %l57, !tbaa !23
  %t136 = load i32, ptr %l59, !tbaa !23
  %t137 = icmp eq i32 %t135, %t136
  br i1 %t137, label %bb21, label %bb22
bb21:
  %t139 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fexplain_2equoted(ptr %s0, ptr %s0, { i64, ptr } %t139)
  store { i64, ptr } %t141, ptr %l63
  br label %bb23
bb22:
  %t142 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = extractvalue { i64, ptr } %t142, 0
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t144, i64 %t145)
  %t147 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  store { i64, ptr } %t148, ptr %l61, !tbaa !27
  br label %bb24
bb23:
  %t150 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t151, i64 %t152)
  %t154 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t153, 1
  store { i64, ptr } %t155, ptr %l61, !tbaa !27
  br label %bb24
bb24:
  %t157 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t157, ptr %l10, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = load i64, ptr @G_2ecompiler_2fexplain_2eLongValue, !tbaa !24
  %t164 = icmp sgt i64 %t160, %t161
  br i1 %t164, label %bb25, label %bb26
bb25:
  %t166 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t166, ptr %l71, !tbaa !27
  %t167 = load i64, ptr @G_2ecompiler_2fexplain_2eLongValue, !tbaa !24
  store i64 %t167, ptr %l72, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t168, 0
  store i64 %t169, ptr %l73, !tbaa !24
  %t170 = icmp sge i64 0, 0
  br i1 %t170, label %bb27, label %bb28
bb26:
  br label %bb33
bb27:
  %t172 = load i64, ptr %l72, !tbaa !24
  %t173 = icmp sle i64 0, %t172
  br i1 %t173, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb29:
  %t175 = load i64, ptr %l72, !tbaa !24
  %t176 = load i64, ptr %l73, !tbaa !24
  %t177 = icmp sle i64 %t175, %t176
  br i1 %t177, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb31:
  %t179 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = load i64, ptr %l72, !tbaa !24
  %t182 = getelementptr i8, ptr %t180, i64 0
  %t183 = sub i64 %t181, 0
  %t184 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t182, 1
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = extractvalue { i64, ptr } %t189, 0
  %t192 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t193 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  %t194 = add i64 %t191, %t193
  %t196 = extractvalue { i64, ptr } %t185, 1
  %t197 = extractvalue { i64, ptr } %t185, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t203 = call i64 @__olang_fmt_i64(ptr null, i64 %t188)
  %t204 = add i64 %t201, %t203
  %t205 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  %t207 = add i64 %t204, %t206
  %t208 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t207)
  call void @olang_textcopy(ptr %t208, ptr %t190, i64 %t191)
  %t209 = getelementptr i8, ptr %t208, i64 %t191
  call void @olang_textcopy(ptr %t209, ptr %t192, i64 %t193)
  %t210 = getelementptr i8, ptr %t209, i64 %t193
  call void @olang_textcopy(ptr %t210, ptr %t196, i64 %t197)
  %t211 = getelementptr i8, ptr %t210, i64 %t197
  call void @olang_textcopy(ptr %t211, ptr %t199, i64 %t200)
  %t212 = getelementptr i8, ptr %t211, i64 %t200
  %t213 = call i64 @__olang_fmt_i64(ptr %t212, i64 %t188)
  %t214 = getelementptr i8, ptr %t212, i64 %t203
  call void @olang_textcopy(ptr %t214, ptr %t205, i64 %t206)
  %t215 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t208, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t216, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b)
  unreachable
bb33:
  %t218 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t218, 1
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t224 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t225 = add i64 %t222, %t224
  %t227 = extractvalue { i64, ptr } %t219, 1
  %t228 = extractvalue { i64, ptr } %t219, 0
  %t229 = add i64 %t225, %t228
  %t230 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t232 = add i64 %t229, %t231
  %t233 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t232)
  call void @olang_textcopy(ptr %t233, ptr %t221, i64 %t222)
  %t234 = getelementptr i8, ptr %t233, i64 %t222
  call void @olang_textcopy(ptr %t234, ptr %t223, i64 %t224)
  %t235 = getelementptr i8, ptr %t234, i64 %t224
  call void @olang_textcopy(ptr %t235, ptr %t227, i64 %t228)
  %t236 = getelementptr i8, ptr %t235, i64 %t228
  call void @olang_textcopy(ptr %t236, ptr %t230, i64 %t231)
  %t237 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t233, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t238, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d113, i32 0, i32 1) })
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

define dso_local void @compiler_2fexplain_2emethods(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
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
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l44 = alloca ptr
  %l48 = alloca i1
  %l54 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca i32
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l75 = alloca i32
  %l82 = alloca i32
  %l87 = alloca i32
  %l91 = alloca i1
  %l96 = alloca i32
  %l101 = alloca i32
  %l104 = alloca ptr
  %l106 = alloca i64
  %l107 = alloca i64
  %l112 = alloca i64
  %l113 = alloca ptr
  %l114 = alloca ptr
  %l115 = alloca i64
  %l119 = alloca i32
  %l122 = alloca i64
  %l123 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca i64
  %l131 = alloca i64
  %l132 = alloca ptr
  %l133 = alloca ptr
  %l134 = alloca i64
  %l138 = alloca i32
  %l139 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v1, ptr %t4)
  br label %bb1
bb1:
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v1, ptr %t9)
  store i64 %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load i64, ptr %l16, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l23, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l23, !tbaa !24
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l20, !tbaa !24
  store i64 %t40, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb54
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l8, !tbaa !24
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i64, ptr %l8, !tbaa !24
  %t66 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v1, ptr %v1, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l44
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l44, !tbaa !29
  store ptr %t67, ptr %l9, !tbaa !29
  %t68 = load ptr, ptr %l9, !tbaa !29
  %t70 = getelementptr %"compiler/ast:Func", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb17
bb15:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = load i32, ptr %l2, !tbaa !23
  %t80 = load ptr, ptr %l9, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t87 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v1, ptr %t78, i32 %t79, i32 %t83)
  store i64 %t87, ptr %l54
  br label %bb16
bb16:
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load i64, ptr %l54, !tbaa !24
  %t91 = icmp ne i64 %t89, %t88
  store i1 %t91, ptr %l48, !tbaa !21
  br label %bb17
bb17:
  %t93 = load i1, ptr %l48, !tbaa !21
  br i1 %t93, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb19:
  br label %bb20
bb20:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l59, !tbaa !29
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 2
  store ptr %t105, ptr %l62, !tbaa !29
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i64, ptr %l8, !tbaa !24
  %t113 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v1, ptr %t109, i64 %t110)
  store i32 %t113, ptr %l66
  br label %bb21
bb21:
  %t114 = load ptr, ptr %l62, !tbaa !29
  %t115 = load i32, ptr %l66, !tbaa !23
  %t116 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t114, i32 %t115)
  store i32 %t116, ptr %l67
  br label %bb22
bb22:
  %t117 = load ptr, ptr %l59, !tbaa !29
  %t118 = load i32, ptr %l67, !tbaa !23
  %t119 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %s2, ptr %t117, i32 %t118)
  store { i64, ptr } %t119, ptr %l68
  br label %bb23
bb23:
  %t120 = load { i64, ptr }, ptr %l68, !tbaa !27
  store { i64, ptr } %t120, ptr %l69, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr i32, ptr %t122, i64 0
  %t124 = load i32, ptr %t123, !tbaa !33
  store i32 %t124, ptr %l10, !tbaa !23
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l10, !tbaa !23
  %t135 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t131, i32 %t132)
  store i32 %t135, ptr %l75
  br label %bb24
bb24:
  %t136 = load i32, ptr %l75, !range !{i32 0, i32 33}
  %t138 = trunc i64 20 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb25, label %bb26
bb25:
  %t141 = load ptr, ptr %l1, !tbaa !29
  %t143 = getelementptr %"compiler/check:Checker", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/generic:Program", ptr %t144, i32 0, i32 2
  %t147 = load i32, ptr %l10, !tbaa !23
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v1, ptr %t146, i32 %t147)
  store i32 %t150, ptr %l82
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t151 = load i32, ptr %l82, !tbaa !23
  store i32 %t151, ptr %l10, !tbaa !23
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/check:Checker", ptr %t152, i32 0, i32 1
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t157 = getelementptr %"compiler/generic:Program", ptr %t155, i32 0, i32 2
  %t158 = load i32, ptr %l10, !tbaa !23
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v1, ptr %t157, i32 %t158)
  store i32 %t161, ptr %l87
  br label %bb29
bb29:
  %t162 = load i32, ptr %l87, !range !{i32 0, i32 33}
  %t164 = trunc i64 18 to i32
  %t165 = icmp eq i32 %t162, %t164
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb34
bb31:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 1
  %t172 = load ptr, ptr %t171, !tbaa !29
  %t174 = getelementptr %"compiler/generic:Program", ptr %t172, i32 0, i32 2
  %t175 = load i32, ptr %l10, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l96
  br label %bb32
bb32:
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr %"compiler/check:Checker", ptr %t179, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = getelementptr %"compiler/generic:Program", ptr %t182, i32 0, i32 2
  %t185 = load i32, ptr %l2, !tbaa !23
  %t188 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t184, i32 %t185)
  store i32 %t188, ptr %l101
  br label %bb33
bb33:
  %t189 = load i32, ptr %l96, !tbaa !23
  %t190 = load i32, ptr %l101, !tbaa !23
  %t191 = icmp ne i32 %t189, %t190
  store i1 %t191, ptr %l91, !tbaa !21
  br label %bb34
bb34:
  %t193 = load i1, ptr %l91, !tbaa !21
  br i1 %t193, label %bb35, label %bb36
bb35:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb36:
  br label %bb37
bb37:
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t196 = getelementptr %"compiler/check:Checker", ptr %t194, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l104, !tbaa !29
  %t198 = load i64, ptr %l8, !tbaa !24
  %t200 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t198)
  store i64 %t200, ptr %l106
  br label %bb38
bb38:
  %t201 = load ptr, ptr %l104, !tbaa !29
  %t202 = load i64, ptr %l106, !tbaa !24
  %t203 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v1, ptr %t201, i64 %t202)
  store i64 %t203, ptr %l107
  br label %bb39
bb39:
  %t204 = load i64, ptr %l107, !tbaa !24
  %t205 = icmp eq i64 %t204, 0
  br i1 %t205, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s6
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr %"compiler/check:Checker", ptr %t207, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !29
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v1, ptr %t210, i64 %t211, i32 0)
  store i64 %t214, ptr %l112
  br label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s8
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l132, !tbaa !29
  %t216 = load ptr, ptr %l1, !tbaa !29
  store ptr %t216, ptr %l133, !tbaa !29
  %t217 = load i64, ptr %l8, !tbaa !24
  store i64 %t217, ptr %l134, !tbaa !24
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr %"compiler/check:Checker", ptr %t218, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t222 = load i64, ptr %l8, !tbaa !24
  %t225 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v1, ptr %t221, i64 %t222)
  store i32 %t225, ptr %l138
  br label %bb49
bb42:
  %t226 = load i64, ptr %l112, !tbaa !24
  store i64 %t226, ptr %l11, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  store ptr %t227, ptr %l113, !tbaa !29
  %t228 = load ptr, ptr %l1, !tbaa !29
  store ptr %t228, ptr %l114, !tbaa !29
  %t229 = load i64, ptr %l8, !tbaa !24
  store i64 %t229, ptr %l115, !tbaa !24
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/check:Checker", ptr %t230, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !29
  %t234 = load i64, ptr %l11, !tbaa !24
  %t237 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v1, ptr %t233, i64 %t234)
  store i32 %t237, ptr %l119
  br label %bb43
bb43:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t239 = load i64, ptr %l11, !tbaa !24
  %t242 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v1, ptr %t238, i64 %t239)
  store i64 %t242, ptr %l122
  br label %bb44
bb44:
  %t243 = load ptr, ptr %l114, !tbaa !29
  %t244 = load i64, ptr %l115, !tbaa !24
  %t245 = load i32, ptr %l119, !tbaa !23
  %t246 = load i64, ptr %l122, !tbaa !24
  %t247 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v1, ptr %s6, ptr %t243, i64 %t244, i32 %t245, i64 %t246)
  store { i64, ptr } %t247, ptr %l123
  br label %bb45
bb45:
  %t248 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t250 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = add i64 %t249, %t252
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t255 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t256 = add i64 %t253, %t255
  %t257 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t256)
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
  %t266 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t265)
  call void @llvm.memcpy.p0.p0.i64(ptr %t266, ptr %t264, i64 %t265, i1 false)
  %t267 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t268 = insertvalue { i64, ptr } %t267, ptr %t266, 1
  %t269 = load ptr, ptr %l113, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t269, { i64, ptr } %t268)
  br label %bb46
bb46:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l126, !tbaa !29
  %t272 = load ptr, ptr %l1, !tbaa !29
  store ptr %t272, ptr %l127, !tbaa !29
  %t273 = load i64, ptr %l8, !tbaa !24
  store i64 %t273, ptr %l128, !tbaa !24
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t275 = load i64, ptr %l11, !tbaa !24
  %t278 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v1, ptr %t274, i64 %t275)
  store i64 %t278, ptr %l131
  br label %bb47
bb47:
  %t279 = load ptr, ptr %l126, !tbaa !29
  %t280 = load ptr, ptr %l127, !tbaa !29
  %t281 = load i64, ptr %l128, !tbaa !24
  %t282 = load i64, ptr %l131, !tbaa !24
  call void @compiler_2fexplain_2eeffectLine(ptr %v0, ptr %v1, ptr %s6, ptr %t279, ptr %t280, i64 %t281, i64 %t282, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d116, i32 0, i32 1) })
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s6)
  br label %bb52
bb49:
  %t283 = load ptr, ptr %l133, !tbaa !29
  %t284 = load i64, ptr %l134, !tbaa !24
  %t285 = load i32, ptr %l138, !tbaa !23
  %t286 = call { i64, ptr } @compiler_2fexplain_2efnLine(ptr %v1, ptr %s8, ptr %t283, i64 %t284, i32 %t285, i64 -1)
  store { i64, ptr } %t286, ptr %l139
  br label %bb50
bb50:
  %t287 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t288 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t289 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 1
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t292 = add i64 %t288, %t291
  %t293 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 1
  %t294 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d118, i32 0, i32 1) }, 0
  %t295 = add i64 %t292, %t294
  %t296 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t295)
  call void @olang_textcopy(ptr %t296, ptr %t287, i64 %t288)
  %t297 = getelementptr i8, ptr %t296, i64 %t288
  call void @olang_textcopy(ptr %t297, ptr %t290, i64 %t291)
  %t298 = getelementptr i8, ptr %t297, i64 %t291
  call void @olang_textcopy(ptr %t298, ptr %t293, i64 %t294)
  %t299 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t296, 1
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t303 = extractvalue { i64, ptr } %t300, 1
  %t304 = mul i64 %t302, 1
  %t305 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t304)
  call void @llvm.memcpy.p0.p0.i64(ptr %t305, ptr %t303, i64 %t304, i1 false)
  %t306 = insertvalue { i64, ptr } undef, i64 %t302, 0
  %t307 = insertvalue { i64, ptr } %t306, ptr %t305, 1
  %t308 = load ptr, ptr %l132, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t308, { i64, ptr } %t307)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s8)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s2)
  br label %bb53
bb53:
  %t310 = load i64, ptr %l7, !tbaa !24
  %t312 = add i64 %t310, 1
  store i64 %t312, ptr %l7, !tbaa !24
  br label %bb9
bb54:
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2fexplain_2enoValue(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca i32
  %l45 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store { i64, ptr } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i64, ptr %l4, !tbaa !24
  %t9 = call { i64, ptr } @compiler_2fexplain_2eNoValueWhy(ptr %v1, ptr %v2, ptr %s0, ptr %t1, ptr %t2, i64 %t3, i64 %t4)
  store { i64, ptr } %t9, ptr %l13
  br label %bb1
bb1:
  %t10 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t10, ptr %l6, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t13 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t11, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d119, i32 0, i32 1) })
  store i1 %t13, ptr %l15
  br label %bb2
bb2:
  %t14 = load i1, ptr %l15, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t18, 1
  %t22 = extractvalue { i64, ptr } %t18, 0
  %t23 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t19, 1
  %t28 = extractvalue { i64, ptr } %t19, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t21, i64 %t22)
  %t34 = getelementptr i8, ptr %t33, i64 %t22
  call void @olang_textcopy(ptr %t34, ptr %t23, i64 %t24)
  %t35 = getelementptr i8, ptr %t34, i64 %t24
  call void @olang_textcopy(ptr %t35, ptr %t27, i64 %t28)
  %t36 = getelementptr i8, ptr %t35, i64 %t28
  call void @olang_textcopy(ptr %t36, ptr %t30, i64 %t31)
  %t37 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t33, 1
  %t40 = extractvalue { i64, ptr } %t38, 0
  %t41 = extractvalue { i64, ptr } %t38, 1
  %t42 = mul i64 %t40, 1
  %t43 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t42)
  call void @llvm.memcpy.p0.p0.i64(ptr %t43, ptr %t41, i64 %t42, i1 false)
  %t44 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t17, { i64, ptr } %t45)
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  %t48 = load i64, ptr %l4, !tbaa !24
  %t50 = icmp slt i64 %t48, 0
  br i1 %t50, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  br label %bb9
bb9:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v1, ptr %v1, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l27
  br label %bb10
bb10:
  %t60 = load ptr, ptr %l27, !tbaa !29
  store ptr %t60, ptr %l7, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t65 = load i64, ptr %l3, !tbaa !24
  %t68 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v1, ptr %t64, i64 %t65, i32 0)
  store i64 %t68, ptr %l31
  br label %bb11
bb11:
  %t69 = load i64, ptr %l31, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l32, !tbaa !29
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l33, !tbaa !29
  %t72 = load ptr, ptr %l2, !tbaa !29
  store ptr %t72, ptr %l34, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  store ptr %t73, ptr %l35, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t81 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v1, ptr %t77, i64 %t69)
  store i32 %t81, ptr %l39
  br label %bb12
bb12:
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t84 = getelementptr %"compiler/ast:Func", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t86 = load ptr, ptr %l7, !tbaa !29
  %t88 = getelementptr %"compiler/ast:Func", ptr %t86, i32 0, i32 3
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Sig", ptr %t89, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !27
  %t93 = load ptr, ptr %l35, !tbaa !29
  %t94 = load i32, ptr %l39, !tbaa !23
  %t97 = call i32 @compiler_2fexplain_2enamed(ptr %v1, ptr %v1, ptr %v1, ptr %t93, i32 %t94, ptr %t85, { i64, ptr } %t92)
  store i32 %t97, ptr %l45
  br label %bb13
bb13:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t100 = load ptr, ptr %l32, !tbaa !29
  %t101 = load ptr, ptr %l33, !tbaa !29
  %t102 = load ptr, ptr %l34, !tbaa !29
  %t103 = load i32, ptr %l45, !tbaa !23
  call void @compiler_2fexplain_2efitsLine(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t100, ptr %t101, ptr %t102, i32 %t103, i64 %t98, { i64, ptr } %t99)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
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
  %t55 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d122, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d122, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t59 = extractvalue { i64, ptr } %t47, 1
  %t60 = extractvalue { i64, ptr } %t47, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d123, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fexplain_2eoverCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l12 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l32 = alloca i32
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca i64
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t4, i32 %a2)
  store ptr %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l12, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2cc943ac2dc78fd5_5274b69301a971f1)
  unreachable
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/ast:TypeDecl", ptr %t14, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l5, !tbaa !29
  %t20 = load ptr, ptr %l5, !tbaa !29
  store ptr %t20, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t21 = load ptr, ptr %l18, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l18, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 5}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l19, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l19, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr { i64, [6 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { ptr, ptr }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l6, !tbaa !29
  br label %bb9
bb8:
  br label %bb30
bb9:
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l27, !tbaa !29
  %t42 = load ptr, ptr %l1, !tbaa !29
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/check:Checker", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t50 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v1, ptr %t46, i32 %a3)
  store i32 %t50, ptr %l32
  br label %bb12
bb11:
  br label %bb30
bb12:
  %t51 = load ptr, ptr %l6, !tbaa !29
  %t53 = getelementptr %"compiler/ast:Func", ptr %t51, i32 0, i32 3
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Sig", ptr %t54, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t58 = load ptr, ptr %l28, !tbaa !29
  %t59 = load i32, ptr %l32, !tbaa !23
  %t61 = call i32 @compiler_2fexplain_2enamed(ptr %v1, ptr %s1, ptr %v1, ptr %t58, i32 %t59, ptr null, { i64, ptr } %t57)
  store i32 %t61, ptr %l36
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l27, !tbaa !29
  %t63 = load i32, ptr %l36, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v1, ptr %s1, ptr %t62, i32 %t63)
  store { i64, ptr } %t64, ptr %l37
  br label %bb14
bb14:
  %t65 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t65, ptr %l7, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t68 = call i64 @compiler_2fexplain_2efirstClose(ptr %s1, { i64, ptr } %t66)
  store i64 %t68, ptr %l39
  br label %bb15
bb15:
  %t69 = load i64, ptr %l39, !tbaa !24
  store i64 %t69, ptr %l8, !tbaa !24
  store ptr %a0, ptr %l40, !tbaa !29
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 0
  store i64 %t75, ptr %l43, !tbaa !24
  %t76 = icmp sge i64 2, 0
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp sle i64 2, %t78
  br i1 %t79, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb18:
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = icmp sle i64 %t81, %t82
  br i1 %t83, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb20:
  %t85 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = load i64, ptr %l42, !tbaa !24
  %t88 = getelementptr i8, ptr %t86, i64 2
  %t89 = sub i64 %t87, 2
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  %t92 = load i64, ptr %l8, !tbaa !24
  %t94 = add i64 %t92, 1
  store i64 %t94, ptr %l49, !tbaa !24
  %t95 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t95, 0
  store i64 %t97, ptr %l51, !tbaa !24
  %t98 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t98, 0
  store i64 %t99, ptr %l52, !tbaa !24
  %t100 = load i64, ptr %l49, !tbaa !24
  %t101 = icmp sge i64 %t100, 0
  br i1 %t101, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb22:
  %t103 = load i64, ptr %l49, !tbaa !24
  %t104 = load i64, ptr %l51, !tbaa !24
  %t105 = icmp sle i64 %t103, %t104
  br i1 %t105, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb24:
  %t107 = load i64, ptr %l51, !tbaa !24
  %t108 = load i64, ptr %l52, !tbaa !24
  %t109 = icmp sle i64 %t107, %t108
  br i1 %t109, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb26:
  %t111 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = load i64, ptr %l49, !tbaa !24
  %t114 = load i64, ptr %l51, !tbaa !24
  %t115 = getelementptr i8, ptr %t112, i64 %t113
  %t116 = sub i64 %t114, %t113
  %t117 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t115, 1
  %t120 = call { i64, ptr } @compiler_2fexplain_2eerrorsAfter(ptr %s1, ptr %s1, { i64, ptr } %t118)
  store { i64, ptr } %t120, ptr %l57
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_99dba9233bab2306_11c4778e1aad7562)
  unreachable
bb28:
  %t121 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l58, !tbaa !24
  %t123 = load i64, ptr %l58, !tbaa !24
  %t124 = mul i64 %t123, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l59, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l58, !tbaa !24
  %t133 = mul i64 %t132, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t129, ptr %t131, i64 %t133, i1 false)
  %t134 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t135, i64 %t136)
  %t142 = getelementptr i8, ptr %t141, i64 %t136
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = extractvalue { i64, ptr } %t144, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  %t152 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t152, { i64, ptr } %t151)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s1)
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_94ac06f7d37b19a6_b348a4f44ea9b892)
  unreachable
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fexplain_2epushPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l21 = alloca ptr
  %l24 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca ptr
  %l43 = alloca i32
  %l47 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l53 = alloca i32
  %l54 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t4, i32 %t5)
  store ptr %t8, ptr %l11
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l11, !tbaa !29
  store ptr %t9, ptr %l5, !tbaa !29
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_267284e461664677_b2c2386ba62ab5d3)
  unreachable
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l5, !tbaa !29
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = call i1 @compiler_2fexplain_2ecaseWhole(ptr %v1, ptr %t14, i64 %t15)
  store i1 %t18, ptr %l16
  br label %bb5
bb5:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l18, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  store ptr %t27, ptr %l21, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l24, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t39 = load i64, ptr %l4, !tbaa !24
  %t43 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v1, ptr %t37, i32 %t38, i64 %t39)
  store i32 %t43, ptr %l29
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t44 = load ptr, ptr %l24, !tbaa !29
  %t45 = load i32, ptr %l29, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v1, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l30
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l21, !tbaa !29
  %t48 = load i32, ptr %l30, !tbaa !23
  %t49 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %s1, ptr %t47, i32 %t48)
  store { i64, ptr } %t49, ptr %l31
  br label %bb10
bb10:
  %t50 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i32, ptr %t52, i64 0
  %t54 = load i32, ptr %t53, !tbaa !33
  %t55 = load ptr, ptr %l18, !tbaa !29
  %t57 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v1, ptr %s1, ptr %t55, i32 %t54)
  store { i64, ptr } %t57, ptr %l34
  br label %bb11
bb11:
  %t58 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d124, i32 0, i32 1) }, 0
  %t60 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = extractvalue { i64, ptr } %t60, 0
  %t63 = add i64 %t59, %t62
  %t64 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t63)
  call void @olang_textcopy(ptr %t64, ptr %t58, i64 %t59)
  %t65 = getelementptr i8, ptr %t64, i64 %t59
  call void @olang_textcopy(ptr %t65, ptr %t61, i64 %t62)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t64, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = extractvalue { i64, ptr } %t67, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t75 = load ptr, ptr %l17, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t75, { i64, ptr } %t74)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store ptr %t77, ptr %l37, !tbaa !29
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t84 = load i64, ptr %l4, !tbaa !24
  %t88 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v1, ptr %t82, i32 %t83, i64 %t84)
  store i32 %t88, ptr %l43
  br label %bb14
bb14:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t93 = load i32, ptr %l2, !tbaa !23
  %t96 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t92, i32 %t93)
  store ptr %t96, ptr %l47
  br label %bb15
bb15:
  %t97 = load ptr, ptr %l47, !tbaa !29
  store ptr %t97, ptr %l6, !tbaa !29
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  br i1 %t100, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_66f7703ccaf4f658_ca46a1b97aa24804)
  unreachable
bb17:
  br label %bb18
bb18:
  %t102 = load ptr, ptr %l6, !tbaa !29
  %t103 = load i64, ptr %l4, !tbaa !24
  %t106 = call { i64, ptr } @compiler_2fexplain_2ecasePayload(ptr %v1, ptr %s0, ptr %t102, i64 %t103)
  store { i64, ptr } %t106, ptr %l52
  br label %bb19
bb19:
  %t107 = load ptr, ptr %l38, !tbaa !29
  %t108 = load i32, ptr %l43, !tbaa !23
  %t109 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t110 = call i32 @compiler_2fexplain_2enamed(ptr %v1, ptr %s0, ptr %s0, ptr %t107, i32 %t108, ptr null, { i64, ptr } %t109)
  store i32 %t110, ptr %l53
  br label %bb20
bb20:
  %t111 = load ptr, ptr %l37, !tbaa !29
  %t112 = load i32, ptr %l53, !tbaa !23
  %t113 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v1, ptr %s0, ptr %t111, i32 %t112)
  store { i64, ptr } %t113, ptr %l54
  br label %bb21
bb21:
  %t114 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t114, ptr %l7, !tbaa !27
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l55, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t118 = call i64 @compiler_2fexplain_2efirstClose(ptr %s0, { i64, ptr } %t116)
  store i64 %t118, ptr %l57
  br label %bb22
bb22:
  %t119 = load i64, ptr %l57, !tbaa !24
  %t120 = add i64 %t119, 1
  store i64 %t120, ptr %l58, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l59, !tbaa !24
  %t123 = icmp sge i64 2, 0
  br i1 %t123, label %bb23, label %bb24
bb23:
  %t125 = load i64, ptr %l58, !tbaa !24
  %t126 = icmp sle i64 2, %t125
  br i1 %t126, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb25:
  %t128 = load i64, ptr %l58, !tbaa !24
  %t129 = load i64, ptr %l59, !tbaa !24
  %t130 = icmp sle i64 %t128, %t129
  br i1 %t130, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb27:
  %t132 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l58, !tbaa !24
  %t135 = getelementptr i8, ptr %t133, i64 2
  %t136 = sub i64 %t134, 2
  %t137 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t139 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t139, { i64, ptr } %t138)
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887)
  unreachable
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2equoted(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l38 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb2
bb2:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb25
bb5:
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  store i8 %t24, ptr %l5, !tbaa !22
  %t26 = load i8, ptr %l5, !tbaa !22
  %t28 = icmp eq i8 %t26, 34
  br i1 %t28, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t30 = load i8, ptr %l5, !tbaa !22
  %t32 = icmp eq i8 %t30, 92
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 92)
  br label %bb12
bb11:
  %t36 = load i8, ptr %l5, !tbaa !22
  %t38 = icmp eq i8 %t36, 10
  br i1 %t38, label %bb14, label %bb15
bb12:
  %t40 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t40)
  br label %bb13
bb13:
  br label %bb23
bb14:
  store %olang.scope zeroinitializer, ptr %s5
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d125, i32 0, i32 1) })
  br label %bb16
bb15:
  %t44 = load i8, ptr %l5, !tbaa !22
  %t46 = icmp eq i8 %t44, 9
  br i1 %t46, label %bb17, label %bb18
bb16:
  call void @__olang_scope_close(ptr %s5)
  br label %bb22
bb17:
  store %olang.scope zeroinitializer, ptr %s7
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d126, i32 0, i32 1) })
  br label %bb19
bb18:
  %t49 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t49)
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s7)
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb3
bb25:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 34)
  br label %bb26
bb26:
  %t58 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t58, ptr %l38
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t59 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local void @compiler_2fexplain_2ereqLines(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4, i64 %a5, { i64, ptr } %a6) #0 {
entry:
  %l1 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l18 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 0
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = getelementptr %"compiler/load:Loader", ptr %t7, i32 0, i32 10
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t9, i64 %a5)
  store ptr %t13, ptr %l18
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l18, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 6
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l7, !tbaa !29
  %t19 = load ptr, ptr %l7, !tbaa !29
  %t21 = icmp eq ptr %t19, null
  br i1 %t21, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_94da3303afd0f88a_3eb33841be304afe)
  unreachable
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l7, !tbaa !29
  %t26 = getelementptr %"compiler/source:Source", ptr %t23, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l8, !tbaa !27
  store %olang.scope zeroinitializer, ptr %s1
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t48 = call { i64, ptr } @compiler_2fast_2eRequirements(ptr %v2, ptr %v1, ptr %v1, ptr %v3, ptr %v4, ptr %s1, { i64, ptr } %a2, ptr %t39, { i64, ptr } %t40, { i64, ptr } %a3, ptr %a4)
  store { i64, ptr } %t48, ptr %l34
  br label %bb5
bb5:
  %t49 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t49, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l11, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t54 = load i64, ptr %l10, !tbaa !24
  %t55 = load i64, ptr %l11, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t62 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t62, ptr %l41, !tbaa !27
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr ptr, ptr %t66, i64 %t63
  %t68 = load ptr, ptr %t67, !tbaa !39
  store ptr %a0, ptr %l44, !tbaa !29
  store { i64, ptr } %a6, ptr %l45, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t76 = call { i64, ptr } @compiler_2fast_2eReqText(ptr %s1, ptr %v1, ptr %s2, ptr %t68, { i64, ptr } %t73)
  store { i64, ptr } %t76, ptr %l48
  br label %bb10
bb10:
  %t77 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = extractvalue { i64, ptr } %t77, 0
  %t80 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t81 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t82 = add i64 %t79, %t81
  %t83 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 1
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t86 = add i64 %t82, %t85
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d128, i32 0, i32 1) }, 0
  %t89 = add i64 %t86, %t88
  %t90 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t89)
  call void @olang_textcopy(ptr %t90, ptr %t78, i64 %t79)
  %t91 = getelementptr i8, ptr %t90, i64 %t79
  call void @olang_textcopy(ptr %t91, ptr %t80, i64 %t81)
  %t92 = getelementptr i8, ptr %t91, i64 %t81
  call void @olang_textcopy(ptr %t92, ptr %t84, i64 %t85)
  %t93 = getelementptr i8, ptr %t92, i64 %t85
  call void @olang_textcopy(ptr %t93, ptr %t87, i64 %t88)
  %t94 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t90, 1
  %t97 = extractvalue { i64, ptr } %t95, 0
  %t98 = extractvalue { i64, ptr } %t95, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  %t103 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t103, { i64, ptr } %t102)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb12
bb12:
  %t105 = load i64, ptr %l10, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l10, !tbaa !24
  br label %bb6
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fexplain_2erequires(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Func", ptr %t1, i32 0, i32 3
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/ast:Sig", ptr %t4, i32 0, i32 5
  %t7 = load i1, ptr %t6, !tbaa !21
  br i1 %t7, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 1
  %t13 = extractvalue { i64, ptr } %t10, 0
  %t14 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 82, ptr getelementptr inbounds (<{ i64, [82 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t12, i64 %t13)
  %t18 = getelementptr i8, ptr %t17, i64 %t13
  call void @olang_textcopy(ptr %t18, ptr %t14, i64 %t15)
  %t19 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  %t22 = extractvalue { i64, ptr } %t20, 0
  %t23 = extractvalue { i64, ptr } %t20, 1
  %t24 = mul i64 %t22, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t24)
  call void @llvm.memcpy.p0.p0.i64(ptr %t25, ptr %t23, i64 %t24, i1 false)
  %t26 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t9, { i64, ptr } %t27)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Func", ptr %t32, i32 0, i32 4
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/ast:Func", ptr %t36, i32 0, i32 3
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Sig", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t45 = getelementptr %"compiler/ast:Func", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2fexplain_2ereqLines(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v2, ptr %v3, ptr %t30, ptr %a1, { i64, ptr } %t35, { i64, ptr } %t42, ptr %t46, i64 %a3, { i64, ptr } %t48)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fexplain_2esigOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i1
  %l14 = alloca { i64, ptr }
  %l17 = alloca i32
  %l20 = alloca ptr
  %l25 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l36 = alloca i32
  %l41 = alloca i64
  %l42 = alloca i32
  %l45 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l1, !tbaa !23
  %t9 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %t5, i32 %t6)
  store i1 %t9, ptr %l10
  br label %bb3
bb3:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l1, !tbaa !23
  %t18 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %v1, ptr %t14, i32 %t15)
  store { i64, ptr } %t18, ptr %l14
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t19 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t19, ptr %rv
  br label %ret
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %t20, i64 %t21)
  store i32 %t24, ptr %l17
  br label %bb9
bb9:
  %t25 = load i32, ptr %l17, !tbaa !23
  store i32 %t25, ptr %l3, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/check:Checker", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l20, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l1, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t47, i32 %t48)
  store i32 %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load i32, ptr %l3, !tbaa !23
  store i32 %t52, ptr %l31, !tbaa !23
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t58, i32 %t59)
  store i32 %t62, ptr %l36
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = getelementptr %"compiler/generic:Program", ptr %t66, i32 0, i32 2
  %t69 = load i32, ptr %l1, !tbaa !23
  %t72 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t72, ptr %l41
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l20, !tbaa !29
  %t74 = load i32, ptr %l25, !tbaa !23
  %t75 = load i32, ptr %l30, !tbaa !23
  %t76 = load i32, ptr %l31, !tbaa !23
  %t77 = load i32, ptr %l36, !tbaa !23
  %t78 = load i64, ptr %l41, !tbaa !24
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t73, i32 %t74, i32 %t75, i32 %t76, i32 %t77, i64 %t78, i1 false, i32 0, i64 0)
  store i32 %t79, ptr %l42
  br label %bb14
bb14:
  %t80 = load i32, ptr %l42, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t85 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s0, ptr %t81, i32 %t80)
  store { i64, ptr } %t85, ptr %l45
  br label %bb15
bb15:
  %t86 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = extractvalue { i64, ptr } %t86, 0
  %t89 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t92 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t91)
  call void @olang_textcopy(ptr %t92, ptr %t87, i64 %t88)
  %t93 = getelementptr i8, ptr %t92, i64 %t88
  call void @olang_textcopy(ptr %t93, ptr %t89, i64 %t90)
  %t94 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t95, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2etraitItem(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l20 = alloca ptr
  %l24 = alloca i64
  %l30 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca i1
  %l58 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l67 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l79 = alloca ptr
  %l80 = alloca i1
  %l92 = alloca { i64, ptr }
  %l95 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l99 = alloca i64
  %l102 = alloca i64
  %l103 = alloca i64
  %l108 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v1, ptr %v1, ptr %t4, i32 %t5)
  store ptr %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l20, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v1, ptr %t13, i32 %t14)
  store i64 %t17, ptr %l24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l24, !tbaa !24
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 10
  %t31 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v1, ptr %v1, ptr %t27, i64 %t18)
  store ptr %t31, ptr %l30
  br label %bb3
bb3:
  %t32 = load ptr, ptr %l30, !tbaa !29
  %t34 = getelementptr %"compiler/load:Module", ptr %t32, i32 0, i32 6
  %t35 = load ptr, ptr %t34, !tbaa !29
  store ptr %t35, ptr %l6, !tbaa !29
  %t37 = load ptr, ptr %l6, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_9c4fb7eb44276a12_39e0991f75dfa016)
  unreachable
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l6, !tbaa !29
  %t44 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l7, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d131, i32 0, i32 1) }, 0
  %t52 = extractvalue { i64, ptr } %a3, 1
  %t53 = extractvalue { i64, ptr } %a3, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d132, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d132, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t49, i64 %t50)
  %t59 = getelementptr i8, ptr %t58, i64 %t50
  call void @olang_textcopy(ptr %t59, ptr %t52, i64 %t53)
  %t60 = getelementptr i8, ptr %t59, i64 %t53
  call void @olang_textcopy(ptr %t60, ptr %t55, i64 %t56)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t58, 1
  %t64 = extractvalue { i64, ptr } %t62, 0
  %t65 = extractvalue { i64, ptr } %t62, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t47, { i64, ptr } %t69)
  br label %bb7
bb7:
  %t72 = load ptr, ptr %l4, !tbaa !29
  %t74 = icmp eq ptr %t72, null
  br i1 %t74, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_f947637db6a06e39_bd7e608c8f724ffd)
  unreachable
bb9:
  br label %bb10
bb10:
  %t76 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TypeDecl", ptr %t76, i32 0, i32 3
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l8, !tbaa !29
  %t82 = load ptr, ptr %l8, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = icmp ne ptr %t83, null
  br i1 %t84, label %bb11, label %bb12
bb11:
  %t86 = load ptr, ptr %l47, !tbaa !29
  %t87 = load i64, ptr %t86, !range !{i64 0, i64 5}
  %t89 = icmp eq i64 %t87, 2
  store i1 %t89, ptr %l48, !tbaa !21
  br label %bb12
bb12:
  %t90 = load i1, ptr %l48, !tbaa !21
  br i1 %t90, label %bb13, label %bb14
bb13:
  %t91 = load ptr, ptr %l8, !tbaa !29
  %t93 = getelementptr { i64, [6 x i64] }, ptr %t91, i32 0, i32 1
  %t94 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t93, i32 0, i32 1
  %t95 = load { i64, ptr }, ptr %t94
  store { i64, ptr } %t95, ptr %l9, !tbaa !27
  %t97 = load ptr, ptr %l8, !tbaa !29
  %t99 = getelementptr { i64, [6 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t99, i32 0, i32 2
  %t101 = load { i64, ptr }, ptr %t100
  store { i64, ptr } %t101, ptr %l10, !tbaa !27
  br label %bb15
bb14:
  br label %bb26
bb15:
  %t103 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 0
  %t107 = icmp sgt i64 %t105, 0
  br i1 %t107, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l58, !tbaa !29
  %t110 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t114 = call { i64, ptr } @compiler_2fexplain_2elisted(ptr %v1, ptr %v1, ptr %s3, { i64, ptr } %t110, { i64, ptr } %t111)
  store { i64, ptr } %t114, ptr %l61
  br label %bb18
bb17:
  br label %bb20
bb18:
  %t115 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d133, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d133, i32 0, i32 1) }, 0
  %t117 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = add i64 %t116, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t115, i64 %t116)
  %t122 = getelementptr i8, ptr %t121, i64 %t116
  call void @olang_textcopy(ptr %t122, ptr %t118, i64 %t119)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  %t126 = extractvalue { i64, ptr } %t124, 0
  %t127 = extractvalue { i64, ptr } %t124, 1
  %t128 = mul i64 %t126, 1
  %t129 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t128)
  call void @llvm.memcpy.p0.p0.i64(ptr %t129, ptr %t127, i64 %t128, i1 false)
  %t130 = insertvalue { i64, ptr } undef, i64 %t126, 0
  %t131 = insertvalue { i64, ptr } %t130, ptr %t129, 1
  %t132 = load ptr, ptr %l58, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t132, { i64, ptr } %t131)
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb20:
  %t134 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s5
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l67, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t145 = call { i64, ptr } @compiler_2fexplain_2elisted(ptr %v1, ptr %v1, ptr %s5, { i64, ptr } %t141, { i64, ptr } %t142)
  store { i64, ptr } %t145, ptr %l70
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t146 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d134, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d134, i32 0, i32 1) }, 0
  %t148 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t149 = extractvalue { i64, ptr } %t148, 1
  %t150 = extractvalue { i64, ptr } %t148, 0
  %t151 = add i64 %t147, %t150
  %t152 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t146, i64 %t147)
  %t153 = getelementptr i8, ptr %t152, i64 %t147
  call void @olang_textcopy(ptr %t153, ptr %t149, i64 %t150)
  %t154 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t152, 1
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t158 = extractvalue { i64, ptr } %t155, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t163 = load ptr, ptr %l67, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s5, ptr %t163, { i64, ptr } %t162)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
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
  call void @__olang_check_failed(ptr @olang_loc_945369bc48fd3cab_701e553ecbda785f)
  unreachable
bb31:
  %t165 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t165, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d135, i32 0, i32 1) })
  br label %bb32
bb32:
  %t167 = load ptr, ptr %l4, !tbaa !29
  %t169 = icmp eq ptr %t167, null
  br i1 %t169, label %bb33, label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_6416ccbc4bdd9b53_41c21134d0645047)
  unreachable
bb34:
  br label %bb35
bb35:
  %t171 = load ptr, ptr %l4, !tbaa !29
  %t174 = getelementptr %"compiler/ast:TypeDecl", ptr %t171, i32 0, i32 3
  %t175 = load ptr, ptr %t174, !tbaa !29
  store ptr %t175, ptr %l11, !tbaa !29
  %t177 = load ptr, ptr %l11, !tbaa !29
  store ptr %t177, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t178 = load ptr, ptr %l79, !tbaa !29
  %t179 = icmp ne ptr %t178, null
  br i1 %t179, label %bb36, label %bb37
bb36:
  %t181 = load ptr, ptr %l79, !tbaa !29
  %t182 = load i64, ptr %t181, !range !{i64 0, i64 5}
  %t184 = icmp eq i64 %t182, 2
  store i1 %t184, ptr %l80, !tbaa !21
  br label %bb37
bb37:
  %t185 = load i1, ptr %l80, !tbaa !21
  br i1 %t185, label %bb38, label %bb39
bb38:
  %t186 = load ptr, ptr %l11, !tbaa !29
  %t188 = getelementptr { i64, [6 x i64] }, ptr %t186, i32 0, i32 1
  %t189 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t188, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189
  store { i64, ptr } %t190, ptr %l12, !tbaa !27
  br label %bb40
bb39:
  br label %bb55
bb40:
  %t192 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t192, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  store i64 %t196, ptr %l15, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s10
  %t198 = load i64, ptr %l14, !tbaa !24
  %t199 = load i64, ptr %l15, !tbaa !24
  %t202 = icmp slt i64 %t198, %t199
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s10)
  br label %bb54
bb43:
  br label %bb44
bb44:
  %t206 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t206, ptr %l92, !tbaa !27
  %t207 = load i64, ptr %l14, !tbaa !24
  %t209 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr ptr, ptr %t210, i64 %t207
  %t212 = load ptr, ptr %t211, !tbaa !39
  store ptr %t212, ptr %l16, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  store ptr %t214, ptr %l95, !tbaa !29
  %t215 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t215, ptr %l96, !tbaa !27
  %t216 = load ptr, ptr %l16, !tbaa !29
  %t218 = getelementptr %"compiler/ast:Func", ptr %t216, i32 0, i32 0
  %t219 = getelementptr %"compiler/source:Span", ptr %t218, i32 0, i32 0
  %t220 = load i32, ptr %t219, !tbaa !23
  %t222 = sext i32 %t220 to i64
  store i64 %t222, ptr %l99, !tbaa !24
  %t223 = load ptr, ptr %l16, !tbaa !29
  %t225 = getelementptr %"compiler/ast:Func", ptr %t223, i32 0, i32 0
  %t226 = getelementptr %"compiler/source:Span", ptr %t225, i32 0, i32 1
  %t227 = load i32, ptr %t226, !tbaa !23
  %t229 = sext i32 %t227 to i64
  store i64 %t229, ptr %l102, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t231 = extractvalue { i64, ptr } %t230, 0
  store i64 %t231, ptr %l103, !tbaa !24
  %t232 = load i64, ptr %l99, !tbaa !24
  %t233 = icmp sge i64 %t232, 0
  br i1 %t233, label %bb45, label %bb46
bb45:
  %t235 = load i64, ptr %l99, !tbaa !24
  %t236 = load i64, ptr %l102, !tbaa !24
  %t237 = icmp sle i64 %t235, %t236
  br i1 %t237, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_4bcdc081c3d6706_49dcf1c0d0dc9572)
  unreachable
bb47:
  %t239 = load i64, ptr %l102, !tbaa !24
  %t240 = load i64, ptr %l103, !tbaa !24
  %t241 = icmp sle i64 %t239, %t240
  br i1 %t241, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_4bcdc081c3d6706_49dcf1c0d0dc9572)
  unreachable
bb49:
  %t243 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = load i64, ptr %l99, !tbaa !24
  %t246 = load i64, ptr %l102, !tbaa !24
  %t247 = getelementptr i8, ptr %t244, i64 %t245
  %t248 = sub i64 %t246, %t245
  %t249 = insertvalue { i64, ptr } undef, i64 %t248, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t247, 1
  %t252 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v1, ptr %s10, { i64, ptr } %t250)
  store { i64, ptr } %t252, ptr %l108
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_4bcdc081c3d6706_49dcf1c0d0dc9572)
  unreachable
bb51:
  %t253 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t255 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = add i64 %t254, %t257
  %t259 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t260 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t261 = add i64 %t258, %t260
  %t262 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t261)
  call void @olang_textcopy(ptr %t262, ptr %t253, i64 %t254)
  %t263 = getelementptr i8, ptr %t262, i64 %t254
  call void @olang_textcopy(ptr %t263, ptr %t256, i64 %t257)
  %t264 = getelementptr i8, ptr %t263, i64 %t257
  call void @olang_textcopy(ptr %t264, ptr %t259, i64 %t260)
  %t265 = insertvalue { i64, ptr } undef, i64 %t261, 0
  %t266 = insertvalue { i64, ptr } %t265, ptr %t262, 1
  %t268 = extractvalue { i64, ptr } %t266, 0
  %t269 = extractvalue { i64, ptr } %t266, 1
  %t270 = mul i64 %t268, 1
  %t271 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t270)
  call void @llvm.memcpy.p0.p0.i64(ptr %t271, ptr %t269, i64 %t270, i1 false)
  %t272 = insertvalue { i64, ptr } undef, i64 %t268, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t271, 1
  %t274 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s10, ptr %t274, { i64, ptr } %t273)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s10)
  br label %bb53
bb53:
  %t276 = load i64, ptr %l14, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l14, !tbaa !24
  br label %bb41
bb54:
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_183ac6c93ee000c_8e8c5563c1dc1de8)
  unreachable
bb60:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v3, ptr %t280)
  store { i64, ptr } %t282, ptr %l114
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  %t283 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t283, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %t255 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %s0, ptr %s10, ptr %s10, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d138, i32 0, i32 1) })
  store { i64, ptr } %t255, ptr %l141
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t256 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t258 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 1
  %t260 = extractvalue { i64, ptr } %t258, 0
  %t261 = add i64 %t257, %t260
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d140, i32 0, i32 1) }, 0
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

define dso_local void @compiler_2fexplain_2etwinLines(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { %"compiler/source:Span", i64 }
  %l13 = alloca %"compiler/source:Span"
  %l15 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l50 = alloca i64
  %l55 = alloca { %"compiler/source:Span", i64 }
  %l61 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l76 = alloca i64
  %l81 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a2, ptr %l2
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
  %t7 = getelementptr %"compiler/check:Checker", ptr %a1, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 4
  %t14 = load ptr, ptr %t13, !tbaa !29
  store ptr %t14, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinCount(ptr %v2, ptr %t16)
  store i64 %t18, ptr %l23
  br label %bb4
bb4:
  %t19 = load i64, ptr %l23, !tbaa !24
  store i64 %t19, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load i64, ptr %l8, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb10
bb7:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l8, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l30, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb9
bb9:
  %t46 = load i64, ptr %l30, !tbaa !24
  store i64 %t46, ptr %l27, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l27, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb27
bb13:
  br label %bb14
bb14:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l11, !tbaa !24
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load i64, ptr %l11, !tbaa !24
  %t70 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinBody(ptr %v2, ptr %t66, i64 %t67)
  store i64 %t70, ptr %l50
  br label %bb15
bb15:
  %t71 = load i64, ptr %l3, !tbaa !24
  %t72 = load i64, ptr %l50, !tbaa !24
  %t74 = icmp ne i64 %t72, %t71
  br i1 %t74, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l2, !tbaa !29
  %t77 = load i64, ptr %l11, !tbaa !24
  %t80 = call { %"compiler/source:Span", i64 } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinAt(ptr %v2, ptr %t76, i64 %t77)
  store { %"compiler/source:Span", i64 } %t80, ptr %l55
  br label %bb19
bb19:
  %t81 = load { %"compiler/source:Span", i64 }, ptr %l55
  store { %"compiler/source:Span", i64 } %t81, ptr %l12
  %t82 = getelementptr { %"compiler/source:Span", i64 }, ptr %l12, i32 0, i32 0
  %t83 = load %"compiler/source:Span", ptr %t82
  store %"compiler/source:Span" %t83, ptr %l13
  %t85 = getelementptr { %"compiler/source:Span", i64 }, ptr %l12, i32 0, i32 1
  %t86 = load i64, ptr %t85, !tbaa !24
  %t88 = load ptr, ptr %l2, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 1
  %t94 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v2, ptr %v2, ptr %t90, i64 %t86)
  store ptr %t94, ptr %l61
  br label %bb20
bb20:
  %t95 = load ptr, ptr %l61, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Body", ptr %t95, i32 0, i32 3
  %t98 = load i64, ptr %t97, !tbaa !24
  store i64 %t98, ptr %l15, !tbaa !24
  store ptr %a0, ptr %l64, !tbaa !29
  store { i64, ptr } %a4, ptr %l65, !tbaa !27
  %t102 = load ptr, ptr %l2, !tbaa !29
  %t103 = load i64, ptr %l11, !tbaa !24
  %t106 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinWords(ptr %v2, ptr %s3, ptr %t102, i64 %t103)
  store { i64, ptr } %t106, ptr %l68
  br label %bb21
bb21:
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t108 = load i64, ptr %l15, !tbaa !24
  %t111 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v1, ptr %s3, ptr %t107, i64 %t108)
  store { i64, ptr } %t111, ptr %l71
  br label %bb22
bb22:
  %t112 = load ptr, ptr %l5, !tbaa !29
  %t113 = load i64, ptr %l15, !tbaa !24
  %t114 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t115 = load i32, ptr %t114, !tbaa !23
  %t117 = sext i32 %t115 to i64
  %t121 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v1, ptr %t112, i64 %t113, i64 %t117)
  store i64 %t121, ptr %l76
  br label %bb23
bb23:
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t123 = load i64, ptr %l15, !tbaa !24
  %t124 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t125 = load i32, ptr %t124, !tbaa !23
  %t127 = sext i32 %t125 to i64
  %t131 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v1, ptr %t122, i64 %t123, i64 %t127)
  store i64 %t131, ptr %l81
  br label %bb24
bb24:
  %t132 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d141, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d141, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t138 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = add i64 %t144, %t147
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t150 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t151 = add i64 %t148, %t150
  %t152 = load i64, ptr %l76, !tbaa !24
  %t153 = call i64 @__olang_fmt_i64(ptr null, i64 %t152)
  %t154 = add i64 %t151, %t153
  %t155 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t156 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t157 = add i64 %t154, %t156
  %t158 = load i64, ptr %l81, !tbaa !24
  %t159 = call i64 @__olang_fmt_i64(ptr null, i64 %t158)
  %t160 = add i64 %t157, %t159
  %t161 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t163 = add i64 %t160, %t162
  %t164 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t163)
  call void @olang_textcopy(ptr %t164, ptr %t133, i64 %t134)
  %t165 = getelementptr i8, ptr %t164, i64 %t134
  call void @olang_textcopy(ptr %t165, ptr %t135, i64 %t136)
  %t166 = getelementptr i8, ptr %t165, i64 %t136
  call void @olang_textcopy(ptr %t166, ptr %t139, i64 %t140)
  %t167 = getelementptr i8, ptr %t166, i64 %t140
  call void @olang_textcopy(ptr %t167, ptr %t142, i64 %t143)
  %t168 = getelementptr i8, ptr %t167, i64 %t143
  call void @olang_textcopy(ptr %t168, ptr %t146, i64 %t147)
  %t169 = getelementptr i8, ptr %t168, i64 %t147
  call void @olang_textcopy(ptr %t169, ptr %t149, i64 %t150)
  %t170 = getelementptr i8, ptr %t169, i64 %t150
  %t171 = call i64 @__olang_fmt_i64(ptr %t170, i64 %t152)
  %t172 = getelementptr i8, ptr %t170, i64 %t153
  call void @olang_textcopy(ptr %t172, ptr %t155, i64 %t156)
  %t173 = getelementptr i8, ptr %t172, i64 %t156
  %t174 = call i64 @__olang_fmt_i64(ptr %t173, i64 %t158)
  %t175 = getelementptr i8, ptr %t173, i64 %t159
  call void @olang_textcopy(ptr %t175, ptr %t161, i64 %t162)
  %t176 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t164, 1
  %t179 = extractvalue { i64, ptr } %t177, 0
  %t180 = extractvalue { i64, ptr } %t177, 1
  %t181 = mul i64 %t179, 1
  %t182 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t181)
  call void @llvm.memcpy.p0.p0.i64(ptr %t182, ptr %t180, i64 %t181, i1 false)
  %t183 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t182, 1
  %t185 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t185, { i64, ptr } %t184)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s3)
  br label %bb26
bb26:
  %t187 = load i64, ptr %l10, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l10, !tbaa !24
  br label %bb11
bb27:
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
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d145, i32 0, i32 1) }, ptr %l40, !tbaa !27
  br label %bb16
bb15:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d146, i32 0, i32 1) }, ptr %l40, !tbaa !27
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d147, i32 0, i32 1) })
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
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l26 = alloca i32
  %l30 = alloca i1
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l43 = alloca i64
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %l66 = alloca i32
  %l78 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l88 = alloca ptr
  %l89 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l117 = alloca i64
  %l120 = alloca i64
  %l139 = alloca ptr
  %l140 = alloca ptr
  %l146 = alloca i32
  %l147 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l151 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l159 = alloca i1
  %l160 = alloca { i64, ptr }
  %l178 = alloca i32
  %l179 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l187 = alloca i1
  %l188 = alloca { i64, ptr }
  %l193 = alloca i32
  %l196 = alloca { i64, ptr }
  %l199 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l215 = alloca ptr
  %l216 = alloca ptr
  %l220 = alloca i32
  %l224 = alloca ptr
  %l228 = alloca { i64, ptr }
  %l229 = alloca i32
  %l230 = alloca { i64, ptr }
  %l232 = alloca i64
  %l233 = alloca ptr
  %l234 = alloca i64
  %l235 = alloca i64
  %l239 = alloca { i64, ptr }
  %l243 = alloca ptr
  %l247 = alloca { i64, ptr }
  %l251 = alloca i64
  %l252 = alloca { i64, ptr }
  %l253 = alloca ptr
  %l254 = alloca { i64, ptr }
  %l257 = alloca { i64, ptr }
  %l262 = alloca i1
  %l263 = alloca { i64, ptr }
  %l264 = alloca { i64, ptr }
  %l266 = alloca i64
  %l268 = alloca i64
  %l269 = alloca i64
  %l274 = alloca { i64, ptr }
  %l275 = alloca i64
  %l276 = alloca { i64, ptr }
  %l298 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l22
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l22
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/check:Checker", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %t5, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l26
  br label %bb2
bb2:
  %t11 = load i32, ptr %l26, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l30
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t23, i32 %t24)
  store ptr %t27, ptr %l34
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l34, !tbaa !29
  store ptr %t28, ptr %l4, !tbaa !29
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = icmp eq ptr %t29, null
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l2, ptr %l38, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l39, !tbaa !29
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/check:Checker", ptr %t36, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t39, i32 %t40)
  store i64 %t43, ptr %l43
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t44 = load ptr, ptr %l4, !tbaa !29
  %t46 = getelementptr %"compiler/ast:TypeDecl", ptr %t44, i32 0, i32 4
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t48 = load ptr, ptr %l38, !tbaa !29
  %t49 = load ptr, ptr %l39, !tbaa !29
  %t50 = load i64, ptr %l43, !tbaa !24
  call void @compiler_2fexplain_2eattrLines(ptr %s0, ptr %v0, ptr %v0, ptr %s1, ptr %t48, ptr %t49, i64 %t50, { i64, ptr } %t47, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d148, i32 0, i32 1) })
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
  store ptr %t63, ptr %l50, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l55
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t75 = load i32, ptr %l55, !tbaa !23
  %t76 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t74, i32 %t75)
  store { i64, ptr } %t76, ptr %l56
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l57, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t80 = call i64 @compiler_2fgeneric_2eDeclOwner(i32 %t78)
  store i64 %t80, ptr %l59
  br label %bb12
bb12:
  %t81 = load ptr, ptr %l57, !tbaa !29
  %t82 = load i64, ptr %l59, !tbaa !24
  %t83 = call { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %s0, ptr %t81, i64 %t82, i64 0)
  store { i64, ptr } %t83, ptr %l60
  br label %bb13
bb13:
  %t84 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = load { i64, ptr }, ptr %l60, !tbaa !27
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
  store i32 %t105, ptr %l66
  br label %bb14
bb14:
  %t106 = load i32, ptr %l66, !range !{i32 0, i32 6}
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
  %t113 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d149, i32 0, i32 1) }, 1
  %t114 = extractvalue { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d149, i32 0, i32 1) }, 0
  %t116 = extractvalue { i64, ptr } %t112, 1
  %t117 = extractvalue { i64, ptr } %t112, 0
  %t118 = add i64 %t114, %t117
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 1
  %t120 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d150, i32 0, i32 1) }, 0
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
  br label %bb23
bb21:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l1, !tbaa !23
  %t135 = load i32, ptr %l3, !tbaa !23
  %t136 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t142 = call { i64, ptr } @compiler_2fexplain_2eerrorTypeItem(ptr %s0, ptr %v0, ptr %s0, ptr %v1, ptr %l2, ptr %t133, i32 %t134, i32 %t135, { i64, ptr } %t136)
  store { i64, ptr } %t142, ptr %l78
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t143 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t143, ptr %rv
  br label %ret
bb23:
  %t144 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t146 = trunc i64 3 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load i32, ptr %l1, !tbaa !23
  %t151 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = call { i64, ptr } @compiler_2fexplain_2etraitItem(ptr %s0, ptr %v0, ptr %s0, ptr %v1, ptr %l2, ptr %t149, i32 %t150, { i64, ptr } %t151)
  store { i64, ptr } %t156, ptr %l85
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t157 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t157, ptr %rv
  br label %ret
bb28:
  %t158 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t160 = trunc i64 1 to i32
  %t161 = icmp eq i32 %t158, %t160
  br i1 %t161, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb64
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l2, ptr %l88, !tbaa !29
  %t163 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t163, ptr %l89, !tbaa !27
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t165 = load i32, ptr %l3, !tbaa !23
  %t168 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s7, ptr %t164, i32 %t165)
  store { i64, ptr } %t168, ptr %l92
  br label %bb32
bb32:
  %t169 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d151, i32 0, i32 1) }, 1
  %t170 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d151, i32 0, i32 1) }, 0
  %t171 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t172 = extractvalue { i64, ptr } %t171, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = add i64 %t170, %t173
  %t175 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = extractvalue { i64, ptr } %t175, 0
  %t178 = add i64 %t174, %t177
  %t179 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d152, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t181)
  call void @olang_textcopy(ptr %t182, ptr %t169, i64 %t170)
  %t183 = getelementptr i8, ptr %t182, i64 %t170
  call void @olang_textcopy(ptr %t183, ptr %t172, i64 %t173)
  %t184 = getelementptr i8, ptr %t183, i64 %t173
  call void @olang_textcopy(ptr %t184, ptr %t176, i64 %t177)
  %t185 = getelementptr i8, ptr %t184, i64 %t177
  call void @olang_textcopy(ptr %t185, ptr %t179, i64 %t180)
  %t186 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t182, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = extractvalue { i64, ptr } %t187, 1
  %t191 = mul i64 %t189, 1
  %t192 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t191)
  call void @llvm.memcpy.p0.p0.i64(ptr %t192, ptr %t190, i64 %t191, i1 false)
  %t193 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t192, 1
  %t195 = load ptr, ptr %l88, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t195, { i64, ptr } %t194)
  br label %bb33
bb33:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2egenLine(ptr %s0, ptr %v0, ptr %l2, ptr %t197, i32 %t198)
  br label %bb34
bb34:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/check:Checker", ptr %t202, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !29
  %t207 = getelementptr %"compiler/generic:Program", ptr %t205, i32 0, i32 2
  store ptr %t207, ptr %l100, !tbaa !29
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/check:Checker", ptr %t208, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/generic:Program", ptr %t211, i32 0, i32 2
  %t214 = load i32, ptr %l3, !tbaa !23
  %t217 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t213, i32 %t214)
  store i32 %t217, ptr %l105
  br label %bb35
bb35:
  %t218 = load ptr, ptr %l100, !tbaa !29
  %t219 = load i32, ptr %l105, !tbaa !23
  %t220 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t218, i32 %t219)
  store { i64, ptr } %t220, ptr %l106
  br label %bb36
bb36:
  %t221 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t221, ptr %l8, !tbaa !27
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/check:Checker", ptr %t222, i32 0, i32 1
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/generic:Program", ptr %t225, i32 0, i32 2
  %t228 = load i32, ptr %l3, !tbaa !23
  %t231 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %s7, ptr %t227, i32 %t228)
  store { i64, ptr } %t231, ptr %l111
  br label %bb37
bb37:
  %t232 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t232, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t233 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  store i64 %t235, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l11, !tbaa !24
  %t238 = load i64, ptr %l10, !tbaa !24
  %t241 = icmp sgt i64 %t237, %t238
  br i1 %t241, label %bb38, label %bb39
bb38:
  %t243 = load i64, ptr %l12, !tbaa !24
  %t245 = icmp sgt i64 %t243, 0
  br i1 %t245, label %bb40, label %bb41
bb39:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb43
bb40:
  %t247 = load i64, ptr %l11, !tbaa !24
  %t248 = load i64, ptr %l10, !tbaa !24
  %t251 = sub i64 %t247, %t248
  %t252 = load i64, ptr %l12, !tbaa !24
  %t255 = add i64 %t251, %t252
  %t257 = sub i64 %t255, 1
  %t258 = load i64, ptr %l12, !tbaa !24
  %t261 = sdiv i64 %t257, %t258
  store i64 %t261, ptr %l120, !tbaa !24
  br label %bb42
bb41:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb42
bb42:
  %t263 = load i64, ptr %l120, !tbaa !24
  store i64 %t263, ptr %l117, !tbaa !24
  br label %bb43
bb43:
  %t264 = load i64, ptr %l117, !tbaa !24
  store i64 %t264, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb44
bb44:
  store %olang.scope zeroinitializer, ptr %s10
  %t265 = load i64, ptr %l14, !tbaa !24
  %t266 = load i64, ptr %l13, !tbaa !24
  %t269 = icmp slt i64 %t265, %t266
  %t271 = xor i1 %t269, true
  br i1 %t271, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s10)
  br label %bb63
bb46:
  br label %bb47
bb47:
  %t273 = load i64, ptr %l10, !tbaa !24
  %t274 = load i64, ptr %l14, !tbaa !24
  %t275 = load i64, ptr %l12, !tbaa !24
  %t278 = mul i64 %t274, %t275
  %t281 = add i64 %t273, %t278
  store i64 %t281, ptr %l15, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %l2, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d153, i32 0, i32 1) })
  br label %bb48
bb48:
  store ptr %l2, ptr %l139, !tbaa !29
  %t284 = load ptr, ptr %l0, !tbaa !29
  store ptr %t284, ptr %l140, !tbaa !29
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr %"compiler/check:Checker", ptr %t285, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t289 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t290 = load i32, ptr %l3, !tbaa !23
  %t291 = load i64, ptr %l15, !tbaa !24
  %t296 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %t288, i64 %t289, i32 %t290, i64 %t291, i64 0)
  store i32 %t296, ptr %l146
  br label %bb49
bb49:
  %t297 = load ptr, ptr %l140, !tbaa !29
  %t298 = load i32, ptr %l146, !tbaa !23
  %t299 = call { i64, ptr } @compiler_2fexplain_2eattrsBefore(ptr %v0, ptr %s10, ptr %t297, i32 %t298)
  store { i64, ptr } %t299, ptr %l147
  br label %bb50
bb50:
  %t300 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t301 = extractvalue { i64, ptr } %t300, 0
  %t302 = extractvalue { i64, ptr } %t300, 1
  %t303 = mul i64 %t301, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t304, ptr %t302, i64 %t303, i1 false)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  %t307 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s10, ptr %t307, { i64, ptr } %t306)
  br label %bb51
bb51:
  store ptr %l2, ptr %l149, !tbaa !29
  %t309 = load ptr, ptr %l5, !tbaa !29
  %t310 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t310, ptr %l151, !tbaa !27
  %t311 = load i64, ptr %l15, !tbaa !24
  %t313 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t314 = load ptr, ptr %t313, !tbaa !27
  %t315 = getelementptr i32, ptr %t314, i64 %t311
  %t316 = load i32, ptr %t315, !tbaa !33
  %t319 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t309, i32 %t316)
  store { i64, ptr } %t319, ptr %l154
  br label %bb52
bb52:
  %t320 = load ptr, ptr %l149, !tbaa !29
  %t321 = load { i64, ptr }, ptr %l154, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t320, { i64, ptr } %t321)
  br label %bb53
bb53:
  %t322 = load i64, ptr %l15, !tbaa !24
  %t323 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  %t328 = icmp slt i64 %t322, %t325
  br i1 %t328, label %bb54, label %bb55
bb54:
  %t330 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t330, ptr %l160, !tbaa !27
  %t331 = load i64, ptr %l15, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr i32, ptr %t334, i64 %t331
  %t336 = load i32, ptr %t335, !tbaa !33
  %t338 = icmp ne i32 %t336, 0
  store i1 %t338, ptr %l159, !tbaa !21
  br label %bb56
bb55:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb56
bb56:
  %t340 = load i1, ptr %l159, !tbaa !21
  br i1 %t340, label %bb57, label %bb58
bb57:
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i32, ptr %l1, !tbaa !23
  %t343 = load i32, ptr %l3, !tbaa !23
  %t344 = load i64, ptr %l15, !tbaa !24
  call void @compiler_2fexplain_2epushPayload(ptr %s0, ptr %v0, ptr %l2, ptr %t341, i32 %t342, i32 %t343, i64 %t344)
  br label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb60
bb60:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s10)
  br label %bb62
bb62:
  %t351 = load i64, ptr %l14, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l14, !tbaa !24
  br label %bb44
bb63:
  call void @__olang_scope_close(ptr %s7)
  br label %bb127
bb64:
  %t355 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t357 = trunc i64 4 to i32
  %t358 = icmp eq i32 %t355, %t357
  br i1 %t358, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb84
bb67:
  store %olang.scope zeroinitializer, ptr %s13
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/check:Checker", ptr %t360, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !29
  %t365 = getelementptr %"compiler/generic:Program", ptr %t363, i32 0, i32 2
  %t366 = load i32, ptr %l3, !tbaa !23
  %t369 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t365, i32 %t366)
  store i32 %t369, ptr %l178
  br label %bb68
bb68:
  %t370 = load i32, ptr %l178, !tbaa !23
  store i32 %t370, ptr %l16, !tbaa !23
  store ptr %l2, ptr %l179, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t371, ptr %l180, !tbaa !27
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l3, !tbaa !23
  %t376 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s13, ptr %t372, i32 %t373)
  store { i64, ptr } %t376, ptr %l183
  br label %bb69
bb69:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t381 = load i32, ptr %l3, !tbaa !23
  %t384 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t380, i32 %t381)
  store i1 %t384, ptr %l187
  br label %bb70
bb70:
  %t385 = load i1, ptr %l187, !tbaa !21
  br i1 %t385, label %bb71, label %bb72
bb71:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d154, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb73
bb72:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d155, i32 0, i32 1) }, ptr %l188, !tbaa !27
  br label %bb73
bb73:
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t388 = getelementptr %"compiler/check:Checker", ptr %t386, i32 0, i32 1
  %t389 = load ptr, ptr %t388, !tbaa !29
  %t391 = getelementptr %"compiler/generic:Program", ptr %t389, i32 0, i32 2
  %t392 = load i32, ptr %l16, !tbaa !23
  %t395 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t391, i32 %t392)
  store i32 %t395, ptr %l193
  br label %bb74
bb74:
  %t396 = load i32, ptr %l193, !range !{i32 0, i32 33}
  %t398 = trunc i64 21 to i32
  %t399 = icmp eq i32 %t396, %t398
  br i1 %t399, label %bb75, label %bb76
bb75:
  %t401 = load ptr, ptr %l0, !tbaa !29
  %t402 = load i32, ptr %l16, !tbaa !23
  %t405 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s13, ptr %t401, i32 %t402)
  store { i64, ptr } %t405, ptr %l199
  br label %bb77
bb76:
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i32, ptr %l16, !tbaa !23
  %t410 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s13, ptr %t406, i32 %t407)
  store { i64, ptr } %t410, ptr %l202
  br label %bb78
bb77:
  %t411 = load { i64, ptr }, ptr %l199, !tbaa !27
  store { i64, ptr } %t411, ptr %l196, !tbaa !27
  br label %bb79
bb78:
  %t412 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t412, ptr %l196, !tbaa !27
  br label %bb79
bb79:
  %t413 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d156, i32 0, i32 1) }, 1
  %t414 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d156, i32 0, i32 1) }, 0
  %t415 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t416 = extractvalue { i64, ptr } %t415, 1
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t418 = add i64 %t414, %t417
  %t419 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t419, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = add i64 %t418, %t421
  %t423 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t423, 1
  %t425 = extractvalue { i64, ptr } %t423, 0
  %t426 = add i64 %t422, %t425
  %t427 = load { i64, ptr }, ptr %l196, !tbaa !27
  %t428 = extractvalue { i64, ptr } %t427, 1
  %t429 = extractvalue { i64, ptr } %t427, 0
  %t430 = add i64 %t426, %t429
  %t431 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t430)
  call void @olang_textcopy(ptr %t431, ptr %t413, i64 %t414)
  %t432 = getelementptr i8, ptr %t431, i64 %t414
  call void @olang_textcopy(ptr %t432, ptr %t416, i64 %t417)
  %t433 = getelementptr i8, ptr %t432, i64 %t417
  call void @olang_textcopy(ptr %t433, ptr %t420, i64 %t421)
  %t434 = getelementptr i8, ptr %t433, i64 %t421
  call void @olang_textcopy(ptr %t434, ptr %t424, i64 %t425)
  %t435 = getelementptr i8, ptr %t434, i64 %t425
  call void @olang_textcopy(ptr %t435, ptr %t428, i64 %t429)
  %t436 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t431, 1
  %t439 = extractvalue { i64, ptr } %t437, 0
  %t440 = extractvalue { i64, ptr } %t437, 1
  %t441 = mul i64 %t439, 1
  %t442 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t441)
  call void @llvm.memcpy.p0.p0.i64(ptr %t442, ptr %t440, i64 %t441, i1 false)
  %t443 = insertvalue { i64, ptr } undef, i64 %t439, 0
  %t444 = insertvalue { i64, ptr } %t443, ptr %t442, 1
  %t445 = load ptr, ptr %l179, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s13, ptr %t445, { i64, ptr } %t444)
  br label %bb80
bb80:
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t448 = load i32, ptr %l1, !tbaa !23
  %t449 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2eoverCtor(ptr %s0, ptr %v0, ptr %l2, ptr %t447, i32 %t448, i32 %t449)
  br label %bb81
bb81:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 10)
  br label %bb82
bb82:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2ectorRequires(ptr %s0, ptr %v0, ptr %l2, ptr %t455, i32 %t456)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s13)
  br label %bb127
bb84:
  %t460 = load i32, ptr %l7, !range !{i32 0, i32 6}
  %t462 = trunc i64 0 to i32
  %t463 = icmp eq i32 %t460, %t462
  br i1 %t463, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb126
bb87:
  store %olang.scope zeroinitializer, ptr %s15
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l215, !tbaa !29
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l216, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/check:Checker", ptr %t467, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !29
  %t471 = load i32, ptr %l3, !tbaa !23
  %t474 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t470, i32 %t471)
  store i32 %t474, ptr %l220
  br label %bb88
bb88:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/check:Checker", ptr %t475, i32 0, i32 1
  %t478 = load ptr, ptr %t477, !tbaa !29
  %t479 = load i32, ptr %l1, !tbaa !23
  %t482 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t478, i32 %t479)
  store ptr %t482, ptr %l224
  br label %bb89
bb89:
  %t483 = load ptr, ptr %l224, !tbaa !29
  store ptr %t483, ptr %l17, !tbaa !29
  %t484 = load ptr, ptr %l17, !tbaa !29
  %t486 = icmp eq ptr %t484, null
  br i1 %t486, label %bb90, label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_85d3fea1d96f25de_7b2f6a0f1962587a)
  unreachable
bb91:
  br label %bb92
bb92:
  %t488 = load ptr, ptr %l17, !tbaa !29
  %t490 = call { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %s15, ptr %t488)
  store { i64, ptr } %t490, ptr %l228
  br label %bb93
bb93:
  %t491 = load ptr, ptr %l216, !tbaa !29
  %t492 = load i32, ptr %l220, !tbaa !23
  %t493 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t494 = call i32 @compiler_2fexplain_2enamed(ptr %v0, ptr %s15, ptr %s15, ptr %t491, i32 %t492, ptr null, { i64, ptr } %t493)
  store i32 %t494, ptr %l229
  br label %bb94
bb94:
  %t495 = load ptr, ptr %l215, !tbaa !29
  %t496 = load i32, ptr %l229, !tbaa !23
  %t497 = call { i64, ptr } @compiler_2fexplain_2edeclSig(ptr %v0, ptr %s15, ptr %t495, i32 %t496)
  store { i64, ptr } %t497, ptr %l230
  br label %bb95
bb95:
  %t498 = load { i64, ptr }, ptr %l230, !tbaa !27
  store { i64, ptr } %t498, ptr %l18, !tbaa !27
  %t499 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t501 = call i64 @compiler_2fexplain_2efirstClose(ptr %s15, { i64, ptr } %t499)
  store i64 %t501, ptr %l232
  br label %bb96
bb96:
  %t502 = load i64, ptr %l232, !tbaa !24
  store i64 %t502, ptr %l19, !tbaa !24
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l233, !tbaa !29
  %t504 = load i64, ptr %l19, !tbaa !24
  store i64 %t504, ptr %l234, !tbaa !24
  %t505 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t506 = extractvalue { i64, ptr } %t505, 0
  store i64 %t506, ptr %l235, !tbaa !24
  %t507 = icmp sge i64 3, 0
  br i1 %t507, label %bb97, label %bb98
bb97:
  %t509 = load i64, ptr %l234, !tbaa !24
  %t510 = icmp sle i64 3, %t509
  br i1 %t510, label %bb99, label %bb100
bb98:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb99:
  %t512 = load i64, ptr %l234, !tbaa !24
  %t513 = load i64, ptr %l235, !tbaa !24
  %t514 = icmp sle i64 %t512, %t513
  br i1 %t514, label %bb101, label %bb102
bb100:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb101:
  %t516 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = load i64, ptr %l234, !tbaa !24
  %t519 = getelementptr i8, ptr %t517, i64 3
  %t520 = sub i64 %t518, 3
  %t521 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t519, 1
  store { i64, ptr } %t522, ptr %l239, !tbaa !27
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/check:Checker", ptr %t523, i32 0, i32 1
  %t526 = load ptr, ptr %t525, !tbaa !29
  %t527 = load i32, ptr %l1, !tbaa !23
  %t530 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v0, ptr %t526, i32 %t527)
  store ptr %t530, ptr %l243
  br label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f)
  unreachable
bb103:
  %t531 = load ptr, ptr %l243, !tbaa !29
  store ptr %t531, ptr %l20, !tbaa !29
  %t532 = load ptr, ptr %l20, !tbaa !29
  %t534 = icmp eq ptr %t532, null
  br i1 %t534, label %bb104, label %bb105
bb104:
  call void @__olang_check_failed(ptr @olang_loc_a185ff5f85e75430_c999a61f9f0eedcc)
  unreachable
bb105:
  br label %bb106
bb106:
  %t536 = load ptr, ptr %l20, !tbaa !29
  %t538 = call { i64, ptr } @compiler_2fexplain_2ectorParams(ptr %v0, ptr %s15, ptr %t536)
  store { i64, ptr } %t538, ptr %l247
  br label %bb107
bb107:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/check:Checker", ptr %t539, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !29
  %t543 = load i32, ptr %l1, !tbaa !23
  %t546 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %t542, i32 %t543)
  store i64 %t546, ptr %l251
  br label %bb108
bb108:
  %t547 = load ptr, ptr %l233, !tbaa !29
  %t548 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t549 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t550 = load i64, ptr %l251, !tbaa !24
  %t551 = call { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %s15, ptr %s15, ptr %s15, ptr %t547, { i64, ptr } %t548, { i64, ptr } %t549, i64 %t550, i64 0)
  store { i64, ptr } %t551, ptr %l252
  br label %bb109
bb109:
  %t552 = load { i64, ptr }, ptr %l252, !tbaa !27
  store { i64, ptr } %t552, ptr %l21, !tbaa !27
  store ptr %l2, ptr %l253, !tbaa !29
  %t553 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t553, ptr %l254, !tbaa !27
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t555 = load i32, ptr %l3, !tbaa !23
  %t558 = call { i64, ptr } @compiler_2fexplain_2edeclWord(ptr %v0, ptr %s15, ptr %t554, i32 %t555)
  store { i64, ptr } %t558, ptr %l257
  br label %bb110
bb110:
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/generic:Program", ptr %t562, i32 0, i32 2
  %t565 = load i32, ptr %l3, !tbaa !23
  %t568 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t564, i32 %t565)
  store i1 %t568, ptr %l262
  br label %bb111
bb111:
  %t569 = load i1, ptr %l262, !tbaa !21
  br i1 %t569, label %bb112, label %bb113
bb112:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d157, i32 0, i32 1) }, ptr %l263, !tbaa !27
  br label %bb114
bb113:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d158, i32 0, i32 1) }, ptr %l263, !tbaa !27
  br label %bb114
bb114:
  %t570 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t570, ptr %l264, !tbaa !27
  %t571 = load i64, ptr %l19, !tbaa !24
  %t573 = add i64 %t571, 1
  store i64 %t573, ptr %l266, !tbaa !24
  %t574 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t574, 0
  store i64 %t576, ptr %l268, !tbaa !24
  %t577 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t578 = extractvalue { i64, ptr } %t577, 0
  store i64 %t578, ptr %l269, !tbaa !24
  %t579 = load i64, ptr %l266, !tbaa !24
  %t580 = icmp sge i64 %t579, 0
  br i1 %t580, label %bb115, label %bb116
bb115:
  %t582 = load i64, ptr %l266, !tbaa !24
  %t583 = load i64, ptr %l268, !tbaa !24
  %t584 = icmp sle i64 %t582, %t583
  br i1 %t584, label %bb117, label %bb118
bb116:
  call void @__olang_check_failed(ptr @olang_loc_3b65fc1599fe4b35_e6657610cbc0cf91)
  unreachable
bb117:
  %t586 = load i64, ptr %l268, !tbaa !24
  %t587 = load i64, ptr %l269, !tbaa !24
  %t588 = icmp sle i64 %t586, %t587
  br i1 %t588, label %bb119, label %bb120
bb118:
  call void @__olang_check_failed(ptr @olang_loc_3b65fc1599fe4b35_e6657610cbc0cf91)
  unreachable
bb119:
  %t590 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t591 = load ptr, ptr %t590, !tbaa !27
  %t592 = load i64, ptr %l266, !tbaa !24
  %t593 = load i64, ptr %l268, !tbaa !24
  %t594 = getelementptr i8, ptr %t591, i64 %t592
  %t595 = sub i64 %t593, %t592
  %t596 = insertvalue { i64, ptr } undef, i64 %t595, 0
  %t597 = insertvalue { i64, ptr } %t596, ptr %t594, 1
  %t599 = call { i64, ptr } @compiler_2fexplain_2eerrorsAfter(ptr %s15, ptr %s15, { i64, ptr } %t597)
  store { i64, ptr } %t599, ptr %l274
  br label %bb121
bb120:
  call void @__olang_check_failed(ptr @olang_loc_3b65fc1599fe4b35_e6657610cbc0cf91)
  unreachable
bb121:
  %t600 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t601 = extractvalue { i64, ptr } %t600, 0
  store i64 %t601, ptr %l275, !tbaa !24
  %t602 = load i64, ptr %l275, !tbaa !24
  %t603 = mul i64 %t602, 1
  %t604 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t603)
  %t605 = insertvalue { i64, ptr } undef, i64 %t602, 0
  %t606 = insertvalue { i64, ptr } %t605, ptr %t604, 1
  store { i64, ptr } %t606, ptr %l276, !tbaa !27
  %t607 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t608 = load ptr, ptr %t607, !tbaa !27
  %t609 = getelementptr { i64, ptr }, ptr %l274, i32 0, i32 1
  %t610 = load ptr, ptr %t609, !tbaa !27
  %t611 = load i64, ptr %l275, !tbaa !24
  %t612 = mul i64 %t611, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t608, ptr %t610, i64 %t612, i1 false)
  %t613 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d159, i32 0, i32 1) }, 1
  %t614 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d159, i32 0, i32 1) }, 0
  %t615 = load { i64, ptr }, ptr %l254, !tbaa !27
  %t616 = extractvalue { i64, ptr } %t615, 1
  %t617 = extractvalue { i64, ptr } %t615, 0
  %t618 = add i64 %t614, %t617
  %t619 = load { i64, ptr }, ptr %l257, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t619, 1
  %t621 = extractvalue { i64, ptr } %t619, 0
  %t622 = add i64 %t618, %t621
  %t623 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t624 = extractvalue { i64, ptr } %t623, 1
  %t625 = extractvalue { i64, ptr } %t623, 0
  %t626 = add i64 %t622, %t625
  %t627 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d160, i32 0, i32 1) }, 1
  %t628 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d160, i32 0, i32 1) }, 0
  %t629 = add i64 %t626, %t628
  %t630 = load { i64, ptr }, ptr %l264, !tbaa !27
  %t631 = extractvalue { i64, ptr } %t630, 1
  %t632 = extractvalue { i64, ptr } %t630, 0
  %t633 = add i64 %t629, %t632
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 1
  %t635 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d161, i32 0, i32 1) }, 0
  %t636 = add i64 %t633, %t635
  %t637 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t637, 1
  %t639 = extractvalue { i64, ptr } %t637, 0
  %t640 = add i64 %t636, %t639
  %t641 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 1
  %t642 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d162, i32 0, i32 1) }, 0
  %t643 = add i64 %t640, %t642
  %t644 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t643)
  call void @olang_textcopy(ptr %t644, ptr %t613, i64 %t614)
  %t645 = getelementptr i8, ptr %t644, i64 %t614
  call void @olang_textcopy(ptr %t645, ptr %t616, i64 %t617)
  %t646 = getelementptr i8, ptr %t645, i64 %t617
  call void @olang_textcopy(ptr %t646, ptr %t620, i64 %t621)
  %t647 = getelementptr i8, ptr %t646, i64 %t621
  call void @olang_textcopy(ptr %t647, ptr %t624, i64 %t625)
  %t648 = getelementptr i8, ptr %t647, i64 %t625
  call void @olang_textcopy(ptr %t648, ptr %t627, i64 %t628)
  %t649 = getelementptr i8, ptr %t648, i64 %t628
  call void @olang_textcopy(ptr %t649, ptr %t631, i64 %t632)
  %t650 = getelementptr i8, ptr %t649, i64 %t632
  call void @olang_textcopy(ptr %t650, ptr %t634, i64 %t635)
  %t651 = getelementptr i8, ptr %t650, i64 %t635
  call void @olang_textcopy(ptr %t651, ptr %t638, i64 %t639)
  %t652 = getelementptr i8, ptr %t651, i64 %t639
  call void @olang_textcopy(ptr %t652, ptr %t641, i64 %t642)
  %t653 = insertvalue { i64, ptr } undef, i64 %t643, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t644, 1
  %t656 = extractvalue { i64, ptr } %t654, 0
  %t657 = extractvalue { i64, ptr } %t654, 1
  %t658 = mul i64 %t656, 1
  %t659 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t658)
  call void @llvm.memcpy.p0.p0.i64(ptr %t659, ptr %t657, i64 %t658, i1 false)
  %t660 = insertvalue { i64, ptr } undef, i64 %t656, 0
  %t661 = insertvalue { i64, ptr } %t660, ptr %t659, 1
  %t662 = load ptr, ptr %l253, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %t662, { i64, ptr } %t661)
  br label %bb122
bb122:
  %t664 = load ptr, ptr %l0, !tbaa !29
  %t665 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2ectorRequires(ptr %s0, ptr %v0, ptr %l2, ptr %t664, i32 %t665)
  br label %bb123
bb123:
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2egenLine(ptr %s0, ptr %v0, ptr %l2, ptr %t669, i32 %t670)
  br label %bb124
bb124:
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2efields(ptr %s0, ptr %v0, ptr %l2, ptr %t674, i32 %t675)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s15)
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_9e7f77c067ece8f1_2a0afb54e00d35)
  unreachable
bb127:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load i32, ptr %l1, !tbaa !23
  call void @compiler_2fexplain_2ebuilders(ptr %s0, ptr %v0, ptr %l2, ptr %t679, i32 %t680)
  br label %bb128
bb128:
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2emethods(ptr %s0, ptr %v0, ptr %l2, ptr %t684, i32 %t685)
  br label %bb129
bb129:
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fexplain_2etraitsMet(ptr %s0, ptr %v0, ptr %l2, ptr %t689, i32 %t690)
  br label %bb130
bb130:
  %t695 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t695, ptr %l298
  br label %bb131
bb131:
  call void @__olang_scope_close(ptr %s0)
  %t696 = load { i64, ptr }, ptr %l298, !tbaa !27
  store { i64, ptr } %t696, ptr %rv
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

define dso_local { i64, ptr } @compiler_2fexplain_2etypeVars(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/generic:varRow"
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"std/prelude/text:StringBuilder"
  %l34 = alloca i64
  %l37 = alloca i64
  %l59 = alloca %"compiler/generic:varRow"
  %l64 = alloca i1
  %l65 = alloca ptr
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l82 = alloca ptr
  %l88 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l95 = alloca { i64, ptr }
  %l104 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l115 = alloca ptr
  %l118 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t4, i64 %t5)
  store i64 %t8, ptr %l19
  br label %bb1
bb1:
  %t9 = load i64, ptr %l19, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sle i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d163, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t16, ptr %l24, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l25, !tbaa !24
  %t19 = load i64, ptr %l25, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l26, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l25, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t30, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t32 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t32, ptr %l27
  br label %bb5
bb5:
  %t33 = load %"std/prelude/text:StringBuilder", ptr %l27
  store %"std/prelude/text:StringBuilder" %t33, ptr %l4
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 60)
  br label %bb6
bb6:
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  store i64 %t37, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp sgt i64 %t39, %t40
  br i1 %t43, label %bb7, label %bb8
bb7:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp sgt i64 %t45, 0
  br i1 %t47, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb12
bb9:
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = sub i64 %t49, %t50
  %t54 = load i64, ptr %l7, !tbaa !24
  %t57 = add i64 %t53, %t54
  %t59 = sub i64 %t57, 1
  %t60 = load i64, ptr %l7, !tbaa !24
  %t63 = sdiv i64 %t59, %t60
  store i64 %t63, ptr %l37, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb11
bb11:
  %t65 = load i64, ptr %l37, !tbaa !24
  store i64 %t65, ptr %l34, !tbaa !24
  br label %bb12
bb12:
  %t66 = load i64, ptr %l34, !tbaa !24
  store i64 %t66, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb13
bb13:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = icmp slt i64 %t67, %t68
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb14, label %bb15
bb14:
  br label %bb51
bb15:
  br label %bb16
bb16:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = mul i64 %t76, %t77
  %t83 = add i64 %t75, %t80
  store i64 %t83, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t90 = load i64, ptr %l10, !tbaa !24
  %t94 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t88, i64 %t89, i64 %t90)
  store %"compiler/generic:varRow" %t94, ptr %l59
  br label %bb17
bb17:
  %t95 = load %"compiler/generic:varRow", ptr %l59
  store %"compiler/generic:varRow" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/check:Checker", ptr %t96, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t105 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %t99, i64 %t100, i64 %t101)
  store i1 %t105, ptr %l64
  br label %bb18
bb18:
  %t106 = load i1, ptr %l64, !tbaa !21
  br i1 %t106, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l4, ptr %l65, !tbaa !29
  %t107 = load i64, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l2, !tbaa !24
  %t111 = icmp sgt i64 %t107, %t108
  br i1 %t111, label %bb21, label %bb22
bb20:
  br label %bb26
bb21:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d164, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb23
bb22:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d165, i32 0, i32 1) }, ptr %l69, !tbaa !27
  br label %bb23
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/load:Loader", ptr %t119, i32 0, i32 3
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 1
  %t124 = load i32, ptr %t123, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t122, i32 %t124)
  store { i64, ptr } %t127, ptr %l75
  br label %bb24
bb24:
  %t128 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t131 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t134 = add i64 %t130, %t133
  %t135 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t134)
  call void @olang_textcopy(ptr %t135, ptr %t129, i64 %t130)
  %t136 = getelementptr i8, ptr %t135, i64 %t130
  call void @olang_textcopy(ptr %t136, ptr %t132, i64 %t133)
  %t137 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t135, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = extractvalue { i64, ptr } %t138, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l65, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t146, { i64, ptr } %t145)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb26:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t149 = load i64, ptr %l2, !tbaa !24
  %t152 = icmp sgt i64 %t148, %t149
  br i1 %t152, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l4, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d166, i32 0, i32 1) })
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb30
bb30:
  store ptr %l4, ptr %l82, !tbaa !29
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/check:Checker", ptr %t155, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/generic:Program", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t163 = getelementptr %"compiler/load:Loader", ptr %t161, i32 0, i32 3
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 1
  %t166 = load i32, ptr %t165, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t164, i32 %t166)
  store { i64, ptr } %t169, ptr %l88
  br label %bb31
bb31:
  %t170 = load ptr, ptr %l82, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l88, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t170, { i64, ptr } %t171)
  br label %bb32
bb32:
  %t172 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 2
  %t173 = load i32, ptr %t172, !tbaa !23
  %t174 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t177 = icmp ne i32 %t173, %t174
  br i1 %t177, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  store ptr %l4, ptr %l92, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 2
  %t181 = load i32, ptr %t180, !tbaa !23
  %t184 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s7, ptr %t179, i32 %t181)
  store { i64, ptr } %t184, ptr %l95
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d167, i32 0, i32 1) }, 0
  %t187 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = add i64 %t186, %t189
  %t191 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t190)
  call void @olang_textcopy(ptr %t191, ptr %t185, i64 %t186)
  %t192 = getelementptr i8, ptr %t191, i64 %t186
  call void @olang_textcopy(ptr %t192, ptr %t188, i64 %t189)
  %t193 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t197 = extractvalue { i64, ptr } %t194, 1
  %t198 = mul i64 %t196, 1
  %t199 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t198)
  call void @llvm.memcpy.p0.p0.i64(ptr %t199, ptr %t197, i64 %t198, i1 false)
  %t200 = insertvalue { i64, ptr } undef, i64 %t196, 0
  %t201 = insertvalue { i64, ptr } %t200, ptr %t199, 1
  %t202 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t202, { i64, ptr } %t201)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb37:
  %t204 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 3
  %t205 = load i32, ptr %t204, !tbaa !23
  %t206 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t209 = icmp ne i32 %t205, %t206
  br i1 %t209, label %bb38, label %bb39
bb38:
  store %olang.scope zeroinitializer, ptr %s10
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t215 = getelementptr %"compiler/generic:varRow", ptr %l11, i32 0, i32 3
  %t216 = load i32, ptr %t215, !tbaa !23
  %t219 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %s10, ptr %t214, i32 %t216)
  store { i64, ptr } %t219, ptr %l104
  br label %bb40
bb39:
  br label %bb49
bb40:
  %t220 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t220, 0
  %t222 = extractvalue { i64, ptr } %t220, 1
  %t223 = mul i64 %t221, 4
  %t224 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  store { i64, ptr } %t226, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t228 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 0
  store i64 %t230, ptr %l14, !tbaa !24
  br label %bb41
bb41:
  store %olang.scope zeroinitializer, ptr %s11
  %t232 = load i64, ptr %l13, !tbaa !24
  %t233 = load i64, ptr %l14, !tbaa !24
  %t236 = icmp slt i64 %t232, %t233
  %t238 = xor i1 %t236, true
  br i1 %t238, label %bb42, label %bb43
bb42:
  call void @__olang_scope_close(ptr %s11)
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t240 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t240, ptr %l112, !tbaa !27
  %t241 = load i64, ptr %l13, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr i32, ptr %t244, i64 %t241
  %t246 = load i32, ptr %t245, !tbaa !33
  store ptr %l4, ptr %l115, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t252 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %s11, ptr %t248, i32 %t246)
  store { i64, ptr } %t252, ptr %l118
  br label %bb45
bb45:
  %t253 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 1
  %t254 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d168, i32 0, i32 1) }, 0
  %t255 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = extractvalue { i64, ptr } %t255, 0
  %t258 = add i64 %t254, %t257
  %t259 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t258)
  call void @olang_textcopy(ptr %t259, ptr %t253, i64 %t254)
  %t260 = getelementptr i8, ptr %t259, i64 %t254
  call void @olang_textcopy(ptr %t260, ptr %t256, i64 %t257)
  %t261 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t262 = insertvalue { i64, ptr } %t261, ptr %t259, 1
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t270 = load ptr, ptr %l115, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t270, { i64, ptr } %t269)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s11)
  br label %bb47
bb47:
  %t272 = load i64, ptr %l13, !tbaa !24
  %t274 = add i64 %t272, 1
  store i64 %t274, ptr %l13, !tbaa !24
  br label %bb41
bb48:
  call void @__olang_scope_close(ptr %s10)
  br label %bb49
bb49:
  br label %bb50
bb50:
  %t276 = load i64, ptr %l9, !tbaa !24
  %t278 = add i64 %t276, 1
  store i64 %t278, ptr %l9, !tbaa !24
  br label %bb13
bb51:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l4, i8 62)
  br label %bb52
bb52:
  %t282 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l4)
  store { i64, ptr } %t282, ptr %l127
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t283 = load { i64, ptr }, ptr %l127, !tbaa !27
  store { i64, ptr } %t283, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fexplain_2ewithDefaults(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l17 = alloca i1
  %l27 = alloca ptr
  %l35 = alloca %"std/prelude/text:StringBuilder"
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l56 = alloca i1
  %l61 = alloca i1
  %l62 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca { i64, ptr }
  %l97 = alloca i64
  %l99 = alloca i64
  %l100 = alloca i64
  %l105 = alloca { i64, ptr }
  %l107 = alloca i64
  %l110 = alloca i64
  %l111 = alloca i64
  %l117 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  store i1 %t9, ptr %l17, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l17, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 1
  %t15 = extractvalue { i64, ptr } %t12, 0
  %t16 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t15)
  call void @olang_textcopy(ptr %t16, ptr %t14, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l27
  br label %bb7
bb7:
  %t33 = load ptr, ptr %l27, !tbaa !29
  %t35 = getelementptr %"compiler/load:Module", ptr %t33, i32 0, i32 6
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l5, !tbaa !29
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  br i1 %t40, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_ff0e4b22591d4baf_6e63db52d9d49f33)
  unreachable
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t45 = getelementptr %"compiler/source:Source", ptr %t42, i32 0, i32 1
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l6, !tbaa !27
  %t48 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t48, ptr %l35
  br label %bb11
bb11:
  %t49 = load %"std/prelude/text:StringBuilder", ptr %l35
  store %"std/prelude/text:StringBuilder" %t49, ptr %l7
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t50, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t52 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  %t56 = icmp sgt i64 %t54, 0
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  br label %bb61
bb14:
  br label %bb15
bb15:
  %t60 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t62 = call i64 @compiler_2fexplain_2efirstItemEnd(ptr %v1, { i64, ptr } %t60)
  store i64 %t62, ptr %l42
  br label %bb16
bb16:
  %t63 = load i64, ptr %l42, !tbaa !24
  store i64 %t63, ptr %l10, !tbaa !24
  store ptr %l7, ptr %l43, !tbaa !29
  %t64 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t64, ptr %l44, !tbaa !27
  %t65 = load i64, ptr %l10, !tbaa !24
  store i64 %t65, ptr %l45, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l46, !tbaa !24
  %t68 = icmp sge i64 0, 0
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load i64, ptr %l45, !tbaa !24
  %t71 = icmp sle i64 0, %t70
  br i1 %t71, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb19:
  %t73 = load i64, ptr %l45, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  br i1 %t75, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb21:
  %t77 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = load i64, ptr %l45, !tbaa !24
  %t80 = getelementptr i8, ptr %t78, i64 0
  %t81 = sub i64 %t79, 0
  %t82 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t80, 1
  %t84 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t84, { i64, ptr } %t83)
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_9a288766c4af6878_87d82d450b86e5bc)
  unreachable
bb23:
  %t86 = load i64, ptr %l9, !tbaa !24
  %t90 = sub i64 %t86, %a4
  store i64 %t90, ptr %l11, !tbaa !24
  %t92 = load i64, ptr %l11, !tbaa !24
  %t94 = icmp sge i64 %t92, 0
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t102 = icmp slt i64 %t96, %t99
  store i1 %t102, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t104 = load i1, ptr %l56, !tbaa !21
  br i1 %t104, label %bb27, label %bb28
bb27:
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l62, !tbaa !27
  %t106 = load i64, ptr %l11, !tbaa !24
  %t108 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = getelementptr ptr, ptr %t109, i64 %t106
  %t111 = load ptr, ptr %t110, !tbaa !39
  %t113 = getelementptr %"compiler/ast:Param", ptr %t111, i32 0, i32 3
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  %t118 = xor i1 %t116, true
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb29
bb29:
  %t120 = load i1, ptr %l61, !tbaa !21
  br i1 %t120, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s4
  %t121 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t121, ptr %l68, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t129 = getelementptr %"compiler/ast:Param", ptr %t127, i32 0, i32 3
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l12, !tbaa !29
  %t132 = load ptr, ptr %l12, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb32, label %bb33
bb31:
  br label %bb43
bb32:
  call void @__olang_check_failed(ptr @olang_loc_dff7162f9e8224a5_8282e6f3b3a12619)
  unreachable
bb33:
  br label %bb34
bb34:
  %t136 = load ptr, ptr %l12, !tbaa !29
  %t138 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t136)
  store %"compiler/source:Span" %t138, ptr %l75
  br label %bb35
bb35:
  %t139 = load %"compiler/source:Span", ptr %l75
  store %"compiler/source:Span" %t139, ptr %l13
  store ptr %l7, ptr %l76, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t140, ptr %l77, !tbaa !27
  %t141 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t142 = load i32, ptr %t141, !tbaa !23
  %t144 = sext i32 %t142 to i64
  store i64 %t144, ptr %l79, !tbaa !24
  %t145 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 1
  %t146 = load i32, ptr %t145, !tbaa !23
  %t148 = sext i32 %t146 to i64
  store i64 %t148, ptr %l81, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t150 = extractvalue { i64, ptr } %t149, 0
  store i64 %t150, ptr %l82, !tbaa !24
  %t151 = load i64, ptr %l79, !tbaa !24
  %t152 = icmp sge i64 %t151, 0
  br i1 %t152, label %bb36, label %bb37
bb36:
  %t154 = load i64, ptr %l79, !tbaa !24
  %t155 = load i64, ptr %l81, !tbaa !24
  %t156 = icmp sle i64 %t154, %t155
  br i1 %t156, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb38:
  %t158 = load i64, ptr %l81, !tbaa !24
  %t159 = load i64, ptr %l82, !tbaa !24
  %t160 = icmp sle i64 %t158, %t159
  br i1 %t160, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb40:
  %t162 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = load i64, ptr %l79, !tbaa !24
  %t165 = load i64, ptr %l81, !tbaa !24
  %t166 = getelementptr i8, ptr %t163, i64 %t164
  %t167 = sub i64 %t165, %t164
  %t168 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t169 = insertvalue { i64, ptr } %t168, ptr %t166, 1
  %t170 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d169, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d169, i32 0, i32 1) }, 0
  %t173 = extractvalue { i64, ptr } %t169, 1
  %t174 = extractvalue { i64, ptr } %t169, 0
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = getelementptr i8, ptr %t176, i64 %t171
  call void @olang_textcopy(ptr %t177, ptr %t173, i64 %t174)
  %t178 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t179 = insertvalue { i64, ptr } %t178, ptr %t176, 1
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t182 = extractvalue { i64, ptr } %t179, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t187 = load ptr, ptr %l76, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t187, { i64, ptr } %t186)
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a)
  unreachable
bb42:
  call void @__olang_scope_close(ptr %s4)
  br label %bb43
bb43:
  %t189 = load i64, ptr %l9, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l9, !tbaa !24
  %t193 = load i64, ptr %l10, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t199 = icmp sge i64 %t193, %t196
  br i1 %t199, label %bb44, label %bb45
bb44:
  br label %bb61
bb45:
  br label %bb46
bb46:
  store ptr %l7, ptr %l95, !tbaa !29
  %t201 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t201, ptr %l96, !tbaa !27
  %t202 = load i64, ptr %l10, !tbaa !24
  store i64 %t202, ptr %l97, !tbaa !24
  %t203 = load i64, ptr %l10, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l99, !tbaa !24
  %t206 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  store i64 %t207, ptr %l100, !tbaa !24
  %t208 = load i64, ptr %l97, !tbaa !24
  %t209 = icmp sge i64 %t208, 0
  br i1 %t209, label %bb47, label %bb48
bb47:
  %t211 = load i64, ptr %l97, !tbaa !24
  %t212 = load i64, ptr %l99, !tbaa !24
  %t213 = icmp sle i64 %t211, %t212
  br i1 %t213, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb49:
  %t215 = load i64, ptr %l99, !tbaa !24
  %t216 = load i64, ptr %l100, !tbaa !24
  %t217 = icmp sle i64 %t215, %t216
  br i1 %t217, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb51:
  %t219 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = load i64, ptr %l97, !tbaa !24
  %t222 = load i64, ptr %l99, !tbaa !24
  %t223 = getelementptr i8, ptr %t220, i64 %t221
  %t224 = sub i64 %t222, %t221
  %t225 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t223, 1
  %t227 = load ptr, ptr %l95, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v1, ptr %t227, { i64, ptr } %t226)
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405)
  unreachable
bb53:
  %t229 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t229, ptr %l105, !tbaa !27
  %t230 = load i64, ptr %l10, !tbaa !24
  %t232 = add i64 %t230, 1
  store i64 %t232, ptr %l107, !tbaa !24
  %t233 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t233, 0
  store i64 %t236, ptr %l110, !tbaa !24
  %t237 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 0
  store i64 %t238, ptr %l111, !tbaa !24
  %t239 = load i64, ptr %l107, !tbaa !24
  %t240 = icmp sge i64 %t239, 0
  br i1 %t240, label %bb54, label %bb55
bb54:
  %t242 = load i64, ptr %l107, !tbaa !24
  %t243 = load i64, ptr %l110, !tbaa !24
  %t244 = icmp sle i64 %t242, %t243
  br i1 %t244, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb56:
  %t246 = load i64, ptr %l110, !tbaa !24
  %t247 = load i64, ptr %l111, !tbaa !24
  %t248 = icmp sle i64 %t246, %t247
  br i1 %t248, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb58:
  %t250 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = load i64, ptr %l107, !tbaa !24
  %t253 = load i64, ptr %l110, !tbaa !24
  %t254 = getelementptr i8, ptr %t251, i64 %t252
  %t255 = sub i64 %t253, %t252
  %t256 = insertvalue { i64, ptr } undef, i64 %t255, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t254, 1
  store { i64, ptr } %t257, ptr %l8, !tbaa !27
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_6ea1601f041f7d0c_6257690dec820828)
  unreachable
bb60:
  br label %bb12
bb61:
  %t260 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v3, ptr %l7)
  store { i64, ptr } %t260, ptr %l117
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  %t261 = load { i64, ptr }, ptr %l117, !tbaa !27
  store { i64, ptr } %t261, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fexplain_2ewordPayload(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l9 = alloca i32
  %l15 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l37 = alloca i32
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v1, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load i32, ptr %l4, !tbaa !23
  %t11 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t14 = icmp eq i32 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/check:Checker", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/generic:Program", ptr %t25, i32 0, i32 2
  %t28 = load i32, ptr %l4, !tbaa !23
  %t31 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v1, ptr %t27, i32 %t28)
  store i32 %t31, ptr %l20
  br label %bb5
bb5:
  %t32 = load ptr, ptr %l15, !tbaa !29
  %t33 = load i32, ptr %l20, !tbaa !23
  %t34 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v1, ptr %v1, ptr %t32, i32 %t33)
  store { i64, ptr } %t34, ptr %l21
  br label %bb6
bb6:
  %t35 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  %t36 = load i64, ptr %l3, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = icmp sge i64 %t36, %t39
  br i1 %t42, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb9
bb8:
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t44, ptr %l27, !tbaa !27
  %t45 = load i64, ptr %l3, !tbaa !24
  %t47 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !27
  %t49 = getelementptr i32, ptr %t48, i64 %t45
  %t50 = load i32, ptr %t49, !tbaa !33
  %t52 = icmp eq i32 %t50, 0
  store i1 %t52, ptr %l26, !tbaa !21
  br label %bb9
bb9:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb10, label %bb11
bb10:
  br label %ret
bb11:
  br label %bb12
bb12:
  store ptr %a0, ptr %l31, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  store ptr %t56, ptr %l32, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t62 = getelementptr %"compiler/generic:Program", ptr %t60, i32 0, i32 2
  %t63 = load i32, ptr %l4, !tbaa !23
  %t66 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v1, ptr %t62, i32 %t63)
  store i32 %t66, ptr %l37
  br label %bb13
bb13:
  %t67 = load i32, ptr %l4, !tbaa !23
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load ptr, ptr %l31, !tbaa !29
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load i32, ptr %l37, !tbaa !23
  call void @compiler_2fexplain_2epushPayload(ptr %v0, ptr %v1, ptr %t69, ptr %t70, i32 %t71, i32 %t67, i64 %t68)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fexplain_2ewrittenMethod(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca ptr
  %l47 = alloca i64
  %l50 = alloca i1
  %l54 = alloca i1
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  call void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %t4)
  br label %bb1
bb1:
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb8
bb5:
  %t23 = load i64, ptr %l5, !tbaa !24
  %t24 = load i64, ptr %l4, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l22, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l22, !tbaa !24
  store i64 %t39, ptr %l19, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l19, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t41 = load i64, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb30
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l9, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t63 = load i64, ptr %l9, !tbaa !24
  %t66 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t62, i64 %t63)
  store ptr %t66, ptr %l43
  br label %bb13
bb13:
  %t67 = load ptr, ptr %l43, !tbaa !29
  store ptr %t67, ptr %l10, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t71, i64 %t72)
  store i64 %t75, ptr %l47
  br label %bb14
bb14:
  %t77 = load i64, ptr %l47, !tbaa !24
  %t79 = icmp ne i64 %t77, %a1
  br i1 %t79, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb17
bb16:
  %t81 = load ptr, ptr %l10, !tbaa !29
  %t83 = getelementptr %"compiler/ast:Func", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  store i1 %t86, ptr %l50, !tbaa !21
  br label %bb17
bb17:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb20
bb19:
  %t89 = load ptr, ptr %l10, !tbaa !29
  %t91 = getelementptr %"compiler/ast:Func", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t96 = icmp ne i32 %t92, %a3
  store i1 %t96, ptr %l54, !tbaa !21
  br label %bb20
bb20:
  %t98 = load i1, ptr %l54, !tbaa !21
  br i1 %t98, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb22:
  br label %bb23
bb23:
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/check:Checker", ptr %t100, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !29
  %t105 = getelementptr %"compiler/generic:Program", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/load:Loader", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t112 = call { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v0, ptr %s2, ptr %t99, ptr %t109)
  store { i64, ptr } %t112, ptr %l64
  br label %bb24
bb24:
  %t113 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t113, 0
  %t115 = extractvalue { i64, ptr } %t113, 1
  %t116 = mul i64 %t114, 1
  %t117 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t116)
  call void @llvm.memcpy.p0.p0.i64(ptr %t117, ptr %t115, i64 %t116, i1 false)
  %t118 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %v1, { i64, ptr } %t119, { i64, ptr } %a2)
  store i1 %t123, ptr %l67
  br label %bb25
bb25:
  %t124 = load i1, ptr %l67, !tbaa !21
  br i1 %t124, label %bb26, label %bb27
bb26:
  %t125 = load i64, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i64 %t125, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb29
bb29:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l8, !tbaa !24
  br label %bb9
bb30:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/explain:Code" @compiler_2fexplain_3aCode_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/explain:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/explain:Code" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/explain:Code" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/explain:Code" %t12, i64 %a2, 2
  %t16 = insertvalue %"compiler/explain:Code" %t14, { i64, ptr } %a3, 3
  store %"compiler/explain:Code" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/explain:Code", ptr %rv
  ret %"compiler/explain:Code" %rr
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
@.d1 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d2 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"held in locals and results only - its scopes (" }>, align 8
@.d3 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c") are more than a written function type says of every call (T22a)" }>, align 8
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
@.d4 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"held in locals and results only - the function it gives, " }>, align 8
@.d7 = private constant <{ i64, [73 x i8] }> <{ i64 0, [73 x i8] c", ties scopes more than a written function type says of every call (T22a)" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"none" }>, align 8
@.d10 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"   " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_2esole_2ecompiler_2fexplain_3aCode_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d12 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"instance " }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d15 = private constant <{ i64, [64 x i8] }> <{ i64 0, [64 x i8] c"a method is called as one (M19) - a lambda calling it is a value" }>, align 8
@.d16 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"an extern fn is called by its name (X1) - a lambda calling it is a value" }>, align 8
@.d17 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c"it is compiled once per length of an array it takes by value (G29) - pass a lambda calling it" }>, align 8
@.d18 = private constant <{ i64, [66 x i8] }> <{ i64 0, [66 x i8] c"a generic builder is a value only named with its type arguments, '" }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"<...>." }>, align 8
@.d20 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"' (G12, D19)" }>, align 8
@.d21 = private constant <{ i64, [58 x i8] }> <{ i64 0, [58 x i8] c"a generic is a value only named with its type arguments, '" }>, align 8
@.d22 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"<...>' (G12)" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"<" }>, align 8
@.d30 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".h" }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".c" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d33 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"fn&(" }>, align 8
@.d35 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d36 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" immut" }>, align 8
@.d37 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" unique" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"# effects: " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d41 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error " }>, align 8
@.d42 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"   # declared where it is raised (R3b)\0A" }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d44 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" error" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d47 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d48 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"weak " }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d55 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"noborrow" }>, align 8
@.d56 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2fexplain__2efitsLine_2elocal_2e15 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@.d57 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"borrows " }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare void @__olang_region_release(ptr) noinline
@.d59 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"keeps " }>, align 8
@.d60 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"   # held in locals and results only (T22a)" }>, align 8
@.d63 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d64 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"# fits: " }>, align 8
@.d65 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d66 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d67 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d68 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d69 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d70 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d72 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d73 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d74 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d75 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"    # " }>, align 8
@.d76 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d77 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d78 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"    instance " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d81 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d82 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d83 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d84 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e5 = weak hidden constant i1 false
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d86 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Generator" }>, align 8
@olang_2esole_2ecompiler__2fexplain__2efnLine_2elocal_2e9 = weak hidden constant i1 false
@.d87 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d88 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"   # a generator: a call gives a " }>, align 8
@.d89 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"HoldingGenerator<" }>, align 8
@.d90 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d91 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"   # a generator: a call gives a " }>, align 8
@.d92 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"ViewGenerator<" }>, align 8
@.d93 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Iterator" }>, align 8
@.d94 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
@.d95 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"   # a generator: a call gives a " }>, align 8
@.d96 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"extern fn " }>, align 8
@.d97 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d98 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d99 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d100 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c") " }>, align 8
@.d101 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d102 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"    # generational: held by reference; weak from " }>, align 8
@.d103 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d104 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" mut " }>, align 8
@.d105 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d106 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"   # set at startup\0A" }>, align 8
@.d107 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"   # set at startup\0A" }>, align 8
@.d108 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d109 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"...   # " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d110 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c" characters\0A" }>, align 8
@.d111 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d113 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d114 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d116 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"        " }>, align 8
@.d117 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d118 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d119 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d120 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"# not a value: " }>, align 8
@.d121 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d122 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"# scopes: " }>, align 8
@.d123 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d124 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d125 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d126 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Ct" }>, align 8
@.d127 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"# requires: " }>, align 8
@.d128 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d129 = private constant <{ i64, [82 x i8] }> <{ i64 0, [82 x i8] c"# commutes: the operator applies with its operands the other way round too (E31c)\0A" }>, align 8
@.d130 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"   # its error set inferred" }>, align 8
@.d131 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d132 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" trait" }>, align 8
@.d133 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" extends " }>, align 8
@.d134 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c" for " }>, align 8
@.d135 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d136 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d137 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d138 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d139 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"    meets " }>, align 8
@.d140 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d141 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"# followed for: " }>, align 8
@.d142 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c", at " }>, align 8
@.d143 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d144 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d145 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d146 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d147 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d148 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d149 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"extern type " }>, align 8
@.d150 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d151 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d152 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" enum\0A" }>, align 8
@.d153 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d154 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" extends " }>, align 8
@.d155 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d156 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d157 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" packed" }>, align 8
@.d158 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d159 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d160 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" struct(" }>, align 8
@.d161 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d162 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d163 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d164 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" ? " }>, align 8
@.d165 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"? " }>, align 8
@.d166 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d167 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d168 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d169 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
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
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eObligations(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eValueCovered(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eGivesHeld(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerOf(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAllFns(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
@G_2ecompiler_2feffects_2eCapCount = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2feffects_2eCapText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadEnd(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eSpellFrom(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePathOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eLineAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ector(ptr %v0, i64 %a0)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eBodyOfInstance(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceName(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2ePush_3ccompiler_2fexplain_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/explain:Code" %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceArgs(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnNamed(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fast_2eOwnerTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_e4b17f5ad4d0393_dacada4c9c892187 = external constant [0 x i8]
@olang_loc_31b785093080fa1c_de0f6dc4f3b337d0 = external constant [0 x i8]
declare { i64, { i64, ptr } } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eAttrsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_654ac6e7d4d962a_57fceb1b72d2ae56 = external constant [0 x i8]
@olang_loc_d0280248a738559f_8af1b7358df9134b = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_430839a36fc86f5_d60a2ea9e5c9a99 = external constant [0 x i8]
@olang_loc_8ab7a894dba5a8d7_a5979f5013b78ba3 = external constant [0 x i8]
@olang_loc_5177bd7d484351dd_5d0dbb04dc509331 = external constant [0 x i8]
@olang_loc_6448edf003c535f3_ebaded49d6e07c97 = external constant [0 x i8]
@olang_loc_979fe2e14fb6de05_5947910940c194f1 = external constant [0 x i8]
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeDecl(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_1f3e281b9e5e1c1b_28b60c21bdf8ccb7 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_56ca0331d7501bc3_73eac84a38a3448f = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTy(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_559eb4fe50ed7f04_5fd8618740f13e0 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclaredUnique(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_98928cfde749f632_385db913ea7e7976 = external constant [0 x i8]
declare { i64, ptr } @compiler_2feffects_2eDescribe(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsRaisedError(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e71eefb410212e60_d710e4409f4406c4 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorMembers(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_5296f019e964cb45_44665f46e1029c89 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorWords(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_8f9ce818ff296c0e_932c83e6c6076d82 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_1ab09a44950d5518_36fac77ffd6769bc = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_2b8cc73a4c7e88bd_6bb5eb1cd2f38021 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWeakField(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescriptor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i64 %a3, i64 %a4)
@olang_loc_b65b7d917c440185_24d12a03c9296209 = external constant [0 x i8]
@olang_loc_6896438a508f3415_b4ea8b5a918f5051 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eInfersErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eErrorsOf(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamesIdOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
@G_2ecompiler_2ftypes_2ePromiseNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare { i64, ptr } @compiler_2feffects_2eBreaks(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_a9d5b4a7460205c1_2b5a1ac3293d7e25 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePromises(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithPromises(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eRelationWords(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2)
declare { i64, ptr } @compiler_2fneeds_2eLines(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_fc7f64fd7b454af3_cf2a3e2278d9fc1f = external constant [0 x i8]
@olang_loc_499d9639469ba124_2d1e6838c6dcdf80 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
@olang_loc_fb9ea6e5b3ca71a7_d8a084b91cdc3d23 = external constant [0 x i8]
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eIsGenerator(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_4b0ecce8a943eeca_78f5e61d37c8c546 = external constant [0 x i8]
@olang_loc_904aca603cad2e45_e62ac09e4cb76009 = external constant [0 x i8]
@olang_loc_e59c902bb0ddc268_5b11d99e1c27629c = external constant [0 x i8]
@olang_loc_f3704e37964cb683_929f8ce39c458747 = external constant [0 x i8]
@olang_loc_87334f8237d1e26_d87acd2b8515436a = external constant [0 x i8]
@olang_loc_96b8876366bd9a81_fe1335b03e31611d = external constant [0 x i8]
@olang_loc_6dce684f2a2d9d14_6d1dd538a51f95c0 = external constant [0 x i8]
@olang_loc_83191eb44b7384_f52b74cb91a30b30 = external constant [0 x i8]
@olang_loc_b6495ab5ccd815f1_8b49adc496fcf80d = external constant [0 x i8]
@olang_loc_f77a02592a0a9372_4ac4ccf0828b43ae = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
@olang_loc_85b05f6e7a1e78ef_648f77bc98c82cab = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_H243102d099229a8f815a09f79cb8b122(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eGlobalType(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRenderBody(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i32, { i64, ptr } } @compiler_2finterp_2ecompiler_2finterp_3aExec_2eText(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eTextType(ptr %v0, ptr %a0)
@olang_loc_8383a0ec0de75e1f_623ffa8ab7fe468b = external constant [0 x i8]
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
@olang_loc_24a71f1628ab63b4_59f385be22d57b28 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParamNames(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eWithNames(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_2cc943ac2dc78fd5_5274b69301a971f1 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_99dba9233bab2306_11c4778e1aad7562 = external constant [0 x i8]
@olang_loc_94ac06f7d37b19a6_b348a4f44ea9b892 = external constant [0 x i8]
@olang_loc_267284e461664677_b2c2386ba62ab5d3 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_66f7703ccaf4f658_ca46a1b97aa24804 = external constant [0 x i8]
@olang_loc_f786d30f5b15881b_2a3d6cb8e4e51887 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_94da3303afd0f88a_3eb33841be304afe = external constant [0 x i8]
declare { i64, ptr } @compiler_2fast_2eRequirements(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
declare { i64, ptr } @compiler_2fast_2eReqText(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
@olang_loc_9c4fb7eb44276a12_39e0991f75dfa016 = external constant [0 x i8]
@olang_loc_f947637db6a06e39_bd7e608c8f724ffd = external constant [0 x i8]
@olang_loc_945369bc48fd3cab_701e553ecbda785f = external constant [0 x i8]
@olang_loc_6416ccbc4bdd9b53_41c21134d0645047 = external constant [0 x i8]
@olang_loc_4bcdc081c3d6706_49dcf1c0d0dc9572 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_183ac6c93ee000c_8e8c5563c1dc1de8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H1e7e683fc0332c06b6c705cd46691777(ptr %v0, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eDeclOwner(i32 %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSatisfies(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2eJoin(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinCount(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinBody(ptr %v0, ptr %a0, i64 %a1)
declare { %"compiler/source:Span", i64 } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinAt(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinWords(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eColumnAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrSetItems(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCaseNames(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_85d3fea1d96f25de_7b2f6a0f1962587a = external constant [0 x i8]
@olang_loc_24a17849deeaf8b3_b2bce68c41c61f8f = external constant [0 x i8]
@olang_loc_a185ff5f85e75430_c999a61f9f0eedcc = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3b65fc1599fe4b35_e6657610cbc0cf91 = external constant [0 x i8]
@olang_loc_9e7f77c067ece8f1_2a0afb54e00d35 = external constant [0 x i8]
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eTypeEntry(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBoundTraits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ff0e4b22591d4baf_6e63db52d9d49f33 = external constant [0 x i8]
@olang_loc_9a288766c4af6878_87d82d450b86e5bc = external constant [0 x i8]
@olang_loc_dff7162f9e8224a5_8282e6f3b3a12619 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_a8ae3786bbd05e76_8adb6c8ffb4c6a8a = external constant [0 x i8]
@olang_loc_5d08aa5c1c4e2139_c45b4cae2d84e405 = external constant [0 x i8]
@olang_loc_6ea1601f041f7d0c_6257690dec820828 = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePayloadOf(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fast_2eRecvTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)

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
