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
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/check:Checker" = type { ptr, ptr, i1, i1, i1, i1, i64, i64, i1, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, i64, i32, i1, { i64, [3 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i32, i64, %"compiler/source:Span", i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/check:knownRange", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i32, i1, i1, %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i32, i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/check:knownRange" = type { i64, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/check:roFn" = type { i64, i64, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/check:b5aWalk" = type { i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/check:frame" = type { i64, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/generic:Context", i32, i32, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i32, i64, i64, i64, i1, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i64, i64, i64, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", i64, i1 }
%"compiler/generic:Context" = type { i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" = type { i32, i32 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/check:errNarrow" = type { { i64, ptr }, i32, i64, i64, i1, i64 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/check:opShape" = type { { i64, ptr }, i64, i1, i1 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/generic:varRow" = type { i64, i32, i32, i32 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/check:laneNode" = type { i64, i32, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i64, ptr, i32, i64, i32 }
%"compiler/check:reflList" = type { i1, i32, i64, i64 }
%"compiler/generic:Desc" = type { i64, i32, i64, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"compiler/check:rawTable" = type { i32, i1, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Compr" = type { ptr, ptr, i32, i32, ptr, ptr, i1, i64 }
%"compiler/check:reflVal" = type { i1, i64, i64, { i64, ptr }, i32 }
%"compiler/check:seqOf" = type { i32, i64, i64, i64 }
%"compiler/check:Ask" = type { i64, i64, i32, ptr, i64, { i64, ptr } }
%"compiler/check:AssertAsk" = type { i64, i64, %"compiler/source:Span", %"compiler/source:Span", i64, i64, i1, { i64, ptr }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr }, { i64, [3 x i64] }, { i64, ptr } }
%"compiler/check:litv" = type { i1, i1, i1, i64, double, i1, i1, i1, i128 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/generic:AnyTable" = type { i32, i32, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" = type { { ptr, ptr } }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
define dso_local i1 @compiler_2fcheck_2eclausesAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/ast:Catch", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t37 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %t33, { i64, ptr } %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb10:
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/ast:Catch", ptr %t39, i32 0, i32 3
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t46 = call i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %t42, { i64, ptr } %t43)
  store i1 %t46, ptr %l28
  br label %bb11
bb11:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t48 = load i1, ptr %l24, !tbaa !21
  br i1 %t48, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb4
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eViewsOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l9 = alloca i1
  %l11 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l24 = alloca i64
  %l27 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i32
  %l37 = alloca i64
  %l41 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  store i64 %t9, ptr %l11, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 18
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l14
  br label %bb3
bb3:
  %t15 = load i64, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l14, !tbaa !24
  %t17 = icmp sge i64 %t15, %t16
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 18
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l21
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l21, !tbaa !29
  store ptr %t30, ptr %l2, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t35 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v0, ptr %t31, ptr %t32)
  store i64 %t35, ptr %l24
  br label %bb9
bb9:
  %t36 = load i64, ptr %l24, !tbaa !24
  store i64 %t36, ptr %l3, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp sge i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/load:Loader", ptr %t47, i32 0, i32 7
  %t50 = load i64, ptr %l3, !tbaa !24
  %t53 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t49, i64 %t50)
  %t54 = extractvalue { i32, i64 } %t53, 1
  %t55 = extractvalue { i32, i64 } %t53, 0
  store i32 %t55, ptr %l34
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb13, label %ok.57, !prof !99
ok.57:
  store i64 %t54, ptr %l33
  br label %bb12
bb11:
  br label %bb16
bb12:
  %t58 = load i64, ptr %l33, !tbaa !24
  store i64 %t58, ptr %l27, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb15
bb15:
  %t59 = load i64, ptr %l27, !tbaa !24
  store i64 %t59, ptr %rv
  br label %ret
bb16:
  %t60 = load ptr, ptr %l2, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l4
  %t65 = load { i64, [2 x i64] }, ptr %l4
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 0
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t71 = getelementptr { i64 }, ptr %t70, i32 0, i32 0
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l5, !tbaa !24
  br label %bb19
bb18:
  br label %bb24
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/load:Loader", ptr %t80, i32 0, i32 6
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t82, i64 %t83)
  %t87 = extractvalue { i32, i64 } %t86, 1
  %t88 = extractvalue { i32, i64 } %t86, 0
  store i32 %t88, ptr %l48
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb21, label %ok.90, !prof !99
ok.90:
  store i64 %t87, ptr %l47
  br label %bb20
bb20:
  %t91 = load i64, ptr %l47, !tbaa !24
  store i64 %t91, ptr %l41, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb23
bb23:
  %t92 = load i64, ptr %l41, !tbaa !24
  store i64 %t92, ptr %l37, !tbaa !24
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_f6ac6f37bd028998_7777cf96519f6a94)
  unreachable
bb29:
  %t93 = load i64, ptr %l37, !tbaa !24
  store i64 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eadapter(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i32
  %l37 = alloca i32
  %l38 = alloca i64
  %l42 = alloca ptr
  %l43 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i64
  %l52 = alloca i1
  %l54 = alloca ptr
  %l56 = alloca i64
  %l57 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca i64
  %l62 = alloca i32
  %l63 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca i1
  %l73 = alloca i32
  %l77 = alloca i64
  %l81 = alloca i32
  %l84 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca { i64, ptr }
  %l112 = alloca i64
  %l115 = alloca i64
  %l135 = alloca ptr
  %l137 = alloca { i64, ptr }
  %l141 = alloca i32
  %l143 = alloca { i64, ptr }
  %l146 = alloca i32
  %l147 = alloca i1
  %l151 = alloca { i64, ptr }
  %l155 = alloca i1
  %l156 = alloca i1
  %l158 = alloca { i64, ptr }
  %l161 = alloca i1
  %l162 = alloca i1
  %l164 = alloca { i64, ptr }
  %l167 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca i32
  %l182 = alloca ptr
  %l187 = alloca i32
  %l188 = alloca i32
  %l189 = alloca i1
  %l194 = alloca i64
  %l197 = alloca i1
  %l198 = alloca i32
  %l201 = alloca i32
  %l206 = alloca i32
  %l207 = alloca i32
  %l212 = alloca i32
  %l214 = alloca i1
  %l219 = alloca { i64, ptr }
  %l220 = alloca ptr
  %l223 = alloca ptr
  %l228 = alloca i32
  %l229 = alloca { i64, ptr }
  %l231 = alloca i1
  %l237 = alloca { i64, ptr }
  %l240 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l244 = alloca ptr
  %l249 = alloca i32
  %l254 = alloca i32
  %l255 = alloca i32
  %l260 = alloca i32
  %l261 = alloca i32
  %l262 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l269 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l274 = alloca { i64, ptr }
  %l275 = alloca ptr
  %l280 = alloca i32
  %l281 = alloca { i64, ptr }
  %l284 = alloca %"compiler/diagmsg:Msg"
  %l285 = alloca i64
  %l287 = alloca ptr
  %l288 = alloca i64
  %l291 = alloca { i64, [3 x i64] }
  %l292 = alloca i64
  %l294 = alloca ptr
  %l298 = alloca ptr
  %l301 = alloca { i64, ptr }
  %l304 = alloca %"compiler/check:roFn"
  %l307 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca %"compiler/source:Span"
  %l312 = alloca i32
  %l315 = alloca i32
  %l316 = alloca ptr
  %l320 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca ptr
  %t677 = alloca { i64, [4 x i64] }, align 8
  %t689 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l20, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t2)
  store i32 %t5, ptr %l23
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l20, !tbaa !29
  %t7 = load i32, ptr %l23, !tbaa !23
  %t8 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t8, ptr %l24
  br label %bb2
bb2:
  %t9 = load i32, ptr %l24, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l4, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l27
  br label %bb3
bb3:
  %t15 = load i1, ptr %l27, !tbaa !21
  %t16 = xor i1 %t15, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l31, !tbaa !29
  %t23 = load i32, ptr %l4, !tbaa !23
  store i32 %t23, ptr %l32, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/check:Checker", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/load:Loader", ptr %t30, i32 0, i32 3
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t33, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t35, ptr %l37
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l31, !tbaa !29
  %t37 = load i32, ptr %l32, !tbaa !23
  %t38 = load i32, ptr %l37, !tbaa !23
  %t39 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t36, i32 %t37, i32 %t38)
  store i64 %t39, ptr %l38
  br label %bb8
bb8:
  %t40 = load i64, ptr %l38, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/check:Checker", ptr %t45, i32 0, i32 1
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l42, !tbaa !29
  %t49 = load i32, ptr %l4, !tbaa !23
  store i32 %t49, ptr %l43, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/check:Checker", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/load:Loader", ptr %t56, i32 0, i32 3
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s2, ptr %t59, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t61, ptr %l48
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t62 = load ptr, ptr %l42, !tbaa !29
  %t63 = load i32, ptr %l43, !tbaa !23
  %t64 = load i32, ptr %l48, !tbaa !23
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %t62, i32 %t63, i32 %t64)
  store i64 %t65, ptr %l49
  br label %bb12
bb12:
  %t66 = load i64, ptr %l49, !tbaa !24
  store i64 %t66, ptr %l5, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  %t67 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp slt i64 %t67, 0
  br i1 %t69, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb18
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  store ptr %t74, ptr %l54, !tbaa !29
  %t75 = load i64, ptr %l5, !tbaa !24
  %t77 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t75)
  store i64 %t77, ptr %l56
  br label %bb16
bb16:
  %t78 = load ptr, ptr %l54, !tbaa !29
  %t79 = load i64, ptr %l56, !tbaa !24
  %t80 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t80, ptr %l57
  br label %bb17
bb17:
  %t81 = load i64, ptr %l57, !tbaa !24
  %t82 = icmp sgt i64 %t81, 0
  store i1 %t82, ptr %l52, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l52, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l60, !tbaa !29
  %t87 = load i64, ptr %l5, !tbaa !24
  store i64 %t87, ptr %l61, !tbaa !24
  %t88 = load i32, ptr %l4, !tbaa !23
  store i32 %t88, ptr %l62, !tbaa !23
  %t89 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t89, ptr %l63
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load %"compiler/source:Span", ptr %l1
  %t94 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t90, %"compiler/source:Span" %t91)
  store { i64, ptr } %t94, ptr %l66
  br label %bb22
bb22:
  %t95 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t96 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s0, { i64, ptr } %t95)
  store { i64, ptr } %t96, ptr %l67
  br label %bb23
bb23:
  %t97 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t97, 0
  %t99 = extractvalue { i64, ptr } %t97, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = load ptr, ptr %l60, !tbaa !29
  %t105 = load i64, ptr %l61, !tbaa !24
  %t106 = load i32, ptr %l62, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr %l63
  %t109 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s0, ptr %s0, ptr %t104, i64 %t105, i32 %t106, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, %"compiler/source:Span" %t107, { i64, ptr } %t103)
  store i1 %t109, ptr %l69
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/check:Checker", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t114 = load i64, ptr %l5, !tbaa !24
  %t117 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t113, i64 %t114)
  store i32 %t117, ptr %l73
  br label %bb25
bb25:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t122 = load i64, ptr %l5, !tbaa !24
  %t125 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %t121, i64 %t122, i32 0)
  store i64 %t125, ptr %l77
  br label %bb26
bb26:
  %t126 = load i64, ptr %l77, !tbaa !24
  store i64 %t126, ptr %l6, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t131 = load i64, ptr %l6, !tbaa !24
  %t134 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %t130, i64 %t131)
  store i32 %t134, ptr %l81
  br label %bb27
bb27:
  %t135 = load i32, ptr %l81, !tbaa !23
  store i32 %t135, ptr %l7, !tbaa !23
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/check:Checker", ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/generic:Program", ptr %t139, i32 0, i32 2
  store ptr %t141, ptr %l84, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/check:Checker", ptr %t142, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t147 = getelementptr %"compiler/generic:Program", ptr %t145, i32 0, i32 2
  %t148 = load i32, ptr %l7, !tbaa !23
  %t151 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t147, i32 %t148)
  store i32 %t151, ptr %l89
  br label %bb28
bb28:
  %t152 = load ptr, ptr %l84, !tbaa !29
  %t153 = load i32, ptr %l89, !tbaa !23
  %t154 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t152, i32 %t153)
  store { i64, ptr } %t154, ptr %l90
  br label %bb29
bb29:
  %t155 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t155, ptr %l8, !tbaa !27
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:Checker", ptr %t156, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 2
  store ptr %t161, ptr %l93, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/check:Checker", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = getelementptr %"compiler/generic:Program", ptr %t165, i32 0, i32 2
  %t168 = load i32, ptr %l3, !tbaa !23
  %t171 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t167, i32 %t168)
  store i32 %t171, ptr %l98
  br label %bb30
bb30:
  %t172 = load ptr, ptr %l93, !tbaa !29
  %t173 = load i32, ptr %l98, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t172, i32 %t173)
  store { i64, ptr } %t174, ptr %l99
  br label %bb31
bb31:
  %t175 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t175, ptr %l9, !tbaa !27
  %t176 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t183 = add i64 %t181, 1
  %t186 = icmp ne i64 %t178, %t183
  br i1 %t186, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  store i64 0, ptr %l10, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t193 = load i64, ptr %l11, !tbaa !24
  %t194 = load i64, ptr %l10, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb35, label %bb36
bb35:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb40
bb37:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t204 = load i64, ptr %l10, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l12, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l12, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l115, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb39
bb39:
  %t219 = load i64, ptr %l115, !tbaa !24
  store i64 %t219, ptr %l112, !tbaa !24
  br label %bb40
bb40:
  %t220 = load i64, ptr %l112, !tbaa !24
  store i64 %t220, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb41
bb41:
  %t221 = load i64, ptr %l14, !tbaa !24
  %t222 = load i64, ptr %l13, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb42, label %bb43
bb42:
  br label %bb64
bb43:
  br label %bb44
bb44:
  %t229 = load i64, ptr %l10, !tbaa !24
  %t230 = load i64, ptr %l14, !tbaa !24
  %t231 = load i64, ptr %l12, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l15, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/check:Checker", ptr %t239, i32 0, i32 1
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  store ptr %t244, ptr %l135, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t246 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t246, ptr %l137, !tbaa !27
  %t247 = load i64, ptr %l15, !tbaa !24
  %t249 = add i64 %t247, 1
  %t251 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = getelementptr i32, ptr %t252, i64 %t249
  %t254 = load i32, ptr %t253, !tbaa !33
  %t257 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t245, i32 %t254)
  store i32 %t257, ptr %l141
  br label %bb45
bb45:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t259, ptr %l143, !tbaa !27
  %t260 = load i64, ptr %l15, !tbaa !24
  %t262 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr i32, ptr %t263, i64 %t260
  %t265 = load i32, ptr %t264, !tbaa !33
  %t268 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t258, i32 %t265)
  store i32 %t268, ptr %l146
  br label %bb46
bb46:
  %t269 = load ptr, ptr %l135, !tbaa !29
  %t270 = load i32, ptr %l141, !tbaa !23
  %t271 = load i32, ptr %l146, !tbaa !23
  %t272 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t269, i32 %t270, i32 %t271)
  store i1 %t272, ptr %l147
  br label %bb47
bb47:
  %t273 = load i1, ptr %l147, !tbaa !21
  %t274 = xor i1 %t273, true
  br i1 %t274, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t278, ptr %l151, !tbaa !27
  %t279 = load i64, ptr %l15, !tbaa !24
  %t281 = add i64 %t279, 1
  %t283 = getelementptr { i64, ptr }, ptr %l151, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr i32, ptr %t284, i64 %t281
  %t286 = load i32, ptr %t285, !tbaa !33
  %t289 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t277, i32 %t286)
  store i1 %t289, ptr %l155
  br label %bb51
bb51:
  %t290 = load i1, ptr %l155, !tbaa !21
  br i1 %t290, label %bb52, label %bb53
bb52:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t292, ptr %l158, !tbaa !27
  %t293 = load i64, ptr %l15, !tbaa !24
  %t295 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t296 = load ptr, ptr %t295, !tbaa !27
  %t297 = getelementptr i32, ptr %t296, i64 %t293
  %t298 = load i32, ptr %t297, !tbaa !33
  %t301 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t291, i32 %t298)
  store i1 %t301, ptr %l161
  br label %bb54
bb53:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb55
bb54:
  %t302 = load i1, ptr %l161, !tbaa !21
  store i1 %t302, ptr %l156, !tbaa !21
  br label %bb55
bb55:
  %t303 = load i1, ptr %l156, !tbaa !21
  br i1 %t303, label %bb56, label %bb57
bb56:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t305, ptr %l164, !tbaa !27
  %t306 = load i64, ptr %l15, !tbaa !24
  %t308 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr i32, ptr %t309, i64 %t306
  %t311 = load i32, ptr %t310, !tbaa !33
  %t314 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t304, i32 %t311)
  store i1 %t314, ptr %l167
  br label %bb58
bb57:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb59
bb58:
  %t315 = load i1, ptr %l167, !tbaa !21
  %t316 = xor i1 %t315, true
  store i1 %t316, ptr %l162, !tbaa !21
  br label %bb59
bb59:
  %t318 = load i1, ptr %l162, !tbaa !21
  br i1 %t318, label %bb60, label %bb61
bb60:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  %t320 = load i64, ptr %l14, !tbaa !24
  %t322 = add i64 %t320, 1
  store i64 %t322, ptr %l14, !tbaa !24
  br label %bb41
bb64:
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/check:Checker", ptr %t324, i32 0, i32 1
  %t327 = load ptr, ptr %t326, !tbaa !29
  %t329 = getelementptr %"compiler/generic:Program", ptr %t327, i32 0, i32 2
  store ptr %t329, ptr %l174, !tbaa !29
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l175, !tbaa !29
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/check:Checker", ptr %t331, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Program", ptr %t334, i32 0, i32 2
  %t337 = load i32, ptr %l7, !tbaa !23
  %t340 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t336, i32 %t337)
  store i32 %t340, ptr %l180
  br label %bb65
bb65:
  %t341 = load ptr, ptr %l175, !tbaa !29
  %t342 = load i32, ptr %l180, !tbaa !23
  %t343 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t341, i32 %t342)
  store i32 %t343, ptr %l181
  br label %bb66
bb66:
  %t344 = load ptr, ptr %l0, !tbaa !29
  store ptr %t344, ptr %l182, !tbaa !29
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t347 = getelementptr %"compiler/check:Checker", ptr %t345, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !29
  %t350 = getelementptr %"compiler/generic:Program", ptr %t348, i32 0, i32 2
  %t351 = load i32, ptr %l3, !tbaa !23
  %t354 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t350, i32 %t351)
  store i32 %t354, ptr %l187
  br label %bb67
bb67:
  %t355 = load ptr, ptr %l182, !tbaa !29
  %t356 = load i32, ptr %l187, !tbaa !23
  %t357 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t355, i32 %t356)
  store i32 %t357, ptr %l188
  br label %bb68
bb68:
  %t358 = load ptr, ptr %l174, !tbaa !29
  %t359 = load i32, ptr %l181, !tbaa !23
  %t360 = load i32, ptr %l188, !tbaa !23
  %t361 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t358, i32 %t359, i32 %t360)
  store i1 %t361, ptr %l189
  br label %bb69
bb69:
  %t362 = load i1, ptr %l189, !tbaa !21
  %t363 = xor i1 %t362, true
  br i1 %t363, label %bb70, label %bb71
bb70:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load i64, ptr %l6, !tbaa !24
  %t370 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %t366, i64 %t367)
  store i64 %t370, ptr %l194
  br label %bb73
bb73:
  %t371 = load i64, ptr %l194, !tbaa !24
  store i64 %t371, ptr %l16, !tbaa !24
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i32, ptr %l7, !tbaa !23
  %t376 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t372, i32 %t373)
  store i1 %t376, ptr %l197
  br label %bb74
bb74:
  %t377 = load i1, ptr %l197, !tbaa !21
  br i1 %t377, label %bb75, label %bb76
bb75:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i64, ptr %l16, !tbaa !24
  %t382 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %t378, i64 %t379)
  store i32 %t382, ptr %l201
  br label %bb77
bb76:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = getelementptr %"compiler/check:Checker", ptr %t383, i32 0, i32 1
  %t386 = load ptr, ptr %t385, !tbaa !29
  %t388 = getelementptr %"compiler/generic:Program", ptr %t386, i32 0, i32 2
  %t389 = load i32, ptr %l7, !tbaa !23
  %t392 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t388, i32 %t389)
  store i32 %t392, ptr %l206
  br label %bb78
bb77:
  %t393 = load i32, ptr %l201, !tbaa !23
  store i32 %t393, ptr %l198, !tbaa !23
  br label %bb79
bb78:
  %t394 = load i32, ptr %l206, !tbaa !23
  store i32 %t394, ptr %l198, !tbaa !23
  br label %bb79
bb79:
  %t395 = load i32, ptr %l198, !tbaa !23
  store i32 %t395, ptr %l17, !tbaa !23
  %t396 = load i32, ptr %l17, !tbaa !23
  store i32 %t396, ptr %l207, !tbaa !23
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/check:Checker", ptr %t397, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !29
  %t402 = getelementptr %"compiler/generic:Program", ptr %t400, i32 0, i32 2
  %t403 = load i32, ptr %l3, !tbaa !23
  %t406 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t402, i32 %t403)
  store i32 %t406, ptr %l212
  br label %bb80
bb80:
  %t407 = load i32, ptr %l207, !tbaa !23
  %t408 = load i32, ptr %l212, !tbaa !23
  %t409 = icmp ne i32 %t407, %t408
  br i1 %t409, label %bb81, label %bb82
bb81:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t413 = getelementptr %"compiler/check:Checker", ptr %t411, i32 0, i32 1
  %t414 = load ptr, ptr %t413, !tbaa !29
  %t416 = getelementptr %"compiler/generic:Program", ptr %t414, i32 0, i32 2
  %t417 = load i32, ptr %l17, !tbaa !23
  %t420 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t416, i32 %t417)
  store { i64, ptr } %t420, ptr %l219
  br label %bb83
bb82:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb87
bb83:
  store ptr %l219, ptr %l220
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/check:Checker", ptr %t421, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !29
  %t426 = getelementptr %"compiler/generic:Program", ptr %t424, i32 0, i32 2
  store ptr %t426, ptr %l223, !tbaa !29
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"compiler/check:Checker", ptr %t427, i32 0, i32 1
  %t430 = load ptr, ptr %t429, !tbaa !29
  %t432 = getelementptr %"compiler/generic:Program", ptr %t430, i32 0, i32 2
  %t433 = load i32, ptr %l3, !tbaa !23
  %t436 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t432, i32 %t433)
  store i32 %t436, ptr %l228
  br label %bb84
bb84:
  %t437 = load ptr, ptr %l223, !tbaa !29
  %t438 = load i32, ptr %l228, !tbaa !23
  %t439 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t437, i32 %t438)
  store { i64, ptr } %t439, ptr %l229
  br label %bb85
bb85:
  %t440 = load ptr, ptr %l220
  %t442 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e_26(ptr %t440, ptr %l229)
  store i1 %t442, ptr %l231
  br label %bb86
bb86:
  %t443 = load i1, ptr %l231, !tbaa !21
  %t444 = xor i1 %t443, true
  store i1 %t444, ptr %l214, !tbaa !21
  br label %bb87
bb87:
  %t446 = load i1, ptr %l214, !tbaa !21
  br i1 %t446, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s11
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/check:Checker", ptr %t447, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !29
  %t452 = getelementptr %"compiler/generic:Program", ptr %t450, i32 0, i32 2
  %t453 = load i32, ptr %l17, !tbaa !23
  %t456 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s11, ptr %t452, i32 %t453)
  store { i64, ptr } %t456, ptr %l237
  br label %bb90
bb89:
  br label %bb105
bb90:
  %t457 = load { i64, ptr }, ptr %l237, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t457, 0
  %t460 = icmp sgt i64 %t458, 0
  br i1 %t460, label %bb91, label %bb92
bb91:
  %t462 = load ptr, ptr %l0, !tbaa !29
  store ptr %t462, ptr %l241, !tbaa !29
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !29
  %t468 = getelementptr %"compiler/generic:Program", ptr %t466, i32 0, i32 2
  store ptr %t468, ptr %l244, !tbaa !29
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t471 = getelementptr %"compiler/check:Checker", ptr %t469, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !29
  %t474 = getelementptr %"compiler/generic:Program", ptr %t472, i32 0, i32 2
  %t475 = load i32, ptr %l3, !tbaa !23
  %t478 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t474, i32 %t475)
  store i32 %t478, ptr %l249
  br label %bb93
bb92:
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l240, !tbaa !27
  br label %bb98
bb93:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = getelementptr %"compiler/check:Checker", ptr %t479, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !29
  %t484 = getelementptr %"compiler/generic:Program", ptr %t482, i32 0, i32 2
  %t485 = load i32, ptr %l3, !tbaa !23
  %t488 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t484, i32 %t485)
  store i32 %t488, ptr %l254
  br label %bb94
bb94:
  %t489 = load i32, ptr %l17, !tbaa !23
  store i32 %t489, ptr %l255, !tbaa !23
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/check:Checker", ptr %t490, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t495 = getelementptr %"compiler/generic:Program", ptr %t493, i32 0, i32 2
  %t496 = load i32, ptr %l3, !tbaa !23
  %t499 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %t495, i32 %t496)
  store i32 %t499, ptr %l260
  br label %bb95
bb95:
  %t500 = load ptr, ptr %l244, !tbaa !29
  %t501 = load i32, ptr %l249, !tbaa !23
  %t502 = load i32, ptr %l254, !tbaa !23
  %t503 = load i32, ptr %l255, !tbaa !23
  %t504 = load i32, ptr %l260, !tbaa !23
  %t505 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t500, i32 %t501, i32 %t502, i32 %t503, i32 %t504, i64 0, i1 false, i32 0, i64 0)
  store i32 %t505, ptr %l261
  br label %bb96
bb96:
  %t506 = load ptr, ptr %l241, !tbaa !29
  %t507 = load i32, ptr %l261, !tbaa !23
  %t508 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t506, i32 %t507)
  store { i64, ptr } %t508, ptr %l262
  br label %bb97
bb97:
  %t509 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t510 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t511 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t512 = extractvalue { i64, ptr } %t511, 1
  %t513 = extractvalue { i64, ptr } %t511, 0
  %t514 = add i64 %t510, %t513
  %t515 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t516 = extractvalue { i64, ptr } { i64 33, ptr getelementptr inbounds (<{ i64, [33 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t517 = add i64 %t514, %t516
  %t518 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t517)
  call void @olang_textcopy(ptr %t518, ptr %t509, i64 %t510)
  %t519 = getelementptr i8, ptr %t518, i64 %t510
  call void @olang_textcopy(ptr %t519, ptr %t512, i64 %t513)
  %t520 = getelementptr i8, ptr %t519, i64 %t513
  call void @olang_textcopy(ptr %t520, ptr %t515, i64 %t516)
  %t521 = insertvalue { i64, ptr } undef, i64 %t517, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t518, 1
  %t524 = extractvalue { i64, ptr } %t522, 0
  %t525 = extractvalue { i64, ptr } %t522, 1
  %t526 = mul i64 %t524, 1
  %t527 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t526)
  call void @llvm.memcpy.p0.p0.i64(ptr %t527, ptr %t525, i64 %t526, i1 false)
  %t528 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t529 = insertvalue { i64, ptr } %t528, ptr %t527, 1
  store { i64, ptr } %t529, ptr %l240, !tbaa !27
  br label %bb98
bb98:
  %t531 = load { i64, ptr }, ptr %l240, !tbaa !27
  store { i64, ptr } %t531, ptr %l18, !tbaa !27
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l265, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t533, ptr %l266
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t535 = load i32, ptr %l4, !tbaa !23
  %t538 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t534, i32 %t535)
  store { i64, ptr } %t538, ptr %l269
  br label %bb99
bb99:
  %t539 = load { i64, ptr }, ptr %l269, !tbaa !27
  %t540 = extractvalue { i64, ptr } %t539, 0
  %t541 = extractvalue { i64, ptr } %t539, 1
  %t542 = mul i64 %t540, 1
  %t543 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t542)
  call void @llvm.memcpy.p0.p0.i64(ptr %t543, ptr %t541, i64 %t542, i1 false)
  %t544 = insertvalue { i64, ptr } undef, i64 %t540, 0
  %t545 = insertvalue { i64, ptr } %t544, ptr %t543, 1
  store { i64, ptr } %t545, ptr %l270, !tbaa !27
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load i32, ptr %l17, !tbaa !23
  %t550 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s11, ptr %t546, i32 %t547)
  store { i64, ptr } %t550, ptr %l273
  br label %bb100
bb100:
  %t551 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t552 = extractvalue { i64, ptr } %t551, 0
  %t553 = extractvalue { i64, ptr } %t551, 1
  %t554 = mul i64 %t552, 1
  %t555 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t554)
  call void @llvm.memcpy.p0.p0.i64(ptr %t555, ptr %t553, i64 %t554, i1 false)
  %t556 = insertvalue { i64, ptr } undef, i64 %t552, 0
  %t557 = insertvalue { i64, ptr } %t556, ptr %t555, 1
  store { i64, ptr } %t557, ptr %l274, !tbaa !27
  %t558 = load ptr, ptr %l0, !tbaa !29
  store ptr %t558, ptr %l275, !tbaa !29
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/generic:Program", ptr %t562, i32 0, i32 2
  %t565 = load i32, ptr %l3, !tbaa !23
  %t568 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t564, i32 %t565)
  store i32 %t568, ptr %l280
  br label %bb101
bb101:
  %t569 = load ptr, ptr %l275, !tbaa !29
  %t570 = load i32, ptr %l280, !tbaa !23
  %t571 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %s11, ptr %t569, i32 %t570)
  store { i64, ptr } %t571, ptr %l281
  br label %bb102
bb102:
  %t572 = load { i64, ptr }, ptr %l281, !tbaa !27
  %t573 = extractvalue { i64, ptr } %t572, 0
  %t574 = extractvalue { i64, ptr } %t572, 1
  %t575 = mul i64 %t573, 1
  %t576 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t575)
  call void @llvm.memcpy.p0.p0.i64(ptr %t576, ptr %t574, i64 %t575, i1 false)
  %t577 = insertvalue { i64, ptr } undef, i64 %t573, 0
  %t578 = insertvalue { i64, ptr } %t577, ptr %t576, 1
  %t579 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t580 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t581 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t584 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueErrors(ptr %s11, ptr %s11, ptr %s11, ptr %s11, ptr %v0, { i64, ptr } %t580, { i64, ptr } %t581, { i64, ptr } %t578, { i64, ptr } %t579)
  store %"compiler/diagmsg:Msg" %t584, ptr %l284
  br label %bb103
bb103:
  %t585 = load ptr, ptr %l265, !tbaa !29
  %t586 = load %"compiler/source:Span", ptr %l266
  %t587 = load %"compiler/diagmsg:Msg", ptr %l284
  %t588 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t585, %"compiler/source:Span" %t586, %"compiler/diagmsg:Msg" %t587)
  store i64 %t588, ptr %l285
  br label %bb104
bb104:
  call void @__olang_scope_close(ptr %s11)
  br label %bb105
bb105:
  %t589 = load ptr, ptr %l0, !tbaa !29
  %t591 = getelementptr %"compiler/check:Checker", ptr %t589, i32 0, i32 93
  store ptr %t591, ptr %l287, !tbaa !29
  %t592 = load i64, ptr %l16, !tbaa !24
  store i64 %t592, ptr %l288, !tbaa !24
  %t593 = load ptr, ptr %l0, !tbaa !29
  %t594 = load %"compiler/source:Span", ptr %l1
  %t597 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t593, %"compiler/source:Span" %t594)
  store { i64, [3 x i64] } %t597, ptr %l291
  br label %bb106
bb106:
  %t598 = ptrtoint ptr %v0 to i64
  store i64 %t598, ptr %l292, !tbaa !24
  %t599 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aroFn_2e3
  br i1 %t599, label %bb107, label %bb108
bb107:
  %t601 = call ptr @__olang_region_make(ptr %v0)
  %t602 = ptrtoint ptr %t601 to i64
  store i64 %t602, ptr %l292, !tbaa !24
  br label %bb108
bb108:
  %t603 = load ptr, ptr %l0, !tbaa !29
  store ptr %t603, ptr %l294, !tbaa !29
  %t604 = load ptr, ptr %l0, !tbaa !29
  %t606 = getelementptr %"compiler/check:Checker", ptr %t604, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !29
  %t608 = load i64, ptr %l5, !tbaa !24
  %t611 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t607, i64 %t608)
  store ptr %t611, ptr %l298
  br label %bb109
bb109:
  %t612 = load ptr, ptr %l298, !tbaa !29
  %t614 = getelementptr %"compiler/ast:Func", ptr %t612, i32 0, i32 2
  %t615 = load i32, ptr %t614, !tbaa !23
  %t616 = load ptr, ptr %l294, !tbaa !29
  %t618 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s0, ptr %t616, i32 %t615)
  store { i64, ptr } %t618, ptr %l301
  br label %bb110
bb110:
  %t619 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t620 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t621 = load { i64, ptr }, ptr %l301, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t621, 1
  %t623 = extractvalue { i64, ptr } %t621, 0
  %t624 = add i64 %t620, %t623
  %t625 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t626 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t627 = add i64 %t624, %t626
  %t628 = load i64, ptr %l292
  %t629 = inttoptr i64 %t628 to ptr
  %t630 = call ptr @__olang_scope_alloc(ptr %t629, i64 %t627)
  call void @olang_textcopy(ptr %t630, ptr %t619, i64 %t620)
  %t631 = getelementptr i8, ptr %t630, i64 %t620
  call void @olang_textcopy(ptr %t631, ptr %t622, i64 %t623)
  %t632 = getelementptr i8, ptr %t631, i64 %t623
  call void @olang_textcopy(ptr %t632, ptr %t625, i64 %t626)
  %t633 = insertvalue { i64, ptr } undef, i64 %t627, 0
  %t634 = insertvalue { i64, ptr } %t633, ptr %t630, 1
  %t636 = load i64, ptr %l292
  %t637 = inttoptr i64 %t636 to ptr
  %t638 = extractvalue { i64, ptr } %t634, 0
  %t639 = extractvalue { i64, ptr } %t634, 1
  %t640 = mul i64 %t638, 1
  %t641 = call ptr @__olang_scope_alloc(ptr %t637, i64 %t640)
  call void @llvm.memcpy.p0.p0.i64(ptr %t641, ptr %t639, i64 %t640, i1 false)
  %t642 = insertvalue { i64, ptr } undef, i64 %t638, 0
  %t643 = insertvalue { i64, ptr } %t642, ptr %t641, 1
  %t644 = load i64, ptr %l288, !tbaa !24
  %t645 = load { i64, [3 x i64] }, ptr %l291
  %t647 = call %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v0, i64 %t644, i64 1, { i64, [3 x i64] } %t645, { i64, ptr } %t643)
  store %"compiler/check:roFn" %t647, ptr %l304
  br label %bb111
bb111:
  %t648 = load ptr, ptr %l287, !tbaa !29
  %t649 = load %"compiler/check:roFn", ptr %l304
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v0, ptr %t648, %"compiler/check:roFn" %t649)
  br label %bb112
bb112:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load ptr, ptr %l2, !tbaa !29
  %t652 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t652, ptr %l307, !tbaa !27
  %t653 = getelementptr { i64, ptr }, ptr %l307, i32 0, i32 1
  %t654 = load ptr, ptr %t653, !tbaa !27
  %t655 = getelementptr i32, ptr %t654, i64 0
  %t656 = load i32, ptr %t655, !tbaa !33
  %t657 = load %"compiler/source:Span", ptr %l1
  %t662 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %t650, ptr %t651, i32 %t656, %"compiler/source:Span" %t657)
  store ptr %t662, ptr %l310
  br label %bb113
bb113:
  %t663 = load ptr, ptr %l310, !tbaa !29
  %t664 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t664, ptr %l311
  %t665 = load i32, ptr %l3, !tbaa !23
  store i32 %t665, ptr %l312, !tbaa !23
  %t666 = load i64, ptr %l16, !tbaa !24
  %t668 = trunc i64 %t666 to i32
  store i32 %t668, ptr %l315, !tbaa !23
  store ptr %t663, ptr %l316, !tbaa !29
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t672 = load %"compiler/source:Span", ptr %l1
  %t676 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t671, i32 5, %"compiler/source:Span" %t672)
  store i32 %t676, ptr %l320
  br label %bb114
bb114:
  store { i64, [4 x i64] } zeroinitializer, ptr %t677
  %t678 = getelementptr { i64, [4 x i64] }, ptr %t677, i32 0, i32 0
  store i64 2, ptr %t678
  %t679 = load i32, ptr %l315, !tbaa !23
  %t680 = insertvalue { i32, ptr, i32 } undef, i32 %t679, 0
  %t681 = load ptr, ptr %l316, !tbaa !29
  %t682 = insertvalue { i32, ptr, i32 } %t680, ptr %t681, 1
  %t683 = load i32, ptr %l320, !tbaa !23
  %t684 = insertvalue { i32, ptr, i32 } %t682, i32 %t683, 2
  %t685 = getelementptr { i64, [4 x i64] }, ptr %t677, i32 0, i32 1
  store { i32, ptr, i32 } %t684, ptr %t685
  %t686 = load { i64, [4 x i64] }, ptr %t677
  %t688 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t686, ptr %t688
  store { i64, [5 x i64] } zeroinitializer, ptr %t689
  %t690 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 0
  store i64 15, ptr %t690
  %t691 = load %"compiler/source:Span", ptr %l311
  %t692 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t691, 0
  %t693 = load i32, ptr %l312, !tbaa !23
  %t694 = insertvalue { %"compiler/source:Span", i32, ptr } %t692, i32 %t693, 1
  %t696 = insertvalue { %"compiler/source:Span", i32, ptr } %t694, ptr %t688, 2
  %t697 = getelementptr { i64, [5 x i64] }, ptr %t689, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t696, ptr %t697
  %t698 = load { i64, [5 x i64] }, ptr %t689
  %t700 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t698, ptr %t700
  call void @__olang_scope_close(ptr %s0)
  store ptr %t700, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { ptr, { i64, ptr }, %"compiler/source:Span" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrCallee(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l18 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l23 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca %"compiler/source:Span"
  %l48 = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca { ptr, { i64, ptr }, %"compiler/source:Span" }
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 12
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  br label %bb5
bb4:
  br label %bb16
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %t29)
  store { i64, ptr } %t32, ptr %l18
  br label %bb6
bb6:
  %t33 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t34, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t36, ptr %l20
  br label %bb7
bb7:
  %t37 = load i1, ptr %l20, !tbaa !21
  br i1 %t37, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t38, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t40, ptr %l23
  br label %bb10
bb10:
  %t41 = load i1, ptr %l23, !tbaa !21
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l21, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %l24, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t44, ptr %l26, !tbaa !27
  %t46 = load %"compiler/source:Span", ptr %l2
  %t47 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t52 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t46, i64 %t49)
  store %"compiler/source:Span" %t52, ptr %l30
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t53 = load ptr, ptr %l24, !tbaa !29
  %t54 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t53, 0
  %t55 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t56 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t54, { i64, ptr } %t55, 1
  %t57 = load %"compiler/source:Span", ptr %l30
  %t58 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t56, %"compiler/source:Span" %t57, 2
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t58, ptr %l31
  %t59 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l31, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l32, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l33, !tbaa !24
  %t63 = load i64, ptr %l33, !tbaa !24
  %t64 = mul i64 %t63, 1
  %t65 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l34, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l33, !tbaa !24
  %t73 = mul i64 %t72, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t75 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l31, i32 0, i32 1
  store { i64, ptr } %t74, ptr %t75, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t76 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l31
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t76, ptr %rv
  br label %ret
bb15:
  %t77 = load ptr, ptr %l1, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l36, !tbaa !27
  %t78 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t79 = load %"compiler/source:Span", ptr %l2
  %t81 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t77, 0
  %t83 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t81, { i64, ptr } %t78, 1
  %t85 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t83, %"compiler/source:Span" %t79, 2
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t85, ptr %l39
  %t86 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l39, i32 0, i32 1
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l40, !tbaa !27
  %t88 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 0
  store i64 %t89, ptr %l41, !tbaa !24
  %t90 = load i64, ptr %l41, !tbaa !24
  %t91 = mul i64 %t90, 1
  %t92 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t91)
  %t93 = insertvalue { i64, ptr } undef, i64 %t90, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t92, 1
  store { i64, ptr } %t94, ptr %l42, !tbaa !27
  %t95 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = load i64, ptr %l41, !tbaa !24
  %t100 = mul i64 %t99, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t96, ptr %t98, i64 %t100, i1 false)
  %t101 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t102 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l39, i32 0, i32 1
  store { i64, ptr } %t101, ptr %t102, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  %t103 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l39
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t103, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l43, !tbaa !29
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l44, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t105, ptr %l45, !tbaa !27
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t106)
  store %"compiler/source:Span" %t108, ptr %l47
  br label %bb20
bb20:
  %t109 = load ptr, ptr %l43, !tbaa !29
  %t110 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } undef, ptr %t109, 0
  %t111 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t112 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t110, { i64, ptr } %t111, 1
  %t113 = load %"compiler/source:Span", ptr %l47
  %t114 = insertvalue { ptr, { i64, ptr }, %"compiler/source:Span" } %t112, %"compiler/source:Span" %t113, 2
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t114, ptr %l48
  %t115 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l48, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l49, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l50, !tbaa !24
  %t119 = load i64, ptr %l50, !tbaa !24
  %t120 = mul i64 %t119, 1
  %t121 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t120)
  %t122 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t123 = insertvalue { i64, ptr } %t122, ptr %t121, 1
  store { i64, ptr } %t123, ptr %l51, !tbaa !27
  %t124 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = load i64, ptr %l50, !tbaa !24
  %t129 = mul i64 %t128, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t125, ptr %t127, i64 %t129, i1 false)
  %t130 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t131 = getelementptr { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l48, i32 0, i32 1
  store { i64, ptr } %t130, ptr %t131, !tbaa !27
  %t132 = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %l48
  store { ptr, { i64, ptr }, %"compiler/source:Span" } %t132, ptr %rv
  br label %ret
bb21:
  call void @__olang_check_failed(ptr @olang_loc_e8df0bdf3cd721f8_b505cb518d2727a4)
  unreachable
ret:
  %rr = load { ptr, { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { ptr, { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eattrTypeOk(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l13 = alloca i32
  %l17 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca i32
  %l35 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  %t7 = xor i1 %t6, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
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
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l13
  br label %bb5
bb5:
  %t20 = load i32, ptr %l13, !tbaa !23
  store i32 %t20, ptr %l2, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/load:Loader", ptr %t27, i32 0, i32 10
  store ptr %t29, ptr %l17, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/generic:Program", ptr %t33, i32 0, i32 2
  %t36 = load i32, ptr %l2, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l22
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load i64, ptr %l22, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t40, i64 %t41)
  store ptr %t42, ptr %l23
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l23, !tbaa !29
  %t45 = getelementptr %"compiler/load:Module", ptr %t43, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t46, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t48, ptr %l26
  br label %bb8
bb8:
  %t49 = load i1, ptr %l26, !tbaa !21
  br i1 %t49, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/check:Checker", ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/generic:Program", ptr %t54, i32 0, i32 2
  %t57 = load i32, ptr %l2, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l32
  br label %bb12
bb12:
  %t61 = load i32, ptr %l32, !range !{i32 0, i32 6}
  store i32 %t61, ptr %l3
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t64 = trunc i64 0 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb15
bb14:
  %t67 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t69 = trunc i64 1 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l35, !tbaa !21
  br label %bb15
bb15:
  %t72 = load i1, ptr %l35, !tbaa !21
  br i1 %t72, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t74 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t76 = trunc i64 4 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i32, ptr %l1, !tbaa !23
  %t83 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t79, i32 %t80)
  store i1 %t83, ptr %l44
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t84 = load i1, ptr %l44, !tbaa !21
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i1
  %l22 = alloca i32
  %l25 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l38 = alloca i64
  %l40 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %l60 = alloca ptr
  %l66 = alloca i64
  %l68 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l75 = alloca %"compiler/source:Span"
  %l76 = alloca %"compiler/source:Span"
  %l77 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l91 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisMethod(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l12, !tbaa !29
  %t8 = load i64, ptr %l5, !tbaa !24
  store i64 %t8, ptr %l13, !tbaa !24
  %t9 = load i32, ptr %l3, !tbaa !23
  store i32 %t9, ptr %l14, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load %"compiler/source:Span", ptr %l1
  %t14 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %t10, %"compiler/source:Span" %t11)
  store %"compiler/source:Span" %t14, ptr %l17
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l12, !tbaa !29
  %t16 = load i64, ptr %l13, !tbaa !24
  %t17 = load i32, ptr %l14, !tbaa !23
  %t18 = load %"compiler/source:Span", ptr %l17
  %t19 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %s0, ptr %s0, ptr %t15, i64 %t16, i32 %t17, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d12, i32 0, i32 1) }, %"compiler/source:Span" %t18, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t19, ptr %l18
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t23, i64 %t24)
  store i32 %t27, ptr %l22
  br label %bb4
bb4:
  %t28 = load i32, ptr %l22, !tbaa !23
  store i32 %t28, ptr %l6, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/check:Checker", ptr %t29, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  store ptr %t34, ptr %l25, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 2
  %t41 = load i32, ptr %l6, !tbaa !23
  %t44 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t40, i32 %t41)
  store i32 %t44, ptr %l30
  br label %bb5
bb5:
  %t45 = load ptr, ptr %l25, !tbaa !29
  %t46 = load i32, ptr %l30, !tbaa !23
  %t47 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t45, i32 %t46)
  store { i64, ptr } %t47, ptr %l31
  br label %bb6
bb6:
  %t48 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  %t51 = sub i64 %t49, 1
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 2
  %t59 = load i32, ptr %l6, !tbaa !23
  %t62 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l38
  br label %bb7
bb7:
  %t63 = load i64, ptr %l38, !tbaa !24
  %t64 = icmp slt i64 %t63, 0
  br i1 %t64, label %bb8, label %bb9
bb8:
  %t66 = load i64, ptr %l7, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t72 = icmp ne i64 %t66, %t69
  store i1 %t72, ptr %l40, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb10
bb10:
  %t74 = load i1, ptr %l40, !tbaa !21
  br i1 %t74, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s1
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l45, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l1
  %t80 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %t76, %"compiler/source:Span" %t77)
  store %"compiler/source:Span" %t80, ptr %l48
  br label %bb13
bb12:
  br label %bb18
bb13:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l3, !tbaa !23
  %t85 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t81, i32 %t82)
  store { i64, ptr } %t85, ptr %l51
  br label %bb14
bb14:
  %t86 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t86, 0
  %t88 = extractvalue { i64, ptr } %t86, 1
  %t89 = mul i64 %t87, 1
  %t90 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t89)
  call void @llvm.memcpy.p0.p0.i64(ptr %t90, ptr %t88, i64 %t89, i1 false)
  %t91 = insertvalue { i64, ptr } undef, i64 %t87, 0
  %t92 = insertvalue { i64, ptr } %t91, ptr %t90, 1
  %t93 = load i64, ptr %l7, !tbaa !24
  %t94 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t100 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAxisCount(ptr %s1, ptr %v0, { i64, ptr } %t92, i64 %t93, i64 %t96)
  store %"compiler/diagmsg:Msg" %t100, ptr %l56
  br label %bb15
bb15:
  %t101 = load ptr, ptr %l45, !tbaa !29
  %t102 = load %"compiler/source:Span", ptr %l48
  %t103 = load %"compiler/diagmsg:Msg", ptr %l56
  %t104 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t101, %"compiler/source:Span" %t102, %"compiler/diagmsg:Msg" %t103)
  store i64 %t104, ptr %l57
  br label %bb16
bb16:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load %"compiler/source:Span", ptr %l1
  %t109 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v3, ptr %t105, %"compiler/source:Span" %t106)
  store ptr %t109, ptr %l60
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t110 = load ptr, ptr %l60, !tbaa !29
  store ptr %t110, ptr %rv
  br label %ret
bb18:
  %t111 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t111, ptr %l8, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/check:Checker", ptr %t113, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t118 = getelementptr %"compiler/generic:Program", ptr %t116, i32 0, i32 2
  %t119 = load i32, ptr %l6, !tbaa !23
  %t122 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %t118, i32 %t119)
  store i64 %t122, ptr %l66
  br label %bb19
bb19:
  %t123 = load i64, ptr %l66, !tbaa !24
  %t124 = icmp sge i64 %t123, 0
  br i1 %t124, label %bb20, label %bb21
bb20:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l68, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l1
  %t129 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisArray(ptr %v0, ptr %v2, ptr %v2, ptr %t127, %"compiler/source:Span" %t128, { i64, ptr } %t129)
  store ptr %t133, ptr %l72
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t134 = load ptr, ptr %l68, !tbaa !29
  %t135 = load ptr, ptr %l72, !tbaa !29
  %t136 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v2, ptr %v0, ptr %t134, ptr %t135)
  store { i64, ptr } %t136, ptr %l73
  br label %bb23
bb23:
  %t137 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t137, ptr %l8, !tbaa !27
  br label %bb24
bb24:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l74, !tbaa !29
  %t139 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t139, ptr %l75
  %t140 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t140, ptr %l76
  %t141 = load i64, ptr %l5, !tbaa !24
  store i64 %t141, ptr %l77, !tbaa !24
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load %"compiler/source:Span", ptr %l1
  %t148 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v0, ptr %t142, %"compiler/source:Span" %t143, ptr %a2)
  store ptr %t148, ptr %l81
  br label %bb25
bb25:
  %t149 = load ptr, ptr %l81, !tbaa !29
  store ptr %t149, ptr %l82, !tbaa !29
  %t150 = icmp sge i64 0, 0
  br i1 %t150, label %bb26, label %bb27
bb26:
  %t152 = icmp sle i64 0, 1152921504606846975
  br i1 %t152, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_2766066f05fe458f_c5cb0cc886787dc3)
  unreachable
bb28:
  %t154 = mul i64 0, 8
  %t155 = insertvalue { i64, ptr } undef, i64 0, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t156, ptr %l85, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t157, ptr %l86, !tbaa !27
  %t158 = icmp sge i64 0, 0
  br i1 %t158, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_2766066f05fe458f_c5cb0cc886787dc3)
  unreachable
bb30:
  %t160 = icmp sle i64 0, 2305843009213693951
  br i1 %t160, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_df2f5c1b7a6ec3a_1ebb90303f11d9ce)
  unreachable
bb32:
  %t162 = mul i64 0, 4
  %t163 = insertvalue { i64, ptr } undef, i64 0, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t165 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t165, 1
  %t167 = call ptr @__olang_scope_of(ptr %t166, ptr null)
  %t168 = ptrtoint ptr %t167 to i64
  %t170 = inttoptr i64 %t168 to ptr
  %t171 = load ptr, ptr %l74, !tbaa !29
  %t172 = load %"compiler/source:Span", ptr %l75
  %t173 = load %"compiler/source:Span", ptr %l76
  %t174 = load i64, ptr %l77, !tbaa !24
  %t175 = load ptr, ptr %l82, !tbaa !29
  %t176 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t177 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t179 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %t170, ptr %v3, ptr %v3, ptr %t171, %"compiler/source:Span" %t172, %"compiler/source:Span" %t173, i64 %t174, ptr %t175, { i64, ptr } %t176, { i64, ptr } %t177, { i64, ptr } %t164)
  store ptr %t179, ptr %l91
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_df2f5c1b7a6ec3a_1ebb90303f11d9ce)
  unreachable
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t180 = load ptr, ptr %l91, !tbaa !29
  store ptr %t180, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
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
  %t13 = getelementptr %"compiler/check:Checker", ptr %t11, i32 0, i32 1
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
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aModules(ptr %v0, ptr %v1, ptr %v2, ptr %t49, i64 %t51, ptr %t52, ptr %t53)
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eb5aNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = getelementptr %"compiler/check:b5aWalk", ptr %t3, i32 0, i32 2
  %t9 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t5, i64 %t1)
  store i1 %t9, ptr %l8
  br label %bb1
bb1:
  %t10 = load i1, ptr %l8, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/check:b5aWalk", ptr %t13, i32 0, i32 2
  %t16 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t15, i64 %t16)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecapturedValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l21 = alloca ptr
  %l23 = alloca %"compiler/typed:Local"
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca ptr
  %l46 = alloca i1
  %l47 = alloca ptr
  %l48 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call ptr @compiler_2fcheck_2eunwrapped(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l9, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v1, ptr %t4)
  store ptr %t5, ptr %l10
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l10, !tbaa !29
  store ptr %t6, ptr %l2, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l2, !tbaa !29
  store ptr %t12, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t13 = load ptr, ptr %l14, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l14, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 8}
  %t19 = icmp eq i64 %t17, 0
  store i1 %t19, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t20 = load i1, ptr %l15, !tbaa !21
  br i1 %t20, label %bb8, label %bb9
bb8:
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr { i64, [4 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load i32, ptr %t24
  store i32 %t25, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb39
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t27)
  store ptr %t29, ptr %l21
  br label %bb11
bb11:
  %t30 = load i32, ptr %l3, !tbaa !23
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t33 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t31, i32 %t30)
  store %"compiler/typed:Local" %t33, ptr %l23
  br label %bb12
bb12:
  %t34 = getelementptr %"compiler/typed:Local", ptr %l23, i32 0, i32 4
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 7}
  %t37 = trunc i64 5 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t43)
  store ptr %t45, ptr %l29
  br label %bb16
bb16:
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t48 = getelementptr %"compiler/check:frame", ptr %t46, i32 0, i32 30
  store ptr %t48, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb17
bb17:
  %t50 = load i64, ptr %l5, !tbaa !24
  store i64 %t50, ptr %l32, !tbaa !24
  %t51 = load ptr, ptr %l4, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eLen_H3aff79531665083e8df6fb2351948096(ptr %v0, ptr %t51)
  store i64 %t53, ptr %l34
  br label %bb18
bb18:
  %t54 = load i64, ptr %l32, !tbaa !24
  %t55 = load i64, ptr %l34, !tbaa !24
  %t56 = icmp slt i64 %t54, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb19, label %bb20
bb19:
  br label %bb38
bb20:
  br label %bb21
bb21:
  %t60 = load ptr, ptr %l4, !tbaa !29
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eAt__H223e9cc5a62bb13aec2c4037d58f7975(ptr %v0, ptr %v0, ptr %t60, i64 %t61)
  store ptr %t64, ptr %l39
  br label %bb22
bb22:
  %t65 = load ptr, ptr %l39, !tbaa !29
  store ptr %t65, ptr %l6, !tbaa !29
  %t66 = load ptr, ptr %l6, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Capture", ptr %t66, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load i32, ptr %l3, !tbaa !23
  %t73 = icmp ne i32 %t69, %t70
  br i1 %t73, label %bb23, label %bb24
bb23:
  br label %bb37
bb24:
  br label %bb25
bb25:
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Capture", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  store ptr %t78, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb26, label %bb27
bb26:
  %t84 = load ptr, ptr %l47, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 3
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb27
bb27:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_3fa0bc2758d24028_39c102aa9b869b2c)
  unreachable
bb36:
  %t89 = load i1, ptr %l46, !tbaa !21
  store i1 %t89, ptr %rv
  br label %ret
bb37:
  %t90 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l5, !tbaa !24
  br label %bb17
bb38:
  br label %bb44
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_386bb7dc57d3fef9_468931e243621ddd)
  unreachable
bb44:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i32 %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca i1
  %l70 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l81 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l7, !tbaa !24
  store i64 %t3, ptr %l14, !tbaa !24
  %t4 = load ptr, ptr %l6, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v2, ptr %t4)
  store i64 %t6, ptr %l16
  br label %bb2
bb2:
  %t7 = load i64, ptr %l14, !tbaa !24
  %t8 = load i64, ptr %l16, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb53
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l6, !tbaa !29
  %t14 = load i64, ptr %l7, !tbaa !24
  %t17 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v2, ptr %v2, ptr %t13, i64 %t14)
  store { i64, ptr } %t17, ptr %l21
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t18, ptr %l8, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t19, ptr %l22, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 0
  %t23 = load ptr, ptr %t22, !tbaa !39
  store ptr %t23, ptr %l9, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l9, !tbaa !29
  %t29 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v2, ptr %t25, ptr %t26)
  store i1 %t29, ptr %l26
  br label %bb7
bb7:
  %t30 = load i1, ptr %l26, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l27, !tbaa !29
  %t32 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t32, ptr %l28, !tbaa !27
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb10, label %bb11
bb9:
  br label %bb16
bb10:
  %t35 = icmp sle i64 0, 1152921504606846975
  br i1 %t35, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a8e5d5910e328d9f_37a01ee13094de9b)
  unreachable
bb12:
  %t37 = mul i64 0, 8
  %t38 = insertvalue { i64, ptr } undef, i64 0, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t40 = load i64, ptr %l5, !tbaa !24
  %t41 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t44 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t41, { i64, ptr } %t39, i64 %t40)
  store { i64, ptr } %t44, ptr %l33
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a8e5d5910e328d9f_37a01ee13094de9b)
  unreachable
bb14:
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t46 = load { i64, ptr }, ptr %l33, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v1, ptr %v2, ptr %t45, { i64, ptr } %t46)
  br label %bb15
bb15:
  br label %bb52
bb16:
  %t47 = load ptr, ptr %l9, !tbaa !29
  store ptr %t47, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t48 = load ptr, ptr %l34, !tbaa !29
  %t49 = icmp ne ptr %t48, null
  br i1 %t49, label %bb17, label %bb18
bb17:
  %t51 = load ptr, ptr %l34, !tbaa !29
  %t52 = load i64, ptr %t51, !range !{i64 0, i64 9}
  %t54 = icmp eq i64 %t52, 1
  store i1 %t54, ptr %l35, !tbaa !21
  br label %bb18
bb18:
  %t55 = load i1, ptr %l35, !tbaa !21
  br i1 %t55, label %bb19, label %bb20
bb19:
  %t56 = load ptr, ptr %l9, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr }, ptr %t58, i32 0, i32 1
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l10, !tbaa !29
  br label %bb25
bb20:
  %t62 = load ptr, ptr %l9, !tbaa !29
  store ptr %t62, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l40, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 9}
  %t69 = icmp eq i64 %t67, 4
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t70 = load i1, ptr %l41, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  %t71 = load ptr, ptr %l9, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", ptr }, ptr %t73, i32 0, i32 1
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l10, !tbaa !29
  br label %bb25
bb24:
  br label %bb35
bb25:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l10, !tbaa !29
  %t79 = load i32, ptr %l3, !tbaa !23
  %t83 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v2, ptr %t77, ptr %t78, i32 %t79)
  store i64 %t83, ptr %l49
  br label %bb26
bb26:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l49, !tbaa !24
  %t87 = icmp eq i64 %t85, %t84
  br i1 %t87, label %bb27, label %bb28
bb27:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l52, !tbaa !29
  %t90 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t90, ptr %l53, !tbaa !27
  %t91 = icmp sge i64 0, 0
  br i1 %t91, label %bb29, label %bb30
bb28:
  br label %bb35
bb29:
  %t93 = icmp sle i64 0, 1152921504606846975
  br i1 %t93, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_90933ee8eaa77cca_eb7025111a161506)
  unreachable
bb31:
  %t95 = mul i64 0, 8
  %t96 = insertvalue { i64, ptr } undef, i64 0, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t98 = load i64, ptr %l5, !tbaa !24
  %t99 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t102 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t99, { i64, ptr } %t97, i64 %t98)
  store { i64, ptr } %t102, ptr %l58
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_90933ee8eaa77cca_eb7025111a161506)
  unreachable
bb33:
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l58, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v1, ptr %v2, ptr %t103, { i64, ptr } %t104)
  br label %bb34
bb34:
  br label %bb51
bb35:
  %t105 = load ptr, ptr %l9, !tbaa !29
  store ptr %t105, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t106 = load ptr, ptr %l59, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb36, label %bb37
bb36:
  %t109 = load ptr, ptr %l59, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 9}
  %t112 = icmp eq i64 %t110, 2
  store i1 %t112, ptr %l60, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l60, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t114 = load ptr, ptr %l9, !tbaa !29
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t116, i32 0, i32 1
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l11, !tbaa !29
  %t120 = load ptr, ptr %l9, !tbaa !29
  %t122 = getelementptr { i64, [4 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t122, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123
  store { i64, ptr } %t124, ptr %l12, !tbaa !27
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l11, !tbaa !29
  %t128 = load i32, ptr %l3, !tbaa !23
  %t132 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v2, ptr %t126, ptr %t127, i32 %t128)
  store i64 %t132, ptr %l70
  br label %bb41
bb41:
  %t133 = load i64, ptr %l4, !tbaa !24
  %t134 = load i64, ptr %l70, !tbaa !24
  %t136 = icmp eq i64 %t134, %t133
  br i1 %t136, label %bb42, label %bb43
bb42:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l73, !tbaa !29
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l74, !tbaa !29
  %t140 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t140, ptr %l75, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t141, ptr %l76, !tbaa !27
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l3, !tbaa !23
  %t144 = load i64, ptr %l4, !tbaa !24
  %t145 = load ptr, ptr %l11, !tbaa !29
  %t150 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v2, ptr %v0, ptr %t142, i32 %t143, i64 %t144, ptr %t145)
  store ptr %t150, ptr %l81
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t151 = load ptr, ptr %l73, !tbaa !29
  %t152 = load ptr, ptr %l74, !tbaa !29
  %t153 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t155 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %v1, ptr %v2, ptr %v2, ptr %v0, ptr %t151, ptr %t152, { i64, ptr } %t153, { i64, ptr } %t154, ptr %t155)
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
  call void @__olang_check_failed(ptr @olang_loc_dfea15858951d412_c6d9359c158ed526)
  unreachable
bb51:
  br label %bb52
bb52:
  %t156 = load i64, ptr %l7, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l7, !tbaa !24
  br label %bb1
bb53:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTypeWritten(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/names:Ref"
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca ptr
  %l26 = alloca %"compiler/names:Ref"
  %l30 = alloca i1
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l41 = alloca %"compiler/names:Ref"
  %l44 = alloca i1
  %l51 = alloca { i64, ptr }
  %l56 = alloca i1
  %l63 = alloca i32
  %l68 = alloca i1
  %l71 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l75 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l84 = alloca i64
  %l86 = alloca i64
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l88 = alloca i64
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
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l5, !tbaa !27
  br label %bb5
bb4:
  br label %bb46
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  store ptr %t34, ptr %l20, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t35)
  store ptr %t37, ptr %l22
  br label %bb6
bb6:
  %t38 = load ptr, ptr %l22, !tbaa !29
  %t40 = getelementptr %"compiler/check:frame", ptr %t38, i32 0, i32 2
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t47 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t44, i64 %t41, i32 %t43)
  store %"compiler/names:Ref" %t47, ptr %l26
  br label %bb7
bb7:
  %t48 = load %"compiler/names:Ref", ptr %l26
  store %"compiler/names:Ref" %t48, ptr %l6
  %t49 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t49, 0
  %t53 = icmp sgt i64 %t51, 1
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t56 = load i32, ptr %t55, !range !{i32 0, i32 9}
  %t58 = trunc i64 0 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l30, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb10
bb10:
  %t61 = load i1, ptr %l30, !tbaa !21
  br i1 %t61, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l35, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l37
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l35, !tbaa !29
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t78, i64 %t75, i32 %t77)
  store %"compiler/names:Ref" %t81, ptr %l41
  br label %bb14
bb14:
  %t82 = load %"compiler/names:Ref", ptr %l41
  store %"compiler/names:Ref" %t82, ptr %l6
  br label %bb15
bb15:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 0 to i32
  %t87 = icmp eq i32 %t84, %t86
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t93 = icmp eq i64 %t91, 1
  store i1 %t93, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t95 = load i1, ptr %l44, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t96 = load i1, ptr %l2, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb20:
  br label %bb25
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/source:Span", ptr %l3
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t100, ptr %l51, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 0
  %t104 = load i32, ptr %t103, !tbaa !33
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %t98, %"compiler/source:Span" %t99, i32 %t104, i1 false)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  %t109 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 0
  %t110 = load i32, ptr %t109, !range !{i32 0, i32 9}
  %t112 = trunc i64 4 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb26, label %bb27
bb26:
  %t115 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp sge i64 %t116, 0
  store i1 %t118, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t120 = load i1, ptr %l56, !tbaa !21
  br i1 %t120, label %bb29, label %bb30
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t125 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = getelementptr %"compiler/names:Ref", ptr %l6, i32 0, i32 2
  %t128 = load i64, ptr %t127, !tbaa !24
  %t132 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t124, i64 %t126, i64 %t128)
  store i32 %t132, ptr %l63
  br label %bb31
bb30:
  br label %bb45
bb31:
  %t133 = load i32, ptr %l63, !tbaa !23
  store i32 %t133, ptr %l7, !tbaa !23
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t138 = load i32, ptr %l7, !tbaa !23
  %t139 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %t137, i32 %t138, { i64, ptr } %t139)
  store i1 %t143, ptr %l68
  br label %bb32
bb32:
  %t144 = load i1, ptr %l68, !tbaa !21
  %t145 = xor i1 %t144, true
  br i1 %t145, label %bb33, label %bb34
bb33:
  %t147 = load i1, ptr %l2, !tbaa !21
  br i1 %t147, label %bb35, label %bb36
bb34:
  br label %bb44
bb35:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l71, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t150)
  store %"compiler/source:Span" %t152, ptr %l73
  br label %bb37
bb36:
  br label %bb43
bb37:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t154, ptr %l75, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t159 = sub i64 %t157, 1
  %t161 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i32, ptr %t162, i64 %t159
  %t164 = load i32, ptr %t163, !tbaa !33
  %t167 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t153, i32 %t164)
  store { i64, ptr } %t167, ptr %l80
  br label %bb38
bb38:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t172 = load i32, ptr %l7, !tbaa !23
  %t175 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %t171, i32 %t172)
  store i64 %t175, ptr %l84
  br label %bb39
bb39:
  %t176 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t178 = call i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v1, { i64, ptr } %t176)
  store i64 %t178, ptr %l86
  br label %bb40
bb40:
  %t179 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t180 = load i64, ptr %l84, !tbaa !24
  %t181 = load i64, ptr %l86, !tbaa !24
  %t182 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v0, { i64, ptr } %t179, i64 %t180, i64 %t181)
  store %"compiler/diagmsg:Msg" %t182, ptr %l87
  br label %bb41
bb41:
  %t183 = load ptr, ptr %l71, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l73
  %t185 = load %"compiler/diagmsg:Msg", ptr %l87
  %t186 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, %"compiler/diagmsg:Msg" %t185)
  store i64 %t186, ptr %l88
  br label %bb42
bb42:
  br label %bb43
bb43:
  store i1 false, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  store i1 true, ptr %rv
  br label %ret
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 true, ptr %rv
  br label %ret
bb50:
  call void @__olang_check_failed(ptr @olang_loc_cf2e89857dc93528_274c4670bc5b9eac)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecatchSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 0
  %t4 = getelementptr %"compiler/source:Span", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:Catch", ptr %t6, i32 0, i32 0
  %t9 = getelementptr %"compiler/source:Span", ptr %t8, i32 0, i32 0
  %t10 = load i32, ptr %t9, !tbaa !23
  %t12 = add i32 %t10, 5
  %t15 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t5, i32 %t12)
  store %"compiler/source:Span" %t15, ptr %l7
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t16 = load %"compiler/source:Span", ptr %l7
  store %"compiler/source:Span" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclauseHandler(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %lp26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l30 = alloca i1
  %l41 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca %"compiler/source:Span"
  %l56 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca i64
  %l61 = alloca i32
  %l68 = alloca i32
  %l70 = alloca ptr
  %l73 = alloca i64
  %l86 = alloca i64
  %l95 = alloca ptr
  %l96 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca %"compiler/generic:Context"
  %l102 = alloca %"compiler/generic:Context"
  %l104 = alloca %"compiler/generic:Context"
  %l110 = alloca ptr
  %l114 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca { i64, ptr }
  %l124 = alloca i64
  %l134 = alloca { i64, ptr }
  %l145 = alloca i1
  %l150 = alloca ptr
  %l152 = alloca %"compiler/source:Span"
  %l155 = alloca { i64, ptr }
  %l158 = alloca ptr
  %l166 = alloca i32
  %l169 = alloca { i64, ptr }
  %l172 = alloca ptr
  %l177 = alloca i32
  %l178 = alloca { i64, ptr }
  %l188 = alloca ptr
  %l190 = alloca %"compiler/source:Span"
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l197 = alloca i64
  %l200 = alloca i64
  %l206 = alloca i64
  %l209 = alloca i64
  %l228 = alloca ptr
  %l231 = alloca { i64, ptr }
  %l234 = alloca { i64, ptr }
  %l237 = alloca ptr
  %l243 = alloca { i64, ptr }
  %l244 = alloca ptr
  %l246 = alloca %"compiler/source:Span"
  %l248 = alloca %"compiler/source:Span"
  %l249 = alloca i32
  %l253 = alloca %"compiler/typed:Make"
  %l262 = alloca { i64, ptr }
  %l263 = alloca %"compiler/typed:Block"
  %l265 = alloca ptr
  %l270 = alloca i1
  %l273 = alloca i1
  %l275 = alloca ptr
  %l279 = alloca i1
  %l281 = alloca i1
  %l283 = alloca ptr
  %l285 = alloca %"compiler/source:Span"
  %l286 = alloca %"compiler/diagmsg:Msg"
  %l287 = alloca i64
  %l289 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l298 = alloca %"compiler/source:Span"
  %l299 = alloca i32
  %l302 = alloca i32
  %l303 = alloca { i64, ptr }
  %l308 = alloca i32
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca ptr
  %t99 = alloca { i64, [2 x i64] }, align 8
  %t149 = alloca %"compiler/generic:Context", align 8
  %t387 = alloca { i64, [3 x i64] }, align 8
  %t579 = alloca { i64, [5 x i64] }, align 8
  %t591 = alloca { i64, [3 x i64] }, align 8
  %t696 = alloca { i64, [4 x i64] }, align 8
  %t708 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Catch", ptr %t1, i32 0, i32 4
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/ast:Catch", ptr %t6, i32 0, i32 2
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = icmp sgt i64 %t11, 0
  store i1 %t13, ptr %l30, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb3
bb3:
  %t15 = load i1, ptr %l30, !tbaa !21
  store i1 %t15, ptr %l4, !tbaa !21
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Catch", ptr %t16, i32 0, i32 3
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  %t23 = icmp sgt i64 %t21, 0
  store i1 %t23, ptr %l5, !tbaa !21
  %t25 = load i1, ptr %l4, !tbaa !21
  %t27 = xor i1 %t25, true
  br i1 %t27, label %bb4, label %bb5
bb4:
  %t29 = load i1, ptr %l5, !tbaa !21
  %t31 = xor i1 %t29, true
  store i1 %t31, ptr %l41, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l41, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = icmp eq i64 %t34, 0
  store i1 %t36, ptr %l44, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l44, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t40 = load i1, ptr %l5, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t44 = icmp eq i64 %t42, 0
  store i1 %t44, ptr %l49, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb15
bb15:
  %t46 = load i1, ptr %l49, !tbaa !21
  br i1 %t46, label %bb16, label %bb17
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  store ptr %t47, ptr %l52, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t52 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %t48, ptr %t49)
  store %"compiler/source:Span" %t52, ptr %l55
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t53 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskDefaultInStatement(ptr %v0)
  store %"compiler/diagmsg:Msg" %t53, ptr %l56
  br label %bb19
bb19:
  %t54 = load ptr, ptr %l52, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l55
  %t56 = load %"compiler/diagmsg:Msg", ptr %l56
  %t57 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t54, %"compiler/source:Span" %t55, %"compiler/diagmsg:Msg" %t56)
  store i64 %t57, ptr %l57
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb21:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t61 = icmp sgt i64 %t59, 0
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load i32, ptr %l2, !tbaa !23
  store i32 %t63, ptr %l61, !tbaa !23
  br label %bb24
bb23:
  %t65 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t65, ptr %l61, !tbaa !23
  br label %bb24
bb24:
  %t67 = load i32, ptr %l61, !tbaa !23
  store i32 %t67, ptr %l6, !tbaa !23
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/check:Checker", ptr %t68, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l6, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t73, i32 0, i32 %t74, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t77, ptr %l68
  br label %bb25
bb25:
  %t78 = load i32, ptr %l68, !tbaa !23
  store i32 %t78, ptr %l7, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t79)
  store ptr %t81, ptr %l70
  br label %bb26
bb26:
  %t82 = load ptr, ptr %l70, !tbaa !29
  store ptr %t82, ptr %l8, !tbaa !29
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 20
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l73
  br label %bb27
bb27:
  %t88 = load i64, ptr %l73, !tbaa !24
  %t89 = sub i64 %t88, 1
  store i64 %t89, ptr %l9, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l8, !tbaa !29
  %t94 = getelementptr %"compiler/check:frame", ptr %t92, i32 0, i32 0
  %t95 = load i64, ptr %t94, !tbaa !24
  %t97 = trunc i64 %t95 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t99
  %t100 = getelementptr { i64, [2 x i64] }, ptr %t99, i32 0, i32 0
  store i64 4, ptr %t100
  %t102 = insertvalue { i32 } undef, i32 %t97, 0
  %t103 = getelementptr { i64, [2 x i64] }, ptr %t99, i32 0, i32 1
  store { i32 } %t102, ptr %t103
  %t104 = load { i64, [2 x i64] }, ptr %t99
  %t105 = load i32, ptr %l7, !tbaa !23
  %t106 = load ptr, ptr %l8, !tbaa !29
  %t108 = getelementptr %"compiler/check:frame", ptr %t106, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/ast:Catch", ptr %t110, i32 0, i32 0
  %t113 = load %"compiler/source:Span", ptr %t112
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %t91, { i64, [2 x i64] } %t104, i32 %t105, i64 %t109, %"compiler/source:Span" %t113)
  store i64 %t119, ptr %l86
  br label %bb28
bb28:
  %t120 = load i64, ptr %l86, !tbaa !24
  store i64 %t120, ptr %l10, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 23
  %t124 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t123, i64 %t124, i64 1)
  br label %bb29
bb29:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load i64, ptr %l10, !tbaa !24
  %t129 = load ptr, ptr %l8, !tbaa !29
  %t131 = getelementptr %"compiler/check:frame", ptr %t129, i32 0, i32 1
  %t132 = load i64, ptr %t131, !tbaa !24
  %t133 = load i32, ptr %l6, !tbaa !23
  %t138 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t127, i64 %t128, i64 %t132, i32 %t133, i32 0)
  store ptr %t138, ptr %l95
  br label %bb30
bb30:
  %t139 = load ptr, ptr %l95, !tbaa !29
  store ptr %t139, ptr %l11, !tbaa !29
  %t140 = load ptr, ptr %l11, !tbaa !29
  store ptr %t140, ptr %l96, !tbaa !29
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l97, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t142, label %bb31, label %bb32
bb31:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l97, !tbaa !24
  br label %bb32
bb32:
  %t146 = load ptr, ptr %l8, !tbaa !29
  %t148 = getelementptr %"compiler/check:frame", ptr %t146, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l100, ptr %t148, i64 160, i1 false)
  %t150 = load i64, ptr %l97
  %t151 = inttoptr i64 %t150 to ptr
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %t149, ptr %t151, ptr %l100)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t149, i64 160, i1 false)
  br label %bb33
bb33:
  %t153 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t153, label %bb34, label %bb35
bb34:
  %t155 = load i64, ptr %l97
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t158 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t157, i32 0, i32 2
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = call ptr @__olang_region_home(ptr %t161)
  %t163 = icmp ne ptr %t162, null
  %t164 = select i1 %t163, ptr %t162, ptr null
  %t165 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t166 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t165, i32 0, i32 1
  %t167 = load { i64, ptr }, ptr %t166
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = call ptr @__olang_region_or(ptr %t168, ptr null)
  %t170 = call ptr @__olang_region_home(ptr %t169)
  %t171 = icmp ne ptr %t170, null
  %t172 = select i1 %t171, ptr %t170, ptr %t164
  %t173 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 3
  %t174 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t173, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174
  %t176 = extractvalue { i64, ptr } %t175, 1
  %t177 = call ptr @__olang_region_or(ptr %t176, ptr null)
  %t178 = call ptr @__olang_region_home(ptr %t177)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr %t172
  %t181 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t182 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t181, i32 0, i32 2
  %t183 = load { i64, ptr }, ptr %t182
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = call ptr @__olang_region_or(ptr %t184, ptr null)
  %t186 = call ptr @__olang_region_home(ptr %t185)
  %t187 = icmp ne ptr %t186, null
  %t188 = select i1 %t187, ptr %t186, ptr %t180
  %t189 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t189, i32 0, i32 1
  %t191 = load { i64, ptr }, ptr %t190
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = call ptr @__olang_region_or(ptr %t192, ptr null)
  %t194 = call ptr @__olang_region_home(ptr %t193)
  %t195 = icmp ne ptr %t194, null
  %t196 = select i1 %t195, ptr %t194, ptr %t188
  %t197 = getelementptr %"compiler/generic:Context", ptr %l102, i32 0, i32 2
  %t198 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t197, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = call ptr @__olang_region_or(ptr %t200, ptr null)
  %t202 = call ptr @__olang_region_home(ptr %t201)
  %t203 = icmp ne ptr %t202, null
  %t204 = select i1 %t203, ptr %t202, ptr %t196
  %t205 = icmp eq ptr %t204, %t156
  call void @__olang_region_settle(ptr %t156, i1 %t205)
  br label %bb35
bb35:
  %t206 = load ptr, ptr %l96, !tbaa !29
  %t207 = getelementptr %"compiler/check:frame", ptr %t206, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %l104, ptr %t207, i64 160, i1 false)
  %t208 = load ptr, ptr %l96, !tbaa !29
  %t209 = getelementptr %"compiler/check:frame", ptr %t208, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t209, ptr %l102, i64 160, i1 false)
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fcheck_3aframe_2e4
  br i1 %t210, label %bb36, label %bb37
bb36:
  %t212 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t213 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t212, i32 0, i32 2
  %t214 = load { i64, ptr }, ptr %t213
  %t215 = extractvalue { i64, ptr } %t214, 1
  %t216 = call ptr @__olang_region_or(ptr %t215, ptr null)
  %t217 = call ptr @__olang_region_home(ptr %t216)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr null
  %t220 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t221 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t220, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = call ptr @__olang_region_home(ptr %t224)
  %t226 = icmp ne ptr %t225, null
  %t227 = select i1 %t226, ptr %t225, ptr %t219
  %t228 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 3
  %t229 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t228, i32 0, i32 0
  %t230 = load { i64, ptr }, ptr %t229
  %t231 = extractvalue { i64, ptr } %t230, 1
  %t232 = call ptr @__olang_region_or(ptr %t231, ptr null)
  %t233 = call ptr @__olang_region_home(ptr %t232)
  %t234 = icmp ne ptr %t233, null
  %t235 = select i1 %t234, ptr %t233, ptr %t227
  %t236 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t237 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t236, i32 0, i32 2
  %t238 = load { i64, ptr }, ptr %t237
  %t239 = extractvalue { i64, ptr } %t238, 1
  %t240 = call ptr @__olang_region_or(ptr %t239, ptr null)
  %t241 = call ptr @__olang_region_home(ptr %t240)
  %t242 = icmp ne ptr %t241, null
  %t243 = select i1 %t242, ptr %t241, ptr %t235
  %t244 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t245 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t244, i32 0, i32 1
  %t246 = load { i64, ptr }, ptr %t245
  %t247 = extractvalue { i64, ptr } %t246, 1
  %t248 = call ptr @__olang_region_or(ptr %t247, ptr null)
  %t249 = call ptr @__olang_region_home(ptr %t248)
  %t250 = icmp ne ptr %t249, null
  %t251 = select i1 %t250, ptr %t249, ptr %t243
  %t252 = getelementptr %"compiler/generic:Context", ptr %l104, i32 0, i32 2
  %t253 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t252, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = call ptr @__olang_region_home(ptr %t256)
  %t258 = icmp ne ptr %t257, null
  %t259 = select i1 %t258, ptr %t257, ptr %t251
  call void @__olang_region_drop(ptr %t259)
  store %"compiler/generic:Context" zeroinitializer, ptr %l104
  br label %bb37
bb37:
  %t260 = load ptr, ptr %l11, !tbaa !29
  %t261 = load i64, ptr %l9, !tbaa !24
  %t264 = getelementptr %"compiler/check:frame", ptr %t260, i32 0, i32 19
  store i64 %t261, ptr %t264, !tbaa !24
  %t265 = load ptr, ptr %l11, !tbaa !29
  %t267 = getelementptr %"compiler/check:frame", ptr %t265, i32 0, i32 32
  store i1 true, ptr %t267, !tbaa !21
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t268)
  store ptr %t270, ptr %l110
  br label %bb38
bb38:
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t273 = getelementptr %"compiler/ast:Catch", ptr %t271, i32 0, i32 0
  %t274 = load %"compiler/source:Span", ptr %t273
  %t275 = load ptr, ptr %l110, !tbaa !29
  %t278 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %t275, i32 -1, i32 0, %"compiler/source:Span" %t274)
  store i32 %t278, ptr %l114
  br label %bb39
bb39:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t279)
  store ptr %t281, ptr %l116
  br label %bb40
bb40:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/check:Checker", ptr %t282, i32 0, i32 1
  %t285 = load ptr, ptr %t284, !tbaa !29
  %t286 = load i32, ptr %l7, !tbaa !23
  %t289 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t285, i32 %t286)
  store { i64, ptr } %t289, ptr %l120
  br label %bb41
bb41:
  %t290 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 0
  %t292 = extractvalue { i64, ptr } %t290, 1
  %t293 = mul i64 %t291, 8
  %t294 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t293)
  call void @llvm.memcpy.p0.p0.i64(ptr %t294, ptr %t292, i64 %t293, i1 false)
  %t295 = insertvalue { i64, ptr } undef, i64 %t291, 0
  %t296 = insertvalue { i64, ptr } %t295, ptr %t294, 1
  %t297 = load ptr, ptr %l116, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %s0, ptr %t297, { i64, ptr } %t296)
  br label %bb42
bb42:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/check:Checker", ptr %t299, i32 0, i32 44
  %t303 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t301)
  store i64 %t303, ptr %l124
  br label %bb43
bb43:
  %t304 = load i64, ptr %l124, !tbaa !24
  store i64 %t304, ptr %l12, !tbaa !24
  %t305 = load i1, ptr %l4, !tbaa !21
  br i1 %t305, label %bb44, label %bb45
bb44:
  %t307 = load ptr, ptr %l1, !tbaa !29
  %t309 = getelementptr %"compiler/ast:Catch", ptr %t307, i32 0, i32 2
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  store { i64, ptr } %t310, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t312 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t314 = extractvalue { i64, ptr } %t312, 0
  store i64 %t314, ptr %l15, !tbaa !24
  br label %bb46
bb45:
  br label %bb53
bb46:
  %t316 = load i64, ptr %l14, !tbaa !24
  %t317 = load i64, ptr %l15, !tbaa !24
  %t320 = icmp slt i64 %t316, %t317
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb47, label %bb48
bb47:
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t324 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t324, ptr %l134, !tbaa !27
  %t325 = load i64, ptr %l14, !tbaa !24
  %t327 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t328 = load ptr, ptr %t327, !tbaa !27
  %t329 = getelementptr ptr, ptr %t328, i64 %t325
  %t330 = load ptr, ptr %t329, !tbaa !39
  %t332 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %t332, ptr %t330)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t337 = load i64, ptr %l14, !tbaa !24
  %t339 = add i64 %t337, 1
  store i64 %t339, ptr %l14, !tbaa !24
  br label %bb46
bb52:
  br label %bb53
bb53:
  %t341 = load i1, ptr %l5, !tbaa !21
  br i1 %t341, label %bb54, label %bb55
bb54:
  %t343 = load i64, ptr %l3, !tbaa !24
  %t345 = icmp eq i64 %t343, 1
  br i1 %t345, label %bb56, label %bb57
bb55:
  br label %bb97
bb56:
  store i1 true, ptr %l145, !tbaa !21
  br label %bb58
bb57:
  %t347 = load ptr, ptr %l1, !tbaa !29
  %t349 = getelementptr %"compiler/ast:Catch", ptr %t347, i32 0, i32 3
  %t350 = load { i64, ptr }, ptr %t349, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t350, 0
  %t354 = icmp eq i64 %t352, 1
  store i1 %t354, ptr %l145, !tbaa !21
  br label %bb58
bb58:
  %t356 = load i1, ptr %l145, !tbaa !21
  br i1 %t356, label %bb59, label %bb60
bb59:
  %t357 = load ptr, ptr %l0, !tbaa !29
  store ptr %t357, ptr %l150, !tbaa !29
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr %"compiler/ast:Catch", ptr %t358, i32 0, i32 0
  %t361 = load %"compiler/source:Span", ptr %t360
  store %"compiler/source:Span" %t361, ptr %l152
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t363 = load ptr, ptr %l1, !tbaa !29
  %t365 = getelementptr %"compiler/ast:Catch", ptr %t363, i32 0, i32 3
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !27
  store { i64, ptr } %t366, ptr %l155, !tbaa !27
  %t367 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t368 = load ptr, ptr %t367, !tbaa !27
  %t369 = getelementptr ptr, ptr %t368, i64 0
  %t370 = load ptr, ptr %t369, !tbaa !39
  %t371 = load i32, ptr %l2, !tbaa !23
  %t375 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v0, ptr %t362, ptr %t370, i32 %t371)
  store ptr %t375, ptr %l158
  br label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s9
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/check:Checker", ptr %t376, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !29
  %t381 = getelementptr %"compiler/generic:Program", ptr %t379, i32 0, i32 2
  %t382 = load i32, ptr %l2, !tbaa !23
  %t385 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t381, i32 %t382)
  store i32 %t385, ptr %l166
  br label %bb63
bb61:
  %t386 = load ptr, ptr %l158, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t387
  %t388 = getelementptr { i64, [3 x i64] }, ptr %t387, i32 0, i32 0
  store i64 6, ptr %t388
  %t389 = load %"compiler/source:Span", ptr %l152
  %t390 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t389, 0
  %t392 = insertvalue { %"compiler/source:Span", ptr } %t390, ptr %t386, 1
  %t393 = getelementptr { i64, [3 x i64] }, ptr %t387, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t392, ptr %t393
  %t394 = load { i64, [3 x i64] }, ptr %t387
  %t396 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t394, ptr %t396
  %t397 = load ptr, ptr %l150, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t397, ptr %t396)
  br label %bb62
bb62:
  br label %bb96
bb63:
  %t399 = load i32, ptr %l166, !range !{i32 0, i32 33}
  %t401 = trunc i64 22 to i32
  %t402 = icmp eq i32 %t399, %t401
  br i1 %t402, label %bb64, label %bb65
bb64:
  %t404 = load ptr, ptr %l0, !tbaa !29
  %t406 = getelementptr %"compiler/check:Checker", ptr %t404, i32 0, i32 1
  %t407 = load ptr, ptr %t406, !tbaa !29
  %t409 = getelementptr %"compiler/generic:Program", ptr %t407, i32 0, i32 2
  store ptr %t409, ptr %l172, !tbaa !29
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = getelementptr %"compiler/check:Checker", ptr %t410, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !29
  %t415 = getelementptr %"compiler/generic:Program", ptr %t413, i32 0, i32 2
  %t416 = load i32, ptr %l2, !tbaa !23
  %t419 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t415, i32 %t416)
  store i32 %t419, ptr %l177
  br label %bb66
bb65:
  %t420 = icmp sge i64 0, 0
  br i1 %t420, label %bb68, label %bb69
bb66:
  %t422 = load ptr, ptr %l172, !tbaa !29
  %t423 = load i32, ptr %l177, !tbaa !23
  %t424 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s9, ptr %t422, i32 %t423)
  store { i64, ptr } %t424, ptr %l178
  br label %bb67
bb67:
  %t425 = load { i64, ptr }, ptr %l178, !tbaa !27
  store { i64, ptr } %t425, ptr %l169, !tbaa !27
  br label %bb72
bb68:
  %t426 = icmp sle i64 0, 2305843009213693951
  br i1 %t426, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33)
  unreachable
bb70:
  %t428 = mul i64 0, 4
  %t429 = insertvalue { i64, ptr } undef, i64 0, 0
  %t430 = insertvalue { i64, ptr } %t429, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t430, ptr %l169, !tbaa !27
  br label %bb72
bb71:
  call void @__olang_check_failed(ptr @olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33)
  unreachable
bb72:
  %t432 = load { i64, ptr }, ptr %l169, !tbaa !27
  store { i64, ptr } %t432, ptr %l17, !tbaa !27
  %t433 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t435 = extractvalue { i64, ptr } %t433, 0
  %t436 = load ptr, ptr %l1, !tbaa !29
  %t438 = getelementptr %"compiler/ast:Catch", ptr %t436, i32 0, i32 3
  %t439 = load { i64, ptr }, ptr %t438, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t439, 0
  %t444 = icmp ne i64 %t435, %t441
  br i1 %t444, label %bb73, label %bb74
bb73:
  %t446 = load ptr, ptr %l0, !tbaa !29
  store ptr %t446, ptr %l188, !tbaa !29
  %t447 = load ptr, ptr %l1, !tbaa !29
  %t449 = getelementptr %"compiler/ast:Catch", ptr %t447, i32 0, i32 0
  %t450 = load %"compiler/source:Span", ptr %t449
  store %"compiler/source:Span" %t450, ptr %l190
  %t451 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = load ptr, ptr %l1, !tbaa !29
  %t456 = getelementptr %"compiler/ast:Catch", ptr %t454, i32 0, i32 3
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  %t459 = extractvalue { i64, ptr } %t457, 0
  %t462 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %t453, i64 %t459)
  store %"compiler/diagmsg:Msg" %t462, ptr %l196
  br label %bb75
bb74:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/check:Checker", ptr %t463, i32 0, i32 43
  %t467 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t465)
  store i64 %t467, ptr %l200
  br label %bb77
bb75:
  %t468 = load ptr, ptr %l188, !tbaa !29
  %t469 = load %"compiler/source:Span", ptr %l190
  %t470 = load %"compiler/diagmsg:Msg", ptr %l196
  %t471 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t468, %"compiler/source:Span" %t469, %"compiler/diagmsg:Msg" %t470)
  store i64 %t471, ptr %l197
  br label %bb76
bb76:
  br label %bb95
bb77:
  %t472 = load i64, ptr %l200, !tbaa !24
  store i64 %t472, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t473 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t475 = extractvalue { i64, ptr } %t473, 0
  store i64 %t475, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t477 = load i64, ptr %l20, !tbaa !24
  %t478 = load i64, ptr %l19, !tbaa !24
  %t481 = icmp sgt i64 %t477, %t478
  br i1 %t481, label %bb78, label %bb79
bb78:
  %t483 = load i64, ptr %l21, !tbaa !24
  %t485 = icmp sgt i64 %t483, 0
  br i1 %t485, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l206, !tbaa !24
  br label %bb83
bb80:
  %t487 = load i64, ptr %l20, !tbaa !24
  %t488 = load i64, ptr %l19, !tbaa !24
  %t491 = sub i64 %t487, %t488
  %t492 = load i64, ptr %l21, !tbaa !24
  %t495 = add i64 %t491, %t492
  %t497 = sub i64 %t495, 1
  %t498 = load i64, ptr %l21, !tbaa !24
  %t501 = sdiv i64 %t497, %t498
  store i64 %t501, ptr %l209, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l209, !tbaa !24
  br label %bb82
bb82:
  %t503 = load i64, ptr %l209, !tbaa !24
  store i64 %t503, ptr %l206, !tbaa !24
  br label %bb83
bb83:
  %t504 = load i64, ptr %l206, !tbaa !24
  store i64 %t504, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb84
bb84:
  %t505 = load i64, ptr %l23, !tbaa !24
  %t506 = load i64, ptr %l22, !tbaa !24
  %t509 = icmp slt i64 %t505, %t506
  %t511 = xor i1 %t509, true
  br i1 %t511, label %bb85, label %bb86
bb85:
  br label %bb91
bb86:
  br label %bb87
bb87:
  %t513 = load i64, ptr %l19, !tbaa !24
  %t514 = load i64, ptr %l23, !tbaa !24
  %t515 = load i64, ptr %l21, !tbaa !24
  %t518 = mul i64 %t514, %t515
  %t521 = add i64 %t513, %t518
  store i64 %t521, ptr %l24, !tbaa !24
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/check:Checker", ptr %t523, i32 0, i32 43
  store ptr %t525, ptr %l228, !tbaa !29
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %l1, !tbaa !29
  %t529 = getelementptr %"compiler/ast:Catch", ptr %t527, i32 0, i32 3
  %t530 = load { i64, ptr }, ptr %t529, !tbaa !27
  store { i64, ptr } %t530, ptr %l231, !tbaa !27
  %t531 = load i64, ptr %l24, !tbaa !24
  %t533 = getelementptr { i64, ptr }, ptr %l231, i32 0, i32 1
  %t534 = load ptr, ptr %t533, !tbaa !27
  %t535 = getelementptr ptr, ptr %t534, i64 %t531
  %t536 = load ptr, ptr %t535, !tbaa !39
  %t537 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t537, ptr %l234, !tbaa !27
  %t538 = load i64, ptr %l24, !tbaa !24
  %t540 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t541 = load ptr, ptr %t540, !tbaa !27
  %t542 = getelementptr i32, ptr %t541, i64 %t538
  %t543 = load i32, ptr %t542, !tbaa !33
  %t547 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v0, ptr %t526, ptr %t536, i32 %t543)
  store ptr %t547, ptr %l237
  br label %bb88
bb88:
  %t548 = load ptr, ptr %l228, !tbaa !29
  %t549 = load ptr, ptr %l237, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t548, ptr %t549)
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t550 = load i64, ptr %l23, !tbaa !24
  %t552 = add i64 %t550, 1
  store i64 %t552, ptr %l23, !tbaa !24
  br label %bb84
bb91:
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/check:Checker", ptr %t554, i32 0, i32 43
  %t557 = load i64, ptr %l18, !tbaa !24
  %t560 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t556, i64 %t557)
  store { i64, ptr } %t560, ptr %l243
  br label %bb92
bb92:
  %t561 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t562 = load ptr, ptr %l0, !tbaa !29
  store ptr %t562, ptr %l244, !tbaa !29
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = getelementptr %"compiler/ast:Catch", ptr %t563, i32 0, i32 0
  %t566 = load %"compiler/source:Span", ptr %t565
  store %"compiler/source:Span" %t566, ptr %l246
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t569 = getelementptr %"compiler/ast:Catch", ptr %t567, i32 0, i32 0
  %t570 = load %"compiler/source:Span", ptr %t569
  store %"compiler/source:Span" %t570, ptr %l248
  %t571 = load i32, ptr %l2, !tbaa !23
  store i32 %t571, ptr %l249, !tbaa !23
  %t576 = call %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v0, ptr %v0, i32 0, i64 0, { i64, ptr } %t561, ptr null, i32 -1, i32 0, i1 false)
  store %"compiler/typed:Make" %t576, ptr %l253
  br label %bb93
bb93:
  %t577 = load %"compiler/typed:Make", ptr %l253
  %t578 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store %"compiler/typed:Make" %t577, ptr %t578
  store { i64, [5 x i64] } zeroinitializer, ptr %t579
  %t580 = getelementptr { i64, [5 x i64] }, ptr %t579, i32 0, i32 0
  store i64 7, ptr %t580
  %t581 = load %"compiler/source:Span", ptr %l248
  %t582 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t581, 0
  %t583 = load i32, ptr %l249, !tbaa !23
  %t584 = insertvalue { %"compiler/source:Span", i32, ptr } %t582, i32 %t583, 1
  %t586 = insertvalue { %"compiler/source:Span", i32, ptr } %t584, ptr %t578, 2
  %t587 = getelementptr { i64, [5 x i64] }, ptr %t579, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t586, ptr %t587
  %t588 = load { i64, [5 x i64] }, ptr %t579
  %t590 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t588, ptr %t590
  store { i64, [3 x i64] } zeroinitializer, ptr %t591
  %t592 = getelementptr { i64, [3 x i64] }, ptr %t591, i32 0, i32 0
  store i64 6, ptr %t592
  %t593 = load %"compiler/source:Span", ptr %l246
  %t594 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t593, 0
  %t596 = insertvalue { %"compiler/source:Span", ptr } %t594, ptr %t590, 1
  %t597 = getelementptr { i64, [3 x i64] }, ptr %t591, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t596, ptr %t597
  %t598 = load { i64, [3 x i64] }, ptr %t591
  %t600 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t598, ptr %t600
  %t601 = load ptr, ptr %l244, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t601, ptr %t600)
  br label %bb94
bb94:
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s9)
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t605 = getelementptr %"compiler/check:Checker", ptr %t603, i32 0, i32 44
  %t606 = load i64, ptr %l12, !tbaa !24
  %t609 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t605, i64 %t606)
  store { i64, ptr } %t609, ptr %l262
  br label %bb98
bb98:
  %t610 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t611 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v0, i32 0, { i64, ptr } %t610)
  store %"compiler/typed:Block" %t611, ptr %l263
  br label %bb99
bb99:
  %t612 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store ptr %t612, ptr %lp26
  %t613 = load %"compiler/typed:Block", ptr %l263
  %t614 = load ptr, ptr %lp26
  store %"compiler/typed:Block" %t613, ptr %t614
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t615)
  store ptr %t617, ptr %l265
  br label %bb100
bb100:
  %t618 = load ptr, ptr %l265, !tbaa !29
  %t619 = load ptr, ptr %lp26
  %t622 = getelementptr %"compiler/typed:Body", ptr %t618, i32 0, i32 11
  store ptr %t619, ptr %t622, !tbaa !29
  %t623 = load i64, ptr %l3, !tbaa !24
  %t625 = icmp sgt i64 %t623, 0
  br i1 %t625, label %bb101, label %bb102
bb101:
  %t627 = load i1, ptr %l5, !tbaa !21
  %t629 = xor i1 %t627, true
  store i1 %t629, ptr %l270, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l270, !tbaa !21
  br label %bb103
bb103:
  %t631 = load i1, ptr %l270, !tbaa !21
  br i1 %t631, label %bb104, label %bb105
bb104:
  %t632 = load ptr, ptr %l0, !tbaa !29
  %t634 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t632)
  store ptr %t634, ptr %l275
  br label %bb106
bb105:
  store i1 false, ptr %l273, !tbaa !21
  br label %bb107
bb106:
  %t635 = load ptr, ptr %l275, !tbaa !29
  %t637 = getelementptr %"compiler/check:frame", ptr %t635, i32 0, i32 18
  %t638 = load i1, ptr %t637, !tbaa !21
  %t640 = xor i1 %t638, true
  store i1 %t640, ptr %l273, !tbaa !21
  br label %bb107
bb107:
  %t642 = load i1, ptr %l273, !tbaa !21
  br i1 %t642, label %bb108, label %bb109
bb108:
  %t643 = load ptr, ptr %lp26
  %t645 = call i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %t643)
  store i1 %t645, ptr %l281
  br label %bb110
bb109:
  store i1 false, ptr %l279, !tbaa !21
  br label %bb111
bb110:
  %t646 = load i1, ptr %l281, !tbaa !21
  %t647 = xor i1 %t646, true
  store i1 %t647, ptr %l279, !tbaa !21
  br label %bb111
bb111:
  %t649 = load i1, ptr %l279, !tbaa !21
  br i1 %t649, label %bb112, label %bb113
bb112:
  %t650 = load ptr, ptr %l0, !tbaa !29
  store ptr %t650, ptr %l283, !tbaa !29
  %t651 = load ptr, ptr %l1, !tbaa !29
  %t653 = getelementptr %"compiler/ast:Catch", ptr %t651, i32 0, i32 0
  %t654 = load %"compiler/source:Span", ptr %t653
  store %"compiler/source:Span" %t654, ptr %l285
  %t655 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseNeedsDefault(ptr %v0)
  store %"compiler/diagmsg:Msg" %t655, ptr %l286
  br label %bb114
bb113:
  br label %bb116
bb114:
  %t656 = load ptr, ptr %l283, !tbaa !29
  %t657 = load %"compiler/source:Span", ptr %l285
  %t658 = load %"compiler/diagmsg:Msg", ptr %l286
  %t659 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t656, %"compiler/source:Span" %t657, %"compiler/diagmsg:Msg" %t658)
  store i64 %t659, ptr %l287
  br label %bb115
bb115:
  br label %bb116
bb116:
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t662 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t660)
  store ptr %t662, ptr %l289
  br label %bb117
bb117:
  %t663 = load ptr, ptr %l289, !tbaa !29
  %t665 = getelementptr %"compiler/check:frame", ptr %t663, i32 0, i32 30
  %t667 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v2, ptr %t665)
  store { i64, ptr } %t667, ptr %l292
  br label %bb118
bb118:
  %t668 = load { i64, ptr }, ptr %l292, !tbaa !27
  store { i64, ptr } %t668, ptr %l27, !tbaa !27
  %t669 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t669)
  br label %bb119
bb119:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t673 = getelementptr %"compiler/check:Checker", ptr %t671, i32 0, i32 23
  %t674 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t673, i64 %t674, i64 2)
  br label %bb120
bb120:
  %t677 = load ptr, ptr %l1, !tbaa !29
  %t679 = getelementptr %"compiler/ast:Catch", ptr %t677, i32 0, i32 0
  %t680 = load %"compiler/source:Span", ptr %t679
  store %"compiler/source:Span" %t680, ptr %l298
  %t681 = load i32, ptr %l7, !tbaa !23
  store i32 %t681, ptr %l299, !tbaa !23
  %t682 = load i64, ptr %l10, !tbaa !24
  %t684 = trunc i64 %t682 to i32
  store i32 %t684, ptr %l302, !tbaa !23
  %t686 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t686, ptr %l303, !tbaa !27
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t688 = load ptr, ptr %l1, !tbaa !29
  %t690 = getelementptr %"compiler/ast:Catch", ptr %t688, i32 0, i32 0
  %t691 = load %"compiler/source:Span", ptr %t690
  %t695 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %t687, i32 5, %"compiler/source:Span" %t691)
  store i32 %t695, ptr %l308
  br label %bb121
bb121:
  store { i64, [4 x i64] } zeroinitializer, ptr %t696
  %t697 = getelementptr { i64, [4 x i64] }, ptr %t696, i32 0, i32 0
  store i64 1, ptr %t697
  %t698 = load i32, ptr %l302, !tbaa !23
  %t699 = insertvalue { i32, { i64, ptr }, i32 } undef, i32 %t698, 0
  %t700 = load { i64, ptr }, ptr %l303, !tbaa !27
  %t701 = insertvalue { i32, { i64, ptr }, i32 } %t699, { i64, ptr } %t700, 1
  %t702 = load i32, ptr %l308, !tbaa !23
  %t703 = insertvalue { i32, { i64, ptr }, i32 } %t701, i32 %t702, 2
  %t704 = getelementptr { i64, [4 x i64] }, ptr %t696, i32 0, i32 1
  store { i32, { i64, ptr }, i32 } %t703, ptr %t704
  %t705 = load { i64, [4 x i64] }, ptr %t696
  %t707 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t705, ptr %t707
  store { i64, [5 x i64] } zeroinitializer, ptr %t708
  %t709 = getelementptr { i64, [5 x i64] }, ptr %t708, i32 0, i32 0
  store i64 15, ptr %t709
  %t710 = load %"compiler/source:Span", ptr %l298
  %t711 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t710, 0
  %t712 = load i32, ptr %l299, !tbaa !23
  %t713 = insertvalue { %"compiler/source:Span", i32, ptr } %t711, i32 %t712, 1
  %t715 = insertvalue { %"compiler/source:Span", i32, ptr } %t713, ptr %t707, 2
  %t716 = getelementptr { i64, [5 x i64] }, ptr %t708, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t715, ptr %t716
  %t717 = load { i64, [5 x i64] }, ptr %t708
  %t719 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t717, ptr %t719
  call void @__olang_scope_close(ptr %s0)
  store ptr %t719, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecomptimeCtx(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l3 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l8 = alloca ptr
  %l11 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l12 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l14 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l15 = alloca i32
  %l17 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l30 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l36 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l37 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l39 = alloca %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa"
  %l40 = alloca i32
  %l42 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t3)
  store ptr %t5, ptr %l8
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l8, !tbaa !29
  %t8 = getelementptr %"compiler/check:frame", ptr %t6, i32 0, i32 4
  %t9 = getelementptr %"compiler/generic:Context", ptr %t8, i32 0, i32 2
  %t11 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t9)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l11
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t12, ptr %l2
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t14 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l2)
  %t15 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t14, 1
  %t16 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t14, 0
  store i32 %t16, ptr %l15
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb6, label %ok.18, !prof !99
ok.18:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t15, ptr %l14
  br label %bb5
bb5:
  %t19 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l14
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t19, ptr %l12
  br label %bb8
bb6:
  %t20 = load i32, ptr %l15, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  store i1 %t23, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s2)
  br label %bb14
bb8:
  %t24 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l12
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t24, ptr %l3
  store ptr %l1, ptr %l18, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l3, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t25, i32 %t27)
  store { i64, ptr } %t30, ptr %l21
  br label %bb9
bb9:
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t33 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t36 = add i64 %t32, %t35
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t52, { i64, ptr } %t51)
  br label %bb10
bb10:
  store ptr %l1, ptr %l24, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/generic:Program", ptr %t57, i32 0, i32 2
  %t60 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l3, i32 0, i32 1
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = inttoptr i64 0 to ptr
  %t66 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s2, ptr %t63, ptr %t59, i32 %t61)
  store { i64, ptr } %t66, ptr %l30
  br label %bb11
bb11:
  %t67 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 0
  %t69 = extractvalue { i64, ptr } %t67, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  %t74 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t74, { i64, ptr } %t73)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  br label %bb4
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t76)
  store ptr %t78, ptr %l33
  br label %bb15
bb15:
  %t79 = load ptr, ptr %l33, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 4
  %t82 = getelementptr %"compiler/generic:Context", ptr %t81, i32 0, i32 3
  %t84 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v0, ptr %t82)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t84, ptr %l36
  br label %bb16
bb16:
  %t85 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l36
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t85, ptr %l4
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t87 = call { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %l4)
  %t88 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t87, 1
  %t89 = extractvalue { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } %t87, 0
  store i32 %t89, ptr %l40
  %t90 = icmp ne i32 %t89, 0
  br i1 %t90, label %bb19, label %ok.91, !prof !99
ok.91:
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t88, ptr %l39
  br label %bb18
bb18:
  %t92 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l39
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t92, ptr %l37
  br label %bb21
bb19:
  %t93 = load i32, ptr %l40, !tbaa !23
  %t94 = ashr i32 %t93, 16
  %t96 = icmp eq i32 %t94, 1
  store i1 %t96, ptr %l42, !tbaa !21
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s5)
  br label %bb27
bb21:
  %t97 = load %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l37
  store %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" %t97, ptr %l5
  store ptr %l1, ptr %l43, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l5, i32 0, i32 0
  %t100 = load i32, ptr %t99, !tbaa !23
  %t103 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s5, ptr %t98, i32 %t100)
  store { i64, ptr } %t103, ptr %l46
  br label %bb22
bb22:
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t106 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t106, 1
  %t108 = extractvalue { i64, ptr } %t106, 0
  %t109 = add i64 %t105, %t108
  %t110 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t111 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t112 = add i64 %t109, %t111
  %t113 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t112)
  call void @olang_textcopy(ptr %t113, ptr %t104, i64 %t105)
  %t114 = getelementptr i8, ptr %t113, i64 %t105
  call void @olang_textcopy(ptr %t114, ptr %t107, i64 %t108)
  %t115 = getelementptr i8, ptr %t114, i64 %t108
  call void @olang_textcopy(ptr %t115, ptr %t110, i64 %t111)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t113, 1
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t125 = load ptr, ptr %l43, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t125, { i64, ptr } %t124)
  br label %bb23
bb23:
  store ptr %l1, ptr %l49, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = getelementptr %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa", ptr %l5, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  %t136 = inttoptr i64 0 to ptr
  %t139 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %s5, ptr %t136, ptr %t132, i32 %t134)
  store { i64, ptr } %t139, ptr %l55
  br label %bb24
bb24:
  %t140 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 0
  %t142 = extractvalue { i64, ptr } %t140, 1
  %t143 = mul i64 %t141, 1
  %t144 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t143)
  call void @llvm.memcpy.p0.p0.i64(ptr %t144, ptr %t142, i64 %t143, i1 false)
  %t145 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t146 = insertvalue { i64, ptr } %t145, ptr %t144, 1
  %t147 = load ptr, ptr %l49, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s5, ptr %t147, { i64, ptr } %t146)
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb26:
  br label %bb17
bb27:
  %t150 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t150, ptr %l58
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t151 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t151, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econd1(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l15 = alloca i32
  %l19 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %l32 = alloca ptr
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t9 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v0, ptr %t2, ptr %t3, i32 %t5)
  store ptr %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t10)
  store %"compiler/source:Span" %t12, ptr %l11
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l4, !tbaa !29
  %t14 = load ptr, ptr %l9, !tbaa !29
  %t15 = load %"compiler/source:Span", ptr %l11
  %t16 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v2, ptr %t13, ptr %t14, %"compiler/source:Span" %t15)
  store ptr %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l12, !tbaa !29
  store ptr %t17, ptr %l2, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t18)
  store i32 %t21, ptr %l15
  br label %bb4
bb4:
  %t22 = load i32, ptr %l15, !tbaa !23
  store i32 %t22, ptr %l3, !tbaa !23
  %t23 = load i32, ptr %l3, !tbaa !23
  %t24 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t27 = icmp ne i32 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i32, ptr %l3, !tbaa !23
  %t30 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t33 = icmp ne i32 %t29, %t30
  store i1 %t33, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l23, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t37)
  store %"compiler/source:Span" %t39, ptr %l25
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t40, i32 %t41)
  store { i64, ptr } %t44, ptr %l28
  br label %bb11
bb11:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  %t47 = extractvalue { i64, ptr } %t45, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %s1, ptr %v0, { i64, ptr } %t51)
  store %"compiler/diagmsg:Msg" %t53, ptr %l30
  br label %bb12
bb12:
  %t54 = load ptr, ptr %l23, !tbaa !29
  %t55 = load %"compiler/source:Span", ptr %l25
  %t56 = load %"compiler/diagmsg:Msg", ptr %l30
  %t57 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t54, %"compiler/source:Span" %t55, %"compiler/diagmsg:Msg" %t56)
  store i64 %t57, ptr %l31
  br label %bb13
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l32, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t59)
  store %"compiler/source:Span" %t61, ptr %l34
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l34
  %t64 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t62, %"compiler/source:Span" %t63)
  store ptr %t64, ptr %l35
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s1)
  %t65 = load ptr, ptr %l35, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
bb16:
  %t66 = load ptr, ptr %l2, !tbaa !29
  store ptr %t66, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountsTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l26 = alloca { i64, ptr }
  %l28 = alloca i1
  %l29 = alloca i1
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 22
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t16 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  %t20 = icmp eq i64 %t18, 1
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 0
  %t27 = load ptr, ptr %t26, !tbaa !39
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t32 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %t22, ptr %t27, ptr %t28)
  store i1 %t32, ptr %l19
  br label %bb8
bb7:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb9
bb8:
  %t33 = load i1, ptr %l19, !tbaa !21
  store i1 %t33, ptr %l14, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l14, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb20
bb11:
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t39 = icmp eq i64 %t37, 2
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t42, ptr %l26, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr ptr, ptr %t44, i64 0
  %t46 = load ptr, ptr %t45, !tbaa !39
  %t49 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisZeroLit(ptr %v0, ptr %v1, ptr %t41, ptr %t46)
  store i1 %t49, ptr %l28
  br label %bb14
bb13:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t50 = load i1, ptr %l28, !tbaa !21
  store i1 %t50, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb16, label %bb17
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t53, ptr %l31, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr ptr, ptr %t55, i64 1
  %t57 = load ptr, ptr %t56, !tbaa !39
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t62 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %t52, ptr %t57, ptr %t58)
  store i1 %t62, ptr %l34
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb19
bb18:
  %t63 = load i1, ptr %l34, !tbaa !21
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb19
bb19:
  %t64 = load i1, ptr %l29, !tbaa !21
  store i1 %t64, ptr %l20, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l20, !tbaa !21
  store i1 %t65, ptr %l4, !tbaa !21
  br label %bb26
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_d2b428b6a63c5a88_9cb41cac42ab9d54)
  unreachable
bb26:
  %t66 = load i1, ptr %l4, !tbaa !21
  store i1 %t66, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversEnum(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l37 = alloca { i64, ptr }
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l86 = alloca i64
  %l90 = alloca i1
  %l94 = alloca i64
  %l96 = alloca i64
  %l101 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l104 = alloca ptr
  %l105 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca i1
  %l119 = alloca i64
  %l123 = alloca ptr
  %l124 = alloca i1
  %l132 = alloca i64
  %l145 = alloca { i64, ptr }
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca i64
  %l159 = alloca i64
  %l164 = alloca { i64, ptr }
  %l166 = alloca { i64, ptr }
  %l168 = alloca i1
  %l169 = alloca ptr
  %l170 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l182 = alloca i1
  %l187 = alloca i64
  %l190 = alloca i64
  %l211 = alloca i1
  %l216 = alloca i32
  %l220 = alloca { i64, ptr }
  %l223 = alloca ptr
  %l228 = alloca i32
  %l229 = alloca { i64, ptr }
  %l233 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l241 = alloca { i64, ptr }
  %l255 = alloca { i64, ptr }
  %l262 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca ptr
  %l272 = alloca ptr
  %l274 = alloca { i64, ptr }
  %l277 = alloca i1
  %s0 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l50, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l55
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l50, !tbaa !29
  %t18 = load i32, ptr %l55, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l56
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l5, !tbaa !24
  store i64 %t23, ptr %l58, !tbaa !24
  %t24 = load i64, ptr %l58, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  br i1 %t25, label %bb3, label %bb4
bb3:
  %t27 = load i64, ptr %l58, !tbaa !24
  %t28 = mul i64 %t27, 1
  %t29 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t27, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t33 = load i64, ptr %l5, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp sgt i64 %t35, %t36
  br i1 %t39, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_dc96952efd58d57f_13ab851f4a84cc1b)
  unreachable
bb5:
  %t41 = load i64, ptr %l9, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb10
bb7:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = sub i64 %t45, %t46
  %t50 = load i64, ptr %l9, !tbaa !24
  %t53 = add i64 %t49, %t50
  %t55 = sub i64 %t53, 1
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = sdiv i64 %t55, %t56
  store i64 %t59, ptr %l68, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb9
bb9:
  %t61 = load i64, ptr %l68, !tbaa !24
  store i64 %t61, ptr %l65, !tbaa !24
  br label %bb10
bb10:
  %t62 = load i64, ptr %l65, !tbaa !24
  store i64 %t62, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l11, !tbaa !24
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l11, !tbaa !24
  %t73 = load i64, ptr %l9, !tbaa !24
  %t76 = mul i64 %t72, %t73
  %t79 = add i64 %t71, %t76
  store i64 %t79, ptr %l12, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  store i64 %t81, ptr %l86, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  %t84 = load i64, ptr %l12, !tbaa !24
  %t88 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %t82, i32 %t83, i64 %t84)
  store i1 %t88, ptr %l90
  br label %bb15
bb15:
  %t89 = load i1, ptr %l90, !tbaa !21
  %t90 = load i64, ptr %l86, !tbaa !24
  %t91 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i1, ptr %t92, i64 %t90
  store i1 %t89, ptr %t93, !tbaa !31
  br label %bb16
bb16:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l11, !tbaa !24
  br label %bb11
bb17:
  %t98 = load ptr, ptr %l1, !tbaa !29
  store ptr %t98, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb18
bb18:
  %t100 = load i64, ptr %l14, !tbaa !24
  store i64 %t100, ptr %l94, !tbaa !24
  %t101 = load ptr, ptr %l13, !tbaa !29
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t101)
  store i64 %t103, ptr %l96
  br label %bb19
bb19:
  %t104 = load i64, ptr %l94, !tbaa !24
  %t105 = load i64, ptr %l96, !tbaa !24
  %t106 = icmp slt i64 %t104, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb20, label %bb21
bb20:
  br label %bb54
bb21:
  br label %bb22
bb22:
  %t110 = load ptr, ptr %l13, !tbaa !29
  %t111 = load i64, ptr %l14, !tbaa !24
  %t114 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t110, i64 %t111)
  store { i64, ptr } %t114, ptr %l101
  br label %bb23
bb23:
  %t115 = load { i64, ptr }, ptr %l101, !tbaa !27
  store { i64, ptr } %t115, ptr %l102, !tbaa !27
  %t117 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t118 = load ptr, ptr %t117, !tbaa !27
  %t119 = getelementptr ptr, ptr %t118, i64 0
  %t120 = load ptr, ptr %t119, !tbaa !39
  store ptr %t120, ptr %l16, !tbaa !29
  %t122 = load ptr, ptr %l16, !tbaa !29
  store ptr %t122, ptr %l104, !tbaa !29
  store i1 false, ptr %l105, !tbaa !21
  %t123 = load ptr, ptr %l104, !tbaa !29
  %t124 = icmp ne ptr %t123, null
  br i1 %t124, label %bb24, label %bb25
bb24:
  %t126 = load ptr, ptr %l104, !tbaa !29
  %t127 = load i64, ptr %t126, !range !{i64 0, i64 9}
  %t129 = icmp eq i64 %t127, 1
  store i1 %t129, ptr %l105, !tbaa !21
  br label %bb25
bb25:
  %t130 = load i1, ptr %l105, !tbaa !21
  br i1 %t130, label %bb26, label %bb27
bb26:
  %t131 = load ptr, ptr %l16, !tbaa !29
  %t133 = getelementptr { i64, [4 x i64] }, ptr %t131, i32 0, i32 1
  %t134 = getelementptr { %"compiler/source:Span", ptr }, ptr %t133, i32 0, i32 1
  %t135 = load ptr, ptr %t134
  store ptr %t135, ptr %l17, !tbaa !29
  br label %bb32
bb27:
  %t137 = load ptr, ptr %l16, !tbaa !29
  store ptr %t137, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t138 = load ptr, ptr %l110, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb28, label %bb29
bb28:
  %t141 = load ptr, ptr %l110, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 9}
  %t144 = icmp eq i64 %t142, 4
  store i1 %t144, ptr %l111, !tbaa !21
  br label %bb29
bb29:
  %t145 = load i1, ptr %l111, !tbaa !21
  br i1 %t145, label %bb30, label %bb31
bb30:
  %t146 = load ptr, ptr %l16, !tbaa !29
  %t148 = getelementptr { i64, [4 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", ptr }, ptr %t148, i32 0, i32 1
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l17, !tbaa !29
  br label %bb32
bb31:
  br label %bb37
bb32:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l17, !tbaa !29
  %t154 = load i32, ptr %l2, !tbaa !23
  %t158 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t152, ptr %t153, i32 %t154)
  store i64 %t158, ptr %l119
  br label %bb33
bb33:
  %t159 = load i64, ptr %l119, !tbaa !24
  store i64 %t159, ptr %l18, !tbaa !24
  %t160 = load i64, ptr %l18, !tbaa !24
  %t162 = icmp sge i64 %t160, 0
  br i1 %t162, label %bb34, label %bb35
bb34:
  %t164 = load i64, ptr %l18, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i1, ptr %t167, i64 %t164
  store i1 true, ptr %t168, !tbaa !31
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb52
bb37:
  %t169 = load ptr, ptr %l16, !tbaa !29
  store ptr %t169, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t170 = load ptr, ptr %l123, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb38, label %bb39
bb38:
  %t173 = load ptr, ptr %l123, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 9}
  %t176 = icmp eq i64 %t174, 2
  store i1 %t176, ptr %l124, !tbaa !21
  br label %bb39
bb39:
  %t177 = load i1, ptr %l124, !tbaa !21
  br i1 %t177, label %bb40, label %bb41
bb40:
  %t178 = load ptr, ptr %l16, !tbaa !29
  %t180 = getelementptr { i64, [4 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t180, i32 0, i32 1
  %t182 = load ptr, ptr %t181
  store ptr %t182, ptr %l19, !tbaa !29
  br label %bb42
bb41:
  br label %bb47
bb42:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l19, !tbaa !29
  %t186 = load i32, ptr %l2, !tbaa !23
  %t190 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %t184, ptr %t185, i32 %t186)
  store i64 %t190, ptr %l132
  br label %bb43
bb43:
  %t191 = load i64, ptr %l132, !tbaa !24
  store i64 %t191, ptr %l20, !tbaa !24
  %t192 = load i64, ptr %l20, !tbaa !24
  %t194 = icmp sge i64 %t192, 0
  br i1 %t194, label %bb44, label %bb45
bb44:
  %t196 = load i64, ptr %l20, !tbaa !24
  %t198 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr i1, ptr %t199, i64 %t196
  store i1 true, ptr %t200, !tbaa !31
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_e9544fbf2b0a61a9_67f2bf84451b683d)
  unreachable
bb52:
  br label %bb53
bb53:
  %t201 = load i64, ptr %l14, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l14, !tbaa !24
  br label %bb18
bb54:
  store i1 true, ptr %l21, !tbaa !21
  %t205 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t205, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t207 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t207, 0
  store i64 %t209, ptr %l24, !tbaa !24
  br label %bb55
bb55:
  %t211 = load i64, ptr %l23, !tbaa !24
  %t212 = load i64, ptr %l24, !tbaa !24
  %t215 = icmp slt i64 %t211, %t212
  %t217 = xor i1 %t215, true
  br i1 %t217, label %bb56, label %bb57
bb56:
  br label %bb63
bb57:
  br label %bb58
bb58:
  %t219 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t219, ptr %l145, !tbaa !27
  %t220 = load i64, ptr %l23, !tbaa !24
  %t222 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !27
  %t224 = getelementptr i1, ptr %t223, i64 %t220
  %t225 = load i1, ptr %t224, !tbaa !31
  %t229 = xor i1 %t225, true
  br i1 %t229, label %bb59, label %bb60
bb59:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb61
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t231 = load i64, ptr %l23, !tbaa !24
  %t233 = add i64 %t231, 1
  store i64 %t233, ptr %l23, !tbaa !24
  br label %bb55
bb63:
  %t235 = load i1, ptr %l21, !tbaa !21
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s16
  %t239 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %s16, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l154
  br label %bb66
bb65:
  br label %bb86
bb66:
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  %t241 = call ptr @__olang_scope_alloc_a(ptr %s16, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %t241
  store ptr %t241, ptr %l26, !tbaa !29
  %t243 = load ptr, ptr %l1, !tbaa !29
  store ptr %t243, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb67
bb67:
  %t245 = load i64, ptr %l28, !tbaa !24
  store i64 %t245, ptr %l157, !tbaa !24
  %t246 = load ptr, ptr %l27, !tbaa !29
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v1, ptr %t246)
  store i64 %t248, ptr %l159
  br label %bb68
bb68:
  %t249 = load i64, ptr %l157, !tbaa !24
  %t250 = load i64, ptr %l159, !tbaa !24
  %t251 = icmp slt i64 %t249, %t250
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb69, label %bb70
bb69:
  br label %bb84
bb70:
  br label %bb71
bb71:
  %t255 = load ptr, ptr %l27, !tbaa !29
  %t256 = load i64, ptr %l28, !tbaa !24
  %t259 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v1, ptr %v1, ptr %t255, i64 %t256)
  store { i64, ptr } %t259, ptr %l164
  br label %bb72
bb72:
  %t260 = load { i64, ptr }, ptr %l164, !tbaa !27
  store { i64, ptr } %t260, ptr %l29, !tbaa !27
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t262, ptr %l166, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t264 = load ptr, ptr %t263, !tbaa !27
  %t265 = getelementptr ptr, ptr %t264, i64 0
  %t266 = load ptr, ptr %t265, !tbaa !39
  %t269 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %t261, ptr %t266)
  store i1 %t269, ptr %l168
  br label %bb73
bb73:
  %t270 = load i1, ptr %l168, !tbaa !21
  br i1 %t270, label %bb74, label %bb75
bb74:
  %t271 = load ptr, ptr %l26, !tbaa !29
  store ptr %t271, ptr %l169, !tbaa !29
  %t272 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t272, ptr %l170, !tbaa !27
  %t273 = icmp sge i64 0, 0
  br i1 %t273, label %bb76, label %bb77
bb75:
  br label %bb82
bb76:
  %t275 = icmp sle i64 0, 1152921504606846975
  br i1 %t275, label %bb78, label %bb79
bb77:
  call void @__olang_check_failed(ptr @olang_loc_9513b8e4767691e9_4aeaec2af08924a5)
  unreachable
bb78:
  %t277 = mul i64 0, 8
  %t278 = insertvalue { i64, ptr } undef, i64 0, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t280 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t282 = call { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t280, { i64, ptr } %t279, i64 0)
  store { i64, ptr } %t282, ptr %l174
  br label %bb80
bb79:
  call void @__olang_check_failed(ptr @olang_loc_9513b8e4767691e9_4aeaec2af08924a5)
  unreachable
bb80:
  %t283 = load ptr, ptr %l169, !tbaa !29
  %t284 = load { i64, ptr }, ptr %l174, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %s16, ptr %v1, ptr %t283, { i64, ptr } %t284)
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t285 = load i64, ptr %l28, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l28, !tbaa !24
  br label %bb67
bb84:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l26, !tbaa !29
  %t291 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t292 = load i64, ptr %l4, !tbaa !24
  %t294 = add i64 %t292, 1
  %t299 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %s16, ptr %v2, ptr %t289, ptr %t290, { i64, ptr } %t291, i64 %t294)
  store i1 %t299, ptr %l182
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t300 = load i1, ptr %l182, !tbaa !21
  store i1 %t300, ptr %rv
  br label %ret
bb86:
  store i64 0, ptr %l30, !tbaa !24
  %t301 = load i64, ptr %l5, !tbaa !24
  store i64 %t301, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t303 = load i64, ptr %l31, !tbaa !24
  %t304 = load i64, ptr %l30, !tbaa !24
  %t307 = icmp sgt i64 %t303, %t304
  br i1 %t307, label %bb87, label %bb88
bb87:
  %t309 = load i64, ptr %l32, !tbaa !24
  %t311 = icmp sgt i64 %t309, 0
  br i1 %t311, label %bb89, label %bb90
bb88:
  store i64 0, ptr %l187, !tbaa !24
  br label %bb92
bb89:
  %t313 = load i64, ptr %l31, !tbaa !24
  %t314 = load i64, ptr %l30, !tbaa !24
  %t317 = sub i64 %t313, %t314
  %t318 = load i64, ptr %l32, !tbaa !24
  %t321 = add i64 %t317, %t318
  %t323 = sub i64 %t321, 1
  %t324 = load i64, ptr %l32, !tbaa !24
  %t327 = sdiv i64 %t323, %t324
  store i64 %t327, ptr %l190, !tbaa !24
  br label %bb91
bb90:
  store i64 0, ptr %l190, !tbaa !24
  br label %bb91
bb91:
  %t329 = load i64, ptr %l190, !tbaa !24
  store i64 %t329, ptr %l187, !tbaa !24
  br label %bb92
bb92:
  %t330 = load i64, ptr %l187, !tbaa !24
  store i64 %t330, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s22
  %t331 = load i64, ptr %l34, !tbaa !24
  %t332 = load i64, ptr %l33, !tbaa !24
  %t335 = icmp slt i64 %t331, %t332
  %t337 = xor i1 %t335, true
  br i1 %t337, label %bb94, label %bb95
bb94:
  call void @__olang_scope_close(ptr %s22)
  br label %bb134
bb95:
  br label %bb96
bb96:
  %t339 = load i64, ptr %l30, !tbaa !24
  %t340 = load i64, ptr %l34, !tbaa !24
  %t341 = load i64, ptr %l32, !tbaa !24
  %t344 = mul i64 %t340, %t341
  %t347 = add i64 %t339, %t344
  store i64 %t347, ptr %l35, !tbaa !24
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i32, ptr %l2, !tbaa !23
  %t351 = load i64, ptr %l35, !tbaa !24
  %t355 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %t349, i32 %t350, i64 %t351)
  store i1 %t355, ptr %l211
  br label %bb97
bb97:
  %t356 = load i1, ptr %l211, !tbaa !21
  br i1 %t356, label %bb98, label %bb99
bb98:
  call void @__olang_scope_close(ptr %s22)
  br label %bb133
bb99:
  br label %bb100
bb100:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"compiler/check:Checker", ptr %t357, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !29
  %t361 = load i32, ptr %l2, !tbaa !23
  %t362 = load i64, ptr %l35, !tbaa !24
  %t366 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %t360, i32 %t361, i64 %t362)
  store i32 %t366, ptr %l216
  br label %bb101
bb101:
  %t367 = load i32, ptr %l216, !tbaa !23
  store i32 %t367, ptr %l36, !tbaa !23
  %t368 = load i32, ptr %l36, !tbaa !23
  %t369 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t372 = icmp ne i32 %t368, %t369
  br i1 %t372, label %bb102, label %bb103
bb102:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr %"compiler/check:Checker", ptr %t374, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !29
  %t379 = getelementptr %"compiler/generic:Program", ptr %t377, i32 0, i32 2
  store ptr %t379, ptr %l223, !tbaa !29
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = getelementptr %"compiler/check:Checker", ptr %t380, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !29
  %t385 = getelementptr %"compiler/generic:Program", ptr %t383, i32 0, i32 2
  %t386 = load i32, ptr %l36, !tbaa !23
  %t389 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t385, i32 %t386)
  store i32 %t389, ptr %l228
  br label %bb104
bb103:
  %t390 = icmp sge i64 0, 0
  br i1 %t390, label %bb106, label %bb107
bb104:
  %t392 = load ptr, ptr %l223, !tbaa !29
  %t393 = load i32, ptr %l228, !tbaa !23
  %t394 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s22, ptr %t392, i32 %t393)
  store { i64, ptr } %t394, ptr %l229
  br label %bb105
bb105:
  %t395 = load { i64, ptr }, ptr %l229, !tbaa !27
  store { i64, ptr } %t395, ptr %l220, !tbaa !27
  br label %bb110
bb106:
  %t396 = icmp sle i64 0, 2305843009213693951
  br i1 %t396, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_115a9cfe723c601c_366482a71f8d2a38)
  unreachable
bb108:
  %t398 = mul i64 0, 4
  %t399 = insertvalue { i64, ptr } undef, i64 0, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t400, ptr %l220, !tbaa !27
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_115a9cfe723c601c_366482a71f8d2a38)
  unreachable
bb110:
  %t402 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t402, ptr %l37, !tbaa !27
  %t403 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t403, ptr %l233
  br label %bb111
bb111:
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l233
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %l38
  %t405 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t405, ptr %l39, !tbaa !27
  store i64 0, ptr %l40, !tbaa !24
  %t407 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  store i64 %t409, ptr %l41, !tbaa !24
  br label %bb112
bb112:
  %t411 = load i64, ptr %l40, !tbaa !24
  %t412 = load i64, ptr %l41, !tbaa !24
  %t415 = icmp slt i64 %t411, %t412
  %t417 = xor i1 %t415, true
  br i1 %t417, label %bb113, label %bb114
bb113:
  br label %bb118
bb114:
  br label %bb115
bb115:
  %t419 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t419, ptr %l241, !tbaa !27
  %t420 = load i64, ptr %l40, !tbaa !24
  %t422 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr i32, ptr %t423, i64 %t420
  %t425 = load i32, ptr %t424, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s22, ptr %l38, i32 %t425)
  br label %bb116
bb116:
  br label %bb117
bb117:
  %t430 = load i64, ptr %l40, !tbaa !24
  %t432 = add i64 %t430, 1
  store i64 %t432, ptr %l40, !tbaa !24
  br label %bb112
bb118:
  %t434 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t434, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t436 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t438 = extractvalue { i64, ptr } %t436, 0
  store i64 %t438, ptr %l45, !tbaa !24
  br label %bb119
bb119:
  %t440 = load i64, ptr %l44, !tbaa !24
  %t441 = load i64, ptr %l45, !tbaa !24
  %t444 = icmp slt i64 %t440, %t441
  %t446 = xor i1 %t444, true
  br i1 %t446, label %bb120, label %bb121
bb120:
  br label %bb125
bb121:
  br label %bb122
bb122:
  %t448 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t448, ptr %l255, !tbaa !27
  %t449 = load i64, ptr %l44, !tbaa !24
  %t451 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr i32, ptr %t452, i64 %t449
  %t454 = load i32, ptr %t453, !tbaa !33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s22, ptr %l38, i32 %t454)
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t459 = load i64, ptr %l44, !tbaa !24
  %t461 = add i64 %t459, 1
  store i64 %t461, ptr %l44, !tbaa !24
  br label %bb119
bb125:
  %t463 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t463, ptr %l262
  br label %bb126
bb126:
  %t464 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l262
  %t465 = call ptr @__olang_scope_alloc_a(ptr %s22, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t464, ptr %t465
  store ptr %t465, ptr %l47, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t468 = load ptr, ptr %l47, !tbaa !29
  %t469 = load ptr, ptr %l1, !tbaa !29
  %t470 = load i32, ptr %l2, !tbaa !23
  %t471 = load i64, ptr %l35, !tbaa !24
  %t472 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t472, 0
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseRows(ptr %v0, ptr %s22, ptr %v1, ptr %t467, ptr %t468, ptr %t469, i32 %t470, i64 %t471, i64 %t474)
  br label %bb127
bb127:
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l271, !tbaa !29
  %t482 = load ptr, ptr %l47, !tbaa !29
  store ptr %t482, ptr %l272, !tbaa !29
  %t484 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %s22, ptr %s22, ptr %l38)
  store { i64, ptr } %t484, ptr %l274
  br label %bb128
bb128:
  %t485 = load i64, ptr %l4, !tbaa !24
  %t487 = add i64 %t485, 1
  %t488 = load ptr, ptr %l271, !tbaa !29
  %t489 = load ptr, ptr %l272, !tbaa !29
  %t490 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t492 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %s22, ptr %s22, ptr %t488, ptr %t489, { i64, ptr } %t490, i64 %t487)
  store i1 %t492, ptr %l277
  br label %bb129
bb129:
  %t493 = load i1, ptr %l277, !tbaa !21
  %t494 = xor i1 %t493, true
  br i1 %t494, label %bb130, label %bb131
bb130:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb131:
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s22)
  br label %bb133
bb133:
  %t497 = load i64, ptr %l34, !tbaa !24
  %t499 = add i64 %t497, 1
  store i64 %t499, ptr %l34, !tbaa !24
  br label %bb93
bb134:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %lp4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, i64, i64 }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %l19 = alloca ptr
  %l21 = alloca i32
  %l23 = alloca i32
  %l27 = alloca ptr
  %l34 = alloca i64
  %l38 = alloca { i64, i64, i64 }
  %l44 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l52 = alloca ptr
  %l56 = alloca ptr
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l69 = alloca ptr
  %l71 = alloca %"compiler/typed:If"
  %rv = alloca ptr
  %t21 = alloca { i64, [5 x i64] }, align 8
  %t39 = alloca { i64, [3 x i64] }, align 8
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t109 = alloca { i64, [3 x i64] }, align 8
  %t149 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t1, ptr %l11
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l12, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t3, ptr %l13
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t4, ptr %l14, !tbaa !23
  store i32 30, ptr %l15
  %t5 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t5, ptr %l16
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/generic:Program", ptr %t9, i32 0, i32 2
  store ptr %t11, ptr %l19, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t12)
  store i32 %t14, ptr %l21
  br label %bb1
bb1:
  %t15 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t16 = load ptr, ptr %l19, !tbaa !29
  %t17 = load i32, ptr %l21, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t16, i32 %t17, i64 %t15)
  store i32 %t19, ptr %l23
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 0
  store i64 3, ptr %t22
  %t23 = load %"compiler/source:Span", ptr %l16
  %t24 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t23, 0
  %t25 = load i32, ptr %l23, !tbaa !23
  %t26 = insertvalue { %"compiler/source:Span", i32, ptr } %t24, i32 %t25, 1
  %t28 = insertvalue { %"compiler/source:Span", i32, ptr } %t26, ptr %t20, 2
  %t29 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t28, ptr %t29
  %t30 = load { i64, [5 x i64] }, ptr %t21
  %t32 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t30, ptr %t32
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l13
  %t35 = load i32, ptr %l14, !tbaa !23
  %t36 = load i32, ptr %l15, !range !{i32 0, i32 51}
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v2, ptr %t33, %"compiler/source:Span" %t34, i32 %t35, i32 %t36, ptr %t32, ptr null)
  store ptr %t38, ptr %l27
  br label %bb3
bb3:
  store { i64, [3 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 0
  store i64 2, ptr %t40
  %t41 = load %"compiler/source:Span", ptr %l11
  %t42 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t41, 0
  %t43 = load ptr, ptr %l27, !tbaa !29
  %t44 = insertvalue { %"compiler/source:Span", ptr } %t42, ptr %t43, 1
  %t45 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t44, ptr %t45
  %t46 = load { i64, [3 x i64] }, ptr %t39
  %t47 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t47, ptr %lp4
  %t49 = load ptr, ptr %lp4
  store { i64, [3 x i64] } %t46, ptr %t49
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp slt i64 %t50, 0
  br i1 %t52, label %bb4, label %bb5
bb4:
  %t54 = load ptr, ptr %lp4
  store ptr %t54, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 44
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t58)
  store i64 %t60, ptr %l34
  br label %bb7
bb7:
  %t61 = load i64, ptr %l34, !tbaa !24
  store i64 %t61, ptr %l5, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load %"compiler/source:Span", ptr %l1
  %t67 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t62, i32 1, %"compiler/source:Span" %t63)
  store { i64, i64, i64 } %t67, ptr %l38
  br label %bb8
bb8:
  %t68 = load { i64, i64, i64 }, ptr %l38
  store { i64, i64, i64 } %t68, ptr %l6
  %t69 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 0
  %t70 = load i64, ptr %t69, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  %t72 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 1
  %t73 = load i64, ptr %t72, !tbaa !24
  store i64 %t73, ptr %l8, !tbaa !24
  %t75 = getelementptr { i64, i64, i64 }, ptr %l6, i32 0, i32 2
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load ptr, ptr %lp4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v2, ptr %t78, ptr %t79)
  br label %bb9
bb9:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l44, !tbaa !29
  %t83 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t83, ptr %l45
  %t84 = load %"compiler/source:Span", ptr %l1
  %t85 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t86 = load i64, ptr %l3, !tbaa !24
  %t88 = trunc i64 %t86 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 0, ptr %t91
  %t93 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t84, 0
  %t95 = insertvalue { %"compiler/source:Span", i32, i32 } %t93, i32 %t85, 1
  %t97 = insertvalue { %"compiler/source:Span", i32, i32 } %t95, i32 %t88, 2
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t97, ptr %t98
  %t99 = load { i64, [4 x i64] }, ptr %t90
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t99, ptr %t101
  store ptr %t101, ptr %l52, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l1
  %t104 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t108 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, i32 %t104, i64 0)
  store ptr %t108, ptr %l56
  br label %bb10
bb10:
  store { i64, [3 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [3 x i64] }, ptr %t109, i32 0, i32 0
  store i64 1, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l45
  %t112 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t111, 0
  %t113 = load ptr, ptr %l52, !tbaa !29
  %t114 = insertvalue { %"compiler/source:Span", ptr, ptr } %t112, ptr %t113, 1
  %t115 = load ptr, ptr %l56, !tbaa !29
  %t116 = insertvalue { %"compiler/source:Span", ptr, ptr } %t114, ptr %t115, 2
  %t117 = getelementptr { i64, [3 x i64] }, ptr %t109, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t116, ptr %t117
  %t118 = load { i64, [3 x i64] }, ptr %t109
  %t120 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t118, ptr %t120
  %t121 = load ptr, ptr %l44, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t121, ptr %t120)
  br label %bb11
bb11:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l7, !tbaa !24
  %t125 = load i64, ptr %l8, !tbaa !24
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load i64, ptr %l5, !tbaa !24
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v2, ptr %t123, i64 %t124, i64 %t125, i64 %t126, i64 %t127)
  store ptr %t133, ptr %l64
  br label %bb12
bb12:
  %t134 = load ptr, ptr %l64, !tbaa !29
  store ptr %t134, ptr %l10, !tbaa !29
  %t135 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t135, ptr %l65
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load %"compiler/source:Span", ptr %l1
  %t138 = load i64, ptr %l3, !tbaa !24
  %t142 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t136, %"compiler/source:Span" %t137, i64 %t138)
  store ptr %t142, ptr %l69
  br label %bb13
bb13:
  %t143 = load ptr, ptr %l10, !tbaa !29
  %t144 = load ptr, ptr %l69, !tbaa !29
  %t146 = call %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, ptr %t144, ptr %t143, ptr null)
  store %"compiler/typed:If" %t146, ptr %l71
  br label %bb14
bb14:
  %t147 = load %"compiler/typed:If", ptr %l71
  %t148 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store %"compiler/typed:If" %t147, ptr %t148
  store { i64, [3 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 0
  store i64 3, ptr %t150
  %t151 = load %"compiler/source:Span", ptr %l65
  %t152 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t151, 0
  %t154 = insertvalue { %"compiler/source:Span", ptr } %t152, ptr %t148, 1
  %t155 = getelementptr { i64, [3 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t154, ptr %t155
  %t156 = load { i64, [3 x i64] }, ptr %t149
  %t158 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store { i64, [3 x i64] } %t156, ptr %t158
  store ptr %t158, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 4}
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
  %t158 = load i32, ptr %t157, !range !{i32 0, i32 4}
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

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrItemPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l6 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l19 = alloca %"compiler/names:Ref"
  %l24 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca i32
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l52 = alloca %"compiler/source:Span"
  %l54 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l64 = alloca %"compiler/ast:Path"
  %l66 = alloca i32
  %l71 = alloca ptr
  %l76 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call ptr @compiler_2fcheck_2eexprPath(ptr %v1, ptr %s0, ptr %a1)
  store ptr %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l6, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = getelementptr %"compiler/generic:Program", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t17)
  store ptr %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load ptr, ptr %l14, !tbaa !29
  %t22 = getelementptr %"compiler/check:frame", ptr %t20, i32 0, i32 2
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l2, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Path", ptr %t24, i32 0, i32 0
  %t27 = getelementptr %"compiler/source:Span", ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27, !tbaa !23
  %t29 = load ptr, ptr %l12, !tbaa !29
  %t32 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t29, i64 %t23, i32 %t28)
  store %"compiler/names:Ref" %t32, ptr %l19
  br label %bb6
bb6:
  %t33 = getelementptr %"compiler/names:Ref", ptr %l19, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 9}
  store i32 %t34, ptr %l3
  %t36 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb7, label %bb8
bb7:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t45 = trunc i64 5 to i32
  %t46 = icmp eq i32 %t43, %t45
  %t48 = xor i1 %t46, true
  store i1 %t48, ptr %l24, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb9
bb9:
  %t50 = load i1, ptr %l24, !tbaa !21
  br i1 %t50, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %l30, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l32
  br label %bb13
bb13:
  %t59 = load ptr, ptr %l32, !tbaa !29
  %t61 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 4
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t63 = load ptr, ptr %l30, !tbaa !29
  %t66 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t63, ptr %t61, ptr %t62)
  store i32 %t66, ptr %l36
  br label %bb14
bb14:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t68 = load i32, ptr %l36, !tbaa !23
  %t70 = icmp ne i32 %t68, %t67
  br i1 %t70, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t75 = getelementptr %"compiler/ast:Path", ptr %t73, i32 0, i32 1
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  %t78 = extractvalue { i64, ptr } %t76, 0
  %t80 = icmp slt i64 %t78, 2
  br i1 %t80, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !29
  store ptr %t86, ptr %l46, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t87)
  store ptr %t89, ptr %l48
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l48, !tbaa !29
  %t92 = getelementptr %"compiler/check:frame", ptr %t90, i32 0, i32 4
  store ptr %t92, ptr %l50, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr %"compiler/ast:Path", ptr %t93, i32 0, i32 0
  %t96 = load %"compiler/source:Span", ptr %t95
  store %"compiler/source:Span" %t96, ptr %l52
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t99 = getelementptr %"compiler/ast:Path", ptr %t97, i32 0, i32 1
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l54, !tbaa !27
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/ast:Path", ptr %t101, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  %t108 = sub i64 %t106, 1
  store i64 %t108, ptr %l58, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  store i64 %t110, ptr %l59, !tbaa !24
  %t111 = icmp sge i64 0, 0
  br i1 %t111, label %bb22, label %bb23
bb22:
  %t113 = load i64, ptr %l58, !tbaa !24
  %t114 = icmp sle i64 0, %t113
  br i1 %t114, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb24:
  %t116 = load i64, ptr %l58, !tbaa !24
  %t117 = load i64, ptr %l59, !tbaa !24
  %t118 = icmp sle i64 %t116, %t117
  br i1 %t118, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb26:
  %t120 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = load i64, ptr %l58, !tbaa !24
  %t123 = getelementptr i32, ptr %t121, i64 0
  %t124 = sub i64 %t122, 0
  %t125 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t123, 1
  %t127 = load %"compiler/source:Span", ptr %l52
  %t129 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %s0, ptr %s0, %"compiler/source:Span" %t127, { i64, ptr } %t126)
  store %"compiler/ast:Path" %t129, ptr %l64
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b)
  unreachable
bb28:
  %t130 = load ptr, ptr %l46, !tbaa !29
  %t131 = load ptr, ptr %l50, !tbaa !29
  %t133 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v0, ptr %s0, ptr %t130, ptr %t131, ptr %l64)
  store i32 %t133, ptr %l66
  br label %bb29
bb29:
  %t134 = load i32, ptr %l66, !tbaa !23
  store i32 %t134, ptr %l4, !tbaa !23
  %t135 = load i32, ptr %l4, !tbaa !23
  %t136 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t139 = icmp eq i32 %t135, %t136
  br i1 %t139, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l71, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/check:Checker", ptr %t143, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t148 = getelementptr %"compiler/generic:Program", ptr %t146, i32 0, i32 2
  %t149 = load i32, ptr %l4, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t148, i32 %t149)
  store i32 %t152, ptr %l76
  br label %bb33
bb33:
  %t153 = load ptr, ptr %l2, !tbaa !29
  %t155 = getelementptr %"compiler/ast:Path", ptr %t153, i32 0, i32 1
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l78, !tbaa !27
  %t157 = load ptr, ptr %l2, !tbaa !29
  %t159 = getelementptr %"compiler/ast:Path", ptr %t157, i32 0, i32 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t164 = sub i64 %t162, 1
  %t166 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i32, ptr %t167, i64 %t164
  %t169 = load i32, ptr %t168, !tbaa !33
  %t170 = load ptr, ptr %l71, !tbaa !29
  %t171 = load i32, ptr %l76, !tbaa !23
  %t173 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %t170, i32 %t171, i32 %t169)
  store i64 %t173, ptr %l84
  br label %bb34
bb34:
  %t174 = load i64, ptr %l84, !tbaa !24
  %t175 = icmp sge i64 %t174, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca %"compiler/names:Ref"
  %l43 = alloca i64
  %l46 = alloca i1
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 20
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  %t7 = icmp eq i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t11 = load ptr, ptr %l11, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 28}
  %t17 = icmp eq i64 %t15, 2
  store i1 %t17, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l12, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [4 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", ptr }, ptr %t21, i32 0, i32 1
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t29 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrLocalName(ptr %v0, ptr %v1, ptr %t25, ptr %t26)
  store i32 %t29, ptr %l19
  br label %bb10
bb10:
  %t30 = load i32, ptr %l19, !tbaa !23
  store i32 %t30, ptr %rv
  br label %ret
bb11:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t32 = load ptr, ptr %l20, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb12, label %bb13
bb12:
  %t35 = load ptr, ptr %l20, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 28}
  %t38 = icmp eq i64 %t36, 0
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32 }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l3
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32 }, ptr %t48, i32 0, i32 1
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l4, !tbaa !23
  br label %bb16
bb15:
  br label %bb31
bb16:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l30, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t59)
  store ptr %t61, ptr %l32
  br label %bb17
bb17:
  %t62 = load ptr, ptr %l32, !tbaa !29
  %t64 = getelementptr %"compiler/check:frame", ptr %t62, i32 0, i32 2
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t67 = load i32, ptr %t66, !tbaa !23
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t71 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t68, i64 %t65, i32 %t67)
  store %"compiler/names:Ref" %t71, ptr %l36
  br label %bb18
bb18:
  %t72 = getelementptr %"compiler/names:Ref", ptr %l36, i32 0, i32 0
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t75 = trunc i64 1 to i32
  %t76 = icmp eq i32 %t73, %t75
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb19, label %bb20
bb19:
  store i32 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load i32, ptr %l4, !tbaa !23
  %t85 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t81, i32 %t82)
  store i64 %t85, ptr %l43
  br label %bb22
bb22:
  %t86 = load i64, ptr %l43, !tbaa !24
  store i64 %t86, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l5, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb27
bb24:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/check:Checker", ptr %t91, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t96 = getelementptr %"compiler/generic:Program", ptr %t94, i32 0, i32 2
  store ptr %t96, ptr %l49, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %t97, i64 %t98)
  store i32 %t101, ptr %l52
  br label %bb25
bb25:
  %t102 = load ptr, ptr %l49, !tbaa !29
  %t103 = load i32, ptr %l52, !tbaa !23
  %t104 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %t102, i32 %t103)
  store i1 %t104, ptr %l53
  br label %bb26
bb26:
  %t105 = load i1, ptr %l53, !tbaa !21
  %t106 = xor i1 %t105, true
  store i1 %t106, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t108 = load i1, ptr %l46, !tbaa !21
  br i1 %t108, label %bb28, label %bb29
bb28:
  store i32 0, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t110 = load i32, ptr %l4, !tbaa !23
  store i32 %t110, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i32 0, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1281810c6c9fab58_cb57d964fb88648c)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrNow(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/check:errNarrow"
  %l8 = alloca ptr
  %l11 = alloca i64
  %l19 = alloca %"compiler/check:errNarrow"
  %l21 = alloca i1
  %l24 = alloca i1
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l8, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 62
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l11
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11, !tbaa !24
  %t11 = sub i64 %t10, 1
  store i64 %t11, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb4, label %bb5
bb4:
  br label %bb21
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/check:frame", ptr %t19, i32 0, i32 62
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/check:errNarrow" %t25, ptr %l19
  br label %bb7
bb7:
  %t26 = load %"compiler/check:errNarrow", ptr %l19
  store %"compiler/check:errNarrow" %t26, ptr %l6
  %t27 = getelementptr %"compiler/check:errNarrow", ptr %l6, i32 0, i32 4
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb11
bb9:
  %t30 = getelementptr %"compiler/check:errNarrow", ptr %l6, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t35 = call i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %t31, { i64, ptr } %t32)
  store i1 %t35, ptr %l24
  br label %bb10
bb10:
  %t36 = load i1, ptr %l24, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t40 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp sgt i64 %t42, 1
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:errNarrow", ptr %l6, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathRead(ptr %v0, ptr %v1, ptr %t46, %"compiler/source:Span" %a3, i64 %t49, { i64, ptr } %t50)
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:errNarrow", ptr %l6, i32 0, i32 1
  %t57 = load i32, ptr %t56, !tbaa !23
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v2, ptr %t55, i32 %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l35
  br label %bb19
bb19:
  %t61 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t61, ptr %rv
  br label %ret
bb20:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = sub i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb3
bb21:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v2, ptr %t66, i32 %a2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l40
  br label %bb22
bb22:
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrorMethod(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca ptr
  %l18 = alloca i32
  %l21 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l29 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l49 = alloca %"compiler/source:Span"
  %l55 = alloca ptr
  %l64 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l74 = alloca %"compiler/diagmsg:Msg"
  %l75 = alloca i64
  %l89 = alloca i1
  %l90 = alloca ptr
  %l93 = alloca %"compiler/source:Span"
  %l96 = alloca { i64, ptr }
  %l99 = alloca %"compiler/diagmsg:Msg"
  %l100 = alloca i64
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t8 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t4, i64 %t5)
  store ptr %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l14, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/check:Checker", ptr %t10, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrDeclOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l18
  br label %bb2
bb2:
  %t18 = load i32, ptr %l18, !tbaa !23
  store i32 %t18, ptr %l5, !tbaa !23
  %t19 = load i32, ptr %l5, !tbaa !23
  %t21 = icmp slt i32 %t19, 0
  br i1 %t21, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l21, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t28 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t24, ptr %t25)
  store %"compiler/source:Span" %t28, ptr %l24
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t29, i32 %t30)
  store { i64, ptr } %t33, ptr %l27
  br label %bb6
bb6:
  %t34 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  %t36 = extractvalue { i64, ptr } %t34, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t42 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnBuiltinType(ptr %s1, ptr %v0, { i64, ptr } %t40)
  store %"compiler/diagmsg:Msg" %t42, ptr %l29
  br label %bb7
bb7:
  %t43 = load ptr, ptr %l21, !tbaa !29
  %t44 = load %"compiler/source:Span", ptr %l24
  %t45 = load %"compiler/diagmsg:Msg", ptr %l29
  %t46 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t43, %"compiler/source:Span" %t44, %"compiler/diagmsg:Msg" %t45)
  store i64 %t46, ptr %l30
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/check:Checker", ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/generic:Program", ptr %t50, i32 0, i32 2
  %t53 = load i32, ptr %l5, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l35
  br label %bb10
bb10:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/check:Checker", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t61 = load i64, ptr %l1, !tbaa !24
  %t64 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l39
  br label %bb11
bb11:
  %t65 = load i64, ptr %l35, !tbaa !24
  %t66 = load i64, ptr %l39, !tbaa !24
  %t67 = icmp ne i64 %t65, %t66
  br i1 %t67, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  %t75 = load i32, ptr %l5, !tbaa !23
  %t78 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %t74, i32 %t75)
  store i64 %t78, ptr %l45
  br label %bb14
bb13:
  br label %bb22
bb14:
  %t79 = load i64, ptr %l45, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l46, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t85 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t81, ptr %t82)
  store %"compiler/source:Span" %t85, ptr %l49
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/check:Checker", ptr %t86, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/generic:Program", ptr %t89, i32 0, i32 0
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/load:Loader", ptr %t92, i32 0, i32 10
  %t95 = load i64, ptr %l6, !tbaa !24
  %t98 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t94, i64 %t95)
  store ptr %t98, ptr %l55
  br label %bb16
bb16:
  %t99 = load ptr, ptr %l55, !tbaa !29
  %t101 = getelementptr %"compiler/load:Module", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load i64, ptr %l6, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 12
  %t113 = load i64, ptr %t112, !tbaa !24
  %t116 = icmp eq i64 %t103, %t113
  %t119 = call { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %s2, { i64, ptr } %t102, i1 %t116)
  store { i64, ptr } %t119, ptr %l64
  br label %bb17
bb17:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l65, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/check:Checker", ptr %t121, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 2
  %t127 = load i32, ptr %l5, !tbaa !23
  %t130 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %t126, i32 %t127)
  store i32 %t130, ptr %l70
  br label %bb18
bb18:
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = load i32, ptr %l70, !tbaa !23
  %t133 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t131, i32 %t132)
  store { i64, ptr } %t133, ptr %l71
  br label %bb19
bb19:
  %t134 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t140 = add i64 %t136, %t139
  %t141 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t140)
  call void @olang_textcopy(ptr %t141, ptr %t135, i64 %t136)
  %t142 = getelementptr i8, ptr %t141, i64 %t136
  call void @olang_textcopy(ptr %t142, ptr %t138, i64 %t139)
  %t143 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t146 = extractvalue { i64, ptr } %t144, 0
  %t147 = extractvalue { i64, ptr } %t144, 1
  %t148 = mul i64 %t146, 1
  %t149 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t148)
  call void @llvm.memcpy.p0.p0.i64(ptr %t149, ptr %t147, i64 %t148, i1 false)
  %t150 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t149, 1
  %t153 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnForeignType(ptr %s2, ptr %v0, { i64, ptr } %t151)
  store %"compiler/diagmsg:Msg" %t153, ptr %l74
  br label %bb20
bb20:
  %t154 = load ptr, ptr %l46, !tbaa !29
  %t155 = load %"compiler/source:Span", ptr %l49
  %t156 = load %"compiler/diagmsg:Msg", ptr %l74
  %t157 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t154, %"compiler/source:Span" %t155, %"compiler/diagmsg:Msg" %t156)
  store i64 %t157, ptr %l75
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb22:
  store %olang.scope zeroinitializer, ptr %s4
  %t158 = insertvalue [8 x { i64, ptr }] undef, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t159 = insertvalue [8 x { i64, ptr }] %t158, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t160 = insertvalue [8 x { i64, ptr }] %t159, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) }, 2
  %t161 = insertvalue [8 x { i64, ptr }] %t160, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d21, i32 0, i32 1) }, 3
  %t162 = insertvalue [8 x { i64, ptr }] %t161, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d22, i32 0, i32 1) }, 4
  %t163 = insertvalue [8 x { i64, ptr }] %t162, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d23, i32 0, i32 1) }, 5
  %t164 = insertvalue [8 x { i64, ptr }] %t163, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d24, i32 0, i32 1) }, 6
  %t165 = insertvalue [8 x { i64, ptr }] %t164, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 7
  %t167 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 128, i64 8)
  store [8 x { i64, ptr }] %t165, ptr %t167
  store ptr %t167, ptr %l7
  store i64 0, ptr %l8, !tbaa !24
  %t169 = load ptr, ptr %l7
  store i64 8, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  %t172 = load i64, ptr %l8, !tbaa !24
  %t173 = load i64, ptr %l9, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb24, label %bb25
bb24:
  br label %bb36
bb25:
  br label %bb26
bb26:
  %t180 = load ptr, ptr %l7
  %t181 = load i64, ptr %l8, !tbaa !24
  %t184 = getelementptr [8 x { i64, ptr }], ptr %t180, i64 0, i64 %t181
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !37
  %t188 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t189 = load ptr, ptr @__olang_prog_scope
  %t192 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t189, ptr %v1, { i64, ptr } %t185, { i64, ptr } %t188)
  store i1 %t192, ptr %l89
  br label %bb27
bb27:
  %t193 = load i1, ptr %l89, !tbaa !21
  br i1 %t193, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s6
  %t194 = load ptr, ptr %l0, !tbaa !29
  store ptr %t194, ptr %l90, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load ptr, ptr %l4, !tbaa !29
  %t199 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t195, ptr %t196)
  store %"compiler/source:Span" %t199, ptr %l93
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l2, !tbaa !23
  %t204 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s6, ptr %t200, i32 %t201)
  store { i64, ptr } %t204, ptr %l96
  br label %bb31
bb31:
  %t205 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t206 = extractvalue { i64, ptr } %t205, 0
  %t207 = extractvalue { i64, ptr } %t205, 1
  %t208 = mul i64 %t206, 1
  %t209 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t208)
  call void @llvm.memcpy.p0.p0.i64(ptr %t209, ptr %t207, i64 %t208, i1 false)
  %t210 = insertvalue { i64, ptr } undef, i64 %t206, 0
  %t211 = insertvalue { i64, ptr } %t210, ptr %t209, 1
  %t212 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t215 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorMethodGiven(ptr %s6, ptr %v1, ptr %v0, { i64, ptr } %t211, { i64, ptr } %t212)
  store %"compiler/diagmsg:Msg" %t215, ptr %l99
  br label %bb32
bb32:
  %t216 = load ptr, ptr %l90, !tbaa !29
  %t217 = load %"compiler/source:Span", ptr %l93
  %t218 = load %"compiler/diagmsg:Msg", ptr %l99
  %t219 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t216, %"compiler/source:Span" %t217, %"compiler/diagmsg:Msg" %t218)
  store i64 %t219, ptr %l100
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t220 = load i64, ptr %l8, !tbaa !24
  %t222 = add i64 %t220, 1
  store i64 %t222, ptr %l8, !tbaa !24
  br label %bb23
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexhaustedOrBreak(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %lp8 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i64
  %l25 = alloca ptr
  %l29 = alloca i32
  %l33 = alloca { i64, ptr }
  %l34 = alloca %"compiler/typed:Block"
  %l35 = alloca %"compiler/typed:Item"
  %l37 = alloca %"compiler/typed:Item"
  %l41 = alloca { i64, ptr }
  %l43 = alloca %"compiler/typed:Item"
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca { i64, ptr }
  %l46 = alloca ptr
  %l50 = alloca %"compiler/typed:Clause"
  %l53 = alloca %"compiler/source:Span"
  %l56 = alloca i32
  %l61 = alloca %"compiler/typed:Try"
  %s0 = alloca %olang.scope
  %rv = alloca ptr
  %t22 = alloca { i64, [3 x i64] }, align 8
  %t70 = alloca i64
  %t127 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d26, i32 0, i32 1) }, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i32 %t6, ptr %l11
  br label %bb1
bb1:
  %t7 = load i32, ptr %l11, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 44
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb2
bb2:
  %t13 = load i64, ptr %l14, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/check:Checker", ptr %t14, i32 0, i32 44
  %t17 = load %"compiler/source:Span", ptr %l1
  %t20 = trunc i64 %a3 to i32
  store { i64, [3 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 0
  store i64 5, ptr %t23
  %t25 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t17, 0
  %t27 = insertvalue { %"compiler/source:Span", i32, i32 } %t25, i32 0, 1
  %t29 = insertvalue { %"compiler/source:Span", i32, i32 } %t27, i32 %t20, 2
  %t30 = getelementptr { i64, [3 x i64] }, ptr %t22, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t29, ptr %t30
  %t31 = load { i64, [3 x i64] }, ptr %t22
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t31, ptr %t33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t16, ptr %t33)
  br label %bb3
bb3:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t36)
  store ptr %t38, ptr %l25
  br label %bb4
bb4:
  %t39 = load ptr, ptr %l25, !tbaa !29
  %t41 = getelementptr %"compiler/check:frame", ptr %t39, i32 0, i32 7
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = trunc i64 %t42 to i32
  store i32 %t44, ptr %l29, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 44
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store { i64, ptr } %t52, ptr %l33
  br label %bb5
bb5:
  %t53 = load i32, ptr %l29, !tbaa !23
  %t54 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t55 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v2, i32 %t53, { i64, ptr } %t54)
  store %"compiler/typed:Block" %t55, ptr %l34
  br label %bb6
bb6:
  %t56 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store ptr %t56, ptr %lp6
  %t57 = load %"compiler/typed:Block", ptr %l34
  %t58 = load ptr, ptr %lp6
  store %"compiler/typed:Block" %t57, ptr %t58
  store %"compiler/typed:Item" zeroinitializer, ptr %l35
  %t59 = icmp sgt i64 1, 0
  br i1 %t59, label %bb7, label %bb8
bb7:
  %t61 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v2, i32 0, i64 0)
  store %"compiler/typed:Item" %t61, ptr %l37
  br label %bb9
bb8:
  %t62 = icmp sge i64 1, 0
  br i1 %t62, label %bb10, label %bb11
bb9:
  %t64 = load %"compiler/typed:Item", ptr %l37
  store %"compiler/typed:Item" %t64, ptr %l35
  br label %bb8
bb10:
  %t65 = icmp sle i64 1, 576460752303423487
  br i1 %t65, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_8e26fbb1c5557eef_13e6cc5de085742b)
  unreachable
bb12:
  %t67 = mul i64 1, 16
  %t68 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t67)
  %t69 = load %"compiler/typed:Item", ptr %l35
  store i64 0, ptr %t70
  br label %fill.71
fill.71:
  %t74 = load i64, ptr %t70
  %t75 = icmp slt i64 %t74, 1
  br i1 %t75, label %fillb.72, label %filld.73
fillb.72:
  %t76 = getelementptr %"compiler/typed:Item", ptr %t68, i64 %t74
  store %"compiler/typed:Item" %t69, ptr %t76
  %t77 = add i64 %t74, 1
  store i64 %t77, ptr %t70
  br label %fill.71
filld.73:
  %t78 = insertvalue { i64, ptr } undef, i64 1, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t68, 1
  store { i64, ptr } %t79, ptr %l7, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t81, ptr %l41, !tbaa !27
  %t82 = load i32, ptr %l4, !tbaa !23
  %t84 = call %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %s0, i32 %t82, i64 -1)
  store %"compiler/typed:Item" %t84, ptr %l43
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8e26fbb1c5557eef_13e6cc5de085742b)
  unreachable
bb14:
  %t85 = load %"compiler/typed:Item", ptr %l43
  %t86 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !27
  %t88 = getelementptr %"compiler/typed:Item", ptr %t87, i64 0
  store %"compiler/typed:Item" %t85, ptr %t88
  %t89 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t89, ptr %l44
  %t90 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t90, ptr %l45, !tbaa !27
  %t91 = load ptr, ptr %lp6
  store ptr %t91, ptr %l46, !tbaa !29
  %t92 = icmp sge i64 0, 0
  br i1 %t92, label %bb15, label %bb16
bb15:
  %t94 = icmp sle i64 0, 1152921504606846975
  br i1 %t94, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_6d702b04e725ae1a_71c02c55b3dfc416)
  unreachable
bb17:
  %t96 = mul i64 0, 8
  %t97 = insertvalue { i64, ptr } undef, i64 0, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t99 = load %"compiler/source:Span", ptr %l44
  %t100 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t101 = load ptr, ptr %l46, !tbaa !29
  %t103 = call %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v2, ptr %v2, ptr %v2, ptr %v2, %"compiler/source:Span" %t99, { i64, ptr } %t100, i1 false, ptr %t101, { i64, ptr } %t98, i64 -1, i32 0)
  store %"compiler/typed:Clause" %t103, ptr %l50
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_6d702b04e725ae1a_71c02c55b3dfc416)
  unreachable
bb19:
  %t104 = load %"compiler/typed:Clause", ptr %l50
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store %"compiler/typed:Clause" %t104, ptr %t105
  %t107 = insertvalue [1 x ptr] undef, ptr %t105, 0
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 8, i64 8)
  store ptr %t108, ptr %lp8
  %t110 = load ptr, ptr %lp8
  store [1 x ptr] %t107, ptr %t110
  %t111 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t111, ptr %l53
  %t112 = load ptr, ptr %l2, !tbaa !29
  %t115 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t112)
  store i32 %t115, ptr %l56
  br label %bb20
bb20:
  %t116 = load ptr, ptr %l2, !tbaa !29
  %t118 = load ptr, ptr %lp8
  %t120 = insertvalue { i64, ptr } undef, i64 1, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t118, 1
  %t124 = call %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v1, ptr %v2, ptr %v2, ptr %t116, { i64, ptr } %t121, i1 false, i1 true, i1 true)
  store %"compiler/typed:Try" %t124, ptr %l61
  br label %bb21
bb21:
  %t125 = load %"compiler/typed:Try", ptr %l61
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/typed:Try" %t125, ptr %t126
  store { i64, [5 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 0
  store i64 14, ptr %t128
  %t129 = load %"compiler/source:Span", ptr %l53
  %t130 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t129, 0
  %t131 = load i32, ptr %l56, !tbaa !23
  %t132 = insertvalue { %"compiler/source:Span", i32, ptr } %t130, i32 %t131, 1
  %t134 = insertvalue { %"compiler/source:Span", i32, ptr } %t132, ptr %t126, 2
  %t135 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t134, ptr %t135
  %t136 = load { i64, [5 x i64] }, ptr %t127
  %t138 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t136, ptr %t138
  call void @__olang_scope_close(ptr %s0)
  store ptr %t138, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternArray(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l20 = alloca i32
  %l23 = alloca i32
  %l27 = alloca i1
  %l32 = alloca i32
  %l39 = alloca i32
  %l43 = alloca i1
  %l48 = alloca i32
  %l52 = alloca ptr
  %l55 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca %"compiler/source:Span"
  %l66 = alloca %"compiler/source:Span"
  %l72 = alloca i32
  %l75 = alloca ptr
  %l78 = alloca ptr
  %l83 = alloca i32
  %l85 = alloca i32
  %l86 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l96 = alloca i32
  %l99 = alloca ptr
  %l105 = alloca i32
  %l106 = alloca ptr
  %l114 = alloca ptr
  %rv = alloca ptr
  %t120 = alloca { i64, [5 x i64] }, align 8
  %t176 = alloca { i64, [5 x i64] }, align 8
  %t211 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 5}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_12a7e56ab193c888_f3ea9b5a769b449c)
  unreachable
bb11:
  %t10 = load i1, ptr %l10, !tbaa !21
  %t13 = xor i1 %t10, true
  br i1 %t13, label %bb12, label %bb13
bb12:
  store ptr null, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t16)
  store i32 %t19, ptr %l20
  br label %bb15
bb15:
  %t20 = load i32, ptr %l20, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l23
  br label %bb16
bb16:
  %t26 = load i32, ptr %l23, !tbaa !23
  store i32 %t26, ptr %l7, !tbaa !23
  %t27 = load i32, ptr %l7, !tbaa !23
  %t28 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t31 = icmp eq i32 %t27, %t28
  br i1 %t31, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb20
bb18:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/generic:Program", ptr %t36, i32 0, i32 2
  %t39 = load i32, ptr %l7, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l32
  br label %bb19
bb19:
  %t43 = load i32, ptr %l32, !tbaa !23
  %t44 = icmp ne i32 %t43, 0
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb20
bb20:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb21, label %bb22
bb21:
  store ptr null, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/check:Checker", ptr %t48, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l6, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l39
  br label %bb24
bb24:
  %t58 = load i32, ptr %l39, !range !{i32 0, i32 33}
  %t60 = trunc i64 19 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb28
bb26:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t70 = getelementptr %"compiler/generic:Program", ptr %t68, i32 0, i32 2
  %t71 = load i32, ptr %l6, !tbaa !23
  %t74 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t70, i32 %t71)
  store i32 %t74, ptr %l48
  br label %bb27
bb27:
  %t75 = load i32, ptr %l48, !tbaa !23
  %t76 = icmp eq i32 %t75, 0
  store i1 %t76, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb29, label %bb30
bb29:
  store ptr null, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t80 = load ptr, ptr %l2, !tbaa !29
  %t82 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v2, ptr %v3, ptr %t80)
  store ptr %t82, ptr %l52
  br label %bb32
bb32:
  %t83 = load ptr, ptr %l52, !tbaa !29
  store ptr %t83, ptr %l8, !tbaa !29
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb36
bb34:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load ptr, ptr %l8, !tbaa !29
  %t90 = load %"compiler/source:Span", ptr %l4
  %t94 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v3, ptr %t88, ptr %t89, %"compiler/source:Span" %t90)
  store i1 %t94, ptr %l59
  br label %bb35
bb35:
  %t95 = load i1, ptr %l59, !tbaa !21
  store i1 %t95, ptr %l55, !tbaa !21
  br label %bb36
bb36:
  %t96 = load i1, ptr %l55, !tbaa !21
  br i1 %t96, label %bb37, label %bb38
bb37:
  store ptr null, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l63
  br label %bb40
bb40:
  %t103 = load i1, ptr %l63, !tbaa !21
  br i1 %t103, label %bb41, label %bb42
bb41:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l64, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t105, ptr %l65
  %t106 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t106, ptr %l66
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 2
  %t113 = load i32, ptr %l6, !tbaa !23
  %t114 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t112, i32 %t113, i64 %t114)
  store i32 %t118, ptr %l72
  br label %bb43
bb42:
  br label %bb47
bb43:
  %t119 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 0
  store i64 3, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l66
  %t123 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t122, 0
  %t124 = load i32, ptr %l72, !tbaa !23
  %t125 = insertvalue { %"compiler/source:Span", i32, ptr } %t123, i32 %t124, 1
  %t127 = insertvalue { %"compiler/source:Span", i32, ptr } %t125, ptr %t119, 2
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t127, ptr %t128
  %t129 = load { i64, [5 x i64] }, ptr %t120
  %t131 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t129, ptr %t131
  store ptr %t131, ptr %l75, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l78, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/check:Checker", ptr %t138, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !29
  %t143 = getelementptr %"compiler/generic:Program", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %l3, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t143, i32 %t144)
  store i32 %t147, ptr %l83
  br label %bb44
bb44:
  %t148 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t149 = load ptr, ptr %l78, !tbaa !29
  %t150 = load i32, ptr %l83, !tbaa !23
  %t152 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t149, i32 %t150, i64 %t148)
  store i32 %t152, ptr %l85
  br label %bb45
bb45:
  %t153 = load ptr, ptr %l64, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l65
  %t155 = load ptr, ptr %l75, !tbaa !29
  %t156 = load i32, ptr %l85, !tbaa !23
  %t157 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v3, ptr %t153, %"compiler/source:Span" %t154, ptr %t155, i32 %t156)
  store ptr %t157, ptr %l86
  br label %bb46
bb46:
  %t158 = load ptr, ptr %l86, !tbaa !29
  store ptr %t158, ptr %rv
  br label %ret
bb47:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l88, !tbaa !29
  %t161 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t161, ptr %l89
  %t162 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t162, ptr %l90
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l6, !tbaa !23
  %t170 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t168, i32 %t169, i64 %t170)
  store i32 %t174, ptr %l96
  br label %bb48
bb48:
  %t175 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 0
  store i64 3, ptr %t177
  %t178 = load %"compiler/source:Span", ptr %l90
  %t179 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t178, 0
  %t180 = load i32, ptr %l96, !tbaa !23
  %t181 = insertvalue { %"compiler/source:Span", i32, ptr } %t179, i32 %t180, 1
  %t183 = insertvalue { %"compiler/source:Span", i32, ptr } %t181, ptr %t175, 2
  %t184 = getelementptr { i64, [5 x i64] }, ptr %t176, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t183, ptr %t184
  %t185 = load { i64, [5 x i64] }, ptr %t176
  %t187 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t185, ptr %t187
  store ptr %t187, ptr %l99, !tbaa !29
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/check:Checker", ptr %t188, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/generic:Program", ptr %t191, i32 0, i32 2
  %t194 = load i32, ptr %l3, !tbaa !23
  %t195 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t199 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t193, i32 %t194, i64 %t195)
  store i32 %t199, ptr %l105
  br label %bb49
bb49:
  %t200 = load ptr, ptr %l88, !tbaa !29
  %t201 = load %"compiler/source:Span", ptr %l89
  %t202 = load ptr, ptr %l99, !tbaa !29
  %t203 = load i32, ptr %l105, !tbaa !23
  %t204 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v0, ptr %v3, ptr %t200, %"compiler/source:Span" %t201, ptr %t202, i32 %t203)
  store ptr %t204, ptr %l106
  br label %bb50
bb50:
  %t205 = load ptr, ptr %l106, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load %"compiler/source:Span", ptr %l4
  %t208 = load %"compiler/source:Span", ptr %l4
  %t209 = load i32, ptr %l3, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 0
  store i64 2, ptr %t212
  %t214 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t208, 0
  %t216 = insertvalue { %"compiler/source:Span", i32, ptr } %t214, i32 %t209, 1
  %t218 = insertvalue { %"compiler/source:Span", i32, ptr } %t216, ptr %t205, 2
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t211, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t218, ptr %t219
  %t220 = load { i64, [4 x i64] }, ptr %t211
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 40, i64 8)
  store { i64, [4 x i64] } %t220, ptr %t222
  %t226 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v3, ptr %v3, ptr %t206, %"compiler/source:Span" %t207, ptr %t222)
  store ptr %t226, ptr %l114
  br label %bb51
bb51:
  %t227 = load ptr, ptr %l114, !tbaa !29
  store ptr %t227, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternParam(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i32
  %l19 = alloca i1
  %l25 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i1, ptr %l6, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load i32, ptr %l1, !tbaa !23
  store i32 %t8, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l2, !tbaa !23
  %t14 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t10, i32 %t11)
  store i1 %t14, ptr %l11
  br label %bb5
bb5:
  %t15 = load i1, ptr %l11, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l16
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t26 = load i32, ptr %l16, !tbaa !23
  store i32 %t26, ptr %l2, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l2, !tbaa !23
  %t31 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %t27, i32 %t28, i64 0)
  store i1 %t31, ptr %l19
  br label %bb9
bb9:
  %t32 = load i1, ptr %l19, !tbaa !21
  br i1 %t32, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/check:Checker", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l2, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l25
  br label %bb14
bb14:
  %t44 = load i32, ptr %l25, !range !{i32 0, i32 33}
  %t46 = trunc i64 19 to i32
  %t47 = icmp eq i32 %t44, %t46
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb15, label %bb16
bb15:
  store i1 false, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t57, i32 %t58)
  store i32 %t61, ptr %l34
  br label %bb18
bb18:
  %t62 = load i32, ptr %l34, !tbaa !23
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %t63, i32 %t62)
  store i1 %t67, ptr %l37
  br label %bb19
bb19:
  %t68 = load i1, ptr %l37, !tbaa !21
  store i1 %t68, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efailForms(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca i1
  %l49 = alloca i1
  %l50 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i1
  %l63 = alloca i64
  %l72 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l80 = alloca i64
  %l83 = alloca i1
  %l89 = alloca i32
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca ptr
  %l99 = alloca i32
  %l100 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l107 = alloca i64
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l113 = alloca %"compiler/source:Span"
  %l116 = alloca { i64, ptr }
  %l118 = alloca %"compiler/diagmsg:Msg"
  %l119 = alloca i64
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load i64, ptr %l13, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l20, !tbaa !24
  store i64 %t34, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l17, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb10:
  br label %bb11
bb11:
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l6, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/check:Checker", ptr %t54, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l6, !tbaa !24
  %t61 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t57, i64 %t58)
  store ptr %t61, ptr %l41
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l41, !tbaa !29
  store ptr %t62, ptr %l7, !tbaa !29
  %t63 = load ptr, ptr %l7, !tbaa !29
  %t65 = getelementptr %"compiler/ast:Func", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb16
bb14:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %t73, i64 %t74)
  store i1 %t77, ptr %l49
  br label %bb15
bb15:
  %t78 = load i1, ptr %l49, !tbaa !21
  store i1 %t78, ptr %l45, !tbaa !21
  br label %bb16
bb16:
  %t79 = load i1, ptr %l45, !tbaa !21
  br i1 %t79, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb21
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  store ptr %t83, ptr %l52, !tbaa !29
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t84)
  store i64 %t86, ptr %l54
  br label %bb19
bb19:
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = load i64, ptr %l54, !tbaa !24
  %t89 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %t87, i64 %t88)
  store i64 %t89, ptr %l55
  br label %bb20
bb20:
  %t90 = load i64, ptr %l55, !tbaa !24
  %t91 = icmp sgt i64 %t90, 0
  store i1 %t91, ptr %l50, !tbaa !21
  br label %bb21
bb21:
  %t93 = load i1, ptr %l50, !tbaa !21
  br i1 %t93, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb23:
  br label %bb24
bb24:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/check:Checker", ptr %t94, i32 0, i32 3
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb25, label %bb26
bb25:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/check:Checker", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t102, i64 %t103)
  store i64 %t106, ptr %l63
  br label %bb27
bb26:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/check:Checker", ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/generic:Program", ptr %t110, i32 0, i32 0
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/load:Loader", ptr %t113, i32 0, i32 12
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = load i64, ptr %l63, !tbaa !24
  %t119 = icmp ne i64 %t117, %t116
  store i1 %t119, ptr %l59, !tbaa !21
  br label %bb28
bb28:
  %t121 = load i1, ptr %l59, !tbaa !21
  br i1 %t121, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb30:
  br label %bb31
bb31:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load ptr, ptr %l7, !tbaa !29
  %t125 = getelementptr %"compiler/ast:Func", ptr %t123, i32 0, i32 2
  %t126 = load i32, ptr %t125, !tbaa !23
  %t129 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t122, i32 %t126)
  store { i64, ptr } %t129, ptr %l72
  br label %bb32
bb32:
  %t130 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t130, ptr %l8, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t135 = icmp eq i64 %t133, 0
  br i1 %t135, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb34:
  br label %bb35
bb35:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v0, ptr %s2, ptr %t137, { i64, ptr } %t138)
  store { i64, ptr } %t141, ptr %l78
  br label %bb36
bb36:
  %t142 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 0
  %t144 = extractvalue { i64, ptr } %t142, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t150 = call i64 @compiler_2fcheck_2eopShapeOf(ptr %s2, { i64, ptr } %t148)
  store i64 %t150, ptr %l80
  br label %bb37
bb37:
  %t151 = load i64, ptr %l80, !tbaa !24
  store i64 %t151, ptr %l9, !tbaa !24
  %t152 = load i64, ptr %l9, !tbaa !24
  %t154 = icmp slt i64 %t152, 0
  br i1 %t154, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb40
bb39:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = getelementptr [24 x %"compiler/check:opShape"], ptr @G_2ecompiler_2fcheck_2eOpShapes, i64 0, i64 %t156
  %t159 = getelementptr %"compiler/check:opShape", ptr %t158, i32 0, i32 3
  %t160 = load i1, ptr %t159, !tbaa !21
  store i1 %t160, ptr %l83, !tbaa !21
  br label %bb40
bb40:
  %t162 = load i1, ptr %l83, !tbaa !21
  br i1 %t162, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb42:
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/check:Checker", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load i64, ptr %l6, !tbaa !24
  %t170 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %t166, i64 %t167)
  store i32 %t170, ptr %l89
  br label %bb44
bb44:
  %t171 = load i32, ptr %l89, !tbaa !23
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t176 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %t172, i32 %t171)
  store i1 %t176, ptr %l92
  br label %bb45
bb45:
  %t177 = load i1, ptr %l92, !tbaa !21
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/check:Checker", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = getelementptr %"compiler/generic:Program", ptr %t181, i32 0, i32 2
  store ptr %t183, ptr %l96, !tbaa !29
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i64, ptr %l6, !tbaa !24
  %t188 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnErrors(ptr %v0, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l99
  br label %bb48
bb47:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb50
bb48:
  %t189 = load ptr, ptr %l96, !tbaa !29
  %t190 = load i32, ptr %l99, !tbaa !23
  %t191 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s2, ptr %t189, i32 %t190)
  store { i64, ptr } %t191, ptr %l100
  br label %bb49
bb49:
  %t192 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  %t195 = icmp sgt i64 %t193, 0
  store i1 %t195, ptr %l93, !tbaa !21
  br label %bb50
bb50:
  %t197 = load i1, ptr %l93, !tbaa !21
  br i1 %t197, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s7
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l103, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/check:Checker", ptr %t199, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t203 = load i64, ptr %l6, !tbaa !24
  %t206 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t202, i64 %t203)
  store i64 %t206, ptr %l107
  br label %bb53
bb52:
  br label %bb60
bb53:
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t208 = load ptr, ptr %l103, !tbaa !29
  %t209 = load i64, ptr %l107, !tbaa !24
  %t211 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v0, ptr %t208, i64 -1, i64 %t209, i32 %t207, i32 0)
  store ptr %t211, ptr %l109
  br label %bb54
bb54:
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l110, !tbaa !29
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load ptr, ptr %l7, !tbaa !29
  %t217 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v0, ptr %t213, ptr %t214)
  store %"compiler/source:Span" %t217, ptr %l113
  br label %bb55
bb55:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t222 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v0, ptr %s7, ptr %t218, { i64, ptr } %t219)
  store { i64, ptr } %t222, ptr %l116
  br label %bb56
bb56:
  %t223 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t223, 0
  %t225 = extractvalue { i64, ptr } %t223, 1
  %t226 = mul i64 %t224, 1
  %t227 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t226)
  call void @llvm.memcpy.p0.p0.i64(ptr %t227, ptr %t225, i64 %t226, i1 false)
  %t228 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t229 = insertvalue { i64, ptr } %t228, ptr %t227, 1
  %t231 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %s7, ptr %v0, { i64, ptr } %t229)
  store %"compiler/diagmsg:Msg" %t231, ptr %l118
  br label %bb57
bb57:
  %t232 = load ptr, ptr %l110, !tbaa !29
  %t233 = load %"compiler/source:Span", ptr %l113
  %t234 = load %"compiler/diagmsg:Msg", ptr %l118
  %t235 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t232, %"compiler/source:Span" %t233, %"compiler/diagmsg:Msg" %t234)
  store i64 %t235, ptr %l119
  br label %bb58
bb58:
  %t236 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %t236)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s7)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s2)
  br label %bb61
bb61:
  %t238 = load i64, ptr %l5, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l5, !tbaa !24
  br label %bb8
bb62:
  %t242 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %t242)
  br label %bb63
bb63:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efieldTypes(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l15 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l65 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l71 = alloca ptr
  %l74 = alloca i32
  %l76 = alloca %"compiler/typed:Local"
  %l78 = alloca { i64, ptr }
  %l83 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i32
  %l100 = alloca i32
  %l105 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l15, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l20
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = load i32, ptr %l20, !tbaa !23
  %t19 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t17, i32 %t18)
  store { i64, ptr } %t19, ptr %l21
  br label %bb2
bb2:
  %t20 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l23
  br label %bb3
bb3:
  %t24 = load ptr, ptr %l23, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Body", ptr %t24, i32 0, i32 10
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l25
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l25)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l27
  br label %bb4
bb4:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l3
  %t31 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  store i64 %t33, ptr %l29, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3)
  store i64 %t35, ptr %l31
  br label %bb5
bb5:
  %t36 = load i64, ptr %l29, !tbaa !24
  %t37 = load i64, ptr %l31, !tbaa !24
  %t38 = icmp ne i64 %t36, %t37
  br i1 %t38, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  store i64 %t42, ptr %l34, !tbaa !24
  %t43 = load i64, ptr %l34, !tbaa !24
  %t44 = icmp sge i64 %t43, 0
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load i64, ptr %l34, !tbaa !24
  %t47 = icmp sle i64 %t46, 2305843009213693951
  br i1 %t47, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_ad8923f011cb5acf_6f8a151e60866063)
  unreachable
bb11:
  %t49 = load i64, ptr %l34, !tbaa !24
  %t50 = mul i64 %t49, 4
  %t51 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  store { i64, ptr } %t53, ptr %l4, !tbaa !27
  store i1 false, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp sgt i64 %t59, %t60
  br i1 %t63, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_ad8923f011cb5acf_6f8a151e60866063)
  unreachable
bb13:
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb18
bb15:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t73 = sub i64 %t69, %t70
  %t74 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t73, %t74
  %t79 = sub i64 %t77, 1
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = sdiv i64 %t79, %t80
  store i64 %t83, ptr %l46, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb17
bb17:
  %t85 = load i64, ptr %l46, !tbaa !24
  store i64 %t85, ptr %l43, !tbaa !24
  br label %bb18
bb18:
  %t86 = load i64, ptr %l43, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t87 = load i64, ptr %l10, !tbaa !24
  %t88 = load i64, ptr %l9, !tbaa !24
  %t91 = icmp slt i64 %t87, %t88
  %t93 = xor i1 %t91, true
  br i1 %t93, label %bb20, label %bb21
bb20:
  br label %bb33
bb21:
  br label %bb22
bb22:
  %t95 = load i64, ptr %l6, !tbaa !24
  %t96 = load i64, ptr %l10, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = mul i64 %t96, %t97
  %t103 = add i64 %t95, %t100
  store i64 %t103, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l11, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t106, ptr %l65, !tbaa !27
  %t107 = load i64, ptr %l11, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i32, ptr %t110, i64 %t107
  %t112 = load i32, ptr %t111, !tbaa !33
  %t115 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i32, ptr %t116, i64 %t105
  store i32 %t112, ptr %t117, !tbaa !33
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t118)
  store ptr %t120, ptr %l69
  br label %bb23
bb23:
  %t121 = load ptr, ptr %l69, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Body", ptr %t121, i32 0, i32 7
  store ptr %t123, ptr %l71, !tbaa !29
  %t124 = load i64, ptr %l11, !tbaa !24
  %t127 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %s0, ptr %l3, i64 %t124)
  store i32 %t127, ptr %l74
  br label %bb24
bb24:
  %t128 = load i32, ptr %l74, !tbaa !23
  %t129 = sext i32 %t128 to i64
  %t130 = load ptr, ptr %l71, !tbaa !29
  %t132 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t130, i64 %t129)
  store %"compiler/typed:Local" %t132, ptr %l76
  br label %bb25
bb25:
  %t133 = getelementptr %"compiler/typed:Local", ptr %l76, i32 0, i32 2
  %t134 = load i32, ptr %t133, !tbaa !23
  store i32 %t134, ptr %l12, !tbaa !23
  %t136 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t136, ptr %l78, !tbaa !27
  %t137 = load i64, ptr %l11, !tbaa !24
  %t139 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i32, ptr %t140, i64 %t137
  %t142 = load i32, ptr %t141, !tbaa !33
  %t143 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t146 = icmp eq i32 %t142, %t143
  br i1 %t146, label %bb26, label %bb27
bb26:
  %t148 = load i32, ptr %l12, !tbaa !23
  %t149 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t152 = icmp ne i32 %t148, %t149
  store i1 %t152, ptr %l83, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb28
bb28:
  %t154 = load i1, ptr %l83, !tbaa !21
  br i1 %t154, label %bb29, label %bb30
bb29:
  %t155 = load i64, ptr %l11, !tbaa !24
  %t156 = load i32, ptr %l12, !tbaa !23
  %t159 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i32, ptr %t160, i64 %t155
  store i32 %t156, ptr %t161, !tbaa !33
  store i1 true, ptr %l5, !tbaa !21
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t162 = load i64, ptr %l10, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l10, !tbaa !24
  br label %bb19
bb33:
  %t166 = load i1, ptr %l5, !tbaa !21
  br i1 %t166, label %bb34, label %bb35
bb34:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/check:Checker", ptr %t168, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !29
  %t173 = getelementptr %"compiler/generic:Program", ptr %t171, i32 0, i32 2
  store ptr %t173, ptr %l94, !tbaa !29
  %t174 = load i32, ptr %l1, !tbaa !23
  store i32 %t174, ptr %l95, !tbaa !23
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/check:Checker", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t180 = getelementptr %"compiler/generic:Program", ptr %t178, i32 0, i32 2
  %t181 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t184 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t180, { i64, ptr } %t181)
  store i32 %t184, ptr %l100
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/check:Checker", ptr %t185, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 2
  %t191 = load i32, ptr %l1, !tbaa !23
  %t194 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %t190, i32 %t191)
  store i1 %t194, ptr %l105
  br label %bb37
bb37:
  %t195 = load ptr, ptr %l94, !tbaa !29
  %t196 = load i32, ptr %l95, !tbaa !23
  %t197 = load i32, ptr %l100, !tbaa !23
  %t198 = load i1, ptr %l105, !tbaa !21
  call void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %t195, i32 %t196, i32 %t197, i1 %t198)
  br label %bb38
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efilledNext(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca i1
  %l52 = alloca i1
  %l55 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca { i64, ptr }
  %l62 = alloca i1
  %l64 = alloca i1
  %l68 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i1
  %l86 = alloca i1
  %l89 = alloca i1
  %l94 = alloca i1
  %l104 = alloca i1
  %l115 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l119 = alloca i1
  %l122 = alloca i1
  %l133 = alloca i1
  %l147 = alloca i1
  %l162 = alloca i1
  %l164 = alloca { i64, ptr }
  %l166 = alloca i32
  %l170 = alloca i1
  %l173 = alloca { i64, ptr }
  %l175 = alloca %"compiler/source:Span"
  %l178 = alloca { i64, ptr }
  %l184 = alloca %"compiler/source:Span"
  %l186 = alloca ptr
  %l189 = alloca %"compiler/source:Span"
  %l190 = alloca { i64, ptr }
  %l191 = alloca { i64, ptr }
  %l194 = alloca { i64, ptr }
  %l195 = alloca i64
  %l197 = alloca i1
  %l199 = alloca i64
  %l201 = alloca i1
  %l203 = alloca i64
  %l205 = alloca i1
  %l207 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t316 = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l32
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l32, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t7 = getelementptr %"compiler/check:frame", ptr %t5, i32 0, i32 57
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/check:frame", ptr %t9, i32 0, i32 56
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t8, %t14
  br i1 %t17, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l41, !tbaa !29
  store i1 false, ptr %l42, !tbaa !21
  %t21 = load ptr, ptr %l41, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load ptr, ptr %l41, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 28}
  %t27 = icmp eq i64 %t25, 10
  store i1 %t27, ptr %l42, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l42, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l4, !tbaa !29
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t37, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38
  store { i64, ptr } %t39, ptr %l5, !tbaa !27
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t41 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = icmp eq i64 %t43, 1
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load ptr, ptr %l4, !tbaa !29
  %t51 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisArrayCtor(ptr %v0, ptr %v1, ptr %t47, ptr %t48)
  store i1 %t51, ptr %l55
  br label %bb12
bb11:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb13
bb12:
  %t52 = load i1, ptr %l55, !tbaa !21
  store i1 %t52, ptr %l52, !tbaa !21
  br label %bb13
bb13:
  %t53 = load i1, ptr %l52, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l57, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr ptr, ptr %t56, i64 0
  %t58 = load ptr, ptr %t57, !tbaa !39
  store ptr %t58, ptr %l56, !tbaa !29
  br label %bb16
bb15:
  store ptr null, ptr %l56, !tbaa !29
  br label %bb16
bb16:
  %t61 = load ptr, ptr %l56, !tbaa !29
  store ptr %t61, ptr %l40, !tbaa !29
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store ptr null, ptr %l40, !tbaa !29
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7d50ab2c5aa12498_8b4c363ee458c734)
  unreachable
bb22:
  %t62 = load ptr, ptr %l40, !tbaa !29
  store ptr %t62, ptr %l6, !tbaa !29
  %t63 = load ptr, ptr %l6, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb26
bb24:
  %t67 = load ptr, ptr %l6, !tbaa !29
  %t69 = call i1 @compiler_2fcheck_2eplainLen(ptr %v1, ptr %t67)
  store i1 %t69, ptr %l64
  br label %bb25
bb25:
  %t70 = load i1, ptr %l64, !tbaa !21
  %t71 = xor i1 %t70, true
  store i1 %t71, ptr %l62, !tbaa !21
  br label %bb26
bb26:
  %t73 = load i1, ptr %l62, !tbaa !21
  br i1 %t73, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t75 = load ptr, ptr %l3, !tbaa !29
  %t77 = getelementptr %"compiler/check:frame", ptr %t75, i32 0, i32 56
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l68, !tbaa !27
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t81 = getelementptr %"compiler/check:frame", ptr %t79, i32 0, i32 57
  %t82 = load i64, ptr %t81, !tbaa !24
  %t84 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr ptr, ptr %t85, i64 %t82
  %t87 = load ptr, ptr %t86, !tbaa !39
  store ptr %t87, ptr %l7, !tbaa !29
  %t89 = load ptr, ptr %l7, !tbaa !29
  store ptr %t89, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t90 = load ptr, ptr %l72, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb30, label %bb31
bb30:
  %t93 = load ptr, ptr %l72, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 22}
  %t96 = icmp eq i64 %t94, 9
  store i1 %t96, ptr %l73, !tbaa !21
  br label %bb31
bb31:
  %t97 = load i1, ptr %l73, !tbaa !21
  %t98 = xor i1 %t97, true
  br i1 %t98, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t101 = load ptr, ptr %l7, !tbaa !29
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  %t104 = getelementptr { %"compiler/source:Span", ptr }, ptr %t103, i32 0, i32 0
  %t105 = load %"compiler/source:Span", ptr %t104
  store %"compiler/source:Span" %t105, ptr %l8
  %t107 = load ptr, ptr %l7, !tbaa !29
  %t109 = getelementptr { i64, [4 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", ptr }, ptr %t109, i32 0, i32 1
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l10, !tbaa !29
  %t115 = load ptr, ptr %l10, !tbaa !29
  %t117 = getelementptr %"compiler/ast:ForIn", ptr %t115, i32 0, i32 0
  %t118 = load i32, ptr %t117, !tbaa !23
  %t120 = icmp ne i32 %t118, 0
  br i1 %t120, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb37
bb36:
  %t122 = load ptr, ptr %l10, !tbaa !29
  %t124 = getelementptr %"compiler/ast:ForIn", ptr %t122, i32 0, i32 3
  %t125 = load i1, ptr %t124, !tbaa !21
  store i1 %t125, ptr %l86, !tbaa !21
  br label %bb37
bb37:
  %t127 = load i1, ptr %l86, !tbaa !21
  br i1 %t127, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb40
bb39:
  %t128 = load ptr, ptr %l10, !tbaa !29
  %t130 = getelementptr %"compiler/ast:ForIn", ptr %t128, i32 0, i32 5
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  %t135 = icmp sgt i64 %t133, 0
  store i1 %t135, ptr %l89, !tbaa !21
  br label %bb40
bb40:
  %t137 = load i1, ptr %l89, !tbaa !21
  br i1 %t137, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l94, !tbaa !21
  br label %bb43
bb42:
  %t138 = load ptr, ptr %l10, !tbaa !29
  %t140 = getelementptr %"compiler/ast:ForIn", ptr %t138, i32 0, i32 4
  %t141 = load { i64, ptr }, ptr %t140, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t145 = icmp eq i64 %t143, 0
  store i1 %t145, ptr %l94, !tbaa !21
  br label %bb43
bb43:
  %t147 = load i1, ptr %l94, !tbaa !21
  br i1 %t147, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t150 = load ptr, ptr %l10, !tbaa !29
  %t152 = getelementptr %"compiler/ast:ForIn", ptr %t150, i32 0, i32 2
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load ptr, ptr %l6, !tbaa !29
  %t158 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecountsTo(ptr %v0, ptr %v0, ptr %v1, ptr %t149, ptr %t153, ptr %t154)
  store i1 %t158, ptr %l104
  br label %bb47
bb47:
  %t159 = load i1, ptr %l104, !tbaa !21
  %t160 = xor i1 %t159, true
  br i1 %t160, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb49:
  br label %bb50
bb50:
  store i64 0, ptr %l11, !tbaa !24
  %t163 = load ptr, ptr %l10, !tbaa !29
  %t165 = getelementptr %"compiler/ast:ForIn", ptr %t163, i32 0, i32 4
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t168 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t170 = extractvalue { i64, ptr } %t168, 0
  store i64 %t170, ptr %l14, !tbaa !24
  br label %bb51
bb51:
  %t172 = load i64, ptr %l13, !tbaa !24
  %t173 = load i64, ptr %l14, !tbaa !24
  %t176 = icmp slt i64 %t172, %t173
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb52, label %bb53
bb52:
  br label %bb68
bb53:
  br label %bb54
bb54:
  %t180 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t180, ptr %l115, !tbaa !27
  %t181 = load i64, ptr %l13, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr ptr, ptr %t184, i64 %t181
  %t186 = load ptr, ptr %t185, !tbaa !39
  store ptr %t186, ptr %l15, !tbaa !29
  %t188 = load ptr, ptr %l15, !tbaa !29
  store ptr %t188, ptr %l118, !tbaa !29
  store i1 false, ptr %l119, !tbaa !21
  %t189 = load ptr, ptr %l118, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb55, label %bb56
bb55:
  %t192 = load ptr, ptr %l118, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 22}
  %t195 = icmp eq i64 %t193, 3
  store i1 %t195, ptr %l119, !tbaa !21
  br label %bb56
bb56:
  %t196 = load i1, ptr %l119, !tbaa !21
  br i1 %t196, label %bb57, label %bb58
bb57:
  %t197 = load ptr, ptr %l15, !tbaa !29
  %t199 = getelementptr { i64, [4 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t199, i32 0, i32 0
  %t201 = load %"compiler/source:Span", ptr %t200
  store %"compiler/source:Span" %t201, ptr %l16
  %t203 = load ptr, ptr %l15, !tbaa !29
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t205, i32 0, i32 1
  %t207 = load i32, ptr %t206, !range !{i32 0, i32 113}
  %t209 = load ptr, ptr %l15, !tbaa !29
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t209, i32 0, i32 1
  %t212 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t211, i32 0, i32 2
  %t213 = load ptr, ptr %t212
  store ptr %t213, ptr %l18, !tbaa !29
  %t215 = load ptr, ptr %l15, !tbaa !29
  %t217 = getelementptr { i64, [4 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t217, i32 0, i32 3
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l19, !tbaa !29
  %t223 = trunc i64 77 to i32
  %t224 = icmp eq i32 %t207, %t223
  store i1 %t224, ptr %l122, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb59
bb59:
  %t226 = load i1, ptr %l122, !tbaa !21
  br i1 %t226, label %bb60, label %bb61
bb60:
  %t227 = load ptr, ptr %l15, !tbaa !29
  %t229 = getelementptr { i64, [4 x i64] }, ptr %t227, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t229, i32 0, i32 0
  %t231 = load %"compiler/source:Span", ptr %t230
  store %"compiler/source:Span" %t231, ptr %l20
  %t233 = load ptr, ptr %l15, !tbaa !29
  %t235 = getelementptr { i64, [4 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !range !{i32 0, i32 113}
  store i32 %t237, ptr %l21
  %t239 = load ptr, ptr %l15, !tbaa !29
  %t241 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  %t242 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t241, i32 0, i32 2
  %t243 = load ptr, ptr %t242
  %t245 = load ptr, ptr %l15, !tbaa !29
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t247, i32 0, i32 3
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l23, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = load i32, ptr %l1, !tbaa !23
  %t254 = load ptr, ptr %l10, !tbaa !29
  %t256 = getelementptr %"compiler/ast:ForIn", ptr %t254, i32 0, i32 1
  %t257 = load i32, ptr %t256, !tbaa !23
  %t262 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexOf(ptr %v0, ptr %v0, ptr %t251, ptr %t243, i32 %t253, i32 %t257)
  store i1 %t262, ptr %l147
  br label %bb62
bb61:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb63
bb62:
  %t263 = load i1, ptr %l147, !tbaa !21
  store i1 %t263, ptr %l133, !tbaa !21
  br label %bb63
bb63:
  %t264 = load i1, ptr %l133, !tbaa !21
  br i1 %t264, label %bb64, label %bb65
bb64:
  %t265 = load ptr, ptr %l15, !tbaa !29
  %t267 = getelementptr { i64, [4 x i64] }, ptr %t265, i32 0, i32 1
  %t268 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t267, i32 0, i32 0
  %t269 = load %"compiler/source:Span", ptr %t268
  store %"compiler/source:Span" %t269, ptr %l24
  %t271 = load ptr, ptr %l15, !tbaa !29
  %t273 = getelementptr { i64, [4 x i64] }, ptr %t271, i32 0, i32 1
  %t274 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t273, i32 0, i32 1
  %t275 = load i32, ptr %t274, !range !{i32 0, i32 113}
  store i32 %t275, ptr %l25
  %t277 = load ptr, ptr %l15, !tbaa !29
  %t279 = getelementptr { i64, [4 x i64] }, ptr %t277, i32 0, i32 1
  %t280 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t279, i32 0, i32 2
  %t281 = load ptr, ptr %t280
  store ptr %t281, ptr %l26, !tbaa !29
  %t283 = load ptr, ptr %l15, !tbaa !29
  %t285 = getelementptr { i64, [4 x i64] }, ptr %t283, i32 0, i32 1
  %t286 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t285, i32 0, i32 3
  %t287 = load ptr, ptr %t286
  store ptr %t287, ptr %l27, !tbaa !29
  %t289 = load i64, ptr %l11, !tbaa !24
  %t291 = add i64 %t289, 1
  store i64 %t291, ptr %l11, !tbaa !24
  br label %bb66
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t293 = load i64, ptr %l13, !tbaa !24
  %t295 = add i64 %t293, 1
  store i64 %t295, ptr %l13, !tbaa !24
  br label %bb51
bb68:
  %t297 = load i64, ptr %l11, !tbaa !24
  %t299 = icmp ne i64 %t297, 1
  br i1 %t299, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb76
bb70:
  %t301 = load ptr, ptr %l10, !tbaa !29
  %t303 = getelementptr %"compiler/ast:ForIn", ptr %t301, i32 0, i32 4
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l164, !tbaa !27
  %t305 = load ptr, ptr %l10, !tbaa !29
  %t307 = getelementptr %"compiler/ast:ForIn", ptr %t305, i32 0, i32 1
  %t308 = load i32, ptr %t307, !tbaa !23
  store i32 %t308, ptr %l166, !tbaa !23
  %t309 = icmp sge i64 1, 0
  br i1 %t309, label %bb71, label %bb72
bb71:
  %t311 = icmp sle i64 1, 2305843009213693951
  br i1 %t311, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_b5e16646d0bcdcea_28b1a999ae748f9e)
  unreachable
bb73:
  %t313 = mul i64 1, 4
  %t314 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t313)
  %t315 = load i32, ptr %l166, !tbaa !23
  store i64 0, ptr %t316
  br label %fill.317
fill.317:
  %t320 = load i64, ptr %t316
  %t321 = icmp slt i64 %t320, 1
  br i1 %t321, label %fillb.318, label %filld.319
fillb.318:
  %t322 = getelementptr i32, ptr %t314, i64 %t320
  store i32 %t315, ptr %t322
  %t323 = add i64 %t320, 1
  store i64 %t323, ptr %t316
  br label %fill.317
filld.319:
  %t324 = insertvalue { i64, ptr } undef, i64 1, 0
  %t325 = insertvalue { i64, ptr } %t324, ptr %t314, 1
  %t326 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t328 = call i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %s0, { i64, ptr } %t326, { i64, ptr } %t325)
  store i1 %t328, ptr %l170
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_b5e16646d0bcdcea_28b1a999ae748f9e)
  unreachable
bb75:
  %t329 = load i1, ptr %l170, !tbaa !21
  store i1 %t329, ptr %l162, !tbaa !21
  br label %bb76
bb76:
  %t330 = load i1, ptr %l162, !tbaa !21
  br i1 %t330, label %bb77, label %bb78
bb77:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t332 = load ptr, ptr %l10, !tbaa !29
  %t334 = getelementptr %"compiler/ast:ForIn", ptr %t332, i32 0, i32 4
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l173, !tbaa !27
  %t336 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t337 = load ptr, ptr %t336, !tbaa !27
  %t338 = getelementptr ptr, ptr %t337, i64 0
  %t339 = load ptr, ptr %t338, !tbaa !39
  %t341 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t339)
  store %"compiler/source:Span" %t341, ptr %l175
  br label %bb80
bb80:
  %t342 = getelementptr %"compiler/source:Span", ptr %l175, i32 0, i32 0
  %t343 = load i32, ptr %t342, !tbaa !23
  store i32 %t343, ptr %l28, !tbaa !23
  %t345 = load ptr, ptr %l10, !tbaa !29
  %t347 = getelementptr %"compiler/ast:ForIn", ptr %t345, i32 0, i32 4
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  store { i64, ptr } %t348, ptr %l178, !tbaa !27
  %t349 = load ptr, ptr %l10, !tbaa !29
  %t351 = getelementptr %"compiler/ast:ForIn", ptr %t349, i32 0, i32 4
  %t352 = load { i64, ptr }, ptr %t351, !tbaa !27
  %t354 = extractvalue { i64, ptr } %t352, 0
  %t356 = sub i64 %t354, 1
  %t358 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t359 = load ptr, ptr %t358, !tbaa !27
  %t360 = getelementptr ptr, ptr %t359, i64 %t356
  %t361 = load ptr, ptr %t360, !tbaa !39
  %t363 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %t361)
  store %"compiler/source:Span" %t363, ptr %l184
  br label %bb81
bb81:
  %t364 = getelementptr %"compiler/source:Span", ptr %l184, i32 0, i32 1
  %t365 = load i32, ptr %t364, !tbaa !23
  %t367 = load ptr, ptr %l0, !tbaa !29
  store ptr %t367, ptr %l186, !tbaa !29
  %t368 = load i32, ptr %l28, !tbaa !23
  %t372 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t368, i32 %t365)
  store %"compiler/source:Span" %t372, ptr %l189
  br label %bb82
bb82:
  %t373 = load ptr, ptr %l186, !tbaa !29
  %t374 = load %"compiler/source:Span", ptr %l189
  %t375 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t373, %"compiler/source:Span" %t374)
  store { i64, ptr } %t375, ptr %l190
  br label %bb83
bb83:
  %t376 = load { i64, ptr }, ptr %l190, !tbaa !27
  store { i64, ptr } %t376, ptr %l30, !tbaa !27
  %t377 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t377, ptr %l191, !tbaa !27
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i32, ptr %l1, !tbaa !23
  %t382 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t378, i32 %t379)
  store { i64, ptr } %t382, ptr %l194
  br label %bb84
bb84:
  %t383 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t384 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t385 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %v0, { i64, ptr } %t383, { i64, ptr } %t384)
  store i64 %t385, ptr %l195
  br label %bb85
bb85:
  %t386 = load i64, ptr %l195, !tbaa !24
  %t387 = icmp eq i64 %t386, 1
  br i1 %t387, label %bb86, label %bb87
bb86:
  %t389 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t391 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s0, { i64, ptr } %t389, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i64 %t391, ptr %l199
  br label %bb88
bb87:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb89
bb88:
  %t392 = load i64, ptr %l199, !tbaa !24
  %t393 = icmp eq i64 %t392, 0
  store i1 %t393, ptr %l197, !tbaa !21
  br label %bb89
bb89:
  %t395 = load i1, ptr %l197, !tbaa !21
  br i1 %t395, label %bb90, label %bb91
bb90:
  %t396 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t398 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s0, { i64, ptr } %t396, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i64 %t398, ptr %l203
  br label %bb92
bb91:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb93
bb92:
  %t399 = load i64, ptr %l203, !tbaa !24
  %t400 = icmp eq i64 %t399, 0
  store i1 %t400, ptr %l201, !tbaa !21
  br label %bb93
bb93:
  %t402 = load i1, ptr %l201, !tbaa !21
  br i1 %t402, label %bb94, label %bb95
bb94:
  %t403 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t405 = call i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %s0, { i64, ptr } %t403, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i64 %t405, ptr %l207
  br label %bb96
bb95:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb97
bb96:
  %t406 = load i64, ptr %l207, !tbaa !24
  %t407 = icmp eq i64 %t406, 0
  store i1 %t407, ptr %l205, !tbaa !21
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s0)
  %t409 = load i1, ptr %l205, !tbaa !21
  store i1 %t409, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efitData(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l14 = alloca i32
  %l19 = alloca i32
  %l22 = alloca i32
  %l27 = alloca i32
  %l34 = alloca i1
  %l36 = alloca i1
  %l37 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca ptr
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca ptr
  %l52 = alloca ptr
  %l53 = alloca i32
  %l58 = alloca i64
  %l59 = alloca i32
  %l60 = alloca ptr
  %l63 = alloca ptr
  %l65 = alloca ptr
  %l66 = alloca %"compiler/source:Span"
  %l67 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l76 = alloca i64
  %l77 = alloca i32
  %l78 = alloca ptr
  %l81 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca %"compiler/source:Span"
  %l89 = alloca ptr
  %l90 = alloca i32
  %l92 = alloca i32
  %l93 = alloca i1
  %l94 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l106 = alloca i64
  %l111 = alloca i32
  %l116 = alloca i32
  %l119 = alloca i1
  %l124 = alloca i32
  %l126 = alloca i1
  %l127 = alloca ptr
  %l130 = alloca ptr
  %l133 = alloca i32
  %l134 = alloca i32
  %l139 = alloca i32
  %l140 = alloca i1
  %l141 = alloca ptr
  %l142 = alloca ptr
  %l143 = alloca %"compiler/source:Span"
  %l144 = alloca i32
  %l147 = alloca ptr
  %l152 = alloca i32
  %l153 = alloca i64
  %l154 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l3, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i32, ptr %l14, !range !{i32 0, i32 33}
  store i32 %t11, ptr %l5
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l19
  br label %bb2
bb2:
  %t22 = load i32, ptr %l19, !tbaa !23
  store i32 %t22, ptr %l6, !tbaa !23
  %t23 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t25 = trunc i64 20 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t37, ptr %l27
  br label %bb5
bb4:
  %t38 = load i32, ptr %l3, !tbaa !23
  store i32 %t38, ptr %l22, !tbaa !23
  br label %bb6
bb5:
  %t40 = load i32, ptr %l27, !tbaa !23
  store i32 %t40, ptr %l22, !tbaa !23
  br label %bb6
bb6:
  %t41 = load i32, ptr %l22, !tbaa !23
  store i32 %t41, ptr %l7, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/check:Checker", ptr %t42, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = getelementptr %"compiler/generic:Program", ptr %t45, i32 0, i32 2
  %t48 = load i32, ptr %l6, !tbaa !23
  %t49 = load i32, ptr %l7, !tbaa !23
  %t53 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t47, i32 %t48, i32 %t49)
  store i1 %t53, ptr %l34
  br label %bb7
bb7:
  %t54 = load i1, ptr %l34, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb8, label %bb9
bb8:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l37, !tbaa !29
  %t58 = load i32, ptr %l6, !tbaa !23
  store i32 %t58, ptr %l38, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l7, !tbaa !23
  %t63 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t59, i32 %t60)
  store i32 %t63, ptr %l41
  br label %bb10
bb9:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb12
bb10:
  %t64 = load ptr, ptr %l37, !tbaa !29
  %t65 = load i32, ptr %l38, !tbaa !23
  %t66 = load i32, ptr %l41, !tbaa !23
  %t67 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t64, i32 %t65, i32 %t66)
  store i1 %t67, ptr %l42
  br label %bb11
bb11:
  %t68 = load i1, ptr %l42, !tbaa !21
  store i1 %t68, ptr %l36, !tbaa !21
  br label %bb12
bb12:
  %t69 = load i1, ptr %l36, !tbaa !21
  br i1 %t69, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s1
  %t70 = load i32, ptr %l5, !range !{i32 0, i32 33}
  %t72 = trunc i64 20 to i32
  %t73 = icmp eq i32 %t70, %t72
  %t75 = xor i1 %t73, true
  br i1 %t75, label %bb15, label %bb16
bb14:
  br label %bb38
bb15:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l46, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l47, !tbaa !29
  %t79 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t79, ptr %l48
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l49, !tbaa !29
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/check:Checker", ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/generic:Program", ptr %t84, i32 0, i32 2
  store ptr %t86, ptr %l52, !tbaa !29
  %t87 = load i32, ptr %l7, !tbaa !23
  store i32 %t87, ptr %l53, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l2, !tbaa !23
  %t97 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t93, i32 %t94)
  store i64 %t97, ptr %l58
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t98 = load ptr, ptr %l52, !tbaa !29
  %t99 = load i32, ptr %l53, !tbaa !23
  %t100 = load i64, ptr %l58, !tbaa !24
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t98, i32 %t99, i64 %t100)
  store i32 %t101, ptr %l59
  br label %bb18
bb18:
  %t102 = load ptr, ptr %l47, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l48
  %t104 = load ptr, ptr %l49, !tbaa !29
  %t105 = load i32, ptr %l59, !tbaa !23
  %t106 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v0, ptr %t102, %"compiler/source:Span" %t103, ptr %t104, i32 %t105)
  store ptr %t106, ptr %l60
  br label %bb19
bb19:
  %t107 = load i32, ptr %l3, !tbaa !23
  %t108 = load %"compiler/source:Span", ptr %l4
  %t109 = load ptr, ptr %l46, !tbaa !29
  %t110 = load ptr, ptr %l60, !tbaa !29
  %t113 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v0, ptr %v2, ptr %t109, ptr %t110, i32 %t107, %"compiler/source:Span" %t108)
  store ptr %t113, ptr %l63
  br label %bb20
bb20:
  %t114 = load ptr, ptr %l63, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t114, ptr %rv
  br label %ret
bb21:
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t117, ptr %l66
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l67, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t124 = getelementptr %"compiler/generic:Program", ptr %t122, i32 0, i32 2
  store ptr %t124, ptr %l70, !tbaa !29
  %t125 = load i32, ptr %l7, !tbaa !23
  store i32 %t125, ptr %l71, !tbaa !23
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/check:Checker", ptr %t126, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  %t132 = load i32, ptr %l2, !tbaa !23
  %t135 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t131, i32 %t132)
  store i64 %t135, ptr %l76
  br label %bb22
bb22:
  %t136 = load ptr, ptr %l70, !tbaa !29
  %t137 = load i32, ptr %l71, !tbaa !23
  %t138 = load i64, ptr %l76, !tbaa !24
  %t139 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t136, i32 %t137, i64 %t138)
  store i32 %t139, ptr %l77
  br label %bb23
bb23:
  %t140 = load ptr, ptr %l65, !tbaa !29
  %t141 = load %"compiler/source:Span", ptr %l66
  %t142 = load ptr, ptr %l67, !tbaa !29
  %t143 = load i32, ptr %l77, !tbaa !23
  %t144 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %t140, %"compiler/source:Span" %t141, ptr %t142, i32 %t143)
  store ptr %t144, ptr %l78
  br label %bb24
bb24:
  %t145 = load ptr, ptr %l78, !tbaa !29
  store ptr %t145, ptr %l8, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i32, ptr %l3, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %t146, i32 %t147)
  store i1 %t150, ptr %l81
  br label %bb25
bb25:
  %t151 = load i1, ptr %l81, !tbaa !21
  %t152 = xor i1 %t151, true
  br i1 %t152, label %bb26, label %bb27
bb26:
  %t154 = load ptr, ptr %l8, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t154, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l85, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t158, ptr %l86
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/check:Checker", ptr %t159, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/generic:Program", ptr %t162, i32 0, i32 2
  store ptr %t164, ptr %l89, !tbaa !29
  %t165 = load i32, ptr %l6, !tbaa !23
  store i32 %t165, ptr %l90, !tbaa !23
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t166)
  store i32 %t168, ptr %l92
  br label %bb29
bb29:
  %t169 = load ptr, ptr %l89, !tbaa !29
  %t170 = load i32, ptr %l90, !tbaa !23
  %t171 = load i32, ptr %l92, !tbaa !23
  %t172 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t169, i32 %t170, i32 %t171)
  store i1 %t172, ptr %l93
  br label %bb30
bb30:
  %t173 = load i1, ptr %l93, !tbaa !21
  br i1 %t173, label %bb31, label %bb32
bb31:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load %"compiler/source:Span", ptr %l4
  %t178 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s1, ptr %t174, %"compiler/source:Span" %t175)
  store { i64, ptr } %t178, ptr %l97
  br label %bb33
bb32:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l4
  %t183 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s1, ptr %t179, %"compiler/source:Span" %t180)
  store { i64, ptr } %t183, ptr %l102
  br label %bb34
bb33:
  %t184 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t186 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t186, 1
  %t188 = extractvalue { i64, ptr } %t186, 0
  %t189 = add i64 %t185, %t188
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t192 = add i64 %t189, %t191
  %t193 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t192)
  call void @olang_textcopy(ptr %t193, ptr %t184, i64 %t185)
  %t194 = getelementptr i8, ptr %t193, i64 %t185
  call void @olang_textcopy(ptr %t194, ptr %t187, i64 %t188)
  %t195 = getelementptr i8, ptr %t194, i64 %t188
  call void @olang_textcopy(ptr %t195, ptr %t190, i64 %t191)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t193, 1
  %t199 = extractvalue { i64, ptr } %t197, 0
  %t200 = extractvalue { i64, ptr } %t197, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  store { i64, ptr } %t204, ptr %l94, !tbaa !27
  br label %bb35
bb34:
  %t206 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t208 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = extractvalue { i64, ptr } %t208, 0
  %t211 = add i64 %t207, %t210
  %t212 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t213 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t214 = add i64 %t211, %t213
  %t215 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t214)
  call void @olang_textcopy(ptr %t215, ptr %t206, i64 %t207)
  %t216 = getelementptr i8, ptr %t215, i64 %t207
  call void @olang_textcopy(ptr %t216, ptr %t209, i64 %t210)
  %t217 = getelementptr i8, ptr %t216, i64 %t210
  call void @olang_textcopy(ptr %t217, ptr %t212, i64 %t213)
  %t218 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t219 = insertvalue { i64, ptr } %t218, ptr %t215, 1
  %t221 = extractvalue { i64, ptr } %t219, 0
  %t222 = extractvalue { i64, ptr } %t219, 1
  %t223 = mul i64 %t221, 1
  %t224 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t223)
  call void @llvm.memcpy.p0.p0.i64(ptr %t224, ptr %t222, i64 %t223, i1 false)
  %t225 = insertvalue { i64, ptr } undef, i64 %t221, 0
  %t226 = insertvalue { i64, ptr } %t225, ptr %t224, 1
  store { i64, ptr } %t226, ptr %l94, !tbaa !27
  br label %bb35
bb35:
  %t228 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t229 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstToMutRef(ptr %s1, ptr %v0, { i64, ptr } %t228)
  store %"compiler/diagmsg:Msg" %t229, ptr %l105
  br label %bb36
bb36:
  %t230 = load ptr, ptr %l85, !tbaa !29
  %t231 = load %"compiler/source:Span", ptr %l86
  %t232 = load %"compiler/diagmsg:Msg", ptr %l105
  %t233 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t230, %"compiler/source:Span" %t231, %"compiler/diagmsg:Msg" %t232)
  store i64 %t233, ptr %l106
  br label %bb37
bb37:
  %t234 = load ptr, ptr %l8, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t234, ptr %rv
  br label %ret
bb38:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i32, ptr %l7, !tbaa !23
  %t241 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t237, i32 %t238)
  store i32 %t241, ptr %l111
  br label %bb39
bb39:
  %t242 = load i32, ptr %l111, !tbaa !23
  store i32 %t242, ptr %l9, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/check:Checker", ptr %t243, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !29
  %t248 = getelementptr %"compiler/generic:Program", ptr %t246, i32 0, i32 2
  %t249 = load i32, ptr %l9, !tbaa !23
  %t252 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t248, i32 %t249)
  store i32 %t252, ptr %l116
  br label %bb40
bb40:
  %t253 = load i32, ptr %l116, !range !{i32 0, i32 33}
  %t255 = trunc i64 19 to i32
  %t256 = icmp eq i32 %t253, %t255
  br i1 %t256, label %bb41, label %bb42
bb41:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"compiler/check:Checker", ptr %t258, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !29
  %t263 = getelementptr %"compiler/generic:Program", ptr %t261, i32 0, i32 2
  %t264 = load i32, ptr %l9, !tbaa !23
  %t267 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t263, i32 %t264)
  store i32 %t267, ptr %l124
  br label %bb43
bb42:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb44
bb43:
  %t268 = load i32, ptr %l124, !tbaa !23
  %t269 = icmp ne i32 %t268, 0
  store i1 %t269, ptr %l119, !tbaa !21
  br label %bb44
bb44:
  %t271 = load i1, ptr %l119, !tbaa !21
  br i1 %t271, label %bb45, label %bb46
bb45:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l127, !tbaa !29
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr %"compiler/check:Checker", ptr %t273, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !29
  %t278 = getelementptr %"compiler/generic:Program", ptr %t276, i32 0, i32 2
  store ptr %t278, ptr %l130, !tbaa !29
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l6, !tbaa !23
  %t283 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t279, i32 %t280)
  store i32 %t283, ptr %l133
  br label %bb47
bb46:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb51
bb47:
  %t284 = load ptr, ptr %l130, !tbaa !29
  %t285 = load i32, ptr %l133, !tbaa !23
  %t286 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t284, i32 %t285)
  store i32 %t286, ptr %l134
  br label %bb48
bb48:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/check:Checker", ptr %t287, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !29
  %t292 = getelementptr %"compiler/generic:Program", ptr %t290, i32 0, i32 2
  %t293 = load i32, ptr %l9, !tbaa !23
  %t296 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t292, i32 %t293)
  store i32 %t296, ptr %l139
  br label %bb49
bb49:
  %t297 = load ptr, ptr %l127, !tbaa !29
  %t298 = load i32, ptr %l134, !tbaa !23
  %t299 = load i32, ptr %l139, !tbaa !23
  %t300 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t297, i32 %t298, i32 %t299)
  store i1 %t300, ptr %l140
  br label %bb50
bb50:
  %t301 = load i1, ptr %l140, !tbaa !21
  store i1 %t301, ptr %l126, !tbaa !21
  br label %bb51
bb51:
  %t302 = load i1, ptr %l126, !tbaa !21
  br i1 %t302, label %bb52, label %bb53
bb52:
  %t303 = load ptr, ptr %l0, !tbaa !29
  store ptr %t303, ptr %l141, !tbaa !29
  %t304 = load ptr, ptr %l1, !tbaa !29
  store ptr %t304, ptr %l142, !tbaa !29
  %t305 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t305, ptr %l143
  %t306 = load i32, ptr %l7, !tbaa !23
  store i32 %t306, ptr %l144, !tbaa !23
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"compiler/check:Checker", ptr %t307, i32 0, i32 1
  %t310 = load ptr, ptr %t309, !tbaa !29
  %t312 = getelementptr %"compiler/generic:Program", ptr %t310, i32 0, i32 2
  store ptr %t312, ptr %l147, !tbaa !29
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = getelementptr %"compiler/check:Checker", ptr %t313, i32 0, i32 1
  %t316 = load ptr, ptr %t315, !tbaa !29
  %t318 = getelementptr %"compiler/generic:Program", ptr %t316, i32 0, i32 2
  %t319 = load i32, ptr %l9, !tbaa !23
  %t322 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t318, i32 %t319)
  store i32 %t322, ptr %l152
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t323 = load ptr, ptr %l147, !tbaa !29
  %t324 = load i32, ptr %l152, !tbaa !23
  %t325 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t323, i32 %t324)
  store i64 %t325, ptr %l153
  br label %bb55
bb55:
  %t326 = load ptr, ptr %l141, !tbaa !29
  %t327 = load ptr, ptr %l142, !tbaa !29
  %t328 = load %"compiler/source:Span", ptr %l143
  %t329 = load i32, ptr %l144, !tbaa !23
  %t330 = load i64, ptr %l153, !tbaa !24
  %t331 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %t326, ptr %t327, %"compiler/source:Span" %t328, i32 %t329, i64 %t330)
  store ptr %t331, ptr %l154
  br label %bb56
bb56:
  %t332 = load ptr, ptr %l154, !tbaa !29
  store ptr %t332, ptr %rv
  br label %ret
bb57:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eforeignNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/names:Ref"
  %l6 = alloca ptr
  %l7 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca ptr
  %l28 = alloca %"compiler/names:Ref"
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca %"compiler/names:Ref"
  %l44 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l3, !tbaa !27
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t28 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l22, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l24
  br label %bb9
bb9:
  %t45 = load ptr, ptr %l24, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 2
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  %t51 = load ptr, ptr %l22, !tbaa !29
  %t54 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t51, i64 %t48, i32 %t50)
  store %"compiler/names:Ref" %t54, ptr %l28
  br label %bb10
bb10:
  %t55 = load %"compiler/names:Ref", ptr %l28
  store %"compiler/names:Ref" %t55, ptr %l5
  %t56 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t60 = icmp sgt i64 %t58, 1
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/check:Checker", ptr %t62, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l34, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t69)
  store ptr %t71, ptr %l36
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l36, !tbaa !29
  %t74 = getelementptr %"compiler/check:frame", ptr %t72, i32 0, i32 2
  %t75 = load i64, ptr %t74, !tbaa !24
  %t76 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t77 = load i32, ptr %t76, !tbaa !23
  %t78 = load ptr, ptr %l34, !tbaa !29
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %t78, i64 %t75, i32 %t77)
  store %"compiler/names:Ref" %t81, ptr %l40
  br label %bb14
bb14:
  %t82 = load %"compiler/names:Ref", ptr %l40
  store %"compiler/names:Ref" %t82, ptr %l5
  br label %bb15
bb15:
  %t83 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 4 to i32
  %t87 = icmp eq i32 %t84, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t91 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  store i1 %t94, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t96 = load i1, ptr %l44, !tbaa !21
  br i1 %t96, label %bb19, label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !29
  %t103 = getelementptr %"compiler/generic:Program", ptr %t101, i32 0, i32 2
  store ptr %t103, ptr %l50, !tbaa !29
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/check:Checker", ptr %t104, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t108 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 2
  %t111 = load i64, ptr %t110, !tbaa !24
  %t115 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t107, i64 %t109, i64 %t111)
  store i32 %t115, ptr %l55
  br label %bb22
bb22:
  %t116 = load ptr, ptr %l50, !tbaa !29
  %t117 = load i32, ptr %l55, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t118, ptr %l56
  br label %bb23
bb23:
  %t119 = load i32, ptr %l56, !range !{i32 0, i32 6}
  %t121 = trunc i64 5 to i32
  %t122 = icmp eq i32 %t119, %t121
  store i1 %t122, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %rv
  br label %ret
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c47153cd0729ef18_9d6ac816410ff05c)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efromIterElem(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i32
  %l24 = alloca i32
  %l27 = alloca ptr
  %l32 = alloca i32
  %l33 = alloca { i64, ptr }
  %l41 = alloca i1
  %l45 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca i32
  %l58 = alloca i64
  %l63 = alloca i32
  %l66 = alloca i1
  %l71 = alloca i64
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l109 = alloca i64
  %l116 = alloca i32
  %l120 = alloca ptr
  %l121 = alloca i64
  %l126 = alloca i64
  %l127 = alloca %"compiler/generic:varRow"
  %l134 = alloca ptr
  %l135 = alloca i32
  %l136 = alloca i64
  %l141 = alloca i32
  %l142 = alloca i32
  %l147 = alloca i32
  %l151 = alloca i32
  %l155 = alloca ptr
  %l160 = alloca i32
  %l161 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l168 = alloca i32
  %l175 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca { i64, ptr }
  %l185 = alloca i1
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l192 = alloca { i64, ptr }
  %l196 = alloca i64
  %l199 = alloca i1
  %l202 = alloca i1
  %l207 = alloca ptr
  %l212 = alloca i32
  %l213 = alloca i32
  %l217 = alloca i1
  %l218 = alloca i32
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
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
  %t6 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %t4, i64 %t5, i32 %t6)
  store i32 %t10, ptr %l24
  br label %bb1
bb1:
  %t11 = load i32, ptr %l24, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/check:Checker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  store ptr %t17, ptr %l27, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t23, i32 %t11)
  store i32 %t27, ptr %l32
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l27, !tbaa !29
  %t29 = load i32, ptr %l32, !tbaa !23
  %t30 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t28, i32 %t29)
  store { i64, ptr } %t30, ptr %l33
  br label %bb3
bb3:
  %t31 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t31, ptr %l4, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp eq i64 %t34, 0
  br i1 %t36, label %bb4, label %bb5
bb4:
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t38, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t40 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 0
  %t44 = icmp sgt i64 %t42, 1
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t50 = load i64, ptr %l1, !tbaa !24
  %t53 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l45
  br label %bb9
bb8:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb10
bb9:
  %t54 = load ptr, ptr %l45, !tbaa !29
  %t56 = getelementptr %"compiler/ast:Func", ptr %t54, i32 0, i32 3
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Sig", ptr %t57, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l48, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr ptr, ptr %t62, i64 1
  %t64 = load ptr, ptr %t63, !tbaa !39
  %t66 = getelementptr %"compiler/ast:Param", ptr %t64, i32 0, i32 3
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  store i1 %t69, ptr %l41, !tbaa !21
  br label %bb10
bb10:
  %t71 = load i1, ptr %l41, !tbaa !21
  br i1 %t71, label %bb11, label %bb12
bb11:
  %t72 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t72, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t75, ptr %l54, !tbaa !27
  %t76 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i32, ptr %t77, i64 0
  %t79 = load i32, ptr %t78, !tbaa !33
  %t82 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t74, i32 %t79)
  store i32 %t82, ptr %l56
  br label %bb14
bb14:
  %t83 = load i32, ptr %l56, !tbaa !23
  store i32 %t83, ptr %l5, !tbaa !23
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = call i64 @compiler_2fgeneric_2eFnOwner(i64 %t84)
  store i64 %t86, ptr %l58
  br label %bb15
bb15:
  %t87 = load i64, ptr %l58, !tbaa !24
  store i64 %t87, ptr %l6, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = getelementptr %"compiler/generic:Program", ptr %t91, i32 0, i32 2
  %t94 = load i32, ptr %l5, !tbaa !23
  %t97 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t93, i32 %t94)
  store i32 %t97, ptr %l63
  br label %bb16
bb16:
  %t98 = load i32, ptr %l63, !range !{i32 0, i32 33}
  %t100 = trunc i64 25 to i32
  %t101 = icmp eq i32 %t98, %t100
  br i1 %t101, label %bb17, label %bb18
bb17:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/check:Checker", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t108 = getelementptr %"compiler/generic:Program", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l5, !tbaa !23
  %t112 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t108, i32 %t109)
  store i64 %t112, ptr %l71
  br label %bb19
bb18:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb20
bb19:
  %t113 = load i64, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l71, !tbaa !24
  %t116 = icmp eq i64 %t114, %t113
  store i1 %t116, ptr %l66, !tbaa !21
  br label %bb20
bb20:
  %t118 = load i1, ptr %l66, !tbaa !21
  br i1 %t118, label %bb21, label %bb22
bb21:
  store %olang.scope zeroinitializer, ptr %s3
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/check:Checker", ptr %t119, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !29
  %t123 = load i64, ptr %l1, !tbaa !24
  %t124 = load i32, ptr %l2, !tbaa !23
  %t128 = call { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %s3, ptr %t122, i64 %t123, i32 %t124)
  store { i64, ptr } %t128, ptr %l78
  br label %bb23
bb22:
  br label %bb66
bb23:
  %t129 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t129, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t134 = load i64, ptr %l9, !tbaa !24
  %t135 = load i64, ptr %l8, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb24, label %bb25
bb24:
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb29
bb26:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l8, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l10, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l87, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb28
bb28:
  %t160 = load i64, ptr %l87, !tbaa !24
  store i64 %t160, ptr %l84, !tbaa !24
  br label %bb29
bb29:
  %t161 = load i64, ptr %l84, !tbaa !24
  store i64 %t161, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t162 = load i64, ptr %l12, !tbaa !24
  %t163 = load i64, ptr %l11, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t170 = load i64, ptr %l8, !tbaa !24
  %t171 = load i64, ptr %l12, !tbaa !24
  %t172 = load i64, ptr %l10, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l13, !tbaa !24
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !27
  %t184 = getelementptr i32, ptr %t183, i64 %t180
  %t185 = load i32, ptr %t184, !tbaa !33
  %t186 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t189 = icmp eq i32 %t185, %t186
  br i1 %t189, label %bb34, label %bb35
bb34:
  %t191 = load i64, ptr %l13, !tbaa !24
  store i64 %t191, ptr %l109, !tbaa !24
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/check:Checker", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = getelementptr %"compiler/generic:Program", ptr %t195, i32 0, i32 2
  %t198 = load i64, ptr %l6, !tbaa !24
  %t199 = load i64, ptr %l13, !tbaa !24
  %t200 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %t197, i64 %t198, i64 %t199, i64 %t200)
  store i32 %t205, ptr %l116
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t206 = load i32, ptr %l116, !tbaa !23
  %t207 = load i64, ptr %l109, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i32, ptr %t209, i64 %t207
  store i32 %t206, ptr %t210, !tbaa !33
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t211 = load i64, ptr %l12, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l12, !tbaa !24
  br label %bb30
bb39:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/check:Checker", ptr %t215, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !29
  store ptr %t218, ptr %l120, !tbaa !29
  %t219 = load i64, ptr %l6, !tbaa !24
  store i64 %t219, ptr %l121, !tbaa !24
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/check:Checker", ptr %t220, i32 0, i32 1
  %t223 = load ptr, ptr %t222, !tbaa !29
  %t225 = getelementptr %"compiler/generic:Program", ptr %t223, i32 0, i32 2
  %t226 = load i32, ptr %l5, !tbaa !23
  %t229 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t225, i32 %t226)
  store i64 %t229, ptr %l126
  br label %bb40
bb40:
  %t230 = load ptr, ptr %l120, !tbaa !29
  %t231 = load i64, ptr %l121, !tbaa !24
  %t232 = load i64, ptr %l126, !tbaa !24
  %t233 = call %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %t230, i64 %t231, i64 %t232)
  store %"compiler/generic:varRow" %t233, ptr %l127
  br label %bb41
bb41:
  %t234 = getelementptr %"compiler/generic:varRow", ptr %l127, i32 0, i32 3
  %t235 = load i32, ptr %t234, !tbaa !23
  store i32 %t235, ptr %l14, !tbaa !23
  %t237 = load i32, ptr %l14, !tbaa !23
  %t238 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t241 = icmp eq i32 %t237, %t238
  br i1 %t241, label %bb42, label %bb43
bb42:
  %t243 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t243, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/check:Checker", ptr %t245, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !29
  store ptr %t248, ptr %l134, !tbaa !29
  %t249 = load i32, ptr %l14, !tbaa !23
  store i32 %t249, ptr %l135, !tbaa !23
  %t250 = load i64, ptr %l6, !tbaa !24
  store i64 %t250, ptr %l136, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !29
  %t256 = getelementptr %"compiler/generic:Program", ptr %t254, i32 0, i32 2
  %t257 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t260 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s3, ptr %t256, { i64, ptr } %t257)
  store i32 %t260, ptr %l141
  br label %bb45
bb45:
  %t261 = load ptr, ptr %l134, !tbaa !29
  %t262 = load i32, ptr %l135, !tbaa !23
  %t263 = load i64, ptr %l136, !tbaa !24
  %t264 = load i32, ptr %l141, !tbaa !23
  %t265 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %t261, i32 %t262, i64 %t263, i32 %t264)
  store i32 %t265, ptr %l142
  br label %bb46
bb46:
  %t266 = load i32, ptr %l142, !tbaa !23
  store i32 %t266, ptr %l15, !tbaa !23
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/check:Checker", ptr %t267, i32 0, i32 1
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t272 = getelementptr %"compiler/generic:Program", ptr %t270, i32 0, i32 2
  %t273 = load i32, ptr %l15, !tbaa !23
  %t276 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t272, i32 %t273)
  store i32 %t276, ptr %l147
  br label %bb47
bb47:
  %t277 = load i32, ptr %l147, !range !{i32 0, i32 33}
  %t279 = trunc i64 22 to i32
  %t280 = icmp eq i32 %t277, %t279
  %t282 = xor i1 %t280, true
  br i1 %t282, label %bb48, label %bb49
bb48:
  %t284 = load i32, ptr %l15, !tbaa !23
  store i32 %t284, ptr %l151, !tbaa !23
  br label %bb52
bb49:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/check:Checker", ptr %t286, i32 0, i32 1
  %t289 = load ptr, ptr %t288, !tbaa !29
  %t291 = getelementptr %"compiler/generic:Program", ptr %t289, i32 0, i32 2
  store ptr %t291, ptr %l155, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/check:Checker", ptr %t292, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !29
  %t297 = getelementptr %"compiler/generic:Program", ptr %t295, i32 0, i32 2
  %t298 = load i32, ptr %l15, !tbaa !23
  %t301 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t297, i32 %t298)
  store i32 %t301, ptr %l160
  br label %bb50
bb50:
  %t302 = load ptr, ptr %l155, !tbaa !29
  %t303 = load i32, ptr %l160, !tbaa !23
  %t304 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s3, ptr %t302, i32 %t303)
  store { i64, ptr } %t304, ptr %l161
  br label %bb51
bb51:
  %t305 = load { i64, ptr }, ptr %l161, !tbaa !27
  store { i64, ptr } %t305, ptr %l162, !tbaa !27
  %t306 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr i32, ptr %t307, i64 0
  %t309 = load i32, ptr %t308, !tbaa !33
  store i32 %t309, ptr %l151, !tbaa !23
  br label %bb52
bb52:
  %t311 = load i32, ptr %l151, !tbaa !23
  store i32 %t311, ptr %l16, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l16, !tbaa !23
  %t321 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t317, i32 %t318)
  store i32 %t321, ptr %l168
  br label %bb53
bb53:
  %t322 = load i32, ptr %l168, !range !{i32 0, i32 33}
  %t324 = trunc i64 18 to i32
  %t325 = icmp eq i32 %t322, %t324
  %t327 = xor i1 %t325, true
  br i1 %t327, label %bb54, label %bb55
bb54:
  %t329 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t329, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/check:Checker", ptr %t331, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !29
  %t336 = getelementptr %"compiler/generic:Program", ptr %t334, i32 0, i32 2
  store ptr %t336, ptr %l175, !tbaa !29
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t339 = getelementptr %"compiler/check:Checker", ptr %t337, i32 0, i32 1
  %t340 = load ptr, ptr %t339, !tbaa !29
  %t342 = getelementptr %"compiler/generic:Program", ptr %t340, i32 0, i32 2
  %t343 = load i32, ptr %l16, !tbaa !23
  %t346 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %t342, i32 %t343)
  store i32 %t346, ptr %l180
  br label %bb57
bb57:
  %t347 = load ptr, ptr %l175, !tbaa !29
  %t348 = load i32, ptr %l180, !tbaa !23
  %t349 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t347, i32 %t348)
  store { i64, ptr } %t349, ptr %l181
  br label %bb58
bb58:
  %t350 = load { i64, ptr }, ptr %l181, !tbaa !27
  store { i64, ptr } %t350, ptr %l17, !tbaa !27
  %t351 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t353 = extractvalue { i64, ptr } %t351, 0
  %t355 = icmp eq i64 %t353, 0
  br i1 %t355, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l185, !tbaa !21
  br label %bb62
bb60:
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t358 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t358, ptr %l187, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t360 = load ptr, ptr %t359, !tbaa !27
  %t361 = getelementptr i32, ptr %t360, i64 0
  %t362 = load i32, ptr %t361, !tbaa !33
  %t363 = load i64, ptr %l6, !tbaa !24
  %t367 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t357, i32 %t362, i64 %t363)
  store i1 %t367, ptr %l190
  br label %bb61
bb61:
  %t368 = load i1, ptr %l190, !tbaa !21
  store i1 %t368, ptr %l185, !tbaa !21
  br label %bb62
bb62:
  %t369 = load i1, ptr %l185, !tbaa !21
  br i1 %t369, label %bb63, label %bb64
bb63:
  %t370 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t370, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t372 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t372, ptr %l192, !tbaa !27
  %t373 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t374 = load ptr, ptr %t373, !tbaa !27
  %t375 = getelementptr i32, ptr %t374, i64 0
  %t376 = load i32, ptr %t375, !tbaa !33
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t376, ptr %rv
  br label %ret
bb66:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i32, ptr %l5, !tbaa !23
  %t382 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t378, i32 %t379, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d35, i32 0, i32 1) }, i64 0)
  store i64 %t382, ptr %l196
  br label %bb67
bb67:
  %t383 = load i64, ptr %l196, !tbaa !24
  store i64 %t383, ptr %l18, !tbaa !24
  %t384 = load i64, ptr %l18, !tbaa !24
  %t386 = icmp slt i64 %t384, 0
  br i1 %t386, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l199, !tbaa !21
  br label %bb71
bb69:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i64, ptr %l18, !tbaa !24
  %t392 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %t388, i64 %t389)
  store i1 %t392, ptr %l202
  br label %bb70
bb70:
  %t393 = load i1, ptr %l202, !tbaa !21
  %t394 = xor i1 %t393, true
  store i1 %t394, ptr %l199, !tbaa !21
  br label %bb71
bb71:
  %t396 = load i1, ptr %l199, !tbaa !21
  br i1 %t396, label %bb72, label %bb73
bb72:
  %t397 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t397, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/check:Checker", ptr %t399, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !29
  %t404 = getelementptr %"compiler/generic:Program", ptr %t402, i32 0, i32 2
  store ptr %t404, ptr %l207, !tbaa !29
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/check:Checker", ptr %t405, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !29
  %t409 = load i64, ptr %l18, !tbaa !24
  %t410 = load i32, ptr %l5, !tbaa !23
  %t414 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %t408, i64 %t409, i32 %t410)
  store i32 %t414, ptr %l212
  br label %bb75
bb75:
  %t415 = load ptr, ptr %l207, !tbaa !29
  %t416 = load i32, ptr %l212, !tbaa !23
  %t417 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t415, i32 %t416)
  store i32 %t417, ptr %l213
  br label %bb76
bb76:
  %t418 = load i32, ptr %l213, !tbaa !23
  store i32 %t418, ptr %l19, !tbaa !23
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load i32, ptr %l19, !tbaa !23
  %t421 = load i64, ptr %l6, !tbaa !24
  %t425 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %t419, i32 %t420, i64 %t421)
  store i1 %t425, ptr %l217
  br label %bb77
bb77:
  %t426 = load i1, ptr %l217, !tbaa !21
  br i1 %t426, label %bb78, label %bb79
bb78:
  %t427 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t427, ptr %l218, !tbaa !23
  br label %bb80
bb79:
  %t429 = load i32, ptr %l19, !tbaa !23
  store i32 %t429, ptr %l218, !tbaa !23
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s0)
  %t431 = load i32, ptr %l218, !tbaa !23
  store i32 %t431, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eimmutableGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca i1
  %l15 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/check:Checker", ptr %a0, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t10 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t4, i64 %a1, i32 %a2)
  store ptr %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l8, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/ast:VarDecl", ptr %t18, i32 0, i32 2
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t21)
  store i1 %t23, ptr %l15
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t24 = load i1, ptr %l15, !tbaa !21
  %t25 = xor i1 %t24, true
  store i1 %t25, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l12, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneBinType(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca i1
  %l17 = alloca i1
  %l20 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i1
  %l39 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i32
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l56 = alloca i32
  %l59 = alloca i1
  %l60 = alloca i1
  %l63 = alloca i1
  %l68 = alloca i64
  %l74 = alloca i32
  %l77 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l92 = alloca i1
  %l93 = alloca i1
  %l96 = alloca i1
  %l97 = alloca i32
  %l102 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca %"compiler/source:Span"
  %l105 = alloca i64
  %l107 = alloca i32
  %l118 = alloca i32
  %l123 = alloca i1
  %l124 = alloca i1
  %l127 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i1
  %l137 = alloca i1
  %s3 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  store i1 %t11, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t14, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t18 = trunc i64 44 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  %t21 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t23 = trunc i64 45 to i32
  %t24 = icmp eq i32 %t21, %t23
  store i1 %t24, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t26 = load i1, ptr %l17, !tbaa !21
  br i1 %t26, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t27 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t29 = trunc i64 46 to i32
  %t30 = icmp eq i32 %t27, %t29
  store i1 %t30, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l20, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t37 = icmp eq i32 %t33, %t34
  br i1 %t37, label %bb15, label %bb16
bb14:
  br label %bb21
bb15:
  %t39 = load i32, ptr %l3, !tbaa !23
  %t40 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t43 = icmp eq i32 %t39, %t40
  store i1 %t43, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t45 = load i1, ptr %l26, !tbaa !21
  br i1 %t45, label %bb18, label %bb19
bb18:
  %t46 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t46, ptr %l30, !tbaa !23
  br label %bb20
bb19:
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t48, ptr %l30, !tbaa !23
  br label %bb20
bb20:
  %t50 = load i32, ptr %l30, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
bb21:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i32, ptr %l2, !tbaa !23
  %t55 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l35
  br label %bb22
bb22:
  %t56 = load i1, ptr %l35, !tbaa !21
  br i1 %t56, label %bb23, label %bb24
bb23:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i32, ptr %l2, !tbaa !23
  %t61 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l39
  br label %bb25
bb24:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb30
bb25:
  %t62 = load i1, ptr %l39, !tbaa !21
  br i1 %t62, label %bb26, label %bb27
bb26:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/check:Checker", ptr %t63, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t67 = load i32, ptr %l2, !tbaa !23
  %t70 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t66, i32 %t67)
  store i1 %t70, ptr %l44
  br label %bb28
bb27:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb29
bb28:
  %t71 = load i1, ptr %l44, !tbaa !21
  store i1 %t71, ptr %l40, !tbaa !21
  br label %bb29
bb29:
  %t72 = load i1, ptr %l40, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l36, !tbaa !21
  br label %bb30
bb30:
  %t75 = load i1, ptr %l36, !tbaa !21
  br i1 %t75, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s3
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l46, !tbaa !29
  %t77 = load i32, ptr %l2, !tbaa !23
  store i32 %t77, ptr %l47, !tbaa !23
  %t78 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t80 = call { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %s3, i32 %t78)
  store { i64, ptr } %t80, ptr %l49
  br label %bb33
bb32:
  br label %bb39
bb33:
  %t81 = load ptr, ptr %l46, !tbaa !29
  %t82 = load i32, ptr %l47, !tbaa !23
  %t83 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t84 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s3, ptr %t81, i32 %t82, { i64, ptr } %t83, i64 1)
  store i64 %t84, ptr %l50
  br label %bb34
bb34:
  %t85 = load i64, ptr %l50, !tbaa !24
  store i64 %t85, ptr %l4, !tbaa !24
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb35, label %bb36
bb35:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i64, ptr %l4, !tbaa !24
  %t92 = load i32, ptr %l2, !tbaa !23
  %t96 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t90, i64 %t91, i32 %t92)
  store i32 %t96, ptr %l56
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  %t97 = load i32, ptr %l56, !tbaa !23
  store i32 %t97, ptr %rv
  br label %ret
bb38:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb39:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i32, ptr %l3, !tbaa !23
  %t102 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t102, ptr %l59
  br label %bb40
bb40:
  %t103 = load i1, ptr %l59, !tbaa !21
  br i1 %t103, label %bb41, label %bb42
bb41:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i32, ptr %l3, !tbaa !23
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t108, ptr %l63
  br label %bb43
bb42:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb44
bb43:
  %t109 = load i1, ptr %l63, !tbaa !21
  %t110 = xor i1 %t109, true
  store i1 %t110, ptr %l60, !tbaa !21
  br label %bb44
bb44:
  %t112 = load i1, ptr %l60, !tbaa !21
  br i1 %t112, label %bb45, label %bb46
bb45:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i32, ptr %l3, !tbaa !23
  %t115 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t119 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %t113, i32 %t114, i32 %t115)
  store i64 %t119, ptr %l68
  br label %bb47
bb46:
  br label %bb52
bb47:
  %t120 = load i64, ptr %l68, !tbaa !24
  store i64 %t120, ptr %l5, !tbaa !24
  %t121 = load i64, ptr %l5, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  br i1 %t123, label %bb48, label %bb49
bb48:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l5, !tbaa !24
  %t127 = load i32, ptr %l3, !tbaa !23
  %t131 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t125, i64 %t126, i32 %t127)
  store i32 %t131, ptr %l74
  br label %bb50
bb49:
  br label %bb51
bb50:
  %t132 = load i32, ptr %l74, !tbaa !23
  store i32 %t132, ptr %rv
  br label %ret
bb51:
  br label %bb52
bb52:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l2, !tbaa !23
  %t137 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t133, i32 %t134)
  store i1 %t137, ptr %l77
  br label %bb53
bb53:
  %t138 = load i1, ptr %l77, !tbaa !21
  %t139 = xor i1 %t138, true
  br i1 %t139, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb57
bb55:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l3, !tbaa !23
  %t145 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t141, i32 %t142)
  store i1 %t145, ptr %l82
  br label %bb56
bb56:
  %t146 = load i1, ptr %l82, !tbaa !21
  %t147 = xor i1 %t146, true
  store i1 %t147, ptr %l79, !tbaa !21
  br label %bb57
bb57:
  %t149 = load i1, ptr %l79, !tbaa !21
  br i1 %t149, label %bb58, label %bb59
bb58:
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t150, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  %t152 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t154 = trunc i64 105 to i32
  %t155 = icmp eq i32 %t152, %t154
  br i1 %t155, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l87, !tbaa !21
  br label %bb63
bb62:
  %t157 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t159 = trunc i64 106 to i32
  %t160 = icmp eq i32 %t157, %t159
  store i1 %t160, ptr %l87, !tbaa !21
  br label %bb63
bb63:
  %t162 = load i1, ptr %l87, !tbaa !21
  br i1 %t162, label %bb64, label %bb65
bb64:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i32, ptr %l2, !tbaa !23
  %t167 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t163, i32 %t164)
  store i1 %t167, ptr %l92
  br label %bb66
bb65:
  br label %bb74
bb66:
  %t168 = load i1, ptr %l92, !tbaa !21
  br i1 %t168, label %bb67, label %bb68
bb67:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l3, !tbaa !23
  %t173 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t169, i32 %t170)
  store i1 %t173, ptr %l96
  br label %bb69
bb68:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb70
bb69:
  %t174 = load i1, ptr %l96, !tbaa !21
  store i1 %t174, ptr %l93, !tbaa !21
  br label %bb70
bb70:
  %t175 = load i1, ptr %l93, !tbaa !21
  br i1 %t175, label %bb71, label %bb72
bb71:
  %t176 = load i32, ptr %l2, !tbaa !23
  store i32 %t176, ptr %l97, !tbaa !23
  br label %bb73
bb72:
  %t178 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t178, ptr %l97, !tbaa !23
  br label %bb73
bb73:
  %t180 = load i32, ptr %l97, !tbaa !23
  store i32 %t180, ptr %rv
  br label %ret
bb74:
  %t181 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t183 = trunc i64 70 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb75, label %bb76
bb75:
  store %olang.scope zeroinitializer, ptr %s9
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l102, !tbaa !29
  %t187 = load i32, ptr %l2, !tbaa !23
  store i32 %t187, ptr %l103, !tbaa !23
  %t188 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s9, i32 -1, i32 -1)
  store %"compiler/source:Span" %t188, ptr %l104
  br label %bb77
bb76:
  br label %bb82
bb77:
  %t189 = load ptr, ptr %l102, !tbaa !29
  %t190 = load i32, ptr %l103, !tbaa !23
  %t191 = load %"compiler/source:Span", ptr %l104
  %t192 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %t189, i32 %t190, %"compiler/source:Span" %t191)
  store i64 %t192, ptr %l105
  br label %bb78
bb78:
  %t193 = load i64, ptr %l105, !tbaa !24
  %t194 = icmp sge i64 %t193, 0
  br i1 %t194, label %bb79, label %bb80
bb79:
  %t196 = load i32, ptr %l2, !tbaa !23
  store i32 %t196, ptr %l107, !tbaa !23
  br label %bb81
bb80:
  %t198 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t198, ptr %l107, !tbaa !23
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s9)
  %t200 = load i32, ptr %l107, !tbaa !23
  store i32 %t200, ptr %rv
  br label %ret
bb82:
  %t201 = load i32, ptr %l2, !tbaa !23
  store i32 %t201, ptr %l6, !tbaa !23
  %t203 = load i32, ptr %l2, !tbaa !23
  %t204 = load i32, ptr %l3, !tbaa !23
  %t207 = icmp ne i32 %t203, %t204
  br i1 %t207, label %bb83, label %bb84
bb83:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/check:Checker", ptr %t209, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !29
  %t213 = load i32, ptr %l2, !tbaa !23
  %t214 = load i32, ptr %l3, !tbaa !23
  %t218 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %t212, i32 %t213, i32 %t214)
  store i32 %t218, ptr %l118
  br label %bb85
bb84:
  br label %bb86
bb85:
  %t219 = load i32, ptr %l118, !tbaa !23
  store i32 %t219, ptr %l6, !tbaa !23
  br label %bb86
bb86:
  %t220 = load i32, ptr %l6, !tbaa !23
  %t222 = icmp slt i32 %t220, 0
  br i1 %t222, label %bb87, label %bb88
bb87:
  %t224 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t224, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  %t226 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t228 = call i1 @compiler_2fcheck_2eintOnly(i32 %t226)
  store i1 %t228, ptr %l123
  br label %bb90
bb90:
  %t229 = load i1, ptr %l123, !tbaa !21
  br i1 %t229, label %bb91, label %bb92
bb91:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i32, ptr %l6, !tbaa !23
  %t234 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %t230, i32 %t231)
  store i1 %t234, ptr %l127
  br label %bb93
bb92:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb94
bb93:
  %t235 = load i1, ptr %l127, !tbaa !21
  %t236 = xor i1 %t235, true
  store i1 %t236, ptr %l124, !tbaa !21
  br label %bb94
bb94:
  %t238 = load i1, ptr %l124, !tbaa !21
  br i1 %t238, label %bb95, label %bb96
bb95:
  %t239 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t239, ptr %rv
  br label %ret
bb96:
  br label %bb97
bb97:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i32, ptr %l6, !tbaa !23
  %t245 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t241, i32 %t242)
  store i1 %t245, ptr %l132
  br label %bb98
bb98:
  %t246 = load i1, ptr %l132, !tbaa !21
  br i1 %t246, label %bb99, label %bb100
bb99:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/check:Checker", ptr %t247, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !29
  %t251 = load i32, ptr %l6, !tbaa !23
  %t254 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t250, i32 %t251)
  store i1 %t254, ptr %l137
  br label %bb101
bb100:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb102
bb101:
  %t255 = load i1, ptr %l137, !tbaa !21
  %t256 = xor i1 %t255, true
  store i1 %t256, ptr %l133, !tbaa !21
  br label %bb102
bb102:
  %t258 = load i1, ptr %l133, !tbaa !21
  br i1 %t258, label %bb103, label %bb104
bb103:
  %t259 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t259, ptr %rv
  br label %ret
bb104:
  br label %bb105
bb105:
  %t261 = load i32, ptr %l6, !tbaa !23
  store i32 %t261, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l9 = alloca i64
  %l15 = alloca %"compiler/check:laneNode"
  %l19 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i32
  %l26 = alloca i32
  %s2 = alloca %olang.scope
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
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %t7, ptr %t8)
  store i64 %t11, ptr %l9
  br label %bb4
bb4:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/check:Checker", ptr %t17, i32 0, i32 46
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %s2, ptr %t19, i64 %t20)
  store %"compiler/check:laneNode" %t23, ptr %l15
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t24 = getelementptr %"compiler/check:laneNode", ptr %l15, i32 0, i32 8
  %t25 = load i32, ptr %t24, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 %t25, ptr %rv
  br label %ret
bb8:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t30 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t27)
  store i32 %t30, ptr %l19
  br label %bb9
bb9:
  %t31 = load i32, ptr %l19, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %t32, i32 %t33)
  store i1 %t36, ptr %l22
  br label %bb10
bb10:
  %t37 = load i1, ptr %l22, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l26
  br label %bb13
bb12:
  %t43 = load i32, ptr %l3, !tbaa !23
  store i32 %t43, ptr %l23, !tbaa !23
  br label %bb14
bb13:
  %t45 = load i32, ptr %l26, !tbaa !23
  store i32 %t45, ptr %l23, !tbaa !23
  br label %bb14
bb14:
  %t46 = load i32, ptr %l23, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elimit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l16 = alloca i32
  %l21 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l31 = alloca i64
  %l34 = alloca ptr
  %l37 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l48 = alloca i32
  %l51 = alloca ptr
  %l52 = alloca %"compiler/source:Span"
  %l55 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diagmsg:Msg"
  %l59 = alloca i64
  %l62 = alloca ptr
  %l67 = alloca i1
  %l69 = alloca i64
  %l72 = alloca i1
  %l75 = alloca i1
  %l79 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l81 = alloca %"compiler/source:Span"
  %l84 = alloca { i64, ptr }
  %l90 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i64
  %l94 = alloca ptr
  %l97 = alloca i1
  %l102 = alloca i64
  %l108 = alloca i1
  %l114 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l117 = alloca i32
  %l118 = alloca i32
  %l122 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l126 = alloca i32
  %l127 = alloca i32
  %l131 = alloca ptr
  %l132 = alloca ptr
  %l133 = alloca %"compiler/source:Span"
  %l135 = alloca i32
  %l140 = alloca i64
  %l142 = alloca ptr
  %l144 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca ptr
  %l155 = alloca %"compiler/source:Span"
  %l156 = alloca i32
  %l162 = alloca i64
  %l163 = alloca ptr
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %a4)
  store { i64, ptr } %t5, ptr %l13
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l16
  br label %bb2
bb2:
  %t12 = load i32, ptr %l16, !tbaa !23
  store i32 %t12, ptr %l6, !tbaa !23
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = getelementptr %"compiler/generic:Program", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %l6, !tbaa !23
  %t22 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t18, i32 %t19)
  store i1 %t22, ptr %l21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l21, !tbaa !21
  %t24 = xor i1 %t23, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l23, !tbaa !29
  %t27 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t27, ptr %l24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s1, ptr %t28, i32 %t29)
  store { i64, ptr } %t32, ptr %l27
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t33 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = mul i64 %t34, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t36)
  call void @llvm.memcpy.p0.p0.i64(ptr %t37, ptr %t35, i64 %t36, i1 false)
  %t38 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  %t40 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t43 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s1, ptr %v0, ptr %s1, ptr %v0, { i64, ptr } %t39, { i64, ptr } %t40, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t43, ptr %l30
  br label %bb7
bb7:
  %t44 = load ptr, ptr %l23, !tbaa !29
  %t45 = load %"compiler/source:Span", ptr %l24
  %t46 = load %"compiler/diagmsg:Msg", ptr %l30
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t44, %"compiler/source:Span" %t45, %"compiler/diagmsg:Msg" %t46)
  store i64 %t47, ptr %l31
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load %"compiler/source:Span", ptr %l1
  %t52 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t48, %"compiler/source:Span" %t49)
  store ptr %t52, ptr %l34
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t53 = load ptr, ptr %l34, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb10:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l3, !tbaa !23
  %t58 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %t54, i32 %t55)
  store i1 %t58, ptr %l37
  br label %bb11
bb11:
  %t59 = load i1, ptr %l37, !tbaa !21
  br i1 %t59, label %bb12, label %bb13
bb12:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Checker", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %t63, i32 %t64)
  store i1 %t67, ptr %l42
  br label %bb14
bb13:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb19
bb14:
  %t68 = load i1, ptr %l42, !tbaa !21
  %t69 = xor i1 %t68, true
  br i1 %t69, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb16:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/check:Checker", ptr %t71, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t75 = load i32, ptr %l3, !tbaa !23
  %t78 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %t74, i32 %t75)
  store i32 %t78, ptr %l48
  br label %bb17
bb17:
  %t79 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t80 = load i32, ptr %l48, !tbaa !23
  %t82 = icmp ne i32 %t80, %t79
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l44, !tbaa !21
  store i1 %t84, ptr %l38, !tbaa !21
  br label %bb19
bb19:
  %t85 = load i1, ptr %l38, !tbaa !21
  br i1 %t85, label %bb20, label %bb21
bb20:
  store %olang.scope zeroinitializer, ptr %s2
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l51, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t87, ptr %l52
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i32, ptr %l3, !tbaa !23
  %t92 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t88, i32 %t89)
  store { i64, ptr } %t92, ptr %l55
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t93 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t103 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s2, ptr %v0, ptr %s2, ptr %v0, { i64, ptr } %t99, { i64, ptr } %t100, { i64, ptr } { i64 93, ptr getelementptr inbounds (<{ i64, [93 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t103, ptr %l58
  br label %bb23
bb23:
  %t104 = load ptr, ptr %l51, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l52
  %t106 = load %"compiler/diagmsg:Msg", ptr %l58
  %t107 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t104, %"compiler/source:Span" %t105, %"compiler/diagmsg:Msg" %t106)
  store i64 %t107, ptr %l59
  br label %bb24
bb24:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load %"compiler/source:Span", ptr %l1
  %t112 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t108, %"compiler/source:Span" %t109)
  store ptr %t112, ptr %l62
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  %t113 = load ptr, ptr %l62, !tbaa !29
  store ptr %t113, ptr %rv
  br label %ret
bb26:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/check:Checker", ptr %t114, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !29
  %t119 = getelementptr %"compiler/generic:Program", ptr %t117, i32 0, i32 2
  %t120 = load i32, ptr %l6, !tbaa !23
  %t123 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %t119, i32 %t120)
  store i1 %t123, ptr %l67
  br label %bb27
bb27:
  %t124 = load i1, ptr %l67, !tbaa !21
  store i1 %t124, ptr %l7, !tbaa !21
  %t125 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t127 = call i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %t125)
  store i64 %t127, ptr %l69
  br label %bb28
bb28:
  %t128 = load i64, ptr %l69, !tbaa !24
  store i64 %t128, ptr %l8, !tbaa !24
  %t129 = load i64, ptr %l8, !tbaa !24
  %t131 = icmp slt i64 %t129, 0
  br i1 %t131, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb34
bb30:
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = icmp sgt i64 %t133, 1
  br i1 %t135, label %bb31, label %bb32
bb31:
  %t137 = load i1, ptr %l7, !tbaa !21
  %t139 = xor i1 %t137, true
  store i1 %t139, ptr %l75, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb33
bb33:
  %t141 = load i1, ptr %l75, !tbaa !21
  store i1 %t141, ptr %l72, !tbaa !21
  br label %bb34
bb34:
  %t142 = load i1, ptr %l72, !tbaa !21
  br i1 %t142, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s3
  %t143 = load i1, ptr %l7, !tbaa !21
  br i1 %t143, label %bb37, label %bb38
bb36:
  br label %bb44
bb37:
  store { i64, ptr } { i64 46, ptr getelementptr inbounds (<{ i64, [46 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb39
bb38:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d39, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb39
bb39:
  %t145 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t145, ptr %l9, !tbaa !27
  %t146 = load ptr, ptr %l0, !tbaa !29
  store ptr %t146, ptr %l80, !tbaa !29
  %t147 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t147, ptr %l81
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l3, !tbaa !23
  %t152 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t148, i32 %t149)
  store { i64, ptr } %t152, ptr %l84
  br label %bb40
bb40:
  %t153 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t154 = extractvalue { i64, ptr } %t153, 0
  %t155 = extractvalue { i64, ptr } %t153, 1
  %t156 = mul i64 %t154, 1
  %t157 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t156)
  call void @llvm.memcpy.p0.p0.i64(ptr %t157, ptr %t155, i64 %t156, i1 false)
  %t158 = insertvalue { i64, ptr } undef, i64 %t154, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t157, 1
  %t160 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t161 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t162 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t163 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t165 = extractvalue { i64, ptr } %t161, 1
  %t166 = extractvalue { i64, ptr } %t161, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t162, i64 %t163)
  %t169 = getelementptr i8, ptr %t168, i64 %t163
  call void @olang_textcopy(ptr %t169, ptr %t165, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  %t173 = extractvalue { i64, ptr } %t171, 0
  %t174 = extractvalue { i64, ptr } %t171, 1
  %t175 = mul i64 %t173, 1
  %t176 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t175)
  call void @llvm.memcpy.p0.p0.i64(ptr %t176, ptr %t174, i64 %t175, i1 false)
  %t177 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t178 = insertvalue { i64, ptr } %t177, ptr %t176, 1
  %t182 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %s3, ptr %v0, ptr %s3, ptr %v0, { i64, ptr } %t159, { i64, ptr } %t160, { i64, ptr } %t178)
  store %"compiler/diagmsg:Msg" %t182, ptr %l90
  br label %bb41
bb41:
  %t183 = load ptr, ptr %l80, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l81
  %t185 = load %"compiler/diagmsg:Msg", ptr %l90
  %t186 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t183, %"compiler/source:Span" %t184, %"compiler/diagmsg:Msg" %t185)
  store i64 %t186, ptr %l91
  br label %bb42
bb42:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t188 = load %"compiler/source:Span", ptr %l1
  %t191 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t187, %"compiler/source:Span" %t188)
  store ptr %t191, ptr %l94
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s3)
  %t192 = load ptr, ptr %l94, !tbaa !29
  store ptr %t192, ptr %rv
  br label %ret
bb44:
  %t193 = load i1, ptr %l7, !tbaa !21
  %t195 = xor i1 %t193, true
  br i1 %t195, label %bb45, label %bb46
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t199 = getelementptr %"compiler/check:Checker", ptr %t197, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !29
  %t202 = getelementptr %"compiler/generic:Program", ptr %t200, i32 0, i32 2
  %t203 = load i32, ptr %l6, !tbaa !23
  %t206 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t202, i32 %t203)
  store i64 %t206, ptr %l102
  br label %bb47
bb46:
  store i1 false, ptr %l97, !tbaa !21
  br label %bb48
bb47:
  %t207 = load i64, ptr %l102, !tbaa !24
  %t208 = icmp sgt i64 %t207, 64
  store i1 %t208, ptr %l97, !tbaa !21
  br label %bb48
bb48:
  %t210 = load i1, ptr %l97, !tbaa !21
  br i1 %t210, label %bb49, label %bb50
bb49:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/check:Checker", ptr %t211, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/generic:Program", ptr %t214, i32 0, i32 2
  %t217 = load i32, ptr %l6, !tbaa !23
  %t220 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t216, i32 %t217)
  store i1 %t220, ptr %l108
  br label %bb51
bb50:
  br label %bb70
bb51:
  %t221 = load i1, ptr %l108, !tbaa !21
  br i1 %t221, label %bb52, label %bb53
bb52:
  %t222 = load i64, ptr %l8, !tbaa !24
  %t224 = icmp eq i64 %t222, 1
  br i1 %t224, label %bb54, label %bb55
bb53:
  br label %bb60
bb54:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load %"compiler/source:Span", ptr %l1
  %t228 = load i32, ptr %l3, !tbaa !23
  %t232 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t226, %"compiler/source:Span" %t227, i32 %t228, i64 0)
  store ptr %t232, ptr %l114
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t233 = load ptr, ptr %l114, !tbaa !29
  store ptr %t233, ptr %rv
  br label %ret
bb57:
  %t234 = load ptr, ptr %l0, !tbaa !29
  store ptr %t234, ptr %l115, !tbaa !29
  %t235 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t235, ptr %l116
  %t236 = load i32, ptr %l3, !tbaa !23
  store i32 %t236, ptr %l117, !tbaa !23
  store i32 1, ptr %l118
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load %"compiler/source:Span", ptr %l1
  %t239 = load i32, ptr %l3, !tbaa !23
  %t243 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t237, %"compiler/source:Span" %t238, i32 %t239, i64 0)
  store ptr %t243, ptr %l122
  br label %bb58
bb58:
  %t244 = load ptr, ptr %l115, !tbaa !29
  %t245 = load %"compiler/source:Span", ptr %l116
  %t246 = load i32, ptr %l117, !tbaa !23
  %t247 = load i32, ptr %l118, !range !{i32 0, i32 51}
  %t248 = load ptr, ptr %l122, !tbaa !29
  %t249 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t244, %"compiler/source:Span" %t245, i32 %t246, i32 %t247, ptr %t248, ptr null)
  store ptr %t249, ptr %l123
  br label %bb59
bb59:
  %t250 = load ptr, ptr %l123, !tbaa !29
  store ptr %t250, ptr %rv
  br label %ret
bb60:
  %t251 = load ptr, ptr %l0, !tbaa !29
  store ptr %t251, ptr %l124, !tbaa !29
  %t252 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t252, ptr %l125
  %t253 = load i32, ptr %l3, !tbaa !23
  store i32 %t253, ptr %l126, !tbaa !23
  store i32 8, ptr %l127
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/source:Span", ptr %l1
  %t256 = load i32, ptr %l3, !tbaa !23
  %t260 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t254, %"compiler/source:Span" %t255, i32 %t256, i64 1)
  store ptr %t260, ptr %l131
  br label %bb61
bb61:
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l132, !tbaa !29
  %t262 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t262, ptr %l133
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t263)
  store i32 %t265, ptr %l135
  br label %bb62
bb62:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/check:Checker", ptr %t266, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !29
  %t271 = getelementptr %"compiler/generic:Program", ptr %t269, i32 0, i32 2
  %t272 = load i32, ptr %l6, !tbaa !23
  %t275 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t271, i32 %t272)
  store i64 %t275, ptr %l140
  br label %bb63
bb63:
  %t276 = load i64, ptr %l140, !tbaa !24
  %t277 = sub i64 %t276, 1
  %t278 = load ptr, ptr %l132, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l133
  %t280 = load i32, ptr %l135, !tbaa !23
  %t282 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t278, %"compiler/source:Span" %t279, i32 %t280, i64 %t277)
  store ptr %t282, ptr %l142
  br label %bb64
bb64:
  %t283 = load ptr, ptr %l142, !tbaa !29
  %t284 = load ptr, ptr %l124, !tbaa !29
  %t285 = load %"compiler/source:Span", ptr %l125
  %t286 = load i32, ptr %l126, !tbaa !23
  %t287 = load i32, ptr %l127, !range !{i32 0, i32 51}
  %t288 = load ptr, ptr %l131, !tbaa !29
  %t290 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v1, ptr %t284, %"compiler/source:Span" %t285, i32 %t286, i32 %t287, ptr %t288, ptr %t283)
  store ptr %t290, ptr %l144
  br label %bb65
bb65:
  %t291 = load ptr, ptr %l144, !tbaa !29
  store ptr %t291, ptr %l10, !tbaa !29
  %t292 = load i64, ptr %l8, !tbaa !24
  %t294 = icmp eq i64 %t292, 1
  br i1 %t294, label %bb66, label %bb67
bb66:
  %t296 = load ptr, ptr %l10, !tbaa !29
  store ptr %t296, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t298 = load ptr, ptr %l0, !tbaa !29
  %t299 = load %"compiler/source:Span", ptr %l1
  %t300 = load i32, ptr %l3, !tbaa !23
  %t301 = load ptr, ptr %l10, !tbaa !29
  %t307 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v0, ptr %v1, ptr %t298, %"compiler/source:Span" %t299, i32 %t300, i32 1, ptr %t301, ptr null)
  store ptr %t307, ptr %l153
  br label %bb69
bb69:
  %t308 = load ptr, ptr %l153, !tbaa !29
  store ptr %t308, ptr %rv
  br label %ret
bb70:
  %t309 = load ptr, ptr %l0, !tbaa !29
  store ptr %t309, ptr %l154, !tbaa !29
  %t310 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t310, ptr %l155
  %t311 = load i32, ptr %l3, !tbaa !23
  store i32 %t311, ptr %l156, !tbaa !23
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/check:Checker", ptr %t312, i32 0, i32 1
  %t315 = load ptr, ptr %t314, !tbaa !29
  %t317 = getelementptr %"compiler/generic:Program", ptr %t315, i32 0, i32 2
  %t318 = load i32, ptr %l6, !tbaa !23
  %t319 = load i64, ptr %l8, !tbaa !24
  %t323 = call i64 @compiler_2fcheck_2elimitBits(ptr %v0, ptr %t317, i32 %t318, i64 %t319)
  store i64 %t323, ptr %l162
  br label %bb71
bb71:
  %t324 = load ptr, ptr %l154, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l155
  %t326 = load i32, ptr %l156, !tbaa !23
  %t327 = load i64, ptr %l162, !tbaa !24
  %t328 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t324, %"compiler/source:Span" %t325, i32 %t326, i64 %t327)
  store ptr %t328, ptr %l163
  br label %bb72
bb72:
  %t329 = load ptr, ptr %l163, !tbaa !29
  store ptr %t329, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca %"compiler/generic:Desc"
  %l9 = alloca i32
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i1
  %l32 = alloca i1
  %l37 = alloca %"compiler/check:reflList"
  %l40 = alloca i32
  %l43 = alloca i32
  %l48 = alloca %"compiler/check:reflList"
  %l49 = alloca %"compiler/check:reflList"
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l56 = alloca %"compiler/check:reflList"
  %l59 = alloca i32
  %l65 = alloca %"compiler/generic:Desc"
  %l69 = alloca i1
  %l76 = alloca %"compiler/check:reflList"
  %l80 = alloca i1
  %l86 = alloca %"compiler/check:reflList"
  %l90 = alloca i1
  %l96 = alloca %"compiler/check:reflList"
  %l97 = alloca %"compiler/check:reflList"
  %l100 = alloca i32
  %l103 = alloca %"compiler/check:reflList"
  %l106 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l117 = alloca %"compiler/check:reflList"
  %l120 = alloca %"compiler/check:reflList"
  %l121 = alloca ptr
  %l122 = alloca i1
  %l129 = alloca %"compiler/check:reflList"
  %l130 = alloca %"compiler/check:reflList"
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"compiler/check:reflList"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 12
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
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t18, i32 0, i32 2
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb81
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l3, !tbaa !23
  %t26 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t22, i32 %t23)
  store { i64, ptr } %t26, ptr %l21
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t27, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t28, ptr %l22
  br label %bb7
bb7:
  %t29 = load i1, ptr %l22, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealiasModule(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i64 %t34, ptr %l25
  br label %bb10
bb9:
  br label %bb28
bb10:
  %t35 = load i64, ptr %l25, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t38 = icmp sge i64 %t36, 0
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i32, ptr %l3, !tbaa !23
  %t46 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %t40, i64 %t41, i32 %t42)
  store i1 %t46, ptr %l32
  br label %bb13
bb12:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb14
bb13:
  %t47 = load i1, ptr %l32, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l28, !tbaa !21
  br label %bb14
bb14:
  %t50 = load i1, ptr %l28, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t51 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t52 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFunctions, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t57 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s3, i1 true, i32 %t51, i64 %t52, i64 %t53)
  store %"compiler/check:reflList" %t57, ptr %l37
  br label %bb17
bb16:
  br label %bb18
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s1)
  %t58 = load %"compiler/check:reflList", ptr %l37
  store %"compiler/check:reflList" %t58, ptr %rv
  br label %ret
bb18:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l43
  br label %bb21
bb20:
  store i32 -1, ptr %l40, !tbaa !23
  br label %bb22
bb21:
  %t68 = load i32, ptr %l43, !tbaa !23
  store i32 %t68, ptr %l40, !tbaa !23
  br label %bb22
bb22:
  %t69 = load i32, ptr %l40, !tbaa !23
  store i32 %t69, ptr %l5, !tbaa !23
  %t70 = load i32, ptr %l5, !tbaa !23
  %t72 = icmp sge i32 %t70, 0
  br i1 %t72, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t74 = load i32, ptr %l5, !tbaa !23
  %t75 = load i64, ptr @G_2ecompiler_2fgeneric_2eListBuilders, !tbaa !24
  %t78 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s4, i1 true, i32 %t74, i64 %t75, i64 -1)
  store %"compiler/check:reflList" %t78, ptr %l48
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s1)
  %t79 = load %"compiler/check:reflList", ptr %l48
  store %"compiler/check:reflList" %t79, ptr %rv
  br label %ret
bb26:
  %t80 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t80, ptr %l49
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  %t81 = load %"compiler/check:reflList", ptr %l49
  store %"compiler/check:reflList" %t81, ptr %rv
  br label %ret
bb28:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t86 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t82, i32 %t83)
  store { i64, ptr } %t86, ptr %l52
  br label %bb29
bb29:
  %t87 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t88 = call i64 @compiler_2fcheck_2elistIndex(ptr %v0, { i64, ptr } %t87)
  store i64 %t88, ptr %l53
  br label %bb30
bb30:
  %t89 = load i64, ptr %l53, !tbaa !24
  store i64 %t89, ptr %l6, !tbaa !24
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t94 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t94, ptr %l56
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s1)
  %t95 = load %"compiler/check:reflList", ptr %l56
  store %"compiler/check:reflList" %t95, ptr %rv
  br label %ret
bb34:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l2, !tbaa !29
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i32 %t100, ptr %l59
  br label %bb35
bb35:
  %t101 = load i32, ptr %l59, !tbaa !23
  store i32 %t101, ptr %l7, !tbaa !23
  %t102 = load i32, ptr %l7, !tbaa !23
  %t104 = icmp sge i32 %t102, 0
  br i1 %t104, label %bb36, label %bb37
bb36:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/check:Checker", ptr %t106, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t110 = load i32, ptr %l7, !tbaa !23
  %t113 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t109, i32 %t110)
  store %"compiler/generic:Desc" %t113, ptr %l65
  br label %bb38
bb37:
  br label %bb61
bb38:
  %t114 = load %"compiler/generic:Desc", ptr %l65
  store %"compiler/generic:Desc" %t114, ptr %l8
  %t115 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t117 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t120 = icmp eq i64 %t116, %t117
  br i1 %t120, label %bb39, label %bb40
bb39:
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr @G_2ecompiler_2fgeneric_2eListFields, !tbaa !24
  %t126 = icmp eq i64 %t122, %t123
  store i1 %t126, ptr %l69, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb41
bb41:
  %t128 = load i1, ptr %l69, !tbaa !21
  br i1 %t128, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s7
  %t129 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t130 = load i32, ptr %t129, !tbaa !23
  %t131 = load i64, ptr %l6, !tbaa !24
  %t132 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 2
  %t133 = load i64, ptr %t132, !tbaa !24
  %t137 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s7, i1 true, i32 %t130, i64 %t131, i64 %t133)
  store %"compiler/check:reflList" %t137, ptr %l76
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s1)
  %t138 = load %"compiler/check:reflList", ptr %l76
  store %"compiler/check:reflList" %t138, ptr %rv
  br label %ret
bb45:
  %t139 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb46, label %bb47
bb46:
  %t146 = load i64, ptr %l6, !tbaa !24
  %t147 = load i64, ptr @G_2ecompiler_2fgeneric_2eListParams, !tbaa !24
  %t150 = icmp eq i64 %t146, %t147
  store i1 %t150, ptr %l80, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb48
bb48:
  %t152 = load i1, ptr %l80, !tbaa !21
  br i1 %t152, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s8
  %t153 = load i32, ptr %l7, !tbaa !23
  %t154 = load i64, ptr %l6, !tbaa !24
  %t157 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s8, i1 true, i32 %t153, i64 %t154, i64 -1)
  store %"compiler/check:reflList" %t157, ptr %l86
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s1)
  %t158 = load %"compiler/check:reflList", ptr %l86
  store %"compiler/check:reflList" %t158, ptr %rv
  br label %ret
bb52:
  %t159 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 0
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t164 = icmp eq i64 %t160, %t161
  br i1 %t164, label %bb53, label %bb54
bb53:
  %t166 = load i64, ptr %l6, !tbaa !24
  %t167 = load i64, ptr @G_2ecompiler_2fgeneric_2eListResults, !tbaa !24
  %t170 = icmp eq i64 %t166, %t167
  store i1 %t170, ptr %l90, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb55
bb55:
  %t172 = load i1, ptr %l90, !tbaa !21
  br i1 %t172, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s9
  %t173 = getelementptr %"compiler/generic:Desc", ptr %l8, i32 0, i32 1
  %t174 = load i32, ptr %t173, !tbaa !23
  %t175 = load i64, ptr %l6, !tbaa !24
  %t178 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s9, i1 true, i32 %t174, i64 %t175, i64 -1)
  store %"compiler/check:reflList" %t178, ptr %l96
  br label %bb58
bb57:
  br label %bb59
bb58:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s1)
  %t179 = load %"compiler/check:reflList", ptr %l96
  store %"compiler/check:reflList" %t179, ptr %rv
  br label %ret
bb59:
  %t180 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t180, ptr %l97
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s1)
  %t181 = load %"compiler/check:reflList", ptr %l97
  store %"compiler/check:reflList" %t181, ptr %rv
  br label %ret
bb61:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t186 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t182, ptr %t183)
  store i32 %t186, ptr %l100
  br label %bb62
bb62:
  %t187 = load i32, ptr %l100, !tbaa !23
  store i32 %t187, ptr %l9, !tbaa !23
  %t188 = load i32, ptr %l9, !tbaa !23
  %t190 = icmp slt i32 %t188, 0
  br i1 %t190, label %bb63, label %bb64
bb63:
  %t192 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t192, ptr %l103
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s1)
  %t193 = load %"compiler/check:reflList", ptr %l103
  store %"compiler/check:reflList" %t193, ptr %rv
  br label %ret
bb66:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t195 = load i32, ptr %l9, !tbaa !23
  %t198 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t194, i32 %t195)
  store i1 %t198, ptr %l106
  br label %bb67
bb67:
  %t199 = load i1, ptr %l106, !tbaa !21
  br i1 %t199, label %bb68, label %bb69
bb68:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l2, !tbaa !29
  %t204 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t200, ptr %t201)
  store i1 %t204, ptr %l110
  br label %bb70
bb69:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb71
bb70:
  %t205 = load i1, ptr %l110, !tbaa !21
  %t206 = xor i1 %t205, true
  store i1 %t206, ptr %l107, !tbaa !21
  br label %bb71
bb71:
  %t208 = load i1, ptr %l107, !tbaa !21
  br i1 %t208, label %bb72, label %bb73
bb72:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i32, ptr %l9, !tbaa !23
  %t211 = load i32, ptr %l3, !tbaa !23
  %t215 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t209, i32 %t210, i32 %t211)
  store i1 %t215, ptr %l116
  br label %bb74
bb73:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb75
bb74:
  %t216 = load i1, ptr %l116, !tbaa !21
  store i1 %t216, ptr %l112, !tbaa !21
  br label %bb75
bb75:
  %t217 = load i1, ptr %l112, !tbaa !21
  br i1 %t217, label %bb76, label %bb77
bb76:
  %t218 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t218, ptr %l117
  br label %bb78
bb77:
  br label %bb79
bb78:
  call void @__olang_scope_close(ptr %s1)
  %t219 = load %"compiler/check:reflList", ptr %l117
  store %"compiler/check:reflList" %t219, ptr %rv
  br label %ret
bb79:
  %t220 = load i32, ptr %l9, !tbaa !23
  %t221 = load i64, ptr %l6, !tbaa !24
  %t224 = call %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %s1, i1 true, i32 %t220, i64 %t221, i64 -1)
  store %"compiler/check:reflList" %t224, ptr %l120
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s1)
  %t225 = load %"compiler/check:reflList", ptr %l120
  store %"compiler/check:reflList" %t225, ptr %rv
  br label %ret
bb81:
  %t226 = load ptr, ptr %l1, !tbaa !29
  store ptr %t226, ptr %l121, !tbaa !29
  store i1 false, ptr %l122, !tbaa !21
  %t227 = load ptr, ptr %l121, !tbaa !29
  %t228 = icmp ne ptr %t227, null
  br i1 %t228, label %bb82, label %bb83
bb82:
  %t230 = load ptr, ptr %l121, !tbaa !29
  %t231 = load i64, ptr %t230, !range !{i64 0, i64 28}
  %t233 = icmp eq i64 %t231, 2
  store i1 %t233, ptr %l122, !tbaa !21
  br label %bb83
bb83:
  %t234 = load i1, ptr %l122, !tbaa !21
  br i1 %t234, label %bb84, label %bb85
bb84:
  %t235 = load ptr, ptr %l1, !tbaa !29
  %t237 = getelementptr { i64, [4 x i64] }, ptr %t235, i32 0, i32 1
  %t238 = getelementptr { %"compiler/source:Span", ptr }, ptr %t237, i32 0, i32 1
  %t239 = load ptr, ptr %t238
  store ptr %t239, ptr %l10, !tbaa !29
  br label %bb86
bb85:
  br label %bb88
bb86:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load ptr, ptr %l10, !tbaa !29
  %t245 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %v1, ptr %t241, ptr %t242)
  store %"compiler/check:reflList" %t245, ptr %l129
  br label %bb87
bb87:
  %t246 = load %"compiler/check:reflList", ptr %l129
  store %"compiler/check:reflList" %t246, ptr %rv
  br label %ret
bb88:
  br i1 true, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t247 = call %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
  store %"compiler/check:reflList" %t247, ptr %l130
  br label %bb92
bb92:
  %t248 = load %"compiler/check:reflList", ptr %l130
  store %"compiler/check:reflList" %t248, ptr %rv
  br label %ret
bb93:
  call void @__olang_check_failed(ptr @olang_loc_7b7c458ad09559c8_7a5ff3a2c3d540e4)
  unreachable
ret:
  %rr = load %"compiler/check:reflList", ptr %rv
  ret %"compiler/check:reflList" %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteral(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca ptr
  %l21 = alloca i1
  %l25 = alloca ptr
  %l29 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l35 = alloca i32
  %l38 = alloca i64
  %l39 = alloca ptr
  %l44 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca %"compiler/source:Span"
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca %"compiler/source:Span"
  %l70 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca %"compiler/diagmsg:Msg"
  %l74 = alloca i64
  %l77 = alloca ptr
  %l82 = alloca ptr
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t3 = trunc i64 6 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t7, ptr %l7
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t8, ptr %l8, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t9, %"compiler/source:Span" %t10)
  store { i64, ptr } %t13, ptr %l11
  br label %bb3
bb2:
  br label %bb9
bb3:
  %t14 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s1, { i64, ptr } %t14, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t15, ptr %l12
  br label %bb4
bb4:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l13, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t18 = load %"compiler/source:Span", ptr %l7
  %t19 = load i32, ptr %l8, !tbaa !23
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t17, %"compiler/source:Span" %t18, i32 %t19, i64 %t20)
  store ptr %t21, ptr %l14
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  %t22 = load ptr, ptr %l14, !tbaa !29
  store ptr %t22, ptr %rv
  br label %ret
bb9:
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t25 = trunc i64 7 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb10, label %bb11
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/check:Checker", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l21
  br label %bb12
bb11:
  br label %bb18
bb12:
  %t38 = load i1, ptr %l21, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load i32, ptr %l3, !tbaa !23
  %t45 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %t39, %"compiler/source:Span" %t40, i32 %t41)
  store ptr %t45, ptr %l25
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t46 = load ptr, ptr %l25, !tbaa !29
  store ptr %t46, ptr %rv
  br label %ret
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load %"compiler/source:Span", ptr %l1
  %t49 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t53 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t47, %"compiler/source:Span" %t48, i32 %t49, i64 0)
  store ptr %t53, ptr %l29
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l29, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb18:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t57 = trunc i64 4 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l33
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %t62)
  store i32 %t64, ptr %l35
  br label %bb21
bb20:
  br label %bb24
bb21:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load %"compiler/source:Span", ptr %l1
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %t65, %"compiler/source:Span" %t66)
  store i64 %t69, ptr %l38
  br label %bb22
bb22:
  %t70 = load ptr, ptr %l32, !tbaa !29
  %t71 = load %"compiler/source:Span", ptr %l33
  %t72 = load i32, ptr %l35, !tbaa !23
  %t73 = load i64, ptr %l38, !tbaa !24
  %t74 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %t70, %"compiler/source:Span" %t71, i32 %t72, i64 %t73)
  store ptr %t74, ptr %l39
  br label %bb23
bb23:
  %t75 = load ptr, ptr %l39, !tbaa !29
  store ptr %t75, ptr %rv
  br label %ret
bb24:
  %t76 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t78 = trunc i64 5 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb25, label %bb26
bb25:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t85 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %t81, %"compiler/source:Span" %t82)
  store ptr %t85, ptr %l44
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t86 = load ptr, ptr %l44, !tbaa !29
  store ptr %t86, ptr %rv
  br label %ret
bb28:
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t89 = trunc i64 2 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l1
  %t96 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t92, %"compiler/source:Span" %t93)
  store { i64, ptr } %t96, ptr %l49
  br label %bb31
bb30:
  br label %bb41
bb31:
  %t97 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t98 = call i1 @compiler_2fcheck_2ebadSeparator(ptr %v0, { i64, ptr } %t97)
  store i1 %t98, ptr %l50
  br label %bb32
bb32:
  %t99 = load i1, ptr %l50, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l52, !tbaa !29
  %t103 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t103, ptr %l53
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l1
  %t108 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t104, %"compiler/source:Span" %t105)
  store { i64, ptr } %t108, ptr %l56
  br label %bb35
bb34:
  br label %bb39
bb35:
  %t109 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t110 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s7, { i64, ptr } %t109)
  store { i64, ptr } %t110, ptr %l57
  br label %bb36
bb36:
  %t111 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIntLiteralTooLarge(ptr %s7, ptr %v0, { i64, ptr } %t117)
  store %"compiler/diagmsg:Msg" %t119, ptr %l59
  br label %bb37
bb37:
  %t120 = load ptr, ptr %l52, !tbaa !29
  %t121 = load %"compiler/source:Span", ptr %l53
  %t122 = load %"compiler/diagmsg:Msg", ptr %l59
  %t123 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t120, %"compiler/source:Span" %t121, %"compiler/diagmsg:Msg" %t122)
  store i64 %t123, ptr %l60
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb39
bb39:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load %"compiler/source:Span", ptr %l1
  %t128 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t124, %"compiler/source:Span" %t125)
  store ptr %t128, ptr %l63
  br label %bb40
bb40:
  %t129 = load ptr, ptr %l63, !tbaa !29
  store ptr %t129, ptr %rv
  br label %ret
bb41:
  %t130 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t132 = trunc i64 3 to i32
  %t133 = icmp eq i32 %t130, %t132
  br i1 %t133, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s8
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l66, !tbaa !29
  %t136 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t136, ptr %l67
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l1
  %t141 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138)
  store { i64, ptr } %t141, ptr %l70
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t142 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t143 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %s8, { i64, ptr } %t142)
  store { i64, ptr } %t143, ptr %l71
  br label %bb45
bb45:
  %t144 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  %t146 = extractvalue { i64, ptr } %t144, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  %t152 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %s8, ptr %v0, { i64, ptr } %t150)
  store %"compiler/diagmsg:Msg" %t152, ptr %l73
  br label %bb46
bb46:
  %t153 = load ptr, ptr %l66, !tbaa !29
  %t154 = load %"compiler/source:Span", ptr %l67
  %t155 = load %"compiler/diagmsg:Msg", ptr %l73
  %t156 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t153, %"compiler/source:Span" %t154, %"compiler/diagmsg:Msg" %t155)
  store i64 %t156, ptr %l74
  br label %bb47
bb47:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load %"compiler/source:Span", ptr %l1
  %t161 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t157, %"compiler/source:Span" %t158)
  store ptr %t161, ptr %l77
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s8)
  %t162 = load ptr, ptr %l77, !tbaa !29
  store ptr %t162, ptr %rv
  br label %ret
bb49:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t163, %"compiler/source:Span" %t164, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d43, i32 0, i32 1) })
  br label %bb50
bb50:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load %"compiler/source:Span", ptr %l1
  %t171 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %t167, %"compiler/source:Span" %t168)
  store ptr %t171, ptr %l82
  br label %bb51
bb51:
  %t172 = load ptr, ptr %l82, !tbaa !29
  store ptr %t172, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l42 = alloca i1
  %l43 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i1
  %l52 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l68 = alloca { i64, ptr }
  %l75 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
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
  store ptr %t6, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t7 = load ptr, ptr %l16, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l16, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l17, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 1
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l4, !tbaa !29
  br label %bb8
bb7:
  br label %bb34
bb8:
  %t27 = load ptr, ptr %l4, !tbaa !29
  store ptr %t27, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t28 = load ptr, ptr %l24, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l24, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l25, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l25, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t38, i32 0, i32 2
  %t40 = load i32, ptr %t39
  store i32 %t40, ptr %l5, !tbaa !23
  br label %bb13
bb12:
  br label %bb28
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t42)
  store ptr %t44, ptr %l31
  br label %bb14
bb14:
  %t45 = load ptr, ptr %l31, !tbaa !29
  %t47 = getelementptr %"compiler/check:frame", ptr %t45, i32 0, i32 0
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i32, ptr %l5, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t48, i64 %t51)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t54, ptr %l36
  br label %bb15
bb15:
  %t55 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l36
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t55, ptr %l6
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l3, !tbaa !23
  %t63 = load i32, ptr %l2, !tbaa !23
  %t67 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t61, i32 %t62, i32 %t63)
  store i1 %t67, ptr %l42
  br label %bb16
bb16:
  %t68 = load i1, ptr %l42, !tbaa !21
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 35
  %t72 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t75 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t71, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t72)
  store i1 %t75, ptr %l47
  br label %bb19
bb18:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb24
bb19:
  %t76 = load i1, ptr %l47, !tbaa !21
  br i1 %t76, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb23
bb21:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 37
  %t80 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l6
  %t83 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t79, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t80)
  store i1 %t83, ptr %l52
  br label %bb22
bb22:
  %t84 = load i1, ptr %l52, !tbaa !21
  store i1 %t84, ptr %l48, !tbaa !21
  br label %bb23
bb23:
  %t85 = load i1, ptr %l48, !tbaa !21
  store i1 %t85, ptr %l43, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l43, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load i32, ptr %l5, !tbaa !23
  %t89 = sext i32 %t87 to i64
  call void @__olang_scope_close(ptr %s3)
  store i64 %t89, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_1a03149f0250e548_14220af7ccd85b74)
  unreachable
bb33:
  br label %bb55
bb34:
  %t91 = load ptr, ptr %l1, !tbaa !29
  store ptr %t91, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t92 = load ptr, ptr %l55, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb35, label %bb36
bb35:
  %t95 = load ptr, ptr %l55, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 18}
  %t98 = icmp eq i64 %t96, 9
  store i1 %t98, ptr %l56, !tbaa !21
  br label %bb36
bb36:
  %t99 = load i1, ptr %l56, !tbaa !21
  br i1 %t99, label %bb37, label %bb38
bb37:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr { i64, [5 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t102, i32 0, i32 4
  %t104 = load { i64, ptr }, ptr %t103
  store { i64, ptr } %t104, ptr %l7, !tbaa !27
  br label %bb39
bb38:
  br label %bb50
bb39:
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t106, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t108, 0
  store i64 %t110, ptr %l10, !tbaa !24
  br label %bb40
bb40:
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load i64, ptr %l10, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb41, label %bb42
bb41:
  br label %bb49
bb42:
  br label %bb43
bb43:
  %t120 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t120, ptr %l68, !tbaa !27
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l2, !tbaa !23
  %t135 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eliteralLocalIn(ptr %v0, ptr %v1, ptr %t128, ptr %t126, i32 %t131)
  store i64 %t135, ptr %l75
  br label %bb44
bb44:
  %t136 = load i64, ptr %l75, !tbaa !24
  store i64 %t136, ptr %l12, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t139 = icmp sge i64 %t137, 0
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t141 = load i64, ptr %l12, !tbaa !24
  store i64 %t141, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l9, !tbaa !24
  br label %bb40
bb49:
  br label %bb55
bb50:
  br i1 true, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_f003e05343083a19_c7eedaa93b775a5)
  unreachable
bb55:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalCase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/typed:Local"
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l21 = alloca ptr
  %l25 = alloca %"compiler/typed:Local"
  %l29 = alloca i1
  %l33 = alloca i1
  %l40 = alloca i32
  %l43 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l50 = alloca i64
  %l53 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb31
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp slt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t27 = insertvalue { i64, i64 } %t26, i64 -1, 1
  store { i64, i64 } %t27, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t29)
  store ptr %t31, ptr %l21
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l21, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 7
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t34, i64 %t35)
  store %"compiler/typed:Local" %t38, ptr %l25
  br label %bb11
bb11:
  %t39 = load %"compiler/typed:Local", ptr %l25
  store %"compiler/typed:Local" %t39, ptr %l5
  %t40 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t41 = load i32, ptr %t40, !range !{i32 0, i32 7}
  %t43 = trunc i64 0 to i32
  %t44 = icmp eq i32 %t41, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 7}
  %t51 = trunc i64 1 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  store i1 %t54, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t56 = load i1, ptr %l29, !tbaa !21
  br i1 %t56, label %bb15, label %bb16
bb15:
  %t57 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 4
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 7}
  %t60 = trunc i64 4 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l33, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  %t66 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t67 = insertvalue { i64, i64 } %t66, i64 -1, 1
  store { i64, i64 } %t67, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/typed:Local", ptr %l5, i32 0, i32 2
  %t71 = load i32, ptr %t70, !tbaa !23
  %t74 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t69, i32 %t71)
  store i32 %t74, ptr %l40
  br label %bb21
bb21:
  %t75 = load i32, ptr %l40, !tbaa !23
  store i32 %t75, ptr %l6, !tbaa !23
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i32, ptr %l6, !tbaa !23
  %t80 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t76, i32 %t77)
  store i1 %t80, ptr %l43
  br label %bb22
bb22:
  %t81 = load i1, ptr %l43, !tbaa !21
  %t82 = xor i1 %t81, true
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t85 = insertvalue { i64, i64 } %t84, i64 -1, 1
  store { i64, i64 } %t85, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l46, !tbaa !29
  %t90 = call ptr @compiler_2fcheck_2ecasePath(ptr %v2, ptr %v2, ptr %a2)
  store ptr %t90, ptr %l48
  br label %bb26
bb26:
  %t91 = load i32, ptr %l6, !tbaa !23
  %t92 = load ptr, ptr %l46, !tbaa !29
  %t93 = load ptr, ptr %l48, !tbaa !29
  %t95 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v2, ptr %t92, ptr %t93, i32 %t91)
  store i64 %t95, ptr %l50
  br label %bb27
bb27:
  %t96 = load i64, ptr %l50, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb28, label %bb29
bb28:
  %t101 = load i64, ptr %l4, !tbaa !24
  store i64 %t101, ptr %l53, !tbaa !24
  br label %bb30
bb29:
  store i64 -1, ptr %l53, !tbaa !24
  br label %bb30
bb30:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l53, !tbaa !24
  %t105 = insertvalue { i64, i64 } undef, i64 %t104, 0
  %t107 = insertvalue { i64, i64 } %t105, i64 %t103, 1
  store { i64, i64 } %t107, ptr %rv
  br label %ret
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t109 = insertvalue { i64, i64 } undef, i64 -1, 0
  %t110 = insertvalue { i64, i64 } %t109, i64 -1, 1
  store { i64, i64 } %t110, ptr %rv
  br label %ret
bb35:
  call void @__olang_check_failed(ptr @olang_loc_1a7153eaacfdc8_b1c3cf4a1728a65c)
  unreachable
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eloopDepth(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 20
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t9)
  store ptr %t11, ptr %l7
  br label %bb4
bb3:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb6
bb4:
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t14 = getelementptr %"compiler/check:frame", ptr %t12, i32 0, i32 54
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l10
  br label %bb5
bb5:
  %t17 = load i64, ptr %l10, !tbaa !24
  store i64 %t17, ptr %l5, !tbaa !24
  br label %bb6
bb6:
  %t18 = load i64, ptr %l5, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emadeByLiteral(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l10 = alloca i32
  %l16 = alloca i1
  %l17 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/check:Checker", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l10
  br label %bb5
bb5:
  %t18 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l1, !tbaa !23
  %t28 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t24, i32 %t25)
  store i1 %t28, ptr %l16
  br label %bb9
bb9:
  %t29 = load i1, ptr %l16, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !29
  store ptr %t33, ptr %l19, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  store i32 %t34, ptr %l20, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/check:Checker", ptr %t35, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/generic:Program", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/load:Loader", ptr %t41, i32 0, i32 3
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s0, ptr %t44, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store i32 %t46, ptr %l25
  br label %bb12
bb11:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb14
bb12:
  %t47 = load ptr, ptr %l19, !tbaa !29
  %t48 = load i32, ptr %l20, !tbaa !23
  %t49 = load i32, ptr %l25, !tbaa !23
  %t50 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %t47, i32 %t48, i32 %t49, i1 false)
  store i64 %t50, ptr %l26
  br label %bb13
bb13:
  %t51 = load i64, ptr %l26, !tbaa !24
  %t52 = icmp sge i64 %t51, 0
  store i1 %t52, ptr %l17, !tbaa !21
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t54 = load i1, ptr %l17, !tbaa !21
  store i1 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emapOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i32
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %l20 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s0, ptr %s0, ptr %t4, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d45, i32 0, i32 1) }, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d46, i32 0, i32 1) })
  %t7 = extractvalue { i32, i32 } %t6, 1
  %t8 = extractvalue { i32, i32 } %t6, 0
  store i32 %t8, ptr %l8
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i32 %t7, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t12 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t12, ptr %rv
  br label %ret
bb4:
  %t14 = load i32, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !29
  store ptr %t18, ptr %l11, !tbaa !29
  store i32 %t14, ptr %l12, !tbaa !23
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/check:Checker", ptr %t20, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 2
  %t28 = mul i64 2, 4
  %t29 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 2, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i32, ptr %t34, i64 0
  store i32 %a1, ptr %t35, !tbaa !33
  %t37 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i32, ptr %t38, i64 1
  store i32 %a2, ptr %t39, !tbaa !33
  %t41 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t25, { i64, ptr } %t41)
  store i32 %t42, ptr %l19
  br label %bb5
bb5:
  %t43 = load ptr, ptr %l11, !tbaa !29
  %t44 = load i32, ptr %l12, !tbaa !23
  %t45 = load i32, ptr %l19, !tbaa !23
  %t46 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t43, i32 %t44, i32 %t45)
  store i32 %t46, ptr %l20
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t47 = load i32, ptr %l20, !tbaa !23
  store i32 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emessage(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i32
  %l12 = alloca ptr
  %l17 = alloca ptr
  %l20 = alloca i64
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l28 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i32
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l39 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i32
  %l50 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i32
  %l54 = alloca i32
  %l55 = alloca i1
  %l57 = alloca ptr
  %l59 = alloca %"compiler/source:Span"
  %l60 = alloca ptr
  %l63 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l69 = alloca %"compiler/diagmsg:Msg"
  %l70 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l76 = alloca ptr
  %l78 = alloca i32
  %l80 = alloca i32
  %l82 = alloca %"compiler/source:Span"
  %l83 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t6)
  store ptr %t8, ptr %l12
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l12, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/check:frame", ptr %t10, i32 0, i32 35
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/check:frame", ptr %t15, i32 0, i32 36
  %t18 = load i1, ptr %t17, !tbaa !21
  store i1 %t18, ptr %l5, !tbaa !21
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = getelementptr %"compiler/check:frame", ptr %t21, i32 0, i32 10
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l20
  br label %bb5
bb5:
  %t26 = load i64, ptr %l20, !tbaa !24
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t27, i32 0, i32 35
  store i64 %t26, ptr %t28, !tbaa !24
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t30 = load i1, ptr %l2, !tbaa !21
  %t33 = getelementptr %"compiler/check:frame", ptr %t29, i32 0, i32 36
  store i1 %t30, ptr %t33, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l23, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l25, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l28, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t43)
  store i32 %t45, ptr %l30
  br label %bb6
bb6:
  %t46 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t47 = load ptr, ptr %l28, !tbaa !29
  %t48 = load i32, ptr %l30, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t47, i32 %t48, i64 %t46)
  store i32 %t50, ptr %l32
  br label %bb7
bb7:
  %t51 = load ptr, ptr %l23, !tbaa !29
  %t52 = load ptr, ptr %l25, !tbaa !29
  %t53 = load i32, ptr %l32, !tbaa !23
  %t54 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t51, ptr %t52, i32 %t53)
  store ptr %t54, ptr %l33
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l33, !tbaa !29
  store ptr %t55, ptr %l6, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t56)
  store ptr %t58, ptr %l35
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t60 = load i64, ptr %l4, !tbaa !24
  %t63 = getelementptr %"compiler/check:frame", ptr %t59, i32 0, i32 35
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t64)
  store ptr %t66, ptr %l39
  br label %bb10
bb10:
  %t67 = load ptr, ptr %l39, !tbaa !29
  %t68 = load i1, ptr %l5, !tbaa !21
  %t71 = getelementptr %"compiler/check:frame", ptr %t67, i32 0, i32 36
  store i1 %t68, ptr %t71, !tbaa !21
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l42, !tbaa !29
  %t73 = load ptr, ptr %l6, !tbaa !29
  %t76 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t73)
  store i32 %t76, ptr %l45
  br label %bb11
bb11:
  %t77 = load ptr, ptr %l42, !tbaa !29
  %t78 = load i32, ptr %l45, !tbaa !23
  %t79 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t77, i32 %t78)
  store i32 %t79, ptr %l46
  br label %bb12
bb12:
  %t80 = load i32, ptr %l46, !tbaa !23
  store i32 %t80, ptr %l7, !tbaa !23
  %t81 = load i32, ptr %l7, !tbaa !23
  %t82 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t85 = icmp ne i32 %t81, %t82
  br i1 %t85, label %bb13, label %bb14
bb13:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l51, !tbaa !29
  %t88 = load i32, ptr %l7, !tbaa !23
  store i32 %t88, ptr %l52, !tbaa !23
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t89)
  store i32 %t91, ptr %l54
  br label %bb15
bb14:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb17
bb15:
  %t92 = load ptr, ptr %l51, !tbaa !29
  %t93 = load i32, ptr %l52, !tbaa !23
  %t94 = load i32, ptr %l54, !tbaa !23
  %t95 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t92, i32 %t93, i32 %t94)
  store i1 %t95, ptr %l55
  br label %bb16
bb16:
  %t96 = load i1, ptr %l55, !tbaa !21
  %t97 = xor i1 %t96, true
  store i1 %t97, ptr %l50, !tbaa !21
  br label %bb17
bb17:
  %t99 = load i1, ptr %l50, !tbaa !21
  br i1 %t99, label %bb18, label %bb19
bb18:
  store %olang.scope zeroinitializer, ptr %s2
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l57, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t101)
  store %"compiler/source:Span" %t103, ptr %l59
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l60, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t108 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t105)
  store i32 %t108, ptr %l63
  br label %bb21
bb21:
  %t109 = load ptr, ptr %l60, !tbaa !29
  %t110 = load i32, ptr %l63, !tbaa !23
  %t111 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s2, ptr %t109, i32 %t110)
  store { i64, ptr } %t111, ptr %l64
  br label %bb22
bb22:
  %t112 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l65, !tbaa !27
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load i1, ptr %l2, !tbaa !21
  %t123 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %s2, ptr %t119, i1 %t120)
  store { i64, ptr } %t123, ptr %l68
  br label %bb23
bb23:
  %t124 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t126 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMessageNotText(ptr %s2, ptr %s2, ptr %v0, { i64, ptr } %t124, { i64, ptr } %t125)
  store %"compiler/diagmsg:Msg" %t126, ptr %l69
  br label %bb24
bb24:
  %t127 = load ptr, ptr %l57, !tbaa !29
  %t128 = load %"compiler/source:Span", ptr %l59
  %t129 = load %"compiler/diagmsg:Msg", ptr %l69
  %t130 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t127, %"compiler/source:Span" %t128, %"compiler/diagmsg:Msg" %t129)
  store i64 %t130, ptr %l70
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s2)
  store ptr null, ptr %rv
  br label %ret
bb26:
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l72, !tbaa !29
  %t133 = load ptr, ptr %l6, !tbaa !29
  store ptr %t133, ptr %l73, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/check:Checker", ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  store ptr %t139, ptr %l76, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t140)
  store i32 %t142, ptr %l78
  br label %bb27
bb27:
  %t143 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t144 = load ptr, ptr %l76, !tbaa !29
  %t145 = load i32, ptr %l78, !tbaa !23
  %t147 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t144, i32 %t145, i64 %t143)
  store i32 %t147, ptr %l80
  br label %bb28
bb28:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t148)
  store %"compiler/source:Span" %t150, ptr %l82
  br label %bb29
bb29:
  %t151 = load ptr, ptr %l72, !tbaa !29
  %t152 = load ptr, ptr %l73, !tbaa !29
  %t153 = load i32, ptr %l80, !tbaa !23
  %t154 = load %"compiler/source:Span", ptr %l82
  %t155 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t151, ptr %t152, i32 %t153, %"compiler/source:Span" %t154)
  store ptr %t155, ptr %l83
  br label %bb30
bb30:
  %t156 = load ptr, ptr %l83, !tbaa !29
  store ptr %t156, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enamedPackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l5, !tbaa !27
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
  %t22 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t22, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l11
  br label %bb5
bb5:
  %t28 = load i1, ptr %l11, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l13, !tbaa !27
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
  %t46 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t46, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t47, ptr %l18, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l19, !tbaa !24
  %t50 = load i64, ptr %l19, !tbaa !24
  %t51 = mul i64 %t50, 1
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  %t53 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t54 = insertvalue { i64, ptr } %t53, ptr %t52, 1
  store { i64, ptr } %t54, ptr %l20, !tbaa !27
  %t55 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l19, !tbaa !24
  %t60 = mul i64 %t59, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  %t61 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t61, ptr %l18, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t62, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, { i64, ptr } %a3, %"compiler/diagmsg:Msg" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca %"compiler/generic:Origin"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i64
  %l21 = alloca i64
  %l25 = alloca %"compiler/generic:Origin"
  %l26 = alloca ptr
  %l28 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l46 = alloca { i64, [3 x i64] }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/diagmsg:Msg"
  %l56 = alloca i64
  %l58 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l64 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l77 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca { i64, [3 x i64] }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t78 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i32, ptr %l2, !tbaa !23
  %t6 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t2, i32 %t3)
  store i32 %t6, ptr %l14
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l11, !tbaa !29
  %t8 = load i32, ptr %l14, !tbaa !23
  %t9 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t9, ptr %l15
  br label %bb2
bb2:
  %t10 = load i64, ptr %l15, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/source:Span", ptr %l1
  %t21 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v2, ptr %t15, %"compiler/source:Span" %t16, %"compiler/diagmsg:Msg" %a4)
  store i64 %t21, ptr %l21
  br label %bb5
bb4:
  br label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = call %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %t26, i64 %t27)
  store %"compiler/generic:Origin" %t30, ptr %l25
  br label %bb7
bb7:
  %t31 = load %"compiler/generic:Origin", ptr %l25
  store %"compiler/generic:Origin" %t31, ptr %l6
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l26, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/check:Checker", ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l28, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/check:Checker", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t40, i64 %t41)
  store i64 %t44, ptr %l32
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l28, !tbaa !29
  %t46 = load i64, ptr %l32, !tbaa !24
  %t47 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t45, i64 %t46)
  store ptr %t47, ptr %l33
  br label %bb9
bb9:
  %t48 = load ptr, ptr %l33, !tbaa !29
  %t50 = getelementptr %"compiler/ast:Func", ptr %t48, i32 0, i32 2
  %t51 = load i32, ptr %t50, !tbaa !23
  %t52 = load ptr, ptr %l26, !tbaa !29
  %t54 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t52, i32 %t51)
  store { i64, ptr } %t54, ptr %l36
  br label %bb10
bb10:
  %t55 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t55, ptr %l7, !tbaa !27
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/check:Checker", ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/load:Loader", ptr %t62, i32 0, i32 4
  %t65 = load ptr, ptr %t64, !tbaa !29
  store ptr %t65, ptr %l40, !tbaa !29
  %t66 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 1
  %t69 = getelementptr %"compiler/source:Span", ptr %t68, i32 0, i32 0
  %t70 = load i32, ptr %t69, !tbaa !23
  %t72 = sext i32 %t70 to i64
  %t73 = getelementptr %"compiler/generic:Origin", ptr %l6, i32 0, i32 1
  %t74 = getelementptr %"compiler/source:Span", ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 0
  store i64 3, ptr %t79
  %t81 = insertvalue { i64, i64, i64 } undef, i64 %t67, 0
  %t83 = insertvalue { i64, i64, i64 } %t81, i64 %t72, 1
  %t85 = insertvalue { i64, i64, i64 } %t83, i64 %t77, 2
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  store { i64, i64, i64 } %t85, ptr %t86
  %t87 = load { i64, [3 x i64] }, ptr %t78
  store { i64, [3 x i64] } %t87, ptr %l46
  %t88 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t88, ptr %l47, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t89, ptr %l48, !tbaa !27
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l49, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l2, !tbaa !23
  %t95 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t91, i32 %t92)
  store i32 %t95, ptr %l52
  br label %bb11
bb11:
  %t96 = load ptr, ptr %l49, !tbaa !29
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t96, i32 %t97)
  store { i64, ptr } %t98, ptr %l53
  br label %bb12
bb12:
  %t99 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNeeds(ptr %v0, ptr %v1, ptr %s0, ptr %v0, { i64, ptr } %t106, { i64, ptr } %t107, { i64, ptr } %t105)
  store %"compiler/diagmsg:Msg" %t109, ptr %l55
  br label %bb13
bb13:
  %t110 = load ptr, ptr %l40, !tbaa !29
  %t111 = load { i64, [3 x i64] }, ptr %l46
  %t112 = load %"compiler/diagmsg:Msg", ptr %l55
  %t113 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v0, ptr %t110, { i64, [3 x i64] } %t111, %"compiler/diagmsg:Msg" %t112)
  store i64 %t113, ptr %l56
  br label %bb14
bb14:
  %t114 = load i64, ptr %l56, !tbaa !24
  store i64 %t114, ptr %l8, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l58
  br label %bb15
bb15:
  %t118 = load i64, ptr %l58, !tbaa !24
  store i64 %t118, ptr %l9, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t121 = icmp sge i64 %t119, 0
  br i1 %t121, label %bb16, label %bb17
bb16:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l62, !tbaa !29
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !29
  store ptr %t127, ptr %l64, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/check:Checker", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load i64, ptr %l9, !tbaa !24
  %t135 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t131, i64 %t132)
  store i64 %t135, ptr %l68
  br label %bb18
bb17:
  %t136 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t136, ptr %l61, !tbaa !27
  br label %bb21
bb18:
  %t138 = load ptr, ptr %l64, !tbaa !29
  %t139 = load i64, ptr %l68, !tbaa !24
  %t140 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t138, i64 %t139)
  store ptr %t140, ptr %l69
  br label %bb19
bb19:
  %t141 = load ptr, ptr %l69, !tbaa !29
  %t143 = getelementptr %"compiler/ast:Func", ptr %t141, i32 0, i32 2
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load ptr, ptr %l62, !tbaa !29
  %t147 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t145, i32 %t144)
  store { i64, ptr } %t147, ptr %l72
  br label %bb20
bb20:
  %t148 = load { i64, ptr }, ptr %l72, !tbaa !27
  store { i64, ptr } %t148, ptr %l61, !tbaa !27
  br label %bb21
bb21:
  %t149 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t149, ptr %l10, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t155 = getelementptr %"compiler/generic:Program", ptr %t153, i32 0, i32 0
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = getelementptr %"compiler/load:Loader", ptr %t156, i32 0, i32 4
  %t159 = load ptr, ptr %t158, !tbaa !29
  store ptr %t159, ptr %l77, !tbaa !29
  %t160 = load i64, ptr %l8, !tbaa !24
  store i64 %t160, ptr %l78, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/source:Span", ptr %l1
  %t165 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t161, %"compiler/source:Span" %t162)
  store { i64, [3 x i64] } %t165, ptr %l81
  br label %bb22
bb22:
  %t166 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t170 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t166, { i64, ptr } %t167)
  store %"compiler/diagmsg:Msg" %t170, ptr %l84
  br label %bb23
bb23:
  %t171 = load ptr, ptr %l77, !tbaa !29
  %t172 = load i64, ptr %l78, !tbaa !24
  %t173 = load { i64, [3 x i64] }, ptr %l81
  %t174 = load %"compiler/diagmsg:Msg", ptr %l84
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v0, ptr %t171, i64 %t172, { i64, [3 x i64] } %t173, %"compiler/diagmsg:Msg" %t174)
  br label %bb24
bb24:
  %t175 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotStmtSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %l39 = alloca %"compiler/source:Span"
  %l41 = alloca %"compiler/source:Span"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 113}
  store i32 %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t24, i32 0, i32 3
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t29)
  store %"compiler/source:Span" %t31, ptr %l19
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t32)
  store %"compiler/source:Span" %t34, ptr %l21
  br label %bb7
bb7:
  %t35 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t37 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s1, i32 %t35)
  store { i64, ptr } %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  %t40 = load ptr, ptr %l17, !tbaa !29
  %t41 = load %"compiler/source:Span", ptr %l19
  %t42 = load %"compiler/source:Span", ptr %l21
  %t44 = call %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %t40, %"compiler/source:Span" %t41, %"compiler/source:Span" %t42, i64 %t39)
  store %"compiler/source:Span" %t44, ptr %l25
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t45 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t45, ptr %rv
  br label %ret
bb10:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t47 = load ptr, ptr %l26, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 28}
  %t53 = icmp eq i64 %t51, 12
  store i1 %t53, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t54 = load i1, ptr %l27, !tbaa !21
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l5
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t63, i32 0, i32 2
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l6, !tbaa !23
  br label %bb15
bb14:
  br label %bb18
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t67 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t67, ptr %l34
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l6, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %s2, ptr %t68, i32 %t69)
  store { i64, ptr } %t72, ptr %l37
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = load %"compiler/source:Span", ptr %l34
  %t77 = call %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %t75, i64 %t74)
  store %"compiler/source:Span" %t77, ptr %l39
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t78 = load %"compiler/source:Span", ptr %l39
  store %"compiler/source:Span" %t78, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t79)
  store %"compiler/source:Span" %t81, ptr %l41
  br label %bb22
bb22:
  %t82 = load %"compiler/source:Span", ptr %l41
  store %"compiler/source:Span" %t82, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4d0d10dbd8c28898_8d57e58513238834)
  unreachable
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteWrite(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l10 = alloca ptr
  %l12 = alloca ptr
  %l17 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb9
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 153
  store ptr %t18, ptr %l10, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t19)
  store ptr %t21, ptr %l12
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t24 = getelementptr %"compiler/check:frame", ptr %t22, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i32, ptr %l2, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t31 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s1, i64 %t25, i64 %t28)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t31, ptr %l17
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l10, !tbaa !29
  %t33 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l17
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t33, i1 true)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_bb9360f661a84828_a83eb458d7764d44)
  unreachable
bb14:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eonce(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l33 = alloca %"compiler/source:Span"
  %l36 = alloca i32
  %l37 = alloca i64
  %l49 = alloca ptr
  %rv = alloca ptr
  %t78 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %rv
  br label %ret
bb6:
  %t12 = load ptr, ptr %l1, !tbaa !29
  store ptr %t12, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %bb7, label %bb8
bb7:
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = load i64, ptr %t16, !range !{i64 0, i64 18}
  %t19 = icmp eq i64 %t17, 2
  store i1 %t19, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb9, label %bb10
bb9:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr { i64, [5 x i64] }, ptr %t21, i32 0, i32 1
  %t24 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t23, i32 0, i32 2
  %t25 = load ptr, ptr %t24
  store ptr %t25, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t28 = load ptr, ptr %l19, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 8}
  %t34 = icmp eq i64 %t32, 0
  store i1 %t34, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t35 = load i1, ptr %l20, !tbaa !21
  br i1 %t35, label %bb14, label %bb15
bb14:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t38, i32 0, i32 0
  %t40 = load %"compiler/source:Span", ptr %t39
  store %"compiler/source:Span" %t40, ptr %l3
  %t42 = load ptr, ptr %l2, !tbaa !29
  %t44 = getelementptr { i64, [4 x i64] }, ptr %t42, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t44, i32 0, i32 1
  %t46 = load i32, ptr %t45
  store i32 %t46, ptr %l4, !tbaa !23
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr { i64, [4 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t50, i32 0, i32 2
  %t52 = load i32, ptr %t51
  store i32 %t52, ptr %l5, !tbaa !23
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_9e3e60c51c241998_753bf57c496fa07c)
  unreachable
bb22:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t56)
  store %"compiler/source:Span" %t58, ptr %l31
  br label %bb23
bb23:
  %t59 = load %"compiler/source:Span", ptr %l31
  store %"compiler/source:Span" %t59, ptr %l6
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l32, !tbaa !29
  %t61 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t61, ptr %l33
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t65 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t62)
  store i32 %t65, ptr %l36
  br label %bb24
bb24:
  %t66 = load ptr, ptr %l32, !tbaa !29
  %t67 = load %"compiler/source:Span", ptr %l33
  %t68 = load i32, ptr %l36, !tbaa !23
  %t69 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t66, %"compiler/source:Span" %t67, i32 %t68)
  store i64 %t69, ptr %l37
  br label %bb25
bb25:
  %t70 = load i64, ptr %l37, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load %"compiler/source:Span", ptr %l6
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = trunc i64 %t73 to i32
  %t77 = load ptr, ptr %l1, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 0
  store i64 0, ptr %t79
  %t81 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t72, 0
  %t83 = insertvalue { %"compiler/source:Span", i32, ptr } %t81, i32 %t75, 1
  %t85 = insertvalue { %"compiler/source:Span", i32, ptr } %t83, ptr %t77, 2
  %t86 = getelementptr { i64, [3 x i64] }, ptr %t78, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t85, ptr %t86
  %t87 = load { i64, [3 x i64] }, ptr %t78
  %t89 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t87, ptr %t89
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t71, ptr %t89)
  br label %bb26
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load %"compiler/source:Span", ptr %l6
  %t94 = load i64, ptr %l7, !tbaa !24
  %t98 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v2, ptr %t92, %"compiler/source:Span" %t93, i64 %t94)
  store ptr %t98, ptr %l49
  br label %bb27
bb27:
  %t99 = load ptr, ptr %l49, !tbaa !29
  store ptr %t99, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca ptr
  %l34 = alloca i1
  %l38 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i32
  %l45 = alloca ptr
  %l46 = alloca i32
  %l49 = alloca ptr
  %l52 = alloca i32
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca i32
  %l58 = alloca i32
  %l64 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca ptr
  %l73 = alloca %"compiler/source:Span"
  %l76 = alloca i32
  %l77 = alloca i32
  %l82 = alloca ptr
  %l83 = alloca ptr
  %l84 = alloca i32
  %l86 = alloca %"compiler/source:Span"
  %l87 = alloca ptr
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t2 = load ptr, ptr %l12, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l13, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 113}
  store i32 %t20, ptr %l3
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t30, i32 0, i32 3
  %t32 = load ptr, ptr %t31
  store ptr %t32, ptr %l5, !tbaa !29
  br label %bb5
bb4:
  br label %bb25
bb5:
  %t34 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t36 = trunc i64 78 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l4, !tbaa !29
  %t43 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownValue(ptr %v0, ptr %v1, ptr %v2, ptr %t39, ptr %t40)
  store ptr %t43, ptr %l28
  br label %bb8
bb7:
  br label %bb25
bb8:
  %t44 = load ptr, ptr %l28, !tbaa !29
  store ptr %t44, ptr %l6, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t49 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownValue(ptr %v0, ptr %v1, ptr %v2, ptr %t45, ptr %t46)
  store ptr %t49, ptr %l31
  br label %bb9
bb9:
  %t50 = load ptr, ptr %l31, !tbaa !29
  store ptr %t50, ptr %l7, !tbaa !29
  %t51 = load ptr, ptr %l6, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb12
bb11:
  %t55 = load ptr, ptr %l7, !tbaa !29
  %t57 = icmp eq ptr %t55, null
  store i1 %t57, ptr %l34, !tbaa !21
  br label %bb12
bb12:
  %t59 = load i1, ptr %l34, !tbaa !21
  br i1 %t59, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/check:Checker", ptr %t61, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = call { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %s1, ptr %s1, ptr %t64, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d50, i32 0, i32 1) }, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d51, i32 0, i32 1) })
  %t67 = extractvalue { i32, i32 } %t66, 1
  %t68 = extractvalue { i32, i32 } %t66, 0
  store i32 %t68, ptr %l42
  %t69 = icmp ne i32 %t68, 0
  br i1 %t69, label %bb17, label %ok.70, !prof !99
ok.70:
  store i32 %t67, ptr %l41
  br label %bb16
bb16:
  %t71 = load i32, ptr %l41, !tbaa !23
  store i32 %t71, ptr %l38, !tbaa !23
  br label %bb19
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s1)
  store ptr null, ptr %rv
  br label %ret
bb19:
  %t73 = load i32, ptr %l38, !tbaa !23
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  store ptr %t77, ptr %l45, !tbaa !29
  store i32 %t73, ptr %l46, !tbaa !23
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/check:Checker", ptr %t79, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/generic:Program", ptr %t82, i32 0, i32 2
  store ptr %t84, ptr %l49, !tbaa !29
  %t85 = load ptr, ptr %l6, !tbaa !29
  %t88 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t85)
  store i32 %t88, ptr %l52
  br label %bb20
bb20:
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t92 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t89)
  store i32 %t92, ptr %l55
  br label %bb21
bb21:
  %t93 = mul i64 2, 4
  %t94 = call ptr @__olang_scope_alloc_zeroed(ptr %s1, i64 %t93)
  %t95 = insertvalue { i64, ptr } undef, i64 2, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  store { i64, ptr } %t96, ptr %l56, !tbaa !27
  %t97 = load i32, ptr %l52, !tbaa !23
  %t98 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 0
  store i32 %t97, ptr %t100, !tbaa !33
  %t101 = load i32, ptr %l55, !tbaa !23
  %t102 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i32, ptr %t103, i64 1
  store i32 %t101, ptr %t104, !tbaa !33
  %t105 = load ptr, ptr %l49, !tbaa !29
  %t106 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t107 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s1, ptr %t105, { i64, ptr } %t106)
  store i32 %t107, ptr %l57
  br label %bb22
bb22:
  %t108 = load ptr, ptr %l45, !tbaa !29
  %t109 = load i32, ptr %l46, !tbaa !23
  %t110 = load i32, ptr %l57, !tbaa !23
  %t111 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %t108, i32 %t109, i32 %t110)
  store i32 %t111, ptr %l58
  br label %bb23
bb23:
  %t112 = load i32, ptr %l58, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load %"compiler/source:Span", ptr %l2
  %t116 = load ptr, ptr %l6, !tbaa !29
  %t117 = load ptr, ptr %l7, !tbaa !29
  %t123 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emakeEntry(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %t113, %"compiler/source:Span" %t114, i32 %t112, ptr %t116, ptr %t117)
  store ptr %t123, ptr %l64
  br label %bb24
bb24:
  %t124 = load ptr, ptr %l64, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  store ptr %t124, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_a55a9bf4027c6b18_9fb81a5ff98f01bc)
  unreachable
bb30:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t133 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t126, ptr %t127, i32 %t129)
  store ptr %t133, ptr %l70
  br label %bb31
bb31:
  %t134 = load ptr, ptr %l70, !tbaa !29
  store ptr %t134, ptr %l10, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l71, !tbaa !29
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t136)
  store %"compiler/source:Span" %t138, ptr %l73
  br label %bb32
bb32:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l10, !tbaa !29
  %t143 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v2, ptr %t139, ptr %t140)
  store i32 %t143, ptr %l76
  br label %bb33
bb33:
  %t144 = load ptr, ptr %l71, !tbaa !29
  %t145 = load %"compiler/source:Span", ptr %l73
  %t146 = load i32, ptr %l76, !tbaa !23
  %t147 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownChecked(ptr %v0, ptr %t144, %"compiler/source:Span" %t145, i32 %t146)
  store i32 %t147, ptr %l77
  br label %bb34
bb34:
  %t148 = load i32, ptr %l77, !tbaa !23
  store i32 %t148, ptr %l11, !tbaa !23
  %t149 = load i32, ptr %l11, !tbaa !23
  %t150 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t153 = icmp eq i32 %t149, %t150
  br i1 %t153, label %bb35, label %bb36
bb35:
  store ptr null, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l82, !tbaa !29
  %t157 = load ptr, ptr %l10, !tbaa !29
  store ptr %t157, ptr %l83, !tbaa !29
  %t158 = load i32, ptr %l11, !tbaa !23
  store i32 %t158, ptr %l84, !tbaa !23
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t159)
  store %"compiler/source:Span" %t161, ptr %l86
  br label %bb38
bb38:
  %t162 = load ptr, ptr %l82, !tbaa !29
  %t163 = load ptr, ptr %l83, !tbaa !29
  %t164 = load i32, ptr %l84, !tbaa !23
  %t165 = load %"compiler/source:Span", ptr %l86
  %t166 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v2, ptr %v2, ptr %t162, ptr %t163, i32 %t164, %"compiler/source:Span" %t165)
  store ptr %t166, ptr %l87
  br label %bb39
bb39:
  %t167 = load ptr, ptr %l87, !tbaa !29
  store ptr %t167, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca ptr
  %l22 = alloca %"compiler/typed:Local"
  %l26 = alloca i1
  %l30 = alloca i1
  %l36 = alloca i1
  %l37 = alloca i1
  %l42 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t15 = load ptr, ptr %l10, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l10, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 0
  store i1 %t21, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t22 = load i1, ptr %l11, !tbaa !21
  store i1 %t22, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l8, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 1
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l2, !tbaa !23
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37
  store i32 %t38, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb25
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l20
  br label %bb11
bb11:
  %t43 = load i32, ptr %l3, !tbaa !23
  %t44 = load ptr, ptr %l20, !tbaa !29
  %t46 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t44, i32 %t43)
  store %"compiler/typed:Local" %t46, ptr %l22
  br label %bb12
bb12:
  %t47 = getelementptr %"compiler/typed:Local", ptr %l22, i32 0, i32 4
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 7}
  %t50 = trunc i64 1 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb16
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/check:Checker", ptr %t55, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i32, ptr %l2, !tbaa !23
  %t62 = call i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l30
  br label %bb15
bb15:
  %t63 = load i1, ptr %l30, !tbaa !21
  store i1 %t63, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l26, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = getelementptr %"compiler/generic:Program", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %l2, !tbaa !23
  %t75 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t71, i32 %t72)
  store i1 %t75, ptr %l36
  br label %bb20
bb20:
  %t76 = load i1, ptr %l36, !tbaa !21
  br i1 %t76, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/check:Checker", ptr %t77, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = getelementptr %"compiler/generic:Program", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t82, i32 %t83)
  store i1 %t86, ptr %l42
  br label %bb23
bb23:
  %t87 = load i1, ptr %l42, !tbaa !21
  store i1 %t87, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t88 = load i1, ptr %l37, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_4e588e9eb703ca58_549acb49cdd076c4)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %s5 = alloca %olang.scope
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
  %t157 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s4, ptr %s4, { i64, ptr } %t155, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t157, ptr %l87
  br label %bb28
bb28:
  %t158 = load i1, ptr %l87, !tbaa !21
  %t159 = xor i1 %t158, true
  br i1 %t159, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s5
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
  %t186 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s5, ptr %t176, i32 %t183)
  store { i64, ptr } %t186, ptr %l103
  br label %bb36
bb36:
  %t187 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 0
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = mul i64 %t188, 1
  %t191 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t190)
  call void @llvm.memcpy.p0.p0.i64(ptr %t191, ptr %t189, i64 %t190, i1 false)
  %t192 = insertvalue { i64, ptr } undef, i64 %t188, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  %t194 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t197 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedField(ptr %s5, ptr %s4, ptr %v0, { i64, ptr } %t193, { i64, ptr } %t194)
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
  call void @__olang_scope_close(ptr %s5)
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

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceType(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 30
  %t4 = load i32, ptr %t3, !tbaa !23
  %t6 = icmp slt i32 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/check:Checker", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %s1, ptr %s1, ptr %t12, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d53, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d54, i32 0, i32 1) })
  store i32 %t14, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t17 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 30
  store i32 %t15, ptr %t17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 30
  %t21 = load i32, ptr %t20, !tbaa !23
  store i32 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l18 = alloca ptr
  %l20 = alloca %"compiler/typed:Local"
  %l23 = alloca i1
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l28 = alloca %"compiler/typed:Local"
  %l30 = alloca i1
  %l33 = alloca i1
  %l37 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca i1
  %l51 = alloca ptr
  %l53 = alloca i1
  %l58 = alloca ptr
  %l64 = alloca i1
  %l65 = alloca ptr
  %l66 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca i1
  %l89 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l99 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l109 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t16)
  store ptr %t18, ptr %l18
  br label %bb6
bb6:
  %t19 = load i32, ptr %l2, !tbaa !23
  %t20 = load ptr, ptr %l18, !tbaa !29
  %t22 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t20, i32 %t19)
  store %"compiler/typed:Local" %t22, ptr %l20
  br label %bb7
bb7:
  %t23 = getelementptr %"compiler/typed:Local", ptr %l20, i32 0, i32 4
  %t24 = load i32, ptr %t23, !range !{i32 0, i32 7}
  %t26 = trunc i64 5 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l24, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t30)
  store ptr %t32, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb10:
  %t33 = load i32, ptr %l2, !tbaa !23
  %t34 = load ptr, ptr %l26, !tbaa !29
  %t36 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %t34, i32 %t33)
  store %"compiler/typed:Local" %t36, ptr %l28
  br label %bb11
bb11:
  %t37 = getelementptr %"compiler/typed:Local", ptr %l28, i32 0, i32 2
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load ptr, ptr %l24, !tbaa !29
  %t41 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t39, i32 %t38)
  store i1 %t41, ptr %l30
  br label %bb12
bb12:
  %t42 = load i1, ptr %l30, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l23, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i32, ptr %l2, !tbaa !23
  %t51 = sext i32 %t49 to i64
  %t54 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %t48, i64 %t51)
  store i1 %t54, ptr %l37
  br label %bb16
bb15:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  %t55 = load i1, ptr %l37, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %l10, !tbaa !21
  br label %bb67
bb18:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t60 = load ptr, ptr %l39, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb19, label %bb20
bb19:
  %t63 = load ptr, ptr %l39, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 1
  store i1 %t66, ptr %l40, !tbaa !21
  br label %bb20
bb20:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb21, label %bb22
bb21:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t70, i32 0, i32 2
  %t72 = load i64, ptr %t71
  store i64 %t72, ptr %l3, !tbaa !24
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr { i64, [4 x i64] }, ptr %t74, i32 0, i32 1
  %t77 = getelementptr { %"compiler/source:Span", i32, i64, i32 }, ptr %t76, i32 0, i32 3
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l4, !tbaa !23
  br label %bb23
bb22:
  br label %bb33
bb23:
  store %olang.scope zeroinitializer, ptr %s2
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/check:Checker", ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t84 = load i64, ptr %l3, !tbaa !24
  %t85 = load i32, ptr %l4, !tbaa !23
  %t89 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %s2, ptr %t83, i64 %t84, i32 %t85)
  store ptr %t89, ptr %l51
  br label %bb24
bb24:
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t91 = icmp eq ptr %t90, null
  br i1 %t91, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb32
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/check:Checker", ptr %t93, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t97 = load i64, ptr %l3, !tbaa !24
  %t98 = load i32, ptr %l4, !tbaa !23
  %t102 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v0, ptr %t96, i64 %t97, i32 %t98)
  store ptr %t102, ptr %l58
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l58, !tbaa !29
  store ptr %t103, ptr %l5, !tbaa !29
  %t104 = load ptr, ptr %l5, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_24dda45681d8cee1_6133aaee564c4ee5)
  unreachable
bb29:
  br label %bb30
bb30:
  %t108 = load ptr, ptr %l5, !tbaa !29
  %t111 = getelementptr %"compiler/ast:VarDecl", ptr %t108, i32 0, i32 2
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = call i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %t112)
  store i1 %t114, ptr %l64
  br label %bb31
bb31:
  %t115 = load i1, ptr %l64, !tbaa !21
  store i1 %t115, ptr %l53, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l53, !tbaa !21
  store i1 %t116, ptr %l10, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb67
bb33:
  %t117 = load ptr, ptr %l1, !tbaa !29
  store ptr %t117, ptr %l65, !tbaa !29
  store i1 false, ptr %l66, !tbaa !21
  %t118 = load ptr, ptr %l65, !tbaa !29
  %t119 = icmp ne ptr %t118, null
  br i1 %t119, label %bb34, label %bb35
bb34:
  %t121 = load ptr, ptr %l65, !tbaa !29
  %t122 = load i64, ptr %t121, !range !{i64 0, i64 8}
  %t124 = icmp eq i64 %t122, 2
  store i1 %t124, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t125 = load i1, ptr %l66, !tbaa !21
  br i1 %t125, label %bb36, label %bb37
bb36:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr { i64, [4 x i64] }, ptr %t126, i32 0, i32 1
  %t129 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t128, i32 0, i32 2
  %t130 = load ptr, ptr %t129
  store ptr %t130, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/check:Checker", ptr %t132, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  store ptr %t137, ptr %l73, !tbaa !29
  %t138 = load ptr, ptr %l6, !tbaa !29
  %t141 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t138)
  store i32 %t141, ptr %l76
  br label %bb39
bb39:
  %t142 = load ptr, ptr %l73, !tbaa !29
  %t143 = load i32, ptr %l76, !tbaa !23
  %t144 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t142, i32 %t143)
  store i64 %t144, ptr %l77
  br label %bb40
bb40:
  %t145 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t146 = load i64, ptr %l77, !tbaa !24
  %t148 = and i64 %t146, %t145
  %t150 = icmp ne i64 %t148, 0
  store i1 %t150, ptr %l10, !tbaa !21
  br label %bb67
bb41:
  %t152 = load ptr, ptr %l1, !tbaa !29
  store ptr %t152, ptr %l81, !tbaa !29
  store i1 false, ptr %l82, !tbaa !21
  %t153 = load ptr, ptr %l81, !tbaa !29
  %t154 = icmp ne ptr %t153, null
  br i1 %t154, label %bb42, label %bb43
bb42:
  %t156 = load ptr, ptr %l81, !tbaa !29
  %t157 = load i64, ptr %t156, !range !{i64 0, i64 8}
  %t159 = icmp eq i64 %t157, 3
  store i1 %t159, ptr %l82, !tbaa !21
  br label %bb43
bb43:
  %t160 = load i1, ptr %l82, !tbaa !21
  br i1 %t160, label %bb44, label %bb45
bb44:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr { i64, [4 x i64] }, ptr %t161, i32 0, i32 1
  %t164 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t163, i32 0, i32 2
  %t165 = load ptr, ptr %t164
  store ptr %t165, ptr %l7, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l7, !tbaa !29
  %t171 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t167, ptr %t168)
  store i1 %t171, ptr %l89
  br label %bb47
bb47:
  %t172 = load i1, ptr %l89, !tbaa !21
  store i1 %t172, ptr %l10, !tbaa !21
  br label %bb67
bb48:
  %t173 = load ptr, ptr %l1, !tbaa !29
  store ptr %t173, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t174 = load ptr, ptr %l90, !tbaa !29
  %t175 = icmp ne ptr %t174, null
  br i1 %t175, label %bb49, label %bb50
bb49:
  %t177 = load ptr, ptr %l90, !tbaa !29
  %t178 = load i64, ptr %t177, !range !{i64 0, i64 8}
  %t180 = icmp eq i64 %t178, 4
  store i1 %t180, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t181 = load i1, ptr %l91, !tbaa !21
  br i1 %t181, label %bb51, label %bb52
bb51:
  %t182 = load ptr, ptr %l1, !tbaa !29
  %t184 = getelementptr { i64, [4 x i64] }, ptr %t182, i32 0, i32 1
  %t185 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t184, i32 0, i32 2
  %t186 = load ptr, ptr %t185
  store ptr %t186, ptr %l8, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l8, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Elem", ptr %t189, i32 0, i32 0
  %t192 = load ptr, ptr %t191, !tbaa !29
  %t195 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t188, ptr %t192)
  store i1 %t195, ptr %l99
  br label %bb54
bb54:
  %t196 = load i1, ptr %l99, !tbaa !21
  store i1 %t196, ptr %l10, !tbaa !21
  br label %bb67
bb55:
  %t197 = load ptr, ptr %l1, !tbaa !29
  store ptr %t197, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t198 = load ptr, ptr %l100, !tbaa !29
  %t199 = icmp ne ptr %t198, null
  br i1 %t199, label %bb56, label %bb57
bb56:
  %t201 = load ptr, ptr %l100, !tbaa !29
  %t202 = load i64, ptr %t201, !range !{i64 0, i64 8}
  %t204 = icmp eq i64 %t202, 5
  store i1 %t204, ptr %l101, !tbaa !21
  br label %bb57
bb57:
  %t205 = load i1, ptr %l101, !tbaa !21
  br i1 %t205, label %bb58, label %bb59
bb58:
  %t206 = load ptr, ptr %l1, !tbaa !29
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t206, i32 0, i32 1
  %t209 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t208, i32 0, i32 2
  %t210 = load ptr, ptr %t209
  store ptr %t210, ptr %l9, !tbaa !29
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l9, !tbaa !29
  %t215 = getelementptr %"compiler/typed:Payload", ptr %t213, i32 0, i32 0
  %t216 = load ptr, ptr %t215, !tbaa !29
  %t219 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplaceWritable(ptr %v0, ptr %v1, ptr %t212, ptr %t216)
  store i1 %t219, ptr %l109
  br label %bb61
bb61:
  %t220 = load i1, ptr %l109, !tbaa !21
  store i1 %t220, ptr %l10, !tbaa !21
  br label %bb67
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb66
bb65:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_f10316e290a7e1b9_b7814005b7d82bcd)
  unreachable
bb67:
  %t221 = load i1, ptr %l10, !tbaa !21
  store i1 %t221, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprivateRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i32 %a2, { i64, ptr } %a3, %"compiler/source:Span" %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l9 = alloca i1
  %l12 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i64
  %l32 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca { i64, [3 x i64] }
  %l44 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l48 = alloca i32
  %l49 = alloca { i64, ptr }
  %l53 = alloca %"compiler/diagmsg:Msg"
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/check:Checker", ptr %t5, i32 0, i32 20
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l12
  br label %bb3
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = icmp eq i64 %t10, 0
  store i1 %t11, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l9, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l15, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s0, ptr %t19, i64 %t20)
  store ptr %t23, ptr %l19
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l19, !tbaa !29
  %t26 = getelementptr %"compiler/ast:Func", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %t26, !tbaa !23
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t30 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t28, i32 %t27)
  store { i64, ptr } %t30, ptr %l22
  br label %bb9
bb9:
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t31, ptr %l6, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t32, { i64, ptr } %t33)
  store i1 %t36, ptr %l25
  br label %bb10
bb10:
  %t37 = load i1, ptr %l25, !tbaa !21
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb15
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/check:Checker", ptr %t38, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %t41, i64 %t42)
  store i64 %t45, ptr %l30
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t46)
  store ptr %t48, ptr %l32
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t51 = getelementptr %"compiler/check:frame", ptr %t49, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr %l30, !tbaa !24
  %t55 = icmp eq i64 %t53, %t52
  store i1 %t55, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t57 = load i1, ptr %l26, !tbaa !21
  br i1 %t57, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/check:Checker", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 4
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l40, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t73 = call { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %t69, %"compiler/source:Span" %a4)
  store { i64, [3 x i64] } %t73, ptr %l43
  br label %bb19
bb19:
  store { i64, ptr } %a5, ptr %l44, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l45, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %t76, i32 %a2)
  store i32 %t80, ptr %l48
  br label %bb20
bb20:
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t82 = load i32, ptr %l48, !tbaa !23
  %t83 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s0, ptr %t81, i32 %t82)
  store { i64, ptr } %t83, ptr %l49
  br label %bb21
bb21:
  %t84 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t84, 0
  %t86 = extractvalue { i64, ptr } %t84, 1
  %t87 = mul i64 %t85, 1
  %t88 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t87)
  call void @llvm.memcpy.p0.p0.i64(ptr %t88, ptr %t86, i64 %t87, i1 false)
  %t89 = insertvalue { i64, ptr } undef, i64 %t85, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t97 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v2, ptr %s0, ptr %v0, ptr %v1, ptr %v0, { i64, ptr } %t93, { i64, ptr } %t90, { i64, ptr } %t91, { i64, ptr } %t92)
  store %"compiler/diagmsg:Msg" %t97, ptr %l53
  br label %bb22
bb22:
  %t98 = load ptr, ptr %l40, !tbaa !29
  %t99 = load { i64, [3 x i64] }, ptr %l43
  %t100 = load %"compiler/diagmsg:Msg", ptr %l53
  %t101 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v0, ptr %t98, { i64, [3 x i64] } %t99, %"compiler/diagmsg:Msg" %t100)
  store i64 %t101, ptr %l54
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erawOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %rv = alloca ptr
  %t38 = alloca { i64, [2 x i64] }, align 8
  %t46 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = getelementptr %"compiler/check:rawTable", ptr %t1, i32 0, i32 1
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t6, ptr %l6
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/check:Checker", ptr %t7, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  store ptr %t12, ptr %l9, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %t13)
  store i32 %t15, ptr %l11
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t16 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = load i32, ptr %l11, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t17, i32 %t18, i64 %t16)
  store i32 %t20, ptr %l13
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t21)
  store ptr %t23, ptr %l15
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t26 = getelementptr %"compiler/check:frame", ptr %t24, i32 0, i32 2
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/check:rawTable", ptr %t28, i32 0, i32 3
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t32
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !37
  store { i64, [2 x i64] } zeroinitializer, ptr %t38
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 0
  store i64 1, ptr %t39
  %t41 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t37, 0
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  store { { i64, ptr } } %t41, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t38
  %t45 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t43, ptr %t45
  store { i64, [5 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 0
  store i64 1, ptr %t47
  %t48 = load %"compiler/source:Span", ptr %l6
  %t49 = insertvalue { %"compiler/source:Span", i32, i64, ptr } undef, %"compiler/source:Span" %t48, 0
  %t50 = load i32, ptr %l13, !tbaa !23
  %t51 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t49, i32 %t50, 1
  %t53 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t51, i64 %t27, 2
  %t55 = insertvalue { %"compiler/source:Span", i32, i64, ptr } %t53, ptr %t45, 3
  %t56 = getelementptr { i64, [5 x i64] }, ptr %t46, i32 0, i32 1
  store { %"compiler/source:Span", i32, i64, ptr } %t55, ptr %t56
  %t57 = load { i64, [5 x i64] }, ptr %t46
  %t59 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t57, ptr %t59
  store ptr %t59, ptr %rv
  br label %ret
bb6:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/source:Span", ptr %l1
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t65 = getelementptr %"compiler/check:rawTable", ptr %t63, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = getelementptr %"compiler/check:rawTable", ptr %t67, i32 0, i32 2
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l31, !tbaa !27
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !34
  %t81 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v2, ptr %t61, %"compiler/source:Span" %t62, i32 %t66, i64 %t76)
  store ptr %t81, ptr %l34
  br label %bb7
bb7:
  %t82 = load ptr, ptr %l34, !tbaa !29
  store ptr %t82, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
  %t87 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFilterUndecided(ptr %v0)
  store %"compiler/diagmsg:Msg" %t87, ptr %l48
  br label %bb15
bb15:
  %t88 = load ptr, ptr %l41, !tbaa !29
  %t89 = load %"compiler/source:Span", ptr %l47
  %t90 = load %"compiler/diagmsg:Msg", ptr %l48
  %t91 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t88, %"compiler/source:Span" %t89, %"compiler/diagmsg:Msg" %t90)
  store i64 %t91, ptr %l49
  br label %bb16
bb16:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 162
  store i1 true, ptr %t94, !tbaa !21
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

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflMember(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, ptr %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"compiler/check:reflList"
  %l7 = alloca i32
  %lp8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca %"compiler/generic:Desc"
  %lp11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l18 = alloca { i64, ptr }
  %l25 = alloca %"compiler/check:reflList"
  %l27 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l31 = alloca { i64, ptr }
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca i64
  %l38 = alloca ptr
  %l42 = alloca i32
  %l50 = alloca ptr
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca %"compiler/source:Span"
  %l72 = alloca { i64, ptr }
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l79 = alloca ptr
  %l82 = alloca i1
  %l83 = alloca i1
  %l85 = alloca i1
  %l86 = alloca i1
  %l88 = alloca i1
  %l89 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l97 = alloca i1
  %l101 = alloca %"compiler/check:reflVal"
  %l106 = alloca ptr
  %l109 = alloca i1
  %l110 = alloca ptr
  %l111 = alloca %"compiler/source:Span"
  %l114 = alloca { i64, ptr }
  %l116 = alloca %"compiler/diagmsg:Msg"
  %l117 = alloca i64
  %l119 = alloca i1
  %l120 = alloca ptr
  %l121 = alloca %"compiler/source:Span"
  %l124 = alloca { i64, ptr }
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca i64
  %l129 = alloca i1
  %l130 = alloca i1
  %l132 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca %"compiler/source:Span"
  %l137 = alloca { i64, ptr }
  %l140 = alloca %"compiler/diagmsg:Msg"
  %l141 = alloca i64
  %l144 = alloca ptr
  %l148 = alloca i1
  %l149 = alloca i1
  %l151 = alloca i1
  %l155 = alloca i1
  %l159 = alloca i1
  %l160 = alloca i1
  %l163 = alloca i32
  %l167 = alloca ptr
  %l168 = alloca %"compiler/source:Span"
  %l171 = alloca { i64, ptr }
  %l174 = alloca %"compiler/diagmsg:Msg"
  %l175 = alloca i64
  %l178 = alloca ptr
  %l182 = alloca i32
  %l191 = alloca ptr
  %l196 = alloca %"compiler/generic:Desc"
  %l198 = alloca i1
  %l199 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca %"compiler/source:Span"
  %l207 = alloca { i64, ptr }
  %l210 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i64
  %l214 = alloca ptr
  %l217 = alloca i1
  %l218 = alloca i1
  %l225 = alloca ptr
  %l230 = alloca %"compiler/check:reflVal"
  %l235 = alloca ptr
  %l238 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l266 = alloca %"compiler/source:Span"
  %l270 = alloca %"compiler/diagmsg:Msg"
  %l271 = alloca i64
  %l274 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %rv = alloca ptr
  %t11 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l4, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t6, ptr %l5, !tbaa !27
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t10 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 0
  store i64 12, ptr %t12
  %t14 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t8, 0
  %t16 = insertvalue { %"compiler/source:Span", ptr, i32 } %t14, ptr %t9, 1
  %t18 = insertvalue { %"compiler/source:Span", ptr, i32 } %t16, i32 %t10, 2
  %t19 = getelementptr { i64, [4 x i64] }, ptr %t11, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t18, ptr %t19
  %t20 = load { i64, [4 x i64] }, ptr %t11
  %t22 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 40, i64 8)
  store { i64, [4 x i64] } %t20, ptr %t22
  %t25 = call %"compiler/check:reflList" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elistOf(ptr %v0, ptr %s0, ptr %t7, ptr %t22)
  store %"compiler/check:reflList" %t25, ptr %l25
  br label %bb2
bb2:
  %t26 = load %"compiler/check:reflList", ptr %l25
  store %"compiler/check:reflList" %t26, ptr %l6
  %t27 = getelementptr %"compiler/check:reflList", ptr %l6, i32 0, i32 0
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t30 = load ptr, ptr %l0, !tbaa !29
  store ptr %t30, ptr %l27, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t31, ptr %l28
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load %"compiler/source:Span", ptr %l1
  %t36 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s1, ptr %t32, %"compiler/source:Span" %t33)
  store { i64, ptr } %t36, ptr %l31
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t37 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t40 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t39)
  call void @olang_textcopy(ptr %t40, ptr %t38, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t39, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = extractvalue { i64, ptr } %t42, 1
  %t46 = mul i64 %t44, 1
  %t47 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t46)
  call void @llvm.memcpy.p0.p0.i64(ptr %t47, ptr %t45, i64 %t46, i1 false)
  %t48 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t49 = insertvalue { i64, ptr } %t48, ptr %t47, 1
  %t51 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %s1, ptr %v0, { i64, ptr } %t49)
  store %"compiler/diagmsg:Msg" %t51, ptr %l34
  br label %bb6
bb6:
  %t52 = load ptr, ptr %l27, !tbaa !29
  %t53 = load %"compiler/source:Span", ptr %l28
  %t54 = load %"compiler/diagmsg:Msg", ptr %l34
  %t55 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t52, %"compiler/source:Span" %t53, %"compiler/diagmsg:Msg" %t54)
  store i64 %t55, ptr %l35
  br label %bb7
bb7:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load %"compiler/source:Span", ptr %l1
  %t60 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t56, %"compiler/source:Span" %t57)
  store ptr %t60, ptr %l38
  br label %bb8
bb8:
  %t61 = load ptr, ptr %l38, !tbaa !29
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t61, ptr %rv
  br label %ret
bb9:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l3, !tbaa !29
  %t67 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l42
  br label %bb10
bb10:
  %t68 = load i32, ptr %l42, !tbaa !23
  store i32 %t68, ptr %l7, !tbaa !23
  %t69 = load i32, ptr %l7, !tbaa !23
  %t71 = icmp sge i32 %t69, 0
  br i1 %t71, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t73 = load i32, ptr %l7, !tbaa !23
  %t74 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t77 = icmp eq i32 %t73, %t74
  br i1 %t77, label %bb13, label %bb14
bb12:
  br label %bb116
bb13:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load %"compiler/source:Span", ptr %l1
  %t83 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t79, %"compiler/source:Span" %t80)
  store ptr %t83, ptr %l50
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t84 = load ptr, ptr %l50, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t84, ptr %rv
  br label %ret
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l7, !tbaa !23
  %t90 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t90, ptr %l54
  br label %bb17
bb17:
  %t91 = load i1, ptr %l54, !tbaa !21
  br i1 %t91, label %bb18, label %bb19
bb18:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t96 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %t92, ptr %t93)
  store i1 %t96, ptr %l58
  br label %bb20
bb19:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb21
bb20:
  %t97 = load i1, ptr %l58, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t100 = load i1, ptr %l55, !tbaa !21
  br i1 %t100, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i32, ptr %l7, !tbaa !23
  %t103 = load i32, ptr %l4, !tbaa !23
  %t107 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %t101, i32 %t102, i32 %t103)
  store i1 %t107, ptr %l64
  br label %bb24
bb23:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb25
bb24:
  %t108 = load i1, ptr %l64, !tbaa !21
  store i1 %t108, ptr %l60, !tbaa !21
  br label %bb25
bb25:
  %t109 = load i1, ptr %l60, !tbaa !21
  br i1 %t109, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t111 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t113 = call i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %t111)
  store i1 %t113, ptr %l67
  br label %bb29
bb29:
  %t114 = load i1, ptr %l67, !tbaa !21
  br i1 %t114, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l68, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t116, ptr %l69
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load %"compiler/source:Span", ptr %l1
  %t121 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s6, ptr %t117, %"compiler/source:Span" %t118)
  store { i64, ptr } %t121, ptr %l72
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t122 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 1
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t125 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t123, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t130 = extractvalue { i64, ptr } %t127, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %s6, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l75
  br label %bb33
bb33:
  %t137 = load ptr, ptr %l68, !tbaa !29
  %t138 = load %"compiler/source:Span", ptr %l69
  %t139 = load %"compiler/diagmsg:Msg", ptr %l75
  %t140 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t137, %"compiler/source:Span" %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l76
  br label %bb34
bb34:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/source:Span", ptr %l1
  %t145 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t141, %"compiler/source:Span" %t142)
  store ptr %t145, ptr %l79
  br label %bb35
bb35:
  %t146 = load ptr, ptr %l79, !tbaa !29
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t146, ptr %rv
  br label %ret
bb36:
  %t148 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t150 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t148, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d55, i32 0, i32 1) })
  store i1 %t150, ptr %l82
  br label %bb37
bb37:
  %t151 = load i1, ptr %l82, !tbaa !21
  br i1 %t151, label %bb38, label %bb39
bb38:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb41
bb39:
  %t152 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t154 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t152, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d56, i32 0, i32 1) })
  store i1 %t154, ptr %l85
  br label %bb40
bb40:
  %t155 = load i1, ptr %l85, !tbaa !21
  store i1 %t155, ptr %l83, !tbaa !21
  br label %bb41
bb41:
  %t156 = load i1, ptr %l83, !tbaa !21
  br i1 %t156, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb45
bb43:
  %t157 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t157, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t159, ptr %l88
  br label %bb44
bb44:
  %t160 = load i1, ptr %l88, !tbaa !21
  store i1 %t160, ptr %l86, !tbaa !21
  br label %bb45
bb45:
  %t161 = load i1, ptr %l86, !tbaa !21
  br i1 %t161, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb49
bb47:
  %t162 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t164 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t162, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d58, i32 0, i32 1) })
  store i1 %t164, ptr %l91
  br label %bb48
bb48:
  %t165 = load i1, ptr %l91, !tbaa !21
  store i1 %t165, ptr %l89, !tbaa !21
  br label %bb49
bb49:
  %t166 = load i1, ptr %l89, !tbaa !21
  br i1 %t166, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l92, !tbaa !21
  br label %bb53
bb51:
  %t167 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t167, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t169, ptr %l94
  br label %bb52
bb52:
  %t170 = load i1, ptr %l94, !tbaa !21
  store i1 %t170, ptr %l92, !tbaa !21
  br label %bb53
bb53:
  %t171 = load i1, ptr %l92, !tbaa !21
  br i1 %t171, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb57
bb55:
  %t172 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t174 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t172, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t174, ptr %l97
  br label %bb56
bb56:
  %t175 = load i1, ptr %l97, !tbaa !21
  store i1 %t175, ptr %l95, !tbaa !21
  br label %bb57
bb57:
  %t176 = load i1, ptr %l95, !tbaa !21
  br i1 %t176, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s8
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l3, !tbaa !29
  %t179 = load i32, ptr %l4, !tbaa !23
  %t183 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %t177, ptr %t178, i32 %t179)
  store %"compiler/check:reflVal" %t183, ptr %l101
  br label %bb60
bb59:
  br label %bb91
bb60:
  %t184 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t184, ptr %lp8
  %t185 = load %"compiler/check:reflVal", ptr %l101
  %t186 = load ptr, ptr %lp8
  store %"compiler/check:reflVal" %t185, ptr %t186
  %t187 = load ptr, ptr %lp8
  %t188 = getelementptr %"compiler/check:reflVal", ptr %t187, i32 0, i32 0
  %t189 = load i1, ptr %t188, !tbaa !21
  br i1 %t189, label %bb61, label %bb62
bb61:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/source:Span", ptr %l1
  %t193 = load ptr, ptr %lp8
  %t194 = load %"compiler/check:reflVal", ptr %t193
  %t198 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v2, ptr %v2, ptr %t191, %"compiler/source:Span" %t192, %"compiler/check:reflVal" %t194)
  store ptr %t198, ptr %l106
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t199 = load ptr, ptr %l106, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t199, ptr %rv
  br label %ret
bb64:
  %t201 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t203 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t201, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t203, ptr %l109
  br label %bb65
bb65:
  %t204 = load i1, ptr %l109, !tbaa !21
  br i1 %t204, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s10
  %t205 = load ptr, ptr %l0, !tbaa !29
  store ptr %t205, ptr %l110, !tbaa !29
  %t206 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t206, ptr %l111
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i32, ptr %l7, !tbaa !23
  %t211 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s10, ptr %t207, i32 %t208)
  store { i64, ptr } %t211, ptr %l114
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t212 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  %t214 = extractvalue { i64, ptr } %t212, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t220 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoKind(ptr %s10, ptr %v0, { i64, ptr } %t218)
  store %"compiler/diagmsg:Msg" %t220, ptr %l116
  br label %bb69
bb69:
  %t221 = load ptr, ptr %l110, !tbaa !29
  %t222 = load %"compiler/source:Span", ptr %l111
  %t223 = load %"compiler/diagmsg:Msg", ptr %l116
  %t224 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t221, %"compiler/source:Span" %t222, %"compiler/diagmsg:Msg" %t223)
  store i64 %t224, ptr %l117
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb71:
  %t225 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t227 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t225, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t227, ptr %l119
  br label %bb72
bb72:
  %t228 = load i1, ptr %l119, !tbaa !21
  br i1 %t228, label %bb73, label %bb74
bb73:
  store %olang.scope zeroinitializer, ptr %s11
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l120, !tbaa !29
  %t230 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t230, ptr %l121
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i32, ptr %l7, !tbaa !23
  %t235 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t231, i32 %t232)
  store { i64, ptr } %t235, ptr %l124
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t236 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t244 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLength(ptr %s11, ptr %v0, { i64, ptr } %t242)
  store %"compiler/diagmsg:Msg" %t244, ptr %l126
  br label %bb76
bb76:
  %t245 = load ptr, ptr %l120, !tbaa !29
  %t246 = load %"compiler/source:Span", ptr %l121
  %t247 = load %"compiler/diagmsg:Msg", ptr %l126
  %t248 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t245, %"compiler/source:Span" %t246, %"compiler/diagmsg:Msg" %t247)
  store i64 %t248, ptr %l127
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s11)
  br label %bb78
bb78:
  %t249 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t251 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t249, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t251, ptr %l129
  br label %bb79
bb79:
  %t252 = load i1, ptr %l129, !tbaa !21
  br i1 %t252, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb83
bb81:
  %t253 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t255 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t253, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store i1 %t255, ptr %l132
  br label %bb82
bb82:
  %t256 = load i1, ptr %l132, !tbaa !21
  store i1 %t256, ptr %l130, !tbaa !21
  br label %bb83
bb83:
  %t257 = load i1, ptr %l130, !tbaa !21
  br i1 %t257, label %bb84, label %bb85
bb84:
  store %olang.scope zeroinitializer, ptr %s12
  %t258 = load ptr, ptr %l0, !tbaa !29
  store ptr %t258, ptr %l133, !tbaa !29
  %t259 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t259, ptr %l134
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load i32, ptr %l7, !tbaa !23
  %t264 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s12, ptr %t260, i32 %t261)
  store { i64, ptr } %t264, ptr %l137
  br label %bb86
bb85:
  br label %bb89
bb86:
  %t265 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t266 = extractvalue { i64, ptr } %t265, 0
  %t267 = extractvalue { i64, ptr } %t265, 1
  %t268 = mul i64 %t266, 1
  %t269 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t268)
  call void @llvm.memcpy.p0.p0.i64(ptr %t269, ptr %t267, i64 %t268, i1 false)
  %t270 = insertvalue { i64, ptr } undef, i64 %t266, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t269, 1
  %t272 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t275 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLayout(ptr %s12, ptr %v0, ptr %v0, { i64, ptr } %t271, { i64, ptr } %t272)
  store %"compiler/diagmsg:Msg" %t275, ptr %l140
  br label %bb87
bb87:
  %t276 = load ptr, ptr %l133, !tbaa !29
  %t277 = load %"compiler/source:Span", ptr %l134
  %t278 = load %"compiler/diagmsg:Msg", ptr %l140
  %t279 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t276, %"compiler/source:Span" %t277, %"compiler/diagmsg:Msg" %t278)
  store i64 %t279, ptr %l141
  br label %bb88
bb88:
  call void @__olang_scope_close(ptr %s12)
  br label %bb89
bb89:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load %"compiler/source:Span", ptr %l1
  %t284 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t280, %"compiler/source:Span" %t281)
  store ptr %t284, ptr %l144
  br label %bb90
bb90:
  %t285 = load ptr, ptr %l144, !tbaa !29
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t285, ptr %rv
  br label %ret
bb91:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load i32, ptr %l7, !tbaa !23
  %t291 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %t287, i32 %t288)
  store i1 %t291, ptr %l148
  br label %bb92
bb92:
  %t292 = load i1, ptr %l148, !tbaa !21
  br i1 %t292, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb96
bb94:
  %t293 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t295 = call i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %t293)
  store i1 %t295, ptr %l151
  br label %bb95
bb95:
  %t296 = load i1, ptr %l151, !tbaa !21
  store i1 %t296, ptr %l149, !tbaa !21
  br label %bb96
bb96:
  %t297 = load i1, ptr %l149, !tbaa !21
  br i1 %t297, label %bb97, label %bb98
bb97:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb98:
  br label %bb99
bb99:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load i32, ptr %l7, !tbaa !23
  %t303 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %t299, i32 %t300)
  store i1 %t303, ptr %l155
  br label %bb100
bb100:
  %t304 = load i1, ptr %l155, !tbaa !21
  br i1 %t304, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb102:
  br label %bb103
bb103:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load i32, ptr %l7, !tbaa !23
  %t310 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t306, i32 %t307)
  store i1 %t310, ptr %l159
  br label %bb104
bb104:
  %t311 = load i1, ptr %l159, !tbaa !21
  br i1 %t311, label %bb105, label %bb106
bb105:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i32, ptr %l7, !tbaa !23
  %t316 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %t312, i32 %t313)
  store i32 %t316, ptr %l163
  br label %bb107
bb106:
  store i1 false, ptr %l160, !tbaa !21
  br label %bb108
bb107:
  %t317 = load i32, ptr %l163, !range !{i32 0, i32 6}
  %t319 = trunc i64 2 to i32
  %t320 = icmp eq i32 %t317, %t319
  store i1 %t320, ptr %l160, !tbaa !21
  br label %bb108
bb108:
  %t322 = load i1, ptr %l160, !tbaa !21
  br i1 %t322, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l167, !tbaa !29
  %t325 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t325, ptr %l168
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l7, !tbaa !23
  %t330 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s3, ptr %t326, i32 %t327)
  store { i64, ptr } %t330, ptr %l171
  br label %bb112
bb112:
  %t331 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t332 = extractvalue { i64, ptr } %t331, 0
  %t333 = extractvalue { i64, ptr } %t331, 1
  %t334 = mul i64 %t332, 1
  %t335 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t334)
  call void @llvm.memcpy.p0.p0.i64(ptr %t335, ptr %t333, i64 %t334, i1 false)
  %t336 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t337 = insertvalue { i64, ptr } %t336, ptr %t335, 1
  %t338 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t341 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %s3, ptr %v0, ptr %v0, { i64, ptr } %t337, { i64, ptr } %t338)
  store %"compiler/diagmsg:Msg" %t341, ptr %l174
  br label %bb113
bb113:
  %t342 = load ptr, ptr %l167, !tbaa !29
  %t343 = load %"compiler/source:Span", ptr %l168
  %t344 = load %"compiler/diagmsg:Msg", ptr %l174
  %t345 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t342, %"compiler/source:Span" %t343, %"compiler/diagmsg:Msg" %t344)
  store i64 %t345, ptr %l175
  br label %bb114
bb114:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t347 = load %"compiler/source:Span", ptr %l1
  %t350 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t346, %"compiler/source:Span" %t347)
  store ptr %t350, ptr %l178
  br label %bb115
bb115:
  %t351 = load ptr, ptr %l178, !tbaa !29
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t351, ptr %rv
  br label %ret
bb116:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l3, !tbaa !29
  %t357 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %t353, ptr %t354)
  store i32 %t357, ptr %l182
  br label %bb117
bb117:
  %t358 = load i32, ptr %l182, !tbaa !23
  store i32 %t358, ptr %l9, !tbaa !23
  %t359 = load i32, ptr %l9, !tbaa !23
  %t361 = icmp slt i32 %t359, 0
  br i1 %t361, label %bb118, label %bb119
bb118:
  call void @__olang_scope_close(ptr %s0)
  store ptr null, ptr %rv
  br label %ret
bb119:
  br label %bb120
bb120:
  %t364 = load i32, ptr %l9, !tbaa !23
  %t365 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t368 = icmp eq i32 %t364, %t365
  br i1 %t368, label %bb121, label %bb122
bb121:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load %"compiler/source:Span", ptr %l1
  %t374 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t370, %"compiler/source:Span" %t371)
  store ptr %t374, ptr %l191
  br label %bb123
bb122:
  br label %bb124
bb123:
  %t375 = load ptr, ptr %l191, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t375, ptr %rv
  br label %ret
bb124:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/check:Checker", ptr %t377, i32 0, i32 1
  %t380 = load ptr, ptr %t379, !tbaa !29
  %t381 = load i32, ptr %l9, !tbaa !23
  %t384 = call %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %t380, i32 %t381)
  store %"compiler/generic:Desc" %t384, ptr %l196
  br label %bb125
bb125:
  %t385 = load %"compiler/generic:Desc", ptr %l196
  store %"compiler/generic:Desc" %t385, ptr %l10
  %t386 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t388 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t386, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t388, ptr %l198
  br label %bb126
bb126:
  %t389 = load i1, ptr %l198, !tbaa !21
  br i1 %t389, label %bb127, label %bb128
bb127:
  %t390 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t391 = load i64, ptr %t390, !tbaa !24
  %t392 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t395 = icmp ne i64 %t391, %t392
  store i1 %t395, ptr %l199, !tbaa !21
  br label %bb129
bb128:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb129
bb129:
  %t397 = load i1, ptr %l199, !tbaa !21
  br i1 %t397, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s18
  %t398 = load ptr, ptr %l0, !tbaa !29
  store ptr %t398, ptr %l203, !tbaa !29
  %t399 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t399, ptr %l204
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load %"compiler/source:Span", ptr %l1
  %t404 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %s18, ptr %t400, %"compiler/source:Span" %t401)
  store { i64, ptr } %t404, ptr %l207
  br label %bb132
bb131:
  br label %bb136
bb132:
  %t405 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t405, 1
  %t407 = extractvalue { i64, ptr } %t405, 0
  %t408 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t407)
  call void @olang_textcopy(ptr %t408, ptr %t406, i64 %t407)
  %t409 = insertvalue { i64, ptr } undef, i64 %t407, 0
  %t410 = insertvalue { i64, ptr } %t409, ptr %t408, 1
  %t412 = extractvalue { i64, ptr } %t410, 0
  %t413 = extractvalue { i64, ptr } %t410, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  %t419 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %s18, ptr %v0, { i64, ptr } %t417)
  store %"compiler/diagmsg:Msg" %t419, ptr %l210
  br label %bb133
bb133:
  %t420 = load ptr, ptr %l203, !tbaa !29
  %t421 = load %"compiler/source:Span", ptr %l204
  %t422 = load %"compiler/diagmsg:Msg", ptr %l210
  %t423 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t420, %"compiler/source:Span" %t421, %"compiler/diagmsg:Msg" %t422)
  store i64 %t423, ptr %l211
  br label %bb134
bb134:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load %"compiler/source:Span", ptr %l1
  %t428 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t424, %"compiler/source:Span" %t425)
  store ptr %t428, ptr %l214
  br label %bb135
bb135:
  %t429 = load ptr, ptr %l214, !tbaa !29
  call void @__olang_scope_close(ptr %s18)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t429, ptr %rv
  br label %ret
bb136:
  %t431 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t433 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t431, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d66, i32 0, i32 1) })
  store i1 %t433, ptr %l217
  br label %bb137
bb137:
  %t434 = load i1, ptr %l217, !tbaa !21
  br i1 %t434, label %bb138, label %bb139
bb138:
  %t435 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t436 = load i64, ptr %t435, !tbaa !24
  %t437 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t440 = icmp eq i64 %t436, %t437
  store i1 %t440, ptr %l218, !tbaa !21
  br label %bb140
bb139:
  store i1 false, ptr %l218, !tbaa !21
  br label %bb140
bb140:
  %t442 = load i1, ptr %l218, !tbaa !21
  br i1 %t442, label %bb141, label %bb142
bb141:
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t444 = load %"compiler/source:Span", ptr %l1
  %t445 = load %"compiler/generic:Desc", ptr %l10
  %t449 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDefault(ptr %v0, ptr %v2, ptr %t443, %"compiler/source:Span" %t444, %"compiler/generic:Desc" %t445)
  store ptr %t449, ptr %l225
  br label %bb143
bb142:
  br label %bb144
bb143:
  %t450 = load ptr, ptr %l225, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t450, ptr %rv
  br label %ret
bb144:
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load ptr, ptr %l3, !tbaa !29
  %t454 = load i32, ptr %l4, !tbaa !23
  %t458 = call %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %t452, ptr %t453, i32 %t454)
  store %"compiler/check:reflVal" %t458, ptr %l230
  br label %bb145
bb145:
  %t459 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t459, ptr %lp11
  %t460 = load %"compiler/check:reflVal", ptr %l230
  %t461 = load ptr, ptr %lp11
  store %"compiler/check:reflVal" %t460, ptr %t461
  %t462 = load ptr, ptr %lp11
  %t463 = getelementptr %"compiler/check:reflVal", ptr %t462, i32 0, i32 0
  %t464 = load i1, ptr %t463, !tbaa !21
  br i1 %t464, label %bb146, label %bb147
bb146:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load %"compiler/source:Span", ptr %l1
  %t468 = load ptr, ptr %lp11
  %t469 = load %"compiler/check:reflVal", ptr %t468
  %t473 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v2, ptr %v2, ptr %t466, %"compiler/source:Span" %t467, %"compiler/check:reflVal" %t469)
  store ptr %t473, ptr %l235
  br label %bb148
bb147:
  br label %bb149
bb148:
  %t474 = load ptr, ptr %l235, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t474, ptr %rv
  br label %ret
bb149:
  %t476 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t477 = load i64, ptr %t476, !tbaa !24
  store i64 %t477, ptr %l12, !tbaa !24
  %t479 = load i64, ptr %l12, !tbaa !24
  %t480 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t483 = icmp eq i64 %t479, %t480
  br i1 %t483, label %bb150, label %bb151
bb150:
  br label %bb152
bb151:
  br label %bb153
bb152:
  store { i64, ptr } { i64 57, ptr getelementptr inbounds (<{ i64, [57 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb153:
  %t485 = load i64, ptr %l12, !tbaa !24
  %t486 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t489 = icmp eq i64 %t485, %t486
  br i1 %t489, label %bb154, label %bb155
bb154:
  br label %bb156
bb155:
  br label %bb157
bb156:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb157:
  %t491 = load i64, ptr %l12, !tbaa !24
  %t492 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t495 = icmp eq i64 %t491, %t492
  br i1 %t495, label %bb158, label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb161
bb160:
  store { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb161:
  %t497 = load i64, ptr %l12, !tbaa !24
  %t498 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t501 = icmp eq i64 %t497, %t498
  br i1 %t501, label %bb162, label %bb163
bb162:
  br label %bb164
bb163:
  br label %bb165
bb164:
  store { i64, ptr } { i64 123, ptr getelementptr inbounds (<{ i64, [123 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb165:
  br i1 true, label %bb166, label %bb167
bb166:
  br label %bb168
bb167:
  br label %bb169
bb168:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l238, !tbaa !27
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_6fa12bf18c08968_7f63ef0109416d3c)
  unreachable
bb170:
  %t503 = load { i64, ptr }, ptr %l238, !tbaa !27
  store { i64, ptr } %t503, ptr %l13, !tbaa !27
  %t504 = getelementptr %"compiler/generic:Desc", ptr %l10, i32 0, i32 0
  %t505 = load i64, ptr %t504, !tbaa !24
  store i64 %t505, ptr %l14, !tbaa !24
  %t507 = load i64, ptr %l14, !tbaa !24
  %t508 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescField, !tbaa !24
  %t511 = icmp eq i64 %t507, %t508
  br i1 %t511, label %bb171, label %bb172
bb171:
  br label %bb173
bb172:
  br label %bb174
bb173:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb174:
  %t513 = load i64, ptr %l14, !tbaa !24
  %t514 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescCase, !tbaa !24
  %t517 = icmp eq i64 %t513, %t514
  br i1 %t517, label %bb175, label %bb176
bb175:
  br label %bb177
bb176:
  br label %bb178
bb177:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb178:
  %t519 = load i64, ptr %l14, !tbaa !24
  %t520 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescParam, !tbaa !24
  %t523 = icmp eq i64 %t519, %t520
  br i1 %t523, label %bb179, label %bb180
bb179:
  br label %bb181
bb180:
  br label %bb182
bb181:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb182:
  %t525 = load i64, ptr %l14, !tbaa !24
  %t526 = load i64, ptr @G_2ecompiler_2fgeneric_2eDescFunc, !tbaa !24
  %t529 = icmp eq i64 %t525, %t526
  br i1 %t529, label %bb183, label %bb184
bb183:
  br label %bb185
bb184:
  br label %bb186
bb185:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb186:
  br i1 true, label %bb187, label %bb188
bb187:
  br label %bb189
bb188:
  br label %bb190
bb189:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d76, i32 0, i32 1) }, ptr %l252, !tbaa !27
  br label %bb191
bb190:
  call void @__olang_check_failed(ptr @olang_loc_366830190f407939_a82d5f1c611378ed)
  unreachable
bb191:
  %t531 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t532 = load ptr, ptr %l0, !tbaa !29
  store ptr %t532, ptr %l265, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t533, ptr %l266
  %t535 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t536 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t537 = load ptr, ptr @__olang_prog_scope
  %t538 = load ptr, ptr @__olang_prog_scope
  %t542 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %t537, ptr %v0, ptr %t538, ptr %v0, { i64, ptr } %t531, { i64, ptr } %t535, { i64, ptr } %t536)
  store %"compiler/diagmsg:Msg" %t542, ptr %l270
  br label %bb192
bb192:
  %t543 = load ptr, ptr %l265, !tbaa !29
  %t544 = load %"compiler/source:Span", ptr %l266
  %t545 = load %"compiler/diagmsg:Msg", ptr %l270
  %t546 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t543, %"compiler/source:Span" %t544, %"compiler/diagmsg:Msg" %t545)
  store i64 %t546, ptr %l271
  br label %bb193
bb193:
  %t547 = load ptr, ptr %l0, !tbaa !29
  %t548 = load %"compiler/source:Span", ptr %l1
  %t551 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t547, %"compiler/source:Span" %t548)
  store ptr %t551, ptr %l274
  br label %bb194
bb194:
  %t552 = load ptr, ptr %l274, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t552, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i1
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca i1
  %l51 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l55 = alloca i32
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i32
  %l64 = alloca ptr
  %l65 = alloca i1
  %l74 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
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
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 113}
  store i32 %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t22 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t24 = trunc i64 5 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load %"compiler/source:Span", ptr %l2
  %t31 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %s2, ptr %t27, %"compiler/source:Span" %t28)
  store { i64, ptr } %t31, ptr %l22
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %l23, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t33, 0
  store i64 %t34, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = mul i64 %t35, 1
  %t37 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  store { i64, ptr } %t39, ptr %l25, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = mul i64 %t44, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t41, ptr %t43, i64 %t45, i1 false)
  %t46 = load { i64, ptr }, ptr %l25, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  %t48 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t46, 1
  store { i32, { i64, ptr } } %t48, ptr %rv
  br label %ret
bb9:
  br label %bb51
bb10:
  %t49 = load ptr, ptr %l1, !tbaa !29
  store ptr %t49, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = icmp ne ptr %t50, null
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l27, !tbaa !29
  %t54 = load i64, ptr %t53, !range !{i64 0, i64 28}
  %t56 = icmp eq i64 %t54, 2
  store i1 %t56, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l28, !tbaa !21
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
  store i32 %t70, ptr %l37
  %t71 = icmp ne i32 %t70, 0
  br i1 %t71, label %bb17, label %ok.72, !prof !99
ok.72:
  store { i64, ptr } %t69, ptr %l36
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t73, ptr %l33, !tbaa !27
  br label %bb18
bb17:
  %t74 = load i32, ptr %l37, !tbaa !23
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
  %t85 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t85, 1
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb19:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t88 = load ptr, ptr %l39, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb20, label %bb21
bb20:
  %t91 = load ptr, ptr %l39, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 28}
  %t94 = icmp eq i64 %t92, 5
  store i1 %t94, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t95 = load i1, ptr %l40, !tbaa !21
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t98, i32 0, i32 1
  %t100 = load i32, ptr %t99, !range !{i32 0, i32 113}
  store i32 %t100, ptr %l5
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [4 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l6, !tbaa !29
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr { i64, [4 x i64] }, ptr %t108, i32 0, i32 1
  %t111 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t110, i32 0, i32 3
  %t112 = load ptr, ptr %t111
  store ptr %t112, ptr %l7, !tbaa !29
  br label %bb24
bb23:
  br label %bb34
bb24:
  %t114 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t116 = trunc i64 67 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s5
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load ptr, ptr %l6, !tbaa !29
  %t123 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %s5, ptr %t119, ptr %t120)
  %t124 = extractvalue { i32, { i64, ptr } } %t123, 1
  %t125 = extractvalue { i32, { i64, ptr } } %t123, 0
  store i32 %t125, ptr %l55
  %t126 = icmp ne i32 %t125, 0
  br i1 %t126, label %bb28, label %ok.127, !prof !99
ok.127:
  store { i64, ptr } %t124, ptr %l54
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t128 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t128, ptr %l51, !tbaa !27
  br label %bb29
bb28:
  %t129 = load i32, ptr %l55, !tbaa !23
  %t130 = lshr i32 %t129, 16
  %t131 = and i32 %t129, 65535
  %t132 = icmp eq i32 %t130, 1
  %t133 = select i1 %t132, i32 1, i32 0
  %t134 = icmp eq i32 %t129, 0
  %t135 = shl i32 %t133, 16
  %t136 = or i32 %t135, %t131
  %t137 = select i1 %t134, i32 0, i32 %t136
  call void @__olang_scope_close(ptr %s5)
  %t139 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t137, 0
  store { i32, { i64, ptr } } %t139, ptr %rv
  br label %ret
bb29:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load ptr, ptr %l7, !tbaa !29
  %t144 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflTextOf(ptr %v0, ptr %v1, ptr %s5, ptr %t140, ptr %t141)
  %t145 = extractvalue { i32, { i64, ptr } } %t144, 1
  %t146 = extractvalue { i32, { i64, ptr } } %t144, 0
  store i32 %t146, ptr %l61
  %t147 = icmp ne i32 %t146, 0
  br i1 %t147, label %bb31, label %ok.148, !prof !99
ok.148:
  store { i64, ptr } %t145, ptr %l60
  br label %bb30
bb30:
  %t149 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t149, ptr %l57, !tbaa !27
  br label %bb32
bb31:
  %t150 = load i32, ptr %l61, !tbaa !23
  %t151 = lshr i32 %t150, 16
  %t152 = and i32 %t150, 65535
  %t153 = icmp eq i32 %t151, 1
  %t154 = select i1 %t153, i32 1, i32 0
  %t155 = icmp eq i32 %t150, 0
  %t156 = shl i32 %t154, 16
  %t157 = or i32 %t156, %t152
  %t158 = select i1 %t155, i32 0, i32 %t157
  call void @__olang_scope_close(ptr %s5)
  %t160 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t158, 0
  store { i32, { i64, ptr } } %t160, ptr %rv
  br label %ret
bb32:
  %t161 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t161, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 1
  %t166 = extractvalue { i64, ptr } %t164, 0
  %t167 = add i64 %t163, %t166
  %t168 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t162, i64 %t163)
  %t169 = getelementptr i8, ptr %t168, i64 %t163
  call void @olang_textcopy(ptr %t169, ptr %t165, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t168, 1
  call void @__olang_scope_close(ptr %s5)
  %t173 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t171, 1
  store { i32, { i64, ptr } } %t173, ptr %rv
  br label %ret
bb33:
  br label %bb51
bb34:
  %t174 = load ptr, ptr %l1, !tbaa !29
  store ptr %t174, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t175 = load ptr, ptr %l64, !tbaa !29
  %t176 = icmp ne ptr %t175, null
  br i1 %t176, label %bb35, label %bb36
bb35:
  %t178 = load ptr, ptr %l64, !tbaa !29
  %t179 = load i64, ptr %t178, !range !{i64 0, i64 28}
  %t181 = icmp eq i64 %t179, 3
  store i1 %t181, ptr %l65, !tbaa !21
  br label %bb36
bb36:
  %t182 = load i1, ptr %l65, !tbaa !21
  br i1 %t182, label %bb37, label %bb38
bb37:
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr { i64, [4 x i64] }, ptr %t183, i32 0, i32 1
  %t186 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t185, i32 0, i32 1
  %t187 = load i32, ptr %t186, !range !{i32 0, i32 113}
  store i32 %t187, ptr %l8
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t191, i32 0, i32 2
  %t193 = load ptr, ptr %t192
  store ptr %t193, ptr %l9, !tbaa !29
  br label %bb39
bb38:
  br label %bb46
bb39:
  %t195 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t197 = trunc i64 104 to i32
  %t198 = icmp eq i32 %t195, %t197
  br i1 %t198, label %bb40, label %bb41
bb40:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load ptr, ptr %l9, !tbaa !29
  %t204 = call { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflRendered(ptr %v0, ptr %v1, ptr %v2, ptr %t200, ptr %t201)
  %t205 = extractvalue { i32, { i64, ptr } } %t204, 1
  %t206 = extractvalue { i32, { i64, ptr } } %t204, 0
  store i32 %t206, ptr %l78
  %t207 = icmp ne i32 %t206, 0
  br i1 %t207, label %bb43, label %ok.208, !prof !99
ok.208:
  store { i64, ptr } %t205, ptr %l77
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t209 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t209, ptr %l74, !tbaa !27
  br label %bb44
bb43:
  %t210 = load i32, ptr %l78, !tbaa !23
  %t211 = lshr i32 %t210, 16
  %t212 = and i32 %t210, 65535
  %t213 = icmp eq i32 %t211, 1
  %t214 = select i1 %t213, i32 1, i32 0
  %t215 = icmp eq i32 %t210, 0
  %t216 = shl i32 %t214, 16
  %t217 = or i32 %t216, %t212
  %t218 = select i1 %t215, i32 0, i32 %t217
  %t220 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t218, 0
  store { i32, { i64, ptr } } %t220, ptr %rv
  br label %ret
bb44:
  %t221 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t222 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t221, 1
  store { i32, { i64, ptr } } %t222, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_3ff8b815b8f08888_72cba32f0bfc98b4)
  unreachable
bb51:
  %t224 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t224, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erendered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l3 = alloca ptr
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l9 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca ptr
  %l19 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/diagmsg:Msg"
  %l21 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l26 = alloca ptr
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t8 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a2, i32 %t4)
  store ptr %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t13 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t10)
  store i32 %t13, ptr %l12
  br label %bb2
bb2:
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t15 = load i32, ptr %l12, !tbaa !23
  %t17 = icmp eq i32 %t15, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = add i32 %t23, 1
  %t28 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 %t21, i32 %t25)
  store %"compiler/source:Span" %t28, ptr %l19
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrOfNothing(ptr %v0)
  store %"compiler/diagmsg:Msg" %t29, ptr %l20
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l19
  %t32 = load %"compiler/diagmsg:Msg", ptr %l20
  %t33 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t30, %"compiler/source:Span" %t31, %"compiler/diagmsg:Msg" %t32)
  store i64 %t33, ptr %l21
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load %"compiler/source:Span", ptr %l1
  %t38 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v2, ptr %t34, %"compiler/source:Span" %t35)
  store ptr %t38, ptr %l24
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t39 = load ptr, ptr %l24, !tbaa !29
  store ptr %t39, ptr %rv
  br label %ret
bb9:
  %t40 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l25
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l26, !tbaa !29
  %t43 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t48 = add i32 %t46, 1
  %t51 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t44, i32 %t48)
  store %"compiler/source:Span" %t51, ptr %l30
  br label %bb11
bb11:
  %t52 = load %"compiler/source:Span", ptr %l30
  %t53 = load ptr, ptr %l26, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 53
  store %"compiler/source:Span" %t52, ptr %t54
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l31, !tbaa !29
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t59 = call i32 @compiler_2fcheck_2etypeOf(ptr %v2, ptr %t56)
  store i32 %t59, ptr %l34
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l31, !tbaa !29
  %t61 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %s0, ptr %t60, i32 %t61, ptr %l4, i64 0)
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l36, !tbaa !29
  %t64 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t64, ptr %l37
  br label %bb14
bb14:
  %t65 = load %"compiler/source:Span", ptr %l37
  %t66 = load ptr, ptr %l36, !tbaa !29
  %t67 = getelementptr %"compiler/check:Checker", ptr %t66, i32 0, i32 53
  store %"compiler/source:Span" %t65, ptr %t67
  %t68 = load ptr, ptr %l3, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  store ptr %t68, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolveNamed(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l10 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 103
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/check:Checker", ptr %t6, i32 0, i32 103
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %t9, ptr %a1)
  store i32 %t14, ptr %l10
  br label %bb1
bb1:
  %t15 = load i32, ptr %l10, !tbaa !23
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i1, ptr %l2, !tbaa !21
  %t20 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 103
  store i1 %t17, ptr %t20, !tbaa !21
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeep(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l4
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %l4, i64 0)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l17 = alloca i32
  %l23 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l35 = alloca i1
  %l43 = alloca i32
  %l46 = alloca i1
  %l51 = alloca i32
  %l58 = alloca i32
  %l60 = alloca i1
  %l64 = alloca i1
  %l67 = alloca ptr
  %l72 = alloca i32
  %l77 = alloca i32
  %l78 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t8 = load i32, ptr %l2, !tbaa !23
  %t12 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t6, i32 %t7, i32 %t8)
  store i1 %t12, ptr %l10
  br label %bb1
bb1:
  %t13 = load i1, ptr %l10, !tbaa !21
  br i1 %t13, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l1, !tbaa !23
  %t19 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t15, i32 %t16)
  store i32 %t19, ptr %l14
  br label %bb5
bb5:
  %t20 = load i32, ptr %l14, !tbaa !23
  store i32 %t20, ptr %l3, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load i32, ptr %l17, !tbaa !23
  store i32 %t26, ptr %l4, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/check:Checker", ptr %t27, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/generic:Program", ptr %t30, i32 0, i32 2
  %t33 = load i32, ptr %l3, !tbaa !23
  %t34 = load i32, ptr %l4, !tbaa !23
  %t38 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t32, i32 %t33, i32 %t34)
  store i1 %t38, ptr %l23
  br label %bb7
bb7:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/check:Checker", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/generic:Program", ptr %t44, i32 0, i32 2
  %t47 = load i32, ptr %l3, !tbaa !23
  %t50 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t46, i32 %t47)
  store i1 %t50, ptr %l29
  br label %bb11
bb11:
  %t51 = load i1, ptr %l29, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/check:Checker", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/generic:Program", ptr %t55, i32 0, i32 2
  %t58 = load i32, ptr %l4, !tbaa !23
  %t61 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t61, ptr %l35
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb15
bb14:
  %t62 = load i1, ptr %l35, !tbaa !21
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb15
bb15:
  %t63 = load i1, ptr %l30, !tbaa !21
  br i1 %t63, label %bb16, label %bb17
bb16:
  %t64 = load i32, ptr %l3, !tbaa !23
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = icmp eq i32 %t64, %t65
  store i1 %t68, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Checker", ptr %t70, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = getelementptr %"compiler/generic:Program", ptr %t73, i32 0, i32 2
  %t76 = load i32, ptr %l3, !tbaa !23
  %t79 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t79, ptr %l43
  br label %bb19
bb19:
  %t80 = load i32, ptr %l43, !range !{i32 0, i32 33}
  %t82 = trunc i64 19 to i32
  %t83 = icmp eq i32 %t80, %t82
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/check:Checker", ptr %t85, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l4, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l51
  br label %bb22
bb21:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb23
bb22:
  %t95 = load i32, ptr %l51, !range !{i32 0, i32 33}
  %t97 = trunc i64 19 to i32
  %t98 = icmp eq i32 %t95, %t97
  store i1 %t98, ptr %l46, !tbaa !21
  br label %bb23
bb23:
  %t100 = load i1, ptr %l46, !tbaa !21
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/check:Checker", ptr %t101, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = getelementptr %"compiler/generic:Program", ptr %t104, i32 0, i32 2
  %t107 = load i32, ptr %l4, !tbaa !23
  %t110 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t106, i32 %t107)
  store i32 %t110, ptr %l58
  br label %bb26
bb25:
  br label %bb37
bb26:
  %t111 = load i32, ptr %l58, !tbaa !23
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb27, label %bb28
bb27:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l3, !tbaa !23
  %t116 = load i32, ptr %l4, !tbaa !23
  %t120 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %t114, i32 %t115, i32 %t116)
  store i1 %t120, ptr %l64
  br label %bb29
bb28:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb30
bb29:
  %t121 = load i1, ptr %l64, !tbaa !21
  %t122 = xor i1 %t121, true
  store i1 %t122, ptr %l60, !tbaa !21
  br label %bb30
bb30:
  %t124 = load i1, ptr %l60, !tbaa !21
  br i1 %t124, label %bb31, label %bb32
bb31:
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l67, !tbaa !29
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/check:Checker", ptr %t127, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !29
  %t132 = getelementptr %"compiler/generic:Program", ptr %t130, i32 0, i32 2
  %t133 = load i32, ptr %l3, !tbaa !23
  %t136 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t132, i32 %t133)
  store i32 %t136, ptr %l72
  br label %bb34
bb34:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/check:Checker", ptr %t137, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = getelementptr %"compiler/generic:Program", ptr %t140, i32 0, i32 2
  %t143 = load i32, ptr %l4, !tbaa !23
  %t146 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t142, i32 %t143)
  store i32 %t146, ptr %l77
  br label %bb35
bb35:
  %t147 = load ptr, ptr %l67, !tbaa !29
  %t148 = load i32, ptr %l72, !tbaa !23
  %t149 = load i32, ptr %l77, !tbaa !23
  %t150 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameRepr(ptr %v0, ptr %t147, i32 %t148, i32 %t149)
  store i1 %t150, ptr %l78
  br label %bb36
bb36:
  %t151 = load i1, ptr %l78, !tbaa !21
  store i1 %t151, ptr %rv
  br label %ret
bb37:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, %"compiler/check:seqOf" } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eseqType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i32
  %l11 = alloca i32
  %l19 = alloca i32
  %l20 = alloca %"compiler/check:seqOf"
  %l23 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i1
  %l41 = alloca i32
  %l42 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l47 = alloca %"compiler/check:seqOf"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/check:seqOf" }
  store ptr %a0, ptr %l0
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
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i32, ptr %l11, !tbaa !23
  store i32 %t12, ptr %l3, !tbaa !23
  %t13 = load i32, ptr %l3, !tbaa !23
  %t14 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t17 = icmp ne i32 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/check:Checker", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t24 = getelementptr %"compiler/generic:Program", ptr %t22, i32 0, i32 2
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t24, i32 %t25)
  store i32 %t28, ptr %l19
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t29 = load i32, ptr %l19, !tbaa !23
  %t30 = call %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %s1, i32 %t29, i64 -1, i64 -1, i64 -1)
  store %"compiler/check:seqOf" %t30, ptr %l20
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t31 = load %"compiler/check:seqOf", ptr %l20
  %t32 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, %"compiler/check:seqOf" %t31, 1
  store { i32, %"compiler/check:seqOf" } %t32, ptr %rv
  br label %ret
bb7:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l2, !tbaa !23
  %t37 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t33, i32 %t34)
  store i1 %t37, ptr %l23
  br label %bb8
bb8:
  %t38 = load i1, ptr %l23, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/check:seqOf" } %t42, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load i32, ptr %l2, !tbaa !23
  %t47 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t43, i32 %t44, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, i64 1)
  store i64 %t47, ptr %l28
  br label %bb12
bb12:
  %t48 = load i64, ptr %l28, !tbaa !24
  store i64 %t48, ptr %l4, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i32, ptr %l2, !tbaa !23
  %t53 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t49, i32 %t50, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d78, i32 0, i32 1) }, i64 0)
  store i64 %t53, ptr %l31
  br label %bb13
bb13:
  %t54 = load i64, ptr %l31, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  br i1 %t57, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb16
bb15:
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = icmp slt i64 %t59, 0
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb16
bb16:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t65 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/check:seqOf" } %t65, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l4, !tbaa !24
  %t68 = load i32, ptr %l2, !tbaa !23
  %t72 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %t66, i64 %t67, i32 %t68)
  store i32 %t72, ptr %l41
  br label %bb20
bb20:
  %t73 = load i64, ptr %l4, !tbaa !24
  store i64 %t73, ptr %l42, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  store i64 %t74, ptr %l43, !tbaa !24
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l2, !tbaa !23
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s0, ptr %t75, i32 %t76, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d79, i32 0, i32 1) }, i64 2)
  store i64 %t79, ptr %l46
  br label %bb21
bb21:
  %t80 = load i32, ptr %l41, !tbaa !23
  %t81 = load i64, ptr %l42, !tbaa !24
  %t82 = load i64, ptr %l43, !tbaa !24
  %t83 = load i64, ptr %l46, !tbaa !24
  %t84 = call %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %s0, i32 %t80, i64 %t81, i64 %t82, i64 %t83)
  store %"compiler/check:seqOf" %t84, ptr %l47
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load %"compiler/check:seqOf", ptr %l47
  %t86 = insertvalue { i32, %"compiler/check:seqOf" } zeroinitializer, %"compiler/check:seqOf" %t85, 1
  store { i32, %"compiler/check:seqOf" } %t86, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/check:seqOf" }, ptr %rv
  ret { i32, %"compiler/check:seqOf" } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetMeet(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i32
  %l22 = alloca i64
  %l24 = alloca i64
  %l29 = alloca i32
  %l34 = alloca i32
  %l39 = alloca i32
  %l41 = alloca ptr
  %l46 = alloca i32
  %l51 = alloca i64
  %l56 = alloca i64
  %l58 = alloca i32
  %l68 = alloca ptr
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  store ptr %a1, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t5 = load i64, ptr %l5, !tbaa !24
  store i64 %t5, ptr %l13, !tbaa !24
  %t6 = load ptr, ptr %l4, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t6)
  store i64 %t8, ptr %l15
  br label %bb3
bb3:
  %t9 = load i64, ptr %l13, !tbaa !24
  %t10 = load i64, ptr %l15, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  br label %bb30
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l4, !tbaa !29
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t15, i64 %t16)
  store i32 %t19, ptr %l20
  br label %bb7
bb7:
  %t20 = load i32, ptr %l20, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t23 = load i64, ptr %l8, !tbaa !24
  store i64 %t23, ptr %l22, !tbaa !24
  %t24 = load ptr, ptr %l7, !tbaa !29
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t24)
  store i64 %t26, ptr %l24
  br label %bb9
bb9:
  %t27 = load i64, ptr %l22, !tbaa !24
  %t28 = load i64, ptr %l24, !tbaa !24
  %t29 = icmp slt i64 %t27, %t28
  %t31 = xor i1 %t29, true
  br i1 %t31, label %bb10, label %bb11
bb10:
  br label %bb28
bb11:
  br label %bb12
bb12:
  %t33 = load ptr, ptr %l7, !tbaa !29
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %t33, i64 %t34)
  store i32 %t37, ptr %l29
  br label %bb13
bb13:
  %t38 = load i32, ptr %l29, !tbaa !23
  store i32 %t38, ptr %l9, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/check:Checker", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/generic:Program", ptr %t42, i32 0, i32 2
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t48, ptr %l34
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l9, !tbaa !23
  %t58 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l39
  br label %bb15
bb15:
  %t59 = load i32, ptr %l34, !tbaa !23
  %t60 = load i32, ptr %l39, !tbaa !23
  %t61 = icmp ne i32 %t59, %t60
  br i1 %t61, label %bb16, label %bb17
bb16:
  br label %bb27
bb17:
  br label %bb18
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l41, !tbaa !29
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/check:Checker", ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = getelementptr %"compiler/generic:Program", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %l6, !tbaa !23
  %t73 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %t69, i32 %t70)
  store i32 %t73, ptr %l46
  br label %bb19
bb19:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/check:Checker", ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l6, !tbaa !23
  %t83 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t79, i32 %t80)
  store i64 %t83, ptr %l51
  br label %bb20
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 1
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  %t90 = load i32, ptr %l9, !tbaa !23
  %t93 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %t89, i32 %t90)
  store i64 %t93, ptr %l56
  br label %bb21
bb21:
  %t94 = load i64, ptr %l51, !tbaa !65
  %t95 = load i64, ptr %l56, !tbaa !65
  %t96 = and i64 %t94, %t95
  %t97 = load ptr, ptr %l41, !tbaa !29
  %t98 = load i32, ptr %l46, !tbaa !23
  %t100 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %t97, i32 %t98, i64 %t96)
  store i32 %t100, ptr %l58
  br label %bb22
bb22:
  %t101 = load i32, ptr %l58, !tbaa !23
  store i32 %t101, ptr %l10, !tbaa !23
  %t102 = load i32, ptr %l10, !tbaa !23
  %t103 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t106 = icmp ne i32 %t102, %t103
  br i1 %t106, label %bb23, label %bb24
bb23:
  %t108 = load i32, ptr %l10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %s0, ptr %l3, i32 %t108)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l8, !tbaa !24
  br label %bb8
bb28:
  br label %bb29
bb29:
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l5, !tbaa !24
  br label %bb2
bb30:
  %t119 = load ptr, ptr %l0, !tbaa !29
  store ptr %t119, ptr %l68, !tbaa !29
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t123 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %s0, ptr %s0, ptr %t120, ptr %l3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t123, ptr %l71
  br label %bb31
bb31:
  %t124 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  %t125 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %t125
  %t126 = load ptr, ptr %l68, !tbaa !29
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %s0, ptr %v3, ptr %t126, ptr %t125)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l73
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t129 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
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
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d80, i32 0, i32 1) }, ptr %l12, !tbaa !27
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
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %l2, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
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

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esettleFixed(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/check:Ask"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"compiler/check:AssertAsk"
  %l18 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l46 = alloca %"compiler/check:Ask"
  %l50 = alloca i1
  %l66 = alloca i64
  %l70 = alloca i64
  %l73 = alloca i64
  %l94 = alloca %"compiler/check:AssertAsk"
  %l98 = alloca i1
  %l103 = alloca %"compiler/check:AssertAsk"
  %t154 = alloca %"compiler/check:AssertAsk", align 8
  %t175 = alloca %"compiler/check:AssertAsk", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 113
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l18
  br label %bb1
bb1:
  %t6 = load i64, ptr %l18, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l25, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l25, !tbaa !24
  store i64 %t33, ptr %l22, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb20
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 113
  %t59 = call %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v0, ptr %t55, i64 %t51)
  store %"compiler/check:Ask" %t59, ptr %l46
  br label %bb12
bb12:
  %t60 = load %"compiler/check:Ask", ptr %l46
  store %"compiler/check:Ask" %t60, ptr %l8
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 4
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 5
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t69 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v0, ptr %t61, i64 %t63, { i64, ptr } %t65)
  store i1 %t69, ptr %l50
  br label %bb13
bb13:
  %t70 = load i1, ptr %l50, !tbaa !21
  br i1 %t70, label %bb14, label %bb15
bb14:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/check:Ask", ptr %l8, i32 0, i32 3
  %t73 = load ptr, ptr %t72, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v0, ptr %t71, ptr %t73)
  br label %bb16
bb15:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 113
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load %"compiler/check:Ask", ptr %l8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eSetAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v0, ptr %t78, i64 %t79, %"compiler/check:Ask" %t80)
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l1, !tbaa !24
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t88 = load i64, ptr %l6, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l6, !tbaa !24
  br label %bb8
bb20:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/check:Checker", ptr %t92, i32 0, i32 113
  %t95 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eTruncate_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %t94, i64 %t95)
  br label %bb21
bb21:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/check:Checker", ptr %t98, i32 0, i32 115
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l66
  br label %bb22
bb22:
  %t103 = load i64, ptr %l66, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb23, label %bb24
bb23:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb28
bb25:
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l11, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l11, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l73, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb27
bb27:
  %t130 = load i64, ptr %l73, !tbaa !24
  store i64 %t130, ptr %l70, !tbaa !24
  br label %bb28
bb28:
  %t131 = load i64, ptr %l70, !tbaa !24
  store i64 %t131, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l13, !tbaa !24
  %t133 = load i64, ptr %l12, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb30, label %bb31
bb30:
  br label %bb40
bb31:
  br label %bb32
bb32:
  %t140 = load i64, ptr %l9, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l11, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/check:Checker", ptr %t150, i32 0, i32 115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %t154, ptr %v0, ptr %v0, ptr %t152, i64 %t148)
  call void @llvm.memmove.p0.p0.i64(ptr %l94, ptr %t154, i64 184, i1 false)
  br label %bb33
bb33:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l94, i64 184, i1 false)
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/check:AssertAsk", ptr %l15, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = getelementptr %"compiler/check:AssertAsk", ptr %l15, i32 0, i32 10
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  %t165 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v0, ptr %t157, i64 %t159, { i64, ptr } %t161)
  store i1 %t165, ptr %l98
  br label %bb34
bb34:
  %t166 = load i1, ptr %l98, !tbaa !21
  %t167 = xor i1 %t166, true
  br i1 %t167, label %bb35, label %bb36
bb35:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/check:Checker", ptr %t169, i32 0, i32 115
  %t172 = load i64, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %l15, i64 184, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t175, ptr %l103, i64 184, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eSetA_H2f2d9e3b51ec05f25dc2320ca6b31566(ptr %v0, ptr %v0, ptr %t171, i64 %t172, ptr %t175)
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t176 = load i64, ptr %l1, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l1, !tbaa !24
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t180 = load i64, ptr %l13, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l13, !tbaa !24
  br label %bb29
bb40:
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/check:Checker", ptr %t184, i32 0, i32 115
  %t187 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eTrun_Heefffe1e944651b1941f34d83e014b00(ptr %v0, ptr %t186, i64 %t187)
  br label %bb41
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l27 = alloca i1
  %l33 = alloca %"compiler/check:litv"
  %l35 = alloca i1
  %l39 = alloca %"compiler/check:litv"
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca %"compiler/check:litv"
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l63 = alloca %"compiler/check:litv"
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
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
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l14
  br label %bb6
bb6:
  %t21 = load i1, ptr %l14, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t23 = load ptr, ptr %l15, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l15, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 28}
  %t29 = icmp eq i64 %t27, 5
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l16, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 113}
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
  br label %bb41
bb12:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t51 = trunc i64 105 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb15
bb14:
  %t54 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t56 = trunc i64 106 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t59 = load i1, ptr %l27, !tbaa !21
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t65 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  store %"compiler/check:litv" %t65, ptr %l33
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t66 = getelementptr %"compiler/check:litv", ptr %l33, i32 0, i32 0
  %t67 = load i1, ptr %t66, !tbaa !21
  br i1 %t67, label %bb19, label %bb20
bb19:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t74 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t69, ptr %t70)
  store %"compiler/check:litv" %t74, ptr %l39
  br label %bb21
bb20:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb22
bb21:
  %t75 = getelementptr %"compiler/check:litv", ptr %l39, i32 0, i32 0
  %t76 = load i1, ptr %t75, !tbaa !21
  %t78 = xor i1 %t76, true
  store i1 %t78, ptr %l35, !tbaa !21
  br label %bb22
bb22:
  %t80 = load i1, ptr %l35, !tbaa !21
  store i1 %t80, ptr %rv
  br label %ret
bb23:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t85 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  store i1 %t85, ptr %l44
  br label %bb24
bb24:
  %t86 = load i1, ptr %l44, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l5, !tbaa !29
  %t92 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  store %"compiler/check:litv" %t92, ptr %l49
  br label %bb27
bb26:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb32
bb27:
  %t93 = getelementptr %"compiler/check:litv", ptr %l49, i32 0, i32 0
  %t94 = load i1, ptr %t93, !tbaa !21
  br i1 %t94, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb31
bb29:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l5, !tbaa !29
  %t100 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t96, ptr %t97)
  store i1 %t100, ptr %l54
  br label %bb30
bb30:
  %t101 = load i1, ptr %l54, !tbaa !21
  store i1 %t101, ptr %l51, !tbaa !21
  br label %bb31
bb31:
  %t102 = load i1, ptr %l51, !tbaa !21
  store i1 %t102, ptr %l45, !tbaa !21
  br label %bb32
bb32:
  %t103 = load i1, ptr %l45, !tbaa !21
  br i1 %t103, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb40
bb34:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t108 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eshiftLit(ptr %v0, ptr %v1, ptr %t104, ptr %t105)
  store i1 %t108, ptr %l58
  br label %bb35
bb35:
  %t109 = load i1, ptr %l58, !tbaa !21
  br i1 %t109, label %bb36, label %bb37
bb36:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l4, !tbaa !29
  %t115 = call %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %t110, ptr %t111)
  store %"compiler/check:litv" %t115, ptr %l63
  br label %bb38
bb37:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb39
bb38:
  %t116 = getelementptr %"compiler/check:litv", ptr %l63, i32 0, i32 0
  %t117 = load i1, ptr %t116, !tbaa !21
  store i1 %t117, ptr %l59, !tbaa !21
  br label %bb39
bb39:
  %t119 = load i1, ptr %l59, !tbaa !21
  store i1 %t119, ptr %l55, !tbaa !21
  br label %bb40
bb40:
  %t120 = load i1, ptr %l55, !tbaa !21
  store i1 %t120, ptr %rv
  br label %ret
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i1 false, ptr %rv
  br label %ret
bb45:
  call void @__olang_check_failed(ptr @olang_loc_5ec272a16da13ce8_6a23c064ecfaca54)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l28 = alloca i1
  %l31 = alloca ptr
  %l34 = alloca i32
  %l37 = alloca i1
  %l38 = alloca i64
  %l44 = alloca i64
  %l47 = alloca i64
  %l67 = alloca i1
  %l70 = alloca ptr
  %l76 = alloca i64
  %l79 = alloca %"compiler/source:Span"
  %l84 = alloca i32
  %l87 = alloca ptr
  %l89 = alloca ptr
  %l96 = alloca i32
  %l101 = alloca i32
  %l110 = alloca ptr
  %l113 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca %"compiler/source:Span"
  %l119 = alloca { i64, ptr }
  %l121 = alloca %"compiler/diagmsg:Msg"
  %l122 = alloca i64
  %l125 = alloca ptr
  %l128 = alloca i64
  %l132 = alloca i64
  %l134 = alloca ptr
  %l139 = alloca ptr
  %l140 = alloca ptr
  %l141 = alloca %"compiler/source:Span"
  %l142 = alloca ptr
  %l143 = alloca i32
  %l147 = alloca { i64, ptr }
  %l149 = alloca ptr
  %l152 = alloca i64
  %l158 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca %"compiler/source:Span"
  %l162 = alloca i32
  %l165 = alloca { i64, ptr }
  %l167 = alloca %"compiler/diagmsg:Msg"
  %l168 = alloca i64
  %l171 = alloca ptr
  %l174 = alloca i64
  %l177 = alloca i1
  %l184 = alloca ptr
  %l187 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca %"compiler/source:Span"
  %l191 = alloca i32
  %l192 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca ptr
  %l195 = alloca ptr
  %l197 = alloca i32
  %l198 = alloca ptr
  %l200 = alloca %"compiler/source:Span"
  %l201 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca %"compiler/source:Span"
  %l206 = alloca %"compiler/source:Span"
  %l207 = alloca i64
  %l210 = alloca ptr
  %l212 = alloca ptr
  %l213 = alloca ptr
  %l216 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l223 = alloca ptr
  %l225 = alloca ptr
  %l226 = alloca ptr
  %l227 = alloca ptr
  %l229 = alloca i32
  %l230 = alloca ptr
  %l232 = alloca %"compiler/source:Span"
  %l233 = alloca ptr
  %l237 = alloca i64
  %l242 = alloca ptr
  %l246 = alloca ptr
  %l247 = alloca %"compiler/source:Span"
  %l248 = alloca %"compiler/source:Span"
  %l249 = alloca i64
  %l252 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca ptr
  %l258 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l266 = alloca ptr
  %l269 = alloca ptr
  %l270 = alloca %"compiler/source:Span"
  %l272 = alloca i32
  %l273 = alloca ptr
  %l275 = alloca ptr
  %l276 = alloca ptr
  %l278 = alloca i32
  %l279 = alloca ptr
  %l283 = alloca ptr
  %l284 = alloca %"compiler/source:Span"
  %l286 = alloca i32
  %l287 = alloca i32
  %l288 = alloca %"compiler/source:Span"
  %l294 = alloca i32
  %l298 = alloca ptr
  %l300 = alloca ptr
  %l301 = alloca ptr
  %l303 = alloca i32
  %l304 = alloca ptr
  %l308 = alloca i1
  %l309 = alloca i32
  %l313 = alloca ptr
  %l318 = alloca i32
  %l321 = alloca i32
  %l326 = alloca i32
  %l327 = alloca i32
  %l328 = alloca %"compiler/source:Span"
  %l334 = alloca i32
  %l335 = alloca ptr
  %l338 = alloca ptr
  %l344 = alloca %"compiler/typed:Slice"
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca ptr
  %t133 = alloca { i64, [4 x i64] }, align 8
  %t572 = alloca { i64, [5 x i64] }, align 8
  %t680 = alloca { i64, [5 x i64] }, align 8
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
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load %"compiler/source:Span", ptr %l1
  %t7 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %t1, ptr %t2, %"compiler/source:Span" %t3)
  store i1 %t7, ptr %l28
  br label %bb1
bb1:
  %t8 = load i1, ptr %l28, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load %"compiler/source:Span", ptr %l1
  %t13 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t9, %"compiler/source:Span" %t10)
  store ptr %t13, ptr %l31
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t14 = load ptr, ptr %l31, !tbaa !29
  store ptr %t14, ptr %rv
  br label %ret
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  %t17 = load ptr, ptr %l6, !tbaa !29
  %t19 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t17)
  store i32 %t19, ptr %l34
  br label %bb6
bb6:
  %t20 = load i32, ptr %l34, !tbaa !23
  store i32 %t20, ptr %l7, !tbaa !23
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t25 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l37
  br label %bb7
bb7:
  %t26 = load i1, ptr %l37, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t27 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  store i64 %t27, ptr %l38, !tbaa !24
  br label %bb10
bb9:
  %t29 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  store i64 %t29, ptr %l38, !tbaa !24
  br label %bb10
bb10:
  %t31 = load i64, ptr %l38, !tbaa !24
  store i64 %t31, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  store i64 4, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t32 = load i64, ptr %l10, !tbaa !24
  %t33 = load i64, ptr %l9, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load i64, ptr %l11, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb16
bb13:
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l9, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l11, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l47, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb15
bb15:
  %t58 = load i64, ptr %l47, !tbaa !24
  store i64 %t58, ptr %l44, !tbaa !24
  br label %bb16
bb16:
  %t59 = load i64, ptr %l44, !tbaa !24
  store i64 %t59, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t60 = load i64, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l12, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb18, label %bb19
bb18:
  br label %bb31
bb19:
  br label %bb20
bb20:
  %t68 = load i64, ptr %l9, !tbaa !24
  %t69 = load i64, ptr %l13, !tbaa !24
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l14, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l7, !tbaa !23
  %t82 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t78, i32 %t79)
  store i1 %t82, ptr %l67
  br label %bb21
bb21:
  %t83 = load i1, ptr %l67, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l6, !tbaa !29
  store ptr %t87, ptr %l70, !tbaa !29
  %t88 = load ptr, ptr %l70, !tbaa !29
  %t89 = call ptr @__olang_scope_of(ptr %t88, ptr null)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t94 = load ptr, ptr %l70, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %t92, ptr %t86, ptr %t94)
  br label %bb25
bb25:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/check:Checker", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/generic:Program", ptr %t98, i32 0, i32 2
  %t101 = load i32, ptr %l7, !tbaa !23
  %t104 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t100, i32 %t101)
  store i64 %t104, ptr %l76
  br label %bb26
bb26:
  %t105 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t106 = load i64, ptr %l76, !tbaa !24
  %t108 = and i64 %t106, %t105
  store i64 %t108, ptr %l8, !tbaa !24
  %t110 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t110, ptr %l79
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/check:Checker", ptr %t111, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/generic:Program", ptr %t114, i32 0, i32 2
  %t117 = load i32, ptr %l7, !tbaa !23
  %t120 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t116, i32 %t117)
  store i32 %t120, ptr %l84
  br label %bb27
bb27:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/source:Span", ptr %l1
  %t123 = load ptr, ptr %l6, !tbaa !29
  store ptr %t123, ptr %l87, !tbaa !29
  %t124 = load ptr, ptr %l87, !tbaa !29
  %t125 = call ptr @__olang_scope_of(ptr %t124, ptr null)
  %t126 = ptrtoint ptr %t125 to i64
  %t128 = inttoptr i64 %t126 to ptr
  %t131 = load ptr, ptr %l87, !tbaa !29
  %t132 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t128, ptr %v4, ptr %t121, %"compiler/source:Span" %t122, ptr %t131)
  store ptr %t132, ptr %l89
  br label %bb28
bb28:
  store { i64, [4 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 0
  store i64 2, ptr %t134
  %t135 = load %"compiler/source:Span", ptr %l79
  %t136 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t135, 0
  %t137 = load i32, ptr %l84, !tbaa !23
  %t138 = insertvalue { %"compiler/source:Span", i32, ptr } %t136, i32 %t137, 1
  %t139 = load ptr, ptr %l89, !tbaa !29
  %t140 = insertvalue { %"compiler/source:Span", i32, ptr } %t138, ptr %t139, 2
  %t141 = getelementptr { i64, [4 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t140, ptr %t141
  %t142 = load { i64, [4 x i64] }, ptr %t133
  %t144 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 40, i64 8)
  store { i64, [4 x i64] } %t142, ptr %t144
  store ptr %t144, ptr %l6, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/check:Checker", ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = getelementptr %"compiler/generic:Program", ptr %t149, i32 0, i32 2
  %t152 = load i32, ptr %l7, !tbaa !23
  %t155 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t151, i32 %t152)
  store i32 %t155, ptr %l96
  br label %bb29
bb29:
  %t156 = load i32, ptr %l96, !tbaa !23
  store i32 %t156, ptr %l7, !tbaa !23
  br label %bb30
bb30:
  %t157 = load i64, ptr %l13, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l13, !tbaa !24
  br label %bb17
bb31:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i32, ptr %l7, !tbaa !23
  %t165 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %t161, i32 %t162)
  store i32 %t165, ptr %l101
  br label %bb32
bb32:
  %t166 = load i32, ptr %l101, !tbaa !23
  store i32 %t166, ptr %l15, !tbaa !23
  %t167 = load i32, ptr %l15, !tbaa !23
  %t168 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t171 = icmp eq i32 %t167, %t168
  br i1 %t171, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t173 = load i32, ptr %l7, !tbaa !23
  %t174 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t177 = icmp eq i32 %t173, %t174
  br i1 %t177, label %bb35, label %bb36
bb34:
  br label %bb124
bb35:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load %"compiler/source:Span", ptr %l1
  %t183 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t179, %"compiler/source:Span" %t180)
  store ptr %t183, ptr %l110
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s6)
  %t184 = load ptr, ptr %l110, !tbaa !29
  store ptr %t184, ptr %rv
  br label %ret
bb38:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l7, !tbaa !23
  %t189 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t185, i32 %t186)
  store i1 %t189, ptr %l113
  br label %bb39
bb39:
  %t190 = load i1, ptr %l113, !tbaa !21
  %t191 = xor i1 %t190, true
  br i1 %t191, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s8
  %t193 = load ptr, ptr %l0, !tbaa !29
  store ptr %t193, ptr %l115, !tbaa !29
  %t194 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t194, ptr %l116
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l7, !tbaa !23
  %t199 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s8, ptr %t195, i32 %t196)
  store { i64, ptr } %t199, ptr %l119
  br label %bb42
bb41:
  br label %bb46
bb42:
  %t200 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t200, 0
  %t202 = extractvalue { i64, ptr } %t200, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t208 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %s8, ptr %v0, { i64, ptr } %t206)
  store %"compiler/diagmsg:Msg" %t208, ptr %l121
  br label %bb43
bb43:
  %t209 = load ptr, ptr %l115, !tbaa !29
  %t210 = load %"compiler/source:Span", ptr %l116
  %t211 = load %"compiler/diagmsg:Msg", ptr %l121
  %t212 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v0, ptr %t209, %"compiler/source:Span" %t210, %"compiler/diagmsg:Msg" %t211)
  store i64 %t212, ptr %l122
  br label %bb44
bb44:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load %"compiler/source:Span", ptr %l1
  %t217 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t213, %"compiler/source:Span" %t214)
  store ptr %t217, ptr %l125
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  %t218 = load ptr, ptr %l125, !tbaa !29
  store ptr %t218, ptr %rv
  br label %ret
bb46:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i32, ptr %l7, !tbaa !23
  %t223 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisMethod(ptr %v0, ptr %t219, i32 %t220)
  store i64 %t223, ptr %l128
  br label %bb47
bb47:
  %t224 = load i64, ptr %l128, !tbaa !24
  %t225 = icmp sge i64 %t224, 0
  br i1 %t225, label %bb48, label %bb49
bb48:
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/check:Checker", ptr %t227, i32 0, i32 43
  %t231 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t229)
  store i64 %t231, ptr %l132
  br label %bb50
bb49:
  br label %bb55
bb50:
  %t232 = load i64, ptr %l132, !tbaa !24
  store i64 %t232, ptr %l16, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/check:Checker", ptr %t233, i32 0, i32 43
  store ptr %t235, ptr %l134, !tbaa !29
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load %"compiler/source:Span", ptr %l1
  %t238 = load ptr, ptr %l3, !tbaa !29
  %t239 = load ptr, ptr %l4, !tbaa !29
  %t244 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisRange(ptr %v0, ptr %v2, ptr %v3, ptr %v0, ptr %t236, %"compiler/source:Span" %t237, ptr %t238, ptr %t239)
  store ptr %t244, ptr %l139
  br label %bb51
bb51:
  %t245 = load ptr, ptr %l134, !tbaa !29
  %t246 = load ptr, ptr %l139, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t245, ptr %t246)
  br label %bb52
bb52:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l140, !tbaa !29
  %t248 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t248, ptr %l141
  %t249 = load ptr, ptr %l6, !tbaa !29
  store ptr %t249, ptr %l142, !tbaa !29
  %t250 = load i32, ptr %l7, !tbaa !23
  store i32 %t250, ptr %l143, !tbaa !23
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/check:Checker", ptr %t251, i32 0, i32 43
  %t254 = load i64, ptr %l16, !tbaa !24
  %t257 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t253, i64 %t254)
  store { i64, ptr } %t257, ptr %l147
  br label %bb53
bb53:
  %t258 = load ptr, ptr %l142, !tbaa !29
  %t259 = call ptr @__olang_scope_of(ptr %t258, ptr null)
  %t260 = ptrtoint ptr %t259 to i64
  %t262 = inttoptr i64 %t260 to ptr
  %t263 = load ptr, ptr %l140, !tbaa !29
  %t264 = load %"compiler/source:Span", ptr %l141
  %t265 = load ptr, ptr %l142, !tbaa !29
  %t266 = load i32, ptr %l143, !tbaa !23
  %t267 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t268 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisCall(ptr %v0, ptr %t262, ptr %v0, ptr %v4, ptr %t263, %"compiler/source:Span" %t264, ptr %t265, i32 %t266, { i64, ptr } %t267)
  store ptr %t268, ptr %l149
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s6)
  %t269 = load ptr, ptr %l149, !tbaa !29
  store ptr %t269, ptr %rv
  br label %ret
bb55:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load i32, ptr %l7, !tbaa !23
  %t274 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s6, ptr %t270, i32 %t271, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d82, i32 0, i32 1) }, i64 2)
  store i64 %t274, ptr %l152
  br label %bb56
bb56:
  %t275 = load i64, ptr %l152, !tbaa !24
  store i64 %t275, ptr %l17, !tbaa !24
  %t276 = load i64, ptr %l17, !tbaa !24
  %t278 = icmp slt i64 %t276, 0
  br i1 %t278, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load i32, ptr %l7, !tbaa !23
  %t282 = load %"compiler/source:Span", ptr %l1
  %t286 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %s10, ptr %s10, ptr %t280, i32 %t281, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d83, i32 0, i32 1) }, %"compiler/source:Span" %t282, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d84, i32 0, i32 1) }, i64 2, i1 false)
  store i1 %t286, ptr %l158
  br label %bb59
bb58:
  br label %bb67
bb59:
  %t287 = load i1, ptr %l158, !tbaa !21
  %t288 = xor i1 %t287, true
  br i1 %t288, label %bb60, label %bb61
bb60:
  store %olang.scope zeroinitializer, ptr %s11
  %t290 = load ptr, ptr %l0, !tbaa !29
  store ptr %t290, ptr %l160, !tbaa !29
  %t291 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t291, ptr %l161
  %t292 = load i32, ptr %l7, !tbaa !23
  store i32 %t292, ptr %l162, !tbaa !23
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load i32, ptr %l7, !tbaa !23
  %t297 = call { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %s11, ptr %t293, i32 %t294)
  store { i64, ptr } %t297, ptr %l165
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t298 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t299 = extractvalue { i64, ptr } %t298, 0
  %t300 = extractvalue { i64, ptr } %t298, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t306 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %s11, ptr %v0, { i64, ptr } %t304)
  store %"compiler/diagmsg:Msg" %t306, ptr %l167
  br label %bb63
bb63:
  %t307 = load ptr, ptr %l160, !tbaa !29
  %t308 = load %"compiler/source:Span", ptr %l161
  %t309 = load i32, ptr %l162, !tbaa !23
  %t310 = load %"compiler/diagmsg:Msg", ptr %l167
  %t311 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eneedErr(ptr %v0, ptr %s11, ptr %v0, ptr %t307, %"compiler/source:Span" %t308, i32 %t309, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d85, i32 0, i32 1) }, %"compiler/diagmsg:Msg" %t310)
  store i64 %t311, ptr %l168
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s11)
  br label %bb65
bb65:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load %"compiler/source:Span", ptr %l1
  %t316 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t312, %"compiler/source:Span" %t313)
  store ptr %t316, ptr %l171
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s6)
  %t317 = load ptr, ptr %l171, !tbaa !29
  store ptr %t317, ptr %rv
  br label %ret
bb67:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load i32, ptr %l7, !tbaa !23
  %t322 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %s6, ptr %t318, i32 %t319, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d86, i32 0, i32 1) }, i64 0)
  store i64 %t322, ptr %l174
  br label %bb68
bb68:
  %t323 = load i64, ptr %l174, !tbaa !24
  store i64 %t323, ptr %l18, !tbaa !24
  %t324 = load ptr, ptr %l4, !tbaa !29
  %t326 = icmp eq ptr %t324, null
  br i1 %t326, label %bb69, label %bb70
bb69:
  %t328 = load i64, ptr %l18, !tbaa !24
  %t330 = icmp slt i64 %t328, 0
  store i1 %t330, ptr %l177, !tbaa !21
  br label %bb71
bb70:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb71
bb71:
  %t332 = load i1, ptr %l177, !tbaa !21
  br i1 %t332, label %bb72, label %bb73
bb72:
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t334 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t333, %"compiler/source:Span" %t334, { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load %"compiler/source:Span", ptr %l1
  %t341 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v4, ptr %t337, %"compiler/source:Span" %t338)
  store ptr %t341, ptr %l184
  br label %bb75
bb75:
  call void @__olang_scope_close(ptr %s6)
  %t342 = load ptr, ptr %l184, !tbaa !29
  store ptr %t342, ptr %rv
  br label %ret
bb76:
  %t343 = load ptr, ptr %l3, !tbaa !29
  %t345 = icmp eq ptr %t343, null
  br i1 %t345, label %bb77, label %bb78
bb77:
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l188, !tbaa !29
  %t348 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t348, ptr %l189
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t349)
  store i32 %t351, ptr %l191
  br label %bb79
bb78:
  %t352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t352, ptr %l193, !tbaa !29
  %t353 = load ptr, ptr %l0, !tbaa !29
  store ptr %t353, ptr %l194, !tbaa !29
  %t354 = load ptr, ptr %l3, !tbaa !29
  store ptr %t354, ptr %l195, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t355)
  store i32 %t357, ptr %l197
  br label %bb81
bb79:
  %t358 = load ptr, ptr %l188, !tbaa !29
  %t359 = load %"compiler/source:Span", ptr %l189
  %t360 = load i32, ptr %l191, !tbaa !23
  %t361 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t358, %"compiler/source:Span" %t359, i32 %t360, i64 0)
  store ptr %t361, ptr %l192
  br label %bb80
bb80:
  %t362 = load ptr, ptr %l192, !tbaa !29
  store ptr %t362, ptr %l187, !tbaa !29
  br label %bb85
bb81:
  %t363 = load ptr, ptr %l194, !tbaa !29
  %t364 = load ptr, ptr %l195, !tbaa !29
  %t365 = load i32, ptr %l197, !tbaa !23
  %t366 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v0, ptr %t363, ptr %t364, i32 %t365)
  store ptr %t366, ptr %l198
  br label %bb82
bb82:
  %t367 = load ptr, ptr %l3, !tbaa !29
  %t369 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t367)
  store %"compiler/source:Span" %t369, ptr %l200
  br label %bb83
bb83:
  %t370 = load ptr, ptr %l193, !tbaa !29
  %t371 = load ptr, ptr %l198, !tbaa !29
  %t372 = load %"compiler/source:Span", ptr %l200
  %t373 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v4, ptr %t370, ptr %t371, %"compiler/source:Span" %t372)
  store ptr %t373, ptr %l201
  br label %bb84
bb84:
  %t374 = load ptr, ptr %l201, !tbaa !29
  store ptr %t374, ptr %l187, !tbaa !29
  br label %bb85
bb85:
  %t375 = load ptr, ptr %l187, !tbaa !29
  store ptr %t375, ptr %l19, !tbaa !29
  store ptr null, ptr %l20, !tbaa !29
  %t376 = load ptr, ptr %l4, !tbaa !29
  %t378 = icmp eq ptr %t376, null
  br i1 %t378, label %bb86, label %bb87
bb86:
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l204, !tbaa !29
  %t381 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t381, ptr %l205
  %t382 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t382, ptr %l206
  %t383 = load i64, ptr %l18, !tbaa !24
  store i64 %t383, ptr %l207, !tbaa !24
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load %"compiler/source:Span", ptr %l1
  %t386 = load ptr, ptr %l6, !tbaa !29
  store ptr %t386, ptr %l210, !tbaa !29
  %t387 = load ptr, ptr %l210, !tbaa !29
  %t388 = call ptr @__olang_scope_of(ptr %t387, ptr null)
  %t389 = ptrtoint ptr %t388 to i64
  %t391 = inttoptr i64 %t389 to ptr
  %t394 = load ptr, ptr %l210, !tbaa !29
  %t395 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t391, ptr %v0, ptr %t384, %"compiler/source:Span" %t385, ptr %t394)
  store ptr %t395, ptr %l212
  br label %bb88
bb87:
  %t396 = load ptr, ptr %l0, !tbaa !29
  store ptr %t396, ptr %l225, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  store ptr %t397, ptr %l226, !tbaa !29
  %t398 = load ptr, ptr %l4, !tbaa !29
  store ptr %t398, ptr %l227, !tbaa !29
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t399)
  store i32 %t401, ptr %l229
  br label %bb102
bb88:
  %t402 = load ptr, ptr %l212, !tbaa !29
  store ptr %t402, ptr %l213, !tbaa !29
  %t403 = icmp sge i64 0, 0
  br i1 %t403, label %bb89, label %bb90
bb89:
  %t405 = icmp sle i64 0, 1152921504606846975
  br i1 %t405, label %bb91, label %bb92
bb90:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb91:
  %t407 = mul i64 0, 8
  %t408 = insertvalue { i64, ptr } undef, i64 0, 0
  %t409 = insertvalue { i64, ptr } %t408, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t409, ptr %l216, !tbaa !27
  %t410 = icmp sge i64 0, 0
  br i1 %t410, label %bb93, label %bb94
bb92:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb93:
  %t412 = icmp sle i64 0, 1152921504606846975
  br i1 %t412, label %bb95, label %bb96
bb94:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb95:
  %t414 = mul i64 0, 8
  %t415 = insertvalue { i64, ptr } undef, i64 0, 0
  %t416 = insertvalue { i64, ptr } %t415, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t416, ptr %l219, !tbaa !27
  %t417 = icmp sge i64 0, 0
  br i1 %t417, label %bb97, label %bb98
bb96:
  call void @__olang_check_failed(ptr @olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb)
  unreachable
bb97:
  %t419 = icmp sle i64 0, 2305843009213693951
  br i1 %t419, label %bb99, label %bb100
bb98:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb99:
  %t421 = mul i64 0, 4
  %t422 = insertvalue { i64, ptr } undef, i64 0, 0
  %t423 = insertvalue { i64, ptr } %t422, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t424 = load ptr, ptr %l204, !tbaa !29
  %t425 = load %"compiler/source:Span", ptr %l205
  %t426 = load %"compiler/source:Span", ptr %l206
  %t427 = load i64, ptr %l207, !tbaa !24
  %t428 = load ptr, ptr %l213, !tbaa !29
  %t429 = load { i64, ptr }, ptr %l216, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t432 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t424, %"compiler/source:Span" %t425, %"compiler/source:Span" %t426, i64 %t427, ptr %t428, { i64, ptr } %t429, { i64, ptr } %t430, { i64, ptr } %t423)
  store ptr %t432, ptr %l223
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb101:
  %t433 = load ptr, ptr %l223, !tbaa !29
  store ptr %t433, ptr %l20, !tbaa !29
  br label %bb106
bb102:
  %t435 = load ptr, ptr %l226, !tbaa !29
  %t436 = load ptr, ptr %l227, !tbaa !29
  %t437 = load i32, ptr %l229, !tbaa !23
  %t438 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v3, ptr %v0, ptr %t435, ptr %t436, i32 %t437)
  store ptr %t438, ptr %l230
  br label %bb103
bb103:
  %t439 = load ptr, ptr %l4, !tbaa !29
  %t441 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v3, ptr %t439)
  store %"compiler/source:Span" %t441, ptr %l232
  br label %bb104
bb104:
  %t442 = load ptr, ptr %l225, !tbaa !29
  %t443 = load ptr, ptr %l230, !tbaa !29
  %t444 = load %"compiler/source:Span", ptr %l232
  %t445 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v0, ptr %v4, ptr %t442, ptr %t443, %"compiler/source:Span" %t444)
  store ptr %t445, ptr %l233
  br label %bb105
bb105:
  %t446 = load ptr, ptr %l233, !tbaa !29
  store ptr %t446, ptr %l20, !tbaa !29
  br label %bb106
bb106:
  %t448 = load ptr, ptr %l0, !tbaa !29
  %t450 = getelementptr %"compiler/check:Checker", ptr %t448, i32 0, i32 43
  %t452 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t450)
  store i64 %t452, ptr %l237
  br label %bb107
bb107:
  %t453 = load i64, ptr %l237, !tbaa !24
  store i64 %t453, ptr %l21, !tbaa !24
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/check:Checker", ptr %t454, i32 0, i32 43
  %t457 = load ptr, ptr %l19, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t456, ptr %t457)
  br label %bb108
bb108:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t462 = getelementptr %"compiler/check:Checker", ptr %t460, i32 0, i32 43
  store ptr %t462, ptr %l242, !tbaa !29
  %t463 = load ptr, ptr %l20, !tbaa !29
  %t465 = icmp eq ptr %t463, null
  br i1 %t465, label %bb109, label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_b203c9fbf4c249fb_735051f472c86bf)
  unreachable
bb110:
  br label %bb111
bb111:
  %t467 = load ptr, ptr %l20, !tbaa !29
  %t468 = load ptr, ptr %l242, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v4, ptr %t468, ptr %t467)
  br label %bb112
bb112:
  %t470 = load ptr, ptr %l0, !tbaa !29
  store ptr %t470, ptr %l246, !tbaa !29
  %t471 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t471, ptr %l247
  %t472 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t472, ptr %l248
  %t473 = load i64, ptr %l17, !tbaa !24
  store i64 %t473, ptr %l249, !tbaa !24
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load %"compiler/source:Span", ptr %l1
  %t476 = load ptr, ptr %l6, !tbaa !29
  store ptr %t476, ptr %l252, !tbaa !29
  %t477 = load ptr, ptr %l252, !tbaa !29
  %t478 = call ptr @__olang_scope_of(ptr %t477, ptr null)
  %t479 = ptrtoint ptr %t478 to i64
  %t481 = inttoptr i64 %t479 to ptr
  %t484 = load ptr, ptr %l252, !tbaa !29
  %t485 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %t481, ptr %v0, ptr %t474, %"compiler/source:Span" %t475, ptr %t484)
  store ptr %t485, ptr %l254
  br label %bb113
bb113:
  %t486 = load ptr, ptr %l254, !tbaa !29
  store ptr %t486, ptr %l255, !tbaa !29
  %t487 = icmp sge i64 0, 0
  br i1 %t487, label %bb114, label %bb115
bb114:
  %t489 = icmp sle i64 0, 1152921504606846975
  br i1 %t489, label %bb116, label %bb117
bb115:
  call void @__olang_check_failed(ptr @olang_loc_85a2f2931038d80c_e5a946dd8e187d18)
  unreachable
bb116:
  %t491 = mul i64 0, 8
  %t492 = insertvalue { i64, ptr } undef, i64 0, 0
  %t493 = insertvalue { i64, ptr } %t492, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t493, ptr %l258, !tbaa !27
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t496 = getelementptr %"compiler/check:Checker", ptr %t494, i32 0, i32 43
  %t497 = load i64, ptr %l21, !tbaa !24
  %t500 = call { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t496, i64 %t497)
  store { i64, ptr } %t500, ptr %l262
  br label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_85a2f2931038d80c_e5a946dd8e187d18)
  unreachable
bb118:
  %t501 = icmp sge i64 0, 0
  br i1 %t501, label %bb119, label %bb120
bb119:
  %t503 = icmp sle i64 0, 2305843009213693951
  br i1 %t503, label %bb121, label %bb122
bb120:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb121:
  %t505 = mul i64 0, 4
  %t506 = insertvalue { i64, ptr } undef, i64 0, 0
  %t507 = insertvalue { i64, ptr } %t506, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t508 = load ptr, ptr %l246, !tbaa !29
  %t509 = load %"compiler/source:Span", ptr %l247
  %t510 = load %"compiler/source:Span", ptr %l248
  %t511 = load i64, ptr %l249, !tbaa !24
  %t512 = load ptr, ptr %l255, !tbaa !29
  %t513 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t514 = load { i64, ptr }, ptr %l262, !tbaa !27
  %t516 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %v4, ptr %t508, %"compiler/source:Span" %t509, %"compiler/source:Span" %t510, i64 %t511, ptr %t512, { i64, ptr } %t513, { i64, ptr } %t514, { i64, ptr } %t507)
  store ptr %t516, ptr %l266
  br label %bb123
bb122:
  call void @__olang_check_failed(ptr @olang_loc_e4f33d7277813d9a_8adeed4fca551266)
  unreachable
bb123:
  call void @__olang_scope_close(ptr %s6)
  %t517 = load ptr, ptr %l266, !tbaa !29
  store ptr %t517, ptr %rv
  br label %ret
bb124:
  store ptr null, ptr %l22, !tbaa !29
  %t518 = load ptr, ptr %l3, !tbaa !29
  %t520 = icmp eq ptr %t518, null
  br i1 %t520, label %bb125, label %bb126
bb125:
  %t522 = load ptr, ptr %l0, !tbaa !29
  store ptr %t522, ptr %l269, !tbaa !29
  %t523 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t523, ptr %l270
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t524)
  store i32 %t526, ptr %l272
  br label %bb127
bb126:
  %t527 = load ptr, ptr %l0, !tbaa !29
  store ptr %t527, ptr %l275, !tbaa !29
  %t528 = load ptr, ptr %l3, !tbaa !29
  store ptr %t528, ptr %l276, !tbaa !29
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t531 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t529)
  store i32 %t531, ptr %l278
  br label %bb129
bb127:
  %t532 = load ptr, ptr %l269, !tbaa !29
  %t533 = load %"compiler/source:Span", ptr %l270
  %t534 = load i32, ptr %l272, !tbaa !23
  %t535 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v4, ptr %t532, %"compiler/source:Span" %t533, i32 %t534, i64 0)
  store ptr %t535, ptr %l273
  br label %bb128
bb128:
  %t536 = load ptr, ptr %l273, !tbaa !29
  store ptr %t536, ptr %l22, !tbaa !29
  br label %bb131
bb129:
  %t538 = load ptr, ptr %l275, !tbaa !29
  %t539 = load ptr, ptr %l276, !tbaa !29
  %t540 = load i32, ptr %l278, !tbaa !23
  %t541 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v2, ptr %v4, ptr %t538, ptr %t539, i32 %t540)
  store ptr %t541, ptr %l279
  br label %bb130
bb130:
  %t542 = load ptr, ptr %l279, !tbaa !29
  store ptr %t542, ptr %l22, !tbaa !29
  br label %bb131
bb131:
  store ptr null, ptr %l23, !tbaa !29
  %t544 = load ptr, ptr %l4, !tbaa !29
  %t546 = icmp eq ptr %t544, null
  br i1 %t546, label %bb132, label %bb133
bb132:
  %t548 = load ptr, ptr %l0, !tbaa !29
  store ptr %t548, ptr %l283, !tbaa !29
  %t549 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t549, ptr %l284
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t550)
  store i32 %t552, ptr %l286
  br label %bb134
bb133:
  %t553 = load ptr, ptr %l0, !tbaa !29
  store ptr %t553, ptr %l300, !tbaa !29
  %t554 = load ptr, ptr %l4, !tbaa !29
  store ptr %t554, ptr %l301, !tbaa !29
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %t555)
  store i32 %t557, ptr %l303
  br label %bb137
bb134:
  store i32 22, ptr %l287
  %t558 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t558, ptr %l288
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/check:Checker", ptr %t559, i32 0, i32 1
  %t562 = load ptr, ptr %t561, !tbaa !29
  %t564 = getelementptr %"compiler/generic:Program", ptr %t562, i32 0, i32 2
  %t565 = load i32, ptr %l7, !tbaa !23
  %t566 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t570 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t564, i32 %t565, i64 %t566)
  store i32 %t570, ptr %l294
  br label %bb135
bb135:
  %t571 = load ptr, ptr %l6, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t572
  %t573 = getelementptr { i64, [5 x i64] }, ptr %t572, i32 0, i32 0
  store i64 3, ptr %t573
  %t574 = load %"compiler/source:Span", ptr %l288
  %t575 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t574, 0
  %t576 = load i32, ptr %l294, !tbaa !23
  %t577 = insertvalue { %"compiler/source:Span", i32, ptr } %t575, i32 %t576, 1
  %t579 = insertvalue { %"compiler/source:Span", i32, ptr } %t577, ptr %t571, 2
  %t580 = getelementptr { i64, [5 x i64] }, ptr %t572, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t579, ptr %t580
  %t581 = load { i64, [5 x i64] }, ptr %t572
  %t583 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store { i64, [5 x i64] } %t581, ptr %t583
  %t584 = load ptr, ptr %l283, !tbaa !29
  %t585 = load %"compiler/source:Span", ptr %l284
  %t586 = load i32, ptr %l286, !tbaa !23
  %t587 = load i32, ptr %l287, !range !{i32 0, i32 51}
  %t589 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v0, ptr %v0, ptr %v4, ptr %t584, %"compiler/source:Span" %t585, i32 %t586, i32 %t587, ptr %t583, ptr null)
  store ptr %t589, ptr %l298
  br label %bb136
bb136:
  %t590 = load ptr, ptr %l298, !tbaa !29
  store ptr %t590, ptr %l23, !tbaa !29
  br label %bb139
bb137:
  %t592 = load ptr, ptr %l300, !tbaa !29
  %t593 = load ptr, ptr %l301, !tbaa !29
  %t594 = load i32, ptr %l303, !tbaa !23
  %t595 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v3, ptr %v4, ptr %t592, ptr %t593, i32 %t594)
  store ptr %t595, ptr %l304
  br label %bb138
bb138:
  %t596 = load ptr, ptr %l304, !tbaa !29
  store ptr %t596, ptr %l23, !tbaa !29
  br label %bb139
bb139:
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t599 = load i32, ptr %l7, !tbaa !23
  %t602 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %t598, i32 %t599)
  store i1 %t602, ptr %l308
  br label %bb140
bb140:
  %t603 = load i1, ptr %l308, !tbaa !21
  br i1 %t603, label %bb141, label %bb142
bb141:
  %t604 = load i32, ptr %l7, !tbaa !23
  store i32 %t604, ptr %l309, !tbaa !23
  br label %bb149
bb142:
  %t606 = load ptr, ptr %l0, !tbaa !29
  %t608 = getelementptr %"compiler/check:Checker", ptr %t606, i32 0, i32 1
  %t609 = load ptr, ptr %t608, !tbaa !29
  %t611 = getelementptr %"compiler/generic:Program", ptr %t609, i32 0, i32 2
  store ptr %t611, ptr %l313, !tbaa !29
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/check:Checker", ptr %t612, i32 0, i32 1
  %t615 = load ptr, ptr %t614, !tbaa !29
  %t617 = getelementptr %"compiler/generic:Program", ptr %t615, i32 0, i32 2
  %t618 = load i32, ptr %l15, !tbaa !23
  %t621 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t617, i32 %t618)
  store i32 %t621, ptr %l318
  br label %bb143
bb143:
  %t622 = load i32, ptr %l5, !range !{i32 0, i32 4}
  %t624 = trunc i64 1 to i32
  %t625 = icmp eq i32 %t622, %t624
  br i1 %t625, label %bb144, label %bb145
bb144:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t628 = load i32, ptr %l15, !tbaa !23
  %t629 = load ptr, ptr %l3, !tbaa !29
  %t630 = load ptr, ptr %l4, !tbaa !29
  %t635 = call i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceLength(ptr %v0, ptr %v2, ptr %v3, ptr %t627, i32 %t628, ptr %t629, ptr %t630)
  store i32 %t635, ptr %l326
  br label %bb146
bb145:
  store i32 0, ptr %l321, !tbaa !23
  br label %bb147
bb146:
  %t636 = load i32, ptr %l326, !tbaa !23
  store i32 %t636, ptr %l321, !tbaa !23
  br label %bb147
bb147:
  %t637 = load ptr, ptr %l313, !tbaa !29
  %t638 = load i32, ptr %l318, !tbaa !23
  %t639 = load i32, ptr %l321, !tbaa !23
  %t640 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %t637, i32 %t638, i32 %t639)
  store i32 %t640, ptr %l327
  br label %bb148
bb148:
  %t641 = load i32, ptr %l327, !tbaa !23
  store i32 %t641, ptr %l309, !tbaa !23
  br label %bb149
bb149:
  %t642 = load i32, ptr %l309, !tbaa !23
  %t643 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t643, ptr %l328
  %t644 = load ptr, ptr %l0, !tbaa !29
  %t646 = getelementptr %"compiler/check:Checker", ptr %t644, i32 0, i32 1
  %t647 = load ptr, ptr %t646, !tbaa !29
  %t649 = getelementptr %"compiler/generic:Program", ptr %t647, i32 0, i32 2
  %t651 = load i64, ptr %l8, !tbaa !24
  %t655 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t649, i32 %t642, i64 %t651)
  store i32 %t655, ptr %l334
  br label %bb150
bb150:
  %t656 = load ptr, ptr %l6, !tbaa !29
  store ptr %t656, ptr %l335, !tbaa !29
  %t657 = load ptr, ptr %l22, !tbaa !29
  %t659 = icmp eq ptr %t657, null
  br i1 %t659, label %bb151, label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_2f1aad6b95023edd_c82f5ce971f0d619)
  unreachable
bb152:
  br label %bb153
bb153:
  %t661 = load ptr, ptr %l22, !tbaa !29
  store ptr %t661, ptr %l338, !tbaa !29
  %t662 = load ptr, ptr %l23, !tbaa !29
  %t664 = icmp eq ptr %t662, null
  br i1 %t664, label %bb154, label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_2f1aad6b95023edd_c82f5ce971f0d619)
  unreachable
bb155:
  br label %bb156
bb156:
  %t666 = load ptr, ptr %l23, !tbaa !29
  %t667 = load i32, ptr %l5, !range !{i32 0, i32 4}
  %t668 = load ptr, ptr %l335, !tbaa !29
  %t669 = call ptr @__olang_scope_of(ptr %t668, ptr null)
  %t670 = ptrtoint ptr %t669 to i64
  %t672 = inttoptr i64 %t670 to ptr
  %t673 = load ptr, ptr %l335, !tbaa !29
  %t674 = load ptr, ptr %l338, !tbaa !29
  %t677 = call %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %t672, ptr %v4, ptr %v4, ptr %v4, ptr %t673, ptr %t674, ptr %t666, i32 %t667)
  store %"compiler/typed:Slice" %t677, ptr %l344
  br label %bb157
bb157:
  %t678 = load %"compiler/typed:Slice", ptr %l344
  %t679 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store %"compiler/typed:Slice" %t678, ptr %t679
  store { i64, [5 x i64] } zeroinitializer, ptr %t680
  %t681 = getelementptr { i64, [5 x i64] }, ptr %t680, i32 0, i32 0
  store i64 10, ptr %t681
  %t682 = load %"compiler/source:Span", ptr %l328
  %t683 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t682, 0
  %t684 = load i32, ptr %l334, !tbaa !23
  %t685 = insertvalue { %"compiler/source:Span", i32, ptr } %t683, i32 %t684, 1
  %t687 = insertvalue { %"compiler/source:Span", i32, ptr } %t685, ptr %t679, 2
  %t688 = getelementptr { i64, [5 x i64] }, ptr %t680, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t687, ptr %t688
  %t689 = load { i64, [5 x i64] }, ptr %t680
  %t691 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 48, i64 8)
  store { i64, [5 x i64] } %t689, ptr %t691
  store ptr %t691, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estoreOver(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca i32
  %l10 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l39 = alloca ptr
  %l48 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca i1
  %l67 = alloca i64
  %l69 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i32
  %l76 = alloca ptr
  %l81 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca %"compiler/source:Span"
  %l84 = alloca ptr
  %l94 = alloca ptr
  %l99 = alloca ptr
  %l100 = alloca %"compiler/source:Span"
  %l107 = alloca ptr
  %l111 = alloca ptr
  %t43 = alloca { i64, [3 x i64] }, align 8
  %t88 = alloca { i64, [3 x i64] }, align 8
  %t170 = alloca { i64, [4 x i64] }, align 8
  %t186 = alloca { i64, [3 x i64] }, align 8
  %t212 = alloca { i64, [4 x i64] }, align 8
  %t231 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l12
  br label %bb1
bb1:
  %t4 = load i32, ptr %l12, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load i32, ptr %l4, !tbaa !23
  %t6 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t9 = icmp eq i32 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i32, ptr %l4, !tbaa !23
  %t15 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %t11, i32 %t12)
  store i1 %t15, ptr %l19
  br label %bb4
bb4:
  %t16 = load i1, ptr %l19, !tbaa !21
  store i1 %t16, ptr %l16, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l16, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/check:Checker", ptr %t18, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l25
  br label %bb8
bb8:
  %t28 = load i1, ptr %l25, !tbaa !21
  %t29 = xor i1 %t28, true
  store i1 %t29, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t31 = load i1, ptr %l20, !tbaa !21
  br i1 %t31, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb13
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebufferField(ptr %v0, ptr %v1, ptr %t32, ptr %t33)
  store i1 %t36, ptr %l30
  br label %bb12
bb12:
  %t37 = load i1, ptr %l30, !tbaa !21
  store i1 %t37, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t38 = load i1, ptr %l27, !tbaa !21
  br i1 %t38, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 0
  store i64 1, ptr %t44
  %t46 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t40, 0
  %t48 = insertvalue { %"compiler/source:Span", ptr, ptr } %t46, ptr %t41, 1
  %t50 = insertvalue { %"compiler/source:Span", ptr, ptr } %t48, ptr %t42, 2
  %t51 = getelementptr { i64, [3 x i64] }, ptr %t43, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t50, ptr %t51
  %t52 = load { i64, [3 x i64] }, ptr %t43
  %t54 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t52, ptr %t54
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t39, ptr %t54)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %ret
bb17:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l2, !tbaa !29
  %t61 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v1, ptr %t57, ptr %t58)
  store ptr %t61, ptr %l39
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l39, !tbaa !29
  store ptr %t62, ptr %l5, !tbaa !29
  %t63 = load ptr, ptr %l5, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load %"compiler/source:Span", ptr %l1
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v0, ptr %t67, %"compiler/source:Span" %t68, { i64, ptr } { i64 85, ptr getelementptr inbounds (<{ i64, [85 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %ret
bb22:
  %t71 = load ptr, ptr %l5, !tbaa !29
  store ptr %t71, ptr %l2, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t75 = load i32, ptr %l4, !tbaa !23
  %t79 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %t73, %"compiler/source:Span" %t74, i32 %t75)
  store i64 %t79, ptr %l48
  br label %bb23
bb23:
  %t80 = load i64, ptr %l48, !tbaa !24
  store i64 %t80, ptr %l6, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load %"compiler/source:Span", ptr %l1
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = trunc i64 %t83 to i32
  %t87 = load ptr, ptr %l3, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 0
  store i64 0, ptr %t89
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t82, 0
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, i32 %t85, 1
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr } %t93, ptr %t87, 2
  %t96 = getelementptr { i64, [3 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t95, ptr %t96
  %t97 = load { i64, [3 x i64] }, ptr %t88
  %t99 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t97, ptr %t99
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t81, ptr %t99)
  br label %bb24
bb24:
  store i64 -1, ptr %l7, !tbaa !24
  %t102 = load ptr, ptr %l2, !tbaa !29
  store ptr %t102, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t103 = load ptr, ptr %l57, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 8}
  %t109 = icmp eq i64 %t107, 0
  store i1 %t109, ptr %l58, !tbaa !21
  br label %bb26
bb26:
  %t110 = load i1, ptr %l58, !tbaa !21
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t111 = load ptr, ptr %l2, !tbaa !29
  %t113 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t113, i32 0, i32 0
  %t115 = load %"compiler/source:Span", ptr %t114
  store %"compiler/source:Span" %t115, ptr %l8
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t119, i32 0, i32 1
  %t121 = load i32, ptr %t120
  store i32 %t121, ptr %l9, !tbaa !23
  %t123 = load ptr, ptr %l2, !tbaa !29
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t125, i32 0, i32 2
  %t127 = load i32, ptr %t126
  store i32 %t127, ptr %l10, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t129)
  store ptr %t131, ptr %l69
  br label %bb29
bb28:
  br label %bb34
bb29:
  %t132 = load ptr, ptr %l69, !tbaa !29
  %t134 = getelementptr %"compiler/check:frame", ptr %t132, i32 0, i32 23
  %t135 = load i32, ptr %l10, !tbaa !23
  %t137 = sext i32 %t135 to i64
  %t140 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t134, i64 %t137)
  %t141 = extractvalue { i32, i64 } %t140, 1
  %t142 = extractvalue { i32, i64 } %t140, 0
  store i32 %t142, ptr %l75
  %t143 = icmp ne i32 %t142, 0
  br i1 %t143, label %bb31, label %ok.144, !prof !99
ok.144:
  store i64 %t141, ptr %l74
  br label %bb30
bb30:
  %t145 = load i64, ptr %l74, !tbaa !24
  store i64 %t145, ptr %l67, !tbaa !24
  br label %bb33
bb31:
  br label %bb32
bb32:
  store i64 -1, ptr %l67, !tbaa !24
  br label %bb33
bb33:
  %t146 = load i64, ptr %l67, !tbaa !24
  store i64 %t146, ptr %l7, !tbaa !24
  br label %bb34
bb34:
  %t147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t147, ptr %l76, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load %"compiler/source:Span", ptr %l1
  %t150 = load ptr, ptr %l2, !tbaa !29
  %t151 = load i64, ptr %l7, !tbaa !24
  %t156 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edropIfHeld(ptr %v0, ptr %v1, ptr %v0, ptr %t148, %"compiler/source:Span" %t149, ptr %t150, i64 %t151)
  store ptr %t156, ptr %l81
  br label %bb35
bb35:
  %t157 = load ptr, ptr %l76, !tbaa !29
  %t158 = load ptr, ptr %l81, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t157, ptr %t158)
  br label %bb36
bb36:
  %t159 = load ptr, ptr %l0, !tbaa !29
  store ptr %t159, ptr %l82, !tbaa !29
  %t160 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t160, ptr %l83
  %t161 = load ptr, ptr %l2, !tbaa !29
  store ptr %t161, ptr %l84, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load %"compiler/source:Span", ptr %l1
  %t164 = load %"compiler/source:Span", ptr %l1
  %t165 = load i32, ptr %l4, !tbaa !23
  %t166 = load i64, ptr %l6, !tbaa !24
  %t168 = trunc i64 %t166 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t170
  %t171 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 0
  store i64 0, ptr %t171
  %t173 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t164, 0
  %t175 = insertvalue { %"compiler/source:Span", i32, i32 } %t173, i32 %t165, 1
  %t177 = insertvalue { %"compiler/source:Span", i32, i32 } %t175, i32 %t168, 2
  %t178 = getelementptr { i64, [4 x i64] }, ptr %t170, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t177, ptr %t178
  %t179 = load { i64, [4 x i64] }, ptr %t170
  %t181 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t179, ptr %t181
  %t185 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v0, ptr %v0, ptr %t162, %"compiler/source:Span" %t163, ptr %t181)
  store ptr %t185, ptr %l94
  br label %bb37
bb37:
  store { i64, [3 x i64] } zeroinitializer, ptr %t186
  %t187 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 0
  store i64 1, ptr %t187
  %t188 = load %"compiler/source:Span", ptr %l83
  %t189 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t188, 0
  %t190 = load ptr, ptr %l84, !tbaa !29
  %t191 = insertvalue { %"compiler/source:Span", ptr, ptr } %t189, ptr %t190, 1
  %t192 = load ptr, ptr %l94, !tbaa !29
  %t193 = insertvalue { %"compiler/source:Span", ptr, ptr } %t191, ptr %t192, 2
  %t194 = getelementptr { i64, [3 x i64] }, ptr %t186, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t193, ptr %t194
  %t195 = load { i64, [3 x i64] }, ptr %t186
  %t197 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t195, ptr %t197
  %t198 = load ptr, ptr %l82, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t198, ptr %t197)
  br label %bb38
bb38:
  %t200 = load i64, ptr %l7, !tbaa !24
  %t202 = icmp sge i64 %t200, 0
  br i1 %t202, label %bb39, label %bb40
bb39:
  %t204 = load ptr, ptr %l0, !tbaa !29
  store ptr %t204, ptr %l99, !tbaa !29
  %t205 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t205, ptr %l100
  %t206 = load %"compiler/source:Span", ptr %l1
  %t207 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t208 = load i64, ptr %l7, !tbaa !24
  %t210 = trunc i64 %t208 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t212
  %t213 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 0
  store i64 0, ptr %t213
  %t215 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t206, 0
  %t217 = insertvalue { %"compiler/source:Span", i32, i32 } %t215, i32 %t207, 1
  %t219 = insertvalue { %"compiler/source:Span", i32, i32 } %t217, i32 %t210, 2
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t212, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t219, ptr %t220
  %t221 = load { i64, [4 x i64] }, ptr %t212
  %t223 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t221, ptr %t223
  store ptr %t223, ptr %l107, !tbaa !29
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load %"compiler/source:Span", ptr %l1
  %t226 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t230 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v0, ptr %t224, %"compiler/source:Span" %t225, i32 %t226, i64 1)
  store ptr %t230, ptr %l111
  br label %bb41
bb40:
  br label %bb43
bb41:
  store { i64, [3 x i64] } zeroinitializer, ptr %t231
  %t232 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 0
  store i64 1, ptr %t232
  %t233 = load %"compiler/source:Span", ptr %l100
  %t234 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t233, 0
  %t235 = load ptr, ptr %l107, !tbaa !29
  %t236 = insertvalue { %"compiler/source:Span", ptr, ptr } %t234, ptr %t235, 1
  %t237 = load ptr, ptr %l111, !tbaa !29
  %t238 = insertvalue { %"compiler/source:Span", ptr, ptr } %t236, ptr %t237, 2
  %t239 = getelementptr { i64, [3 x i64] }, ptr %t231, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t238, ptr %t239
  %t240 = load { i64, [3 x i64] }, ptr %t231
  %t242 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store { i64, [3 x i64] } %t240, ptr %t242
  %t243 = load ptr, ptr %l99, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v0, ptr %t243, ptr %t242)
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextValues(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l0 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l6, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOperand(ptr %v0, ptr %v1, ptr %v2, ptr %v5, ptr %t5, ptr %a2, ptr %a3, ptr %t8)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t16 = load ptr, ptr %l6, !tbaa !29
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOperand(ptr %v0, ptr %v3, ptr %v4, ptr %v5, ptr %t13, ptr %a4, ptr %a5, ptr %t16)
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t27 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOf(ptr %v0, ptr %v5, ptr %v5, ptr %t21, %"compiler/source:Span" %a1, ptr %t23)
  store ptr %t27, ptr %l20
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l20, !tbaa !29
  store ptr %t28, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etraitRef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l19 = alloca ptr
  %l23 = alloca %"compiler/names:Ref"
  %l27 = alloca i1
  %l35 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l3
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/check:Checker", ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/load:Loader", ptr %t29, i32 0, i32 10
  %t35 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t31, i64 %a1)
  store ptr %t35, ptr %l19
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l19, !tbaa !29
  %t38 = getelementptr %"compiler/load:Module", ptr %t36, i32 0, i32 4
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = getelementptr %"compiler/source:Span", ptr %l3, i32 0, i32 0
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load ptr, ptr %l13, !tbaa !29
  %t45 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %t42, i64 %t39, i32 %t41)
  store %"compiler/names:Ref" %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load %"compiler/names:Ref", ptr %l23
  store %"compiler/names:Ref" %t46, ptr %l4
  %t47 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t48 = load i32, ptr %t47, !range !{i32 0, i32 9}
  %t50 = trunc i64 4 to i32
  %t51 = icmp eq i32 %t48, %t50
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb10
bb9:
  %t55 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t56 = load i64, ptr %t55, !tbaa !24
  %t58 = icmp slt i64 %t56, 0
  store i1 %t58, ptr %l27, !tbaa !21
  br label %bb10
bb10:
  %t60 = load i1, ptr %l27, !tbaa !21
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t61 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 0
  %t62 = load i32, ptr %t61, !range !{i32 0, i32 9}
  %t64 = trunc i64 7 to i32
  %t65 = icmp eq i32 %t62, %t64
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/check:Checker", ptr %t69, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/generic:Program", ptr %t72, i32 0, i32 2
  store ptr %t74, ptr %l35, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/check:Checker", ptr %t75, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t79 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 1
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = getelementptr %"compiler/names:Ref", ptr %l4, i32 0, i32 2
  %t82 = load i64, ptr %t81, !tbaa !24
  %t86 = call i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %t78, i64 %t80, i64 %t82)
  store i32 %t86, ptr %l40
  br label %bb14
bb14:
  %t87 = load ptr, ptr %l35, !tbaa !29
  %t88 = load i32, ptr %l40, !tbaa !23
  %t89 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t87, i32 %t88)
  store i32 %t89, ptr %l41
  br label %bb15
bb15:
  %t90 = load i32, ptr %l41, !range !{i32 0, i32 6}
  %t92 = trunc i64 3 to i32
  %t93 = icmp eq i32 %t90, %t92
  store i1 %t93, ptr %rv
  br label %ret
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 false, ptr %rv
  br label %ret
bb20:
  call void @__olang_check_failed(ptr @olang_loc_763b8bf7b0207b18_a2106654b6caec64)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunrollOnce(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, i64, i64 }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca { i64, i64, i64 }
  %l19 = alloca ptr
  %l24 = alloca ptr
  %l38 = alloca i64
  %l46 = alloca i64
  %l47 = alloca ptr
  %l57 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca i64
  %l63 = alloca i32
  %l64 = alloca i64
  %l66 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca i32
  %l76 = alloca ptr
  %s0 = alloca %olang.scope
  %t55 = alloca { i64, [1 x i64] }, align 8
  %t72 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/check:Checker", ptr %t1, i32 0, i32 44
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/source:Span", ptr %l1
  %t12 = call { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %t7, i32 2, %"compiler/source:Span" %t8)
  store { i64, i64, i64 } %t12, ptr %l14
  br label %bb2
bb2:
  %t13 = load { i64, i64, i64 }, ptr %l14
  store { i64, i64, i64 } %t13, ptr %l4
  %t14 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l5, !tbaa !24
  %t17 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l6, !tbaa !24
  %t20 = getelementptr { i64, i64, i64 }, ptr %l4, i32 0, i32 2
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l7, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t23)
  store ptr %t25, ptr %l19
  br label %bb3
bb3:
  %t26 = load ptr, ptr %l19, !tbaa !29
  %t28 = getelementptr %"compiler/check:frame", ptr %t26, i32 0, i32 10
  %t29 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t28, i64 %t29)
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t32)
  store ptr %t34, ptr %l24
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l24, !tbaa !29
  %t37 = getelementptr %"compiler/check:frame", ptr %t35, i32 0, i32 11
  %t38 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t37, i64 %t38)
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t43 = getelementptr %"compiler/ast:ForIn", ptr %t41, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = icmp ne i32 %t44, 0
  br i1 %t46, label %bb7, label %bb8
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l2, !tbaa !29
  %t51 = getelementptr %"compiler/ast:ForIn", ptr %t49, i32 0, i32 0
  %t52 = load i32, ptr %t51, !tbaa !23
  %t53 = load %"compiler/source:Span", ptr %l1
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [1 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t57 = load { i64, [1 x i64] }, ptr %t55
  %t64 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t48, i32 %t52, %"compiler/source:Span" %t53, i32 %t54, i32 3, { i64, [1 x i64] } %t57)
  store i64 %t64, ptr %l38
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t68 = getelementptr %"compiler/ast:ForIn", ptr %t66, i32 0, i32 1
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load %"compiler/source:Span", ptr %l1
  %t71 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store { i64, [1 x i64] } zeroinitializer, ptr %t72
  %t73 = getelementptr { i64, [1 x i64] }, ptr %t72, i32 0, i32 0
  store i64 0, ptr %t73
  %t74 = load { i64, [1 x i64] }, ptr %t72
  %t81 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %t65, i32 %t69, %"compiler/source:Span" %t70, i32 %t71, i32 3, { i64, [1 x i64] } %t74)
  store i64 %t81, ptr %l46
  br label %bb11
bb11:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l47, !tbaa !29
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = getelementptr %"compiler/check:Checker", ptr %t83, i32 0, i32 149
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = add i64 %t85, 1
  %t89 = load ptr, ptr %l47, !tbaa !29
  %t90 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 149
  store i64 %t87, ptr %t90, !tbaa !24
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t93 = getelementptr %"compiler/ast:ForIn", ptr %t91, i32 0, i32 4
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  %t96 = extractvalue { i64, ptr } %t94, 0
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb12, label %bb13
bb12:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l2, !tbaa !29
  %t103 = getelementptr %"compiler/ast:ForIn", ptr %t101, i32 0, i32 4
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  call void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %t100, { i64, ptr } %t104)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t107)
  store ptr %t109, ptr %l59
  br label %bb16
bb16:
  %t110 = load ptr, ptr %l59, !tbaa !29
  %t112 = getelementptr %"compiler/check:frame", ptr %t110, i32 0, i32 10
  %t114 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t112)
  %t115 = extractvalue { i32, i64 } %t114, 1
  %t116 = extractvalue { i32, i64 } %t114, 0
  store i32 %t116, ptr %l63
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb18, label %ok.118, !prof !99
ok.118:
  store i64 %t115, ptr %l62
  br label %bb17
bb17:
  %t119 = load i64, ptr %l62, !tbaa !24
  store i64 %t119, ptr %l57, !tbaa !24
  br label %bb20
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t120)
  store ptr %t122, ptr %l66
  br label %bb21
bb21:
  %t123 = load ptr, ptr %l66, !tbaa !29
  %t125 = getelementptr %"compiler/check:frame", ptr %t123, i32 0, i32 11
  %t127 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t125)
  %t128 = extractvalue { i32, i64 } %t127, 1
  %t129 = extractvalue { i32, i64 } %t127, 0
  store i32 %t129, ptr %l70
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb23, label %ok.131, !prof !99
ok.131:
  store i64 %t128, ptr %l69
  br label %bb22
bb22:
  %t132 = load i64, ptr %l69, !tbaa !24
  store i64 %t132, ptr %l64, !tbaa !24
  br label %bb25
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l5, !tbaa !24
  %t135 = load i64, ptr %l6, !tbaa !24
  %t136 = load i64, ptr %l7, !tbaa !24
  %t137 = load i64, ptr %l3, !tbaa !24
  %t143 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %s0, ptr %t133, i64 %t134, i64 %t135, i64 %t136, i64 %t137)
  store ptr %t143, ptr %l76
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evaluePiece(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l8 = alloca i32
  %l12 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i1
  %l25 = alloca i32
  %l28 = alloca %"compiler/source:Span"
  %l34 = alloca i32
  %l43 = alloca i1
  %l48 = alloca i1
  %l51 = alloca ptr
  %rv = alloca ptr
  %t62 = alloca { i64, [5 x i64] }, align 8
  %t74 = alloca { i64, [2 x i64] }, align 8
  %t106 = alloca { i64, [2 x i64] }, align 8
  %t116 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ereadPlace(ptr %v1, ptr %v2, ptr %t1)
  store ptr %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l5, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i32 @compiler_2fcheck_2etypeOf(ptr %v1, ptr %t5)
  store i32 %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/check:Checker", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  %t26 = load i32, ptr %l17, !range !{i32 0, i32 33}
  %t28 = trunc i64 19 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l12, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/check:Checker", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/generic:Program", ptr %t35, i32 0, i32 2
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb10
bb9:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = icmp ne i32 %t42, 0
  store i1 %t43, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l20, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t46)
  store %"compiler/source:Span" %t48, ptr %l28
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  %t55 = load i32, ptr %l3, !tbaa !23
  %t56 = load i64, ptr @G_2ecompiler_2ftypes_2eReadOnly, !tbaa !24
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %t54, i32 %t55, i64 %t56)
  store i32 %t60, ptr %l34
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t62
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 0
  store i64 3, ptr %t63
  %t64 = load %"compiler/source:Span", ptr %l28
  %t65 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t64, 0
  %t66 = load i32, ptr %l34, !tbaa !23
  %t67 = insertvalue { %"compiler/source:Span", i32, ptr } %t65, i32 %t66, 1
  %t69 = insertvalue { %"compiler/source:Span", i32, ptr } %t67, ptr %t61, 2
  %t70 = getelementptr { i64, [5 x i64] }, ptr %t62, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t69, ptr %t70
  %t71 = load { i64, [5 x i64] }, ptr %t62
  %t73 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t71, ptr %t73
  store { i64, [2 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 0
  store i64 1, ptr %t75
  %t77 = insertvalue { ptr } undef, ptr %t73, 0
  %t78 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 1
  store { ptr } %t77, ptr %t78
  %t79 = load { i64, [2 x i64] }, ptr %t74
  %t81 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t79, ptr %t81
  store ptr %t81, ptr %rv
  br label %ret
bb15:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb16, label %bb17
bb16:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/check:Checker", ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !29
  %t94 = getelementptr %"compiler/generic:Program", ptr %t92, i32 0, i32 2
  %t95 = load i32, ptr %l3, !tbaa !23
  %t98 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t98, ptr %l48
  br label %bb18
bb17:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb19
bb18:
  %t99 = load i1, ptr %l48, !tbaa !21
  store i1 %t99, ptr %l43, !tbaa !21
  br label %bb19
bb19:
  %t100 = load i1, ptr %l43, !tbaa !21
  br i1 %t100, label %bb20, label %bb21
bb20:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t105 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102)
  store ptr %t105, ptr %l51
  br label %bb22
bb21:
  br label %bb23
bb22:
  store { i64, [2 x i64] } zeroinitializer, ptr %t106
  %t107 = getelementptr { i64, [2 x i64] }, ptr %t106, i32 0, i32 0
  store i64 1, ptr %t107
  %t108 = load ptr, ptr %l51, !tbaa !29
  %t109 = insertvalue { ptr } undef, ptr %t108, 0
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t106, i32 0, i32 1
  store { ptr } %t109, ptr %t110
  %t111 = load { i64, [2 x i64] }, ptr %t106
  %t113 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t111, ptr %t113
  store ptr %t113, ptr %rv
  br label %ret
bb23:
  %t115 = load ptr, ptr %l1, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t116
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t116, i32 0, i32 0
  store i64 1, ptr %t117
  %t119 = insertvalue { ptr } undef, ptr %t115, 0
  %t120 = getelementptr { i64, [2 x i64] }, ptr %t116, i32 0, i32 1
  store { ptr } %t119, ptr %t120
  %t121 = load { i64, [2 x i64] }, ptr %t116
  %t123 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 24, i64 8)
  store { i64, [2 x i64] } %t121, ptr %t123
  store ptr %t123, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewBody(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca i1
  %l10 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i64
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v0, ptr %t1)
  store ptr %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load ptr, ptr %l3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Body", ptr %t5, i32 0, i32 11
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb9
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t16 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v0, ptr %t12, ptr %t13)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l10, !tbaa !24
  %t18 = icmp slt i64 %t17, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v0, ptr %t20, ptr %t21)
  store i64 %t24, ptr %l15
  br label %bb7
bb6:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb8
bb7:
  %t25 = load i64, ptr %l15, !tbaa !24
  %t26 = icmp slt i64 %t25, 0
  store i1 %t26, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t28 = load i1, ptr %l12, !tbaa !21
  store i1 %t28, ptr %l7, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l7, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/check:Checker", ptr %t30, i32 0, i32 85
  store ptr %t32, ptr %l18, !tbaa !29
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t33)
  store ptr %t35, ptr %l20
  br label %bb13
bb13:
  %t36 = load ptr, ptr %l20, !tbaa !29
  %t38 = getelementptr %"compiler/check:frame", ptr %t36, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  store i64 %t39, ptr %l22, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = call ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v0, ptr %t40)
  store ptr %t42, ptr %l24
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l24, !tbaa !29
  %t45 = getelementptr %"compiler/check:frame", ptr %t43, i32 0, i32 2
  %t46 = load i64, ptr %t45, !tbaa !24
  %t47 = load i64, ptr %l22, !tbaa !24
  %t49 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t47, i64 %t46)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t49, ptr %l27
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l18, !tbaa !29
  %t51 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %t50, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t51)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewakeThunks(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l11 = alloca i64
  %l17 = alloca i64
  %l21 = alloca ptr
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l36 = alloca %"compiler/generic:AnyTable"
  %l38 = alloca %"compiler/generic:AnyTable"
  %l41 = alloca i64
  %l42 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i64
  %l60 = alloca %"compiler/typed:Body"
  %l71 = alloca i32
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t108 = alloca %"compiler/typed:Body", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l2, !tbaa !24
  store i64 %t1, ptr %l8, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/check:Checker", ptr %t2, i32 0, i32 168
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l11
  br label %bb2
bb2:
  %t7 = load i64, ptr %l8, !tbaa !24
  %t8 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb39
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/check:Checker", ptr %t13, i32 0, i32 168
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l17
  br label %bb6
bb6:
  %t20 = load i64, ptr %l17, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/check:Checker", ptr %t21, i32 0, i32 18
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  store ptr %t27, ptr %l21
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Body", ptr %t28, i32 0, i32 1
  %t31 = load { i64, [2 x i64] }, ptr %t30
  store { i64, [2 x i64] } %t31, ptr %l4
  %t33 = load { i64, [2 x i64] }, ptr %l4
  %t35 = extractvalue { i64, [2 x i64] } %t33, 0
  %t36 = icmp eq i64 %t35, 9
  br i1 %t36, label %bb8, label %bb9
bb8:
  %t38 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t39 = getelementptr { i64, i64 }, ptr %t38, i32 0, i32 0
  %t40 = load i64, ptr %t39
  store i64 %t40, ptr %l5, !tbaa !24
  %t42 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t43 = getelementptr { i64, i64 }, ptr %t42, i32 0, i32 1
  %t44 = load i64, ptr %t43
  store i64 %t44, ptr %l6, !tbaa !24
  br label %bb10
bb9:
  br label %bb32
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/check:Checker", ptr %t46, i32 0, i32 167
  store ptr %t48, ptr %l29, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/check:Checker", ptr %t49, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !29
  store ptr %t52, ptr %l31, !tbaa !29
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/check:Checker", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/generic:Program", ptr %t56, i32 0, i32 61
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = call %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %s2, ptr %t58, i64 %t59)
  store %"compiler/generic:AnyTable" %t62, ptr %l36
  br label %bb11
bb11:
  %t64 = call %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %s2, ptr %l36)
  store %"compiler/generic:AnyTable" %t64, ptr %l38
  br label %bb12
bb12:
  %t65 = getelementptr %"compiler/generic:AnyTable", ptr %l38, i32 0, i32 1
  %t66 = load i32, ptr %t65, !tbaa !23
  %t67 = load i64, ptr %l6, !tbaa !24
  %t68 = load ptr, ptr %l31, !tbaa !29
  %t71 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %t68, i32 %t66, i64 %t67)
  store i64 %t71, ptr %l41
  br label %bb13
bb13:
  %t72 = load ptr, ptr %l29, !tbaa !29
  %t73 = load i64, ptr %l41, !tbaa !24
  %t74 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %t72, i64 %t73)
  store i1 %t74, ptr %l42
  br label %bb14
bb14:
  %t75 = load i1, ptr %l42, !tbaa !21
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/check:Checker", ptr %t76, i32 0, i32 18
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store ptr %t82, ptr %l46
  br label %bb17
bb16:
  br label %bb31
bb17:
  %t83 = load ptr, ptr %l46, !tbaa !29
  store ptr %t83, ptr %l7, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/check:Checker", ptr %t84, i32 0, i32 18
  store ptr %t86, ptr %l48, !tbaa !29
  %t87 = load i64, ptr %l3, !tbaa !24
  store i64 %t87, ptr %l49, !tbaa !24
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 0
  %t91 = load i32, ptr %t90, !tbaa !23
  %t92 = load ptr, ptr %l7, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Body", ptr %t92, i32 0, i32 1
  %t95 = load { i64, [2 x i64] }, ptr %t94
  %t96 = load ptr, ptr %l7, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Body", ptr %t96, i32 0, i32 2
  %t99 = load i32, ptr %t98, !tbaa !23
  %t100 = load ptr, ptr %l7, !tbaa !29
  %t102 = getelementptr %"compiler/typed:Body", ptr %t100, i32 0, i32 3
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = load ptr, ptr %l7, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Body", ptr %t104, i32 0, i32 4
  %t107 = load %"compiler/source:Span", ptr %t106
  call void @compiler_2ftyped_3aBody_2ector(ptr %t108, ptr %v0, i32 %t91, { i64, [2 x i64] } %t95, i32 %t99, i64 %t103, %"compiler/source:Span" %t107)
  call void @llvm.memmove.p0.p0.i64(ptr %l60, ptr %t108, i64 440, i1 false)
  br label %bb18
bb18:
  %t114 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 440, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t114, ptr %l60, i64 440, i1 false)
  %t115 = load ptr, ptr %l48, !tbaa !29
  %t116 = load i64, ptr %l49, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_H84397c9e89cd48160670049091ea20f1(ptr %v0, ptr %v0, ptr %t115, i64 %t116, ptr %t114)
  br label %bb19
bb19:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/check:Checker", ptr %t118, i32 0, i32 23
  %t121 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t120, i64 %t121, i64 0)
  br label %bb20
bb20:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/check:Checker", ptr %t124, i32 0, i32 21
  %t127 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t126, i64 %t127)
  br label %bb21
bb21:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/check:Checker", ptr %t130, i32 0, i32 168
  %t133 = load i64, ptr %l2, !tbaa !24
  %t136 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %t132, i64 %t133)
  store i32 %t136, ptr %l71
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb23, label %ok.138, !prof !99
ok.138:
  br label %bb22
bb22:
  br label %bb30
bb23:
  %t139 = load i32, ptr %l71, !tbaa !23
  %t140 = icmp eq i32 %t139, 65536
  br i1 %t140, label %bb24, label %bb25
bb24:
  call void @__olang_bang_failed_plain(ptr @olang_loc_73788fcff98f9805_b41ea2f3f6de2ed1)
  unreachable
bb25:
  %t142 = load i32, ptr %l71, !tbaa !23
  %t143 = icmp eq i32 %t142, 65537
  br i1 %t143, label %bb26, label %bb27
bb26:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c2b8ccded0b87422_4b497586bdf0fd3e)
  unreachable
bb27:
  %t145 = load i32, ptr %l71, !tbaa !23
  %t146 = icmp eq i32 %t145, 65538
  br i1 %t146, label %bb28, label %bb29
bb28:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c457ecfc87e57822_ebd31f6668a566ee)
  unreachable
bb29:
  call void @__olang_bang_failed_plain(ptr @olang_loc_c596147ee3c3620c_9098292257d7bbb8)
  unreachable
bb30:
  store i1 true, ptr %l1, !tbaa !21
  call void @__olang_scope_close(ptr %s2)
  br label %bb38
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_cde66c6c8e102014_3203f82d8b2f03c0)
  unreachable
bb37:
  %t148 = load i64, ptr %l2, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l2, !tbaa !24
  br label %bb38
bb38:
  br label %bb1
bb39:
  %t152 = load i1, ptr %l1, !tbaa !21
  store i1 %t152, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2eextended(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i32
  %l25 = alloca i64
  %l28 = alloca i64
  %l47 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  %t25 = alloca i64
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
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t7, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t13 = add i64 %t11, 1
  store i64 %t13, ptr %l15, !tbaa !24
  store i32 %a1, ptr %l16, !tbaa !23
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = icmp sge i64 %t15, 0
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = icmp sle i64 %t18, 2305843009213693951
  br i1 %t19, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_c65b3104d639b10f_156ca11db7f6d433)
  unreachable
bb6:
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = mul i64 %t21, 4
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = load i32, ptr %l16, !tbaa !23
  store i64 0, ptr %t25
  br label %fill.26
fill.26:
  %t29 = load i64, ptr %t25
  %t30 = icmp slt i64 %t29, %t21
  br i1 %t30, label %fillb.27, label %filld.28
fillb.27:
  %t31 = getelementptr i32, ptr %t23, i64 %t29
  store i32 %t24, ptr %t31
  %t32 = add i64 %t29, 1
  store i64 %t32, ptr %t25
  br label %fill.26
filld.28:
  %t33 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t23, 1
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t35, ptr %lp2
  %t37 = load ptr, ptr %lp2
  store { i64, ptr } %t34, ptr %t37, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  %t43 = load i64, ptr %l3, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c65b3104d639b10f_156ca11db7f6d433)
  unreachable
bb8:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb13
bb10:
  %t52 = load i64, ptr %l4, !tbaa !24
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l28, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb12
bb12:
  %t68 = load i64, ptr %l28, !tbaa !24
  store i64 %t68, ptr %l25, !tbaa !24
  br label %bb13
bb13:
  %t69 = load i64, ptr %l25, !tbaa !24
  store i64 %t69, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  br label %bb17
bb17:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l5, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l8, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t89, ptr %l47, !tbaa !27
  %t90 = load i64, ptr %l8, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i32, ptr %t93, i64 %t90
  %t95 = load i32, ptr %t94, !tbaa !33
  %t97 = load ptr, ptr %lp2
  %t99 = getelementptr { i64, ptr }, ptr %t97, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr i32, ptr %t100, i64 %t88
  store i32 %t95, ptr %t101, !tbaa !33
  br label %bb18
bb18:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l7, !tbaa !24
  br label %bb14
bb19:
  %t106 = load ptr, ptr %lp2
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  store { i64, ptr } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2efieldSpans(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd"
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i1
  %l25 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %wh1 = alloca ptr
  %wc1 = alloca ptr
  %ws1 = alloca i32
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  store %olang.scope zeroinitializer, ptr %s1
  %t5 = call %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %s1, ptr %a0)
  %t6 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t5, 0, 1
  %t7 = extractvalue %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t5, 0, 0
  store ptr %t6, ptr %wh1
  store ptr %t7, ptr %wc1
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t5, ptr %l10
  br label %bb2
bb2:
  %t8 = load %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd", ptr %l10
  store %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" %t8, ptr %l2
  br label %bb3
bb3:
  %t10 = call { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %s1, ptr %l2)
  %t11 = extractvalue { i32, ptr } %t10, 1
  %t12 = extractvalue { i32, ptr } %t10, 0
  store i32 %t12, ptr %l14
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store ptr %t11, ptr %l13
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l13, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  br label %bb7
bb5:
  %t16 = load i32, ptr %l14, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  br label %bb16
bb7:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t23 = getelementptr %"compiler/ast:VarDecl", ptr %t20, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  store i64 %t28, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = icmp slt i64 %t30, %t31
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t38 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t38, ptr %l25, !tbaa !27
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/source:Span", ptr %t42, i64 %t39
  %t44 = load %"compiler/source:Span", ptr %t43
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v1, ptr %l1, %"compiler/source:Span" %t44)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l5, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l5, !tbaa !24
  br label %bb8
bb14:
  br label %bb15
bb15:
  br label %bb3
bb16:
  store i32 0, ptr %ws1
  br label %wend1
wend1.c0:
  call void @__olang_scope_close(ptr %s1)
  %t53 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %rv
  br label %ret
wend1:
  %t55 = load ptr, ptr %wh1
  %t56 = load ptr, ptr %wc1
  %t57 = call ptr @llvm.coro.promise(ptr %t55, i32 8, i1 false)
  %t58 = getelementptr { { i32, ptr }, i32 }, ptr %t57, i32 0, i32 1
  store i32 2, ptr %t58
  %t59 = call { i32, ptr } %t56(ptr %t55, ptr null)
  %t60 = load i32, ptr %ws1
  switch i32 %t60, label %wend1.c0 [ ]
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2fcheck_2ehasName(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t4)
  store i64 %t6, ptr %l8
  br label %bb2
bb2:
  %t7 = load i64, ptr %l6, !tbaa !24
  %t8 = load i64, ptr %l8, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t17 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t13, i64 %t14)
  store i32 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i32, ptr %l13, !tbaa !23
  %t23 = icmp eq i32 %t18, %a1
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t26, 1
  store i64 %t28, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fcheck_2eintOnly(i32 %a0) #0 {
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 100 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 101 to i32
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t14 = trunc i64 102 to i32
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
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t20 = trunc i64 72 to i32
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
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t26 = trunc i64 105 to i32
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
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t32 = trunc i64 106 to i32
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

define dso_local { i64, ptr } @compiler_2fcheck_2ejoinBytes(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
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
  %l19 = alloca i64
  %l27 = alloca i64
  %l30 = alloca i64
  %l49 = alloca { i64, ptr }
  %l59 = alloca i64
  %l62 = alloca i64
  %l84 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = add i64 %t3, %t6
  store i64 %t9, ptr %l19, !tbaa !24
  %t10 = load i64, ptr %l19, !tbaa !24
  %t11 = icmp sge i64 %t10, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l19, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t18, ptr %lp2
  %t20 = load ptr, ptr %lp2
  store { i64, ptr } %t17, ptr %t20, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t21 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t21, 0
  store i64 %t23, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load i64, ptr %l3, !tbaa !24
  %t29 = icmp sgt i64 %t25, %t26
  br i1 %t29, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_489f62f877911e0f_f9fedbe42e1f3c23)
  unreachable
bb3:
  %t31 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  br i1 %t33, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb8
bb5:
  %t35 = load i64, ptr %l4, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = add i64 %t39, %t40
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sdiv i64 %t45, %t46
  store i64 %t49, ptr %l30, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb7
bb7:
  %t51 = load i64, ptr %l30, !tbaa !24
  store i64 %t51, ptr %l27, !tbaa !24
  br label %bb8
bb8:
  %t52 = load i64, ptr %l27, !tbaa !24
  store i64 %t52, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t53 = load i64, ptr %l7, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = icmp slt i64 %t53, %t54
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i64, ptr %l7, !tbaa !24
  %t63 = load i64, ptr %l5, !tbaa !24
  %t66 = mul i64 %t62, %t63
  %t69 = add i64 %t61, %t66
  store i64 %t69, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t72, ptr %l49, !tbaa !27
  %t73 = load i64, ptr %l8, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr i8, ptr %t76, i64 %t73
  %t78 = load i8, ptr %t77, !tbaa !32
  %t80 = load ptr, ptr %lp2
  %t82 = getelementptr { i64, ptr }, ptr %t80, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i8, ptr %t83, i64 %t71
  store i8 %t78, ptr %t84, !tbaa !32
  br label %bb13
bb13:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l7, !tbaa !24
  br label %bb9
bb14:
  store i64 0, ptr %l9, !tbaa !24
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  store i64 %t91, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = icmp sgt i64 %t93, %t94
  br i1 %t97, label %bb15, label %bb16
bb15:
  %t99 = load i64, ptr %l11, !tbaa !24
  %t101 = icmp sgt i64 %t99, 0
  br i1 %t101, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb20
bb17:
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = sub i64 %t103, %t104
  %t108 = load i64, ptr %l11, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = sub i64 %t111, 1
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = sdiv i64 %t113, %t114
  store i64 %t117, ptr %l62, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb19
bb19:
  %t119 = load i64, ptr %l62, !tbaa !24
  store i64 %t119, ptr %l59, !tbaa !24
  br label %bb20
bb20:
  %t120 = load i64, ptr %l59, !tbaa !24
  store i64 %t120, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb21
bb21:
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l12, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t129 = load i64, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l13, !tbaa !24
  %t131 = load i64, ptr %l11, !tbaa !24
  %t134 = mul i64 %t130, %t131
  %t137 = add i64 %t129, %t134
  store i64 %t137, ptr %l14, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t142 = load i64, ptr %l14, !tbaa !24
  %t145 = add i64 %t141, %t142
  %t146 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t146, ptr %l84, !tbaa !27
  %t147 = load i64, ptr %l14, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t147
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = load ptr, ptr %lp2
  %t156 = getelementptr { i64, ptr }, ptr %t154, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i8, ptr %t157, i64 %t145
  store i8 %t152, ptr %t158, !tbaa !32
  br label %bb25
bb25:
  %t159 = load i64, ptr %l13, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l13, !tbaa !24
  br label %bb21
bb26:
  %t163 = load ptr, ptr %lp2
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/check:litv" @compiler_2fcheck_2elitv_2eofMag(i1 %a0, i128 %a1) #0 {
entry:
  %l1 = alloca i128
  %l2 = alloca i128
  %l5 = alloca %"compiler/check:litv"
  %l14 = alloca %"compiler/check:litv"
  %l20 = alloca %"compiler/check:litv"
  %l22 = alloca %"compiler/check:litv"
  %l30 = alloca %"compiler/check:litv"
  %l35 = alloca %"compiler/check:litv"
  %l36 = alloca %"compiler/check:litv"
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/check:litv"
  store i128 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i128, ptr %l1
  %t3 = icmp eq i128 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 0)
  store %"compiler/check:litv" %t5, ptr %l5
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load %"compiler/check:litv", ptr %l5
  store %"compiler/check:litv" %t6, ptr %rv
  br label %ret
bb4:
  %t7 = shl i128 1, 63
  store i128 %t7, ptr %l2
  %t11 = xor i1 %a0, true
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i128, ptr %l1
  %t14 = load i128, ptr %l2
  %t17 = icmp ult i128 %t13, %t14
  br i1 %t17, label %bb7, label %bb8
bb6:
  br label %bb16
bb7:
  %t19 = load i128, ptr %l1
  %t21 = trunc i128 %t19 to i64
  %t23 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t21)
  store %"compiler/check:litv" %t23, ptr %l14
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t24 = load %"compiler/check:litv", ptr %l14
  store %"compiler/check:litv" %t24, ptr %rv
  br label %ret
bb10:
  %t25 = load i128, ptr %l1
  %t26 = shl i128 1, 64
  %t29 = icmp ult i128 %t25, %t26
  br i1 %t29, label %bb11, label %bb12
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t31 = load i128, ptr %l1
  %t33 = trunc i128 %t31 to i64
  %t35 = call %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %s4, i1 true, i1 false, i1 true, i64 %t33, double 0x0000000000000000)
  store %"compiler/check:litv" %t35, ptr %l20
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s4)
  %t36 = load %"compiler/check:litv", ptr %l20
  store %"compiler/check:litv" %t36, ptr %rv
  br label %ret
bb14:
  %t37 = load i128, ptr %l1
  %t39 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 false, i128 %t37)
  store %"compiler/check:litv" %t39, ptr %l22
  br label %bb15
bb15:
  %t40 = load %"compiler/check:litv", ptr %l22
  store %"compiler/check:litv" %t40, ptr %rv
  br label %ret
bb16:
  %t41 = load i128, ptr %l1
  %t42 = load i128, ptr %l2
  %t45 = icmp ule i128 %t41, %t42
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load i128, ptr %l1
  %t49 = trunc i128 %t47 to i64
  %t51 = sub i64 0, %t49
  %t54 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %t51)
  store %"compiler/check:litv" %t54, ptr %l30
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t55 = load %"compiler/check:litv", ptr %l30
  store %"compiler/check:litv" %t55, ptr %rv
  br label %ret
bb20:
  %t56 = load i128, ptr %l1
  %t57 = shl i128 1, 127
  %t60 = icmp ule i128 %t56, %t57
  br i1 %t60, label %bb21, label %bb22
bb21:
  %t62 = load i128, ptr %l1
  %t64 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 true, i128 %t62)
  store %"compiler/check:litv" %t64, ptr %l35
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t65 = load %"compiler/check:litv", ptr %l35
  store %"compiler/check:litv" %t65, ptr %rv
  br label %ret
bb24:
  %t66 = call %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
  store %"compiler/check:litv" %t66, ptr %l36
  br label %bb25
bb25:
  %t67 = load %"compiler/check:litv", ptr %l36
  store %"compiler/check:litv" %t67, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:litv", ptr %rv
  ret %"compiler/check:litv" %rr
}

define dso_local i64 @compiler_2fcheck_2emeetPerm(i64 %a0, i64 %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = and i64 %t1, %t2
  %t6 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t9 = and i64 %t5, %t6
  %t10 = load i64, ptr %l0, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = or i64 %t10, %t11
  %t15 = load i64, ptr @G_2ecompiler_2ftypes_2eNullable, !tbaa !24
  %t18 = and i64 %t14, %t15
  %t21 = or i64 %t9, %t18
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fcheck_2erefWrittenTop(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i1 false, ptr %l3, !tbaa !21
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_c8609edc258484d8_b7e66af2ba2e899c)
  unreachable
bb11:
  %t10 = load i1, ptr %l1, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fcheck_2erootRules(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/diag:Said"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l11 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/diag:Said"
  %l35 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/load:Loader", ptr %t3, i32 0, i32 10
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/load:Loader", ptr %t6, i32 0, i32 12
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t5, i64 %t9)
  store ptr %t12, ptr %l11
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t15 = getelementptr %"compiler/load:Module", ptr %t13, i32 0, i32 4
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l2, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/load:Loader", ptr %t18, i32 0, i32 4
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %s1, ptr %t21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l16
  br label %bb3
bb3:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t25 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %t25
  store ptr %t25, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t27 = load i64, ptr %l4, !tbaa !24
  store i64 %t27, ptr %l18, !tbaa !24
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s1, ptr %t28)
  store i64 %t30, ptr %l20
  br label %bb5
bb5:
  %t31 = load i64, ptr %l18, !tbaa !24
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = call %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %s1, ptr %s1, ptr %t37, i64 %t38)
  store %"compiler/diag:Said" %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load %"compiler/diag:Said", ptr %l25
  store %"compiler/diag:Said" %t42, ptr %l5
  %t43 = getelementptr %"compiler/diag:Said", ptr %l5, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr %l2, !tbaa !24
  %t48 = icmp eq i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = getelementptr %"compiler/diag:Said", ptr %l5, i32 0, i32 0
  %t51 = load { i64, ptr }, ptr %t50, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s1, ptr %l1, { i64, ptr } %t51)
  br label %bb12
bb11:
  br label %bb14
bb12:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 32)
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb4
bb16:
  call void @__olang_scope_close(ptr %s1)
  %t60 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t60, ptr %l35
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fcheck_2esetName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l1, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l1, !tbaa !23
  store i32 %t16, ptr %l2, !tbaa !23
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i32 0, ptr %l2, !tbaa !23
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_524a47ae64dd06b8_5def175755840fac)
  unreachable
bb11:
  %t18 = load i32, ptr %l2, !tbaa !23
  store i32 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/check:laneNode" @compiler_2fcheck_3alaneNode_2ector(ptr %v0, ptr %v1, i64 %a0, i32 %a1, %"compiler/source:Span" %a2, %"compiler/source:Span" %a3, i64 %a4, i64 %a5, i64 %a6, ptr %a7, i32 %a8, i64 %a9, i32 %a10) #0 {
entry:
  %rv = alloca %"compiler/check:laneNode"
  br label %start
start:
  br label %bb0
bb0:
  %t24 = insertvalue %"compiler/check:laneNode" undef, i64 %a0, 0
  %t26 = insertvalue %"compiler/check:laneNode" %t24, i32 %a1, 1
  %t28 = insertvalue %"compiler/check:laneNode" %t26, %"compiler/source:Span" %a2, 2
  %t30 = insertvalue %"compiler/check:laneNode" %t28, %"compiler/source:Span" %a3, 3
  %t32 = insertvalue %"compiler/check:laneNode" %t30, i64 %a4, 4
  %t34 = insertvalue %"compiler/check:laneNode" %t32, i64 %a5, 5
  %t36 = insertvalue %"compiler/check:laneNode" %t34, i64 %a6, 6
  %t38 = insertvalue %"compiler/check:laneNode" %t36, ptr %a7, 7
  %t40 = insertvalue %"compiler/check:laneNode" %t38, i32 %a8, 8
  %t42 = insertvalue %"compiler/check:laneNode" %t40, i64 %a9, 9
  %t44 = insertvalue %"compiler/check:laneNode" %t42, i32 %a10, 10
  store %"compiler/check:laneNode" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/check:laneNode", ptr %rv
  ret %"compiler/check:laneNode" %rr
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
@.d0 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"call" }>, align 8
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
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Call" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e({ i64, ptr } %t2, { i64, ptr } %t4)
  store i1 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load i1, ptr %l6, !tbaa !21
  store i1 %t10, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d3 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"pass a lambda calling it" }>, align 8
@.d4 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"write the function type '" }>, align 8
@.d5 = private constant <{ i64, [33 x i8] }> <{ i64 0, [33 x i8] c"', or pass a lambda handling them" }>, align 8
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
@olang_2esole_2ecompiler_2fcheck_3aroFn_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Attr" }>, align 8
@.d8 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"HasAttr" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"std/prelude" }>, align 8
@.d12 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"'['" }>, align 8
@__olang_empty_array = external constant [16 x i64]
declare ptr @__olang_scope_of(ptr, ptr) noinline
@olang_2esole_2ecompiler_2fcheck_3aframe_2e4 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aContext(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:Context"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 160, i1 false)
  %t2 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  %t4 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  %t6 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %t6
  %t7 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %t7)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  %t11 = getelementptr %"compiler/generic:Context", ptr %l1, i32 0, i32 3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 160, i1 false)
  br label %ret
ret:
  ret void
}

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"Eq" }>, align 8
@.d19 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"eq" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Hash" }>, align 8
@.d21 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"hash" }>, align 8
@.d22 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Str" }>, align 8
@.d23 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"str" }>, align 8
@.d24 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Copy" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"copy" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d26 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"std/prelude/iterator" }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Exhausted" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 4
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 4
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

@.d28 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"break" }>, align 8
@.d29 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"continue" }>, align 8
@.d30 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"return" }>, align 8
@.d31 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"'$" }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d34 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".Copy()'" }>, align 8
@.d35 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Next" }>, align 8
@.d36 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" - it is not a numeric type" }>, align 8
@.d37 = private constant <{ i64, [93 x i8] }> <{ i64 0, [93 x i8] c" - a declared type has its base's limits only where it extends it and declares no constructor" }>, align 8
@.d38 = private constant <{ i64, [46 x i8] }> <{ i64 0, [46 x i8] c"Max, Min, Inf, NaN, Epsilon and SmallestNormal" }>, align 8
@.d39 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"Max and Min" }>, align 8
@.d40 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" - its limits are " }>, align 8
@.d41 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"Functions" }>, align 8
@.d42 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d43 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"a literal of this kind" }>, align 8
@.d44 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"FromIter" }>, align 8
@.d45 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d46 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Map" }>, align 8
@.d47 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"a struct that is not packed" }>, align 8
@.d48 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"it has no width in bits" }>, align 8
@.d49 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"an enum carrying a payload" }>, align 8
@.d50 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"std/prelude/map" }>, align 8
@.d51 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"MapEntry" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"std/prelude/place" }>, align 8
@.d54 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Place" }>, align 8
@.d55 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Name" }>, align 8
@.d56 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d57 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d58 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d59 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d60 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"Nullable" }>, align 8
@.d61 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Kind" }>, align 8
@.d62 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Length" }>, align 8
@.d63 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Size" }>, align 8
@.d64 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Align" }>, align 8
@.d65 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d66 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Default" }>, align 8
@.d67 = private constant <{ i64, [57 x i8] }> <{ i64 0, [57 x i8] c"Name, Type, Offset, BitOffset, Bits, Of, Attr and HasAttr" }>, align 8
@.d68 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"Name, Fields, Attr and HasAttr" }>, align 8
@.d69 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"Name, Type, HasDefault, Default, Attr and HasAttr" }>, align 8
@.d70 = private constant <{ i64, [123 x i8] }> <{ i64 0, [123 x i8] c"Name, Type, Params, Results, Errors, Attr, HasAttr, NoReturn, Exported, Extern, Commutes and G42's facts - and it is called" }>, align 8
@.d71 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d72 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"field" }>, align 8
@.d73 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d74 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"parameter" }>, align 8
@.d75 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"function" }>, align 8
@.d76 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"result" }>, align 8
@.d77 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"At" }>, align 8
@.d78 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d79 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d80 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"nothing" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d82 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d83 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Slice" }>, align 8
@.d84 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"'x[lo:hi]'" }>, align 8
@.d85 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"Slice ('x[lo:hi]')" }>, align 8
@.d86 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"Len" }>, align 8
@.d87 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c"a slice with no end of a type with no Len (E31)" }>, align 8
@.d88 = private constant <{ i64, [85 x i8] }> <{ i64 0, [85 x i8] c"a store over a value with destructors to run, reached through what a call gives (O15)" }>, align 8
define linkonce_odr %"compiler/generic:AnyTable" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fgeneric_3aAnyTable(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/generic:AnyTable"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/generic:AnyTable"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/generic:AnyTable", ptr %a0
  store %"compiler/generic:AnyTable" %t2, ptr %l1
  %t3 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/generic:AnyTable", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/generic:AnyTable", ptr %l1
  store %"compiler/generic:AnyTable" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/generic:AnyTable", ptr %rv
  ret %"compiler/generic:AnyTable" %rr
}

declare void @__olang_bang_failed_plain(ptr) cold noreturn
declare ptr @llvm.coro.promise(ptr, i32, i1)
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftypes_3aTypeId_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t4 = extractvalue { i64, ptr } %t3, 0
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb7
bb2:
  store i64 0, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i32, ptr %t15, i64 %t13
  %t17 = load i32, ptr %t16, !tbaa !33
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 %t18
  %t22 = load i32, ptr %t21, !tbaa !33
  %t25 = icmp eq i32 %t17, %t22
  br i1 %t25, label %bb6, label %bb1
bb5:
  br label %bb7
bb6:
  %t27 = load i64, ptr %l6, !tbaa !24
  %t28 = add i64 %t27, 1
  store i64 %t28, ptr %l6, !tbaa !24
  br label %bb3
bb7:
  %t29 = load i1, ptr %l2, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_Ha3611e7042201d9891a66cc0e2a71916(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

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

declare i1 @compiler_2fcheck_2eassignsName(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eexprsAssign(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ectorViewKey(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f6ac6f37bd028998_7777cf96519f6a94 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2etypeOf(ptr %v0, ptr %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ederef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fgeneric_2eFnOwner(i64 %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarCount(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esrc(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSig(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnInstance(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceSig(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewritable(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnBody(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einfersErrs(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebodyErrors(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopesOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ety(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerrsText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCallValueErrors(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, [3 x i64] } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eat(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/check:roFn" @compiler_2fcheck_3aroFn_2ector(ptr %v0, ptr %v1, i64 %a0, i64 %a1, { i64, [3 x i64] } %a2, { i64, ptr } %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aroFn_3e_2ePush_3ccompiler_2fcheck_3aroFn_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/check:roFn" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ememberSpan(%"compiler/source:Span" %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
@olang_loc_e8df0bdf3cd721f8_b505cb518d2727a4 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclModule(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisNumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisMethod(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebracketIn(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSpreadAt(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAxisCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknown(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eone(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eread(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_2766066f05fe458f_c5cb0cc886787dc3 = external constant [0 x i8]
@olang_loc_df2f5c1b7a6ec3a_1ebb90303f11d9ce = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2einvoke(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3, ptr %a4, { i64, ptr } %a5, { i64, ptr } %a6, { i64, ptr } %a7)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fcheck_2eunwrapped(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ereadPlace(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecur(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efr(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eLen_H3aff79531665083e8df6fb2351948096(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eAt__H223e9cc5a62bb13aec2c4037d58f7975(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_3fa0bc2758d24028_39c102aa9b869b2c = external constant [0 x i8]
@olang_loc_386bb7dc57d3fef9_468931e243621ddd = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H06f4ae43b564aa38800728c5b9a6edfe(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_Hb04d670045d084ea2498d9030c4fbba9(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epatWild(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a8e5d5910e328d9f_37a01ee13094de9b = external constant [0 x i8]
declare { i64, ptr } @compiler_2fcheck_2epatTail(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_H19842cc3f9f17801919cd111c108caa0(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseTag(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_90933ee8eaa77cca_eb7025111a161506 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecaseFields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, i64 %a2, ptr %a3)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebyFieldRow(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4)
@olang_loc_dfea15858951d412_c6d9359c158ed526 = external constant [0 x i8]
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eUse(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunknownType(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDeclFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eArgsFit(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eWrittenArity(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2eWrittenTypes(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgCount(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_cf2e89857dc93528_274c4670bc5b9eac = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edefaultSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskDefaultInStatement(ptr %v0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fcheck_3aframe_26_3e_2_H2251bc8fca359ca0394d0bb11af7ba0a(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enewBody(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epush(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2, %"compiler/source:Span" %a3)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eSetVars(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2eLen_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etaskDefault(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eemit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b7a62f2efaadd4af_1b278ceebf7ddf33 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructCount(ptr %v0, i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Make" @compiler_2ftyped_3aMake_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, i64 %a1, { i64, ptr } %a2, ptr %a3, i32 %a4, i32 %a5, i1 %a6)
declare { i64, ptr } @compiler_2fcheck_2egather_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eleavesBlock(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTaskClauseNeedsDefault(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aCapture_26_3e_2eToA_H65e94094dadf75016f6073f244c91f3b(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epop(ptr %v0, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_Ha72624ba64524ee3315305b5d1bfb369(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.91de8c8eb84d52d1e58996aec31d85aa" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20co_H6cf169b12565f300e9fe11f1c8d55061(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2evalue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCondNotBoolType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esameLen(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisZeroLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d2b428b6a63c5a88_9cb41cac42ab9d54 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_dc96952efd58d57f_13ab851f4a84cc1b = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoValueCase(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_e9544fbf2b0a61a9_67f2bf84451b683d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2fast_3aPattern_26_3e_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_9513b8e4767691e9_4aeaec2af08924a5 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecoversRows(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCaseSig(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_115a9cfe723c601c_366482a71f8d2a38 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eToArray_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, ptr %a4, ptr %a5)
declare { i64, i64, i64 } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eopen(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, i64 %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eclose(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereadLocal(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
declare %"compiler/typed:If" @compiler_2ftyped_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eeffX(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_a395790432891bd8_5a5437b807a0153c = external constant [0 x i8]
declare ptr @compiler_2fcheck_2eexprPath(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrorType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_21bd7d1c01cb29ff_7bd6b7239395673b = external constant [0 x i8]
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewordIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalNamed(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocalType(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsErrVal(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1281810c6c9fab58_cb57d964fb88648c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eLen__H3cdfcddd9c493bd8bcefc7b766e0438b(ptr %v0, ptr %a0)
declare %"compiler/check:errNarrow" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aerrNarrow_3e_2eAt_3ccompiler_2fcheck_3aerrNarrow_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2esamePath(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epathRead(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, { i64, ptr } %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esetItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eErrDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enameSpan(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnBuiltinType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnModule(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fload_2eErrQualifier(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclName(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodOnForeignType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorMethodGiven(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2ePreludeType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aStmt_26_3e_2ePush_3ccompiler_2ftyped_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:Item" @compiler_2ftyped_3aItem_2ector(ptr %v0, i32 %a0, i64 %a1)
@olang_loc_8e26fbb1c5557eef_13e6cc5de085742b = external constant [0 x i8]
@olang_loc_6d702b04e725ae1a_71c02c55b3dfc416 = external constant [0 x i8]
declare %"compiler/typed:Clause" @compiler_2ftyped_3aClause_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i64 %a5, i32 %a6)
declare %"compiler/typed:Try" @compiler_2ftyped_3aTry_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i1 %a2, i1 %a3, i1 %a4)
@olang_loc_12a7e56ab193c888_f3ea9b5a769b449c = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elendsPacked(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2econvert(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexternValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eplainStruct(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnCount(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnIsExtern(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eoperatorRole(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fcheck_2eopShapeOf(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2fcheck_2eOpShapes = external constant <{ [8 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], ptr, [16 x i8] }>
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efnErrors(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMethodCannotFail(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edrain(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_ad8923f011cb5acf_6f8a151e60866063 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDtorWritten(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSetStructBody(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisArrayCtor(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_7d50ab2c5aa12498_8b4c363ee458c734 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2eplainLen(ptr %v0, ptr %a0)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eindexOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3)
@olang_loc_b5e16646d0bcdcea_28b1a999ae748f9e = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ewordCount(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eunder(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextType(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eConstToMutRef(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edataAsFixed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i32 %a3, i64 %a4)
@olang_loc_c47153cd0729ef18_9d6ac816410ff05c = external constant [0 x i8]
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eOwnerBinding(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eReadOnly = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:varRow" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eVarAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSubst(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArgs(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ementionsVar(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroleMethod(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2, i64 %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eiterShaped(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMethodSig(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eGlobalDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2eWrittenMut(ptr %v0, ptr %a0)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eExtends(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2eoperatorName(ptr %v0, i32 %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneResult(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ecommuting(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epowMethod(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/check:laneNode" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3alaneNode_3e_2eAt_3ccompiler_2fcheck_3alaneNode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneArray(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elaneElemOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoLimit(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisOver(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eCtorSig(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsFloat(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2elimitIndex(ptr %v0, { i64, ptr } %a0)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ei64(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2elimitBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ealiasModule(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclaresName(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fgeneric_2eListFunctions = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflList" @compiler_2fcheck_3areflList_2ector(ptr %v0, i1 %a0, i32 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fgeneric_2eListBuilders = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/check:reflList" @compiler_2fcheck_2ereflList_2enoList()
declare i64 @compiler_2fcheck_2elistIndex(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescTypeOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/generic:Desc" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eDescOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fgeneric_2eDescCase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListFields = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eDescFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListParams = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fgeneric_2eListResults = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisEnum(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviaTypeVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehasCase(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_7b7c458ad09559c8_7a5ff3a2c3d540e4 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNullable(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarType(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echarValue(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextLit(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fcheck_2ebadSeparator(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIntLiteralTooLarge(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFloatLiteralRange(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2egap(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@olang_loc_1a03149f0250e548_14220af7ccd85b74 = external constant [0 x i8]
@olang_loc_f003e05343083a19_c7eedaa93b775a5 = external constant [0 x i8]
declare ptr @compiler_2fcheck_2ecasePath(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_1a7153eaacfdc8_b1c3cf4a1728a65c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBuilderOf(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i1 %a3)
declare { i32, i32 } @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFindDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstance(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emsgOwner(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAssertMessageNotText(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eboundBy(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/generic:Origin" @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceOrigin(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenericNeeds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorBare(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2echeckedInst(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteGenericNeeds(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eNote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [3 x i64] } %a2, %"compiler/diagmsg:Msg" %a3)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/source:Span" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebetween(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/source:Span" %a2, i64 %a3)
@olang_loc_4d0d10dbd8c28898_8d57e58513238834 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
@olang_loc_bb9360f661a84828_a83eb458d7764d44 = external constant [0 x i8]
@olang_loc_9e3e60c51c241998_753bf57c496fa07c = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ehidden(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emakeEntry(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3, ptr %a4)
@olang_loc_a55a9bf4027c6b18_9fb81a5ff98f01bc = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebindType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownChecked(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eImmut(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4e588e9eb703ca58_549acb49cdd076c4 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedDestruct(ptr %v0)
declare i32 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSelfType(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eBody(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eLayout(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enoteRawBits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2epackedWhat(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eLen_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePackedField(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_24dda45681d8cee1_6133aaee564c4ee5 = external constant [0 x i8]
@olang_loc_f10316e290a7e1b9_b7814005b7d82bcd = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eProtocolPrivate(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edescriptor(ptr %v0, ptr %a0, %"compiler/check:reflList" %a1, i64 %a2)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflBind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDecide(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflUnbind(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_320f9d8592ce2991_bf25bbc6142ecf8d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflFilterUndecided(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflListValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fgeneric_2eProjectsType(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflTypeNotValue(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/check:reflVal" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflConst(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, %"compiler/check:reflVal" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoKind(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLength(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoLayout(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcheck_2eisLimitName(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2edeclKind(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflNoMember(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2fgeneric_2eDescParam = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflDefault(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/generic:Desc" %a2)
@G_2ecompiler_2fgeneric_2eDescField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6fa12bf18c08968_7f63ef0109416d3c = external constant [0 x i8]
@olang_loc_366830190f407939_a82d5f1c611378ed = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReflDescNoMember(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estrBytes(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare { i32, { i64, ptr } } @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ereflRendered(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_3ff8b815b8f08888_72cba32f0bfc98b4 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStrOfNothing(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ewantStr(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, i64 %a3)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eresolve(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eroDeepIn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elengthsMeet(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare %"compiler/check:seqOf" @compiler_2fcheck_3aseqOf_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrMask(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eentryOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2emerged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enormalSet(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eLen_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0)
declare %"compiler/check:Ask" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2erewritten(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eRunning(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eSetAt_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/check:Ask" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAsk_3e_2eTruncate_3ccompiler_2fcheck_3aAsk_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eLen__Hcf51b196874cac8430175c74f3bdddd4(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eAt_3ccompiler_2fcheck_3aAssertAsk_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eSetA_H2f2d9e3b51ec05f25dc2320ca6b31566(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fcheck_3aAssertAsk_3e_2eTrun_Heefffe1e944651b1941f34d83e014b00(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2efold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5ec272a16da13ce8_6a23c064ecfaca54 = external constant [0 x i8]
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eslicedWritable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enullRead(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotIndexable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eaxisRange(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, ptr %a3)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2enotOperator(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, { i64, ptr } %a2, %"compiler/source:Span" %a3, { i64, ptr } %a4, i64 %a5, i1 %a6)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eexprTo(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2)
@olang_loc_5aa0e1f55b10e6f_53045464d54dc2fb = external constant [0 x i8]
@olang_loc_e4f33d7277813d9a_8adeed4fca551266 = external constant [0 x i8]
@olang_loc_b203c9fbf4c249fb_735051f472c86bf = external constant [0 x i8]
@olang_loc_85a2f2931038d80c_e5a946dd8e187d18 = external constant [0 x i8]
declare i32 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2esliceLength(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eArray(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_2f1aad6b95023edd_c82f5ce971f0d619 = external constant [0 x i8]
declare %"compiler/typed:Slice" @compiler_2ftyped_3aSlice_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i32 %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2ebufferField(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estable(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPiece_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOperand(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2etextOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
@olang_loc_763b8bf7b0207b18_a2106654b6caec64 = external constant [0 x i8]
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2elocal(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5)
declare void @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2estmtsOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare ptr @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eownCopy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fcheck_2ecompiler_2fcheck_3aChecker_2eviewable(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_3e_H2474e1fc3c93452d7765e4ed18f29a03(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/generic:AnyTable" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fgeneric_3aAnyTable_3e_2eAt__He9601a52fe5cfa5abe1b41d520aed001(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eSlotKey(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fdiag_3aWhere_3e_2e_Had7920a3eff3220b2e12299d961f9124(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_3aBody_2ector(ptr %out, ptr %v0, i32 %a0, { i64, [2 x i64] } %a1, i32 %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_H84397c9e89cd48160670049091ea20f1(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemoveAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_73788fcff98f9805_b41ea2f3f6de2ed1 = external constant [0 x i8]
@olang_loc_c2b8ccded0b87422_4b497586bdf0fd3e = external constant [0 x i8]
@olang_loc_c457ecfc87e57822_ebd31f6668a566ee = external constant [0 x i8]
@olang_loc_c596147ee3c3620c_9098292257d7bbb8 = external constant [0 x i8]
@olang_loc_cde66c6c8e102014_3203f82d8b2f03c0 = external constant [0 x i8]
@olang_loc_c65b3104d639b10f_156ca11db7f6d433 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/iterator:ViewGenerator.00c7c71992d6e1815cd052c47b979cdd" @compiler_2fgeneric_2eFieldDecls.walk(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fiterator_2estd_2fprelude_2fiterator_3aViewGenerator_3ccompiler_2fast_3aV_Hf179e857cb72c72900f4614cd5df5a25(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_489f62f877911e0f_f9fedbe42e1f3c23 = external constant [0 x i8]
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2eintLit(i64 %a0)
declare %"compiler/check:litv" @compiler_2fcheck_3alitv_2ector(ptr %v0, i1 %a0, i1 %a1, i1 %a2, i64 %a3, double %a4)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2ewideLit(i1 %a0, i128 %a1)
declare %"compiler/check:litv" @compiler_2fcheck_2elitv_2enoLit()
@G_2ecompiler_2ftypes_2eNullable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_c8609edc258484d8_b7e66af2ba2e899c = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_524a47ae64dd06b8_5def175755840fac = external constant [0 x i8]

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
