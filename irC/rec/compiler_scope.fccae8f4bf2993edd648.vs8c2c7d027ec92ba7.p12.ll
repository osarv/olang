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
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" = type { i64, ptr }
%"compiler/typed:DerivedArg" = type { i64, i64, { i64, [2 x i64] } }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0) #0 {
entry:
  %l3 = alloca %"compiler/scope:Val"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s0, i32 2, { i64, [2 x i64] } %a0)
  store %"compiler/scope:Val" %t4, ptr %l3
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  %t5 = load %"compiler/scope:Val", ptr %l3
  store %"compiler/scope:Val" %t5, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ebndText(ptr %v0, i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fscope_2eBndArg, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l1, !tbaa !27
  br label %bb41
bb4:
  %t9 = load i64, ptr %l0, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2fscope_2eBndStore, !tbaa !24
  %t13 = icmp eq i64 %t9, %t10
  br i1 %t13, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d1, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t15 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t15, ptr %l1, !tbaa !27
  br label %bb41
bb8:
  %t17 = load i64, ptr %l0, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2fscope_2eBndCapture, !tbaa !24
  %t21 = icmp eq i64 %t17, %t18
  br i1 %t21, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t23 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t23, ptr %l1, !tbaa !27
  br label %bb41
bb12:
  %t25 = load i64, ptr %l0, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2fscope_2eBndTask, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  br i1 %t29, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t31, ptr %l1, !tbaa !27
  br label %bb41
bb16:
  %t33 = load i64, ptr %l0, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2fscope_2eBndYield, !tbaa !24
  %t37 = icmp eq i64 %t33, %t34
  br i1 %t37, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t39, ptr %l1, !tbaa !27
  br label %bb41
bb20:
  %t41 = load i64, ptr %l0, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2fscope_2eBndAny, !tbaa !24
  %t45 = icmp eq i64 %t41, %t42
  br i1 %t45, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t47, ptr %l1, !tbaa !27
  br label %bb41
bb24:
  %t49 = load i64, ptr %l0, !tbaa !24
  %t50 = load i64, ptr @G_2ecompiler_2fscope_2eBndReturn, !tbaa !24
  %t53 = icmp eq i64 %t49, %t50
  br i1 %t53, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store { i64, ptr } { i64 70, ptr getelementptr inbounds (<{ i64, [70 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t55, ptr %l1, !tbaa !27
  br label %bb41
bb28:
  %t57 = load i64, ptr %l0, !tbaa !24
  %t58 = load i64, ptr @G_2ecompiler_2fscope_2eBndLate, !tbaa !24
  %t61 = icmp eq i64 %t57, %t58
  br i1 %t61, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store { i64, ptr } { i64 72, ptr getelementptr inbounds (<{ i64, [72 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l40, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t63, ptr %l1, !tbaa !27
  br label %bb41
bb32:
  %t65 = load i64, ptr %l0, !tbaa !24
  %t66 = load i64, ptr @G_2ecompiler_2fscope_2eBndLimit, !tbaa !24
  %t69 = icmp eq i64 %t65, %t66
  br i1 %t69, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 97, ptr getelementptr inbounds (<{ i64, [97 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l45, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t71, ptr %l1, !tbaa !27
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t73 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t73, ptr %l1, !tbaa !27
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_ec671dd97260d64c_f93da9a02f31a848)
  unreachable
bb41:
  %t75 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l49, !tbaa !24
  %t77 = load i64, ptr %l49, !tbaa !24
  %t78 = mul i64 %t77, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t78)
  %t80 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  store { i64, ptr } %t81, ptr %l50, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l49, !tbaa !24
  %t87 = mul i64 %t86, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t83, ptr %t85, i64 %t87, i1 false)
  %t88 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t88, ptr %l1, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinBody(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t6, i64 %a1)
  store i64 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eTwinOwn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scope:twinTab", ptr %t4, i32 0, i32 7
  %t10 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t6, i64 %a1)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eVerStats(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l7 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i1
  %l14 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 160
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H8fcfddb96431edc14f722668635d6efd(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l7
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l2
  br label %bb2
bb2:
  %t8 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2ftyped_3aVer_H2a1e5f99aaf12f9319d4a0d8fa08c5a8(ptr %v0, ptr %l2)
  %t9 = extractvalue { i32, i64 } %t8, 1
  %t10 = extractvalue { i32, i64 } %t8, 0
  store i32 %t10, ptr %l11
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store i64 %t9, ptr %l10
  br label %bb3
bb3:
  %t13 = load i64, ptr %l10, !tbaa !24
  store i64 %t13, ptr %l8, !tbaa !24
  br label %bb6
bb4:
  %t14 = load i32, ptr %l11, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  br label %bb13
bb6:
  %t18 = load i64, ptr %l8, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 160
  %t25 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_Hc1c2f3824b4c428f1a58c46bc49e09d4(ptr %v0, ptr %v0, ptr %t21, i64 %t18)
  %t26 = extractvalue { i32, ptr } %t25, 1
  %t27 = extractvalue { i32, ptr } %t25, 0
  store i32 %t27, ptr %l19
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb8, label %ok.29, !prof !99
ok.29:
  store ptr %t26, ptr %l18
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l18, !tbaa !29
  store ptr %t30, ptr %l14, !tbaa !29
  br label %bb10
bb8:
  br label %bb9
bb9:
  br label %bb12
bb10:
  %t31 = load ptr, ptr %l14, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  store i64 %t32, ptr %l20, !tbaa !24
  %t35 = getelementptr %"compiler/typed:Versions", ptr %t31, i32 0, i32 3
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l23
  br label %bb11
bb11:
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = load i64, ptr %l23, !tbaa !24
  %t40 = add i64 %t38, %t39
  store i64 %t40, ptr %l1, !tbaa !24
  br label %bb12
bb12:
  br label %bb2
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 160
  %t46 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l27
  br label %bb14
bb14:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 184
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t53 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = call i64 @__olang_fmt_i64(ptr null, i64 %t54)
  %t56 = add i64 %t53, %t55
  %t57 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t59 = add i64 %t56, %t58
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t47)
  %t62 = add i64 %t59, %t61
  %t63 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t51)
  %t68 = add i64 %t65, %t67
  %t69 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t52, i64 %t53)
  %t73 = getelementptr i8, ptr %t72, i64 %t53
  %t74 = call i64 @__olang_fmt_i64(ptr %t73, i64 %t54)
  %t75 = getelementptr i8, ptr %t73, i64 %t55
  call void @olang_textcopy(ptr %t75, ptr %t57, i64 %t58)
  %t76 = getelementptr i8, ptr %t75, i64 %t58
  %t77 = call i64 @__olang_fmt_i64(ptr %t76, i64 %t47)
  %t78 = getelementptr i8, ptr %t76, i64 %t61
  call void @olang_textcopy(ptr %t78, ptr %t63, i64 %t64)
  %t79 = getelementptr i8, ptr %t78, i64 %t64
  %t80 = call i64 @__olang_fmt_i64(ptr %t79, i64 %t51)
  %t81 = getelementptr i8, ptr %t79, i64 %t67
  call void @olang_textcopy(ptr %t81, ptr %t69, i64 %t70)
  %t82 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t83 = insertvalue { i64, ptr } %t82, ptr %t72, 1
  store { i64, ptr } %t83, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRel(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:rel"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca %"compiler/scope:rel"
  %l10 = alloca i1
  %l13 = alloca i1
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l49 = alloca %"compiler/scope:rel"
  %l50 = alloca { i64, [2 x i64] }
  %l52 = alloca { i64, [2 x i64] }
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca { i64, [2 x i64] }
  %l59 = alloca { i64, [2 x i64] }
  %l61 = alloca i1
  %l63 = alloca i1
  %l73 = alloca ptr
  %l82 = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/scope:rel" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 204
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 5
  store i1 %t4, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 205
  %t10 = load i1, ptr %t9, !tbaa !21
  %t12 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 6
  store i1 %t10, ptr %t12, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 38
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l21
  br label %bb1
bb1:
  %t18 = load i64, ptr %l21, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb2, label %bb3
bb2:
  %t25 = load i64, ptr %l4, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb7
bb4:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l28, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb6
bb6:
  %t45 = load i64, ptr %l28, !tbaa !24
  store i64 %t45, ptr %l25, !tbaa !24
  br label %bb7
bb7:
  %t46 = load i64, ptr %l25, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb9, label %bb10
bb9:
  br label %bb33
bb10:
  br label %bb11
bb11:
  %t55 = load i64, ptr %l2, !tbaa !24
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store i64 %t63, ptr %l7, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 38
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t67, i64 %t68)
  store %"compiler/scope:rel" %t71, ptr %l49
  br label %bb12
bb12:
  %t72 = load %"compiler/scope:rel", ptr %l49
  store %"compiler/scope:rel" %t72, ptr %l8
  %t73 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 0
  %t74 = load { i64, [2 x i64] }, ptr %t73
  store { i64, [2 x i64] } %t74, ptr %l50
  %t75 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 0
  %t76 = load { i64, [2 x i64] }, ptr %t75
  store { i64, [2 x i64] } %t76, ptr %l52
  %t79 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l50, ptr %l52)
  store i1 %t79, ptr %l54
  br label %bb13
bb13:
  %t80 = load i1, ptr %l54, !tbaa !21
  %t81 = xor i1 %t80, true
  br i1 %t81, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb17
bb15:
  %t83 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 1
  %t84 = load { i64, [2 x i64] }, ptr %t83
  store { i64, [2 x i64] } %t84, ptr %l57
  %t85 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 1
  %t86 = load { i64, [2 x i64] }, ptr %t85
  store { i64, [2 x i64] } %t86, ptr %l59
  %t89 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l57, ptr %l59)
  store i1 %t89, ptr %l61
  br label %bb16
bb16:
  %t90 = load i1, ptr %l61, !tbaa !21
  %t91 = xor i1 %t90, true
  store i1 %t91, ptr %l56, !tbaa !21
  br label %bb17
bb17:
  %t93 = load i1, ptr %l56, !tbaa !21
  br i1 %t93, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l63, !tbaa !21
  br label %bb20
bb19:
  %t94 = getelementptr %"compiler/scope:rel", ptr %l8, i32 0, i32 2
  %t95 = load i1, ptr %t94, !tbaa !21
  %t96 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 2
  %t97 = load i1, ptr %t96, !tbaa !21
  %t100 = icmp ne i1 %t95, %t97
  store i1 %t100, ptr %l63, !tbaa !21
  br label %bb20
bb20:
  %t102 = load i1, ptr %l63, !tbaa !21
  br i1 %t102, label %bb21, label %bb22
bb21:
  br label %bb32
bb22:
  br label %bb23
bb23:
  %t103 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 5
  %t104 = load i1, ptr %t103, !tbaa !21
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t108 = load i64, ptr %l7, !tbaa !24
  store i1 false, ptr %l10, !tbaa !21
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 38
  %t116 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v0, ptr %t112, i64 %t108)
  store ptr %t116, ptr %l73
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t117 = load ptr, ptr %l73, !tbaa !29
  %t119 = load i1, ptr %l10, !tbaa !21
  %t122 = getelementptr %"compiler/scope:rel", ptr %t117, i32 0, i32 5
  store i1 %t119, ptr %t122, !tbaa !21
  br label %bb27
bb27:
  %t123 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 6
  %t124 = load i1, ptr %t123, !tbaa !21
  %t126 = xor i1 %t124, true
  br i1 %t126, label %bb28, label %bb29
bb28:
  %t128 = load i64, ptr %l7, !tbaa !24
  store i1 false, ptr %l13, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/scope:Scoper", ptr %t130, i32 0, i32 38
  %t136 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v0, ptr %t132, i64 %t128)
  store ptr %t136, ptr %l82
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t137 = load ptr, ptr %l82, !tbaa !29
  %t139 = load i1, ptr %l13, !tbaa !21
  %t142 = getelementptr %"compiler/scope:rel", ptr %t137, i32 0, i32 6
  store i1 %t139, ptr %t142, !tbaa !21
  br label %bb31
bb31:
  br label %ret
bb32:
  %t143 = load i64, ptr %l6, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l6, !tbaa !24
  br label %bb8
bb33:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 38
  %t150 = load %"compiler/scope:rel", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t149, %"compiler/scope:rel" %t150)
  br label %bb34
bb34:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyParamName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2, i64 %a3) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l21 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca %"compiler/typed:Local"
  %l29 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  %t5 = add i64 %t3, 1
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb3
bb2:
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l6, !tbaa !24
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  store i64 %t10, ptr %l10, !tbaa !24
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 5
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t13)
  store i64 %t15, ptr %l13
  br label %bb4
bb4:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = load i64, ptr %l13, !tbaa !24
  %t18 = icmp slt i64 %t16, %t17
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = getelementptr %"compiler/generic:Program", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/load:Loader", ptr %t26, i32 0, i32 3
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l19, !tbaa !29
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 7
  store ptr %t32, ptr %l21, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 5
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v1, ptr %t35, i64 %t36)
  store i32 %t39, ptr %l25
  br label %bb7
bb6:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t42 = add i64 %t40, 1
  %t43 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t46 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t47 = add i64 %t44, %t46
  %t48 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t43, i64 %t44)
  %t49 = getelementptr i8, ptr %t48, i64 %t44
  %t50 = call i64 @__olang_fmt_i64(ptr %t49, i64 %t42)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t48, 1
  store { i64, ptr } %t52, ptr %l15, !tbaa !27
  br label %bb10
bb7:
  %t54 = load i32, ptr %l25, !tbaa !23
  %t55 = sext i32 %t54 to i64
  %t56 = load ptr, ptr %l21, !tbaa !29
  %t58 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t56, i64 %t55)
  store %"compiler/typed:Local" %t58, ptr %l27
  br label %bb8
bb8:
  %t59 = getelementptr %"compiler/typed:Local", ptr %l27, i32 0, i32 0
  %t60 = load i32, ptr %t59, !tbaa !23
  %t61 = load ptr, ptr %l19, !tbaa !29
  %t63 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v2, ptr %t61, i32 %t60)
  store { i64, ptr } %t63, ptr %l29
  br label %bb9
bb9:
  %t64 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t64, ptr %l15, !tbaa !27
  br label %bb10
bb10:
  %t66 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t67 = extractvalue { i64, ptr } %t66, 0
  store i64 %t67, ptr %l34, !tbaa !24
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = mul i64 %t68, 1
  %t70 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t69)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t70, 1
  store { i64, ptr } %t72, ptr %l35, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l34, !tbaa !24
  %t78 = mul i64 %t77, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t74, ptr %t76, i64 %t78, i1 false)
  %t79 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t79, ptr %l15, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t80, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i32
  %l14 = alloca { i64, [2 x i64] }
  %l24 = alloca %"compiler/typed:SiteInfo"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp slt i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 33
  %t11 = getelementptr %"compiler/typed:Plan", ptr %t10, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t7, %t14
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l5, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  %t21 = load i32, ptr %l1, !tbaa !23
  store i32 %t21, ptr %l13, !tbaa !23
  store { i64, [2 x i64] } %a2, ptr %l14
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 26
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = icmp eq ptr %t26, null
  br i1 %t28, label %bb7, label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c15bfc3d7da0050b_84928957a006184f)
  unreachable
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 26
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Body", ptr %t33, i32 0, i32 9
  %t37 = load i32, ptr %l1, !tbaa !23
  %t39 = sext i32 %t37 to i64
  %t42 = call %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t36, i64 %t39)
  store %"compiler/typed:SiteInfo" %t42, ptr %l24
  br label %bb10
bb10:
  %t43 = getelementptr %"compiler/typed:SiteInfo", ptr %l24, i32 0, i32 1
  %t44 = load %"compiler/source:Span", ptr %t43
  %t45 = load ptr, ptr %l12, !tbaa !29
  %t46 = load i32, ptr %l13, !tbaa !23
  %t47 = load { i64, [2 x i64] }, ptr %l14
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t45, i32 %t46, { i64, [2 x i64] } %t47, %"compiler/source:Span" %t44)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l6 = alloca i1
  %l13 = alloca ptr
  %l16 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i1
  %l25 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 6
  %t14 = load i64, ptr %l1, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l13
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l13, !tbaa !29
  store ptr %t18, ptr %l3, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/scope:summary", ptr %t19, i32 0, i32 20
  %t22 = load i1, ptr %t21, !tbaa !21
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load i64, ptr %l2, !tbaa !24
  store i64 %t24, ptr %l16, !tbaa !24
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/scope:summary", ptr %t25, i32 0, i32 1
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l19
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = load i64, ptr %l19, !tbaa !24
  %t32 = icmp slt i64 %t30, %t31
  br i1 %t32, label %bb11, label %bb12
bb11:
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/scope:summary", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t36, i64 %t37)
  store i1 %t40, ptr %l25
  br label %bb13
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t41 = load i1, ptr %l25, !tbaa !21
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
bb15:
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/scope:summary", ptr %t43, i32 0, i32 19
  %t46 = load i1, ptr %t45, !tbaa !21
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  %t53 = load i64, ptr %l2, !tbaa !24
  %t57 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %t51, i64 %t52, i64 %t53)
  store i1 %t57, ptr %l33
  br label %bb19
bb19:
  %t58 = load i1, ptr %l33, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l30 = alloca i1
  %l41 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l48 = alloca i1
  %s5 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 11
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_1668eb2d997973a7_ab4d69ddc8fad23)
  unreachable
bb5:
  br label %bb6
bb6:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 11
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Block", ptr %t19, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb29
bb9:
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l26, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  store ptr %t43, ptr %l6, !tbaa !29
  %t45 = load ptr, ptr %l6, !tbaa !29
  store ptr %t45, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t46 = load ptr, ptr %l29, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l29, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 17}
  %t52 = icmp eq i64 %t50, 0
  store i1 %t52, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t54 = load ptr, ptr %l6, !tbaa !29
  %t56 = getelementptr { i64, [3 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 1
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l7, !tbaa !23
  %t60 = load ptr, ptr %l6, !tbaa !29
  %t62 = getelementptr { i64, [3 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l8, !tbaa !29
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t66 = load i32, ptr %l7, !tbaa !23
  %t68 = sext i32 %t66 to i64
  %t72 = icmp eq i64 %t68, %a2
  br i1 %t72, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l41, !tbaa !29
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load ptr, ptr %l8, !tbaa !29
  %t80 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s5, ptr %t75, ptr %t76)
  store ptr %t80, ptr %l45
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t82 = call ptr @compiler_2fscope_2eunPassed(ptr %s5, ptr %s5, ptr %t81)
  store ptr %t82, ptr %l46
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l46, !tbaa !29
  %t84 = load ptr, ptr %l41, !tbaa !29
  %t86 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %s5, ptr %t84, ptr %t83)
  store i1 %t86, ptr %l48
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s5)
  %t87 = load i1, ptr %l48, !tbaa !21
  store i1 %t87, ptr %rv
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_ca9fbb609f85e0bf_654dd6319f2fbb3b)
  unreachable
bb27:
  br label %bb28
bb28:
  %t88 = load i64, ptr %l4, !tbaa !24
  %t90 = add i64 %t88, 1
  store i64 %t90, ptr %l4, !tbaa !24
  br label %bb7
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca %"compiler/scope:rel"
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l29 = alloca i1
  %l30 = alloca ptr
  %l31 = alloca i1
  %l40 = alloca i1
  %l43 = alloca ptr
  %l49 = alloca i32
  %l53 = alloca i64
  %l56 = alloca i1
  %l59 = alloca i1
  %l64 = alloca i64
  %l71 = alloca ptr
  %l74 = alloca i64
  %l76 = alloca i64
  %l81 = alloca %"compiler/scope:rel"
  %l84 = alloca i1
  %l89 = alloca i1
  %l92 = alloca i1
  %l103 = alloca i64
  %l106 = alloca { i64, [2 x i64] }
  %l109 = alloca { i64, ptr }
  %l113 = alloca { i64, [2 x i64] }
  %l117 = alloca i1
  %l121 = alloca i1
  %l128 = alloca i64
  %l131 = alloca i1
  %l135 = alloca i1
  %l138 = alloca i1
  %l140 = alloca i1
  %l147 = alloca i1
  %l151 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i1
  %l162 = alloca { i64, ptr }
  %l169 = alloca i1
  %rv = alloca i1
  %t205 = alloca { i64, [2 x i64] }, align 8
  %t225 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t23 = load { i64, [2 x i64] }, ptr %l2
  %t27 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %t21, ptr %t22, { i64, [2 x i64] } %t23)
  store i1 %t27, ptr %l29
  br label %bb9
bb9:
  %t28 = load i1, ptr %l29, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t30 = load ptr, ptr %l30, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t33 = load ptr, ptr %l30, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 18}
  %t36 = icmp eq i64 %t34, 17
  store i1 %t36, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t37 = load i1, ptr %l31, !tbaa !21
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t40, i32 0, i32 2
  %t42 = load ptr, ptr %t41
  store ptr %t42, ptr %l4, !tbaa !29
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l4, !tbaa !29
  %t47 = load { i64, [2 x i64] }, ptr %l2
  %t51 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuiltOK(ptr %v0, ptr %v1, ptr %t44, ptr %t45, { i64, [2 x i64] } %t47)
  store i1 %t51, ptr %l40
  br label %bb16
bb16:
  %t52 = load i1, ptr %l40, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_51647c5149cfd088_fff8b53f00e80584)
  unreachable
bb22:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t56 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t53)
  store ptr %t56, ptr %l43
  br label %bb23
bb23:
  %t57 = load ptr, ptr %l43, !tbaa !29
  store ptr %t57, ptr %l5, !tbaa !29
  %t58 = load ptr, ptr %l5, !tbaa !29
  %t60 = icmp eq ptr %t58, null
  br i1 %t60, label %bb24, label %bb25
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t67 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t63, ptr %t64)
  store i32 %t67, ptr %l49
  br label %bb27
bb27:
  %t68 = load i32, ptr %l49, !tbaa !23
  store i32 %t68, ptr %l6, !tbaa !23
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Call", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t76 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t69, ptr %t73)
  store i64 %t76, ptr %l53
  br label %bb28
bb28:
  %t77 = load i64, ptr %l53, !tbaa !24
  store i64 %t77, ptr %l7, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp slt i64 %t78, 0
  br i1 %t80, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb32
bb30:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %t82, i64 %t83)
  store i1 %t86, ptr %l59
  br label %bb31
bb31:
  %t87 = load i1, ptr %l59, !tbaa !21
  %t88 = xor i1 %t87, true
  store i1 %t88, ptr %l56, !tbaa !21
  br label %bb32
bb32:
  %t90 = load i1, ptr %l56, !tbaa !21
  br i1 %t90, label %bb33, label %bb34
bb33:
  store i1 false, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i32, ptr %l6, !tbaa !23
  %t96 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %t92, i32 %t93)
  store i64 %t96, ptr %l64
  br label %bb36
bb36:
  %t97 = load i64, ptr %l64, !tbaa !24
  store i64 %t97, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = icmp slt i64 %t98, 0
  br i1 %t100, label %bb37, label %bb38
bb37:
  store i1 true, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 6
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t105, i64 %t106)
  store ptr %t109, ptr %l71
  br label %bb40
bb40:
  %t110 = load ptr, ptr %l71, !tbaa !29
  %t112 = getelementptr %"compiler/scope:summary", ptr %t110, i32 0, i32 0
  store ptr %t112, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb41
bb41:
  %t114 = load i64, ptr %l10, !tbaa !24
  store i64 %t114, ptr %l74, !tbaa !24
  %t115 = load ptr, ptr %l9, !tbaa !29
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l76
  br label %bb42
bb42:
  %t118 = load i64, ptr %l74, !tbaa !24
  %t119 = load i64, ptr %l76, !tbaa !24
  %t120 = icmp slt i64 %t118, %t119
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb43, label %bb44
bb43:
  br label %bb126
bb44:
  br label %bb45
bb45:
  %t124 = load ptr, ptr %l9, !tbaa !29
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t124, i64 %t125)
  store %"compiler/scope:rel" %t128, ptr %l81
  br label %bb46
bb46:
  %t129 = load %"compiler/scope:rel", ptr %l81
  store %"compiler/scope:rel" %t129, ptr %l11
  %t130 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 1
  %t131 = load { i64, [2 x i64] }, ptr %t130
  %t133 = extractvalue { i64, [2 x i64] } %t131, 0
  %t134 = icmp eq i64 %t133, 2
  br i1 %t134, label %bb47, label %bb48
bb47:
  %t136 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 1
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 1
  %t138 = getelementptr { i64 }, ptr %t137, i32 0, i32 0
  %t139 = load i64, ptr %t138
  %t140 = load i64, ptr %l8, !tbaa !24
  %t143 = icmp eq i64 %t139, %t140
  store i1 %t143, ptr %l84, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb49
bb49:
  %t145 = load i1, ptr %l84, !tbaa !21
  %t146 = xor i1 %t145, true
  br i1 %t146, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l89, !tbaa !21
  br label %bb55
bb51:
  %t148 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 0
  %t149 = load { i64, [2 x i64] }, ptr %t148
  %t151 = extractvalue { i64, [2 x i64] } %t149, 0
  %t152 = icmp eq i64 %t151, 2
  br i1 %t152, label %bb52, label %bb53
bb52:
  %t154 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 0
  %t155 = getelementptr { i64, [2 x i64] }, ptr %t154, i32 0, i32 1
  %t156 = getelementptr { i64 }, ptr %t155, i32 0, i32 0
  %t157 = load i64, ptr %t156
  %t158 = load i64, ptr %l8, !tbaa !24
  %t161 = icmp eq i64 %t157, %t158
  store i1 %t161, ptr %l92, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb54
bb54:
  %t163 = load i1, ptr %l92, !tbaa !21
  store i1 %t163, ptr %l89, !tbaa !21
  br label %bb55
bb55:
  %t164 = load i1, ptr %l89, !tbaa !21
  br i1 %t164, label %bb56, label %bb57
bb56:
  br label %bb125
bb57:
  br label %bb58
bb58:
  %t165 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 0
  %t166 = load { i64, [2 x i64] }, ptr %t165
  store { i64, [2 x i64] } %t166, ptr %l12
  %t168 = load { i64, [2 x i64] }, ptr %l12
  %t170 = extractvalue { i64, [2 x i64] } %t168, 0
  %t171 = icmp eq i64 %t170, 2
  br i1 %t171, label %bb59, label %bb60
bb59:
  %t173 = getelementptr { i64, [2 x i64] }, ptr %l12, i32 0, i32 1
  %t174 = getelementptr { i64 }, ptr %t173, i32 0, i32 0
  %t175 = load i64, ptr %t174
  store i64 %t175, ptr %l13, !tbaa !24
  br label %bb61
bb60:
  br label %bb115
bb61:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load ptr, ptr %l5, !tbaa !29
  %t179 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 0
  %t180 = load { i64, [2 x i64] }, ptr %t179
  %t184 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %t177, ptr %t178, { i64, [2 x i64] } %t180)
  store i64 %t184, ptr %l103
  br label %bb62
bb62:
  %t185 = load i64, ptr %l103, !tbaa !24
  store i64 %t185, ptr %l14, !tbaa !24
  %t186 = load i64, ptr %l14, !tbaa !24
  %t188 = icmp sge i64 %t186, 0
  br i1 %t188, label %bb63, label %bb64
bb63:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l5, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Call", ptr %t191, i32 0, i32 1
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l109, !tbaa !27
  %t195 = load i64, ptr %l14, !tbaa !24
  %t197 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr ptr, ptr %t198, i64 %t195
  %t200 = load ptr, ptr %t199, !tbaa !39
  %t204 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t190, ptr %t200)
  store { i64, [2 x i64] } %t204, ptr %l113
  br label %bb65
bb64:
  store { i64, [2 x i64] } zeroinitializer, ptr %t205
  %t206 = getelementptr { i64, [2 x i64] }, ptr %t205, i32 0, i32 0
  store i64 0, ptr %t206
  %t207 = load { i64, [2 x i64] }, ptr %t205
  store { i64, [2 x i64] } %t207, ptr %l106
  br label %bb66
bb65:
  %t209 = load { i64, [2 x i64] }, ptr %l113
  store { i64, [2 x i64] } %t209, ptr %l106
  br label %bb66
bb66:
  %t210 = load { i64, [2 x i64] }, ptr %l106
  store { i64, [2 x i64] } %t210, ptr %l15
  %t211 = load { i64, [2 x i64] }, ptr %l15
  %t213 = extractvalue { i64, [2 x i64] } %t211, 0
  %t214 = icmp eq i64 %t213, 0
  br i1 %t214, label %bb67, label %bb68
bb67:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = load ptr, ptr %l5, !tbaa !29
  %t218 = load i64, ptr %l13, !tbaa !24
  %t222 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticVar(ptr %v0, ptr %v1, ptr %t216, ptr %t217, i64 %t218)
  store i1 %t222, ptr %l121
  br label %bb69
bb68:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb70
bb69:
  %t223 = load i1, ptr %l121, !tbaa !21
  store i1 %t223, ptr %l117, !tbaa !21
  br label %bb70
bb70:
  %t224 = load i1, ptr %l117, !tbaa !21
  br i1 %t224, label %bb71, label %bb72
bb71:
  store { i64, [2 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [2 x i64] }, ptr %t225, i32 0, i32 0
  store i64 3, ptr %t226
  %t227 = load { i64, [2 x i64] }, ptr %t225
  store { i64, [2 x i64] } %t227, ptr %l15
  br label %bb73
bb72:
  br label %bb73
bb73:
  %t229 = load { i64, [2 x i64] }, ptr %l15
  %t231 = extractvalue { i64, [2 x i64] } %t229, 0
  %t232 = icmp eq i64 %t231, 0
  br i1 %t232, label %bb74, label %bb75
bb74:
  br label %bb125
bb75:
  br label %bb76
bb76:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load { i64, [2 x i64] }, ptr %l15
  %t236 = load { i64, [2 x i64] }, ptr %l2
  %t240 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t234, { i64, [2 x i64] } %t235, { i64, [2 x i64] } %t236)
  store i64 %t240, ptr %l128
  br label %bb77
bb77:
  %t241 = load i64, ptr %l128, !tbaa !24
  store i64 %t241, ptr %l16, !tbaa !24
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 147
  %t245 = load i1, ptr %t244, !tbaa !21
  br i1 %t245, label %bb78, label %bb79
bb78:
  %t247 = load i64, ptr %l16, !tbaa !24
  %t248 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t251 = icmp eq i64 %t247, %t248
  store i1 %t251, ptr %l131, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb80
bb80:
  %t253 = load i1, ptr %l131, !tbaa !21
  br i1 %t253, label %bb81, label %bb82
bb81:
  %t254 = load i64, ptr %l14, !tbaa !24
  %t256 = icmp sge i64 %t254, 0
  store i1 %t256, ptr %l135, !tbaa !21
  br label %bb83
bb82:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb83
bb83:
  %t258 = load i1, ptr %l135, !tbaa !21
  br i1 %t258, label %bb84, label %bb85
bb84:
  %t259 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 5
  %t260 = load i1, ptr %t259, !tbaa !21
  store i1 %t260, ptr %l138, !tbaa !21
  br label %bb86
bb85:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb86
bb86:
  %t262 = load i1, ptr %l138, !tbaa !21
  br i1 %t262, label %bb87, label %bb88
bb87:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %t263, i32 0, i32 207
  %t266 = load i1, ptr %t265, !tbaa !21
  %t268 = xor i1 %t266, true
  store i1 %t268, ptr %l140, !tbaa !21
  br label %bb89
bb88:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb89
bb89:
  %t270 = load i1, ptr %l140, !tbaa !21
  br i1 %t270, label %bb90, label %bb91
bb90:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/scope:Scoper", ptr %t271, i32 0, i32 210
  store i1 true, ptr %t273, !tbaa !21
  br label %bb92
bb91:
  br label %bb92
bb92:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/scope:Scoper", ptr %t274, i32 0, i32 147
  %t277 = load i1, ptr %t276, !tbaa !21
  br i1 %t277, label %bb93, label %bb94
bb93:
  %t279 = load i64, ptr %l16, !tbaa !24
  %t280 = load i64, ptr @G_2ecompiler_2fscope_2eFailsBlock, !tbaa !24
  %t283 = icmp eq i64 %t279, %t280
  store i1 %t283, ptr %l147, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb95
bb95:
  %t285 = load i1, ptr %l147, !tbaa !21
  br i1 %t285, label %bb96, label %bb97
bb96:
  %t286 = load i64, ptr %l14, !tbaa !24
  %t288 = icmp sge i64 %t286, 0
  store i1 %t288, ptr %l151, !tbaa !21
  br label %bb98
bb97:
  store i1 false, ptr %l151, !tbaa !21
  br label %bb98
bb98:
  %t290 = load i1, ptr %l151, !tbaa !21
  br i1 %t290, label %bb99, label %bb100
bb99:
  %t291 = getelementptr %"compiler/scope:rel", ptr %l11, i32 0, i32 5
  %t292 = load i1, ptr %t291, !tbaa !21
  %t294 = xor i1 %t292, true
  br i1 %t294, label %bb101, label %bb102
bb100:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb104
bb101:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb103
bb102:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/scope:Scoper", ptr %t296, i32 0, i32 207
  %t299 = load i1, ptr %t298, !tbaa !21
  store i1 %t299, ptr %l157, !tbaa !21
  br label %bb103
bb103:
  %t301 = load i1, ptr %l157, !tbaa !21
  store i1 %t301, ptr %l154, !tbaa !21
  br label %bb104
bb104:
  %t302 = load i1, ptr %l154, !tbaa !21
  br i1 %t302, label %bb105, label %bb106
bb105:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load ptr, ptr %l5, !tbaa !29
  %t306 = getelementptr %"compiler/typed:Call", ptr %t304, i32 0, i32 1
  %t307 = load { i64, ptr }, ptr %t306, !tbaa !27
  store { i64, ptr } %t307, ptr %l162, !tbaa !27
  %t308 = load i64, ptr %l14, !tbaa !24
  %t310 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t311 = load ptr, ptr %t310, !tbaa !27
  %t312 = getelementptr ptr, ptr %t311, i64 %t308
  %t313 = load ptr, ptr %t312, !tbaa !39
  %t314 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %t303, ptr %t313, { i64, [2 x i64] } %t314)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb108
bb108:
  %t318 = load i64, ptr %l16, !tbaa !24
  %t319 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t322 = icmp ne i64 %t318, %t319
  br i1 %t322, label %bb109, label %bb110
bb109:
  %t324 = load i64, ptr %l16, !tbaa !24
  %t325 = load i64, ptr @G_2ecompiler_2fscope_2eObliged, !tbaa !24
  %t328 = icmp ne i64 %t324, %t325
  store i1 %t328, ptr %l169, !tbaa !21
  br label %bb111
bb110:
  store i1 false, ptr %l169, !tbaa !21
  br label %bb111
bb111:
  %t330 = load i1, ptr %l169, !tbaa !21
  br i1 %t330, label %bb112, label %bb113
bb112:
  store i1 false, ptr %rv
  br label %ret
bb113:
  br label %bb114
bb114:
  br label %bb124
bb115:
  %t332 = load { i64, [2 x i64] }, ptr %l12
  %t334 = extractvalue { i64, [2 x i64] } %t332, 0
  %t335 = icmp eq i64 %t334, 3
  br i1 %t335, label %bb116, label %bb117
bb116:
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %bb124
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  store i1 false, ptr %rv
  br label %ret
bb123:
  call void @__olang_check_failed(ptr @olang_loc_40698dacb4c14a59_3145716d01d07175)
  unreachable
bb124:
  br label %bb125
bb125:
  %t338 = load i64, ptr %l10, !tbaa !24
  %t340 = add i64 %t338, 1
  store i64 %t340, ptr %l10, !tbaa !24
  br label %bb41
bb126:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseParts(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i64
  %l17 = alloca { i64, ptr }
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i32
  %s4 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb19
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  store i32 %t21, ptr %l6, !tbaa !23
  %t23 = load i32, ptr %l6, !tbaa !23
  %t25 = icmp eq i32 %t23, 0
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb18
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s4
  %t28 = load i32, ptr %l6, !tbaa !23
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %s4, ptr %a0, i32 %t28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l24
  br label %bb8
bb8:
  %t32 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t33 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %t33
  store ptr %t33, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb9
bb9:
  %t35 = load i64, ptr %l8, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  %t36 = load ptr, ptr %l7, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %s4, ptr %t36)
  store i64 %t38, ptr %l28
  br label %bb10
bb10:
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = load i64, ptr %l28, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb11, label %bb12
bb11:
  br label %bb17
bb12:
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l7, !tbaa !29
  %t46 = load i64, ptr %l8, !tbaa !24
  %t49 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s4, ptr %t45, i64 %t46)
  store i32 %t49, ptr %l33
  br label %bb14
bb14:
  %t50 = load i32, ptr %l33, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v2, ptr %a2, i32 %t50)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l8, !tbaa !24
  br label %bb9
bb17:
  call void @__olang_scope_close(ptr %s4)
  br label %bb18
bb18:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t61 = add i64 %t59, 1
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb1
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceOfPlaces(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l24 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l40 = alloca { i64, ptr }
  %l47 = alloca i1
  %l51 = alloca i1
  %rv = alloca i1
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
  %t8 = icmp eq i64 %t6, 11
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Cond", ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t23 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t16, ptr %t20)
  store i1 %t23, ptr %l17
  br label %bb6
bb6:
  %t24 = load i1, ptr %l17, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb10
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Cond", ptr %t28, i32 0, i32 2
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t35 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t27, ptr %t31)
  store i1 %t35, ptr %l24
  br label %bb9
bb9:
  %t36 = load i1, ptr %l24, !tbaa !21
  %t37 = xor i1 %t36, true
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l19, !tbaa !21
  store i1 %t39, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t41 = load ptr, ptr %l26, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb12, label %bb13
bb12:
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 18}
  %t47 = icmp eq i64 %t45, 13
  store i1 %t47, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb14, label %bb15
bb14:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [5 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l3, !tbaa !29
  br label %bb16
bb15:
  br label %bb30
bb16:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Match", ptr %t55, i32 0, i32 1
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t60 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t60, 0
  store i64 %t62, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t64 = load i64, ptr %l5, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb18, label %bb19
bb18:
  br label %bb29
bb19:
  br label %bb20
bb20:
  %t72 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t72, ptr %l40, !tbaa !27
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr ptr, ptr %t76, i64 %t73
  %t78 = load ptr, ptr %t77, !tbaa !39
  store ptr %t78, ptr %l7, !tbaa !29
  %t80 = load ptr, ptr %l7, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Arm", ptr %t80, i32 0, i32 4
  %t83 = load ptr, ptr %t82, !tbaa !29
  %t85 = icmp eq ptr %t83, null
  %t87 = xor i1 %t85, true
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l7, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Arm", ptr %t90, i32 0, i32 4
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %t89, ptr %t93)
  store i1 %t96, ptr %l51
  br label %bb23
bb22:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb24
bb23:
  %t97 = load i1, ptr %l51, !tbaa !21
  %t98 = xor i1 %t97, true
  store i1 %t98, ptr %l47, !tbaa !21
  br label %bb24
bb24:
  %t100 = load i1, ptr %l47, !tbaa !21
  br i1 %t100, label %bb25, label %bb26
bb25:
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t102 = load i64, ptr %l5, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l5, !tbaa !24
  br label %bb17
bb29:
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
  call void @__olang_check_failed(ptr @olang_loc_d9b9c9fdb1541cd0_611f76d9a930dfc4)
  unreachable
bb35:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l22 = alloca i64
  %l25 = alloca i1
  %l34 = alloca %"compiler/typed:Local"
  %l37 = alloca i1
  %l46 = alloca %"compiler/typed:Local"
  %l50 = alloca ptr
  %l51 = alloca i1
  %l58 = alloca { i64, [2 x i64] }
  %l59 = alloca ptr
  %l60 = alloca i1
  %l69 = alloca ptr
  %l75 = alloca { i64, [2 x i64] }
  %l76 = alloca ptr
  %l77 = alloca i1
  %l84 = alloca i32
  %l93 = alloca i64
  %l96 = alloca i1
  %l105 = alloca { i64, ptr }
  %l108 = alloca { i64, [2 x i64] }
  %l113 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t89 = alloca { i64, [2 x i64] }, align 8
  %t136 = alloca { i64, [2 x i64] }, align 8
  %t183 = alloca { i64, [2 x i64] }, align 8
  %t214 = alloca { i64, [2 x i64] }, align 8
  %t233 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t17 = load ptr, ptr %l15, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l15, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 3
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l2, !tbaa !29
  br label %bb9
bb8:
  br label %bb28
bb9:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t31)
  store i64 %t33, ptr %l22
  br label %bb10
bb10:
  %t34 = load i64, ptr %l22, !tbaa !24
  store i64 %t34, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp slt i64 %t35, 0
  br i1 %t37, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb17
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 26
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  br i1 %t44, label %bb13, label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_a1ec21eff352729b_aca5e7333e83904f)
  unreachable
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 26
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 7
  %t53 = load i64, ptr %l3, !tbaa !24
  %t56 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/typed:Local" %t56, ptr %l34
  br label %bb16
bb16:
  %t57 = getelementptr %"compiler/typed:Local", ptr %l34, i32 0, i32 4
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 7}
  %t60 = trunc i64 4 to i32
  %t61 = icmp eq i32 %t58, %t60
  store i1 %t61, ptr %l25, !tbaa !21
  br label %bb17
bb17:
  %t63 = load i1, ptr %l25, !tbaa !21
  br i1 %t63, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 26
  %t67 = load ptr, ptr %t66, !tbaa !29
  %t69 = icmp eq ptr %t67, null
  br i1 %t69, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_a1ec21eff352729b_aca5e7333e83904f)
  unreachable
bb21:
  br label %bb22
bb22:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 26
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Body", ptr %t74, i32 0, i32 7
  %t78 = load i64, ptr %l3, !tbaa !24
  %t81 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t77, i64 %t78)
  store %"compiler/typed:Local" %t81, ptr %l46
  br label %bb23
bb23:
  %t82 = getelementptr %"compiler/typed:Local", ptr %l46, i32 0, i32 4
  %t83 = load i32, ptr %t82, !range !{i32 0, i32 7}
  %t85 = trunc i64 2 to i32
  %t86 = icmp eq i32 %t83, %t85
  store i1 %t86, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t88 = load i1, ptr %l37, !tbaa !21
  br i1 %t88, label %bb25, label %bb26
bb25:
  store { i64, [2 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [2 x i64] }, ptr %t89, i32 0, i32 0
  store i64 0, ptr %t90
  %t91 = load { i64, [2 x i64] }, ptr %t89
  store { i64, [2 x i64] } %t91, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  br label %bb71
bb28:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t94 = load ptr, ptr %l50, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l50, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 17
  store i1 %t100, ptr %l51, !tbaa !21
  br label %bb30
bb30:
  %t101 = load i1, ptr %l51, !tbaa !21
  br i1 %t101, label %bb31, label %bb32
bb31:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l4, !tbaa !29
  %t112 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %t108, ptr %t109)
  store { i64, [2 x i64] } %t112, ptr %l58
  br label %bb34
bb34:
  %t113 = load { i64, [2 x i64] }, ptr %l58
  store { i64, [2 x i64] } %t113, ptr %rv
  br label %ret
bb35:
  %t114 = load ptr, ptr %l1, !tbaa !29
  store ptr %t114, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t115 = load ptr, ptr %l59, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb36, label %bb37
bb36:
  %t118 = load ptr, ptr %l59, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 18}
  %t121 = icmp eq i64 %t119, 12
  store i1 %t121, ptr %l60, !tbaa !21
  br label %bb37
bb37:
  %t122 = load i1, ptr %l60, !tbaa !21
  br i1 %t122, label %bb38, label %bb39
bb38:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr { i64, [5 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t125, i32 0, i32 2
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l5, !tbaa !29
  br label %bb40
bb39:
  br label %bb48
bb40:
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t131 = getelementptr %"compiler/typed:Seq", ptr %t129, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !29
  %t134 = icmp eq ptr %t132, null
  br i1 %t134, label %bb41, label %bb42
bb41:
  store { i64, [2 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 0
  store i64 0, ptr %t137
  %t138 = load { i64, [2 x i64] }, ptr %t136
  store { i64, [2 x i64] } %t138, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l69, !tbaa !29
  %t141 = load ptr, ptr %l5, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Seq", ptr %t141, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  br i1 %t146, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_6a15e9d69b373cac_743969cd544e6370)
  unreachable
bb45:
  br label %bb46
bb46:
  %t148 = load ptr, ptr %l5, !tbaa !29
  %t150 = getelementptr %"compiler/typed:Seq", ptr %t148, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !29
  %t152 = load ptr, ptr %l69, !tbaa !29
  %t154 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %t152, ptr %t151)
  store { i64, [2 x i64] } %t154, ptr %l75
  br label %bb47
bb47:
  %t155 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t155, ptr %rv
  br label %ret
bb48:
  %t156 = load ptr, ptr %l1, !tbaa !29
  store ptr %t156, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t157 = load ptr, ptr %l76, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb49, label %bb50
bb49:
  %t160 = load ptr, ptr %l76, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 18}
  %t163 = icmp eq i64 %t161, 6
  store i1 %t163, ptr %l77, !tbaa !21
  br label %bb50
bb50:
  %t164 = load i1, ptr %l77, !tbaa !21
  br i1 %t164, label %bb51, label %bb52
bb51:
  %t165 = load ptr, ptr %l1, !tbaa !29
  %t167 = getelementptr { i64, [5 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t167, i32 0, i32 2
  %t169 = load ptr, ptr %t168
  store ptr %t169, ptr %l6, !tbaa !29
  br label %bb53
bb52:
  br label %bb66
bb53:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l6, !tbaa !29
  %t175 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t171, ptr %t172)
  store i32 %t175, ptr %l84
  br label %bb54
bb54:
  %t176 = load i32, ptr %l84, !tbaa !23
  store i32 %t176, ptr %l7, !tbaa !23
  %t177 = load i32, ptr %l7, !tbaa !23
  %t178 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t181 = icmp eq i32 %t177, %t178
  br i1 %t181, label %bb55, label %bb56
bb55:
  store { i64, [2 x i64] } zeroinitializer, ptr %t183
  %t184 = getelementptr { i64, [2 x i64] }, ptr %t183, i32 0, i32 0
  store i64 0, ptr %t184
  %t185 = load { i64, [2 x i64] }, ptr %t183
  store { i64, [2 x i64] } %t185, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/generic:Program", ptr %t190, i32 0, i32 2
  %t193 = load i32, ptr %l7, !tbaa !23
  %t196 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t192, i32 %t193, i64 0)
  store i64 %t196, ptr %l93
  br label %bb58
bb58:
  %t197 = load i64, ptr %l93, !tbaa !24
  store i64 %t197, ptr %l8, !tbaa !24
  %t198 = load i64, ptr %l8, !tbaa !24
  %t200 = icmp slt i64 %t198, 0
  br i1 %t200, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l96, !tbaa !21
  br label %bb61
bb60:
  %t202 = load i64, ptr %l8, !tbaa !24
  %t203 = load ptr, ptr %l6, !tbaa !29
  %t205 = getelementptr %"compiler/typed:Call", ptr %t203, i32 0, i32 1
  %t206 = load { i64, ptr }, ptr %t205, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 0
  %t211 = icmp sge i64 %t202, %t208
  store i1 %t211, ptr %l96, !tbaa !21
  br label %bb61
bb61:
  %t213 = load i1, ptr %l96, !tbaa !21
  br i1 %t213, label %bb62, label %bb63
bb62:
  store { i64, [2 x i64] } zeroinitializer, ptr %t214
  %t215 = getelementptr { i64, [2 x i64] }, ptr %t214, i32 0, i32 0
  store i64 0, ptr %t215
  %t216 = load { i64, [2 x i64] }, ptr %t214
  store { i64, [2 x i64] } %t216, ptr %rv
  br label %ret
bb63:
  br label %bb64
bb64:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load ptr, ptr %l6, !tbaa !29
  %t221 = getelementptr %"compiler/typed:Call", ptr %t219, i32 0, i32 1
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l105, !tbaa !27
  %t223 = load i64, ptr %l8, !tbaa !24
  %t225 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr ptr, ptr %t226, i64 %t223
  %t228 = load ptr, ptr %t227, !tbaa !39
  %t231 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoicePeek(ptr %v0, ptr %v1, ptr %t218, ptr %t228)
  store { i64, [2 x i64] } %t231, ptr %l108
  br label %bb65
bb65:
  %t232 = load { i64, [2 x i64] }, ptr %l108
  store { i64, [2 x i64] } %t232, ptr %rv
  br label %ret
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store { i64, [2 x i64] } zeroinitializer, ptr %t233
  %t234 = getelementptr { i64, [2 x i64] }, ptr %t233, i32 0, i32 0
  store i64 0, ptr %t234
  %t235 = load { i64, [2 x i64] }, ptr %t233
  store { i64, [2 x i64] } %t235, ptr %rv
  br label %ret
bb70:
  call void @__olang_check_failed(ptr @olang_loc_978a3a8ab30b0468_2bda6bca2d56e7fc)
  unreachable
bb71:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t242 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %t237, ptr %t238)
  store { i64, [2 x i64] } %t242, ptr %l113
  br label %bb72
bb72:
  %t243 = load { i64, [2 x i64] }, ptr %l113
  store { i64, [2 x i64] } %t243, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclauseBuilds(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l25 = alloca i64
  %l28 = alloca i64
  %l48 = alloca { i64, [1 x i64] }
  %l55 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l15, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 6
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l17
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l19
  br label %bb2
bb2:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l4
  store i1 false, ptr %l5, !tbaa !21
  store i64 0, ptr %l6, !tbaa !24
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l4)
  store i64 %t16, ptr %l21
  br label %bb3
bb3:
  %t17 = load i64, ptr %l21, !tbaa !24
  store i64 %t17, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l7, !tbaa !24
  %t19 = load i64, ptr %l6, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load i64, ptr %l8, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb9
bb6:
  %t28 = load i64, ptr %l7, !tbaa !24
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l8, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l8, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l28, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb8
bb8:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb10
bb10:
  %t46 = load i64, ptr %l10, !tbaa !24
  %t47 = load i64, ptr %l9, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb11, label %bb12
bb11:
  br label %bb24
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l10, !tbaa !24
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l11, !tbaa !24
  %t64 = load i64, ptr %l11, !tbaa !24
  %t67 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %s0, ptr %l4, i64 %t64)
  store { i64, [1 x i64] } %t67, ptr %l48
  br label %bb14
bb14:
  %t68 = load { i64, [1 x i64] }, ptr %l48
  %t70 = extractvalue { i64, [1 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 1
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb15, label %bb16
bb15:
  br label %bb23
bb16:
  br label %bb17
bb17:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t81 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %t75, i64 %t76, i64 %t77)
  store i1 %t81, ptr %l55
  br label %bb18
bb18:
  %t82 = load i1, ptr %l55, !tbaa !21
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %t83, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3, i64 %t86, i64 %t87)
  br label %bb21
bb20:
  br label %bb22
bb21:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l10, !tbaa !24
  br label %bb10
bb24:
  %t97 = load i1, ptr %l5, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  store i1 %t97, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitErrorAt(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca %"compiler/diagmsg:Msg"
  %l5 = alloca { i64, ptr }
  %l8 = alloca i1
  %l10 = alloca { i64, [2 x i64] }
  %l13 = alloca { i64, [2 x i64] }
  %l15 = alloca i1
  %l16 = alloca ptr
  %l18 = alloca %"compiler/source:Span"
  %l21 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca %"compiler/diagmsg:Msg"
  %l23 = alloca %"compiler/diagmsg:Msg"
  %l24 = alloca i64
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l30 = alloca i1
  %l33 = alloca i1
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca %"compiler/diagmsg:Msg"
  %l51 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca { i64, [2 x i64] }
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l66 = alloca [24 x i8]
  %l80 = alloca ptr
  %l87 = alloca ptr
  %l96 = alloca %"compiler/typed:Local"
  %l98 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l101 = alloca i64
  %l104 = alloca %"compiler/diagmsg:Msg"
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l111 = alloca %"compiler/diagmsg:Msg"
  %l112 = alloca %"compiler/diagmsg:Msg"
  %l118 = alloca %"compiler/diagmsg:Msg"
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l126 = alloca %"compiler/diagmsg:Msg"
  %l127 = alloca %"compiler/diagmsg:Msg"
  %l128 = alloca %"compiler/diagmsg:Msg"
  %l129 = alloca %"compiler/diagmsg:Msg"
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l136 = alloca %"compiler/diagmsg:Msg"
  %l142 = alloca %"compiler/diagmsg:Msg"
  %l143 = alloca %"compiler/diagmsg:Msg"
  %l156 = alloca %"compiler/diagmsg:Msg"
  %l157 = alloca %"compiler/diagmsg:Msg"
  %l158 = alloca %"compiler/diagmsg:Msg"
  %l159 = alloca %"compiler/diagmsg:Msg"
  %l165 = alloca %"compiler/diagmsg:Msg"
  %l166 = alloca %"compiler/diagmsg:Msg"
  %l172 = alloca i64
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 83
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 87
  %t9 = load { i64, [2 x i64] }, ptr %t8
  store { i64, [2 x i64] } %t9, ptr %l10
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 85
  %t13 = load { i64, [2 x i64] }, ptr %t12
  store { i64, [2 x i64] } %t13, ptr %l13
  %t16 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l10, ptr %l13)
  store i1 %t16, ptr %l15
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t17 = load i1, ptr %l15, !tbaa !21
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l8, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 84
  %t23 = load %"compiler/source:Span", ptr %t22
  store %"compiler/source:Span" %t23, ptr %l18
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 86
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb6:
  br label %bb13
bb7:
  %t29 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t29, ptr %l22
  br label %bb9
bb8:
  %t30 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %v0)
  store %"compiler/diagmsg:Msg" %t30, ptr %l23
  br label %bb10
bb9:
  %t31 = load %"compiler/diagmsg:Msg", ptr %l22
  store %"compiler/diagmsg:Msg" %t31, ptr %l21
  br label %bb11
bb10:
  %t32 = load %"compiler/diagmsg:Msg", ptr %l23
  store %"compiler/diagmsg:Msg" %t32, ptr %l21
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l16, !tbaa !29
  %t34 = load %"compiler/source:Span", ptr %l18
  %t35 = load %"compiler/diagmsg:Msg", ptr %l21
  %t36 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t33, %"compiler/source:Span" %t34, %"compiler/diagmsg:Msg" %t35)
  store i64 %t36, ptr %l24
  br label %bb12
bb12:
  %t37 = load i64, ptr %l24, !tbaa !24
  store i64 %t37, ptr %rv
  br label %ret
bb13:
  %t38 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeMayNotOutlive(ptr %v0)
  store %"compiler/diagmsg:Msg" %t38, ptr %l25
  br label %bb14
bb14:
  %t39 = load %"compiler/diagmsg:Msg", ptr %l25
  store %"compiler/diagmsg:Msg" %t39, ptr %l4
  %t40 = load i64, ptr %l2, !tbaa !24
  %t41 = load i64, ptr @G_2ecompiler_2fscope_2eFitLocal, !tbaa !24
  %t44 = icmp eq i64 %t40, %t41
  br i1 %t44, label %bb15, label %bb16
bb15:
  %t46 = load i1, ptr %l3, !tbaa !21
  br i1 %t46, label %bb17, label %bb18
bb16:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2fscope_2eFitPayload, !tbaa !24
  %t52 = icmp eq i64 %t48, %t49
  br i1 %t52, label %bb31, label %bb32
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 88
  %t57 = load i1, ptr %t56, !tbaa !21
  br i1 %t57, label %bb19, label %bb20
bb18:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb22
bb19:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb21
bb20:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 89
  %t62 = load i1, ptr %t61, !tbaa !21
  %t64 = xor i1 %t62, true
  store i1 %t64, ptr %l33, !tbaa !21
  br label %bb21
bb21:
  %t66 = load i1, ptr %l33, !tbaa !21
  store i1 %t66, ptr %l30, !tbaa !21
  br label %bb22
bb22:
  %t67 = load i1, ptr %l30, !tbaa !21
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t68 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %v0)
  store %"compiler/diagmsg:Msg" %t68, ptr %l37
  br label %bb25
bb24:
  br label %bb30
bb25:
  %t69 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t69, ptr %l38
  %t70 = load %"compiler/diagmsg:Msg", ptr %l37
  store %"compiler/diagmsg:Msg" %t70, ptr %l4
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t71, label %bb26, label %bb27
bb26:
  %t73 = getelementptr %"compiler/diagmsg:Msg", ptr %l38, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  call void @__olang_region_release(ptr %t75)
  store { i64, ptr } zeroinitializer, ptr %t73
  br label %bb27
bb27:
  %t76 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t76, label %bb28, label %bb29
bb28:
  %t78 = getelementptr %"compiler/diagmsg:Msg", ptr %l38, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %t78
  %t80 = extractvalue { i64, ptr } %t79, 1
  call void @__olang_region_release(ptr %t80)
  store { i64, ptr } zeroinitializer, ptr %t78
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb141
bb31:
  %t81 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadOutlived(ptr %v0)
  store %"compiler/diagmsg:Msg" %t81, ptr %l44
  br label %bb33
bb32:
  %t82 = load i64, ptr %l2, !tbaa !24
  %t83 = load i64, ptr @G_2ecompiler_2fscope_2eFitOwn, !tbaa !24
  %t86 = icmp eq i64 %t82, %t83
  br i1 %t86, label %bb38, label %bb39
bb33:
  %t88 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t88, ptr %l45
  %t89 = load %"compiler/diagmsg:Msg", ptr %l44
  store %"compiler/diagmsg:Msg" %t89, ptr %l4
  %t90 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t90, label %bb34, label %bb35
bb34:
  %t92 = getelementptr %"compiler/diagmsg:Msg", ptr %l45, i32 0, i32 1
  %t93 = load { i64, ptr }, ptr %t92
  %t94 = extractvalue { i64, ptr } %t93, 1
  call void @__olang_region_release(ptr %t94)
  store { i64, ptr } zeroinitializer, ptr %t92
  br label %bb35
bb35:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t95, label %bb36, label %bb37
bb36:
  %t97 = getelementptr %"compiler/diagmsg:Msg", ptr %l45, i32 0, i32 2
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  call void @__olang_region_release(ptr %t99)
  store { i64, ptr } zeroinitializer, ptr %t97
  br label %bb37
bb37:
  br label %bb140
bb38:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb40
bb39:
  %t100 = load i64, ptr %l2, !tbaa !24
  %t101 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  %t104 = icmp eq i64 %t100, %t101
  store i1 %t104, ptr %l51, !tbaa !21
  br label %bb40
bb40:
  %t106 = load i1, ptr %l51, !tbaa !21
  br i1 %t106, label %bb41, label %bb42
bb41:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/scope:Scoper", ptr %t107, i32 0, i32 133
  %t110 = load i1, ptr %t109, !tbaa !21
  store i1 %t110, ptr %l55, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb43
bb43:
  %t112 = load i1, ptr %l55, !tbaa !21
  br i1 %t112, label %bb44, label %bb45
bb44:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenElemTerm(ptr %v0, ptr %t113)
  store { i64, [2 x i64] } %t115, ptr %l60
  br label %bb46
bb45:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb47
bb46:
  %t116 = load { i64, [2 x i64] }, ptr %l60
  %t118 = extractvalue { i64, [2 x i64] } %t116, 0
  %t119 = icmp eq i64 %t118, 0
  %t121 = xor i1 %t119, true
  store i1 %t121, ptr %l58, !tbaa !21
  br label %bb47
bb47:
  %t123 = load i1, ptr %l58, !tbaa !21
  br i1 %t123, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  store { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t124 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t124, ptr %l65, !tbaa !27
  %t125 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = mul i64 24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 24, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %l66, 1
  store { i64, ptr } %t130, ptr %l5, !tbaa !27
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 26
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = icmp eq ptr %t135, null
  br i1 %t137, label %bb50, label %bb51
bb49:
  %t139 = load i64, ptr %l2, !tbaa !24
  %t140 = load i64, ptr @G_2ecompiler_2fscope_2eFitOwn, !tbaa !24
  %t143 = icmp eq i64 %t139, %t140
  br i1 %t143, label %bb72, label %bb73
bb50:
  call void @__olang_check_failed(ptr @olang_loc_12677068e04dfe45_ab703d1ad408b711)
  unreachable
bb51:
  br label %bb52
bb52:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 26
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Body", ptr %t148, i32 0, i32 16
  %t152 = load i1, ptr %t151, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s8
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/scope:Scoper", ptr %t156, i32 0, i32 0
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = getelementptr %"compiler/generic:Program", ptr %t159, i32 0, i32 0
  %t162 = load ptr, ptr %t161, !tbaa !29
  %t164 = getelementptr %"compiler/load:Loader", ptr %t162, i32 0, i32 3
  %t165 = load ptr, ptr %t164, !tbaa !29
  store ptr %t165, ptr %l80, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/scope:Scoper", ptr %t166, i32 0, i32 26
  %t169 = load ptr, ptr %t168, !tbaa !29
  %t171 = icmp eq ptr %t169, null
  br i1 %t171, label %bb55, label %bb56
bb54:
  br label %bb66
bb55:
  call void @__olang_check_failed(ptr @olang_loc_bf00db29bdc1b99e_9dc03d0b43789e0a)
  unreachable
bb56:
  br label %bb57
bb57:
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %t173, i32 0, i32 26
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t179 = getelementptr %"compiler/typed:Body", ptr %t176, i32 0, i32 7
  store ptr %t179, ptr %l87, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 26
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb58, label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_bf00db29bdc1b99e_9dc03d0b43789e0a)
  unreachable
bb59:
  br label %bb60
bb60:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 26
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Body", ptr %t190, i32 0, i32 15
  %t194 = load i32, ptr %t193, !tbaa !23
  %t196 = sext i32 %t194 to i64
  %t197 = load ptr, ptr %l87, !tbaa !29
  %t199 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t197, i64 %t196)
  store %"compiler/typed:Local" %t199, ptr %l96
  br label %bb61
bb61:
  %t200 = getelementptr %"compiler/typed:Local", ptr %l96, i32 0, i32 0
  %t201 = load i32, ptr %t200, !tbaa !23
  %t202 = load ptr, ptr %l80, !tbaa !29
  %t204 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s8, ptr %t202, i32 %t201)
  store { i64, ptr } %t204, ptr %l98
  br label %bb62
bb62:
  %t205 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t206 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t207 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t207, 1
  %t209 = extractvalue { i64, ptr } %t207, 0
  %t210 = add i64 %t206, %t209
  %t211 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t212 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t213 = add i64 %t210, %t212
  %t214 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t213)
  call void @olang_textcopy(ptr %t214, ptr %t205, i64 %t206)
  %t215 = getelementptr i8, ptr %t214, i64 %t206
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = getelementptr i8, ptr %t215, i64 %t209
  call void @olang_textcopy(ptr %t216, ptr %t211, i64 %t212)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t214, 1
  store { i64, ptr } %t218, ptr %l99, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  %t221 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t222 = extractvalue { i64, ptr } %t221, 0
  store i64 %t222, ptr %l101, !tbaa !24
  %t224 = load i64, ptr %l101, !tbaa !24
  %t225 = icmp eq i64 %t220, %t224
  br i1 %t225, label %bb63, label %bb64
bb63:
  %t227 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = load i64, ptr %l101, !tbaa !24
  %t232 = mul i64 %t231, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t228, ptr %t230, i64 %t232, i1 false)
  br label %bb65
bb64:
  %t233 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t233, ptr %l5, !tbaa !27
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s8)
  br label %bb66
bb66:
  %t234 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t236 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldShorter(ptr %s7, ptr %v0, { i64, ptr } %t234)
  store %"compiler/diagmsg:Msg" %t236, ptr %l104
  br label %bb67
bb67:
  %t237 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t237, ptr %l105
  %t238 = load %"compiler/diagmsg:Msg", ptr %l104
  store %"compiler/diagmsg:Msg" %t238, ptr %l4
  %t239 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t239, label %bb68, label %bb69
bb68:
  %t241 = getelementptr %"compiler/diagmsg:Msg", ptr %l105, i32 0, i32 1
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  call void @__olang_region_release(ptr %t243)
  store { i64, ptr } zeroinitializer, ptr %t241
  br label %bb69
bb69:
  %t244 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t244, label %bb70, label %bb71
bb70:
  %t246 = getelementptr %"compiler/diagmsg:Msg", ptr %l105, i32 0, i32 2
  %t247 = load { i64, ptr }, ptr %t246
  %t248 = extractvalue { i64, ptr } %t247, 1
  call void @__olang_region_release(ptr %t248)
  store { i64, ptr } zeroinitializer, ptr %t246
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s7)
  br label %bb139
bb72:
  %t249 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOwnCannotOutlive(ptr %v0)
  store %"compiler/diagmsg:Msg" %t249, ptr %l111
  br label %bb74
bb73:
  %t250 = load i64, ptr %l2, !tbaa !24
  %t251 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t254 = icmp eq i64 %t250, %t251
  br i1 %t254, label %bb79, label %bb80
bb74:
  %t256 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t256, ptr %l112
  %t257 = load %"compiler/diagmsg:Msg", ptr %l111
  store %"compiler/diagmsg:Msg" %t257, ptr %l4
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t258, label %bb75, label %bb76
bb75:
  %t260 = getelementptr %"compiler/diagmsg:Msg", ptr %l112, i32 0, i32 1
  %t261 = load { i64, ptr }, ptr %t260
  %t262 = extractvalue { i64, ptr } %t261, 1
  call void @__olang_region_release(ptr %t262)
  store { i64, ptr } zeroinitializer, ptr %t260
  br label %bb76
bb76:
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t263, label %bb77, label %bb78
bb77:
  %t265 = getelementptr %"compiler/diagmsg:Msg", ptr %l112, i32 0, i32 2
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  call void @__olang_region_release(ptr %t267)
  store { i64, ptr } zeroinitializer, ptr %t265
  br label %bb78
bb78:
  br label %bb138
bb79:
  %t268 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoredRefOutlived(ptr %v0)
  store %"compiler/diagmsg:Msg" %t268, ptr %l118
  br label %bb81
bb80:
  %t269 = load i64, ptr %l2, !tbaa !24
  %t270 = load i64, ptr @G_2ecompiler_2fscope_2eFitElem, !tbaa !24
  %t273 = icmp eq i64 %t269, %t270
  br i1 %t273, label %bb86, label %bb87
bb81:
  %t275 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t275, ptr %l119
  %t276 = load %"compiler/diagmsg:Msg", ptr %l118
  store %"compiler/diagmsg:Msg" %t276, ptr %l4
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t277, label %bb82, label %bb83
bb82:
  %t279 = getelementptr %"compiler/diagmsg:Msg", ptr %l119, i32 0, i32 1
  %t280 = load { i64, ptr }, ptr %t279
  %t281 = extractvalue { i64, ptr } %t280, 1
  call void @__olang_region_release(ptr %t281)
  store { i64, ptr } zeroinitializer, ptr %t279
  br label %bb83
bb83:
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t282, label %bb84, label %bb85
bb84:
  %t284 = getelementptr %"compiler/diagmsg:Msg", ptr %l119, i32 0, i32 2
  %t285 = load { i64, ptr }, ptr %t284
  %t286 = extractvalue { i64, ptr } %t285, 1
  call void @__olang_region_release(ptr %t286)
  store { i64, ptr } zeroinitializer, ptr %t284
  br label %bb85
bb85:
  br label %bb137
bb86:
  %t287 = load i1, ptr %l3, !tbaa !21
  br i1 %t287, label %bb88, label %bb89
bb87:
  %t289 = load i64, ptr %l2, !tbaa !24
  %t290 = load i64, ptr @G_2ecompiler_2fscope_2eFitAnyCopy, !tbaa !24
  %t293 = icmp eq i64 %t289, %t290
  br i1 %t293, label %bb97, label %bb98
bb88:
  %t295 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemNotInArrayScope(ptr %v0)
  store %"compiler/diagmsg:Msg" %t295, ptr %l127
  br label %bb90
bb89:
  %t296 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemOutlived(ptr %v0)
  store %"compiler/diagmsg:Msg" %t296, ptr %l128
  br label %bb91
bb90:
  %t297 = load %"compiler/diagmsg:Msg", ptr %l127
  store %"compiler/diagmsg:Msg" %t297, ptr %l126
  br label %bb92
bb91:
  %t298 = load %"compiler/diagmsg:Msg", ptr %l128
  store %"compiler/diagmsg:Msg" %t298, ptr %l126
  br label %bb92
bb92:
  %t299 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t299, ptr %l129
  %t300 = load %"compiler/diagmsg:Msg", ptr %l126
  store %"compiler/diagmsg:Msg" %t300, ptr %l4
  %t301 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t301, label %bb93, label %bb94
bb93:
  %t303 = getelementptr %"compiler/diagmsg:Msg", ptr %l129, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303
  %t305 = extractvalue { i64, ptr } %t304, 1
  call void @__olang_region_release(ptr %t305)
  store { i64, ptr } zeroinitializer, ptr %t303
  br label %bb94
bb94:
  %t306 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t306, label %bb95, label %bb96
bb95:
  %t308 = getelementptr %"compiler/diagmsg:Msg", ptr %l129, i32 0, i32 2
  %t309 = load { i64, ptr }, ptr %t308
  %t310 = extractvalue { i64, ptr } %t309, 1
  call void @__olang_region_release(ptr %t310)
  store { i64, ptr } zeroinitializer, ptr %t308
  br label %bb96
bb96:
  br label %bb136
bb97:
  %t311 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCopyOutlived(ptr %v0)
  store %"compiler/diagmsg:Msg" %t311, ptr %l135
  br label %bb99
bb98:
  %t312 = load i64, ptr %l2, !tbaa !24
  %t313 = load i64, ptr @G_2ecompiler_2fscope_2eFitGlobal, !tbaa !24
  %t316 = icmp eq i64 %t312, %t313
  br i1 %t316, label %bb104, label %bb105
bb99:
  %t318 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t318, ptr %l136
  %t319 = load %"compiler/diagmsg:Msg", ptr %l135
  store %"compiler/diagmsg:Msg" %t319, ptr %l4
  %t320 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t320, label %bb100, label %bb101
bb100:
  %t322 = getelementptr %"compiler/diagmsg:Msg", ptr %l136, i32 0, i32 1
  %t323 = load { i64, ptr }, ptr %t322
  %t324 = extractvalue { i64, ptr } %t323, 1
  call void @__olang_region_release(ptr %t324)
  store { i64, ptr } zeroinitializer, ptr %t322
  br label %bb101
bb101:
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t325, label %bb102, label %bb103
bb102:
  %t327 = getelementptr %"compiler/diagmsg:Msg", ptr %l136, i32 0, i32 2
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  call void @__olang_region_release(ptr %t329)
  store { i64, ptr } zeroinitializer, ptr %t327
  br label %bb103
bb103:
  br label %bb135
bb104:
  %t330 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalHoldsShorter(ptr %v0)
  store %"compiler/diagmsg:Msg" %t330, ptr %l142
  br label %bb106
bb105:
  %t331 = load i64, ptr %l2, !tbaa !24
  %t332 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  %t335 = icmp eq i64 %t331, %t332
  br i1 %t335, label %bb111, label %bb112
bb106:
  %t337 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t337, ptr %l143
  %t338 = load %"compiler/diagmsg:Msg", ptr %l142
  store %"compiler/diagmsg:Msg" %t338, ptr %l4
  %t339 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t339, label %bb107, label %bb108
bb107:
  %t341 = getelementptr %"compiler/diagmsg:Msg", ptr %l143, i32 0, i32 1
  %t342 = load { i64, ptr }, ptr %t341
  %t343 = extractvalue { i64, ptr } %t342, 1
  call void @__olang_region_release(ptr %t343)
  store { i64, ptr } zeroinitializer, ptr %t341
  br label %bb108
bb108:
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t344, label %bb109, label %bb110
bb109:
  %t346 = getelementptr %"compiler/diagmsg:Msg", ptr %l143, i32 0, i32 2
  %t347 = load { i64, ptr }, ptr %t346
  %t348 = extractvalue { i64, ptr } %t347, 1
  call void @__olang_region_release(ptr %t348)
  store { i64, ptr } zeroinitializer, ptr %t346
  br label %bb110
bb110:
  br label %bb134
bb111:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = getelementptr %"compiler/scope:Scoper", ptr %t349, i32 0, i32 26
  %t352 = load ptr, ptr %t351, !tbaa !29
  %t354 = icmp eq ptr %t352, null
  br i1 %t354, label %bb113, label %bb114
bb112:
  %t356 = load i64, ptr %l2, !tbaa !24
  %t357 = load i64, ptr @G_2ecompiler_2fscope_2eFitValue, !tbaa !24
  %t360 = icmp eq i64 %t356, %t357
  br i1 %t360, label %bb125, label %bb126
bb113:
  call void @__olang_check_failed(ptr @olang_loc_2de0ba6211cb93cf_481b942389356f0b)
  unreachable
bb114:
  br label %bb115
bb115:
  %t362 = load ptr, ptr %l0, !tbaa !29
  %t364 = getelementptr %"compiler/scope:Scoper", ptr %t362, i32 0, i32 26
  %t365 = load ptr, ptr %t364, !tbaa !29
  %t368 = getelementptr %"compiler/typed:Body", ptr %t365, i32 0, i32 14
  %t369 = load i1, ptr %t368, !tbaa !21
  br i1 %t369, label %bb116, label %bb117
bb116:
  %t371 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %v0)
  store %"compiler/diagmsg:Msg" %t371, ptr %l157
  br label %bb118
bb117:
  %t372 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnOwnStorage(ptr %v0)
  store %"compiler/diagmsg:Msg" %t372, ptr %l158
  br label %bb119
bb118:
  %t373 = load %"compiler/diagmsg:Msg", ptr %l157
  store %"compiler/diagmsg:Msg" %t373, ptr %l156
  br label %bb120
bb119:
  %t374 = load %"compiler/diagmsg:Msg", ptr %l158
  store %"compiler/diagmsg:Msg" %t374, ptr %l156
  br label %bb120
bb120:
  %t375 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t375, ptr %l159
  %t376 = load %"compiler/diagmsg:Msg", ptr %l156
  store %"compiler/diagmsg:Msg" %t376, ptr %l4
  %t377 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t377, label %bb121, label %bb122
bb121:
  %t379 = getelementptr %"compiler/diagmsg:Msg", ptr %l159, i32 0, i32 1
  %t380 = load { i64, ptr }, ptr %t379
  %t381 = extractvalue { i64, ptr } %t380, 1
  call void @__olang_region_release(ptr %t381)
  store { i64, ptr } zeroinitializer, ptr %t379
  br label %bb122
bb122:
  %t382 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t382, label %bb123, label %bb124
bb123:
  %t384 = getelementptr %"compiler/diagmsg:Msg", ptr %l159, i32 0, i32 2
  %t385 = load { i64, ptr }, ptr %t384
  %t386 = extractvalue { i64, ptr } %t385, 1
  call void @__olang_region_release(ptr %t386)
  store { i64, ptr } zeroinitializer, ptr %t384
  br label %bb124
bb124:
  br label %bb133
bb125:
  %t387 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueRefsOutlived(ptr %v0)
  store %"compiler/diagmsg:Msg" %t387, ptr %l165
  br label %bb127
bb126:
  br label %bb132
bb127:
  %t388 = load %"compiler/diagmsg:Msg", ptr %l4
  store %"compiler/diagmsg:Msg" %t388, ptr %l166
  %t389 = load %"compiler/diagmsg:Msg", ptr %l165
  store %"compiler/diagmsg:Msg" %t389, ptr %l4
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1
  br i1 %t390, label %bb128, label %bb129
bb128:
  %t392 = getelementptr %"compiler/diagmsg:Msg", ptr %l166, i32 0, i32 1
  %t393 = load { i64, ptr }, ptr %t392
  %t394 = extractvalue { i64, ptr } %t393, 1
  call void @__olang_region_release(ptr %t394)
  store { i64, ptr } zeroinitializer, ptr %t392
  br label %bb129
bb129:
  %t395 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t395, label %bb130, label %bb131
bb130:
  %t397 = getelementptr %"compiler/diagmsg:Msg", ptr %l166, i32 0, i32 2
  %t398 = load { i64, ptr }, ptr %t397
  %t399 = extractvalue { i64, ptr } %t398, 1
  call void @__olang_region_release(ptr %t399)
  store { i64, ptr } zeroinitializer, ptr %t397
  br label %bb131
bb131:
  br label %bb132
bb132:
  br label %bb133
bb133:
  br label %bb134
bb134:
  br label %bb135
bb135:
  br label %bb136
bb136:
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  br label %bb140
bb140:
  br label %bb141
bb141:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = load %"compiler/diagmsg:Msg", ptr %l4
  %t406 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v0, ptr %t400, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %t402)
  store i64 %t406, ptr %l172
  br label %bb142
bb142:
  %t407 = load i64, ptr %l172, !tbaa !24
  store i64 %t407, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturesNothing(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %t17)
  store i1 %t20, ptr %l12
  br label %bb6
bb6:
  %t21 = load i1, ptr %l12, !tbaa !21
  store i1 %t21, ptr %l3, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7f2f0698823b265a_e0642f9ed23c39f6)
  unreachable
bb12:
  %t22 = load i1, ptr %l3, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egap(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3) #0 {
entry:
  %l5 = alloca ptr
  %l9 = alloca %"compiler/scope:Gap"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 3
  store ptr %t3, ptr %l5, !tbaa !29
  %t10 = call %"compiler/scope:Gap" @compiler_2fscope_3aGap_2ector(ptr %v1, ptr %v0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
  store %"compiler/scope:Gap" %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l5, !tbaa !29
  %t12 = load %"compiler/scope:Gap", ptr %l9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v0, ptr %t11, %"compiler/scope:Gap" %t12)
  br label %bb2
bb2:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egiveBackDecl(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l7 = alloca %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l8 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l10 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l11 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  %t46 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 223
  %t5 = call %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf554e3812f6eb8d76d1c74a8cefae175(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l7
  store %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l3
  br label %bb2
bb2:
  %t8 = call { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hba5334df3403b24ff847af207d19ebe6(ptr %v0, ptr %l3)
  %t9 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t8, 1
  %t10 = extractvalue { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } %t8, 0
  store i32 %t10, ptr %l11
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t9, ptr %l10
  br label %bb3
bb3:
  %t13 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l10
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t13, ptr %l8
  br label %bb6
bb4:
  %t14 = load i32, ptr %l11, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  br label %bb17
bb6:
  %t18 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l8
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t18, ptr %l4
  %t19 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t24 = icmp ne i64 %t20, %a1
  br i1 %t24, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 224
  %t29 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  %t32 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t28, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t29)
  store i1 %t32, ptr %l21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l21, !tbaa !21
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  br label %bb16
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 224
  %t38 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %t37, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t38, i1 true)
  br label %bb14
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 0
  %t43 = load i64, ptr %t42, !tbaa !24
  %t44 = getelementptr %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  store { i64, [1 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [1 x i64] }, ptr %t46, i32 0, i32 0
  store i64 1, ptr %t47
  %t48 = load { i64, [1 x i64] }, ptr %t46
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetFieldMark(ptr %v0, ptr %t41, i64 %t43, i64 %t45, { i64, [1 x i64] } %t48)
  br label %bb15
bb15:
  store i1 true, ptr %l2, !tbaa !21
  br label %bb16
bb16:
  br label %bb2
bb17:
  %t53 = load i1, ptr %l2, !tbaa !21
  store i1 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldPart(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca i32
  %l26 = alloca i1
  %l30 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
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
  br label %bb11
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
  call void @__olang_check_failed(ptr @olang_loc_3451003dd1e97df4_bcd12f7be62952d8)
  unreachable
bb11:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l10
  br label %bb12
bb12:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l2, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb16
bb14:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t19)
  store i1 %t21, ptr %l15
  br label %bb15
bb15:
  %t22 = load i1, ptr %l15, !tbaa !21
  store i1 %t22, ptr %l13, !tbaa !21
  br label %bb16
bb16:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 43
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t27, i64 %t28)
  %t32 = extractvalue { i32, ptr } %t31, 1
  %t33 = extractvalue { i32, ptr } %t31, 0
  store i32 %t33, ptr %l22
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb21, label %ok.35, !prof !99
ok.35:
  store ptr %t32, ptr %l21
  br label %bb20
bb20:
  %t36 = load ptr, ptr %l21, !tbaa !29
  store ptr %t36, ptr %l17, !tbaa !29
  br label %bb23
bb21:
  br label %bb22
bb22:
  store ptr null, ptr %l17, !tbaa !29
  br label %bb23
bb23:
  %t37 = load ptr, ptr %l17, !tbaa !29
  store ptr %t37, ptr %l3, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb24, label %bb25
bb24:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t49 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v0, ptr %t44, ptr %t45)
  store i1 %t49, ptr %l30
  br label %bb26
bb25:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb27
bb26:
  %t50 = load i1, ptr %l30, !tbaa !21
  store i1 %t50, ptr %l26, !tbaa !21
  br label %bb27
bb27:
  %t51 = load i1, ptr %l26, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceRel(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca { i64, [2 x i64] }
  %l17 = alloca i1
  %l20 = alloca i1
  %l25 = alloca i1
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_4421e2d51127c851_53479ba5c20af2ad)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 1
  %t15 = load { i64, [2 x i64] }, ptr %t14
  %t19 = extractvalue { i64, [2 x i64] } %t15, 0
  %t20 = icmp eq i64 %t19, 1
  br i1 %t20, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_ba8e38ed7d6b48a9_35acc5c55c21205)
  unreachable
bb12:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 42
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = icmp sge i64 %t26, 0
  br i1 %t28, label %bb13, label %bb14
bb13:
  %t30 = load { i64, [2 x i64] }, ptr %l1
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 2
  br i1 %t33, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb24
bb15:
  %t35 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t36 = getelementptr { i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 42
  %t41 = load i64, ptr %t40, !tbaa !24
  %t44 = icmp eq i64 %t37, %t41
  store i1 %t44, ptr %l20, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l20, !tbaa !21
  br i1 %t46, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb23
bb19:
  %t47 = load { i64, [2 x i64] }, ptr %l2
  %t49 = extractvalue { i64, [2 x i64] } %t47, 0
  %t50 = icmp eq i64 %t49, 2
  br i1 %t50, label %bb20, label %bb21
bb20:
  %t52 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t53 = getelementptr { i64 }, ptr %t52, i32 0, i32 0
  %t54 = load i64, ptr %t53
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 42
  %t58 = load i64, ptr %t57, !tbaa !24
  %t61 = icmp eq i64 %t54, %t58
  store i1 %t61, ptr %l28, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l28, !tbaa !21
  store i1 %t63, ptr %l25, !tbaa !21
  br label %bb23
bb23:
  %t64 = load i1, ptr %l25, !tbaa !21
  store i1 %t64, ptr %l17, !tbaa !21
  br label %bb24
bb24:
  %t65 = load i1, ptr %l17, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisData(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l6, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 1
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9476cc7193074e76_e8b6eb41d568f08a)
  unreachable
bb12:
  call void @__olang_scope_close(ptr %s0)
  %t17 = load i1, ptr %l7, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisNullLit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %t17)
  store i1 %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load i1, ptr %l11, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_4d20f13e93e5e00_8edf44d94b0465ac)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l8 = alloca ptr
  %l10 = alloca ptr
  %l16 = alloca i1
  %l17 = alloca ptr
  %l18 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i1
  %l35 = alloca ptr
  %l38 = alloca i1
  %l43 = alloca ptr
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l8, !tbaa !29
  %t9 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load ptr, ptr %l10, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  store ptr %t19, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l3, !tbaa !29
  store ptr %t21, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t22 = load ptr, ptr %l17, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l17, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 5}
  %t28 = icmp eq i64 %t26, 0
  store i1 %t28, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr { i64, [3 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { i32 }, ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33
  store i32 %t34, ptr %l4, !tbaa !23
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 6
  %t39 = load i32, ptr %l4, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t44 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t38, i64 %t41)
  store ptr %t44, ptr %l27
  br label %bb11
bb11:
  %t45 = load ptr, ptr %l27, !tbaa !29
  %t47 = getelementptr %"compiler/scope:summary", ptr %t45, i32 0, i32 17
  %t48 = load i1, ptr %t47, !tbaa !21
  br i1 %t48, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb19
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 6
  %t53 = load i32, ptr %l4, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t58 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t52, i64 %t55)
  store ptr %t58, ptr %l35
  br label %bb14
bb14:
  %t59 = load ptr, ptr %l35, !tbaa !29
  %t61 = getelementptr %"compiler/scope:summary", ptr %t59, i32 0, i32 19
  %t62 = load i1, ptr %t61, !tbaa !21
  br i1 %t62, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb18
bb16:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 6
  %t67 = load i32, ptr %l4, !tbaa !23
  %t69 = sext i32 %t67 to i64
  %t72 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t66, i64 %t69)
  store ptr %t72, ptr %l43
  br label %bb17
bb17:
  %t73 = load ptr, ptr %l43, !tbaa !29
  %t75 = getelementptr %"compiler/scope:summary", ptr %t73, i32 0, i32 20
  %t76 = load i1, ptr %t75, !tbaa !21
  store i1 %t76, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t78 = load i1, ptr %l38, !tbaa !21
  %t79 = xor i1 %t78, true
  store i1 %t79, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t81 = load i1, ptr %l30, !tbaa !21
  store i1 %t81, ptr %l16, !tbaa !21
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_69ae334cff34421a_e7667370028a437e)
  unreachable
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t82 = load i1, ptr %l16, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l26 = alloca i1
  %l34 = alloca i32
  %l38 = alloca { i64, ptr }
  %l41 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l54 = alloca i64
  %l57 = alloca i64
  %l76 = alloca { i64, ptr }
  %l81 = alloca i64
  %l87 = alloca ptr
  %l90 = alloca i64
  %l93 = alloca i1
  %l96 = alloca i1
  %l105 = alloca i1
  %l106 = alloca i1
  %l107 = alloca ptr
  %l111 = alloca i64
  %l113 = alloca i1
  %l123 = alloca i1
  %l127 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca i1
  %l145 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i64
  %l151 = alloca i1
  %l155 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t7 = load ptr, ptr %l18, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l18, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l19, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l19, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { ptr }, ptr %t17, i32 0, i32 0
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %t21, ptr %t22)
  store i1 %t25, ptr %l26
  br label %bb6
bb6:
  %t26 = load i1, ptr %l26, !tbaa !21
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 143
  store i1 true, ptr %t29, !tbaa !21
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t31, i1 false)
  br label %bb10
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 143
  store i1 false, ptr %t37, !tbaa !21
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_c0ef91a3e2c3a370_7d348321302c732c)
  unreachable
bb16:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t42 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  store i32 %t42, ptr %l34
  br label %bb17
bb17:
  %t43 = load i32, ptr %l34, !tbaa !23
  store i32 %t43, ptr %l4, !tbaa !23
  %t44 = load i32, ptr %l4, !tbaa !23
  %t45 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t48 = icmp ne i32 %t44, %t45
  br i1 %t48, label %bb18, label %bb19
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/generic:Program", ptr %t53, i32 0, i32 2
  store ptr %t55, ptr %l41, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = getelementptr %"compiler/generic:Program", ptr %t59, i32 0, i32 2
  %t62 = load i32, ptr %l4, !tbaa !23
  %t65 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l46
  br label %bb20
bb19:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i32] }>, ptr @.d18, i32 0, i32 1) }, ptr %l38, !tbaa !27
  br label %bb22
bb20:
  %t66 = load ptr, ptr %l41, !tbaa !29
  %t67 = load i32, ptr %l46, !tbaa !23
  %t68 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t66, i32 %t67)
  store { i64, ptr } %t68, ptr %l47
  br label %bb21
bb21:
  %t69 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t69, ptr %l38, !tbaa !27
  br label %bb22
bb22:
  %t70 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t70, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/typed:Call", ptr %t71, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 0
  store i64 %t76, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t78 = load i64, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t84 = load i64, ptr %l8, !tbaa !24
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb28
bb25:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = sub i64 %t88, %t89
  %t93 = load i64, ptr %l8, !tbaa !24
  %t96 = add i64 %t92, %t93
  %t98 = sub i64 %t96, 1
  %t99 = load i64, ptr %l8, !tbaa !24
  %t102 = sdiv i64 %t98, %t99
  store i64 %t102, ptr %l57, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb27
bb27:
  %t104 = load i64, ptr %l57, !tbaa !24
  store i64 %t104, ptr %l54, !tbaa !24
  br label %bb28
bb28:
  %t105 = load i64, ptr %l54, !tbaa !24
  store i64 %t105, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  %t106 = load i64, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l9, !tbaa !24
  %t110 = icmp slt i64 %t106, %t107
  %t112 = xor i1 %t110, true
  br i1 %t112, label %bb30, label %bb31
bb30:
  br label %bb86
bb31:
  br label %bb32
bb32:
  %t114 = load i64, ptr %l6, !tbaa !24
  %t115 = load i64, ptr %l10, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t119 = mul i64 %t115, %t116
  %t122 = add i64 %t114, %t119
  store i64 %t122, ptr %l11, !tbaa !24
  %t124 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Call", ptr %t124, i32 0, i32 1
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %l76, !tbaa !27
  %t128 = load i64, ptr %l11, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr ptr, ptr %t131, i64 %t128
  %t133 = load ptr, ptr %t132, !tbaa !39
  store ptr %t133, ptr %l12, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l12, !tbaa !29
  %t139 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %t135, ptr %t136)
  store i64 %t139, ptr %l81
  br label %bb33
bb33:
  %t140 = load i64, ptr %l81, !tbaa !24
  store i64 %t140, ptr %l13, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t143 = icmp slt i64 %t141, 0
  br i1 %t143, label %bb34, label %bb35
bb34:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l12, !tbaa !29
  %t150 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v1, ptr %t145, ptr %t146)
  store ptr %t150, ptr %l87
  br label %bb36
bb35:
  br label %bb56
bb36:
  %t151 = load ptr, ptr %l87, !tbaa !29
  store ptr %t151, ptr %l14, !tbaa !29
  %t152 = load ptr, ptr %l14, !tbaa !29
  %t155 = call i64 @compiler_2fscope_2eflRootExpr(ptr %v1, ptr %t152)
  store i64 %t155, ptr %l90
  br label %bb37
bb37:
  %t156 = load i64, ptr %l90, !tbaa !24
  store i64 %t156, ptr %l15, !tbaa !24
  %t157 = load i64, ptr %l15, !tbaa !24
  %t159 = icmp sge i64 %t157, 0
  br i1 %t159, label %bb38, label %bb39
bb38:
  %t161 = load ptr, ptr %l14, !tbaa !29
  %t164 = call i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v1, ptr %t161)
  store i1 %t164, ptr %l96
  br label %bb40
bb39:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb41
bb40:
  %t165 = load i1, ptr %l96, !tbaa !21
  store i1 %t165, ptr %l93, !tbaa !21
  br label %bb41
bb41:
  %t166 = load i1, ptr %l93, !tbaa !21
  br i1 %t166, label %bb42, label %bb43
bb42:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t169 = load i64, ptr %l11, !tbaa !24
  %t170 = load ptr, ptr %l14, !tbaa !29
  %t171 = load i64, ptr %l15, !tbaa !24
  %t172 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwOutOfRegion(ptr %v0, ptr %v1, ptr %v1, ptr %s0, ptr %t167, ptr %t168, i64 %t169, ptr %t170, i64 %t171, { i64, ptr } %t172)
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb45
bb45:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t180 = load ptr, ptr %l12, !tbaa !29
  %t183 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %t179, ptr %t180)
  store i1 %t183, ptr %l105
  br label %bb46
bb46:
  %t184 = load i1, ptr %l105, !tbaa !21
  br i1 %t184, label %bb47, label %bb48
bb47:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l107, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load ptr, ptr %l1, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Call", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t193 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t186, ptr %t190)
  store i64 %t193, ptr %l111
  br label %bb49
bb48:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb51
bb49:
  %t194 = load i64, ptr %l11, !tbaa !24
  %t195 = load ptr, ptr %l107, !tbaa !29
  %t196 = load i64, ptr %l111, !tbaa !24
  %t198 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %t195, i64 %t196, i64 %t194)
  store i1 %t198, ptr %l113
  br label %bb50
bb50:
  %t199 = load i1, ptr %l113, !tbaa !21
  store i1 %t199, ptr %l106, !tbaa !21
  br label %bb51
bb51:
  %t200 = load i1, ptr %l106, !tbaa !21
  br i1 %t200, label %bb52, label %bb53
bb52:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/scope:Scoper", ptr %t201, i32 0, i32 143
  store i1 true, ptr %t203, !tbaa !21
  br label %bb54
bb53:
  br label %bb54
bb54:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t204, ptr %t205, i1 false)
  br label %bb55
bb55:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 143
  store i1 false, ptr %t211, !tbaa !21
  br label %bb85
bb56:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t214 = load i64, ptr %l11, !tbaa !24
  %t215 = load ptr, ptr %l12, !tbaa !29
  %t220 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v1, ptr %t212, ptr %t213, i64 %t214, ptr %t215)
  store i1 %t220, ptr %l123
  br label %bb57
bb57:
  %t221 = load i1, ptr %l123, !tbaa !21
  br i1 %t221, label %bb58, label %bb59
bb58:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t224 = load i64, ptr %l11, !tbaa !24
  %t228 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %t222, ptr %t223, i64 %t224)
  store i1 %t228, ptr %l127
  br label %bb60
bb59:
  br label %bb66
bb60:
  %t229 = load i1, ptr %l127, !tbaa !21
  br i1 %t229, label %bb61, label %bb62
bb61:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t230, i64 %t231, i1 true)
  br label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwHanded(ptr %v0, ptr %v1, ptr %t234, ptr %t235)
  br label %bb65
bb65:
  br label %bb85
bb66:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr %"compiler/typed:Call", ptr %t238, i32 0, i32 0
  %t241 = load ptr, ptr %t240, !tbaa !29
  store ptr %t241, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t242 = load ptr, ptr %l133, !tbaa !29
  %t243 = icmp ne ptr %t242, null
  br i1 %t243, label %bb67, label %bb68
bb67:
  %t245 = load ptr, ptr %l133, !tbaa !29
  %t246 = load i64, ptr %t245, !range !{i64 0, i64 5}
  %t248 = icmp eq i64 %t246, 2
  store i1 %t248, ptr %l134, !tbaa !21
  br label %bb68
bb68:
  %t249 = load i1, ptr %l134, !tbaa !21
  br i1 %t249, label %bb69, label %bb70
bb69:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t252 = load i64, ptr %l11, !tbaa !24
  %t253 = load i64, ptr %l13, !tbaa !24
  %t254 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwValueArg(ptr %v0, ptr %v1, ptr %s0, ptr %t250, ptr %t251, i64 %t252, i64 %t253, { i64, ptr } %t254, i1 true)
  br label %bb71
bb70:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l1, !tbaa !29
  %t262 = load i64, ptr %l11, !tbaa !24
  %t266 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %t260, ptr %t261, i64 %t262)
  store i1 %t266, ptr %l145
  br label %bb72
bb71:
  br label %bb83
bb72:
  %t267 = load i1, ptr %l145, !tbaa !21
  br i1 %t267, label %bb73, label %bb74
bb73:
  %t268 = load ptr, ptr %l0, !tbaa !29
  store ptr %t268, ptr %l146, !tbaa !29
  %t269 = load i64, ptr %l13, !tbaa !24
  store i64 %t269, ptr %l147, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t272 = load i64, ptr %l11, !tbaa !24
  %t276 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %t270, ptr %t271, i64 %t272)
  store i1 %t276, ptr %l151
  br label %bb75
bb74:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t279 = load i64, ptr %l11, !tbaa !24
  %t283 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %t277, ptr %t278, i64 %t279)
  store i1 %t283, ptr %l155
  br label %bb77
bb75:
  %t284 = load ptr, ptr %l146, !tbaa !29
  %t285 = load i64, ptr %l147, !tbaa !24
  %t286 = load i1, ptr %l151, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t284, i64 %t285, i1 %t286)
  br label %bb76
bb76:
  br label %bb82
bb77:
  %t287 = load i1, ptr %l155, !tbaa !21
  br i1 %t287, label %bb78, label %bb79
bb78:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i64, ptr %l13, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t288, i64 %t289)
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb81
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load ptr, ptr %l12, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwHanded(ptr %v0, ptr %v1, ptr %t292, ptr %t293)
  br label %bb84
bb84:
  br label %bb85
bb85:
  %t296 = load i64, ptr %l10, !tbaa !24
  %t298 = add i64 %t296, 1
  store i64 %t298, ptr %l10, !tbaa !24
  br label %bb29
bb86:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandHeld(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l2 = alloca %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78"
  %l5 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l6 = alloca %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78"
  %l8 = alloca %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78"
  %l9 = alloca i32
  %l11 = alloca i1
  %l12 = alloca ptr
  %l14 = alloca ptr
  %l16 = alloca { i64, [2 x i64] }
  %l17 = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 43
  %t5 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H7e82b4dbdb79c77bc51fdaf9d4704834(ptr %v0, ptr %v0, ptr %t3)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l5
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t6, ptr %l1
  br label %bb2
bb2:
  %t8 = call { i32, %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2ftyped_3aExpr_2_H4ea279ff901448a8d94a2f42aa119fd2(ptr %v0, ptr %v0, ptr %l1)
  %t9 = extractvalue { i32, %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" } %t8, 1
  %t10 = extractvalue { i32, %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" } %t8, 0
  store i32 %t10, ptr %l9
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t9, ptr %l8
  br label %bb3
bb3:
  %t13 = load %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %l8
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t13, ptr %l6
  br label %bb6
bb4:
  %t14 = load i32, ptr %l9, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  store i1 %t17, ptr %l11, !tbaa !21
  br label %bb5
bb5:
  br label %bb10
bb6:
  %t18 = load %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %l6
  store %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" %t18, ptr %l2
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = getelementptr %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78", ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t23)
  store { i64, [2 x i64] } %t25, ptr %l16
  br label %bb7
bb7:
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = load ptr, ptr %l14, !tbaa !29
  %t28 = load { i64, [2 x i64] }, ptr %l16
  %t29 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v0, ptr %t26, ptr %t27, { i64, [2 x i64] } %t28)
  store %"compiler/scope:Val" %t29, ptr %l17
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %bb2
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elentLoopCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l24 = alloca i1
  %l25 = alloca i1
  %l26 = alloca ptr
  %l36 = alloca %"compiler/typed:Local"
  %l38 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l8, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 3
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb27
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  store ptr %t23, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 8}
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l3, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t34, i32 0, i32 2
  %t36 = load i32, ptr %t35
  store i32 %t36, ptr %l4, !tbaa !23
  br label %bb11
bb10:
  br label %bb21
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i32, ptr %l4, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t44 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %t38, i64 %t41)
  store i1 %t44, ptr %l24
  br label %bb12
bb12:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l26, !tbaa !29
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 26
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = icmp eq ptr %t50, null
  br i1 %t52, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb20
bb15:
  call void @__olang_check_failed(ptr @olang_loc_42ddfa07d54a3511_7eb6b931dfed5aa5)
  unreachable
bb16:
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 26
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Body", ptr %t57, i32 0, i32 7
  %t61 = load i32, ptr %l4, !tbaa !23
  %t63 = sext i32 %t61 to i64
  %t66 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t60, i64 %t63)
  store %"compiler/typed:Local" %t66, ptr %l36
  br label %bb18
bb18:
  %t67 = getelementptr %"compiler/typed:Local", ptr %l36, i32 0, i32 2
  %t68 = load i32, ptr %t67, !tbaa !23
  %t69 = load ptr, ptr %l26, !tbaa !29
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t69, i32 %t68)
  store i1 %t71, ptr %l38
  br label %bb19
bb19:
  %t72 = load i1, ptr %l38, !tbaa !21
  %t73 = xor i1 %t72, true
  store i1 %t73, ptr %l25, !tbaa !21
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t75 = load i1, ptr %l25, !tbaa !21
  store i1 %t75, ptr %rv
  br label %ret
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_133169b3f1711469_c566838c26ef218d)
  unreachable
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
  call void @__olang_check_failed(ptr @olang_loc_31030507f1509b32_81bbcae78c23c7f6)
  unreachable
bb32:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l6, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t9 = load ptr, ptr %l8, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l8, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 6
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l9, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb14
bb5:
  %t17 = load ptr, ptr %l2, !tbaa !29
  store ptr %t17, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 18}
  %t24 = icmp eq i64 %t22, 16
  store i1 %t24, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t25 = load i1, ptr %l13, !tbaa !21
  br i1 %t25, label %bb8, label %bb9
bb8:
  br label %bb14
bb9:
  %t26 = load ptr, ptr %l2, !tbaa !29
  store ptr %t26, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t27 = load ptr, ptr %l16, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l16, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 18}
  %t33 = icmp eq i64 %t31, 7
  store i1 %t33, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l17, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_a31f6e852cb18f32_b153faa488cd8ea6)
  unreachable
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i1, ptr %l7, !tbaa !21
  store i1 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparts(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %lp2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i32
  %l25 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i32
  %l41 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l66 = alloca ptr
  %l71 = alloca i32
  %l72 = alloca { i64, ptr }
  %l76 = alloca ptr
  %l81 = alloca i32
  %l84 = alloca ptr
  %l89 = alloca i32
  %l96 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l118 = alloca ptr
  %l121 = alloca ptr
  %l126 = alloca i32
  %l127 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/generic:Program", ptr %t8, i32 0, i32 2
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t10, i32 %t11)
  store i32 %t14, ptr %l18
  br label %bb2
bb2:
  %t15 = load i32, ptr %l18, !range !{i32 0, i32 33}
  store i32 %t15, ptr %l3
  %t16 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t18 = trunc i64 18 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb43
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/generic:Program", ptr %t24, i32 0, i32 2
  %t27 = load i32, ptr %l1, !tbaa !23
  %t30 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t30, ptr %l25
  br label %bb6
bb6:
  %t31 = load i1, ptr %l25, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %lp2
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  store ptr %t42, ptr %l30, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = getelementptr %"compiler/generic:Program", ptr %t46, i32 0, i32 2
  %t49 = load i32, ptr %l1, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l35
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t54 = load i32, ptr %l35, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t55, ptr %l36
  br label %bb11
bb11:
  %t56 = load i32, ptr %l36, !range !{i32 0, i32 6}
  store i32 %t56, ptr %l4
  %t57 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t59 = trunc i64 0 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/generic:Program", ptr %t65, i32 0, i32 2
  store ptr %t67, ptr %l41, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 0
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = getelementptr %"compiler/generic:Program", ptr %t71, i32 0, i32 2
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t73, i32 %t74)
  store i32 %t77, ptr %l46
  br label %bb15
bb15:
  %t78 = load ptr, ptr %l41, !tbaa !29
  %t79 = load i32, ptr %l46, !tbaa !23
  %t80 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t78, i32 %t79)
  store { i64, ptr } %t80, ptr %l47
  br label %bb16
bb16:
  %t81 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t81, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t82 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t82, 0
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = icmp slt i64 %t86, %t87
  %t92 = xor i1 %t90, true
  br i1 %t92, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t94 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t94, ptr %l54, !tbaa !27
  %t95 = load i64, ptr %l6, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i32, ptr %t98, i64 %t95
  %t100 = load i32, ptr %t99, !tbaa !33
  %t102 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t102, i32 %t100)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l6, !tbaa !24
  br label %bb17
bb23:
  br label %bb42
bb24:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t112 = trunc i64 1 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb31
bb27:
  %t115 = load ptr, ptr %l0, !tbaa !29
  store ptr %t115, ptr %l63, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 0
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/generic:Program", ptr %t119, i32 0, i32 2
  store ptr %t121, ptr %l66, !tbaa !29
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:Scoper", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/generic:Program", ptr %t125, i32 0, i32 2
  %t128 = load i32, ptr %l1, !tbaa !23
  %t131 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t127, i32 %t128)
  store i32 %t131, ptr %l71
  br label %bb28
bb28:
  %t132 = load ptr, ptr %l66, !tbaa !29
  %t133 = load i32, ptr %l71, !tbaa !23
  %t134 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t132, i32 %t133)
  store { i64, ptr } %t134, ptr %l72
  br label %bb29
bb29:
  %t135 = load ptr, ptr %lp2
  %t136 = load ptr, ptr %l63, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l72, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseParts(ptr %v0, ptr %v0, ptr %v1, ptr %t136, { i64, ptr } %t137, ptr %t135)
  br label %bb30
bb30:
  br label %bb42
bb31:
  %t139 = load i32, ptr %l4, !range !{i32 0, i32 6}
  %t141 = trunc i64 4 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t144 = load ptr, ptr %lp2
  store ptr %t144, ptr %l76, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/scope:Scoper", ptr %t145, i32 0, i32 0
  %t148 = load ptr, ptr %t147, !tbaa !29
  %t150 = getelementptr %"compiler/generic:Program", ptr %t148, i32 0, i32 2
  %t151 = load i32, ptr %l1, !tbaa !23
  %t154 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %t150, i32 %t151)
  store i32 %t154, ptr %l81
  br label %bb35
bb35:
  %t155 = load ptr, ptr %l76, !tbaa !29
  %t156 = load i32, ptr %l81, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t155, i32 %t156)
  br label %bb36
bb36:
  br label %bb42
bb37:
  br i1 true, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_74d9849f1cf072e4_d95edc215f7aa198)
  unreachable
bb42:
  br label %bb76
bb43:
  %t157 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t159 = trunc i64 19 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb49
bb46:
  %t162 = load ptr, ptr %lp2
  store ptr %t162, ptr %l84, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 0
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = getelementptr %"compiler/generic:Program", ptr %t166, i32 0, i32 2
  %t169 = load i32, ptr %l1, !tbaa !23
  %t172 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t168, i32 %t169)
  store i32 %t172, ptr %l89
  br label %bb47
bb47:
  %t173 = load ptr, ptr %l84, !tbaa !29
  %t174 = load i32, ptr %l89, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t173, i32 %t174)
  br label %bb48
bb48:
  br label %bb76
bb49:
  %t175 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t177 = trunc i64 22 to i32
  %t178 = icmp eq i32 %t175, %t177
  br i1 %t178, label %bb50, label %bb51
bb50:
  br label %bb54
bb51:
  %t180 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t182 = trunc i64 23 to i32
  %t183 = icmp eq i32 %t180, %t182
  br i1 %t183, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb64
bb54:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/scope:Scoper", ptr %t185, i32 0, i32 0
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/generic:Program", ptr %t188, i32 0, i32 2
  store ptr %t190, ptr %l96, !tbaa !29
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/scope:Scoper", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t196 = getelementptr %"compiler/generic:Program", ptr %t194, i32 0, i32 2
  %t197 = load i32, ptr %l1, !tbaa !23
  %t200 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t196, i32 %t197)
  store i32 %t200, ptr %l101
  br label %bb55
bb55:
  %t201 = load ptr, ptr %l96, !tbaa !29
  %t202 = load i32, ptr %l101, !tbaa !23
  %t203 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t201, i32 %t202)
  store { i64, ptr } %t203, ptr %l102
  br label %bb56
bb56:
  %t204 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t204, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  store i64 %t207, ptr %l11, !tbaa !24
  br label %bb57
bb57:
  %t209 = load i64, ptr %l10, !tbaa !24
  %t210 = load i64, ptr %l11, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb58, label %bb59
bb58:
  br label %bb63
bb59:
  br label %bb60
bb60:
  %t217 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t217, ptr %l109, !tbaa !27
  %t218 = load i64, ptr %l10, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr i32, ptr %t221, i64 %t218
  %t223 = load i32, ptr %t222, !tbaa !33
  %t225 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t225, i32 %t223)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t229 = load i64, ptr %l10, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l10, !tbaa !24
  br label %bb57
bb63:
  br label %bb76
bb64:
  %t233 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t235 = trunc i64 24 to i32
  %t236 = icmp eq i32 %t233, %t235
  br i1 %t236, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb71
bb67:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l118, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t244 = getelementptr %"compiler/generic:Program", ptr %t242, i32 0, i32 2
  store ptr %t244, ptr %l121, !tbaa !29
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/scope:Scoper", ptr %t245, i32 0, i32 0
  %t248 = load ptr, ptr %t247, !tbaa !29
  %t250 = getelementptr %"compiler/generic:Program", ptr %t248, i32 0, i32 2
  %t251 = load i32, ptr %l1, !tbaa !23
  %t254 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t250, i32 %t251)
  store i32 %t254, ptr %l126
  br label %bb68
bb68:
  %t255 = load ptr, ptr %l121, !tbaa !29
  %t256 = load i32, ptr %l126, !tbaa !23
  %t257 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t255, i32 %t256)
  store { i64, ptr } %t257, ptr %l127
  br label %bb69
bb69:
  %t258 = load ptr, ptr %lp2
  %t259 = load ptr, ptr %l118, !tbaa !29
  %t260 = load { i64, ptr }, ptr %l127, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaseParts(ptr %v0, ptr %v0, ptr %v1, ptr %t259, { i64, ptr } %t260, ptr %t258)
  br label %bb70
bb70:
  br label %bb76
bb71:
  br i1 true, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_b99a325748da8cd5_4eb62b65b3c79869)
  unreachable
bb76:
  %t262 = load ptr, ptr %lp2
  %t263 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t262
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t263, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epassDerived(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, [2 x i64] }
  %l16 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l61 = alloca i64
  %l65 = alloca i64
  %l71 = alloca { i64, [2 x i64] }
  %l74 = alloca i1
  %l75 = alloca i1
  %l78 = alloca i1
  %l82 = alloca { i64, [2 x i64] }
  %l85 = alloca { i64, [2 x i64] }
  %l88 = alloca i1
  %l90 = alloca i1
  %l95 = alloca ptr
  %l102 = alloca { i64, [2 x i64] }
  %l103 = alloca ptr
  %l107 = alloca %"compiler/typed:DerivedArg"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t109 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
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
  store i1 true, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Call", ptr %t5, i32 0, i32 4
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t10 = load i1, ptr %l19, !tbaa !21
  br i1 %t10, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 6
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l25
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l25, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  %t21 = getelementptr %"compiler/scope:summary", ptr %t19, i32 0, i32 14
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l28
  br label %bb8
bb8:
  %t24 = load i64, ptr %l28, !tbaa !24
  %t25 = icmp eq i64 %t24, 0
  br i1 %t25, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t27 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l30
  br label %bb12
bb12:
  %t28 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l5
  store i64 0, ptr %l6, !tbaa !24
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = getelementptr %"compiler/scope:summary", ptr %t29, i32 0, i32 14
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l33
  br label %bb13
bb13:
  %t34 = load i64, ptr %l33, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp sgt i64 %t35, %t36
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb19
bb16:
  %t45 = load i64, ptr %l7, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = sub i64 %t45, %t46
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = add i64 %t49, %t50
  %t55 = sub i64 %t53, 1
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = sdiv i64 %t55, %t56
  store i64 %t59, ptr %l40, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb18
bb18:
  %t61 = load i64, ptr %l40, !tbaa !24
  store i64 %t61, ptr %l37, !tbaa !24
  br label %bb19
bb19:
  %t62 = load i64, ptr %l37, !tbaa !24
  store i64 %t62, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb20
bb20:
  store %olang.scope zeroinitializer, ptr %s4
  %t63 = load i64, ptr %l10, !tbaa !24
  %t64 = load i64, ptr %l9, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s4)
  br label %bb52
bb22:
  br label %bb23
bb23:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l10, !tbaa !24
  %t73 = load i64, ptr %l8, !tbaa !24
  %t76 = mul i64 %t72, %t73
  %t79 = add i64 %t71, %t76
  store i64 %t79, ptr %l11, !tbaa !24
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/scope:summary", ptr %t81, i32 0, i32 14
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  store i64 %t87, ptr %l61
  br label %bb24
bb24:
  %t88 = load i64, ptr %l61, !tbaa !24
  store i64 %t88, ptr %l12, !tbaa !24
  %t89 = load ptr, ptr %l4, !tbaa !29
  %t91 = getelementptr %"compiler/scope:summary", ptr %t89, i32 0, i32 15
  %t92 = load i64, ptr %l11, !tbaa !24
  %t95 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t91, i64 %t92)
  store i64 %t95, ptr %l65
  br label %bb25
bb25:
  %t96 = load i64, ptr %l65, !tbaa !24
  store i64 %t96, ptr %l13, !tbaa !24
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l13, !tbaa !24
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t107 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v1, ptr %v2, ptr %t97, i64 %t98, i64 %t99, ptr %t100, i1 false, { i64, ptr } %a3)
  store { i64, [2 x i64] } %t107, ptr %l71
  br label %bb26
bb26:
  %t108 = load { i64, [2 x i64] }, ptr %l71
  store { i64, [2 x i64] } %t108, ptr %l14
  store { i64, [2 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 0
  store i64 0, ptr %t110
  %t111 = load { i64, [2 x i64] }, ptr %t109
  store { i64, [2 x i64] } %t111, ptr %l15
  %t113 = load { i64, [2 x i64] }, ptr %l14
  %t115 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t113)
  store i1 %t115, ptr %l74
  br label %bb27
bb27:
  %t116 = load i1, ptr %l74, !tbaa !21
  br i1 %t116, label %bb28, label %bb29
bb28:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load { i64, [2 x i64] }, ptr %l14
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %t117, { i64, [2 x i64] } %t118)
  store i1 %t121, ptr %l78
  br label %bb30
bb29:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb31
bb30:
  %t122 = load i1, ptr %l78, !tbaa !21
  %t123 = xor i1 %t122, true
  store i1 %t123, ptr %l75, !tbaa !21
  br label %bb31
bb31:
  %t125 = load i1, ptr %l75, !tbaa !21
  br i1 %t125, label %bb32, label %bb33
bb32:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, [2 x i64] }, ptr %l14
  %t130 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t126, { i64, [2 x i64] } %t127)
  store { i64, [2 x i64] } %t130, ptr %l82
  br label %bb34
bb33:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load { i64, [2 x i64] }, ptr %l14
  %t135 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %t131, { i64, [2 x i64] } %t132, i64 -1)
  store { i64, [2 x i64] } %t135, ptr %l85
  br label %bb35
bb34:
  %t136 = load { i64, [2 x i64] }, ptr %l82
  store { i64, [2 x i64] } %t136, ptr %l15
  br label %bb36
bb35:
  %t137 = load { i64, [2 x i64] }, ptr %l85
  store { i64, [2 x i64] } %t137, ptr %l15
  br label %bb36
bb36:
  %t138 = load { i64, [2 x i64] }, ptr %l15
  %t140 = extractvalue { i64, [2 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 0
  br i1 %t141, label %bb37, label %bb38
bb37:
  %t143 = load i64, ptr %l13, !tbaa !24
  %t145 = call i1 @compiler_2fscope_2eisCapCode(i64 %t143)
  store i1 %t145, ptr %l90
  br label %bb39
bb38:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb40
bb39:
  %t146 = load i1, ptr %l90, !tbaa !21
  store i1 %t146, ptr %l88, !tbaa !21
  br label %bb40
bb40:
  %t147 = load i1, ptr %l88, !tbaa !21
  br i1 %t147, label %bb41, label %bb42
bb41:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t150 = load i64, ptr %l12, !tbaa !24
  %t151 = load i64, ptr %l13, !tbaa !24
  %t156 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapRoot(ptr %v0, ptr %v1, ptr %v1, ptr %t148, ptr %t149, i64 %t150, i64 %t151)
  store ptr %t156, ptr %l95
  br label %bb43
bb42:
  br label %bb48
bb43:
  %t157 = load ptr, ptr %l95, !tbaa !29
  store ptr %t157, ptr %l16, !tbaa !29
  %t158 = load ptr, ptr %l16, !tbaa !29
  %t160 = icmp eq ptr %t158, null
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb44, label %bb45
bb44:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/scope:Scoper", ptr %t164, i32 0, i32 33
  %t167 = load ptr, ptr %l16, !tbaa !29
  %t170 = call { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %t166, ptr %t167)
  store { i64, [2 x i64] } %t170, ptr %l102
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t171 = load { i64, [2 x i64] }, ptr %l102
  store { i64, [2 x i64] } %t171, ptr %l15
  br label %bb47
bb47:
  br label %bb48
bb48:
  store ptr %l5, ptr %l103, !tbaa !29
  %t172 = load i64, ptr %l12, !tbaa !24
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load { i64, [2 x i64] }, ptr %l15
  %t178 = call %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %s4, i64 %t172, i64 %t173, { i64, [2 x i64] } %t174)
  store %"compiler/typed:DerivedArg" %t178, ptr %l107
  br label %bb49
bb49:
  %t179 = load ptr, ptr %l103, !tbaa !29
  %t180 = load %"compiler/typed:DerivedArg", ptr %l107
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %s0, ptr %t179, %"compiler/typed:DerivedArg" %t180)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s4)
  br label %bb51
bb51:
  %t181 = load i64, ptr %l10, !tbaa !24
  %t183 = add i64 %t181, 1
  store i64 %t183, ptr %l10, !tbaa !24
  br label %bb20
bb52:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/scope:Scoper", ptr %t185, i32 0, i32 33
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = getelementptr %"compiler/typed:Call", ptr %t188, i32 0, i32 2
  %t191 = load i32, ptr %t190, !tbaa !23
  %t192 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassDerived(ptr %v0, ptr %s0, ptr %t187, i32 %t191, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t192)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFieldArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i32
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca %"compiler/source:Span"
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, [1 x i64] }
  %l25 = alloca i32
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i1
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
  %l50 = alloca i1
  %l59 = alloca i1
  %l66 = alloca ptr
  %l68 = alloca i32
  %l69 = alloca i1
  %l70 = alloca i1
  %l77 = alloca ptr
  %l79 = alloca i32
  %l80 = alloca i1
  %l82 = alloca i1
  %l91 = alloca i1
  %l99 = alloca ptr
  %l101 = alloca i32
  %l103 = alloca { i64, [1 x i64] }
  %l108 = alloca ptr
  %l110 = alloca i32
  %l112 = alloca i64
  %l113 = alloca ptr
  %l117 = alloca ptr
  %l118 = alloca i32
  %l121 = alloca ptr
  %l124 = alloca i1
  %l127 = alloca i1
  %l135 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t2 = load ptr, ptr %l29, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l29, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l30, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l30, !tbaa !21
  %t10 = xor i1 %t9, true
  br i1 %t10, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr { i64, [4 x i64] }, ptr %t12, i32 0, i32 1
  %t15 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t14, i32 0, i32 0
  %t16 = load %"compiler/source:Span", ptr %t15
  store %"compiler/source:Span" %t16, ptr %l3
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t20, i32 0, i32 1
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l4, !tbaa !23
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [4 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t32, i32 0, i32 3
  %t34 = load i64, ptr %t33
  store i64 %t34, ptr %l6, !tbaa !24
  store ptr %t28, ptr %l7, !tbaa !29
  %t38 = load ptr, ptr %l7, !tbaa !29
  %t40 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t38)
  store i64 %t40, ptr %l44
  br label %bb6
bb6:
  %t41 = load i64, ptr %l44, !tbaa !24
  store i64 %t41, ptr %l8, !tbaa !24
  %t42 = load ptr, ptr %l7, !tbaa !29
  store ptr %t42, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t43 = load ptr, ptr %l45, !tbaa !29
  %t44 = icmp ne ptr %t43, null
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = load ptr, ptr %l45, !tbaa !29
  %t47 = load i64, ptr %t46, !range !{i64 0, i64 8}
  %t49 = icmp eq i64 %t47, 0
  store i1 %t49, ptr %l46, !tbaa !21
  br label %bb8
bb8:
  %t50 = load i1, ptr %l46, !tbaa !21
  %t51 = xor i1 %t50, true
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb11
bb10:
  %t53 = load ptr, ptr %l7, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l9
  %t59 = load ptr, ptr %l7, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l10, !tbaa !23
  %t65 = load ptr, ptr %l7, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t67, i32 0, i32 2
  %t69 = load i32, ptr %t68
  store i32 %t69, ptr %l11, !tbaa !23
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = icmp slt i64 %t71, 0
  store i1 %t73, ptr %l50, !tbaa !21
  br label %bb11
bb11:
  %t75 = load i1, ptr %l50, !tbaa !21
  br i1 %t75, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb16
bb13:
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t78 = getelementptr { i64, [4 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t78, i32 0, i32 0
  %t80 = load %"compiler/source:Span", ptr %t79
  store %"compiler/source:Span" %t80, ptr %l12
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t84 = getelementptr { i64, [4 x i64] }, ptr %t82, i32 0, i32 1
  %t85 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t84, i32 0, i32 1
  %t86 = load i32, ptr %t85
  store i32 %t86, ptr %l13, !tbaa !23
  %t88 = load ptr, ptr %l7, !tbaa !29
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t90, i32 0, i32 2
  %t92 = load i32, ptr %t91
  store i32 %t92, ptr %l14, !tbaa !23
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l66, !tbaa !29
  %t95 = load ptr, ptr %l7, !tbaa !29
  %t97 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t95)
  store i32 %t97, ptr %l68
  br label %bb14
bb14:
  %t98 = load ptr, ptr %l66, !tbaa !29
  %t99 = load i32, ptr %l68, !tbaa !23
  %t100 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t98, i32 %t99)
  store i1 %t100, ptr %l69
  br label %bb15
bb15:
  %t101 = load i1, ptr %l69, !tbaa !21
  store i1 %t101, ptr %l59, !tbaa !21
  br label %bb16
bb16:
  %t102 = load i1, ptr %l59, !tbaa !21
  br i1 %t102, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb21
bb18:
  %t103 = load ptr, ptr %l7, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t105, i32 0, i32 0
  %t107 = load %"compiler/source:Span", ptr %t106
  store %"compiler/source:Span" %t107, ptr %l15
  %t109 = load ptr, ptr %l7, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t111, i32 0, i32 1
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l16, !tbaa !23
  %t115 = load ptr, ptr %l7, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t117, i32 0, i32 2
  %t119 = load i32, ptr %t118
  store i32 %t119, ptr %l17, !tbaa !23
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l77, !tbaa !29
  %t122 = load ptr, ptr %l7, !tbaa !29
  %t124 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t122)
  store i32 %t124, ptr %l79
  br label %bb19
bb19:
  %t125 = load ptr, ptr %l77, !tbaa !29
  %t126 = load i32, ptr %l79, !tbaa !23
  %t127 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t125, i32 %t126)
  store i1 %t127, ptr %l80
  br label %bb20
bb20:
  %t128 = load i1, ptr %l80, !tbaa !21
  %t129 = xor i1 %t128, true
  store i1 %t129, ptr %l70, !tbaa !21
  br label %bb21
bb21:
  %t131 = load i1, ptr %l70, !tbaa !21
  br i1 %t131, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb25
bb23:
  %t132 = load ptr, ptr %l7, !tbaa !29
  %t134 = getelementptr { i64, [4 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t134, i32 0, i32 0
  %t136 = load %"compiler/source:Span", ptr %t135
  store %"compiler/source:Span" %t136, ptr %l18
  %t138 = load ptr, ptr %l7, !tbaa !29
  %t140 = getelementptr { i64, [4 x i64] }, ptr %t138, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t140, i32 0, i32 1
  %t142 = load i32, ptr %t141
  store i32 %t142, ptr %l19, !tbaa !23
  %t144 = load ptr, ptr %l7, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t146, i32 0, i32 2
  %t148 = load i32, ptr %t147
  store i32 %t148, ptr %l20, !tbaa !23
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i64, ptr %l8, !tbaa !24
  %t154 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %t150, i64 %t151)
  store i1 %t154, ptr %l91
  br label %bb24
bb24:
  %t155 = load i1, ptr %l91, !tbaa !21
  %t156 = xor i1 %t155, true
  store i1 %t156, ptr %l82, !tbaa !21
  br label %bb25
bb25:
  %t158 = load i1, ptr %l82, !tbaa !21
  br i1 %t158, label %bb26, label %bb27
bb26:
  br label %ret
bb27:
  br label %bb28
bb28:
  %t159 = load ptr, ptr %l7, !tbaa !29
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t161, i32 0, i32 0
  %t163 = load %"compiler/source:Span", ptr %t162
  store %"compiler/source:Span" %t163, ptr %l21
  %t165 = load ptr, ptr %l7, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 1
  %t169 = load i32, ptr %t168
  store i32 %t169, ptr %l22, !tbaa !23
  %t171 = load ptr, ptr %l7, !tbaa !29
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t173, i32 0, i32 2
  %t175 = load i32, ptr %t174
  store i32 %t175, ptr %l23, !tbaa !23
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l99, !tbaa !29
  %t178 = load ptr, ptr %l7, !tbaa !29
  %t180 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t178)
  store i32 %t180, ptr %l101
  br label %bb29
bb29:
  %t181 = load i64, ptr %l6, !tbaa !24
  %t182 = load ptr, ptr %l99, !tbaa !29
  %t183 = load i32, ptr %l101, !tbaa !23
  %t185 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t182, i32 %t183, i64 %t181)
  store { i64, [1 x i64] } %t185, ptr %l103
  br label %bb30
bb30:
  %t186 = load { i64, [1 x i64] }, ptr %l103
  store { i64, [1 x i64] } %t186, ptr %l24
  %t187 = load { i64, [1 x i64] }, ptr %l24
  %t189 = extractvalue { i64, [1 x i64] } %t187, 0
  %t190 = icmp eq i64 %t189, 2
  %t192 = xor i1 %t190, true
  br i1 %t192, label %bb31, label %bb32
bb31:
  br label %ret
bb32:
  br label %bb33
bb33:
  %t194 = getelementptr { i64, [1 x i64] }, ptr %l24, i32 0, i32 1
  %t195 = getelementptr { i32 }, ptr %t194, i32 0, i32 0
  %t196 = load i32, ptr %t195
  store i32 %t196, ptr %l25, !tbaa !23
  %t198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t198, ptr %l108, !tbaa !29
  %t199 = load ptr, ptr %l7, !tbaa !29
  %t201 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t199)
  store i32 %t201, ptr %l110
  br label %bb34
bb34:
  %t202 = load i32, ptr %l25, !tbaa !23
  %t203 = load ptr, ptr %l108, !tbaa !29
  %t204 = load i32, ptr %l110, !tbaa !23
  %t206 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %t203, i32 %t204, i32 %t202)
  store i64 %t206, ptr %l112
  br label %bb35
bb35:
  %t207 = load i64, ptr %l112, !tbaa !24
  store i64 %t207, ptr %l26, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %t208, i32 0, i32 45
  %t211 = load i64, ptr %l8, !tbaa !24
  %t214 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t210, i64 %t211)
  %t215 = extractvalue { i32, ptr } %t214, 1
  %t216 = extractvalue { i32, ptr } %t214, 0
  store i32 %t216, ptr %l118
  %t217 = icmp ne i32 %t216, 0
  br i1 %t217, label %bb37, label %ok.218, !prof !99
ok.218:
  store ptr %t215, ptr %l117
  br label %bb36
bb36:
  %t219 = load ptr, ptr %l117, !tbaa !29
  store ptr %t219, ptr %l113, !tbaa !29
  br label %bb39
bb37:
  br label %bb38
bb38:
  br label %ret
bb39:
  %t220 = load ptr, ptr %l113, !tbaa !29
  store ptr %t220, ptr %l27, !tbaa !29
  %t221 = load ptr, ptr %l27, !tbaa !29
  %t224 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v0, ptr %t221)
  store ptr %t224, ptr %l121
  br label %bb40
bb40:
  %t225 = load ptr, ptr %l121, !tbaa !29
  store ptr %t225, ptr %l28, !tbaa !29
  %t226 = load ptr, ptr %l28, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  br i1 %t228, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l124, !tbaa !21
  br label %bb43
bb42:
  %t230 = load i64, ptr %l26, !tbaa !24
  %t232 = icmp slt i64 %t230, 0
  store i1 %t232, ptr %l124, !tbaa !21
  br label %bb43
bb43:
  %t234 = load i1, ptr %l124, !tbaa !21
  br i1 %t234, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb46
bb45:
  %t235 = load i64, ptr %l26, !tbaa !24
  %t236 = load ptr, ptr %l28, !tbaa !29
  %t238 = getelementptr %"compiler/typed:Call", ptr %t236, i32 0, i32 1
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t244 = icmp sge i64 %t235, %t241
  store i1 %t244, ptr %l127, !tbaa !21
  br label %bb46
bb46:
  %t246 = load i1, ptr %l127, !tbaa !21
  br i1 %t246, label %bb47, label %bb48
bb47:
  br label %ret
bb48:
  br label %bb49
bb49:
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t248 = load ptr, ptr %l28, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Call", ptr %t248, i32 0, i32 1
  %t251 = load { i64, ptr }, ptr %t250, !tbaa !27
  store { i64, ptr } %t251, ptr %l135, !tbaa !27
  %t252 = load i64, ptr %l26, !tbaa !24
  %t254 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr ptr, ptr %t255, i64 %t252
  %t257 = load ptr, ptr %t256, !tbaa !39
  %t258 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v0, ptr %t247, ptr %t257, { i64, [2 x i64] } %t258)
  br label %bb50
bb50:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l27, !tbaa !29
  %t264 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v0, ptr %t262, ptr %t263, { i64, [2 x i64] } %t264)
  br label %bb51
bb51:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecRels(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, %"compiler/scope:fnRec" %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRec"
  %l2 = alloca { i64, ptr }
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/scope:rel"
  %l7 = alloca %"compiler/scope:rel"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i64
  %l22 = alloca %"compiler/scope:rel"
  %l27 = alloca { i64, [2 x i64] }
  %l31 = alloca { i64, [2 x i64] }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store %"compiler/scope:fnRec" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v3, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v3, i64 32, i64 8)
  store ptr %t2, ptr %lp3
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  %t4 = load ptr, ptr %lp3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 6
  %t8 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t7, i64 %t9)
  store ptr %t12, ptr %l12
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l12, !tbaa !29
  %t15 = getelementptr %"compiler/scope:summary", ptr %t13, i32 0, i32 0
  store ptr %t15, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l15, !tbaa !24
  %t18 = load ptr, ptr %l4, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l17
  br label %bb4
bb4:
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = load i64, ptr %l17, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l4, !tbaa !29
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t27, i64 %t28)
  store %"compiler/scope:rel" %t31, ptr %l22
  br label %bb8
bb8:
  %t32 = load %"compiler/scope:rel", ptr %l22
  store %"compiler/scope:rel" %t32, ptr %l6
  %t33 = load %"compiler/scope:rel", ptr %l6
  store %"compiler/scope:rel" %t33, ptr %l7
  %t35 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 0
  %t36 = load { i64, [2 x i64] }, ptr %t35
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t39 = load i1, ptr %t38, !tbaa !21
  %t43 = call { i64, [2 x i64] } @compiler_2fscope_2erecTerm(ptr %v2, { i64, [2 x i64] } %t36, { i64, ptr } %t37, i1 %t39)
  store { i64, [2 x i64] } %t43, ptr %l27
  br label %bb9
bb9:
  %t44 = load { i64, [2 x i64] }, ptr %l27
  %t45 = getelementptr %"compiler/scope:rel", ptr %l7, i32 0, i32 0
  store { i64, [2 x i64] } %t44, ptr %t45
  %t46 = getelementptr %"compiler/scope:rel", ptr %l6, i32 0, i32 1
  %t47 = load { i64, [2 x i64] }, ptr %t46
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t49 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t50 = load i1, ptr %t49, !tbaa !21
  %t54 = call { i64, [2 x i64] } @compiler_2fscope_2erecTerm(ptr %v2, { i64, [2 x i64] } %t47, { i64, ptr } %t48, i1 %t50)
  store { i64, [2 x i64] } %t54, ptr %l31
  br label %bb10
bb10:
  %t55 = load { i64, [2 x i64] }, ptr %l31
  %t56 = getelementptr %"compiler/scope:rel", ptr %l7, i32 0, i32 1
  store { i64, [2 x i64] } %t55, ptr %t56
  %t57 = load ptr, ptr %lp3
  %t58 = load %"compiler/scope:rel", ptr %l7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v3, ptr %t57, %"compiler/scope:rel" %t58)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t61 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l5, !tbaa !24
  br label %bb3
bb13:
  %t65 = load ptr, ptr %lp3
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretValue(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca ptr
  %l21 = alloca i32
  %l26 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i1
  %l44 = alloca i64
  %l47 = alloca i64
  %l68 = alloca { i64, ptr }
  %l73 = alloca ptr
  %l75 = alloca ptr
  %l77 = alloca { i64, [2 x i64] }
  %l78 = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  store ptr %t6, ptr %l13, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 26
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_809913f5cd352437_1916f8199b9f645b)
  unreachable
bb2:
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 26
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Body", ptr %t17, i32 0, i32 2
  %t21 = load i32, ptr %t20, !tbaa !23
  %t22 = load ptr, ptr %l13, !tbaa !29
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t22, i32 %t21)
  store i32 %t24, ptr %l21
  br label %bb4
bb4:
  %t25 = load i32, ptr %l21, !tbaa !23
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/generic:Program", ptr %t29, i32 0, i32 2
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t31, i32 %t25)
  store i32 %t35, ptr %l26
  br label %bb5
bb5:
  %t36 = load i32, ptr %l26, !range !{i32 0, i32 33}
  %t38 = trunc i64 22 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb8, label %bb9
bb7:
  br label %bb37
bb8:
  %t45 = load ptr, ptr %l29, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 18}
  %t48 = icmp eq i64 %t46, 7
  store i1 %t48, ptr %l30, !tbaa !21
  br label %bb9
bb9:
  %t49 = load i1, ptr %l30, !tbaa !21
  br i1 %t49, label %bb10, label %bb11
bb10:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 2
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  br label %bb12
bb11:
  br label %bb29
bb12:
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Make", ptr %t56, i32 0, i32 0
  %t59 = load i32, ptr %t58, !range !{i32 0, i32 5}
  %t61 = trunc i64 0 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb13, label %bb14
bb13:
  store i64 0, ptr %l5, !tbaa !24
  %t64 = load ptr, ptr %l4, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Make", ptr %t64, i32 0, i32 2
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = icmp sgt i64 %t71, %t72
  br i1 %t75, label %bb15, label %bb16
bb14:
  br label %bb28
bb15:
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = icmp sgt i64 %t77, 0
  br i1 %t79, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb20
bb17:
  %t81 = load i64, ptr %l6, !tbaa !24
  %t82 = load i64, ptr %l5, !tbaa !24
  %t85 = sub i64 %t81, %t82
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = add i64 %t85, %t86
  %t91 = sub i64 %t89, 1
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = sdiv i64 %t91, %t92
  store i64 %t95, ptr %l47, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb19
bb19:
  %t97 = load i64, ptr %l47, !tbaa !24
  store i64 %t97, ptr %l44, !tbaa !24
  br label %bb20
bb20:
  %t98 = load i64, ptr %l44, !tbaa !24
  store i64 %t98, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t99 = load i64, ptr %l9, !tbaa !24
  %t100 = load i64, ptr %l8, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t107 = load i64, ptr %l5, !tbaa !24
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = load i64, ptr %l7, !tbaa !24
  %t112 = mul i64 %t108, %t109
  %t115 = add i64 %t107, %t112
  store i64 %t115, ptr %l10, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load ptr, ptr %l4, !tbaa !29
  %t121 = getelementptr %"compiler/typed:Make", ptr %t119, i32 0, i32 2
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l68, !tbaa !27
  %t123 = load i64, ptr %l10, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr ptr, ptr %t126, i64 %t123
  %t128 = load ptr, ptr %t127, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretOne(ptr %v0, ptr %v1, ptr %t117, i64 %t118, ptr %t128)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l9, !tbaa !24
  br label %bb21
bb27:
  br label %ret
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
  call void @__olang_check_failed(ptr @olang_loc_27bac09e5f891f0f_32e7ac9a46fe4703)
  unreachable
bb34:
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l73, !tbaa !29
  %t137 = load ptr, ptr %l2, !tbaa !29
  store ptr %t137, ptr %l75, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %t139, i64 0)
  store { i64, [2 x i64] } %t141, ptr %l77
  br label %bb35
bb35:
  %t142 = load ptr, ptr %l73, !tbaa !29
  %t143 = load ptr, ptr %l75, !tbaa !29
  %t144 = load { i64, [2 x i64] }, ptr %l77
  %t145 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t142, ptr %t143, { i64, [2 x i64] } %t144)
  store %"compiler/scope:Val" %t145, ptr %l78
  br label %bb36
bb36:
  br label %ret
bb37:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretOne(ptr %v0, ptr %v1, ptr %t146, i64 0, ptr %t147)
  br label %bb38
bb38:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArray(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l41 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 138
  store i64 %a1, ptr %t5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 139
  store i1 false, ptr %t8, !tbaa !21
  store i64 %a3, ptr %l4, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb6
bb3:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l22, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb5
bb5:
  %t41 = load i64, ptr %l22, !tbaa !24
  store i64 %t41, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t42 = load i64, ptr %l19, !tbaa !24
  store i64 %t42, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t43 = load i64, ptr %l8, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb8, label %bb9
bb8:
  br label %bb13
bb9:
  br label %bb10
bb10:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t62, ptr %l41, !tbaa !27
  %t65 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr ptr, ptr %t66, i64 %t59
  %t68 = load ptr, ptr %t67, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %t61, ptr %t68)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l8, !tbaa !24
  br label %bb7
bb13:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 139
  %t79 = load i1, ptr %t78, !tbaa !21
  %t81 = xor i1 %t79, true
  store i1 %t81, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %s0, ptr %t7, i64 %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l12
  br label %bb2
bb2:
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l14
  br label %bb3
bb3:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l3
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l3)
  store i64 %t16, ptr %l16
  br label %bb4
bb4:
  %t17 = load i64, ptr %l16, !tbaa !24
  %t18 = icmp sgt i64 %t17, 1
  br i1 %t18, label %bb5, label %bb6
bb5:
  store ptr %l3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb16
bb7:
  %t21 = load i64, ptr %l5, !tbaa !24
  store i64 %t21, ptr %l19, !tbaa !24
  %t22 = load ptr, ptr %l4, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %t22)
  store i64 %t24, ptr %l21
  br label %bb8
bb8:
  %t25 = load i64, ptr %l19, !tbaa !24
  %t26 = load i64, ptr %l21, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l26
  br label %bb12
bb12:
  %t36 = load i64, ptr %l26, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreOne(ptr %v0, ptr %t37, i64 %t36, i1 %t39)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l5, !tbaa !24
  br label %bb7
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreOne(ptr %v0, ptr %t47, i64 %t48, i1 %t49)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumBuilds(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 6
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  %t10 = getelementptr %"compiler/scope:summary", ptr %t8, i32 0, i32 1
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l9
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %s0, ptr %l9)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l11
  br label %bb2
bb2:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l3
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %l12, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %s0, ptr %l3)
  store i64 %t17, ptr %l14
  br label %bb3
bb3:
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = icmp sge i64 %t18, %t19
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb5:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l3, i64 %t22)
  store i1 %t25, ptr %l19
  br label %bb6
bb6:
  %t26 = load i1, ptr %l19, !tbaa !21
  store i1 %t26, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i1, ptr %l16, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinLimited(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 233
  %t6 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 2
  %t7 = load i32, ptr %t6, !tbaa !23
  %t9 = sext i32 %t7 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t9, i64 %a2)
  br label %bb1
bb1:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueHanded(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l10 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l20 = alloca i64
  %l28 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i1
  %l44 = alloca i1
  %l51 = alloca i1
  %l57 = alloca i1
  %l58 = alloca i32
  %l63 = alloca i32
  %l70 = alloca i1
  %l71 = alloca i1
  %l76 = alloca i1
  %l83 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l92 = alloca i1
  %l97 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l5, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2fscope_2eUseView, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t7, i32 %t8)
  store i1 %t11, ptr %l13
  br label %bb3
bb2:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb3:
  %t12 = load i1, ptr %l13, !tbaa !21
  %t13 = xor i1 %t12, true
  br i1 %t13, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 2
  %t21 = load i32, ptr %l3, !tbaa !23
  %t24 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t24, ptr %l20
  br label %bb6
bb6:
  %t25 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t26 = load i64, ptr %l20, !tbaa !24
  %t28 = and i64 %t26, %t25
  %t30 = icmp eq i64 %t28, 0
  store i1 %t30, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t32 = load i1, ptr %l15, !tbaa !21
  store i1 %t32, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l10, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t39 = icmp eq i64 %t35, %t36
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l31
  br label %bb14
bb13:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb18
bb14:
  %t46 = load i1, ptr %l31, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb17
bb16:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = icmp eq i64 %t49, 3
  store i1 %t51, ptr %l33, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l33, !tbaa !21
  store i1 %t53, ptr %l28, !tbaa !21
  br label %bb18
bb18:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb19, label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t57 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t60 = icmp eq i64 %t56, %t57
  br i1 %t60, label %bb22, label %bb23
bb22:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load i64, ptr @G_2ecompiler_2fscope_2eUseOwn, !tbaa !24
  %t70 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t62, i64 %t63, i64 %t64, i64 %t65)
  store i1 %t70, ptr %l44
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t71 = load i1, ptr %l44, !tbaa !21
  store i1 %t71, ptr %rv
  br label %ret
bb25:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t74 = icmp eq i64 %t72, 1
  br i1 %t74, label %bb26, label %bb27
bb26:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load i64, ptr %l1, !tbaa !24
  %t78 = load i64, ptr %l2, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t76, i64 %t77, i64 %t78, i64 %t79)
  store i1 %t84, ptr %l51
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t85 = load i1, ptr %l51, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb29:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = icmp ne i64 %t86, 2
  br i1 %t88, label %bb30, label %bb31
bb30:
  store i1 false, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t91, i32 %t92)
  store i1 %t95, ptr %l57
  br label %bb33
bb33:
  %t96 = load i1, ptr %l57, !tbaa !21
  br i1 %t96, label %bb34, label %bb35
bb34:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 0
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = getelementptr %"compiler/generic:Program", ptr %t100, i32 0, i32 2
  %t103 = load i32, ptr %l3, !tbaa !23
  %t106 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t102, i32 %t103)
  store i32 %t106, ptr %l63
  br label %bb36
bb35:
  %t107 = load i32, ptr %l3, !tbaa !23
  store i32 %t107, ptr %l58, !tbaa !23
  br label %bb37
bb36:
  %t109 = load i32, ptr %l63, !tbaa !23
  store i32 %t109, ptr %l58, !tbaa !23
  br label %bb37
bb37:
  %t110 = load i32, ptr %l58, !tbaa !23
  store i32 %t110, ptr %l6, !tbaa !23
  %t111 = load i64, ptr %l5, !tbaa !24
  %t112 = load i64, ptr @G_2ecompiler_2fscope_2eUseThru, !tbaa !24
  %t115 = icmp eq i64 %t111, %t112
  br i1 %t115, label %bb38, label %bb39
bb38:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i32, ptr %l6, !tbaa !23
  %t121 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l70
  br label %bb40
bb39:
  br label %bb45
bb40:
  %t122 = load i1, ptr %l70, !tbaa !21
  br i1 %t122, label %bb41, label %bb42
bb41:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = load i64, ptr %l2, !tbaa !24
  %t126 = load i64, ptr @G_2ecompiler_2fscope_2eUseThru, !tbaa !24
  %t131 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t123, i64 %t124, i64 %t125, i64 %t126)
  store i1 %t131, ptr %l76
  br label %bb43
bb42:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb44
bb43:
  %t132 = load i1, ptr %l76, !tbaa !21
  store i1 %t132, ptr %l71, !tbaa !21
  br label %bb44
bb44:
  %t133 = load i1, ptr %l71, !tbaa !21
  store i1 %t133, ptr %rv
  br label %ret
bb45:
  %t134 = load i64, ptr %l5, !tbaa !24
  %t135 = load i64, ptr @G_2ecompiler_2fscope_2eUseView, !tbaa !24
  %t138 = icmp ne i64 %t134, %t135
  br i1 %t138, label %bb46, label %bb47
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l6, !tbaa !23
  %t145 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %t141, i32 %t142)
  store i1 %t145, ptr %l83
  br label %bb49
bb49:
  %t146 = load i1, ptr %l83, !tbaa !21
  br i1 %t146, label %bb50, label %bb51
bb50:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load i64, ptr %l2, !tbaa !24
  %t150 = load i64, ptr @G_2ecompiler_2fscope_2eUseThru, !tbaa !24
  %t155 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t147, i64 %t148, i64 %t149, i64 %t150)
  store i1 %t155, ptr %l88
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t156 = load i1, ptr %l88, !tbaa !21
  store i1 %t156, ptr %rv
  br label %ret
bb53:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i32, ptr %l6, !tbaa !23
  %t161 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t157, i32 %t158)
  store i1 %t161, ptr %l91
  br label %bb54
bb54:
  %t162 = load i1, ptr %l91, !tbaa !21
  br i1 %t162, label %bb55, label %bb56
bb55:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l1, !tbaa !24
  %t165 = load i64, ptr %l2, !tbaa !24
  %t166 = load i64, ptr @G_2ecompiler_2fscope_2eUseView, !tbaa !24
  %t171 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %t163, i64 %t164, i64 %t165, i64 %t166)
  store i1 %t171, ptr %l97
  br label %bb57
bb56:
  store i1 false, ptr %l92, !tbaa !21
  br label %bb58
bb57:
  %t172 = load i1, ptr %l97, !tbaa !21
  store i1 %t172, ptr %l92, !tbaa !21
  br label %bb58
bb58:
  %t173 = load i1, ptr %l92, !tbaa !21
  store i1 %t173, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i32
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca i64
  %l63 = alloca ptr
  %l64 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l116 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca i1
  %l147 = alloca i1
  %l148 = alloca i1
  %l153 = alloca { i64, ptr }
  %l157 = alloca ptr
  %l158 = alloca i1
  %l165 = alloca i32
  %l173 = alloca i64
  %l176 = alloca i1
  %l184 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t6 = load ptr, ptr %l27, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l27, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l28, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l28, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb8
bb7:
  br label %bb21
bb8:
  %t20 = load ptr, ptr %l3, !tbaa !29
  store ptr %t20, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t21 = load ptr, ptr %l33, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t24 = load ptr, ptr %l33, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 0
  store i1 %t27, ptr %l34, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l34, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t31, i32 0, i32 0
  %t33 = load %"compiler/source:Span", ptr %t32
  store %"compiler/source:Span" %t33, ptr %l4
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t37, i32 0, i32 1
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t43, i32 0, i32 2
  %t45 = load i32, ptr %t44
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = sext i32 %t45 to i64
  %t51 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalRegions(ptr %v0, ptr %v2, ptr %t47, i64 %t50, ptr %t51)
  br label %bb13
bb12:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t55)
  store i1 %t57, ptr %l48
  br label %bb14
bb13:
  br label %bb20
bb14:
  %t58 = load i1, ptr %l48, !tbaa !21
  br i1 %t58, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l49, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t62 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t60)
  store i64 %t62, ptr %l51
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t63 = load ptr, ptr %l2, !tbaa !29
  %t64 = load ptr, ptr %l49, !tbaa !29
  %t65 = load i64, ptr %l51, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalRegions(ptr %v0, ptr %v2, ptr %t64, i64 %t65, ptr %t63)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb108
bb21:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t68 = load ptr, ptr %l53, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l53, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 18}
  %t74 = icmp eq i64 %t72, 3
  store i1 %t74, ptr %l54, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l54, !tbaa !21
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l7, !tbaa !29
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  store ptr %t82, ptr %l59, !tbaa !29
  %t83 = load ptr, ptr %l7, !tbaa !29
  %t85 = call i64 @compiler_2fscope_2eregionRoot(ptr %v1, ptr %t83)
  store i64 %t85, ptr %l61
  br label %bb27
bb27:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t87 = load ptr, ptr %l59, !tbaa !29
  %t88 = load i64, ptr %l61, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalRegions(ptr %v0, ptr %v2, ptr %t87, i64 %t88, ptr %t86)
  br label %bb28
bb28:
  br label %bb108
bb29:
  %t90 = load ptr, ptr %l1, !tbaa !29
  store ptr %t90, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t91 = load ptr, ptr %l63, !tbaa !29
  %t92 = icmp ne ptr %t91, null
  br i1 %t92, label %bb30, label %bb31
bb30:
  %t94 = load ptr, ptr %l63, !tbaa !29
  %t95 = load i64, ptr %t94, !range !{i64 0, i64 18}
  %t97 = icmp eq i64 %t95, 17
  store i1 %t97, ptr %l64, !tbaa !21
  br label %bb31
bb31:
  %t98 = load i1, ptr %l64, !tbaa !21
  br i1 %t98, label %bb32, label %bb33
bb32:
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l8, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l8, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t105, ptr %t106, ptr %t108)
  br label %bb35
bb35:
  br label %bb108
bb36:
  %t112 = load ptr, ptr %l1, !tbaa !29
  store ptr %t112, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t113 = load ptr, ptr %l73, !tbaa !29
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %bb37, label %bb38
bb37:
  %t116 = load ptr, ptr %l73, !tbaa !29
  %t117 = load i64, ptr %t116, !range !{i64 0, i64 18}
  %t119 = icmp eq i64 %t117, 11
  store i1 %t119, ptr %l74, !tbaa !21
  br label %bb38
bb38:
  %t120 = load i1, ptr %l74, !tbaa !21
  br i1 %t120, label %bb39, label %bb40
bb39:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr { i64, [5 x i64] }, ptr %t121, i32 0, i32 1
  %t124 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t123, i32 0, i32 2
  %t125 = load ptr, ptr %t124
  store ptr %t125, ptr %l9, !tbaa !29
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = load ptr, ptr %l9, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Cond", ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t127, ptr %t131, ptr %t132)
  br label %bb42
bb42:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load ptr, ptr %l9, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Cond", ptr %t137, i32 0, i32 2
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t142 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t136, ptr %t140, ptr %t142)
  br label %bb43
bb43:
  br label %bb108
bb44:
  %t146 = load ptr, ptr %l1, !tbaa !29
  store ptr %t146, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t147 = load ptr, ptr %l88, !tbaa !29
  %t148 = icmp ne ptr %t147, null
  br i1 %t148, label %bb45, label %bb46
bb45:
  %t150 = load ptr, ptr %l88, !tbaa !29
  %t151 = load i64, ptr %t150, !range !{i64 0, i64 18}
  %t153 = icmp eq i64 %t151, 12
  store i1 %t153, ptr %l89, !tbaa !21
  br label %bb46
bb46:
  %t154 = load i1, ptr %l89, !tbaa !21
  br i1 %t154, label %bb47, label %bb48
bb47:
  %t155 = load ptr, ptr %l1, !tbaa !29
  %t157 = getelementptr { i64, [5 x i64] }, ptr %t155, i32 0, i32 1
  %t158 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t157, i32 0, i32 2
  %t159 = load ptr, ptr %t158
  store ptr %t159, ptr %l10, !tbaa !29
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load ptr, ptr %l10, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Seq", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t166 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t161, ptr %t165, ptr %t166)
  br label %bb50
bb50:
  br label %bb108
bb51:
  %t170 = load ptr, ptr %l1, !tbaa !29
  store ptr %t170, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t171 = load ptr, ptr %l98, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb52, label %bb53
bb52:
  %t174 = load ptr, ptr %l98, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 18}
  %t177 = icmp eq i64 %t175, 14
  store i1 %t177, ptr %l99, !tbaa !21
  br label %bb53
bb53:
  %t178 = load i1, ptr %l99, !tbaa !21
  br i1 %t178, label %bb54, label %bb55
bb54:
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t181 = getelementptr { i64, [5 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t181, i32 0, i32 2
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l11, !tbaa !29
  br label %bb56
bb55:
  br label %bb71
bb56:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load ptr, ptr %l11, !tbaa !29
  %t188 = getelementptr %"compiler/typed:Try", ptr %t186, i32 0, i32 0
  %t189 = load ptr, ptr %t188, !tbaa !29
  %t190 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t185, ptr %t189, ptr %t190)
  br label %bb57
bb57:
  %t194 = load ptr, ptr %l11, !tbaa !29
  %t196 = getelementptr %"compiler/typed:Try", ptr %t194, i32 0, i32 1
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 0
  store i64 %t201, ptr %l14, !tbaa !24
  br label %bb58
bb58:
  %t203 = load i64, ptr %l13, !tbaa !24
  %t204 = load i64, ptr %l14, !tbaa !24
  %t207 = icmp slt i64 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb59, label %bb60
bb59:
  br label %bb70
bb60:
  br label %bb61
bb61:
  %t211 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t211, ptr %l116, !tbaa !27
  %t212 = load i64, ptr %l13, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr ptr, ptr %t215, i64 %t212
  %t217 = load ptr, ptr %t216, !tbaa !39
  %t221 = getelementptr %"compiler/typed:Clause", ptr %t217, i32 0, i32 4
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t224 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t224, 0
  store i64 %t226, ptr %l18, !tbaa !24
  br label %bb62
bb62:
  %t228 = load i64, ptr %l17, !tbaa !24
  %t229 = load i64, ptr %l18, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t236 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t236, ptr %l127, !tbaa !27
  %t237 = load i64, ptr %l17, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr ptr, ptr %t240, i64 %t237
  %t242 = load ptr, ptr %t241, !tbaa !39
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t244, ptr %t242, ptr %t247)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t251 = load i64, ptr %l17, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l17, !tbaa !24
  br label %bb62
bb68:
  br label %bb69
bb69:
  %t255 = load i64, ptr %l13, !tbaa !24
  %t257 = add i64 %t255, 1
  store i64 %t257, ptr %l13, !tbaa !24
  br label %bb58
bb70:
  br label %bb108
bb71:
  %t259 = load ptr, ptr %l1, !tbaa !29
  store ptr %t259, ptr %l138, !tbaa !29
  store i1 false, ptr %l139, !tbaa !21
  %t260 = load ptr, ptr %l138, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb72, label %bb73
bb72:
  %t263 = load ptr, ptr %l138, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 18}
  %t266 = icmp eq i64 %t264, 9
  store i1 %t266, ptr %l139, !tbaa !21
  br label %bb73
bb73:
  %t267 = load i1, ptr %l139, !tbaa !21
  br i1 %t267, label %bb74, label %bb75
bb74:
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr { i64, [5 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t270, i32 0, i32 2
  %t272 = load i32, ptr %t271, !range !{i32 0, i32 52}
  store i32 %t272, ptr %l20
  %t274 = load ptr, ptr %l1, !tbaa !29
  %t276 = getelementptr { i64, [5 x i64] }, ptr %t274, i32 0, i32 1
  %t277 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t276, i32 0, i32 4
  %t278 = load { i64, ptr }, ptr %t277
  store { i64, ptr } %t278, ptr %l21, !tbaa !27
  br label %bb76
bb75:
  br label %bb85
bb76:
  %t280 = load i32, ptr %l20, !range !{i32 0, i32 52}
  %t282 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t280)
  store i1 %t282, ptr %l147
  br label %bb77
bb77:
  %t283 = load i1, ptr %l147, !tbaa !21
  br i1 %t283, label %bb78, label %bb79
bb78:
  %t284 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t286 = extractvalue { i64, ptr } %t284, 0
  %t288 = icmp sgt i64 %t286, 0
  store i1 %t288, ptr %l148, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l148, !tbaa !21
  br label %bb80
bb80:
  %t290 = load i1, ptr %l148, !tbaa !21
  br i1 %t290, label %bb81, label %bb82
bb81:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t292, ptr %l153, !tbaa !27
  %t293 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !27
  %t295 = getelementptr ptr, ptr %t294, i64 0
  %t296 = load ptr, ptr %t295, !tbaa !39
  %t298 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t291, ptr %t296, ptr %t298)
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  br label %bb108
bb85:
  %t302 = load ptr, ptr %l1, !tbaa !29
  store ptr %t302, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t303 = load ptr, ptr %l157, !tbaa !29
  %t304 = icmp ne ptr %t303, null
  br i1 %t304, label %bb86, label %bb87
bb86:
  %t306 = load ptr, ptr %l157, !tbaa !29
  %t307 = load i64, ptr %t306, !range !{i64 0, i64 18}
  %t309 = icmp eq i64 %t307, 6
  store i1 %t309, ptr %l158, !tbaa !21
  br label %bb87
bb87:
  %t310 = load i1, ptr %l158, !tbaa !21
  br i1 %t310, label %bb88, label %bb89
bb88:
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr { i64, [5 x i64] }, ptr %t311, i32 0, i32 1
  %t314 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t313, i32 0, i32 2
  %t315 = load ptr, ptr %t314
  store ptr %t315, ptr %l22, !tbaa !29
  br label %bb90
bb89:
  br label %bb103
bb90:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l22, !tbaa !29
  %t321 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t317, ptr %t318)
  store i32 %t321, ptr %l165
  br label %bb91
bb91:
  %t322 = load i32, ptr %l165, !tbaa !23
  store i32 %t322, ptr %l23, !tbaa !23
  %t323 = load i32, ptr %l23, !tbaa !23
  %t324 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t327 = icmp eq i32 %t323, %t324
  br i1 %t327, label %bb92, label %bb93
bb92:
  br label %ret
bb93:
  br label %bb94
bb94:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/scope:Scoper", ptr %t329, i32 0, i32 0
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"compiler/generic:Program", ptr %t332, i32 0, i32 2
  %t335 = load i32, ptr %l23, !tbaa !23
  %t338 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t334, i32 %t335, i64 0)
  store i64 %t338, ptr %l173
  br label %bb95
bb95:
  %t339 = load i64, ptr %l173, !tbaa !24
  store i64 %t339, ptr %l24, !tbaa !24
  %t340 = load i64, ptr %l24, !tbaa !24
  %t342 = icmp sge i64 %t340, 0
  br i1 %t342, label %bb96, label %bb97
bb96:
  %t344 = load i64, ptr %l24, !tbaa !24
  %t345 = load ptr, ptr %l22, !tbaa !29
  %t347 = getelementptr %"compiler/typed:Call", ptr %t345, i32 0, i32 1
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t348, 0
  %t353 = icmp slt i64 %t344, %t350
  store i1 %t353, ptr %l176, !tbaa !21
  br label %bb98
bb97:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb98
bb98:
  %t355 = load i1, ptr %l176, !tbaa !21
  br i1 %t355, label %bb99, label %bb100
bb99:
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load ptr, ptr %l22, !tbaa !29
  %t359 = getelementptr %"compiler/typed:Call", ptr %t357, i32 0, i32 1
  %t360 = load { i64, ptr }, ptr %t359, !tbaa !27
  store { i64, ptr } %t360, ptr %l184, !tbaa !27
  %t361 = load i64, ptr %l24, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr ptr, ptr %t364, i64 %t361
  %t366 = load ptr, ptr %t365, !tbaa !39
  %t368 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %t356, ptr %t366, ptr %t368)
  br label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb102
bb102:
  br label %bb108
bb103:
  br i1 true, label %bb104, label %bb105
bb104:
  br label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb108
bb107:
  call void @__olang_check_failed(ptr @olang_loc_db029c1eb6e17764_aa731e22a91dc4d8)
  unreachable
bb108:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarScopeName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, [1 x i64] }
  %l4 = alloca i32
  %l7 = alloca i1
  %l8 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca { i64, [1 x i64] }
  %l21 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l33 = alloca %"compiler/typed:Local"
  %l35 = alloca { i64, ptr }
  %l44 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l56 = alloca i1
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l66 = alloca i64
  %l67 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  store i64 %t5, ptr %l8, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 6
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t8)
  store i64 %t10, ptr %l11
  br label %bb3
bb3:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = icmp sge i64 %t11, %t12
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t16, ptr %l14, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l15, !tbaa !24
  %t19 = load i64, ptr %l15, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l15, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t30, ptr %l14, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t31, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Body", ptr %t32, i32 0, i32 6
  %t35 = load i64, ptr %l2, !tbaa !24
  %t38 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t34, i64 %t35)
  store { i64, [1 x i64] } %t38, ptr %l20
  br label %bb8
bb8:
  %t39 = load { i64, [1 x i64] }, ptr %l20
  store { i64, [1 x i64] } %t39, ptr %l3
  %t40 = load { i64, [1 x i64] }, ptr %l3
  %t42 = extractvalue { i64, [1 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 0
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = getelementptr { i64, [1 x i64] }, ptr %l3, i32 0, i32 1
  %t46 = getelementptr { i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l4, !tbaa !23
  br label %bb11
bb10:
  br label %bb14
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 0
  %t55 = load ptr, ptr %t54, !tbaa !29
  %t57 = getelementptr %"compiler/load:Loader", ptr %t55, i32 0, i32 3
  %t58 = load ptr, ptr %t57, !tbaa !29
  store ptr %t58, ptr %l28, !tbaa !29
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 7
  %t62 = load i32, ptr %l4, !tbaa !23
  %t64 = sext i32 %t62 to i64
  %t67 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v1, ptr %t61, i64 %t64)
  store %"compiler/typed:Local" %t67, ptr %l33
  br label %bb12
bb12:
  %t68 = getelementptr %"compiler/typed:Local", ptr %l33, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = load ptr, ptr %l28, !tbaa !29
  %t72 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t70, i32 %t69)
  store { i64, ptr } %t72, ptr %l35
  br label %bb13
bb13:
  %t73 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t75 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 1
  %t77 = extractvalue { i64, ptr } %t75, 0
  %t78 = add i64 %t74, %t77
  %t79 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t81 = add i64 %t78, %t80
  %t82 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t81)
  call void @olang_textcopy(ptr %t82, ptr %t73, i64 %t74)
  %t83 = getelementptr i8, ptr %t82, i64 %t74
  call void @olang_textcopy(ptr %t83, ptr %t76, i64 %t77)
  %t84 = getelementptr i8, ptr %t83, i64 %t77
  call void @olang_textcopy(ptr %t84, ptr %t79, i64 %t80)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t82, 1
  store { i64, ptr } %t86, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb37
bb14:
  %t88 = load { i64, [1 x i64] }, ptr %l3
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 1
  br i1 %t91, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 0
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = getelementptr %"compiler/generic:Program", ptr %t96, i32 0, i32 2
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t99, i32 0, i32 2
  %t102 = load i32, ptr %t101, !tbaa !23
  %t105 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t98, i32 %t102)
  store i64 %t105, ptr %l44
  br label %bb18
bb18:
  %t106 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleTail, !tbaa !24
  %t107 = load i64, ptr %l44, !tbaa !24
  %t109 = icmp eq i64 %t107, %t106
  br i1 %t109, label %bb19, label %bb20
bb19:
  store { i64, ptr } { i64 34, ptr getelementptr inbounds (<{ i64, [34 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l48, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t111, ptr %l47, !tbaa !27
  br label %bb21
bb20:
  store { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l50, !tbaa !27
  %t113 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t113, ptr %l47, !tbaa !27
  br label %bb21
bb21:
  %t115 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t115, ptr %l21, !tbaa !27
  br label %bb37
bb22:
  %t116 = load { i64, [1 x i64] }, ptr %l3
  %t118 = extractvalue { i64, [1 x i64] } %t116, 0
  %t119 = icmp eq i64 %t118, 4
  br i1 %t119, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t121 = load ptr, ptr %l1, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Body", ptr %t121, i32 0, i32 14
  %t124 = load i1, ptr %t123, !tbaa !21
  br i1 %t124, label %bb26, label %bb27
bb26:
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Body", ptr %t126, i32 0, i32 16
  %t129 = load i1, ptr %t128, !tbaa !21
  store i1 %t129, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t131 = load i1, ptr %l56, !tbaa !21
  br i1 %t131, label %bb29, label %bb30
bb29:
  store { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l60, !tbaa !27
  %t132 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t132, ptr %l59, !tbaa !27
  br label %bb31
bb30:
  store { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t134 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t134, ptr %l59, !tbaa !27
  br label %bb31
bb31:
  %t136 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t136, ptr %l21, !tbaa !27
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l64, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t137, ptr %l21, !tbaa !27
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_dc77515c192c1e2e_10e0daed47a736f2)
  unreachable
bb37:
  %t139 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  store i64 %t140, ptr %l66, !tbaa !24
  %t141 = load i64, ptr %l66, !tbaa !24
  %t142 = mul i64 %t141, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t142)
  %t144 = insertvalue { i64, ptr } undef, i64 %t141, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  store { i64, ptr } %t145, ptr %l67, !tbaa !27
  %t146 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = load i64, ptr %l66, !tbaa !24
  %t151 = mul i64 %t150, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t147, ptr %t149, i64 %t151, i1 false)
  %t152 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t152, ptr %l21, !tbaa !27
  %t153 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2ecountTrue(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load ptr, ptr %l2, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t4)
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
  %t17 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t13, i64 %t14)
  store i1 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i1, ptr %l13, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = add i64 %t21, 1
  store i64 %t23, ptr %l1, !tbaa !24
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t27 = add i64 %t25, 1
  store i64 %t27, ptr %l3, !tbaa !24
  br label %bb1
bb11:
  %t29 = load i64, ptr %l1, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2eisDerived({ i64, [2 x i64] } %a0) #0 {
entry:
  %l1 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, [2 x i64] } %a0, 0
  %t4 = icmp eq i64 %t3, 4
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
  call void @__olang_check_failed(ptr @olang_loc_f8cee274909cbd86_8e52ea231ce320a2)
  unreachable
bb9:
  %t6 = load i1, ptr %l1, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2eisNameChar(i8 %a0) #0 {
entry:
  %l0 = alloca i8
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i8 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l0, !tbaa !22
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t1)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb5
bb3:
  %t5 = load i8, ptr %l0, !tbaa !22
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t5)
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb8
bb7:
  %t10 = load i8, ptr %l0, !tbaa !22
  %t12 = icmp eq i8 %t10, 95
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb8
bb8:
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_3awalked_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i32
  %l11 = alloca i1
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca i64
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca i64
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca i64
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca %"compiler/scope:walked"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l15, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l15, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l15
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l17
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l15
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l19, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e1
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l19
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l21
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e1
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l19
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l1
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l23, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e2
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l23, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l23
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l25
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e2
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l23
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = icmp eq ptr %t58, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t59)
  br label %bb15
bb15:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l2
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l27, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e3
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l27, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l27
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t67, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l29
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e3
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l27
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = icmp eq ptr %t78, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t79)
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l3
  %t81 = ptrtoint ptr %v0 to i64
  store i64 %t81, ptr %l31, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e4
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = call ptr @__olang_region_make(ptr %v0)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l31, !tbaa !24
  br label %bb22
bb22:
  %t86 = load i64, ptr %l31
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t87, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l33
  br label %bb23
bb23:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e4
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load i64, ptr %l31
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr null
  %t99 = icmp eq ptr %t98, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t99)
  br label %bb25
bb25:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l4
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l35, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e5
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = call ptr @__olang_region_make(ptr %v0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l35, !tbaa !24
  br label %bb27
bb27:
  %t106 = load i64, ptr %l35
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t107, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l37
  br label %bb28
bb28:
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e5
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = load i64, ptr %l35
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = icmp eq ptr %t118, %t112
  call void @__olang_region_settle(ptr %t112, i1 %t119)
  br label %bb30
bb30:
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l5
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l39, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e6
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l39, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l39
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t127, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l41
  br label %bb33
bb33:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e6
  br i1 %t129, label %bb34, label %bb35
bb34:
  %t131 = load i64, ptr %l39
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t139)
  br label %bb35
bb35:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l6
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l43, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e7
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l43, !tbaa !24
  br label %bb37
bb37:
  %t146 = load i64, ptr %l43
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t147, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l45
  br label %bb38
bb38:
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e7
  br i1 %t149, label %bb39, label %bb40
bb39:
  %t151 = load i64, ptr %l43
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr null
  %t159 = icmp eq ptr %t158, %t152
  call void @__olang_region_settle(ptr %t152, i1 %t159)
  br label %bb40
bb40:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %l7
  %t161 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t161, ptr %l47
  br label %bb41
bb41:
  %t162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l8
  %t163 = ptrtoint ptr %v0 to i64
  store i64 %t163, ptr %l48, !tbaa !24
  %t164 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e9
  br i1 %t164, label %bb42, label %bb43
bb42:
  %t166 = call ptr @__olang_region_make(ptr %v0)
  %t167 = ptrtoint ptr %t166 to i64
  store i64 %t167, ptr %l48, !tbaa !24
  br label %bb43
bb43:
  %t168 = load i64, ptr %l48
  %t169 = inttoptr i64 %t168 to ptr
  %t170 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t169, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l50
  br label %bb44
bb44:
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e9
  br i1 %t171, label %bb45, label %bb46
bb45:
  %t173 = load i64, ptr %l48
  %t174 = inttoptr i64 %t173 to ptr
  %t175 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr null
  %t181 = icmp eq ptr %t180, %t174
  call void @__olang_region_settle(ptr %t174, i1 %t181)
  br label %bb46
bb46:
  %t182 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t182, ptr %l9
  store i32 -1, ptr %l10, !tbaa !23
  store i1 false, ptr %l11, !tbaa !21
  %t183 = ptrtoint ptr %v0 to i64
  store i64 %t183, ptr %l52, !tbaa !24
  %t184 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e12
  br i1 %t184, label %bb47, label %bb48
bb47:
  %t186 = call ptr @__olang_region_make(ptr %v0)
  %t187 = ptrtoint ptr %t186 to i64
  store i64 %t187, ptr %l52, !tbaa !24
  br label %bb48
bb48:
  %t188 = load i64, ptr %l52
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %t189, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t190, ptr %l54
  br label %bb49
bb49:
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e12
  br i1 %t191, label %bb50, label %bb51
bb50:
  %t193 = load i64, ptr %l52
  %t194 = inttoptr i64 %t193 to ptr
  %t195 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54, i32 0, i32 0
  %t196 = load { i64, ptr }, ptr %t195
  %t197 = extractvalue { i64, ptr } %t196, 1
  %t198 = call ptr @__olang_region_or(ptr %t197, ptr null)
  %t199 = icmp ne ptr %t198, null
  %t200 = select i1 %t199, ptr %t198, ptr null
  %t201 = icmp eq ptr %t200, %t194
  call void @__olang_region_settle(ptr %t194, i1 %t201)
  br label %bb51
bb51:
  %t202 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t202, ptr %l12
  %t203 = ptrtoint ptr %v0 to i64
  store i64 %t203, ptr %l56, !tbaa !24
  %t204 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e13
  br i1 %t204, label %bb52, label %bb53
bb52:
  %t206 = call ptr @__olang_region_make(ptr %v0)
  %t207 = ptrtoint ptr %t206 to i64
  store i64 %t207, ptr %l56, !tbaa !24
  br label %bb53
bb53:
  %t208 = load i64, ptr %l56
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t209, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t210, ptr %l58
  br label %bb54
bb54:
  %t211 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3awalked_2e13
  br i1 %t211, label %bb55, label %bb56
bb55:
  %t213 = load i64, ptr %l56
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58, i32 0, i32 0
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = icmp ne ptr %t218, null
  %t220 = select i1 %t219, ptr %t218, ptr null
  %t221 = icmp eq ptr %t220, %t214
  call void @__olang_region_settle(ptr %t214, i1 %t221)
  br label %bb56
bb56:
  %t222 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t222, ptr %l13
  %t223 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26_3e_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t223, ptr %l60
  br label %bb57
bb57:
  %t224 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  %t225 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 0
  %t226 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %t225
  %t227 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 1
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %t227
  %t229 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 2
  %t230 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t230, ptr %t229
  %t231 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 3
  %t232 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %t231
  %t233 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 4
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234, ptr %t233
  %t235 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 5
  %t236 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %t235
  %t237 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 6
  %t238 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t238, ptr %t237
  %t239 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 7
  %t240 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t240, ptr %t239
  %t241 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 8
  %t242 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t242, ptr %t241
  %t243 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 9
  %t244 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t244, ptr %t243
  %t245 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 10
  %t246 = load i32, ptr %l10, !tbaa !23
  store i32 %t246, ptr %t245, !tbaa !23
  %t247 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 11
  %t248 = load i1, ptr %l11, !tbaa !21
  store i1 %t248, ptr %t247, !tbaa !21
  %t249 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 12
  %t250 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %t249
  %t251 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 13
  %t252 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t252, ptr %t251
  %t253 = getelementptr %"compiler/scope:walked", ptr %l61, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t224, ptr %t253
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l61, i64 424, i1 false)
  br label %ret
ret:
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
@.d0 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"this argument" }>, align 8
@.d1 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"this store" }>, align 8
@.d2 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"this capture" }>, align 8
@.d3 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"this task" }>, align 8
@.d4 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"this yield" }>, align 8
@.d5 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"this 'any'" }>, align 8
@.d6 = private constant <{ i64, [70 x i8] }> <{ i64 0, [70 x i8] c"this return (from a function calling itself, or among several results)" }>, align 8
@.d7 = private constant <{ i64, [72 x i8] }> <{ i64 0, [72 x i8] c"this call - reached in a loop's next turn by a value assigned after it -" }>, align 8
@.d8 = private constant <{ i64, [97 x i8] }> <{ i64 0, [97 x i8] c"this argument - not followed into its callee (one of its cycle of calls, or past T22c's limits) -" }>, align 8
@.d9 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"this use" }>, align 8
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d10 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"versions: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d11 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c" bodies with a cursor, " }>, align 8
@.d12 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" definitions, " }>, align 8
@.d13 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" judgings asked again" }>, align 8
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
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i1 true, ptr %l2, !tbaa !21
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 7}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 4, label %bb6 i64 5, label %bb7 ]
bb3:
  br label %bb13
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr { i64, [2 x i64] }, ptr %t14, i32 0, i32 1
  %t16 = getelementptr { i32 }, ptr %t15, i32 0, i32 0
  %t17 = load i32, ptr %t16
  %t20 = icmp eq i32 %t13, %t17
  br i1 %t20, label %bb8, label %bb1
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  %t24 = getelementptr { i64 }, ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %t24
  %t26 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 1
  %t28 = getelementptr { i64 }, ptr %t27, i32 0, i32 0
  %t29 = load i64, ptr %t28
  %t32 = icmp eq i64 %t25, %t29
  br i1 %t32, label %bb9, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i64, i64 }, ptr %t35, i32 0, i32 0
  %t37 = load i64, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i64, i64 }, ptr %t39, i32 0, i32 0
  %t41 = load i64, ptr %t40
  %t44 = icmp eq i64 %t37, %t41
  br i1 %t44, label %bb10, label %bb1
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  %t48 = getelementptr { i64 }, ptr %t47, i32 0, i32 0
  %t49 = load i64, ptr %t48
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  %t56 = icmp eq i64 %t49, %t53
  br i1 %t56, label %bb12, label %bb1
bb8:
  br label %bb3
bb9:
  br label %bb3
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64 }, ptr %t59, i32 0, i32 1
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64 }, ptr %t63, i32 0, i32 1
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb11, label %bb1
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load i1, ptr %l2, !tbaa !21
  store i1 %t70, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"#" }>, align 8
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

@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e1 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
@.d15 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"where the generator does" }>, align 8
@.d16 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"with what '" }>, align 8
@.d17 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"' refers to" }>, align 8
@.d18 = private constant <{ i64, [0 x i32] }> <{ i64 0, [0 x i32] [] }>, align 8
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 1
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

@.d19 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a longer-lived scope" }>, align 8
@.d20 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"the scope of what '" }>, align 8
@.d21 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"' refers to" }>, align 8
@.d22 = private constant <{ i64, [34 x i8] }> <{ i64 0, [34 x i8] c"the tail scope of its become chain" }>, align 8
@.d23 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"the result scope" }>, align 8
@.d24 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"where the generator lives" }>, align 8
@.d25 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"the scope of what the lambda captured" }>, align 8
@.d26 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"a longer-lived scope" }>, align 8
@olang_2esole_2ecompiler_2fscope_3awalked_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fscope_3awalked_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3awalked_2e13 = weak hidden constant i1 false
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2fscope_2eBndArg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndCapture = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndYield = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndAny = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndLate = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndLimit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@olang_loc_ec671dd97260d64c_f93da9a02f31a848 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H8fcfddb96431edc14f722668635d6efd(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cI64_2c_20compiler_2ftyped_3aVer_H2a1e5f99aaf12f9319d4a0d8fa08c5a8(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_Hc1c2f3824b4c428f1a58c46bc49e09d4(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_c15bfc3d7da0050b_84928957a006184f = external constant [0 x i8]
declare %"compiler/typed:SiteInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eAt_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_1668eb2d997973a7_ab4d69ddc8fad23 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_ca9fbb609f85e0bf_654dd6319f2fbb3b = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_51647c5149cfd088_fff8b53f00e80584 = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esummed(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargOfVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekTerm(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estaticVar(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eFailsBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eObliged = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_40698dacb4c14a59_3145716d01d07175 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eLen_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d9b9c9fdb1541cd0_611f76d9a930dfc4 = external constant [0 x i8]
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_a1ec21eff352729b_aca5e7333e83904f = external constant [0 x i8]
@olang_loc_6a15e9d69b373cac_743969cd544e6370 = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_978a3a8ab30b0468_2bda6bca2d56e7fc = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnArgHoldsShort(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eScopeMayNotOutlive(ptr %v0)
@G_2ecompiler_2fscope_2eFitLocal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitPayload = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePayloadOutlived(ptr %v0)
@G_2ecompiler_2fscope_2eFitOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenElemTerm(ptr %v0, ptr %a0)
@olang_loc_12677068e04dfe45_ab703d1ad408b711 = external constant [0 x i8]
@olang_loc_bf00db29bdc1b99e_9dc03d0b43789e0a = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGenYieldShorter(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOwnCannotOutlive(ptr %v0)
@G_2ecompiler_2fscope_2eFitField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eStoredRefOutlived(ptr %v0)
@G_2ecompiler_2fscope_2eFitElem = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitAnyCopy = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemNotInArrayScope(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eElemOutlived(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAnyCopyOutlived(ptr %v0)
@G_2ecompiler_2fscope_2eFitGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eGlobalHoldsShorter(ptr %v0)
@G_2ecompiler_2fscope_2eFitValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_2de0ba6211cb93cf_481b942389356f0b = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eYieldOwnStorage(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReturnOwnStorage(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueRefsOutlived(ptr %v0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturesNothing(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_7f2f0698823b265a_e0642f9ed23c39f6 = external constant [0 x i8]
declare %"compiler/scope:Gap" @compiler_2fscope_3aGap_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aGap_3e_2ePush_3ccompiler_2fscope_3aGap_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:Gap" %a1)
declare %"std/prelude/map:MapKeyIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hf554e3812f6eb8d76d1c74a8cefae175(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapKeyIter_3cstd_2fpair_3aPair_3cI64_2c_20I6_Hba5334df3403b24ff847af207d19ebe6(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H1308596c866d4be061d9da9113abde88(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetFieldMark(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [1 x i64] } %a3)
@olang_loc_3451003dd1e97df4_bcd12f7be62952d8 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4421e2d51127c851_53479ba5c20af2ad = external constant [0 x i8]
@olang_loc_ba8e38ed7d6b48a9_35acc5c55c21205 = external constant [0 x i8]
@olang_loc_9476cc7193074e76_e8b6eb41d568f08a = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4d20f13e93e5e00_8edf44d94b0465ac = external constant [0 x i8]
@olang_loc_69ae334cff34421a_e7667370028a437e = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_c0ef91a3e2c3a370_7d348321302c732c = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandedRegion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eflThroughRefExpr(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwOutOfRegion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3, i64 %a4, { i64, ptr } %a5)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwHanded(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwValueArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H7e82b4dbdb79c77bc51fdaf9d4704834(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.1eb2466213689e002f25e81e83536e78" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2ftyped_3aExpr_2_H4ea279ff901448a8d94a2f42aa119fd2(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_42ddfa07d54a3511_7eb6b931dfed5aa5 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_133169b3f1711469_c566838c26ef218d = external constant [0 x i8]
@olang_loc_31030507f1509b32_81bbcae78c23c7f6 = external constant [0 x i8]
@olang_loc_a31f6e852cb18f32_b153faa488cd8ea6 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ector(ptr %v0, i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBase(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_74d9849f1cf072e4_d95edc215f7aa198 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b99a325748da8cd5_4eb62b65b3c79869 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, i64 %a2, ptr %a3, i1 %a4, { i64, ptr } %a5)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efinds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare i1 @compiler_2fscope_2eisCapCode(i64 %a0)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eFind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/typed:DerivedArg" @compiler_2ftyped_3aDerivedArg_2ector(ptr %v0, i64 %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ePus_Hd9c60b9bc3eb0bc15b58bce924fabf2c(ptr %v0, ptr %a0, %"compiler/typed:DerivedArg" %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassDerived(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ector(ptr %v0, i64 %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2erecTerm(ptr %v0, { i64, [2 x i64] } %a0, { i64, ptr } %a1, i1 %a2)
@olang_loc_809913f5cd352437_1916f8199b9f645b = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretOne(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_27bac09e5f891f0f_32e7ac9a46fe4703 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreOne(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2fscope_2eUseView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eUseOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2euses(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2eUseThru = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHandle(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalRegions(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %a0)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_db029c1eb6e17764_aa731e22a91dc4d8 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleTail = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_dc77515c192c1e2e_10e0daed47a736f2 = external constant [0 x i8]
@olang_loc_f8cee274909cbd86_8e52ea231ce320a2 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cArray_3ccompiler_2ftyped_3aCapture_26_3e_3e_2ector(ptr %v0, i64 %a0)

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
