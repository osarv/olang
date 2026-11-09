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
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/scope:Val" = type { i32, { i64, [2 x i64] } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/typed:BlockInfo" = type { i32, i32, %"compiler/source:Span" }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/types:DtorWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eValueCovered(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 241
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %a1)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargExisting(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5, { i64, [2 x i64] } %a6, i1 %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/scope:Val"
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i32
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i1
  %l28 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i1
  %l43 = alloca i64
  %l48 = alloca %"compiler/scope:Val"
  %l54 = alloca i1
  %l58 = alloca { i64, [2 x i64] }
  %l61 = alloca { i64, [2 x i64] }
  %l67 = alloca { i64, [2 x i64] }
  %l68 = alloca %"compiler/scope:Val"
  %l71 = alloca i1
  %l72 = alloca { i64, [2 x i64] }
  %l74 = alloca { i64, [2 x i64] }
  %l76 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l85 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca i32
  %l95 = alloca i1
  %l96 = alloca i32
  %l99 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i32
  %l104 = alloca i32
  %l107 = alloca i1
  %l111 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i1
  %l121 = alloca i1
  %l122 = alloca i1
  %l126 = alloca i1
  %l128 = alloca i1
  %l132 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i1
  %l140 = alloca ptr
  %l143 = alloca i1
  %l147 = alloca i1
  %l150 = alloca %"compiler/scope:Val"
  %l152 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i1
  %l159 = alloca %"compiler/scope:Val"
  %l170 = alloca i1
  %l172 = alloca i1
  %l174 = alloca i1
  %l178 = alloca %"compiler/scope:Val"
  %s5 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t61 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l18, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr ptr, ptr %t8, i64 %t5
  %t10 = load ptr, ptr %t9, !tbaa !39
  store ptr %t10, ptr %l8, !tbaa !29
  %t14 = xor i1 %a7, true
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %t16, ptr %t17)
  store i1 %t20, ptr %l26
  br label %bb3
bb2:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  %t21 = load i1, ptr %l26, !tbaa !21
  store i1 %t21, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t22 = load i1, ptr %l23, !tbaa !21
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l28, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Call", ptr %t25, i32 0, i32 0
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t31 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t24, ptr %t28)
  store i64 %t31, ptr %l32
  br label %bb7
bb6:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb9
bb7:
  %t32 = load i64, ptr %l2, !tbaa !24
  %t33 = load ptr, ptr %l28, !tbaa !29
  %t34 = load i64, ptr %l32, !tbaa !24
  %t36 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %t33, i64 %t34, i64 %t32)
  store i1 %t36, ptr %l34
  br label %bb8
bb8:
  %t37 = load i1, ptr %l34, !tbaa !21
  store i1 %t37, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l27, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 77
  store i1 true, ptr %t41, !tbaa !21
  br label %bb12
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load i64, ptr %l2, !tbaa !24
  %t56 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandArgPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t42, ptr %t43, i64 %t44, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5, { i64, [2 x i64] } %a6)
  store i64 %t56, ptr %l43
  br label %bb13
bb13:
  %t57 = load i64, ptr %l43, !tbaa !24
  store i64 %t57, ptr %l9, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l8, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t61
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 0
  store i64 0, ptr %t62
  %t63 = load { i64, [2 x i64] }, ptr %t61
  %t67 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t58, ptr %t59, { i64, [2 x i64] } %t63)
  store %"compiler/scope:Val" %t67, ptr %l48
  br label %bb14
bb14:
  %t68 = load %"compiler/scope:Val", ptr %l48
  store %"compiler/scope:Val" %t68, ptr %l10
  %t69 = load i64, ptr %l9, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 114
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %t75, i64 %t76)
  store i1 %t79, ptr %l54
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/scope:Scoper", ptr %t80, i32 0, i32 77
  store i1 false, ptr %t82, !tbaa !21
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t87 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefs(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  store { i64, [2 x i64] } %t87, ptr %l58
  br label %bb19
bb19:
  %t88 = load { i64, [2 x i64] }, ptr %l58
  store { i64, [2 x i64] } %t88, ptr %l11
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l8, !tbaa !29
  %t93 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRefs(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  store { i64, [2 x i64] } %t93, ptr %l61
  br label %bb20
bb20:
  %t94 = load { i64, [2 x i64] }, ptr %l61
  store { i64, [2 x i64] } %t94, ptr %l12
  %t95 = load { i64, [2 x i64] }, ptr %l12
  %t97 = extractvalue { i64, [2 x i64] } %t95, 0
  %t98 = icmp eq i64 %t97, 0
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb21, label %bb22
bb21:
  %t102 = load { i64, [2 x i64] }, ptr %l12
  store { i64, [2 x i64] } %t102, ptr %l11
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t104)
  store { i64, [2 x i64] } %t106, ptr %l67
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t107 = load { i64, [2 x i64] }, ptr %l67
  %t108 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t107)
  store %"compiler/scope:Val" %t108, ptr %l68
  br label %bb24
bb24:
  %t109 = load %"compiler/scope:Val", ptr %l68
  store %"compiler/scope:Val" %t109, ptr %l10
  br label %bb25
bb25:
  %t110 = load { i64, [2 x i64] }, ptr %l11
  %t112 = extractvalue { i64, [2 x i64] } %t110, 0
  %t113 = icmp eq i64 %t112, 0
  br i1 %t113, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l71, !tbaa !21
  br label %bb29
bb27:
  %t115 = load { i64, [2 x i64] }, ptr %l11
  store { i64, [2 x i64] } %t115, ptr %l72
  %t116 = getelementptr %"compiler/scope:Val", ptr %l10, i32 0, i32 1
  %t117 = load { i64, [2 x i64] }, ptr %t116
  store { i64, [2 x i64] } %t117, ptr %l74
  %t120 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l72, ptr %l74)
  store i1 %t120, ptr %l76
  br label %bb28
bb28:
  %t121 = load i1, ptr %l76, !tbaa !21
  store i1 %t121, ptr %l71, !tbaa !21
  br label %bb29
bb29:
  %t122 = load i1, ptr %l71, !tbaa !21
  br i1 %t122, label %bb30, label %bb31
bb30:
  %t123 = load %"compiler/scope:Val", ptr %l10
  store %"compiler/scope:Val" %t123, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t125 = load { i64, [2 x i64] }, ptr %l11
  %t127 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t125)
  store i1 %t127, ptr %l79
  br label %bb33
bb33:
  %t128 = load i1, ptr %l79, !tbaa !21
  br i1 %t128, label %bb34, label %bb35
bb34:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t131 = load i64, ptr %l2, !tbaa !24
  %t132 = load ptr, ptr %l8, !tbaa !29
  %t137 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v1, ptr %t129, ptr %t130, i64 %t131, ptr %t132)
  store i1 %t137, ptr %l85
  br label %bb36
bb35:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb37
bb36:
  %t138 = load i1, ptr %l85, !tbaa !21
  store i1 %t138, ptr %l80, !tbaa !21
  br label %bb37
bb37:
  %t139 = load i1, ptr %l80, !tbaa !21
  store i1 %t139, ptr %l13, !tbaa !21
  %t140 = load { i64, [2 x i64] }, ptr %l12
  %t142 = extractvalue { i64, [2 x i64] } %t140, 0
  %t143 = icmp eq i64 %t142, 0
  br i1 %t143, label %bb38, label %bb39
bb38:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t146 = load ptr, ptr %l8, !tbaa !29
  %t149 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elentLoopCopy(ptr %v0, ptr %v1, ptr %t145, ptr %t146)
  store i1 %t149, ptr %l91
  br label %bb40
bb39:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb41
bb40:
  %t150 = load i1, ptr %l91, !tbaa !21
  store i1 %t150, ptr %l88, !tbaa !21
  br label %bb41
bb41:
  %t151 = load i1, ptr %l88, !tbaa !21
  store i1 %t151, ptr %l14, !tbaa !21
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l92, !tbaa !29
  %t153 = load ptr, ptr %l8, !tbaa !29
  %t155 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t153)
  store i32 %t155, ptr %l94
  br label %bb42
bb42:
  %t156 = load ptr, ptr %l92, !tbaa !29
  %t157 = load i32, ptr %l94, !tbaa !23
  %t158 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t156, i32 %t157)
  store i1 %t158, ptr %l95
  br label %bb43
bb43:
  %t159 = load i1, ptr %l95, !tbaa !21
  br i1 %t159, label %bb44, label %bb45
bb44:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/scope:Scoper", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/generic:Program", ptr %t163, i32 0, i32 2
  store ptr %t165, ptr %l99, !tbaa !29
  %t166 = load ptr, ptr %l8, !tbaa !29
  %t168 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t166)
  store i32 %t168, ptr %l101
  br label %bb46
bb45:
  %t169 = load ptr, ptr %l8, !tbaa !29
  %t171 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t169)
  store i32 %t171, ptr %l104
  br label %bb48
bb46:
  %t172 = load ptr, ptr %l99, !tbaa !29
  %t173 = load i32, ptr %l101, !tbaa !23
  %t174 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t172, i32 %t173)
  store i32 %t174, ptr %l102
  br label %bb47
bb47:
  %t175 = load i32, ptr %l102, !tbaa !23
  store i32 %t175, ptr %l96, !tbaa !23
  br label %bb49
bb48:
  %t176 = load i32, ptr %l104, !tbaa !23
  store i32 %t176, ptr %l96, !tbaa !23
  br label %bb49
bb49:
  %t177 = load i32, ptr %l96, !tbaa !23
  store i32 %t177, ptr %l15, !tbaa !23
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i32, ptr %l15, !tbaa !23
  %t182 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownsUnshared(ptr %v0, ptr %t178, i32 %t179)
  store i1 %t182, ptr %l107
  br label %bb50
bb50:
  %t183 = load i1, ptr %l107, !tbaa !21
  store i1 %t183, ptr %l16, !tbaa !21
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t186 = load i64, ptr %l2, !tbaa !24
  %t190 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %t184, ptr %t185, i64 %t186)
  store i1 %t190, ptr %l111
  br label %bb51
bb51:
  %t191 = load i1, ptr %l111, !tbaa !21
  br i1 %t191, label %bb52, label %bb53
bb52:
  %t192 = load i1, ptr %l13, !tbaa !21
  %t194 = xor i1 %t192, true
  store i1 %t194, ptr %l112, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb54
bb54:
  %t196 = load i1, ptr %l112, !tbaa !21
  br i1 %t196, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s5
  %t197 = load i1, ptr %l16, !tbaa !21
  br i1 %t197, label %bb57, label %bb58
bb56:
  br label %bb99
bb57:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb68
bb58:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/scope:Scoper", ptr %t199, i32 0, i32 0
  %t202 = load ptr, ptr %t201, !tbaa !29
  %t204 = getelementptr %"compiler/generic:Program", ptr %t202, i32 0, i32 2
  %t205 = load i32, ptr %l15, !tbaa !23
  %t208 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %t204, i32 %t205)
  store i1 %t208, ptr %l121
  br label %bb59
bb59:
  %t209 = load i1, ptr %l121, !tbaa !21
  br i1 %t209, label %bb60, label %bb61
bb60:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load ptr, ptr %l1, !tbaa !29
  %t212 = load i64, ptr %l2, !tbaa !24
  %t216 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %t210, ptr %t211, i64 %t212)
  store i1 %t216, ptr %l126
  br label %bb62
bb61:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb63
bb62:
  %t217 = load i1, ptr %l126, !tbaa !21
  %t218 = xor i1 %t217, true
  store i1 %t218, ptr %l122, !tbaa !21
  br label %bb63
bb63:
  %t220 = load i1, ptr %l122, !tbaa !21
  br i1 %t220, label %bb64, label %bb65
bb64:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t223 = load i64, ptr %l2, !tbaa !24
  %t227 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %t221, ptr %t222, i64 %t223)
  store i1 %t227, ptr %l132
  br label %bb66
bb65:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb67
bb66:
  %t228 = load i1, ptr %l132, !tbaa !21
  %t229 = xor i1 %t228, true
  store i1 %t229, ptr %l128, !tbaa !21
  br label %bb67
bb67:
  %t231 = load i1, ptr %l128, !tbaa !21
  store i1 %t231, ptr %l116, !tbaa !21
  br label %bb68
bb68:
  %t232 = load i1, ptr %l116, !tbaa !21
  br i1 %t232, label %bb69, label %bb70
bb69:
  %t233 = load %"compiler/scope:Val", ptr %l10
  call void @__olang_scope_close(ptr %s5)
  store %"compiler/scope:Val" %t233, ptr %rv
  br label %ret
bb70:
  br label %bb71
bb71:
  %t235 = load { i64, [2 x i64] }, ptr %l11
  %t237 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t235)
  store i1 %t237, ptr %l136
  br label %bb72
bb72:
  %t238 = load i1, ptr %l136, !tbaa !21
  br i1 %t238, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb76
bb74:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load ptr, ptr %l8, !tbaa !29
  %t243 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %s5, ptr %t239, ptr %t240)
  store ptr %t243, ptr %l140
  br label %bb75
bb75:
  %t244 = load ptr, ptr %l140, !tbaa !29
  %t245 = icmp eq ptr %t244, null
  %t247 = xor i1 %t245, true
  store i1 %t247, ptr %l137, !tbaa !21
  br label %bb76
bb76:
  %t249 = load i1, ptr %l137, !tbaa !21
  br i1 %t249, label %bb77, label %bb78
bb77:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load ptr, ptr %l1, !tbaa !29
  %t252 = load i64, ptr %l2, !tbaa !24
  %t256 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsSelf(ptr %v0, ptr %v1, ptr %t250, ptr %t251, i64 %t252)
  store i1 %t256, ptr %l147
  br label %bb79
bb78:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb80
bb79:
  %t257 = load i1, ptr %l147, !tbaa !21
  %t258 = xor i1 %t257, true
  store i1 %t258, ptr %l143, !tbaa !21
  br label %bb80
bb80:
  %t260 = load i1, ptr %l143, !tbaa !21
  br i1 %t260, label %bb81, label %bb82
bb81:
  %t261 = load { i64, [2 x i64] }, ptr %l11
  %t263 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t261)
  store %"compiler/scope:Val" %t263, ptr %l150
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s5)
  %t264 = load %"compiler/scope:Val", ptr %l150
  store %"compiler/scope:Val" %t264, ptr %rv
  br label %ret
bb84:
  %t265 = load { i64, [2 x i64] }, ptr %l11
  %t267 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t265)
  store i1 %t267, ptr %l152
  br label %bb85
bb85:
  %t268 = load i1, ptr %l152, !tbaa !21
  br i1 %t268, label %bb86, label %bb87
bb86:
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l8, !tbaa !29
  %t271 = load { i64, [2 x i64] }, ptr %l11
  %t275 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %t269, ptr %t270, { i64, [2 x i64] } %t271)
  store i1 %t275, ptr %l157
  br label %bb88
bb87:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb89
bb88:
  %t276 = load i1, ptr %l157, !tbaa !21
  store i1 %t276, ptr %l153, !tbaa !21
  br label %bb89
bb89:
  %t277 = load i1, ptr %l153, !tbaa !21
  br i1 %t277, label %bb90, label %bb91
bb90:
  %t278 = load { i64, [2 x i64] }, ptr %l11
  %t280 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t278)
  store %"compiler/scope:Val" %t280, ptr %l159
  br label %bb92
bb91:
  br label %bb93
bb92:
  call void @__olang_scope_close(ptr %s5)
  %t281 = load %"compiler/scope:Val", ptr %l159
  store %"compiler/scope:Val" %t281, ptr %rv
  br label %ret
bb93:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t283 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %t282, ptr %t283)
  br label %bb94
bb94:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/scope:Scoper", ptr %t286, i32 0, i32 28
  %t289 = load i1, ptr %t288, !tbaa !21
  br i1 %t289, label %bb95, label %bb96
bb95:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefused(ptr %v0, ptr %v1, ptr %t291, ptr %t292)
  br label %bb97
bb96:
  br label %bb98
bb97:
  br label %bb98
bb98:
  %t295 = load %"compiler/scope:Val", ptr %l10
  call void @__olang_scope_close(ptr %s5)
  store %"compiler/scope:Val" %t295, ptr %rv
  br label %ret
bb99:
  %t297 = load { i64, [2 x i64] }, ptr %l12
  %t299 = extractvalue { i64, [2 x i64] } %t297, 0
  %t300 = icmp eq i64 %t299, 0
  %t302 = xor i1 %t300, true
  br i1 %t302, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l170, !tbaa !21
  br label %bb102
bb101:
  %t304 = load i1, ptr %l13, !tbaa !21
  store i1 %t304, ptr %l170, !tbaa !21
  br label %bb102
bb102:
  %t306 = load i1, ptr %l170, !tbaa !21
  br i1 %t306, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l172, !tbaa !21
  br label %bb105
bb104:
  %t307 = load i1, ptr %l16, !tbaa !21
  store i1 %t307, ptr %l172, !tbaa !21
  br label %bb105
bb105:
  %t309 = load i1, ptr %l172, !tbaa !21
  br i1 %t309, label %bb106, label %bb107
bb106:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb108
bb107:
  %t310 = load i1, ptr %l14, !tbaa !21
  %t312 = xor i1 %t310, true
  store i1 %t312, ptr %l174, !tbaa !21
  br label %bb108
bb108:
  %t314 = load i1, ptr %l174, !tbaa !21
  br i1 %t314, label %bb109, label %bb110
bb109:
  %t315 = load { i64, [2 x i64] }, ptr %l11
  %t317 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t315)
  store %"compiler/scope:Val" %t317, ptr %l178
  br label %bb111
bb110:
  br label %bb112
bb111:
  %t318 = load %"compiler/scope:Val", ptr %l178
  store %"compiler/scope:Val" %t318, ptr %rv
  br label %ret
bb112:
  %t319 = load %"compiler/scope:Val", ptr %l10
  store %"compiler/scope:Val" %t319, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i1
  %l25 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %a1)
  store ptr %t6, ptr %l8
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l8, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t9 = load ptr, ptr %l10, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 3
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l11, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t25 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t23)
  store i64 %t25, ptr %l17
  br label %bb7
bb7:
  %t26 = load i64, ptr %l17, !tbaa !24
  store i64 %t26, ptr %l9, !tbaa !24
  br label %bb20
bb8:
  %t27 = load ptr, ptr %l2, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t28 = load ptr, ptr %l18, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load ptr, ptr %l18, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 2
  store i1 %t34, ptr %l19, !tbaa !21
  br label %bb10
bb10:
  %t35 = load i1, ptr %l19, !tbaa !21
  br i1 %t35, label %bb11, label %bb12
bb11:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l4, !tbaa !29
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t44 = call i64 @compiler_2fscope_2ewholeLocal(ptr %s0, ptr %t42)
  store i64 %t44, ptr %l25
  br label %bb14
bb14:
  %t45 = load i64, ptr %l25, !tbaa !24
  store i64 %t45, ptr %l9, !tbaa !24
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_aa04e26a4d7578a7_d714aefedcea6ccb)
  unreachable
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t46 = load i64, ptr %l9, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l6 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t1)
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t13 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t8, ptr %a1)
  store ptr %t13, ptr %l12
  br label %bb5
bb5:
  %t14 = load ptr, ptr %l12, !tbaa !29
  store ptr %t14, ptr %l3, !tbaa !29
  %t15 = load ptr, ptr %l3, !tbaa !29
  store ptr %t15, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t16 = load ptr, ptr %l13, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 2
  store i1 %t22, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l14, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr { i64, [5 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t32 = load { i64, [2 x i64] }, ptr %l2
  %t36 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %s0, ptr %t30, ptr %t31, { i64, [2 x i64] } %t32)
  store i1 %t36, ptr %l22
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb16:
  call void @__olang_check_failed(ptr @olang_loc_5ad8ce5e83291793_3404c81b33ceede7)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l11 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 37
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Block", ptr %t8, i32 0, i32 0
  %t11 = load i32, ptr %t10, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t7, i32 %t11)
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Block", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %t14, { i64, ptr } %t18)
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 37
  %t25 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t23)
  %t26 = extractvalue { i32, i32 } %t25, 1
  %t27 = extractvalue { i32, i32 } %t25, 0
  store i32 %t27, ptr %l15
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store i32 %t26, ptr %l14
  br label %bb6
bb6:
  %t30 = load i32, ptr %l14, !tbaa !23
  store i32 %t30, ptr %l11, !tbaa !23
  br label %bb9
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i32
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca ptr
  %l68 = alloca ptr
  %l74 = alloca i1
  %l78 = alloca i1
  %l79 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i1
  %l137 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i32
  %l145 = alloca i64
  %l151 = alloca i64
  %l152 = alloca i32
  %l159 = alloca i64
  %l162 = alloca i64
  %l182 = alloca i64
  %l183 = alloca i64
  %l185 = alloca ptr
  %l187 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l195 = alloca i64
  %l201 = alloca i64
  %l206 = alloca ptr
  %l207 = alloca i1
  %l220 = alloca { i64, ptr }
  %l233 = alloca ptr
  %l234 = alloca i1
  %l247 = alloca ptr
  %l248 = alloca i1
  %l257 = alloca i1
  %l262 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l278 = alloca ptr
  %l281 = alloca i64
  %l286 = alloca ptr
  %l287 = alloca i1
  %l306 = alloca ptr
  %l307 = alloca i1
  %l326 = alloca ptr
  %l327 = alloca i1
  %l340 = alloca { i64, ptr }
  %l352 = alloca ptr
  %l353 = alloca i1
  %l366 = alloca { i64, ptr }
  %l382 = alloca { i64, ptr }
  %l395 = alloca ptr
  %l396 = alloca i1
  %l413 = alloca { i64, ptr }
  %l427 = alloca { i64, ptr }
  %l438 = alloca ptr
  %l439 = alloca i1
  %l444 = alloca ptr
  %l445 = alloca i1
  %l459 = alloca { i64, ptr }
  %l462 = alloca ptr
  %l465 = alloca ptr
  %l467 = alloca ptr
  %l473 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l474 = alloca i1
  %l475 = alloca i64
  %l480 = alloca ptr
  %l481 = alloca i1
  %l490 = alloca ptr
  %l491 = alloca i1
  %l504 = alloca { i64, ptr }
  %l507 = alloca ptr
  %l508 = alloca i1
  %l519 = alloca ptr
  %l520 = alloca i1
  %s44 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  %t9 = icmp ne i64 %t5, %t6
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 104
  %t14 = load i1, ptr %t13, !tbaa !21
  %t16 = xor i1 %t14, true
  store i1 %t16, ptr %l74, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb6
bb6:
  %t18 = load i1, ptr %l74, !tbaa !21
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l79, !tbaa !29
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t20)
  store i32 %t22, ptr %l81
  br label %bb9
bb8:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb11
bb9:
  %t23 = load ptr, ptr %l79, !tbaa !29
  %t24 = load i32, ptr %l81, !tbaa !23
  %t25 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t25, ptr %l82
  br label %bb10
bb10:
  %t26 = load i1, ptr %l82, !tbaa !21
  store i1 %t26, ptr %l78, !tbaa !21
  br label %bb11
bb11:
  %t27 = load i1, ptr %l78, !tbaa !21
  br i1 %t27, label %bb12, label %bb13
bb12:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t30 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundary(ptr %v0, ptr %v1, ptr %t28, ptr %t29, i64 %t30)
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t34 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t34, ptr %l2, !tbaa !24
  br label %bb15
bb15:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t37 = load ptr, ptr %l87, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb16, label %bb17
bb16:
  %t40 = load ptr, ptr %l87, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l88, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l88, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l3, !tbaa !29
  br label %bb28
bb19:
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t52 = load ptr, ptr %l93, !tbaa !29
  %t53 = icmp ne ptr %t52, null
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t55 = load ptr, ptr %l93, !tbaa !29
  %t56 = load i64, ptr %t55, !range !{i64 0, i64 18}
  %t58 = icmp eq i64 %t56, 4
  store i1 %t58, ptr %l94, !tbaa !21
  br label %bb21
bb21:
  %t59 = load i1, ptr %l94, !tbaa !21
  br i1 %t59, label %bb22, label %bb23
bb22:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr { i64, [5 x i64] }, ptr %t60, i32 0, i32 1
  %t63 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t62, i32 0, i32 2
  %t64 = load ptr, ptr %t63
  store ptr %t64, ptr %l3, !tbaa !29
  br label %bb28
bb23:
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t67 = load ptr, ptr %l99, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb24, label %bb25
bb24:
  %t70 = load ptr, ptr %l99, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 18}
  %t73 = icmp eq i64 %t71, 3
  store i1 %t73, ptr %l100, !tbaa !21
  br label %bb25
bb25:
  %t74 = load i1, ptr %l100, !tbaa !21
  br i1 %t74, label %bb26, label %bb27
bb26:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t77, i32 0, i32 2
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l3, !tbaa !29
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t81, ptr %t82)
  br label %bb29
bb29:
  br label %bb276
bb30:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t87 = load ptr, ptr %l108, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb31, label %bb32
bb31:
  %t90 = load ptr, ptr %l108, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 18}
  %t93 = icmp eq i64 %t91, 5
  store i1 %t93, ptr %l109, !tbaa !21
  br label %bb32
bb32:
  %t94 = load i1, ptr %l109, !tbaa !21
  br i1 %t94, label %bb33, label %bb34
bb33:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l4, !tbaa !29
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l4, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Promote", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t101, ptr %t105, i64 %t107)
  br label %bb36
bb36:
  br label %bb276
bb37:
  %t111 = load ptr, ptr %l1, !tbaa !29
  store ptr %t111, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t112 = load ptr, ptr %l119, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t115 = load ptr, ptr %l119, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 18}
  %t118 = icmp eq i64 %t116, 6
  store i1 %t118, ptr %l120, !tbaa !21
  br label %bb39
bb39:
  %t119 = load i1, ptr %l120, !tbaa !21
  br i1 %t119, label %bb40, label %bb41
bb40:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l5, !tbaa !29
  br label %bb42
bb41:
  br label %bb85
bb42:
  %t126 = load ptr, ptr %l5, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Call", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  store ptr %t129, ptr %l6, !tbaa !29
  %t131 = load ptr, ptr %l6, !tbaa !29
  store ptr %t131, ptr %l127, !tbaa !29
  store i1 false, ptr %l128, !tbaa !21
  %t132 = load ptr, ptr %l127, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb43, label %bb44
bb43:
  %t135 = load ptr, ptr %l127, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 5}
  %t138 = icmp eq i64 %t136, 2
  store i1 %t138, ptr %l128, !tbaa !21
  br label %bb44
bb44:
  %t139 = load i1, ptr %l128, !tbaa !21
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t140 = load ptr, ptr %l6, !tbaa !29
  %t142 = getelementptr { i64, [3 x i64] }, ptr %t140, i32 0, i32 1
  %t143 = getelementptr { ptr }, ptr %t142, i32 0, i32 0
  %t144 = load ptr, ptr %t143
  store ptr %t144, ptr %l7, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l7, !tbaa !29
  %t149 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t146, ptr %t147, i64 %t149)
  br label %bb48
bb48:
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_59a1525204e95353_c37e754396521707)
  unreachable
bb54:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %t153, i32 0, i32 232
  %t156 = load ptr, ptr %l5, !tbaa !29
  %t158 = getelementptr %"compiler/typed:Call", ptr %t156, i32 0, i32 2
  %t159 = load i32, ptr %t158, !tbaa !23
  %t161 = sext i32 %t159 to i64
  %t164 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t155, i64 %t161)
  %t165 = extractvalue { i32, i64 } %t164, 1
  %t166 = extractvalue { i32, i64 } %t164, 0
  store i32 %t166, ptr %l144
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb56, label %ok.168, !prof !99
ok.168:
  store i64 %t165, ptr %l143
  br label %bb55
bb55:
  %t169 = load i64, ptr %l143, !tbaa !24
  store i64 %t169, ptr %l137, !tbaa !24
  br label %bb58
bb56:
  br label %bb57
bb57:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb58
bb58:
  %t170 = load i64, ptr %l137, !tbaa !24
  store i64 %t170, ptr %l8, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/scope:Scoper", ptr %t171, i32 0, i32 233
  %t174 = load ptr, ptr %l5, !tbaa !29
  %t176 = getelementptr %"compiler/typed:Call", ptr %t174, i32 0, i32 2
  %t177 = load i32, ptr %t176, !tbaa !23
  %t179 = sext i32 %t177 to i64
  %t182 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t173, i64 %t179)
  %t183 = extractvalue { i32, i64 } %t182, 1
  %t184 = extractvalue { i32, i64 } %t182, 0
  store i32 %t184, ptr %l152
  %t185 = icmp ne i32 %t184, 0
  br i1 %t185, label %bb60, label %ok.186, !prof !99
ok.186:
  store i64 %t183, ptr %l151
  br label %bb59
bb59:
  %t187 = load i64, ptr %l151, !tbaa !24
  store i64 %t187, ptr %l145, !tbaa !24
  br label %bb62
bb60:
  br label %bb61
bb61:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb62
bb62:
  %t188 = load i64, ptr %l145, !tbaa !24
  store i64 %t188, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t189 = load ptr, ptr %l5, !tbaa !29
  %t191 = getelementptr %"compiler/typed:Call", ptr %t189, i32 0, i32 1
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t196 = load i64, ptr %l11, !tbaa !24
  %t197 = load i64, ptr %l10, !tbaa !24
  %t200 = icmp sgt i64 %t196, %t197
  br i1 %t200, label %bb63, label %bb64
bb63:
  %t202 = load i64, ptr %l12, !tbaa !24
  %t204 = icmp sgt i64 %t202, 0
  br i1 %t204, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb68
bb65:
  %t206 = load i64, ptr %l11, !tbaa !24
  %t207 = load i64, ptr %l10, !tbaa !24
  %t210 = sub i64 %t206, %t207
  %t211 = load i64, ptr %l12, !tbaa !24
  %t214 = add i64 %t210, %t211
  %t216 = sub i64 %t214, 1
  %t217 = load i64, ptr %l12, !tbaa !24
  %t220 = sdiv i64 %t216, %t217
  store i64 %t220, ptr %l162, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb67
bb67:
  %t222 = load i64, ptr %l162, !tbaa !24
  store i64 %t222, ptr %l159, !tbaa !24
  br label %bb68
bb68:
  %t223 = load i64, ptr %l159, !tbaa !24
  store i64 %t223, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb69
bb69:
  %t224 = load i64, ptr %l14, !tbaa !24
  %t225 = load i64, ptr %l13, !tbaa !24
  %t228 = icmp slt i64 %t224, %t225
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb70, label %bb71
bb70:
  br label %bb84
bb71:
  br label %bb72
bb72:
  %t232 = load i64, ptr %l10, !tbaa !24
  %t233 = load i64, ptr %l14, !tbaa !24
  %t234 = load i64, ptr %l12, !tbaa !24
  %t237 = mul i64 %t233, %t234
  %t240 = add i64 %t232, %t237
  store i64 %t240, ptr %l15, !tbaa !24
  %t242 = load i64, ptr %l15, !tbaa !24
  %t244 = icmp slt i64 %t242, 62
  br i1 %t244, label %bb73, label %bb74
bb73:
  %t246 = load i64, ptr %l15, !tbaa !24
  store i64 %t246, ptr %l183, !tbaa !24
  %t247 = load i64, ptr %l183, !tbaa !24
  %t248 = load i64, ptr %l183, !tbaa !24
  %t249 = shl i64 1, %t248
  store i64 %t249, ptr %l182, !tbaa !24
  br label %bb75
bb74:
  store i64 0, ptr %l182, !tbaa !24
  br label %bb75
bb75:
  %t251 = load i64, ptr %l182, !tbaa !24
  store i64 %t251, ptr %l16, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  store ptr %t252, ptr %l185, !tbaa !29
  %t253 = load ptr, ptr %l5, !tbaa !29
  %t255 = getelementptr %"compiler/typed:Call", ptr %t253, i32 0, i32 1
  %t256 = load { i64, ptr }, ptr %t255, !tbaa !27
  store { i64, ptr } %t256, ptr %l187, !tbaa !27
  %t257 = load i64, ptr %l15, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr ptr, ptr %t260, i64 %t257
  %t262 = load ptr, ptr %t261, !tbaa !39
  store ptr %t262, ptr %l190, !tbaa !29
  %t264 = load i64, ptr %l8, !tbaa !24
  %t265 = load i64, ptr %l16, !tbaa !24
  %t268 = and i64 %t264, %t265
  %t270 = icmp ne i64 %t268, 0
  br i1 %t270, label %bb76, label %bb77
bb76:
  %t272 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t272, ptr %l195, !tbaa !24
  br label %bb81
bb77:
  %t274 = load i64, ptr %l9, !tbaa !24
  %t275 = load i64, ptr %l16, !tbaa !24
  %t278 = and i64 %t274, %t275
  %t280 = icmp ne i64 %t278, 0
  br i1 %t280, label %bb78, label %bb79
bb78:
  %t282 = load i64, ptr @G_2ecompiler_2fscope_2eBndLimit, !tbaa !24
  store i64 %t282, ptr %l201, !tbaa !24
  br label %bb80
bb79:
  %t284 = load i64, ptr @G_2ecompiler_2fscope_2eBndArg, !tbaa !24
  store i64 %t284, ptr %l201, !tbaa !24
  br label %bb80
bb80:
  %t286 = load i64, ptr %l201, !tbaa !24
  store i64 %t286, ptr %l195, !tbaa !24
  br label %bb81
bb81:
  %t287 = load ptr, ptr %l185, !tbaa !29
  %t288 = load ptr, ptr %l190, !tbaa !29
  %t289 = load i64, ptr %l195, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t287, ptr %t288, i64 %t289)
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t290 = load i64, ptr %l14, !tbaa !24
  %t292 = add i64 %t290, 1
  store i64 %t292, ptr %l14, !tbaa !24
  br label %bb69
bb84:
  br label %bb276
bb85:
  %t294 = load ptr, ptr %l1, !tbaa !29
  store ptr %t294, ptr %l206, !tbaa !29
  store i1 false, ptr %l207, !tbaa !21
  %t295 = load ptr, ptr %l206, !tbaa !29
  %t296 = icmp ne ptr %t295, null
  br i1 %t296, label %bb86, label %bb87
bb86:
  %t298 = load ptr, ptr %l206, !tbaa !29
  %t299 = load i64, ptr %t298, !range !{i64 0, i64 18}
  %t301 = icmp eq i64 %t299, 7
  store i1 %t301, ptr %l207, !tbaa !21
  br label %bb87
bb87:
  %t302 = load i1, ptr %l207, !tbaa !21
  br i1 %t302, label %bb88, label %bb89
bb88:
  %t303 = load ptr, ptr %l1, !tbaa !29
  %t305 = getelementptr { i64, [5 x i64] }, ptr %t303, i32 0, i32 1
  %t306 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t305, i32 0, i32 2
  %t307 = load ptr, ptr %t306
  store ptr %t307, ptr %l17, !tbaa !29
  br label %bb90
bb89:
  br label %bb99
bb90:
  %t309 = load ptr, ptr %l17, !tbaa !29
  %t311 = getelementptr %"compiler/typed:Make", ptr %t309, i32 0, i32 2
  %t312 = load { i64, ptr }, ptr %t311, !tbaa !27
  store { i64, ptr } %t312, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t314 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t314, 0
  store i64 %t316, ptr %l20, !tbaa !24
  br label %bb91
bb91:
  %t318 = load i64, ptr %l19, !tbaa !24
  %t319 = load i64, ptr %l20, !tbaa !24
  %t322 = icmp slt i64 %t318, %t319
  %t324 = xor i1 %t322, true
  br i1 %t324, label %bb92, label %bb93
bb92:
  br label %bb97
bb93:
  br label %bb94
bb94:
  %t326 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t326, ptr %l220, !tbaa !27
  %t327 = load i64, ptr %l19, !tbaa !24
  %t329 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t330 = load ptr, ptr %t329, !tbaa !27
  %t331 = getelementptr ptr, ptr %t330, i64 %t327
  %t332 = load ptr, ptr %t331, !tbaa !39
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i64, ptr @G_2ecompiler_2fscope_2eBndStore, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t334, ptr %t332, i64 %t337)
  br label %bb95
bb95:
  br label %bb96
bb96:
  %t341 = load i64, ptr %l19, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l19, !tbaa !24
  br label %bb91
bb97:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load ptr, ptr %l17, !tbaa !29
  %t348 = getelementptr %"compiler/typed:Make", ptr %t346, i32 0, i32 3
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t350 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t345, ptr %t349, i64 %t350)
  br label %bb98
bb98:
  br label %bb276
bb99:
  %t354 = load ptr, ptr %l1, !tbaa !29
  store ptr %t354, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t355 = load ptr, ptr %l233, !tbaa !29
  %t356 = icmp ne ptr %t355, null
  br i1 %t356, label %bb100, label %bb101
bb100:
  %t358 = load ptr, ptr %l233, !tbaa !29
  %t359 = load i64, ptr %t358, !range !{i64 0, i64 18}
  %t361 = icmp eq i64 %t359, 8
  store i1 %t361, ptr %l234, !tbaa !21
  br label %bb101
bb101:
  %t362 = load i1, ptr %l234, !tbaa !21
  br i1 %t362, label %bb102, label %bb103
bb102:
  %t363 = load ptr, ptr %l1, !tbaa !29
  %t365 = getelementptr { i64, [5 x i64] }, ptr %t363, i32 0, i32 1
  %t366 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t365, i32 0, i32 2
  %t367 = load ptr, ptr %t366
  store ptr %t367, ptr %l22, !tbaa !29
  br label %bb104
bb103:
  br label %bb107
bb104:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load ptr, ptr %l22, !tbaa !29
  %t372 = getelementptr %"compiler/typed:Collect", ptr %t370, i32 0, i32 0
  %t373 = load ptr, ptr %t372, !tbaa !29
  %t374 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t369, ptr %t373, i64 %t374)
  br label %bb105
bb105:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load ptr, ptr %l22, !tbaa !29
  %t381 = getelementptr %"compiler/typed:Collect", ptr %t379, i32 0, i32 1
  %t382 = load ptr, ptr %t381, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t378, ptr %t382)
  br label %bb106
bb106:
  br label %bb276
bb107:
  %t386 = load ptr, ptr %l1, !tbaa !29
  store ptr %t386, ptr %l247, !tbaa !29
  store i1 false, ptr %l248, !tbaa !21
  %t387 = load ptr, ptr %l247, !tbaa !29
  %t388 = icmp ne ptr %t387, null
  br i1 %t388, label %bb108, label %bb109
bb108:
  %t390 = load ptr, ptr %l247, !tbaa !29
  %t391 = load i64, ptr %t390, !range !{i64 0, i64 18}
  %t393 = icmp eq i64 %t391, 9
  store i1 %t393, ptr %l248, !tbaa !21
  br label %bb109
bb109:
  %t394 = load i1, ptr %l248, !tbaa !21
  br i1 %t394, label %bb110, label %bb111
bb110:
  %t395 = load ptr, ptr %l1, !tbaa !29
  %t397 = getelementptr { i64, [5 x i64] }, ptr %t395, i32 0, i32 1
  %t398 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t397, i32 0, i32 2
  %t399 = load i32, ptr %t398, !range !{i32 0, i32 52}
  store i32 %t399, ptr %l23
  %t401 = load ptr, ptr %l1, !tbaa !29
  %t403 = getelementptr { i64, [5 x i64] }, ptr %t401, i32 0, i32 1
  %t404 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t403, i32 0, i32 4
  %t405 = load { i64, ptr }, ptr %t404
  store { i64, ptr } %t405, ptr %l24, !tbaa !27
  br label %bb112
bb111:
  br label %bb130
bb112:
  %t407 = load i32, ptr %l23, !range !{i32 0, i32 52}
  %t409 = trunc i64 20 to i32
  %t410 = icmp eq i32 %t407, %t409
  br i1 %t410, label %bb113, label %bb114
bb113:
  %t412 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t412, 0
  %t416 = icmp eq i64 %t414, 1
  store i1 %t416, ptr %l257, !tbaa !21
  br label %bb115
bb114:
  store i1 false, ptr %l257, !tbaa !21
  br label %bb115
bb115:
  %t418 = load i1, ptr %l257, !tbaa !21
  br i1 %t418, label %bb116, label %bb117
bb116:
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t420, ptr %l262, !tbaa !27
  %t421 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t422 = load ptr, ptr %t421, !tbaa !27
  %t423 = getelementptr ptr, ptr %t422, i64 0
  %t424 = load ptr, ptr %t423, !tbaa !39
  %t426 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t419, ptr %t424, i64 %t426)
  br label %bb118
bb117:
  br label %bb119
bb118:
  br label %ret
bb119:
  %t430 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t430, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  %t432 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t432, 0
  store i64 %t434, ptr %l27, !tbaa !24
  br label %bb120
bb120:
  %t436 = load i64, ptr %l26, !tbaa !24
  %t437 = load i64, ptr %l27, !tbaa !24
  %t440 = icmp slt i64 %t436, %t437
  %t442 = xor i1 %t440, true
  br i1 %t442, label %bb121, label %bb122
bb121:
  br label %bb129
bb122:
  br label %bb123
bb123:
  %t444 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t444, ptr %l273, !tbaa !27
  %t445 = load i64, ptr %l26, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr ptr, ptr %t448, i64 %t445
  %t450 = load ptr, ptr %t449, !tbaa !39
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l276, !tbaa !29
  store ptr %t450, ptr %l278, !tbaa !29
  %t455 = load i32, ptr %l23, !range !{i32 0, i32 52}
  %t457 = trunc i64 42 to i32
  %t458 = icmp eq i32 %t455, %t457
  br i1 %t458, label %bb124, label %bb125
bb124:
  %t460 = load i64, ptr @G_2ecompiler_2fscope_2eBndAny, !tbaa !24
  store i64 %t460, ptr %l281, !tbaa !24
  br label %bb126
bb125:
  %t462 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  store i64 %t462, ptr %l281, !tbaa !24
  br label %bb126
bb126:
  %t464 = load ptr, ptr %l276, !tbaa !29
  %t465 = load ptr, ptr %l278, !tbaa !29
  %t466 = load i64, ptr %l281, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t464, ptr %t465, i64 %t466)
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t467 = load i64, ptr %l26, !tbaa !24
  %t469 = add i64 %t467, 1
  store i64 %t469, ptr %l26, !tbaa !24
  br label %bb120
bb129:
  br label %bb276
bb130:
  %t471 = load ptr, ptr %l1, !tbaa !29
  store ptr %t471, ptr %l286, !tbaa !29
  store i1 false, ptr %l287, !tbaa !21
  %t472 = load ptr, ptr %l286, !tbaa !29
  %t473 = icmp ne ptr %t472, null
  br i1 %t473, label %bb131, label %bb132
bb131:
  %t475 = load ptr, ptr %l286, !tbaa !29
  %t476 = load i64, ptr %t475, !range !{i64 0, i64 18}
  %t478 = icmp eq i64 %t476, 10
  store i1 %t478, ptr %l287, !tbaa !21
  br label %bb132
bb132:
  %t479 = load i1, ptr %l287, !tbaa !21
  br i1 %t479, label %bb133, label %bb134
bb133:
  %t480 = load ptr, ptr %l1, !tbaa !29
  %t482 = getelementptr { i64, [5 x i64] }, ptr %t480, i32 0, i32 1
  %t483 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t482, i32 0, i32 2
  %t484 = load ptr, ptr %t483
  store ptr %t484, ptr %l29, !tbaa !29
  br label %bb135
bb134:
  br label %bb139
bb135:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t487 = load ptr, ptr %l29, !tbaa !29
  %t489 = getelementptr %"compiler/typed:Slice", ptr %t487, i32 0, i32 0
  %t490 = load ptr, ptr %t489, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %t486, ptr %t490)
  br label %bb136
bb136:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l29, !tbaa !29
  %t497 = getelementptr %"compiler/typed:Slice", ptr %t495, i32 0, i32 1
  %t498 = load ptr, ptr %t497, !tbaa !29
  %t500 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t494, ptr %t498, i64 %t500)
  br label %bb137
bb137:
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t505 = load ptr, ptr %l29, !tbaa !29
  %t507 = getelementptr %"compiler/typed:Slice", ptr %t505, i32 0, i32 2
  %t508 = load ptr, ptr %t507, !tbaa !29
  %t510 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t504, ptr %t508, i64 %t510)
  br label %bb138
bb138:
  br label %bb276
bb139:
  %t514 = load ptr, ptr %l1, !tbaa !29
  store ptr %t514, ptr %l306, !tbaa !29
  store i1 false, ptr %l307, !tbaa !21
  %t515 = load ptr, ptr %l306, !tbaa !29
  %t516 = icmp ne ptr %t515, null
  br i1 %t516, label %bb140, label %bb141
bb140:
  %t518 = load ptr, ptr %l306, !tbaa !29
  %t519 = load i64, ptr %t518, !range !{i64 0, i64 18}
  %t521 = icmp eq i64 %t519, 11
  store i1 %t521, ptr %l307, !tbaa !21
  br label %bb141
bb141:
  %t522 = load i1, ptr %l307, !tbaa !21
  br i1 %t522, label %bb142, label %bb143
bb142:
  %t523 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr { i64, [5 x i64] }, ptr %t523, i32 0, i32 1
  %t526 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t525, i32 0, i32 2
  %t527 = load ptr, ptr %t526
  store ptr %t527, ptr %l30, !tbaa !29
  br label %bb144
bb143:
  br label %bb148
bb144:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load ptr, ptr %l30, !tbaa !29
  %t532 = getelementptr %"compiler/typed:Cond", ptr %t530, i32 0, i32 0
  %t533 = load ptr, ptr %t532, !tbaa !29
  %t535 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t529, ptr %t533, i64 %t535)
  br label %bb145
bb145:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t540 = load ptr, ptr %l30, !tbaa !29
  %t542 = getelementptr %"compiler/typed:Cond", ptr %t540, i32 0, i32 1
  %t543 = load ptr, ptr %t542, !tbaa !29
  %t544 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t539, ptr %t543, i64 %t544)
  br label %bb146
bb146:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t549 = load ptr, ptr %l30, !tbaa !29
  %t551 = getelementptr %"compiler/typed:Cond", ptr %t549, i32 0, i32 2
  %t552 = load ptr, ptr %t551, !tbaa !29
  %t554 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t548, ptr %t552, i64 %t554)
  br label %bb147
bb147:
  br label %bb276
bb148:
  %t558 = load ptr, ptr %l1, !tbaa !29
  store ptr %t558, ptr %l326, !tbaa !29
  store i1 false, ptr %l327, !tbaa !21
  %t559 = load ptr, ptr %l326, !tbaa !29
  %t560 = icmp ne ptr %t559, null
  br i1 %t560, label %bb149, label %bb150
bb149:
  %t562 = load ptr, ptr %l326, !tbaa !29
  %t563 = load i64, ptr %t562, !range !{i64 0, i64 18}
  %t565 = icmp eq i64 %t563, 12
  store i1 %t565, ptr %l327, !tbaa !21
  br label %bb150
bb150:
  %t566 = load i1, ptr %l327, !tbaa !21
  br i1 %t566, label %bb151, label %bb152
bb151:
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t569 = getelementptr { i64, [5 x i64] }, ptr %t567, i32 0, i32 1
  %t570 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t569, i32 0, i32 2
  %t571 = load ptr, ptr %t570
  store ptr %t571, ptr %l31, !tbaa !29
  br label %bb153
bb152:
  br label %bb162
bb153:
  %t573 = load ptr, ptr %l31, !tbaa !29
  %t575 = getelementptr %"compiler/typed:Seq", ptr %t573, i32 0, i32 0
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !27
  store { i64, ptr } %t576, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t578 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t580 = extractvalue { i64, ptr } %t578, 0
  store i64 %t580, ptr %l34, !tbaa !24
  br label %bb154
bb154:
  %t582 = load i64, ptr %l33, !tbaa !24
  %t583 = load i64, ptr %l34, !tbaa !24
  %t586 = icmp slt i64 %t582, %t583
  %t588 = xor i1 %t586, true
  br i1 %t588, label %bb155, label %bb156
bb155:
  br label %bb160
bb156:
  br label %bb157
bb157:
  %t590 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t590, ptr %l340, !tbaa !27
  %t591 = load i64, ptr %l33, !tbaa !24
  %t593 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t594 = load ptr, ptr %t593, !tbaa !27
  %t595 = getelementptr ptr, ptr %t594, i64 %t591
  %t596 = load ptr, ptr %t595, !tbaa !39
  %t598 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %t598, ptr %t596)
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t603 = load i64, ptr %l33, !tbaa !24
  %t605 = add i64 %t603, 1
  store i64 %t605, ptr %l33, !tbaa !24
  br label %bb154
bb160:
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t608 = load ptr, ptr %l31, !tbaa !29
  %t610 = getelementptr %"compiler/typed:Seq", ptr %t608, i32 0, i32 1
  %t611 = load ptr, ptr %t610, !tbaa !29
  %t612 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t607, ptr %t611, i64 %t612)
  br label %bb161
bb161:
  br label %bb276
bb162:
  %t616 = load ptr, ptr %l1, !tbaa !29
  store ptr %t616, ptr %l352, !tbaa !29
  store i1 false, ptr %l353, !tbaa !21
  %t617 = load ptr, ptr %l352, !tbaa !29
  %t618 = icmp ne ptr %t617, null
  br i1 %t618, label %bb163, label %bb164
bb163:
  %t620 = load ptr, ptr %l352, !tbaa !29
  %t621 = load i64, ptr %t620, !range !{i64 0, i64 18}
  %t623 = icmp eq i64 %t621, 13
  store i1 %t623, ptr %l353, !tbaa !21
  br label %bb164
bb164:
  %t624 = load i1, ptr %l353, !tbaa !21
  br i1 %t624, label %bb165, label %bb166
bb165:
  %t625 = load ptr, ptr %l1, !tbaa !29
  %t627 = getelementptr { i64, [5 x i64] }, ptr %t625, i32 0, i32 1
  %t628 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t627, i32 0, i32 2
  %t629 = load ptr, ptr %t628
  store ptr %t629, ptr %l36, !tbaa !29
  br label %bb167
bb166:
  br label %bb183
bb167:
  %t631 = load ptr, ptr %l36, !tbaa !29
  %t633 = getelementptr %"compiler/typed:Match", ptr %t631, i32 0, i32 0
  %t634 = load { i64, ptr }, ptr %t633, !tbaa !27
  store { i64, ptr } %t634, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t636 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t638 = extractvalue { i64, ptr } %t636, 0
  store i64 %t638, ptr %l39, !tbaa !24
  br label %bb168
bb168:
  %t640 = load i64, ptr %l38, !tbaa !24
  %t641 = load i64, ptr %l39, !tbaa !24
  %t644 = icmp slt i64 %t640, %t641
  %t646 = xor i1 %t644, true
  br i1 %t646, label %bb169, label %bb170
bb169:
  br label %bb174
bb170:
  br label %bb171
bb171:
  %t648 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t648, ptr %l366, !tbaa !27
  %t649 = load i64, ptr %l38, !tbaa !24
  %t651 = getelementptr { i64, ptr }, ptr %l366, i32 0, i32 1
  %t652 = load ptr, ptr %t651, !tbaa !27
  %t653 = getelementptr ptr, ptr %t652, i64 %t649
  %t654 = load ptr, ptr %t653, !tbaa !39
  %t656 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %t656, ptr %t654)
  br label %bb172
bb172:
  br label %bb173
bb173:
  %t661 = load i64, ptr %l38, !tbaa !24
  %t663 = add i64 %t661, 1
  store i64 %t663, ptr %l38, !tbaa !24
  br label %bb168
bb174:
  %t665 = load ptr, ptr %l36, !tbaa !29
  %t667 = getelementptr %"compiler/typed:Match", ptr %t665, i32 0, i32 1
  %t668 = load { i64, ptr }, ptr %t667, !tbaa !27
  store { i64, ptr } %t668, ptr %l41, !tbaa !27
  store i64 0, ptr %l42, !tbaa !24
  %t670 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t672 = extractvalue { i64, ptr } %t670, 0
  store i64 %t672, ptr %l43, !tbaa !24
  br label %bb175
bb175:
  %t674 = load i64, ptr %l42, !tbaa !24
  %t675 = load i64, ptr %l43, !tbaa !24
  %t678 = icmp slt i64 %t674, %t675
  %t680 = xor i1 %t678, true
  br i1 %t680, label %bb176, label %bb177
bb176:
  br label %bb181
bb177:
  br label %bb178
bb178:
  %t682 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t682, ptr %l382, !tbaa !27
  %t683 = load i64, ptr %l42, !tbaa !24
  %t685 = getelementptr { i64, ptr }, ptr %l382, i32 0, i32 1
  %t686 = load ptr, ptr %t685, !tbaa !27
  %t687 = getelementptr ptr, ptr %t686, i64 %t683
  %t688 = load ptr, ptr %t687, !tbaa !39
  %t690 = load ptr, ptr %l0, !tbaa !29
  %t693 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndArm(ptr %v0, ptr %v1, ptr %t690, ptr %t688, i64 %t693)
  br label %bb179
bb179:
  br label %bb180
bb180:
  %t697 = load i64, ptr %l42, !tbaa !24
  %t699 = add i64 %t697, 1
  store i64 %t699, ptr %l42, !tbaa !24
  br label %bb175
bb181:
  %t701 = load ptr, ptr %l0, !tbaa !29
  %t702 = load ptr, ptr %l36, !tbaa !29
  %t704 = getelementptr %"compiler/typed:Match", ptr %t702, i32 0, i32 2
  %t705 = load ptr, ptr %t704, !tbaa !29
  %t706 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndArm(ptr %v0, ptr %v1, ptr %t701, ptr %t705, i64 %t706)
  br label %bb182
bb182:
  br label %bb276
bb183:
  %t710 = load ptr, ptr %l1, !tbaa !29
  store ptr %t710, ptr %l395, !tbaa !29
  store i1 false, ptr %l396, !tbaa !21
  %t711 = load ptr, ptr %l395, !tbaa !29
  %t712 = icmp ne ptr %t711, null
  br i1 %t712, label %bb184, label %bb185
bb184:
  %t714 = load ptr, ptr %l395, !tbaa !29
  %t715 = load i64, ptr %t714, !range !{i64 0, i64 18}
  %t717 = icmp eq i64 %t715, 14
  store i1 %t717, ptr %l396, !tbaa !21
  br label %bb185
bb185:
  %t718 = load i1, ptr %l396, !tbaa !21
  br i1 %t718, label %bb186, label %bb187
bb186:
  %t719 = load ptr, ptr %l1, !tbaa !29
  %t721 = getelementptr { i64, [5 x i64] }, ptr %t719, i32 0, i32 1
  %t722 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t721, i32 0, i32 2
  %t723 = load ptr, ptr %t722
  store ptr %t723, ptr %l45, !tbaa !29
  br label %bb188
bb187:
  br label %bb204
bb188:
  %t725 = load ptr, ptr %l0, !tbaa !29
  %t726 = load ptr, ptr %l45, !tbaa !29
  %t728 = getelementptr %"compiler/typed:Try", ptr %t726, i32 0, i32 0
  %t729 = load ptr, ptr %t728, !tbaa !29
  %t730 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t725, ptr %t729, i64 %t730)
  br label %bb189
bb189:
  %t734 = load ptr, ptr %l45, !tbaa !29
  %t736 = getelementptr %"compiler/typed:Try", ptr %t734, i32 0, i32 1
  %t737 = load { i64, ptr }, ptr %t736, !tbaa !27
  store { i64, ptr } %t737, ptr %l46, !tbaa !27
  store i64 0, ptr %l47, !tbaa !24
  %t739 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t741 = extractvalue { i64, ptr } %t739, 0
  store i64 %t741, ptr %l48, !tbaa !24
  br label %bb190
bb190:
  %t743 = load i64, ptr %l47, !tbaa !24
  %t744 = load i64, ptr %l48, !tbaa !24
  %t747 = icmp slt i64 %t743, %t744
  %t749 = xor i1 %t747, true
  br i1 %t749, label %bb191, label %bb192
bb191:
  br label %bb203
bb192:
  br label %bb193
bb193:
  %t751 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t751, ptr %l413, !tbaa !27
  %t752 = load i64, ptr %l47, !tbaa !24
  %t754 = getelementptr { i64, ptr }, ptr %l413, i32 0, i32 1
  %t755 = load ptr, ptr %t754, !tbaa !27
  %t756 = getelementptr ptr, ptr %t755, i64 %t752
  %t757 = load ptr, ptr %t756, !tbaa !39
  store ptr %t757, ptr %l49, !tbaa !29
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t760 = load ptr, ptr %l49, !tbaa !29
  %t762 = getelementptr %"compiler/typed:Clause", ptr %t760, i32 0, i32 3
  %t763 = load ptr, ptr %t762, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %t759, ptr %t763)
  br label %bb194
bb194:
  %t766 = load ptr, ptr %l49, !tbaa !29
  %t768 = getelementptr %"compiler/typed:Clause", ptr %t766, i32 0, i32 4
  %t769 = load { i64, ptr }, ptr %t768, !tbaa !27
  store { i64, ptr } %t769, ptr %l50, !tbaa !27
  store i64 0, ptr %l51, !tbaa !24
  %t771 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t773 = extractvalue { i64, ptr } %t771, 0
  store i64 %t773, ptr %l52, !tbaa !24
  br label %bb195
bb195:
  %t775 = load i64, ptr %l51, !tbaa !24
  %t776 = load i64, ptr %l52, !tbaa !24
  %t779 = icmp slt i64 %t775, %t776
  %t781 = xor i1 %t779, true
  br i1 %t781, label %bb196, label %bb197
bb196:
  br label %bb201
bb197:
  br label %bb198
bb198:
  %t783 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t783, ptr %l427, !tbaa !27
  %t784 = load i64, ptr %l51, !tbaa !24
  %t786 = getelementptr { i64, ptr }, ptr %l427, i32 0, i32 1
  %t787 = load ptr, ptr %t786, !tbaa !27
  %t788 = getelementptr ptr, ptr %t787, i64 %t784
  %t789 = load ptr, ptr %t788, !tbaa !39
  %t791 = load ptr, ptr %l0, !tbaa !29
  %t794 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t791, ptr %t789, i64 %t794)
  br label %bb199
bb199:
  br label %bb200
bb200:
  %t798 = load i64, ptr %l51, !tbaa !24
  %t800 = add i64 %t798, 1
  store i64 %t800, ptr %l51, !tbaa !24
  br label %bb195
bb201:
  br label %bb202
bb202:
  %t802 = load i64, ptr %l47, !tbaa !24
  %t804 = add i64 %t802, 1
  store i64 %t804, ptr %l47, !tbaa !24
  br label %bb190
bb203:
  br label %bb276
bb204:
  %t806 = load ptr, ptr %l1, !tbaa !29
  store ptr %t806, ptr %l438, !tbaa !29
  store i1 false, ptr %l439, !tbaa !21
  %t807 = load ptr, ptr %l438, !tbaa !29
  %t808 = icmp ne ptr %t807, null
  br i1 %t808, label %bb205, label %bb206
bb205:
  %t810 = load ptr, ptr %l438, !tbaa !29
  %t811 = load i64, ptr %t810, !range !{i64 0, i64 18}
  %t813 = icmp eq i64 %t811, 15
  store i1 %t813, ptr %l439, !tbaa !21
  br label %bb206
bb206:
  %t814 = load i1, ptr %l439, !tbaa !21
  br i1 %t814, label %bb207, label %bb208
bb207:
  %t815 = load ptr, ptr %l1, !tbaa !29
  %t817 = getelementptr { i64, [5 x i64] }, ptr %t815, i32 0, i32 1
  %t818 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t817, i32 0, i32 2
  %t819 = load ptr, ptr %t818
  store ptr %t819, ptr %l54, !tbaa !29
  br label %bb209
bb208:
  br label %bb240
bb209:
  %t821 = load ptr, ptr %l54, !tbaa !29
  store ptr %t821, ptr %l444, !tbaa !29
  store i1 false, ptr %l445, !tbaa !21
  %t822 = load ptr, ptr %l444, !tbaa !29
  %t823 = icmp ne ptr %t822, null
  br i1 %t823, label %bb210, label %bb211
bb210:
  %t825 = load ptr, ptr %l444, !tbaa !29
  %t826 = load i64, ptr %t825, !range !{i64 0, i64 3}
  %t828 = icmp eq i64 %t826, 1
  store i1 %t828, ptr %l445, !tbaa !21
  br label %bb211
bb211:
  %t829 = load i1, ptr %l445, !tbaa !21
  br i1 %t829, label %bb212, label %bb213
bb212:
  %t830 = load ptr, ptr %l54, !tbaa !29
  %t832 = getelementptr { i64, [4 x i64] }, ptr %t830, i32 0, i32 1
  %t833 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t832, i32 0, i32 0
  %t834 = load i32, ptr %t833
  store i32 %t834, ptr %l55, !tbaa !23
  %t836 = load ptr, ptr %l54, !tbaa !29
  %t838 = getelementptr { i64, [4 x i64] }, ptr %t836, i32 0, i32 1
  %t839 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t838, i32 0, i32 1
  %t840 = load { i64, ptr }, ptr %t839
  store { i64, ptr } %t840, ptr %l56, !tbaa !27
  br label %bb214
bb213:
  br label %bb227
bb214:
  %t842 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t842, ptr %l57, !tbaa !27
  store i64 0, ptr %l58, !tbaa !24
  %t844 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t846 = extractvalue { i64, ptr } %t844, 0
  store i64 %t846, ptr %l59, !tbaa !24
  br label %bb215
bb215:
  store %olang.scope zeroinitializer, ptr %s44
  %t848 = load i64, ptr %l58, !tbaa !24
  %t849 = load i64, ptr %l59, !tbaa !24
  %t852 = icmp slt i64 %t848, %t849
  %t854 = xor i1 %t852, true
  br i1 %t854, label %bb216, label %bb217
bb216:
  call void @__olang_scope_close(ptr %s44)
  br label %bb226
bb217:
  br label %bb218
bb218:
  %t856 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t856, ptr %l459, !tbaa !27
  %t857 = load i64, ptr %l58, !tbaa !24
  %t859 = getelementptr { i64, ptr }, ptr %l459, i32 0, i32 1
  %t860 = load ptr, ptr %t859, !tbaa !27
  %t861 = getelementptr ptr, ptr %t860, i64 %t857
  %t862 = load ptr, ptr %t861, !tbaa !39
  store ptr %t862, ptr %l60, !tbaa !29
  %t864 = load ptr, ptr %l0, !tbaa !29
  store ptr %t864, ptr %l462, !tbaa !29
  %t865 = load ptr, ptr %l60, !tbaa !29
  %t867 = getelementptr %"compiler/typed:Capture", ptr %t865, i32 0, i32 1
  %t868 = load ptr, ptr %t867, !tbaa !29
  store ptr %t868, ptr %l465, !tbaa !29
  %t870 = load ptr, ptr %l0, !tbaa !29
  %t872 = getelementptr %"compiler/scope:Scoper", ptr %t870, i32 0, i32 234
  store ptr %t872, ptr %l467, !tbaa !29
  %t873 = load i32, ptr %l55, !tbaa !23
  %t875 = sext i32 %t873 to i64
  %t876 = load ptr, ptr %l60, !tbaa !29
  %t878 = getelementptr %"compiler/typed:Capture", ptr %t876, i32 0, i32 0
  %t879 = load i32, ptr %t878, !tbaa !23
  %t881 = sext i32 %t879 to i64
  %t884 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s44, i64 %t875, i64 %t881)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t884, ptr %l473
  br label %bb219
bb219:
  %t885 = load ptr, ptr %l467, !tbaa !29
  %t886 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l473
  %t887 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %t885, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t886)
  store i1 %t887, ptr %l474
  br label %bb220
bb220:
  %t888 = load i1, ptr %l474, !tbaa !21
  br i1 %t888, label %bb221, label %bb222
bb221:
  %t889 = load i64, ptr @G_2ecompiler_2fscope_2eBndNone, !tbaa !24
  store i64 %t889, ptr %l475, !tbaa !24
  br label %bb223
bb222:
  %t891 = load i64, ptr @G_2ecompiler_2fscope_2eBndCapture, !tbaa !24
  store i64 %t891, ptr %l475, !tbaa !24
  br label %bb223
bb223:
  %t893 = load ptr, ptr %l462, !tbaa !29
  %t894 = load ptr, ptr %l465, !tbaa !29
  %t895 = load i64, ptr %l475, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t893, ptr %t894, i64 %t895)
  br label %bb224
bb224:
  call void @__olang_scope_close(ptr %s44)
  br label %bb225
bb225:
  %t896 = load i64, ptr %l58, !tbaa !24
  %t898 = add i64 %t896, 1
  store i64 %t898, ptr %l58, !tbaa !24
  br label %bb215
bb226:
  br label %bb239
bb227:
  %t900 = load ptr, ptr %l54, !tbaa !29
  store ptr %t900, ptr %l480, !tbaa !29
  store i1 false, ptr %l481, !tbaa !21
  %t901 = load ptr, ptr %l480, !tbaa !29
  %t902 = icmp ne ptr %t901, null
  br i1 %t902, label %bb228, label %bb229
bb228:
  %t904 = load ptr, ptr %l480, !tbaa !29
  %t905 = load i64, ptr %t904, !range !{i64 0, i64 3}
  %t907 = icmp eq i64 %t905, 2
  store i1 %t907, ptr %l481, !tbaa !21
  br label %bb229
bb229:
  %t908 = load i1, ptr %l481, !tbaa !21
  br i1 %t908, label %bb230, label %bb231
bb230:
  %t909 = load ptr, ptr %l54, !tbaa !29
  %t911 = getelementptr { i64, [4 x i64] }, ptr %t909, i32 0, i32 1
  %t912 = getelementptr { i32, ptr, i32 }, ptr %t911, i32 0, i32 1
  %t913 = load ptr, ptr %t912
  store ptr %t913, ptr %l61, !tbaa !29
  br label %bb232
bb231:
  br label %bb234
bb232:
  %t915 = load ptr, ptr %l0, !tbaa !29
  %t916 = load ptr, ptr %l61, !tbaa !29
  %t918 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t915, ptr %t916, i64 %t918)
  br label %bb233
bb233:
  br label %bb239
bb234:
  br i1 true, label %bb235, label %bb236
bb235:
  br label %bb237
bb236:
  br label %bb238
bb237:
  br label %bb239
bb238:
  call void @__olang_check_failed(ptr @olang_loc_6bef328f0d1ecf52_91f27225e69db7a6)
  unreachable
bb239:
  br label %bb276
bb240:
  %t922 = load ptr, ptr %l1, !tbaa !29
  store ptr %t922, ptr %l490, !tbaa !29
  store i1 false, ptr %l491, !tbaa !21
  %t923 = load ptr, ptr %l490, !tbaa !29
  %t924 = icmp ne ptr %t923, null
  br i1 %t924, label %bb241, label %bb242
bb241:
  %t926 = load ptr, ptr %l490, !tbaa !29
  %t927 = load i64, ptr %t926, !range !{i64 0, i64 18}
  %t929 = icmp eq i64 %t927, 16
  store i1 %t929, ptr %l491, !tbaa !21
  br label %bb242
bb242:
  %t930 = load i1, ptr %l491, !tbaa !21
  br i1 %t930, label %bb243, label %bb244
bb243:
  %t931 = load ptr, ptr %l1, !tbaa !29
  %t933 = getelementptr { i64, [5 x i64] }, ptr %t931, i32 0, i32 1
  %t934 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t933, i32 0, i32 2
  %t935 = load ptr, ptr %t934
  store ptr %t935, ptr %l62, !tbaa !29
  br label %bb245
bb244:
  br label %bb264
bb245:
  %t937 = load ptr, ptr %l62, !tbaa !29
  %t939 = getelementptr %"compiler/typed:Text", ptr %t937, i32 0, i32 0
  %t940 = load { i64, ptr }, ptr %t939, !tbaa !27
  store { i64, ptr } %t940, ptr %l63, !tbaa !27
  store i64 0, ptr %l64, !tbaa !24
  %t942 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t942, 0
  store i64 %t944, ptr %l65, !tbaa !24
  br label %bb246
bb246:
  %t946 = load i64, ptr %l64, !tbaa !24
  %t947 = load i64, ptr %l65, !tbaa !24
  %t950 = icmp slt i64 %t946, %t947
  %t952 = xor i1 %t950, true
  br i1 %t952, label %bb247, label %bb248
bb247:
  br label %bb263
bb248:
  br label %bb249
bb249:
  %t954 = load { i64, ptr }, ptr %l63, !tbaa !27
  store { i64, ptr } %t954, ptr %l504, !tbaa !27
  %t955 = load i64, ptr %l64, !tbaa !24
  %t957 = getelementptr { i64, ptr }, ptr %l504, i32 0, i32 1
  %t958 = load ptr, ptr %t957, !tbaa !27
  %t959 = getelementptr ptr, ptr %t958, i64 %t955
  %t960 = load ptr, ptr %t959, !tbaa !39
  store ptr %t960, ptr %l66, !tbaa !29
  %t962 = load ptr, ptr %l66, !tbaa !29
  store ptr %t962, ptr %l507, !tbaa !29
  store i1 false, ptr %l508, !tbaa !21
  %t963 = load ptr, ptr %l507, !tbaa !29
  %t964 = icmp ne ptr %t963, null
  br i1 %t964, label %bb250, label %bb251
bb250:
  %t966 = load ptr, ptr %l507, !tbaa !29
  %t967 = load i64, ptr %t966, !range !{i64 0, i64 2}
  %t969 = icmp eq i64 %t967, 1
  store i1 %t969, ptr %l508, !tbaa !21
  br label %bb251
bb251:
  %t970 = load i1, ptr %l508, !tbaa !21
  br i1 %t970, label %bb252, label %bb253
bb252:
  %t971 = load ptr, ptr %l66, !tbaa !29
  %t973 = getelementptr { i64, [2 x i64] }, ptr %t971, i32 0, i32 1
  %t974 = getelementptr { ptr }, ptr %t973, i32 0, i32 0
  %t975 = load ptr, ptr %t974
  store ptr %t975, ptr %l67, !tbaa !29
  br label %bb254
bb253:
  br label %bb256
bb254:
  %t977 = load ptr, ptr %l0, !tbaa !29
  %t978 = load ptr, ptr %l67, !tbaa !29
  %t980 = load i64, ptr @G_2ecompiler_2fscope_2eBndOther, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t977, ptr %t978, i64 %t980)
  br label %bb255
bb255:
  br label %bb261
bb256:
  br i1 true, label %bb257, label %bb258
bb257:
  br label %bb259
bb258:
  br label %bb260
bb259:
  br label %bb261
bb260:
  call void @__olang_check_failed(ptr @olang_loc_6d67491290dfe709_4a442bed91eef13d)
  unreachable
bb261:
  br label %bb262
bb262:
  %t984 = load i64, ptr %l64, !tbaa !24
  %t986 = add i64 %t984, 1
  store i64 %t986, ptr %l64, !tbaa !24
  br label %bb246
bb263:
  br label %bb276
bb264:
  %t988 = load ptr, ptr %l1, !tbaa !29
  store ptr %t988, ptr %l519, !tbaa !29
  store i1 false, ptr %l520, !tbaa !21
  %t989 = load ptr, ptr %l519, !tbaa !29
  %t990 = icmp ne ptr %t989, null
  br i1 %t990, label %bb265, label %bb266
bb265:
  %t992 = load ptr, ptr %l519, !tbaa !29
  %t993 = load i64, ptr %t992, !range !{i64 0, i64 18}
  %t995 = icmp eq i64 %t993, 17
  store i1 %t995, ptr %l520, !tbaa !21
  br label %bb266
bb266:
  %t996 = load i1, ptr %l520, !tbaa !21
  br i1 %t996, label %bb267, label %bb268
bb267:
  %t997 = load ptr, ptr %l1, !tbaa !29
  %t999 = getelementptr { i64, [5 x i64] }, ptr %t997, i32 0, i32 1
  %t1000 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t999, i32 0, i32 2
  %t1001 = load ptr, ptr %t1000
  store ptr %t1001, ptr %l68, !tbaa !29
  br label %bb269
bb268:
  br label %bb271
bb269:
  %t1003 = load ptr, ptr %l0, !tbaa !29
  %t1004 = load ptr, ptr %l68, !tbaa !29
  %t1006 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndExpr(ptr %v0, ptr %v1, ptr %t1003, ptr %t1004, i64 %t1006)
  br label %bb270
bb270:
  br label %bb276
bb271:
  br i1 true, label %bb272, label %bb273
bb272:
  br label %bb274
bb273:
  br label %bb275
bb274:
  br label %bb276
bb275:
  call void @__olang_check_failed(ptr @olang_loc_67e276f5a936c138_9490efd29ecc3a0c)
  unreachable
bb276:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsOwn(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 45
  %t9 = load i64, ptr %l1, !tbaa !24
  %t12 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t8, i64 %t9)
  %t13 = extractvalue { i32, ptr } %t12, 1
  %t14 = extractvalue { i32, ptr } %t12, 0
  store i32 %t14, ptr %l11
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store ptr %t13, ptr %l10
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l10, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  %t19 = load ptr, ptr %l6, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorBuilt(ptr %v0, ptr %v0, ptr %t20, ptr %t19)
  store i1 %t24, ptr %l15
  br label %bb8
bb8:
  %t25 = load i1, ptr %l15, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeBuilds(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t6 = load ptr, ptr %l4, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l7, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 1
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l8, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t15 = load ptr, ptr %l4, !tbaa !29
  store ptr %t15, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t16 = load ptr, ptr %l11, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l11, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 5}
  %t22 = icmp eq i64 %t20, 4
  store i1 %t22, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8066e5da37f3a23b_ece6b8d6fabe8bf7)
  unreachable
bb15:
  %t31 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %a0, i64 %a2, i64 %a3)
  store i1 %t31, ptr %l19
  br label %bb16
bb16:
  %t32 = load i1, ptr %l19, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeValue(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i1
  %l9 = alloca i1
  %l13 = alloca %"compiler/scope:Val"
  %l18 = alloca ptr
  %l19 = alloca i1
  %l34 = alloca i1
  %l39 = alloca %"compiler/source:Span"
  %l53 = alloca %"compiler/scope:Val"
  %l69 = alloca i1
  %l73 = alloca i1
  %l77 = alloca i1
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l97 = alloca i64
  %l99 = alloca %"compiler/source:Span"
  %l100 = alloca %"compiler/source:Span"
  %l101 = alloca %"compiler/diagmsg:Msg"
  %l102 = alloca i64
  %l103 = alloca ptr
  %l106 = alloca %"compiler/source:Span"
  %l107 = alloca %"compiler/diagmsg:Msg"
  %l108 = alloca i64
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l18, !tbaa !29
  store i1 false, ptr %l19, !tbaa !21
  %t2 = load ptr, ptr %l18, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l18, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l19, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l19, !tbaa !21
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i1, ptr %l4, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i1, ptr %l2, !tbaa !21
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 80
  store i1 %t13, ptr %t16, !tbaa !21
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 83
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l5, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 84
  %t25 = load %"compiler/source:Span", ptr %t24
  store %"compiler/source:Span" %t25, ptr %l6
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 85
  %t30 = load { i64, [2 x i64] }, ptr %t29
  store { i64, [2 x i64] } %t30, ptr %l7
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 86
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l8, !tbaa !21
  %t37 = load i1, ptr %l2, !tbaa !21
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = load i1, ptr %l4, !tbaa !21
  %t41 = xor i1 %t39, true
  store i1 %t41, ptr %l34, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l34, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l9, !tbaa !21
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t44, ptr %t45)
  store %"compiler/source:Span" %t48, ptr %l39
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t49 = load %"compiler/source:Span", ptr %l39
  %t50 = load { i64, [2 x i64] }, ptr %l3
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i1, ptr %l9, !tbaa !21
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 83
  store i1 %t53, ptr %t56, !tbaa !21
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 84
  store %"compiler/source:Span" %t49, ptr %t61
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t62, i32 0, i32 85
  store { i64, [2 x i64] } %t50, ptr %t66
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 86
  store i1 true, ptr %t71, !tbaa !21
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = load { i64, [2 x i64] }, ptr %l3
  %t79 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t72, ptr %t73, { i64, [2 x i64] } %t75)
  store %"compiler/scope:Val" %t79, ptr %l53
  br label %bb13
bb13:
  %t80 = load %"compiler/scope:Val", ptr %l53
  store %"compiler/scope:Val" %t80, ptr %l13
  %t81 = load i1, ptr %l5, !tbaa !21
  %t83 = load %"compiler/source:Span", ptr %l6
  %t85 = load { i64, [2 x i64] }, ptr %l7
  %t87 = load i1, ptr %l8, !tbaa !21
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t89, i32 0, i32 83
  store i1 %t81, ptr %t93, !tbaa !21
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 84
  store %"compiler/source:Span" %t83, ptr %t98
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:Scoper", ptr %t99, i32 0, i32 85
  store { i64, [2 x i64] } %t85, ptr %t103
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 86
  store i1 %t87, ptr %t108, !tbaa !21
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 80
  store i1 false, ptr %t111, !tbaa !21
  %t112 = load i1, ptr %l2, !tbaa !21
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb16
bb15:
  %t116 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 0
  %t117 = load i32, ptr %t116, !range !{i32 0, i32 5}
  %t119 = trunc i64 3 to i32
  %t120 = icmp eq i32 %t117, %t119
  %t122 = xor i1 %t120, true
  store i1 %t122, ptr %l69, !tbaa !21
  br label %bb16
bb16:
  %t124 = load i1, ptr %l69, !tbaa !21
  br i1 %t124, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb20
bb18:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 1
  %t127 = load { i64, [2 x i64] }, ptr %t126
  %t128 = load { i64, [2 x i64] }, ptr %l3
  %t132 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %t125, { i64, [2 x i64] } %t127, { i64, [2 x i64] } %t128)
  store i1 %t132, ptr %l77
  br label %bb19
bb19:
  %t133 = load i1, ptr %l77, !tbaa !21
  store i1 %t133, ptr %l73, !tbaa !21
  br label %bb20
bb20:
  %t134 = load i1, ptr %l73, !tbaa !21
  br i1 %t134, label %bb21, label %bb22
bb21:
  %t135 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 1
  %t136 = load { i64, [2 x i64] }, ptr %t135
  store { i64, [2 x i64] } %t136, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 147
  %t141 = load i1, ptr %t140, !tbaa !21
  br i1 %t141, label %bb24, label %bb25
bb24:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t145 = load { i64, [2 x i64] }, ptr %l3
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %t143, ptr %t144, { i64, [2 x i64] } %t145)
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/scope:Scoper", ptr %t149, i32 0, i32 28
  %t152 = load i1, ptr %t151, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb28, label %bb29
bb28:
  %t156 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 1
  %t157 = load { i64, [2 x i64] }, ptr %t156
  store { i64, [2 x i64] } %t157, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t159 = load i1, ptr %l4, !tbaa !21
  br i1 %t159, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l89, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l90, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 26
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t168 = icmp eq ptr %t166, null
  br i1 %t168, label %bb33, label %bb34
bb32:
  store %olang.scope zeroinitializer, ptr %s7
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l103, !tbaa !29
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t175 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t171, ptr %t172)
  store %"compiler/source:Span" %t175, ptr %l106
  br label %bb40
bb33:
  call void @__olang_check_failed(ptr @olang_loc_9e4942b53b152c4c_8e08edd23a0a3ef8)
  unreachable
bb34:
  br label %bb35
bb35:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/scope:Scoper", ptr %t176, i32 0, i32 26
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Body", ptr %t179, i32 0, i32 3
  %t183 = load i64, ptr %t182, !tbaa !24
  store i64 %t183, ptr %l97, !tbaa !24
  %t184 = load ptr, ptr %l1, !tbaa !29
  %t186 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t184)
  store %"compiler/source:Span" %t186, ptr %l99
  br label %bb36
bb36:
  %t187 = load ptr, ptr %l90, !tbaa !29
  %t188 = load i64, ptr %l97, !tbaa !24
  %t189 = load %"compiler/source:Span", ptr %l99
  %t190 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %t187, i64 %t188, %"compiler/source:Span" %t189)
  store %"compiler/source:Span" %t190, ptr %l100
  br label %bb37
bb37:
  %t191 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnCaptureTooShort(ptr %s6)
  store %"compiler/diagmsg:Msg" %t191, ptr %l101
  br label %bb38
bb38:
  %t192 = load ptr, ptr %l89, !tbaa !29
  %t193 = load %"compiler/source:Span", ptr %l100
  %t194 = load %"compiler/diagmsg:Msg", ptr %l101
  %t195 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s6, ptr %t192, %"compiler/source:Span" %t193, %"compiler/diagmsg:Msg" %t194)
  store i64 %t195, ptr %l102
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb40:
  %t196 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %s7)
  store %"compiler/diagmsg:Msg" %t196, ptr %l107
  br label %bb41
bb41:
  %t197 = load ptr, ptr %l103, !tbaa !29
  %t198 = load %"compiler/source:Span", ptr %l106
  %t199 = load %"compiler/diagmsg:Msg", ptr %l107
  %t200 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s7, ptr %t197, %"compiler/source:Span" %t198, %"compiler/diagmsg:Msg" %t199)
  store i64 %t200, ptr %l108
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb43:
  %t201 = getelementptr %"compiler/scope:Val", ptr %l13, i32 0, i32 1
  %t202 = load { i64, [2 x i64] }, ptr %t201
  store { i64, [2 x i64] } %t202, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapOuter(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca i32
  %l27 = alloca { i64, ptr }
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Body", ptr %a1, i32 0, i32 6
  %t7 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t3, i64 %a2)
  store { i64, [1 x i64] } %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load { i64, [1 x i64] }, ptr %l14
  store { i64, [1 x i64] } %t8, ptr %l4
  %t9 = load { i64, [1 x i64] }, ptr %l4
  %t11 = extractvalue { i64, [1 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 4
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t15 = getelementptr { i32 }, ptr %t14, i32 0, i32 0
  %t16 = load i32, ptr %t15
  store i32 %t16, ptr %l5, !tbaa !23
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t18 = load i32, ptr %l5, !tbaa !23
  store i32 %t18, ptr %l15, !tbaa !23
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i32 -1, ptr %l15, !tbaa !23
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_34786756d9cc10ef_3d198681fdad2233)
  unreachable
bb10:
  %t20 = load i32, ptr %l15, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  store { i64, ptr } %a3, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t23, 0
  store i64 %t25, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t27 = load i64, ptr %l8, !tbaa !24
  %t28 = load i64, ptr %l9, !tbaa !24
  %t31 = icmp slt i64 %t27, %t28
  %t33 = xor i1 %t31, true
  br i1 %t33, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t35, ptr %l27, !tbaa !27
  %t36 = load i64, ptr %l8, !tbaa !24
  %t38 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 %t36
  %t41 = load ptr, ptr %t40, !tbaa !39
  store ptr %t41, ptr %l10, !tbaa !29
  %t43 = load ptr, ptr %l10, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Capture", ptr %t43, i32 0, i32 0
  %t46 = load i32, ptr %t45, !tbaa !23
  %t47 = load i32, ptr %l6, !tbaa !23
  %t50 = icmp eq i32 %t46, %t47
  br i1 %t50, label %bb15, label %bb16
bb15:
  %t52 = load ptr, ptr %l10, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Capture", ptr %t52, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !29
  store ptr %t55, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb11
bb19:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturedAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3) #0 {
entry:
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/scope:fnRecs"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/scope:fnRec"
  %l13 = alloca { i64, [2 x i64] }
  %l22 = alloca { i64, ptr }
  %l26 = alloca %"compiler/scope:fnRecs"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l41 = alloca i64
  %l46 = alloca %"compiler/scope:fnRec"
  %l48 = alloca %"compiler/scope:fnRec"
  %l49 = alloca i64
  %l52 = alloca %"compiler/scope:fnRec"
  %l55 = alloca i1
  %l56 = alloca i1
  %l59 = alloca %"compiler/scope:fnRec"
  %l62 = alloca i64
  %l64 = alloca i64
  %l66 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, [2 x i64] }
  %l77 = alloca { i64, [2 x i64] }
  %l79 = alloca { i64, [2 x i64] }
  %l81 = alloca i1
  %l89 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t34 = alloca { i64, [2 x i64] }, align 8
  %t49 = alloca { i64, [2 x i64] }, align 8
  %t53 = alloca { i64, [2 x i64] }, align 8
  %t115 = alloca { i64, [2 x i64] }, align 8
  %t126 = alloca { i64, [2 x i64] }, align 8
  %t145 = alloca { i64, [2 x i64] }, align 8
  %t162 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = sub i64 -2, %a2
  store i64 %t3, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l4, !tbaa !24
  %t7 = sdiv i64 %t5, 4096
  store i64 %t7, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = srem i64 %t9, 4096
  store i64 %t11, ptr %l6, !tbaa !24
  %t16 = getelementptr %"compiler/typed:Call", ptr %a3, i32 0, i32 1
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l22, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr ptr, ptr %t21, i64 %a1
  %t23 = load ptr, ptr %t22, !tbaa !39
  %t27 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %s0, ptr %a0, ptr %t23)
  store %"compiler/scope:fnRecs" %t27, ptr %l26
  br label %bb1
bb1:
  %t28 = load %"compiler/scope:fnRecs", ptr %l26
  store %"compiler/scope:fnRecs" %t28, ptr %l7
  %t29 = getelementptr %"compiler/scope:fnRecs", ptr %l7, i32 0, i32 1
  %t30 = load i1, ptr %t29, !tbaa !21
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 0
  store i64 6, ptr %t35
  %t36 = load { i64, [2 x i64] }, ptr %t34
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t36, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t38 = getelementptr %"compiler/scope:fnRecs", ptr %l7, i32 0, i32 0
  %t40 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %s0, ptr %s0, ptr %t38)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l31
  br label %bb5
bb5:
  %t41 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t41, ptr %l8
  %t42 = load i64, ptr %l5, !tbaa !24
  store i64 %t42, ptr %l32, !tbaa !24
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %l8)
  store i64 %t44, ptr %l34
  br label %bb6
bb6:
  %t45 = load i64, ptr %l32, !tbaa !24
  %t46 = load i64, ptr %l34, !tbaa !24
  %t47 = icmp sge i64 %t45, %t46
  br i1 %t47, label %bb7, label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t49
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t49, i32 0, i32 0
  store i64 6, ptr %t50
  %t51 = load { i64, [2 x i64] }, ptr %t49
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t51, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t53
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t53, i32 0, i32 0
  store i64 0, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t53
  store { i64, [2 x i64] } %t55, ptr %l9
  %t57 = getelementptr %"compiler/scope:fnRecs", ptr %l7, i32 0, i32 0
  store ptr %t57, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s4
  %t59 = load i64, ptr %l11, !tbaa !24
  store i64 %t59, ptr %l39, !tbaa !24
  %t60 = load ptr, ptr %l10, !tbaa !29
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t60)
  store i64 %t62, ptr %l41
  br label %bb11
bb11:
  %t63 = load i64, ptr %l39, !tbaa !24
  %t64 = load i64, ptr %l41, !tbaa !24
  %t65 = icmp slt i64 %t63, %t64
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb13:
  br label %bb14
bb14:
  %t69 = load ptr, ptr %l10, !tbaa !29
  %t70 = load i64, ptr %l11, !tbaa !24
  %t73 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t69, i64 %t70)
  store %"compiler/scope:fnRec" %t73, ptr %l46
  br label %bb15
bb15:
  %t75 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s4, ptr %l46)
  store %"compiler/scope:fnRec" %t75, ptr %l48
  br label %bb16
bb16:
  %t76 = load %"compiler/scope:fnRec", ptr %l48
  store %"compiler/scope:fnRec" %t76, ptr %l12
  %t77 = getelementptr %"compiler/scope:fnRec", ptr %l12, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l49, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s4, ptr %l8, i64 %t79)
  store %"compiler/scope:fnRec" %t82, ptr %l52
  br label %bb17
bb17:
  %t83 = getelementptr %"compiler/scope:fnRec", ptr %l52, i32 0, i32 0
  %t84 = load i64, ptr %t83, !tbaa !24
  %t85 = load i64, ptr %l49, !tbaa !24
  %t87 = icmp ne i64 %t85, %t84
  br i1 %t87, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb21
bb19:
  %t89 = getelementptr %"compiler/scope:fnRec", ptr %l12, i32 0, i32 2
  %t90 = load i1, ptr %t89, !tbaa !21
  store i1 %t90, ptr %l56, !tbaa !21
  %t91 = load i64, ptr %l5, !tbaa !24
  %t94 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s4, ptr %l8, i64 %t91)
  store %"compiler/scope:fnRec" %t94, ptr %l59
  br label %bb20
bb20:
  %t95 = getelementptr %"compiler/scope:fnRec", ptr %l59, i32 0, i32 2
  %t96 = load i1, ptr %t95, !tbaa !21
  %t97 = load i1, ptr %l56, !tbaa !21
  %t99 = icmp ne i1 %t97, %t96
  store i1 %t99, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t101 = load i1, ptr %l55, !tbaa !21
  br i1 %t101, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb40
bb23:
  br label %bb24
bb24:
  %t102 = load i64, ptr %l6, !tbaa !24
  store i64 %t102, ptr %l62, !tbaa !24
  %t103 = getelementptr %"compiler/scope:fnRec", ptr %l12, i32 0, i32 1
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s4, ptr %t103)
  store i64 %t105, ptr %l64
  br label %bb25
bb25:
  %t106 = load i64, ptr %l62, !tbaa !24
  %t107 = load i64, ptr %l64, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  br i1 %t108, label %bb26, label %bb27
bb26:
  %t110 = getelementptr %"compiler/scope:fnRec", ptr %l12, i32 0, i32 1
  %t111 = load i64, ptr %l6, !tbaa !24
  %t114 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s4, ptr %t110, i64 %t111)
  store { i64, [2 x i64] } %t114, ptr %l69
  br label %bb28
bb27:
  store { i64, [2 x i64] } zeroinitializer, ptr %t115
  %t116 = getelementptr { i64, [2 x i64] }, ptr %t115, i32 0, i32 0
  store i64 0, ptr %t116
  %t117 = load { i64, [2 x i64] }, ptr %t115
  store { i64, [2 x i64] } %t117, ptr %l66
  br label %bb29
bb28:
  %t119 = load { i64, [2 x i64] }, ptr %l69
  store { i64, [2 x i64] } %t119, ptr %l66
  br label %bb29
bb29:
  %t120 = load { i64, [2 x i64] }, ptr %l66
  store { i64, [2 x i64] } %t120, ptr %l13
  %t121 = load { i64, [2 x i64] }, ptr %l13
  %t123 = extractvalue { i64, [2 x i64] } %t121, 0
  %t124 = icmp eq i64 %t123, 0
  br i1 %t124, label %bb30, label %bb31
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [2 x i64] }, ptr %t126, i32 0, i32 0
  store i64 6, ptr %t127
  %t128 = load { i64, [2 x i64] }, ptr %t126
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t128, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t130 = load { i64, [2 x i64] }, ptr %l9
  %t132 = extractvalue { i64, [2 x i64] } %t130, 0
  %t133 = icmp eq i64 %t132, 0
  br i1 %t133, label %bb33, label %bb34
bb33:
  %t135 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t135, ptr %l9
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t137 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t137, ptr %l77
  %t138 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t138, ptr %l79
  %t141 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l77, ptr %l79)
  store i1 %t141, ptr %l81
  br label %bb36
bb36:
  %t142 = load i1, ptr %l81, !tbaa !21
  %t143 = xor i1 %t142, true
  br i1 %t143, label %bb37, label %bb38
bb37:
  store { i64, [2 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [2 x i64] }, ptr %t145, i32 0, i32 0
  store i64 6, ptr %t146
  %t147 = load { i64, [2 x i64] }, ptr %t145
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t147, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s4)
  br label %bb40
bb40:
  %t149 = load i64, ptr %l11, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l11, !tbaa !24
  br label %bb10
bb41:
  %t153 = load { i64, [2 x i64] }, ptr %l9
  %t155 = extractvalue { i64, [2 x i64] } %t153, 0
  %t156 = icmp eq i64 %t155, 0
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb42, label %bb43
bb42:
  %t160 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t160, ptr %l89
  br label %bb44
bb43:
  store { i64, [2 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [2 x i64] }, ptr %t162, i32 0, i32 0
  store i64 6, ptr %t163
  %t164 = load { i64, [2 x i64] }, ptr %t162
  store { i64, [2 x i64] } %t164, ptr %l89
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  %t166 = load { i64, [2 x i64] }, ptr %l89
  store { i64, [2 x i64] } %t166, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceInit(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l2 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
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
  %t8 = call ptr @compiler_2fscope_2eunPassed(ptr %s0, ptr %s0, ptr %t7)
  store ptr %t8, ptr %l7
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l7, !tbaa !29
  store ptr %t9, ptr %l2, !tbaa !29
  %t10 = load ptr, ptr %l2, !tbaa !29
  store ptr %t10, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l8, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 11
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l9, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb9
bb6:
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l13, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 18}
  %t26 = icmp eq i64 %t24, 13
  store i1 %t26, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l14, !tbaa !21
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i1, ptr %l12, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2econvertedPlace(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i1
  %l27 = alloca i1
  %l31 = alloca i1
  %l34 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i32
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i1
  %l62 = alloca i32
  %l66 = alloca i1
  %l70 = alloca i1
  %l71 = alloca ptr
  %l72 = alloca i1
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %a1)
  store ptr %t6, ptr %l13
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l13, !tbaa !29
  store ptr %t7, ptr %l2, !tbaa !29
  %t8 = load ptr, ptr %l2, !tbaa !29
  store ptr %t8, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t9 = load ptr, ptr %l14, !tbaa !29
  %t10 = icmp ne ptr %t9, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load ptr, ptr %l14, !tbaa !29
  %t13 = load i64, ptr %t12, !range !{i64 0, i64 18}
  %t15 = icmp eq i64 %t13, 9
  store i1 %t15, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l15, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t25, i32 0, i32 2
  %t27 = load i32, ptr %t26, !range !{i32 0, i32 52}
  store i32 %t27, ptr %l4
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t31, i32 0, i32 4
  %t33 = load { i64, ptr }, ptr %t32
  store { i64, ptr } %t33, ptr %l5, !tbaa !27
  br label %bb6
bb5:
  br label %bb42
bb6:
  %t35 = load i32, ptr %l4, !range !{i32 0, i32 52}
  %t37 = trunc i64 20 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb9
bb8:
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t46 = icmp ne i64 %t44, 1
  store i1 %t46, ptr %l27, !tbaa !21
  br label %bb9
bb9:
  %t48 = load i1, ptr %l27, !tbaa !21
  br i1 %t48, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l31, !tbaa !21
  br label %bb14
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 0
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = getelementptr %"compiler/generic:Program", ptr %t52, i32 0, i32 2
  store ptr %t54, ptr %l34, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 2
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t60, i32 %t61)
  store i32 %t64, ptr %l39
  br label %bb12
bb12:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load i32, ptr %l39, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t67, ptr %l40
  br label %bb13
bb13:
  %t68 = load i32, ptr %l40, !range !{i32 0, i32 33}
  %t70 = trunc i64 18 to i32
  %t71 = icmp eq i32 %t68, %t70
  %t73 = xor i1 %t71, true
  store i1 %t73, ptr %l31, !tbaa !21
  br label %bb14
bb14:
  %t75 = load i1, ptr %l31, !tbaa !21
  br i1 %t75, label %bb15, label %bb16
bb15:
  store ptr null, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t78, ptr %l46, !tbaa !27
  %t79 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 0
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t86 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v2, ptr %v2, ptr %t77, ptr %t82)
  store ptr %t86, ptr %l49
  br label %bb18
bb18:
  %t87 = load ptr, ptr %l49, !tbaa !29
  store ptr %t87, ptr %l6, !tbaa !29
  %t88 = load ptr, ptr %l6, !tbaa !29
  store ptr %t88, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t89 = load ptr, ptr %l50, !tbaa !29
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l50, !tbaa !29
  %t93 = load i64, ptr %t92, !range !{i64 0, i64 18}
  %t95 = icmp eq i64 %t93, 2
  store i1 %t95, ptr %l51, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l51, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l6, !tbaa !29
  %t99 = getelementptr { i64, [5 x i64] }, ptr %t97, i32 0, i32 1
  %t100 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t99, i32 0, i32 1
  %t101 = load i32, ptr %t100
  store i32 %t101, ptr %l7, !tbaa !23
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t105, i32 0, i32 2
  %t107 = load ptr, ptr %t106
  store ptr %t107, ptr %l8, !tbaa !29
  br label %bb23
bb22:
  br label %bb36
bb23:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = getelementptr %"compiler/generic:Program", ptr %t112, i32 0, i32 2
  %t115 = load i32, ptr %l7, !tbaa !23
  %t118 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t114, i32 %t115)
  store i32 %t118, ptr %l62
  br label %bb24
bb24:
  %t119 = load i32, ptr %l62, !range !{i32 0, i32 33}
  store i32 %t119, ptr %l9
  %t120 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t122 = trunc i64 19 to i32
  %t123 = icmp eq i32 %t120, %t122
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb25, label %bb26
bb25:
  %t127 = load i32, ptr %l9, !range !{i32 0, i32 33}
  %t129 = trunc i64 18 to i32
  %t130 = icmp eq i32 %t127, %t129
  %t132 = xor i1 %t130, true
  store i1 %t132, ptr %l66, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb27
bb27:
  %t134 = load i1, ptr %l66, !tbaa !21
  br i1 %t134, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb32
bb29:
  %t135 = load ptr, ptr %l8, !tbaa !29
  store ptr %t135, ptr %l71, !tbaa !29
  store i1 false, ptr %l72, !tbaa !21
  %t136 = load ptr, ptr %l71, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb30, label %bb31
bb30:
  %t139 = load ptr, ptr %l71, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 8}
  %t142 = icmp eq i64 %t140, 6
  store i1 %t142, ptr %l72, !tbaa !21
  br label %bb31
bb31:
  %t143 = load i1, ptr %l72, !tbaa !21
  store i1 %t143, ptr %l70, !tbaa !21
  br label %bb32
bb32:
  %t144 = load i1, ptr %l70, !tbaa !21
  br i1 %t144, label %bb33, label %bb34
bb33:
  store ptr null, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t146 = load ptr, ptr %l8, !tbaa !29
  store ptr %t146, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_24c83be0c0349755_6420fa2832beca31)
  unreachable
bb41:
  br label %bb47
bb42:
  br i1 true, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_e0078e28944a7d64_c2d2e4e393ff4620)
  unreachable
bb47:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegions(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca i64
  %l34 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l62 = alloca i64
  %l66 = alloca i64
  %l69 = alloca i64
  %l90 = alloca i64
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca ptr
  %l100 = alloca i1
  %l101 = alloca i1
  %l102 = alloca ptr
  %l111 = alloca %"compiler/typed:Local"
  %l113 = alloca i1
  %l120 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l124 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l125 = alloca i32
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l130 = alloca i64
  %l132 = alloca i64
  %l137 = alloca i64
  %l140 = alloca i1
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 123
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H84f9774226d7b378ef632445c463492d(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 159
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = icmp eq ptr %t8, null
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 159
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_8eda7b5b464b0834_f721fd871dc79a60)
  unreachable
bb6:
  br label %bb7
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 159
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Versions", ptr %t24, i32 0, i32 3
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l34
  br label %bb8
bb8:
  %t29 = load i64, ptr %l34, !tbaa !24
  %t30 = add i64 %t29, 1
  store i64 %t30, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp sgt i64 %t32, %t33
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = icmp sgt i64 %t38, 0
  br i1 %t40, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb14
bb11:
  %t42 = load i64, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l2, !tbaa !24
  %t46 = sub i64 %t42, %t43
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = add i64 %t46, %t47
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = sdiv i64 %t52, %t53
  store i64 %t56, ptr %l42, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb13
bb13:
  %t58 = load i64, ptr %l42, !tbaa !24
  store i64 %t58, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t59 = load i64, ptr %l39, !tbaa !24
  store i64 %t59, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = icmp slt i64 %t60, %t61
  %t66 = xor i1 %t64, true
  br i1 %t66, label %bb16, label %bb17
bb16:
  br label %bb76
bb17:
  br label %bb18
bb18:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l6, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = mul i64 %t69, %t70
  %t76 = add i64 %t68, %t73
  store i64 %t76, ptr %l7, !tbaa !24
  store i1 false, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l1, !tbaa !29
  %t80 = getelementptr %"compiler/typed:Versions", ptr %t78, i32 0, i32 3
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l62
  br label %bb19
bb19:
  %t83 = load i64, ptr %l62, !tbaa !24
  store i64 %t83, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t84 = load i64, ptr %l10, !tbaa !24
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = icmp sgt i64 %t84, %t85
  br i1 %t88, label %bb20, label %bb21
bb20:
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp sgt i64 %t90, 0
  br i1 %t92, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l66, !tbaa !24
  br label %bb25
bb22:
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  %t98 = sub i64 %t94, %t95
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = add i64 %t98, %t99
  %t104 = sub i64 %t102, 1
  %t105 = load i64, ptr %l11, !tbaa !24
  %t108 = sdiv i64 %t104, %t105
  store i64 %t108, ptr %l69, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb24
bb24:
  %t110 = load i64, ptr %l69, !tbaa !24
  store i64 %t110, ptr %l66, !tbaa !24
  br label %bb25
bb25:
  %t111 = load i64, ptr %l66, !tbaa !24
  store i64 %t111, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t112 = load i64, ptr %l13, !tbaa !24
  %t113 = load i64, ptr %l12, !tbaa !24
  %t116 = icmp slt i64 %t112, %t113
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s5)
  br label %bb71
bb28:
  br label %bb29
bb29:
  %t120 = load i64, ptr %l9, !tbaa !24
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l11, !tbaa !24
  %t125 = mul i64 %t121, %t122
  %t128 = add i64 %t120, %t125
  store i64 %t128, ptr %l14, !tbaa !24
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Versions", ptr %t130, i32 0, i32 3
  %t133 = load i64, ptr %l14, !tbaa !24
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t132, i64 %t133)
  store i64 %t136, ptr %l90
  br label %bb30
bb30:
  %t137 = load i64, ptr %l90, !tbaa !24
  store i64 %t137, ptr %l15, !tbaa !24
  %t138 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l91
  br label %bb31
bb31:
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l16
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr %"compiler/typed:Versions", ptr %t140, i32 0, i32 6
  %t143 = load i64, ptr %l14, !tbaa !24
  %t146 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v0, ptr %t142, i64 %t143)
  store ptr %t146, ptr %l95
  br label %bb32
bb32:
  %t147 = load ptr, ptr %l95, !tbaa !29
  store ptr %t147, ptr %l17, !tbaa !29
  %t148 = load ptr, ptr %l17, !tbaa !29
  %t150 = icmp eq ptr %t148, null
  br i1 %t150, label %bb33, label %bb34
bb33:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i64, ptr %l15, !tbaa !24
  %t156 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t152, i64 %t153)
  store i1 %t156, ptr %l100
  br label %bb35
bb34:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v0, ptr %s5, ptr %t157, ptr %t158, ptr %l16)
  br label %bb48
bb35:
  %t163 = load i1, ptr %l100, !tbaa !21
  br i1 %t163, label %bb36, label %bb37
bb36:
  %t164 = load ptr, ptr %l0, !tbaa !29
  store ptr %t164, ptr %l102, !tbaa !29
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/scope:Scoper", ptr %t165, i32 0, i32 26
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = icmp eq ptr %t168, null
  br i1 %t170, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb43
bb38:
  call void @__olang_check_failed(ptr @olang_loc_c1f751d19da60dc3_9664dc07dd21977f)
  unreachable
bb39:
  br label %bb40
bb40:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/scope:Scoper", ptr %t172, i32 0, i32 26
  %t175 = load ptr, ptr %t174, !tbaa !29
  %t178 = getelementptr %"compiler/typed:Body", ptr %t175, i32 0, i32 7
  %t179 = load i64, ptr %l15, !tbaa !24
  %t182 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t178, i64 %t179)
  store %"compiler/typed:Local" %t182, ptr %l111
  br label %bb41
bb41:
  %t183 = getelementptr %"compiler/typed:Local", ptr %l111, i32 0, i32 2
  %t184 = load i32, ptr %t183, !tbaa !23
  %t185 = load ptr, ptr %l102, !tbaa !29
  %t187 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t185, i32 %t184)
  store i1 %t187, ptr %l113
  br label %bb42
bb42:
  %t188 = load i1, ptr %l113, !tbaa !21
  store i1 %t188, ptr %l101, !tbaa !21
  br label %bb43
bb43:
  %t189 = load i1, ptr %l101, !tbaa !21
  br i1 %t189, label %bb44, label %bb45
bb44:
  %t190 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s5, ptr %l16, i64 %t190)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb49
bb48:
  br label %bb49
bb49:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/scope:Scoper", ptr %t193, i32 0, i32 123
  %t196 = load i64, ptr %l15, !tbaa !24
  %t199 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v0, ptr %t195, i64 %t196)
  %t200 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t199, 1
  %t201 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t199, 0
  store i32 %t201, ptr %l125
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb51, label %ok.203, !prof !99
ok.203:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t200, ptr %l124
  br label %bb50
bb50:
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s5, ptr %l124)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l127
  br label %bb53
bb51:
  br label %bb52
bb52:
  %t206 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t206, ptr %l128
  br label %bb54
bb53:
  %t207 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t207, ptr %l120
  br label %bb55
bb54:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l120
  br label %bb55
bb55:
  %t209 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t209, ptr %l18
  store ptr %l16, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb56
bb56:
  %t211 = load i64, ptr %l20, !tbaa !24
  store i64 %t211, ptr %l130, !tbaa !24
  %t212 = load ptr, ptr %l19, !tbaa !29
  %t214 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s5, ptr %t212)
  store i64 %t214, ptr %l132
  br label %bb57
bb57:
  %t215 = load i64, ptr %l130, !tbaa !24
  %t216 = load i64, ptr %l132, !tbaa !24
  %t217 = icmp slt i64 %t215, %t216
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb58, label %bb59
bb58:
  br label %bb68
bb59:
  br label %bb60
bb60:
  %t221 = load ptr, ptr %l19, !tbaa !29
  %t222 = load i64, ptr %l20, !tbaa !24
  %t225 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s5, ptr %t221, i64 %t222)
  store i64 %t225, ptr %l137
  br label %bb61
bb61:
  %t226 = load i64, ptr %l137, !tbaa !24
  store i64 %t226, ptr %l21, !tbaa !24
  %t227 = load i64, ptr %l21, !tbaa !24
  %t230 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s5, ptr %l18, i64 %t227)
  store i1 %t230, ptr %l140
  br label %bb62
bb62:
  %t231 = load i1, ptr %l140, !tbaa !21
  br i1 %t231, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  br label %bb65
bb65:
  %t232 = load i64, ptr %l21, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s5, ptr %l18, i64 %t232)
  br label %bb66
bb66:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb67
bb67:
  %t235 = load i64, ptr %l20, !tbaa !24
  %t237 = add i64 %t235, 1
  store i64 %t237, ptr %l20, !tbaa !24
  br label %bb56
bb68:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/scope:Scoper", ptr %t239, i32 0, i32 123
  %t242 = load i64, ptr %l15, !tbaa !24
  %t243 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %s5, ptr %t241, i64 %t242, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t243)
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s5)
  br label %bb70
bb70:
  %t247 = load i64, ptr %l13, !tbaa !24
  %t249 = add i64 %t247, 1
  store i64 %t249, ptr %l13, !tbaa !24
  br label %bb26
bb71:
  %t251 = load i1, ptr %l8, !tbaa !21
  %t253 = xor i1 %t251, true
  br i1 %t253, label %bb72, label %bb73
bb72:
  br label %bb76
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t255 = load i64, ptr %l6, !tbaa !24
  %t257 = add i64 %t255, 1
  store i64 %t257, ptr %l6, !tbaa !24
  br label %bb15
bb76:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l7 = alloca i32
  %l10 = alloca i1
  %l13 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca i32
  %l23 = alloca i1
  %l25 = alloca i1
  %l30 = alloca i32
  %l39 = alloca i32
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l7
  br label %bb1
bb1:
  %t11 = load i32, ptr %l7, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb2
bb2:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/generic:Program", ptr %t21, i32 0, i32 2
  store ptr %t23, ptr %l13, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l18
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t34 = load ptr, ptr %l13, !tbaa !29
  %t35 = load i32, ptr %l18, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t36, ptr %l19
  br label %bb6
bb6:
  %t37 = load i32, ptr %l19, !tbaa !23
  store i32 %t37, ptr %l2, !tbaa !23
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 7
  %t41 = load i32, ptr %l2, !tbaa !23
  %t44 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H58d460568d59c9f3a36f8d9425118a1c(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t44, ptr %l23
  br label %bb8
bb8:
  %t45 = load i1, ptr %l23, !tbaa !21
  %t46 = xor i1 %t45, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb12
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = getelementptr %"compiler/generic:Program", ptr %t51, i32 0, i32 2
  %t54 = load i32, ptr %l2, !tbaa !23
  %t57 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t53, i32 %t54)
  store i32 %t57, ptr %l30
  br label %bb11
bb11:
  %t58 = load i32, ptr %l30, !range !{i32 0, i32 33}
  %t60 = trunc i64 18 to i32
  %t61 = icmp eq i32 %t58, %t60
  %t63 = xor i1 %t61, true
  store i1 %t63, ptr %l25, !tbaa !21
  br label %bb12
bb12:
  %t65 = load i1, ptr %l25, !tbaa !21
  br i1 %t65, label %bb13, label %bb14
bb13:
  store i64 -1, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/generic:Program", ptr %t70, i32 0, i32 2
  %t73 = load i32, ptr %l2, !tbaa !23
  %t76 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t72, i32 %t73)
  store i32 %t76, ptr %l39
  br label %bb16
bb16:
  %t77 = load i32, ptr %l39, !tbaa !23
  %t78 = sext i32 %t77 to i64
  store i64 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedRoot(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/typed:Local"
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, [1 x i64] }
  %l15 = alloca i32
  %l16 = alloca %"compiler/source:Span"
  %lp17 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i64
  %l29 = alloca i64
  %l40 = alloca i32
  %l50 = alloca %"compiler/typed:Local"
  %l53 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l64 = alloca i32
  %l67 = alloca i1
  %l72 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca { i64, [1 x i64] }
  %l112 = alloca i1
  %l117 = alloca i64
  %l122 = alloca { i64, ptr }
  %l125 = alloca i1
  %l143 = alloca { i64, ptr }
  %l147 = alloca { i64, ptr }
  %rv = alloca ptr
  %t241 = alloca { i64, [4 x i64] }, align 8
  %t253 = alloca { i64, [5 x i64] }, align 8
  %t266 = alloca { i64, [4 x i64] }, align 8
  %t297 = alloca { i64, [4 x i64] }, align 8
  %t311 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = call i1 @compiler_2fscope_2eisCapCode(i64 %t1)
  store i1 %t3, ptr %l19
  br label %bb1
bb1:
  %t4 = load i1, ptr %l19, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb8
bb3:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l21, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 26
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_5f222bef9aa16676_4bf6c46847b9572)
  unreachable
bb5:
  br label %bb6
bb6:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 26
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 5
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l29
  br label %bb7
bb7:
  %t22 = load i64, ptr %l21, !tbaa !24
  %t23 = load i64, ptr %l29, !tbaa !24
  %t24 = icmp sge i64 %t22, %t23
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t26 = load i1, ptr %l20, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  store ptr null, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 26
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_750161614449eadd_660de062846d2c99)
  unreachable
bb13:
  br label %bb14
bb14:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 26
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 5
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t41, i64 %t42)
  store i32 %t45, ptr %l40
  br label %bb15
bb15:
  %t46 = load i32, ptr %l40, !tbaa !23
  %t47 = sext i32 %t46 to i64
  store i64 %t47, ptr %l3, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 26
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb16, label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8138290bc8857508_aa4fb7bb798d75e4)
  unreachable
bb17:
  br label %bb18
bb18:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 26
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t59, i32 0, i32 7
  %t63 = load i64, ptr %l3, !tbaa !24
  %t66 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t62, i64 %t63)
  store %"compiler/typed:Local" %t66, ptr %l50
  br label %bb19
bb19:
  %t67 = load %"compiler/typed:Local", ptr %l50
  store %"compiler/typed:Local" %t67, ptr %l4
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t70 = load i32, ptr %t69, !tbaa !23
  %t73 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t68, i32 %t70)
  store i1 %t73, ptr %l53
  br label %bb20
bb20:
  %t74 = load i1, ptr %l53, !tbaa !21
  %t75 = xor i1 %t74, true
  br i1 %t75, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l55, !tbaa !21
  br label %bb24
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l3, !tbaa !24
  %t81 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereassigned(ptr %v0, ptr %t77, i64 %t78)
  store i1 %t81, ptr %l58
  br label %bb23
bb23:
  %t82 = load i1, ptr %l58, !tbaa !21
  store i1 %t82, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t83 = load i1, ptr %l55, !tbaa !21
  br i1 %t83, label %bb25, label %bb26
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t95 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t90, i32 %t92)
  store i32 %t95, ptr %l64
  br label %bb28
bb28:
  %t96 = load i32, ptr %l64, !tbaa !23
  store i32 %t96, ptr %l5, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i32, ptr %l5, !tbaa !23
  %t101 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %t97, i32 %t98)
  store i1 %t101, ptr %l67
  br label %bb29
bb29:
  %t102 = load i1, ptr %l67, !tbaa !21
  %t103 = xor i1 %t102, true
  br i1 %t103, label %bb30, label %bb31
bb30:
  store ptr null, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 0
  %t109 = load ptr, ptr %t108, !tbaa !29
  %t111 = getelementptr %"compiler/generic:Program", ptr %t109, i32 0, i32 2
  store ptr %t111, ptr %l72, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 2
  %t118 = load i32, ptr %l5, !tbaa !23
  %t121 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t117, i32 %t118)
  store i32 %t121, ptr %l77
  br label %bb33
bb33:
  %t122 = load ptr, ptr %l72, !tbaa !29
  %t123 = load i32, ptr %l77, !tbaa !23
  %t124 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t122, i32 %t123)
  store { i64, ptr } %t124, ptr %l78
  br label %bb34
bb34:
  %t125 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t125, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l7, !tbaa !24
  %t134 = icmp sgt i64 %t130, %t131
  br i1 %t134, label %bb35, label %bb36
bb35:
  %t136 = load i64, ptr %l9, !tbaa !24
  %t138 = icmp sgt i64 %t136, 0
  br i1 %t138, label %bb37, label %bb38
bb36:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb40
bb37:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t141 = load i64, ptr %l7, !tbaa !24
  %t144 = sub i64 %t140, %t141
  %t145 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t144, %t145
  %t150 = sub i64 %t148, 1
  %t151 = load i64, ptr %l9, !tbaa !24
  %t154 = sdiv i64 %t150, %t151
  store i64 %t154, ptr %l87, !tbaa !24
  br label %bb39
bb38:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb39
bb39:
  %t156 = load i64, ptr %l87, !tbaa !24
  store i64 %t156, ptr %l84, !tbaa !24
  br label %bb40
bb40:
  %t157 = load i64, ptr %l84, !tbaa !24
  store i64 %t157, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb41
bb41:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t159 = load i64, ptr %l10, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb42, label %bb43
bb42:
  br label %bb58
bb43:
  br label %bb44
bb44:
  %t166 = load i64, ptr %l7, !tbaa !24
  %t167 = load i64, ptr %l11, !tbaa !24
  %t168 = load i64, ptr %l9, !tbaa !24
  %t171 = mul i64 %t167, %t168
  %t174 = add i64 %t166, %t171
  store i64 %t174, ptr %l12, !tbaa !24
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i32, ptr %l5, !tbaa !23
  %t178 = load i64, ptr %l12, !tbaa !24
  %t182 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %t176, i32 %t177, i64 %t178)
  store { i64, [1 x i64] } %t182, ptr %l108
  br label %bb45
bb45:
  %t183 = load { i64, [1 x i64] }, ptr %l108
  store { i64, [1 x i64] } %t183, ptr %l13
  %t184 = load { i64, [1 x i64] }, ptr %l13
  %t186 = extractvalue { i64, [1 x i64] } %t184, 0
  %t187 = icmp eq i64 %t186, 2
  %t189 = xor i1 %t187, true
  br i1 %t189, label %bb46, label %bb47
bb46:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb49
bb47:
  %t191 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t192 = getelementptr { i32 }, ptr %t191, i32 0, i32 0
  %t193 = load i32, ptr %t192
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i32, ptr %l5, !tbaa !23
  %t201 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %t195, i32 %t196, i32 %t193)
  store i64 %t201, ptr %l117
  br label %bb48
bb48:
  %t202 = load i64, ptr %l2, !tbaa !24
  %t203 = load i64, ptr %l117, !tbaa !24
  %t205 = icmp ne i64 %t203, %t202
  store i1 %t205, ptr %l112, !tbaa !21
  br label %bb49
bb49:
  %t207 = load i1, ptr %l112, !tbaa !21
  br i1 %t207, label %bb50, label %bb51
bb50:
  br label %bb57
bb51:
  br label %bb52
bb52:
  %t208 = getelementptr { i64, [1 x i64] }, ptr %l13, i32 0, i32 1
  %t209 = getelementptr { i32 }, ptr %t208, i32 0, i32 0
  %t210 = load i32, ptr %t209
  store i32 %t210, ptr %l15, !tbaa !23
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t213, ptr %l122, !tbaa !27
  %t214 = load i64, ptr %l12, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr i32, ptr %t217, i64 %t214
  %t219 = load i32, ptr %t218, !tbaa !33
  %t222 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t212, i32 %t219)
  store i1 %t222, ptr %l125
  br label %bb53
bb53:
  %t223 = load i1, ptr %l125, !tbaa !21
  %t224 = xor i1 %t223, true
  br i1 %t224, label %bb54, label %bb55
bb54:
  store ptr null, ptr %rv
  br label %ret
bb55:
  br label %bb56
bb56:
  %t227 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 1
  %t228 = load %"compiler/source:Span", ptr %t227
  store %"compiler/source:Span" %t228, ptr %l16
  %t230 = load %"compiler/source:Span", ptr %l16
  %t231 = load i32, ptr %l5, !tbaa !23
  %t232 = load %"compiler/source:Span", ptr %l16
  %t233 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t234 = load i32, ptr %t233, !tbaa !23
  %t235 = load %"compiler/source:Span", ptr %l16
  %t236 = getelementptr %"compiler/typed:Local", ptr %l4, i32 0, i32 2
  %t237 = load i32, ptr %t236, !tbaa !23
  %t238 = load i64, ptr %l3, !tbaa !24
  %t240 = trunc i64 %t238 to i32
  store { i64, [4 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 0
  store i64 0, ptr %t242
  %t244 = insertvalue { %"compiler/source:Span", i32, i32 } undef, %"compiler/source:Span" %t235, 0
  %t246 = insertvalue { %"compiler/source:Span", i32, i32 } %t244, i32 %t237, 1
  %t248 = insertvalue { %"compiler/source:Span", i32, i32 } %t246, i32 %t240, 2
  %t249 = getelementptr { i64, [4 x i64] }, ptr %t241, i32 0, i32 1
  store { %"compiler/source:Span", i32, i32 } %t248, ptr %t249
  %t250 = load { i64, [4 x i64] }, ptr %t241
  %t252 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t250, ptr %t252
  store { i64, [5 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [5 x i64] }, ptr %t253, i32 0, i32 0
  store i64 2, ptr %t254
  %t256 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t232, 0
  %t258 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t256, i32 %t234, 1
  %t260 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t258, ptr %t252, 2
  %t261 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t260, i32 -1, 3
  %t262 = getelementptr { i64, [5 x i64] }, ptr %t253, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t261, ptr %t262
  %t263 = load { i64, [5 x i64] }, ptr %t253
  %t265 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t263, ptr %t265
  store { i64, [4 x i64] } zeroinitializer, ptr %t266
  %t267 = getelementptr { i64, [4 x i64] }, ptr %t266, i32 0, i32 0
  store i64 2, ptr %t267
  %t269 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t230, 0
  %t271 = insertvalue { %"compiler/source:Span", i32, ptr } %t269, i32 %t231, 1
  %t273 = insertvalue { %"compiler/source:Span", i32, ptr } %t271, ptr %t265, 2
  %t274 = getelementptr { i64, [4 x i64] }, ptr %t266, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t273, ptr %t274
  %t275 = load { i64, [4 x i64] }, ptr %t266
  %t276 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t276, ptr %lp17
  %t278 = load ptr, ptr %lp17
  store { i64, [4 x i64] } %t275, ptr %t278
  %t279 = load %"compiler/source:Span", ptr %l16
  %t280 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t280, ptr %l143, !tbaa !27
  %t281 = load i64, ptr %l12, !tbaa !24
  %t283 = getelementptr { i64, ptr }, ptr %l143, i32 0, i32 1
  %t284 = load ptr, ptr %t283, !tbaa !27
  %t285 = getelementptr i32, ptr %t284, i64 %t281
  %t286 = load i32, ptr %t285, !tbaa !33
  %t287 = load %"compiler/source:Span", ptr %l16
  %t288 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t288, ptr %l147, !tbaa !27
  %t289 = load i64, ptr %l12, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr i32, ptr %t292, i64 %t289
  %t294 = load i32, ptr %t293, !tbaa !33
  %t295 = load ptr, ptr %lp17
  %t296 = load i64, ptr %l12, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t297
  %t298 = getelementptr { i64, [4 x i64] }, ptr %t297, i32 0, i32 0
  store i64 3, ptr %t298
  %t300 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } undef, %"compiler/source:Span" %t287, 0
  %t302 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t300, i32 %t294, 1
  %t304 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t302, ptr %t295, 2
  %t306 = insertvalue { %"compiler/source:Span", i32, ptr, i64 } %t304, i64 %t296, 3
  %t307 = getelementptr { i64, [4 x i64] }, ptr %t297, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i64 } %t306, ptr %t307
  %t308 = load { i64, [4 x i64] }, ptr %t297
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t308, ptr %t310
  store { i64, [5 x i64] } zeroinitializer, ptr %t311
  %t312 = getelementptr { i64, [5 x i64] }, ptr %t311, i32 0, i32 0
  store i64 2, ptr %t312
  %t314 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t279, 0
  %t316 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t314, i32 %t286, 1
  %t318 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t316, ptr %t310, 2
  %t319 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t318, i32 -1, 3
  %t320 = getelementptr { i64, [5 x i64] }, ptr %t311, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t319, ptr %t320
  %t321 = load { i64, [5 x i64] }, ptr %t311
  %t323 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t321, ptr %t323
  store ptr %t323, ptr %rv
  br label %ret
bb57:
  %t325 = load i64, ptr %l11, !tbaa !24
  %t327 = add i64 %t325, 1
  store i64 %t327, ptr %l11, !tbaa !24
  br label %bb41
bb58:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l8 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i1
  %l17 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca i1
  %l30 = alloca ptr
  %l35 = alloca i32
  %l36 = alloca i1
  %l41 = alloca ptr
  %l44 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l51 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l64 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca { i64, ptr }
  %l71 = alloca i1
  %l72 = alloca i1
  %l73 = alloca ptr
  %l76 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca { i64, ptr }
  %l83 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 0
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = getelementptr %"compiler/generic:Program", ptr %t15, i32 0, i32 2
  %t18 = load i32, ptr %l2, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l13
  br label %bb2
bb2:
  %t22 = load i32, ptr %l13, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l3
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t25 = trunc i64 20 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 0
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = getelementptr %"compiler/generic:Program", ptr %t32, i32 0, i32 2
  %t35 = load i32, ptr %l2, !tbaa !23
  %t38 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t34, i32 %t35)
  store i32 %t38, ptr %l22
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l17, !tbaa !29
  %t40 = load i32, ptr %l22, !tbaa !23
  %t41 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %t39, i32 %t40)
  store i1 %t41, ptr %l23
  br label %bb7
bb7:
  %t42 = load i1, ptr %l23, !tbaa !21
  store i1 %t42, ptr %l14, !tbaa !21
  br label %bb51
bb8:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t45 = trunc i64 29 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t50 = trunc i64 25 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb51
bb14:
  %t53 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t55 = trunc i64 19 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l30, !tbaa !29
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = getelementptr %"compiler/generic:Program", ptr %t62, i32 0, i32 2
  %t65 = load i32, ptr %l2, !tbaa !23
  %t68 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t64, i32 %t65)
  store i32 %t68, ptr %l35
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l30, !tbaa !29
  %t70 = load i32, ptr %l35, !tbaa !23
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edtorThroughRef(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t71, ptr %l36
  br label %bb19
bb19:
  %t72 = load i1, ptr %l36, !tbaa !21
  store i1 %t72, ptr %l14, !tbaa !21
  br label %bb51
bb20:
  %t73 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t75 = trunc i64 22 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  %t78 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t80 = trunc i64 23 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l41, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/scope:Scoper", ptr %t84, i32 0, i32 0
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t89 = getelementptr %"compiler/generic:Program", ptr %t87, i32 0, i32 2
  store ptr %t89, ptr %l44, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = getelementptr %"compiler/generic:Program", ptr %t93, i32 0, i32 2
  %t96 = load i32, ptr %l2, !tbaa !23
  %t99 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t95, i32 %t96)
  store i32 %t99, ptr %l49
  br label %bb26
bb26:
  %t100 = load ptr, ptr %l44, !tbaa !29
  %t101 = load i32, ptr %l49, !tbaa !23
  %t102 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t100, i32 %t101)
  store { i64, ptr } %t102, ptr %l50
  br label %bb27
bb27:
  %t103 = load ptr, ptr %l41, !tbaa !29
  %t104 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t105 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsReach(ptr %v0, ptr %v0, ptr %t103, { i64, ptr } %t104)
  store i1 %t105, ptr %l51
  br label %bb28
bb28:
  %t106 = load i1, ptr %l51, !tbaa !21
  store i1 %t106, ptr %l14, !tbaa !21
  br label %bb51
bb29:
  %t107 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t109 = trunc i64 18 to i32
  %t110 = icmp eq i32 %t107, %t109
  br i1 %t110, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb46
bb32:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 0
  %t115 = load ptr, ptr %t114, !tbaa !29
  %t117 = getelementptr %"compiler/generic:Program", ptr %t115, i32 0, i32 2
  %t118 = load i32, ptr %l2, !tbaa !23
  %t121 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t117, i32 %t118)
  store i1 %t121, ptr %l58
  br label %bb33
bb33:
  %t122 = load i1, ptr %l58, !tbaa !21
  %t123 = xor i1 %t122, true
  br i1 %t123, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb39
bb35:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l61, !tbaa !29
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/scope:Scoper", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/generic:Program", ptr %t129, i32 0, i32 2
  store ptr %t131, ptr %l64, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 0
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = getelementptr %"compiler/generic:Program", ptr %t135, i32 0, i32 2
  %t138 = load i32, ptr %l2, !tbaa !23
  %t141 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t137, i32 %t138)
  store i32 %t141, ptr %l69
  br label %bb36
bb36:
  %t142 = load ptr, ptr %l64, !tbaa !29
  %t143 = load i32, ptr %l69, !tbaa !23
  %t144 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t142, i32 %t143)
  store { i64, ptr } %t144, ptr %l70
  br label %bb37
bb37:
  %t145 = load ptr, ptr %l61, !tbaa !29
  %t146 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t147 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsReach(ptr %v0, ptr %v0, ptr %t145, { i64, ptr } %t146)
  store i1 %t147, ptr %l71
  br label %bb38
bb38:
  %t148 = load i1, ptr %l71, !tbaa !21
  store i1 %t148, ptr %l60, !tbaa !21
  br label %bb39
bb39:
  %t149 = load i1, ptr %l60, !tbaa !21
  br i1 %t149, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l72, !tbaa !21
  br label %bb45
bb41:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l73, !tbaa !29
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/scope:Scoper", ptr %t151, i32 0, i32 0
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = getelementptr %"compiler/generic:Program", ptr %t154, i32 0, i32 2
  store ptr %t156, ptr %l76, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/scope:Scoper", ptr %t157, i32 0, i32 0
  %t160 = load ptr, ptr %t159, !tbaa !29
  %t162 = getelementptr %"compiler/generic:Program", ptr %t160, i32 0, i32 2
  %t163 = load i32, ptr %l2, !tbaa !23
  %t166 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t162, i32 %t163)
  store i32 %t166, ptr %l81
  br label %bb42
bb42:
  %t167 = load ptr, ptr %l76, !tbaa !29
  %t168 = load i32, ptr %l81, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t167, i32 %t168)
  store { i64, ptr } %t169, ptr %l82
  br label %bb43
bb43:
  %t170 = load ptr, ptr %l73, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t172 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsReach(ptr %v0, ptr %v0, ptr %t170, { i64, ptr } %t171)
  store i1 %t172, ptr %l83
  br label %bb44
bb44:
  %t173 = load i1, ptr %l83, !tbaa !21
  store i1 %t173, ptr %l72, !tbaa !21
  br label %bb45
bb45:
  %t174 = load i1, ptr %l72, !tbaa !21
  store i1 %t174, ptr %l14, !tbaa !21
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_3492f037cbea8787_6357a327a0037b53)
  unreachable
bb51:
  %t175 = load i1, ptr %l14, !tbaa !21
  store i1 %t175, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitError(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l30 = alloca %"compiler/source:Span"
  %l34 = alloca i1
  %l38 = alloca i1
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l48 = alloca %"compiler/source:Span"
  %l49 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca i64
  %l58 = alloca { i64, [2 x i64] }
  %l59 = alloca i1
  %l61 = alloca i1
  %l62 = alloca ptr
  %l64 = alloca %"compiler/source:Span"
  %l66 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i1
  %l78 = alloca i1
  %l79 = alloca ptr
  %l81 = alloca i32
  %l82 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i1
  %l93 = alloca ptr
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l114 = alloca i1
  %l117 = alloca i1
  %l119 = alloca ptr
  %l122 = alloca %"compiler/source:Span"
  %l127 = alloca %"compiler/source:Span"
  %l129 = alloca i1
  %l134 = alloca i1
  %l136 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i1
  %l145 = alloca { i64, [2 x i64] }
  %l148 = alloca { i64, [2 x i64] }
  %l150 = alloca i1
  %l155 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l160 = alloca ptr
  %l163 = alloca %"compiler/source:Span"
  %l168 = alloca %"compiler/source:Span"
  %l170 = alloca i1
  %l172 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca %"compiler/diagmsg:Msg"
  %l175 = alloca %"compiler/diagmsg:Msg"
  %l176 = alloca i64
  %l178 = alloca i1
  %l180 = alloca i1
  %l183 = alloca i64
  %l185 = alloca ptr
  %l186 = alloca i64
  %l188 = alloca ptr
  %l191 = alloca i64
  %l193 = alloca ptr
  %l195 = alloca ptr
  %l198 = alloca %"compiler/source:Span"
  %l203 = alloca %"compiler/source:Span"
  %l206 = alloca i64
  %l214 = alloca i1
  %l218 = alloca ptr
  %l220 = alloca ptr
  %l221 = alloca i64
  %l224 = alloca i1
  %l233 = alloca %"compiler/typed:Local"
  %l236 = alloca i1
  %l237 = alloca ptr
  %l246 = alloca %"compiler/typed:Local"
  %l248 = alloca i1
  %l250 = alloca i1
  %l258 = alloca ptr
  %l267 = alloca %"compiler/typed:Local"
  %l269 = alloca { i64, ptr }
  %l270 = alloca ptr
  %l271 = alloca i64
  %l278 = alloca i64
  %l279 = alloca ptr
  %l288 = alloca %"compiler/typed:Local"
  %l291 = alloca %"compiler/source:Span"
  %l292 = alloca { i64, ptr }
  %l293 = alloca { i64, ptr }
  %l298 = alloca { ptr, ptr }
  %l307 = alloca %"compiler/typed:Local"
  %l309 = alloca { i64, ptr }
  %l312 = alloca %"compiler/diagmsg:Msg"
  %l315 = alloca i1
  %l322 = alloca i64
  %l325 = alloca ptr
  %l326 = alloca i64
  %l328 = alloca ptr
  %l329 = alloca i64
  %l333 = alloca ptr
  %l342 = alloca %"compiler/typed:Local"
  %l344 = alloca { i64, ptr }
  %l348 = alloca ptr
  %l349 = alloca ptr
  %l350 = alloca ptr
  %l351 = alloca i1
  %l360 = alloca i1
  %l363 = alloca ptr
  %l366 = alloca ptr
  %l367 = alloca i64
  %l374 = alloca i64
  %l378 = alloca %"compiler/source:Span"
  %l379 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s21 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 28
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
  store ptr %t8, ptr %l21, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l22, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 90
  %t13 = load i1, ptr %t12, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 91
  %t18 = load %"compiler/source:Span", ptr %t17
  store %"compiler/source:Span" %t18, ptr %l25
  br label %bb7
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t24 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  store %"compiler/source:Span" %t24, ptr %l30
  br label %bb6
bb6:
  %t25 = load %"compiler/source:Span", ptr %l30
  store %"compiler/source:Span" %t25, ptr %l25
  br label %bb7
bb7:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  %t30 = icmp eq i64 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb10
bb9:
  %t32 = load i64, ptr %l2, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2fscope_2eFitOwn, !tbaa !24
  %t36 = icmp eq i64 %t32, %t33
  store i1 %t36, ptr %l34, !tbaa !21
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load %"compiler/source:Span", ptr %l25
  %t41 = load i1, ptr %l34, !tbaa !21
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKept(ptr %v0, ptr %v1, ptr %t38, ptr %t39, %"compiler/source:Span" %t40, i1 %t41)
  store i1 %t42, ptr %l38
  br label %bb11
bb11:
  %t43 = load i1, ptr %l38, !tbaa !21
  br i1 %t43, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l39, !tbaa !29
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l40, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 90
  %t49 = load i1, ptr %t48, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/scope:Scoper", ptr %t51, i32 0, i32 91
  %t54 = load %"compiler/source:Span", ptr %t53
  store %"compiler/source:Span" %t54, ptr %l43
  br label %bb18
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t60 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t56, ptr %t57)
  store %"compiler/source:Span" %t60, ptr %l48
  br label %bb17
bb17:
  %t61 = load %"compiler/source:Span", ptr %l48
  store %"compiler/source:Span" %t61, ptr %l43
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l39, !tbaa !29
  %t63 = load ptr, ptr %l40, !tbaa !29
  %t64 = load %"compiler/source:Span", ptr %l43
  %t65 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartKept(ptr %v0, ptr %v1, ptr %t62, ptr %t63, %"compiler/source:Span" %t64)
  store i1 %t65, ptr %l49
  br label %bb19
bb19:
  %t66 = load i1, ptr %l49, !tbaa !21
  br i1 %t66, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br label %bb22
bb22:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %t67, i32 0, i32 226
  %t70 = load i1, ptr %t69, !tbaa !21
  br i1 %t70, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/scope:Scoper", ptr %t72, i32 0, i32 256
  store ptr %t74, ptr %l53, !tbaa !29
  %t75 = ptrtoint ptr %v0 to i64
  store i64 %t75, ptr %l54, !tbaa !24
  %t76 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t76, label %bb25, label %bb26
bb24:
  br label %bb31
bb25:
  %t78 = call ptr @__olang_region_make(ptr %v0)
  %t79 = ptrtoint ptr %t78 to i64
  store i64 %t79, ptr %l54, !tbaa !24
  br label %bb26
bb26:
  %t80 = load i64, ptr %l2, !tbaa !24
  store i64 %t80, ptr %l56, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 87
  %t84 = load { i64, [2 x i64] }, ptr %t83
  store { i64, [2 x i64] } %t84, ptr %l58
  %t85 = load i1, ptr %l3, !tbaa !21
  store i1 %t85, ptr %l59, !tbaa !21
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 88
  %t89 = load i1, ptr %t88, !tbaa !21
  store i1 %t89, ptr %l61, !tbaa !21
  %t90 = load ptr, ptr %l0, !tbaa !29
  store ptr %t90, ptr %l62, !tbaa !29
  %t91 = load ptr, ptr %l1, !tbaa !29
  %t93 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t91)
  store %"compiler/source:Span" %t93, ptr %l64
  br label %bb27
bb27:
  %t94 = getelementptr %"compiler/source:Span", ptr %l64, i32 0, i32 0
  %t95 = load i32, ptr %t94, !tbaa !23
  %t96 = load ptr, ptr %l62, !tbaa !29
  %t98 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %s4, ptr %t96, i32 %t95)
  store { i64, ptr } %t98, ptr %l66
  br label %bb28
bb28:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t99 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t99, i64 %t100)
  %t101 = load i64, ptr %l56, !tbaa !24
  %t102 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t103 = call i64 @__olang_fmt_i64(ptr %t102, i64 %t101)
  call void @__olang_sb_add(ptr %s5, i64 %t103)
  %t104 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t105 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t104, i64 %t105)
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s5, ptr %l58, i64 0)
  br label %bb29
bb29:
  %t107 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t107, i64 %t108)
  %t109 = load i1, ptr %l59, !tbaa !21
  %t110 = select i1 %t109, ptr @.c3, ptr @.c4
  %t111 = select i1 %t109, i64 4, i64 5
  call void @__olang_sb_put(ptr %s5, ptr %t110, i64 %t111)
  %t112 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t112, i64 %t113)
  %t114 = load i1, ptr %l61, !tbaa !21
  %t115 = select i1 %t114, ptr @.c3, ptr @.c4
  %t116 = select i1 %t114, i64 4, i64 5
  call void @__olang_sb_put(ptr %s5, ptr %t115, i64 %t116)
  %t117 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t118 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t117, i64 %t118)
  %t119 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = extractvalue { i64, ptr } %t119, 0
  call void @__olang_sb_put(ptr %s5, ptr %t120, i64 %t121)
  %t122 = load ptr, ptr %s5
  %t123 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t124 = load i64, ptr %t123
  %t125 = load i64, ptr %l54
  %t126 = inttoptr i64 %t125 to ptr
  %t127 = call ptr @__olang_scope_alloc(ptr %t126, i64 %t124)
  call void @olang_textcopy(ptr %t127, ptr %t122, i64 %t124)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l68, !tbaa !27
  %t130 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t131 = load ptr, ptr %t130
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %sbgrew.133, label %sbdone.134
sbgrew.133:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.134
sbdone.134:
  %t135 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t136 = load i64, ptr %l54
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = extractvalue { i64, ptr } %t135, 0
  %t139 = extractvalue { i64, ptr } %t135, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  %t144 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t144, { i64, ptr } %t143)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb31
bb31:
  %t146 = load i64, ptr %l2, !tbaa !24
  %t147 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  %t150 = icmp eq i64 %t146, %t147
  br i1 %t150, label %bb32, label %bb33
bb32:
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l74, !tbaa !29
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t153)
  store i32 %t155, ptr %l76
  br label %bb34
bb33:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb41
bb34:
  %t156 = load ptr, ptr %l74, !tbaa !29
  %t157 = load i32, ptr %l76, !tbaa !23
  %t158 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t156, i32 %t157)
  store i1 %t158, ptr %l77
  br label %bb35
bb35:
  %t159 = load i1, ptr %l77, !tbaa !21
  br i1 %t159, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb40
bb37:
  %t160 = load ptr, ptr %l0, !tbaa !29
  store ptr %t160, ptr %l79, !tbaa !29
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t161)
  store i32 %t163, ptr %l81
  br label %bb38
bb38:
  %t164 = load ptr, ptr %l79, !tbaa !29
  %t165 = load i32, ptr %l81, !tbaa !23
  %t166 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t164, i32 %t165)
  store i1 %t166, ptr %l82
  br label %bb39
bb39:
  %t167 = load i1, ptr %l82, !tbaa !21
  store i1 %t167, ptr %l78, !tbaa !21
  br label %bb40
bb40:
  %t168 = load i1, ptr %l78, !tbaa !21
  store i1 %t168, ptr %l73, !tbaa !21
  br label %bb41
bb41:
  %t169 = load i1, ptr %l73, !tbaa !21
  br i1 %t169, label %bb42, label %bb43
bb42:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  %t174 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapsDiffer(ptr %v0, ptr %v1, ptr %t170, ptr %t171)
  store i1 %t174, ptr %l86
  br label %bb44
bb43:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb45
bb44:
  %t175 = load i1, ptr %l86, !tbaa !21
  %t176 = xor i1 %t175, true
  store i1 %t176, ptr %l83, !tbaa !21
  br label %bb45
bb45:
  %t178 = load i1, ptr %l83, !tbaa !21
  br i1 %t178, label %bb46, label %bb47
bb46:
  %t179 = load i64, ptr @G_2ecompiler_2fscope_2eFitOwn, !tbaa !24
  store i64 %t179, ptr %l2, !tbaa !24
  br label %bb48
bb47:
  br label %bb48
bb48:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/scope:Scoper", ptr %t181, i32 0, i32 89
  store i1 false, ptr %t183, !tbaa !21
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t189 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t184, ptr %t185)
  store ptr %t189, ptr %l93
  br label %bb49
bb49:
  %t190 = load ptr, ptr %l93, !tbaa !29
  store ptr %t190, ptr %l4, !tbaa !29
  %t191 = load ptr, ptr %l4, !tbaa !29
  store ptr %t191, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t192 = load ptr, ptr %l94, !tbaa !29
  %t193 = icmp ne ptr %t192, null
  br i1 %t193, label %bb50, label %bb51
bb50:
  %t195 = load ptr, ptr %l94, !tbaa !29
  %t196 = load i64, ptr %t195, !range !{i64 0, i64 18}
  %t198 = icmp eq i64 %t196, 2
  store i1 %t198, ptr %l95, !tbaa !21
  br label %bb51
bb51:
  %t199 = load i1, ptr %l95, !tbaa !21
  br i1 %t199, label %bb52, label %bb53
bb52:
  %t200 = load ptr, ptr %l4, !tbaa !29
  %t202 = getelementptr { i64, [5 x i64] }, ptr %t200, i32 0, i32 1
  %t203 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t202, i32 0, i32 2
  %t204 = load ptr, ptr %t203
  store ptr %t204, ptr %l5, !tbaa !29
  br label %bb58
bb53:
  %t206 = load ptr, ptr %l4, !tbaa !29
  store ptr %t206, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t207 = load ptr, ptr %l100, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb54, label %bb55
bb54:
  %t210 = load ptr, ptr %l100, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 18}
  %t213 = icmp eq i64 %t211, 3
  store i1 %t213, ptr %l101, !tbaa !21
  br label %bb55
bb55:
  %t214 = load i1, ptr %l101, !tbaa !21
  br i1 %t214, label %bb56, label %bb57
bb56:
  %t215 = load ptr, ptr %l4, !tbaa !29
  %t217 = getelementptr { i64, [5 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t217, i32 0, i32 2
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l5, !tbaa !29
  br label %bb58
bb57:
  br label %bb70
bb58:
  %t221 = load ptr, ptr %l5, !tbaa !29
  store ptr %t221, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t222 = load ptr, ptr %l106, !tbaa !29
  %t223 = icmp ne ptr %t222, null
  br i1 %t223, label %bb59, label %bb60
bb59:
  %t225 = load ptr, ptr %l106, !tbaa !29
  %t226 = load i64, ptr %t225, !range !{i64 0, i64 8}
  %t228 = icmp eq i64 %t226, 0
  store i1 %t228, ptr %l107, !tbaa !21
  br label %bb60
bb60:
  %t229 = load i1, ptr %l107, !tbaa !21
  br i1 %t229, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb64
bb63:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/scope:Scoper", ptr %t230, i32 0, i32 89
  store i1 true, ptr %t232, !tbaa !21
  br label %bb69
bb64:
  br i1 true, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb69
bb68:
  call void @__olang_check_failed(ptr @olang_loc_cd338417bf9b4adb_b24d723c852a352f)
  unreachable
bb69:
  br label %bb75
bb70:
  br i1 true, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb75
bb74:
  call void @__olang_check_failed(ptr @olang_loc_d3b44bae2eeaabda_3c9b483dafe8946e)
  unreachable
bb75:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/scope:Scoper", ptr %t233, i32 0, i32 87
  %t236 = load { i64, [2 x i64] }, ptr %t235
  store { i64, [2 x i64] } %t236, ptr %l6
  %t238 = load i1, ptr %l3, !tbaa !21
  br i1 %t238, label %bb76, label %bb77
bb76:
  %t240 = load { i64, [2 x i64] }, ptr %l6
  %t242 = extractvalue { i64, [2 x i64] } %t240, 0
  %t243 = icmp eq i64 %t242, 5
  store i1 %t243, ptr %l114, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb78
bb78:
  %t245 = load i1, ptr %l114, !tbaa !21
  br i1 %t245, label %bb79, label %bb80
bb79:
  %t246 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t247 = getelementptr { i64 }, ptr %t246, i32 0, i32 0
  %t248 = load i64, ptr %t247
  store i64 %t248, ptr %l7, !tbaa !24
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l119, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/scope:Scoper", ptr %t251, i32 0, i32 90
  %t254 = load i1, ptr %t253, !tbaa !21
  br i1 %t254, label %bb81, label %bb82
bb80:
  store i1 false, ptr %l117, !tbaa !21
  br label %bb86
bb81:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t256, i32 0, i32 91
  %t259 = load %"compiler/source:Span", ptr %t258
  store %"compiler/source:Span" %t259, ptr %l122
  br label %bb84
bb82:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load ptr, ptr %l1, !tbaa !29
  %t265 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t261, ptr %t262)
  store %"compiler/source:Span" %t265, ptr %l127
  br label %bb83
bb83:
  %t266 = load %"compiler/source:Span", ptr %l127
  store %"compiler/source:Span" %t266, ptr %l122
  br label %bb84
bb84:
  %t267 = load i64, ptr %l7, !tbaa !24
  %t268 = load ptr, ptr %l119, !tbaa !29
  %t269 = load %"compiler/source:Span", ptr %l122
  %t271 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %t268, %"compiler/source:Span" %t269, i64 %t267)
  store i1 %t271, ptr %l129
  br label %bb85
bb85:
  %t272 = load i1, ptr %l129, !tbaa !21
  store i1 %t272, ptr %l117, !tbaa !21
  br label %bb86
bb86:
  %t273 = load i1, ptr %l117, !tbaa !21
  br i1 %t273, label %bb87, label %bb88
bb87:
  %t274 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t275 = getelementptr { i64 }, ptr %t274, i32 0, i32 0
  %t276 = load i64, ptr %t275
  store i64 %t276, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb88:
  br label %bb89
bb89:
  %t278 = load i64, ptr %l2, !tbaa !24
  %t279 = load i64, ptr @G_2ecompiler_2fscope_2eFitField, !tbaa !24
  %t282 = icmp eq i64 %t278, %t279
  br i1 %t282, label %bb90, label %bb91
bb90:
  %t284 = load i1, ptr %l3, !tbaa !21
  store i1 %t284, ptr %l134, !tbaa !21
  br label %bb92
bb91:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb92
bb92:
  %t286 = load i1, ptr %l134, !tbaa !21
  br i1 %t286, label %bb93, label %bb94
bb93:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t289 = getelementptr %"compiler/scope:Scoper", ptr %t287, i32 0, i32 125
  %t290 = load i64, ptr %t289, !tbaa !24
  %t292 = icmp eq i64 %t290, 0
  store i1 %t292, ptr %l136, !tbaa !21
  br label %bb95
bb94:
  store i1 false, ptr %l136, !tbaa !21
  br label %bb95
bb95:
  %t294 = load i1, ptr %l136, !tbaa !21
  br i1 %t294, label %bb96, label %bb97
bb96:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/scope:Scoper", ptr %t295, i32 0, i32 83
  %t298 = load i1, ptr %t297, !tbaa !21
  br i1 %t298, label %bb98, label %bb99
bb97:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb102
bb98:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/scope:Scoper", ptr %t300, i32 0, i32 87
  %t303 = load { i64, [2 x i64] }, ptr %t302
  store { i64, [2 x i64] } %t303, ptr %l145
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %t304, i32 0, i32 85
  %t307 = load { i64, [2 x i64] }, ptr %t306
  store { i64, [2 x i64] } %t307, ptr %l148
  %t310 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l145, ptr %l148)
  store i1 %t310, ptr %l150
  br label %bb100
bb99:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb101
bb100:
  %t311 = load i1, ptr %l150, !tbaa !21
  store i1 %t311, ptr %l143, !tbaa !21
  br label %bb101
bb101:
  %t312 = load i1, ptr %l143, !tbaa !21
  %t313 = xor i1 %t312, true
  store i1 %t313, ptr %l140, !tbaa !21
  br label %bb102
bb102:
  %t315 = load i1, ptr %l140, !tbaa !21
  br i1 %t315, label %bb103, label %bb104
bb103:
  store %olang.scope zeroinitializer, ptr %s12
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/scope:Scoper", ptr %t316, i32 0, i32 88
  %t319 = load i1, ptr %t318, !tbaa !21
  %t321 = xor i1 %t319, true
  br i1 %t321, label %bb105, label %bb106
bb104:
  br label %bb131
bb105:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load ptr, ptr %l1, !tbaa !29
  %t327 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueLocalName(ptr %v0, ptr %v1, ptr %s12, ptr %t323, ptr %t324)
  store { i64, ptr } %t327, ptr %l158
  br label %bb107
bb106:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l155, !tbaa !27
  br label %bb108
bb107:
  %t328 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 0
  %t330 = extractvalue { i64, ptr } %t328, 1
  %t331 = mul i64 %t329, 1
  %t332 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t331)
  call void @llvm.memcpy.p0.p0.i64(ptr %t332, ptr %t330, i64 %t331, i1 false)
  %t333 = insertvalue { i64, ptr } undef, i64 %t329, 0
  %t334 = insertvalue { i64, ptr } %t333, ptr %t332, 1
  store { i64, ptr } %t334, ptr %l155, !tbaa !27
  br label %bb108
bb108:
  %t336 = load { i64, ptr }, ptr %l155, !tbaa !27
  store { i64, ptr } %t336, ptr %l9, !tbaa !27
  %t337 = load ptr, ptr %l0, !tbaa !29
  store ptr %t337, ptr %l160, !tbaa !29
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/scope:Scoper", ptr %t338, i32 0, i32 90
  %t341 = load i1, ptr %t340, !tbaa !21
  br i1 %t341, label %bb109, label %bb110
bb109:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/scope:Scoper", ptr %t343, i32 0, i32 91
  %t346 = load %"compiler/source:Span", ptr %t345
  store %"compiler/source:Span" %t346, ptr %l163
  br label %bb112
bb110:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load ptr, ptr %l1, !tbaa !29
  %t352 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t348, ptr %t349)
  store %"compiler/source:Span" %t352, ptr %l168
  br label %bb111
bb111:
  %t353 = load %"compiler/source:Span", ptr %l168
  store %"compiler/source:Span" %t353, ptr %l163
  br label %bb112
bb112:
  %t354 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t356 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t354, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t356, ptr %l170
  br label %bb113
bb113:
  %t357 = load i1, ptr %l170, !tbaa !21
  %t358 = xor i1 %t357, true
  br i1 %t358, label %bb114, label %bb115
bb114:
  %t360 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t362 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowedLocal(ptr %s12, ptr %s12, { i64, ptr } %t360)
  store %"compiler/diagmsg:Msg" %t362, ptr %l174
  br label %bb116
bb115:
  %t363 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %s12)
  store %"compiler/diagmsg:Msg" %t363, ptr %l175
  br label %bb117
bb116:
  %t364 = load %"compiler/diagmsg:Msg", ptr %l174
  store %"compiler/diagmsg:Msg" %t364, ptr %l172
  br label %bb118
bb117:
  %t365 = load %"compiler/diagmsg:Msg", ptr %l175
  store %"compiler/diagmsg:Msg" %t365, ptr %l172
  br label %bb118
bb118:
  %t366 = load ptr, ptr %l160, !tbaa !29
  %t367 = load %"compiler/source:Span", ptr %l163
  %t368 = load %"compiler/diagmsg:Msg", ptr %l172
  %t369 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s12, ptr %t366, %"compiler/source:Span" %t367, %"compiler/diagmsg:Msg" %t368)
  store i64 %t369, ptr %l176
  br label %bb119
bb119:
  %t370 = load i64, ptr %l176, !tbaa !24
  store i64 %t370, ptr %l10, !tbaa !24
  %t371 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t373 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s12, ptr %s12, { i64, ptr } %t371, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t373, ptr %l178
  br label %bb120
bb120:
  %t374 = load i1, ptr %l178, !tbaa !21
  %t375 = xor i1 %t374, true
  br i1 %t375, label %bb121, label %bb122
bb121:
  %t377 = load ptr, ptr %l0, !tbaa !29
  %t379 = getelementptr %"compiler/scope:Scoper", ptr %t377, i32 0, i32 60
  %t381 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t379)
  store i64 %t381, ptr %l183
  br label %bb123
bb122:
  store i1 false, ptr %l180, !tbaa !21
  br label %bb124
bb123:
  %t382 = load i64, ptr %l183, !tbaa !24
  %t383 = icmp sgt i64 %t382, 0
  store i1 %t383, ptr %l180, !tbaa !21
  br label %bb124
bb124:
  %t385 = load i1, ptr %l180, !tbaa !21
  br i1 %t385, label %bb125, label %bb126
bb125:
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l185, !tbaa !29
  %t387 = load i64, ptr %l10, !tbaa !24
  store i64 %t387, ptr %l186, !tbaa !24
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/scope:Scoper", ptr %t388, i32 0, i32 60
  store ptr %t390, ptr %l188, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"compiler/scope:Scoper", ptr %t391, i32 0, i32 60
  %t395 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %t393)
  store i64 %t395, ptr %l191
  br label %bb127
bb126:
  br label %bb130
bb127:
  %t396 = load i64, ptr %l191, !tbaa !24
  %t397 = sub i64 %t396, 1
  %t398 = load ptr, ptr %l188, !tbaa !29
  %t400 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v0, ptr %t398, i64 %t397)
  store ptr %t400, ptr %l193
  br label %bb128
bb128:
  %t401 = load ptr, ptr %l1, !tbaa !29
  %t402 = load ptr, ptr %l185, !tbaa !29
  %t403 = load i64, ptr %l186, !tbaa !24
  %t404 = load ptr, ptr %l193, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRefill(ptr %v0, ptr %v0, ptr %v1, ptr %t402, i64 %t403, ptr %t404, ptr %t401)
  br label %bb129
bb129:
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb131:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l195, !tbaa !29
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = getelementptr %"compiler/scope:Scoper", ptr %t407, i32 0, i32 90
  %t410 = load i1, ptr %t409, !tbaa !21
  br i1 %t410, label %bb132, label %bb133
bb132:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/scope:Scoper", ptr %t412, i32 0, i32 91
  %t415 = load %"compiler/source:Span", ptr %t414
  store %"compiler/source:Span" %t415, ptr %l198
  br label %bb135
bb133:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t418 = load ptr, ptr %l1, !tbaa !29
  %t421 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t417, ptr %t418)
  store %"compiler/source:Span" %t421, ptr %l203
  br label %bb134
bb134:
  %t422 = load %"compiler/source:Span", ptr %l203
  store %"compiler/source:Span" %t422, ptr %l198
  br label %bb135
bb135:
  %t423 = load i64, ptr %l2, !tbaa !24
  %t424 = load i1, ptr %l3, !tbaa !21
  %t425 = load ptr, ptr %l195, !tbaa !29
  %t426 = load %"compiler/source:Span", ptr %l198
  %t429 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitErrorAt(ptr %v0, ptr %t425, %"compiler/source:Span" %t426, i64 %t423, i1 %t424)
  store i64 %t429, ptr %l206
  br label %bb136
bb136:
  %t430 = load i64, ptr %l206, !tbaa !24
  store i64 %t430, ptr %l11, !tbaa !24
  %t431 = load i64, ptr %l11, !tbaa !24
  %t433 = icmp sge i64 %t431, 0
  br i1 %t433, label %bb137, label %bb138
bb137:
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t436 = load i64, ptr %l11, !tbaa !24
  %t437 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteCondValue(ptr %v0, ptr %v1, ptr %t435, i64 %t436, ptr %t437)
  br label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb140
bb140:
  %t441 = load i64, ptr %l11, !tbaa !24
  %t443 = icmp sge i64 %t441, 0
  br i1 %t443, label %bb141, label %bb142
bb141:
  %t445 = load i64, ptr %l2, !tbaa !24
  %t446 = load i64, ptr @G_2ecompiler_2fscope_2eFitOwn, !tbaa !24
  %t449 = icmp eq i64 %t445, %t446
  store i1 %t449, ptr %l214, !tbaa !21
  br label %bb143
bb142:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb143
bb143:
  %t451 = load i1, ptr %l214, !tbaa !21
  br i1 %t451, label %bb144, label %bb145
bb144:
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l218, !tbaa !29
  %t453 = load ptr, ptr %l1, !tbaa !29
  %t455 = call ptr @compiler_2fscope_2eunPassed(ptr %v1, ptr %v1, ptr %t453)
  store ptr %t455, ptr %l220
  br label %bb146
bb145:
  br label %bb192
bb146:
  %t456 = load ptr, ptr %l218, !tbaa !29
  %t457 = load ptr, ptr %l220, !tbaa !29
  %t458 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %t456, ptr %t457)
  store i64 %t458, ptr %l221
  br label %bb147
bb147:
  %t459 = load i64, ptr %l221, !tbaa !24
  store i64 %t459, ptr %l12, !tbaa !24
  %t460 = load i64, ptr %l12, !tbaa !24
  %t462 = icmp sge i64 %t460, 0
  br i1 %t462, label %bb148, label %bb149
bb148:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %t464, i32 0, i32 26
  %t467 = load ptr, ptr %t466, !tbaa !29
  %t469 = icmp eq ptr %t467, null
  br i1 %t469, label %bb150, label %bb151
bb149:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb154
bb150:
  call void @__olang_check_failed(ptr @olang_loc_27f9f8003e66d4c2_25a72554bedf4966)
  unreachable
bb151:
  br label %bb152
bb152:
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t473 = getelementptr %"compiler/scope:Scoper", ptr %t471, i32 0, i32 26
  %t474 = load ptr, ptr %t473, !tbaa !29
  %t477 = getelementptr %"compiler/typed:Body", ptr %t474, i32 0, i32 7
  %t478 = load i64, ptr %l12, !tbaa !24
  %t481 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t477, i64 %t478)
  store %"compiler/typed:Local" %t481, ptr %l233
  br label %bb153
bb153:
  %t482 = getelementptr %"compiler/typed:Local", ptr %l233, i32 0, i32 4
  %t483 = load i32, ptr %t482, !range !{i32 0, i32 7}
  %t485 = trunc i64 0 to i32
  %t486 = icmp eq i32 %t483, %t485
  store i1 %t486, ptr %l224, !tbaa !21
  br label %bb154
bb154:
  %t488 = load i1, ptr %l224, !tbaa !21
  br i1 %t488, label %bb155, label %bb156
bb155:
  %t489 = load ptr, ptr %l0, !tbaa !29
  store ptr %t489, ptr %l237, !tbaa !29
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/scope:Scoper", ptr %t490, i32 0, i32 26
  %t493 = load ptr, ptr %t492, !tbaa !29
  %t495 = icmp eq ptr %t493, null
  br i1 %t495, label %bb157, label %bb158
bb156:
  store i1 false, ptr %l236, !tbaa !21
  br label %bb162
bb157:
  call void @__olang_check_failed(ptr @olang_loc_27f9f8003e66d4c2_25a72554bedf4966)
  unreachable
bb158:
  br label %bb159
bb159:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/scope:Scoper", ptr %t497, i32 0, i32 26
  %t500 = load ptr, ptr %t499, !tbaa !29
  %t503 = getelementptr %"compiler/typed:Body", ptr %t500, i32 0, i32 7
  %t504 = load i64, ptr %l12, !tbaa !24
  %t507 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t503, i64 %t504)
  store %"compiler/typed:Local" %t507, ptr %l246
  br label %bb160
bb160:
  %t508 = getelementptr %"compiler/typed:Local", ptr %l246, i32 0, i32 2
  %t509 = load i32, ptr %t508, !tbaa !23
  %t510 = load ptr, ptr %l237, !tbaa !29
  %t512 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t510, i32 %t509)
  store i1 %t512, ptr %l248
  br label %bb161
bb161:
  %t513 = load i1, ptr %l248, !tbaa !21
  %t514 = xor i1 %t513, true
  store i1 %t514, ptr %l236, !tbaa !21
  br label %bb162
bb162:
  %t516 = load i1, ptr %l236, !tbaa !21
  br i1 %t516, label %bb163, label %bb164
bb163:
  %t517 = load ptr, ptr %l0, !tbaa !29
  %t519 = getelementptr %"compiler/scope:Scoper", ptr %t517, i32 0, i32 5
  %t520 = load { ptr, ptr }, ptr %t519
  %t522 = extractvalue { ptr, ptr } %t520, 0
  %t523 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t524 = icmp eq ptr %t522, %t523
  %t525 = extractvalue { ptr, ptr } %t520, 1
  %t526 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t527 = icmp eq ptr %t525, %t526
  %t528 = and i1 %t524, %t527
  %t530 = xor i1 %t528, true
  store i1 %t530, ptr %l250, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l250, !tbaa !21
  br label %bb165
bb165:
  %t532 = load i1, ptr %l250, !tbaa !21
  br i1 %t532, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s16
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t535 = getelementptr %"compiler/scope:Scoper", ptr %t533, i32 0, i32 0
  %t536 = load ptr, ptr %t535, !tbaa !29
  %t538 = getelementptr %"compiler/generic:Program", ptr %t536, i32 0, i32 0
  %t539 = load ptr, ptr %t538, !tbaa !29
  %t541 = getelementptr %"compiler/load:Loader", ptr %t539, i32 0, i32 3
  %t542 = load ptr, ptr %t541, !tbaa !29
  store ptr %t542, ptr %l258, !tbaa !29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/scope:Scoper", ptr %t543, i32 0, i32 26
  %t546 = load ptr, ptr %t545, !tbaa !29
  %t548 = icmp eq ptr %t546, null
  br i1 %t548, label %bb168, label %bb169
bb167:
  br label %bb191
bb168:
  call void @__olang_check_failed(ptr @olang_loc_5600be0283c8c0a9_e199d532ae73234d)
  unreachable
bb169:
  br label %bb170
bb170:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/scope:Scoper", ptr %t550, i32 0, i32 26
  %t553 = load ptr, ptr %t552, !tbaa !29
  %t556 = getelementptr %"compiler/typed:Body", ptr %t553, i32 0, i32 7
  %t557 = load i64, ptr %l12, !tbaa !24
  %t560 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t556, i64 %t557)
  store %"compiler/typed:Local" %t560, ptr %l267
  br label %bb171
bb171:
  %t561 = getelementptr %"compiler/typed:Local", ptr %l267, i32 0, i32 0
  %t562 = load i32, ptr %t561, !tbaa !23
  %t563 = load ptr, ptr %l258, !tbaa !29
  %t565 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t563, i32 %t562)
  store { i64, ptr } %t565, ptr %l269
  br label %bb172
bb172:
  %t566 = load { i64, ptr }, ptr %l269, !tbaa !27
  store { i64, ptr } %t566, ptr %l13, !tbaa !27
  %t567 = load ptr, ptr %l0, !tbaa !29
  store ptr %t567, ptr %l270, !tbaa !29
  %t568 = load i64, ptr %l11, !tbaa !24
  store i64 %t568, ptr %l271, !tbaa !24
  %t569 = load ptr, ptr %l0, !tbaa !29
  %t571 = getelementptr %"compiler/scope:Scoper", ptr %t569, i32 0, i32 26
  %t572 = load ptr, ptr %t571, !tbaa !29
  %t574 = icmp eq ptr %t572, null
  br i1 %t574, label %bb173, label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_7c76a5ff0a201730_60f43c735987f7c)
  unreachable
bb174:
  br label %bb175
bb175:
  %t576 = load ptr, ptr %l0, !tbaa !29
  %t578 = getelementptr %"compiler/scope:Scoper", ptr %t576, i32 0, i32 26
  %t579 = load ptr, ptr %t578, !tbaa !29
  %t582 = getelementptr %"compiler/typed:Body", ptr %t579, i32 0, i32 3
  %t583 = load i64, ptr %t582, !tbaa !24
  store i64 %t583, ptr %l278, !tbaa !24
  %t584 = load ptr, ptr %l0, !tbaa !29
  store ptr %t584, ptr %l279, !tbaa !29
  %t585 = load ptr, ptr %l0, !tbaa !29
  %t587 = getelementptr %"compiler/scope:Scoper", ptr %t585, i32 0, i32 26
  %t588 = load ptr, ptr %t587, !tbaa !29
  %t590 = icmp eq ptr %t588, null
  br i1 %t590, label %bb176, label %bb177
bb176:
  call void @__olang_check_failed(ptr @olang_loc_7c76a5ff0a201730_60f43c735987f7c)
  unreachable
bb177:
  br label %bb178
bb178:
  %t592 = load ptr, ptr %l0, !tbaa !29
  %t594 = getelementptr %"compiler/scope:Scoper", ptr %t592, i32 0, i32 26
  %t595 = load ptr, ptr %t594, !tbaa !29
  %t598 = getelementptr %"compiler/typed:Body", ptr %t595, i32 0, i32 7
  %t599 = load i64, ptr %l12, !tbaa !24
  %t602 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t598, i64 %t599)
  store %"compiler/typed:Local" %t602, ptr %l288
  br label %bb179
bb179:
  %t603 = getelementptr %"compiler/typed:Local", ptr %l288, i32 0, i32 1
  %t604 = load %"compiler/source:Span", ptr %t603
  %t605 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t606 = load ptr, ptr %l279, !tbaa !29
  %t609 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v0, ptr %t606, %"compiler/source:Span" %t604, { i64, ptr } %t605)
  store %"compiler/source:Span" %t609, ptr %l291
  br label %bb180
bb180:
  %t610 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t610, ptr %l292, !tbaa !27
  %t611 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t611, ptr %l293, !tbaa !27
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t614 = getelementptr %"compiler/scope:Scoper", ptr %t612, i32 0, i32 5
  %t615 = load { ptr, ptr }, ptr %t614
  %t617 = extractvalue { ptr, ptr } %t615, 0
  %t618 = extractvalue { ptr, ptr } zeroinitializer, 0
  %t619 = icmp eq ptr %t617, %t618
  %t620 = extractvalue { ptr, ptr } %t615, 1
  %t621 = extractvalue { ptr, ptr } zeroinitializer, 1
  %t622 = icmp eq ptr %t620, %t621
  %t623 = and i1 %t619, %t622
  br i1 %t623, label %bb181, label %bb182
bb181:
  call void @__olang_check_failed(ptr @olang_loc_7c76a5ff0a201730_60f43c735987f7c)
  unreachable
bb182:
  br label %bb183
bb183:
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = getelementptr %"compiler/scope:Scoper", ptr %t625, i32 0, i32 5
  %t628 = load { ptr, ptr }, ptr %t627
  store { ptr, ptr } %t628, ptr %l298
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr %"compiler/scope:Scoper", ptr %t629, i32 0, i32 26
  %t632 = load ptr, ptr %t631, !tbaa !29
  %t634 = icmp eq ptr %t632, null
  br i1 %t634, label %bb184, label %bb185
bb184:
  call void @__olang_check_failed(ptr @olang_loc_7c76a5ff0a201730_60f43c735987f7c)
  unreachable
bb185:
  br label %bb186
bb186:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t638 = getelementptr %"compiler/scope:Scoper", ptr %t636, i32 0, i32 26
  %t639 = load ptr, ptr %t638, !tbaa !29
  %t642 = getelementptr %"compiler/typed:Body", ptr %t639, i32 0, i32 7
  %t643 = load i64, ptr %l12, !tbaa !24
  %t646 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t642, i64 %t643)
  store %"compiler/typed:Local" %t646, ptr %l307
  br label %bb187
bb187:
  %t647 = getelementptr %"compiler/typed:Local", ptr %l307, i32 0, i32 2
  %t648 = load i32, ptr %t647, !tbaa !23
  %t649 = load { ptr, ptr }, ptr %l298
  %t650 = extractvalue { ptr, ptr } %t649, 0
  %t651 = extractvalue { ptr, ptr } %t649, 1
  %t653 = call { i64, ptr } %t650(ptr %t651, ptr %s16, i32 %t648)
  store { i64, ptr } %t653, ptr %l309
  br label %bb188
bb188:
  %t654 = load { i64, ptr }, ptr %l293, !tbaa !27
  %t655 = extractvalue { i64, ptr } %t654, 1
  %t656 = extractvalue { i64, ptr } %t654, 0
  %t657 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t658 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t659 = add i64 %t656, %t658
  %t660 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t661 = extractvalue { i64, ptr } %t660, 1
  %t662 = extractvalue { i64, ptr } %t660, 0
  %t663 = add i64 %t659, %t662
  %t664 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t665 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t666 = add i64 %t663, %t665
  %t667 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t666)
  call void @olang_textcopy(ptr %t667, ptr %t655, i64 %t656)
  %t668 = getelementptr i8, ptr %t667, i64 %t656
  call void @olang_textcopy(ptr %t668, ptr %t657, i64 %t658)
  %t669 = getelementptr i8, ptr %t668, i64 %t658
  call void @olang_textcopy(ptr %t669, ptr %t661, i64 %t662)
  %t670 = getelementptr i8, ptr %t669, i64 %t662
  call void @olang_textcopy(ptr %t670, ptr %t664, i64 %t665)
  %t671 = insertvalue { i64, ptr } undef, i64 %t666, 0
  %t672 = insertvalue { i64, ptr } %t671, ptr %t667, 1
  %t674 = extractvalue { i64, ptr } %t672, 0
  %t675 = extractvalue { i64, ptr } %t672, 1
  %t676 = mul i64 %t674, 1
  %t677 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t676)
  call void @llvm.memcpy.p0.p0.i64(ptr %t677, ptr %t675, i64 %t676, i1 false)
  %t678 = insertvalue { i64, ptr } undef, i64 %t674, 0
  %t679 = insertvalue { i64, ptr } %t678, ptr %t677, 1
  %t680 = load { i64, ptr }, ptr %l292, !tbaa !27
  %t682 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteParamCopy(ptr %v0, ptr %s16, ptr %s16, { i64, ptr } %t680, { i64, ptr } %t679)
  store %"compiler/diagmsg:Msg" %t682, ptr %l312
  br label %bb189
bb189:
  %t683 = load ptr, ptr %l270, !tbaa !29
  %t684 = load i64, ptr %l271, !tbaa !24
  %t685 = load i64, ptr %l278, !tbaa !24
  %t686 = load %"compiler/source:Span", ptr %l291
  %t687 = load %"compiler/diagmsg:Msg", ptr %l312
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s16, ptr %t683, i64 %t684, i64 %t685, %"compiler/source:Span" %t686, %"compiler/diagmsg:Msg" %t687)
  br label %bb190
bb190:
  call void @__olang_scope_close(ptr %s16)
  br label %bb191
bb191:
  br label %bb192
bb192:
  %t688 = load i64, ptr %l11, !tbaa !24
  %t690 = icmp sge i64 %t688, 0
  br i1 %t690, label %bb193, label %bb194
bb193:
  %t692 = load i64, ptr %l2, !tbaa !24
  %t693 = load i64, ptr @G_2ecompiler_2fscope_2eFitPayload, !tbaa !24
  %t696 = icmp eq i64 %t692, %t693
  store i1 %t696, ptr %l315, !tbaa !21
  br label %bb195
bb194:
  store i1 false, ptr %l315, !tbaa !21
  br label %bb195
bb195:
  %t698 = load i1, ptr %l315, !tbaa !21
  br i1 %t698, label %bb196, label %bb197
bb196:
  %t699 = load ptr, ptr %l0, !tbaa !29
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t702 = getelementptr %"compiler/scope:Scoper", ptr %t700, i32 0, i32 87
  %t703 = load { i64, [2 x i64] }, ptr %t702
  %t706 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %t699, { i64, [2 x i64] } %t703)
  store i64 %t706, ptr %l322
  br label %bb198
bb197:
  br label %bb208
bb198:
  %t707 = load i64, ptr %l322, !tbaa !24
  store i64 %t707, ptr %l14, !tbaa !24
  %t708 = load i64, ptr %l14, !tbaa !24
  %t710 = icmp sge i64 %t708, 0
  br i1 %t710, label %bb199, label %bb200
bb199:
  %t712 = load ptr, ptr %l0, !tbaa !29
  store ptr %t712, ptr %l325, !tbaa !29
  %t713 = load i64, ptr %l11, !tbaa !24
  store i64 %t713, ptr %l326, !tbaa !24
  %t714 = load ptr, ptr %l1, !tbaa !29
  store ptr %t714, ptr %l328, !tbaa !29
  %t716 = load i64, ptr %l14, !tbaa !24
  store i64 %t716, ptr %l329, !tbaa !24
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t719 = getelementptr %"compiler/scope:Scoper", ptr %t717, i32 0, i32 0
  %t720 = load ptr, ptr %t719, !tbaa !29
  %t722 = getelementptr %"compiler/generic:Program", ptr %t720, i32 0, i32 0
  %t723 = load ptr, ptr %t722, !tbaa !29
  %t725 = getelementptr %"compiler/load:Loader", ptr %t723, i32 0, i32 3
  %t726 = load ptr, ptr %t725, !tbaa !29
  store ptr %t726, ptr %l333, !tbaa !29
  %t727 = load ptr, ptr %l0, !tbaa !29
  %t729 = getelementptr %"compiler/scope:Scoper", ptr %t727, i32 0, i32 26
  %t730 = load ptr, ptr %t729, !tbaa !29
  %t732 = icmp eq ptr %t730, null
  br i1 %t732, label %bb201, label %bb202
bb200:
  br label %bb207
bb201:
  call void @__olang_check_failed(ptr @olang_loc_3bc3e93e18d6d20f_7eae6e8d3b47aeeb)
  unreachable
bb202:
  br label %bb203
bb203:
  %t734 = load ptr, ptr %l0, !tbaa !29
  %t736 = getelementptr %"compiler/scope:Scoper", ptr %t734, i32 0, i32 26
  %t737 = load ptr, ptr %t736, !tbaa !29
  %t740 = getelementptr %"compiler/typed:Body", ptr %t737, i32 0, i32 7
  %t741 = load i64, ptr %l14, !tbaa !24
  %t744 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t740, i64 %t741)
  store %"compiler/typed:Local" %t744, ptr %l342
  br label %bb204
bb204:
  %t745 = getelementptr %"compiler/typed:Local", ptr %l342, i32 0, i32 0
  %t746 = load i32, ptr %t745, !tbaa !23
  %t747 = load ptr, ptr %l333, !tbaa !29
  %t749 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t747, i32 %t746)
  store { i64, ptr } %t749, ptr %l344
  br label %bb205
bb205:
  %t750 = load ptr, ptr %l325, !tbaa !29
  %t751 = load i64, ptr %l326, !tbaa !24
  %t752 = load ptr, ptr %l328, !tbaa !29
  %t753 = load i64, ptr %l329, !tbaa !24
  %t754 = load { i64, ptr }, ptr %l344, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v0, ptr %t750, i64 %t751, ptr %t752, i64 %t753, { i64, ptr } %t754, i64 0)
  br label %bb206
bb206:
  br label %bb207
bb207:
  br label %bb208
bb208:
  %t755 = load ptr, ptr %l0, !tbaa !29
  %t756 = load ptr, ptr %l1, !tbaa !29
  %t760 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t755, ptr %t756)
  store ptr %t760, ptr %l348
  br label %bb209
bb209:
  %t761 = load ptr, ptr %l348, !tbaa !29
  %t762 = call ptr @compiler_2fscope_2eunWidened(ptr %s0, ptr %s0, ptr %t761)
  store ptr %t762, ptr %l349
  br label %bb210
bb210:
  %t763 = load ptr, ptr %l349, !tbaa !29
  store ptr %t763, ptr %l15, !tbaa !29
  %t764 = load ptr, ptr %l15, !tbaa !29
  store ptr %t764, ptr %l350, !tbaa !29
  store i1 false, ptr %l351, !tbaa !21
  %t765 = load ptr, ptr %l350, !tbaa !29
  %t766 = icmp ne ptr %t765, null
  br i1 %t766, label %bb211, label %bb212
bb211:
  %t768 = load ptr, ptr %l350, !tbaa !29
  %t769 = load i64, ptr %t768, !range !{i64 0, i64 18}
  %t771 = icmp eq i64 %t769, 10
  store i1 %t771, ptr %l351, !tbaa !21
  br label %bb212
bb212:
  %t772 = load i1, ptr %l351, !tbaa !21
  br i1 %t772, label %bb213, label %bb214
bb213:
  %t773 = load ptr, ptr %l15, !tbaa !29
  %t775 = getelementptr { i64, [5 x i64] }, ptr %t773, i32 0, i32 1
  %t776 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t775, i32 0, i32 0
  %t777 = load %"compiler/source:Span", ptr %t776
  store %"compiler/source:Span" %t777, ptr %l16
  %t779 = load ptr, ptr %l15, !tbaa !29
  %t781 = getelementptr { i64, [5 x i64] }, ptr %t779, i32 0, i32 1
  %t782 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t781, i32 0, i32 2
  %t783 = load ptr, ptr %t782
  store ptr %t783, ptr %l17, !tbaa !29
  br label %bb215
bb214:
  br label %bb229
bb215:
  store %olang.scope zeroinitializer, ptr %s20
  %t785 = load i64, ptr %l11, !tbaa !24
  %t787 = icmp sge i64 %t785, 0
  br i1 %t787, label %bb216, label %bb217
bb216:
  %t789 = load ptr, ptr %l17, !tbaa !29
  %t791 = getelementptr %"compiler/typed:Slice", ptr %t789, i32 0, i32 0
  %t792 = load ptr, ptr %t791, !tbaa !29
  %t794 = call ptr @compiler_2fscope_2etempOf(ptr %s0, ptr %s20, ptr %t792)
  store ptr %t794, ptr %l363
  br label %bb218
bb217:
  store i1 false, ptr %l360, !tbaa !21
  br label %bb219
bb218:
  %t795 = load ptr, ptr %l363, !tbaa !29
  %t796 = icmp eq ptr %t795, null
  %t798 = xor i1 %t796, true
  store i1 %t798, ptr %l360, !tbaa !21
  br label %bb219
bb219:
  %t800 = load i1, ptr %l360, !tbaa !21
  br i1 %t800, label %bb220, label %bb221
bb220:
  store %olang.scope zeroinitializer, ptr %s21
  %t801 = load ptr, ptr %l0, !tbaa !29
  store ptr %t801, ptr %l366, !tbaa !29
  %t802 = load i64, ptr %l11, !tbaa !24
  store i64 %t802, ptr %l367, !tbaa !24
  %t803 = load ptr, ptr %l0, !tbaa !29
  %t805 = getelementptr %"compiler/scope:Scoper", ptr %t803, i32 0, i32 26
  %t806 = load ptr, ptr %t805, !tbaa !29
  %t808 = icmp eq ptr %t806, null
  br i1 %t808, label %bb222, label %bb223
bb221:
  br label %bb228
bb222:
  call void @__olang_check_failed(ptr @olang_loc_60c4a5415da7e8de_419e4bf7c0afcf6a)
  unreachable
bb223:
  br label %bb224
bb224:
  %t810 = load ptr, ptr %l0, !tbaa !29
  %t812 = getelementptr %"compiler/scope:Scoper", ptr %t810, i32 0, i32 26
  %t813 = load ptr, ptr %t812, !tbaa !29
  %t816 = getelementptr %"compiler/typed:Body", ptr %t813, i32 0, i32 3
  %t817 = load i64, ptr %t816, !tbaa !24
  store i64 %t817, ptr %l374, !tbaa !24
  %t818 = load ptr, ptr %l0, !tbaa !29
  %t819 = load %"compiler/source:Span", ptr %l16
  %t820 = load ptr, ptr %l17, !tbaa !29
  %t824 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %s0, ptr %t818, %"compiler/source:Span" %t819, ptr %t820)
  store %"compiler/source:Span" %t824, ptr %l378
  br label %bb225
bb225:
  %t825 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteSliceOfTemporary(ptr %s21)
  store %"compiler/diagmsg:Msg" %t825, ptr %l379
  br label %bb226
bb226:
  %t826 = load ptr, ptr %l366, !tbaa !29
  %t827 = load i64, ptr %l367, !tbaa !24
  %t828 = load i64, ptr %l374, !tbaa !24
  %t829 = load %"compiler/source:Span", ptr %l378
  %t830 = load %"compiler/diagmsg:Msg", ptr %l379
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s21, ptr %t826, i64 %t827, i64 %t828, %"compiler/source:Span" %t829, %"compiler/diagmsg:Msg" %t830)
  br label %bb227
bb227:
  call void @__olang_scope_close(ptr %s21)
  br label %bb228
bb228:
  call void @__olang_scope_close(ptr %s20)
  br label %bb234
bb229:
  br i1 true, label %bb230, label %bb231
bb230:
  br label %bb232
bb231:
  br label %bb233
bb232:
  br label %bb234
bb233:
  call void @__olang_check_failed(ptr @olang_loc_b5bc1eafb7fb24bc_101d8a8a62fdaef8)
  unreachable
bb234:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i64
  %l30 = alloca ptr
  %l31 = alloca i1
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i32
  %l52 = alloca i64
  %l55 = alloca i1
  %l63 = alloca { i64, ptr }
  %l67 = alloca i64
  %rv = alloca i64
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
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 2
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18
  store ptr %t19, ptr %l2, !tbaa !29
  br label %bb16
bb7:
  %t21 = load ptr, ptr %l1, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 18}
  %t28 = icmp eq i64 %t26, 3
  store i1 %t28, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l16, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr { i64, [5 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t32, i32 0, i32 2
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l2, !tbaa !29
  br label %bb16
bb11:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t37 = load ptr, ptr %l21, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 18}
  %t43 = icmp eq i64 %t41, 4
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l22, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l2, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t55 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %t51, ptr %t52)
  store i64 %t55, ptr %l29
  br label %bb17
bb17:
  %t56 = load i64, ptr %l29, !tbaa !24
  store i64 %t56, ptr %rv
  br label %ret
bb18:
  %t57 = load ptr, ptr %l1, !tbaa !29
  store ptr %t57, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t58 = load ptr, ptr %l30, !tbaa !29
  %t59 = icmp ne ptr %t58, null
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load ptr, ptr %l30, !tbaa !29
  %t62 = load i64, ptr %t61, !range !{i64 0, i64 18}
  %t64 = icmp eq i64 %t62, 17
  store i1 %t64, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t65 = load i1, ptr %l31, !tbaa !21
  br i1 %t65, label %bb21, label %bb22
bb21:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr { i64, [5 x i64] }, ptr %t66, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t68, i32 0, i32 2
  %t70 = load ptr, ptr %t69
  store ptr %t70, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load ptr, ptr %l3, !tbaa !29
  %t77 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %t72, ptr %t73)
  store i64 %t77, ptr %l39
  br label %bb24
bb24:
  %t78 = load i64, ptr %l39, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb25:
  %t79 = load ptr, ptr %l1, !tbaa !29
  store ptr %t79, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t80 = load ptr, ptr %l40, !tbaa !29
  %t81 = icmp ne ptr %t80, null
  br i1 %t81, label %bb26, label %bb27
bb26:
  %t83 = load ptr, ptr %l40, !tbaa !29
  %t84 = load i64, ptr %t83, !range !{i64 0, i64 18}
  %t86 = icmp eq i64 %t84, 6
  store i1 %t86, ptr %l41, !tbaa !21
  br label %bb27
bb27:
  %t87 = load i1, ptr %l41, !tbaa !21
  br i1 %t87, label %bb28, label %bb29
bb28:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t90 = getelementptr { i64, [5 x i64] }, ptr %t88, i32 0, i32 1
  %t91 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t90, i32 0, i32 2
  %t92 = load ptr, ptr %t91
  store ptr %t92, ptr %l4, !tbaa !29
  br label %bb30
bb29:
  br label %bb40
bb30:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/scope:Scoper", ptr %t94, i32 0, i32 0
  %t97 = load ptr, ptr %t96, !tbaa !29
  %t99 = getelementptr %"compiler/generic:Program", ptr %t97, i32 0, i32 2
  store ptr %t99, ptr %l48, !tbaa !29
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l4, !tbaa !29
  %t104 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t100, ptr %t101)
  store i32 %t104, ptr %l51
  br label %bb31
bb31:
  %t105 = load ptr, ptr %l48, !tbaa !29
  %t106 = load i32, ptr %l51, !tbaa !23
  %t107 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t105, i32 %t106, i64 0)
  store i64 %t107, ptr %l52
  br label %bb32
bb32:
  %t108 = load i64, ptr %l52, !tbaa !24
  store i64 %t108, ptr %l5, !tbaa !24
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = icmp sge i64 %t109, 0
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t113 = load i64, ptr %l5, !tbaa !24
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t116 = getelementptr %"compiler/typed:Call", ptr %t114, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t122 = icmp slt i64 %t113, %t119
  store i1 %t122, ptr %l55, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb35
bb35:
  %t124 = load i1, ptr %l55, !tbaa !21
  br i1 %t124, label %bb36, label %bb37
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load ptr, ptr %l4, !tbaa !29
  %t128 = getelementptr %"compiler/typed:Call", ptr %t126, i32 0, i32 1
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l63, !tbaa !27
  %t130 = load i64, ptr %l5, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 %t130
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t139 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflExprRoot(ptr %v0, ptr %v1, ptr %t125, ptr %t135)
  store i64 %t139, ptr %l67
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t140 = load i64, ptr %l67, !tbaa !24
  store i64 %t140, ptr %rv
  br label %ret
bb39:
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_c246bc7b7189f7e5_d655903db3304939)
  unreachable
bb45:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efoundOr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l17 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 7
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  store i64 %t10, ptr %l6, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c68ee02a91d7861d_898ef75a2993a579)
  unreachable
bb9:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t19 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %t12)
  store { i64, [2 x i64] } %t19, ptr %l14
  br label %bb10
bb10:
  %t20 = load { i64, [2 x i64] }, ptr %l14
  store { i64, [2 x i64] } %t20, ptr %l5
  %t21 = load { i64, [2 x i64] }, ptr %l5
  %t23 = extractvalue { i64, [2 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 0
  br i1 %t24, label %bb11, label %bb12
bb11:
  %t26 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t26, ptr %l17
  br label %bb13
bb12:
  %t28 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t28, ptr %l17
  br label %bb13
bb13:
  %t30 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t30, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egammaHolds(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca %"compiler/scope:rel"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l21 = alloca { i64, [2 x i64] }
  %l23 = alloca { i64, [2 x i64] }
  %l24 = alloca i32
  %l25 = alloca { i64, [2 x i64] }
  %l27 = alloca { i64, [2 x i64] }
  %l29 = alloca i1
  %l34 = alloca i64
  %l36 = alloca i64
  %l41 = alloca { i64, [2 x i64] }
  %l42 = alloca { i64, [2 x i64] }
  %l44 = alloca { i64, [2 x i64] }
  %l46 = alloca i1
  %l54 = alloca i64
  %l56 = alloca i64
  %l61 = alloca %"compiler/scope:rel"
  %l62 = alloca { i64, [2 x i64] }
  %l64 = alloca { i64, [2 x i64] }
  %l66 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l14
  br label %bb2
bb2:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l4, { i64, [2 x i64] } %a1)
  br label %bb3
bb3:
  br label %bb4
bb4:
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l4)
  store i64 %t9, ptr %l18
  br label %bb5
bb5:
  %t10 = load i64, ptr %l18, !tbaa !24
  %t11 = icmp sgt i64 %t10, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb50
bb7:
  br label %bb8
bb8:
  %t16 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePop_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l4)
  %t17 = extractvalue { i32, { i64, [2 x i64] } } %t16, 1
  %t18 = extractvalue { i32, { i64, [2 x i64] } } %t16, 0
  store i32 %t18, ptr %l24
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb10, label %ok.20, !prof !99
ok.20:
  store { i64, [2 x i64] } %t17, ptr %l23
  br label %bb9
bb9:
  %t21 = load { i64, [2 x i64] }, ptr %l23
  store { i64, [2 x i64] } %t21, ptr %l21
  br label %bb12
bb10:
  br label %bb11
bb11:
  br label %bb50
bb12:
  %t22 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t22, ptr %l5
  %t23 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t23, ptr %l25
  store { i64, [2 x i64] } %a2, ptr %l27
  %t27 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l25, ptr %l27)
  store i1 %t27, ptr %l29
  br label %bb13
bb13:
  %t28 = load i1, ptr %l29, !tbaa !21
  br i1 %t28, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t30 = load { i64, [2 x i64] }, ptr %l5
  %t32 = extractvalue { i64, [2 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 3
  br i1 %t33, label %bb17, label %bb18
bb17:
  br label %bb49
bb18:
  br label %bb19
bb19:
  store i1 false, ptr %l6, !tbaa !21
  store ptr %l3, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb20
bb20:
  %t36 = load i64, ptr %l8, !tbaa !24
  store i64 %t36, ptr %l34, !tbaa !24
  %t37 = load ptr, ptr %l7, !tbaa !29
  %t39 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %t37)
  store i64 %t39, ptr %l36
  br label %bb21
bb21:
  %t40 = load i64, ptr %l34, !tbaa !24
  %t41 = load i64, ptr %l36, !tbaa !24
  %t42 = icmp slt i64 %t40, %t41
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb22, label %bb23
bb22:
  br label %bb31
bb23:
  br label %bb24
bb24:
  %t46 = load ptr, ptr %l7, !tbaa !29
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %t46, i64 %t47)
  store { i64, [2 x i64] } %t50, ptr %l41
  br label %bb25
bb25:
  %t51 = load { i64, [2 x i64] }, ptr %l41
  store { i64, [2 x i64] } %t51, ptr %l42
  %t53 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t53, ptr %l44
  %t56 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l42, ptr %l44)
  store i1 %t56, ptr %l46
  br label %bb26
bb26:
  %t57 = load i1, ptr %l46, !tbaa !21
  br i1 %t57, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb29
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = add i64 %t58, 1
  store i64 %t60, ptr %l8, !tbaa !24
  br label %bb20
bb31:
  %t62 = load i1, ptr %l6, !tbaa !21
  br i1 %t62, label %bb32, label %bb33
bb32:
  br label %bb49
bb33:
  br label %bb34
bb34:
  %t64 = load { i64, [2 x i64] }, ptr %l5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l3, { i64, [2 x i64] } %t64)
  br label %bb35
bb35:
  %t69 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 38
  store ptr %t69, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb36
bb36:
  %t71 = load i64, ptr %l11, !tbaa !24
  store i64 %t71, ptr %l54, !tbaa !24
  %t72 = load ptr, ptr %l10, !tbaa !29
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l56
  br label %bb37
bb37:
  %t75 = load i64, ptr %l54, !tbaa !24
  %t76 = load i64, ptr %l56, !tbaa !24
  %t77 = icmp slt i64 %t75, %t76
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb38, label %bb39
bb38:
  br label %bb48
bb39:
  br label %bb40
bb40:
  %t81 = load ptr, ptr %l10, !tbaa !29
  %t82 = load i64, ptr %l11, !tbaa !24
  %t85 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/scope:rel" %t85, ptr %l61
  br label %bb41
bb41:
  %t86 = load %"compiler/scope:rel", ptr %l61
  store %"compiler/scope:rel" %t86, ptr %l12
  %t87 = getelementptr %"compiler/scope:rel", ptr %l12, i32 0, i32 0
  %t88 = load { i64, [2 x i64] }, ptr %t87
  store { i64, [2 x i64] } %t88, ptr %l62
  %t89 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t89, ptr %l64
  %t92 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l62, ptr %l64)
  store i1 %t92, ptr %l66
  br label %bb42
bb42:
  %t93 = load i1, ptr %l66, !tbaa !21
  br i1 %t93, label %bb43, label %bb44
bb43:
  %t94 = getelementptr %"compiler/scope:rel", ptr %l12, i32 0, i32 1
  %t95 = load { i64, [2 x i64] }, ptr %t94
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l4, { i64, [2 x i64] } %t95)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t98 = load i64, ptr %l11, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l11, !tbaa !24
  br label %bb36
bb48:
  br label %bb49
bb49:
  br label %bb4
bb50:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egenResult(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l9 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
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
  call void @__olang_check_failed(ptr @olang_loc_1040a80ff621ce40_8920315fc4c3ab44)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 14
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 42
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  store i1 %t22, ptr %l9, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l9, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load { i64, [2 x i64] }, ptr %l1
  %t27 = extractvalue { i64, [2 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 2
  br i1 %t28, label %bb9, label %bb10
bb8:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb12
bb9:
  %t30 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t31 = getelementptr { i64 }, ptr %t30, i32 0, i32 0
  %t32 = load i64, ptr %t31
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 42
  %t36 = load i64, ptr %t35, !tbaa !24
  %t39 = icmp eq i64 %t32, %t36
  store i1 %t39, ptr %l16, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t41 = load i1, ptr %l16, !tbaa !21
  store i1 %t41, ptr %l13, !tbaa !21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l13, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eheldTemp(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l14 = alloca i64
  %l17 = alloca i1
  %l26 = alloca %"compiler/typed:Local"
  %l31 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i32
  %l40 = alloca ptr
  %l44 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca i1
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
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = call i64 @compiler_2fscope_2ewholeLocal(ptr %v1, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb6
bb6:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l6, !tbaa !24
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 -1, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_ddc73f949322d0fd_8f7c03ce3b4890f1)
  unreachable
bb12:
  %t20 = load i64, ptr %l6, !tbaa !24
  store i64 %t20, ptr %l3, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb19
bb14:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 26
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb15, label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4c44ad98352c595_ba86be46ffaf75a9)
  unreachable
bb16:
  br label %bb17
bb17:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 26
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 7
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/typed:Local" %t42, ptr %l26
  br label %bb18
bb18:
  %t43 = getelementptr %"compiler/typed:Local", ptr %l26, i32 0, i32 4
  %t44 = load i32, ptr %t43, !range !{i32 0, i32 7}
  %t46 = trunc i64 2 to i32
  %t47 = icmp eq i32 %t44, %t46
  %t49 = xor i1 %t47, true
  store i1 %t49, ptr %l17, !tbaa !21
  br label %bb19
bb19:
  %t51 = load i1, ptr %l17, !tbaa !21
  br i1 %t51, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 45
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  %t60 = extractvalue { i32, ptr } %t59, 1
  %t61 = extractvalue { i32, ptr } %t59, 0
  store i32 %t61, ptr %l36
  %t62 = icmp ne i32 %t61, 0
  br i1 %t62, label %bb24, label %ok.63, !prof !99
ok.63:
  store ptr %t60, ptr %l35
  br label %bb23
bb23:
  %t64 = load ptr, ptr %l35, !tbaa !29
  store ptr %t64, ptr %l31, !tbaa !29
  br label %bb26
bb24:
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb26:
  %t66 = load ptr, ptr %l31, !tbaa !29
  store ptr %t66, ptr %l4, !tbaa !29
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t70 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %s0, ptr %t67)
  store ptr %t70, ptr %l40
  br label %bb27
bb27:
  %t71 = load ptr, ptr %l40, !tbaa !29
  %t72 = icmp eq ptr %t71, null
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t77 = load ptr, ptr %l4, !tbaa !29
  store ptr %t77, ptr %l45, !tbaa !29
  store i1 false, ptr %l46, !tbaa !21
  %t78 = load ptr, ptr %l45, !tbaa !29
  %t79 = icmp ne ptr %t78, null
  br i1 %t79, label %bb31, label %bb32
bb31:
  %t81 = load ptr, ptr %l45, !tbaa !29
  %t82 = load i64, ptr %t81, !range !{i64 0, i64 18}
  %t84 = icmp eq i64 %t82, 5
  store i1 %t84, ptr %l46, !tbaa !21
  br label %bb32
bb32:
  %t85 = load i1, ptr %l46, !tbaa !21
  br i1 %t85, label %bb33, label %bb34
bb33:
  %t86 = load ptr, ptr %l4, !tbaa !29
  %t88 = getelementptr { i64, [5 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 2
  %t90 = load ptr, ptr %t89
  store ptr %t90, ptr %l5, !tbaa !29
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Promote", ptr %t92, i32 0, i32 1
  %t95 = load i32, ptr %t94, !tbaa !23
  %t97 = sext i32 %t95 to i64
  store i64 %t97, ptr %l44, !tbaa !24
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i64 -1, ptr %l44, !tbaa !24
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_ac4e062111af42c7_39089cbd2d7221db)
  unreachable
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t99 = load i64, ptr %l44, !tbaa !24
  store i64 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisHeldFresh(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l20 = alloca i1
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
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 2
  %t29 = load i32, ptr %t28
  store i32 %t29, ptr %l3, !tbaa !23
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 43
  %t34 = load i32, ptr %l3, !tbaa !23
  %t36 = sext i32 %t34 to i64
  %t39 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %t33, i64 %t36)
  store i1 %t39, ptr %l20
  br label %bb11
bb11:
  %t40 = load i1, ptr %l20, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_64866479fde10111_ef2974c0c8fea135)
  unreachable
bb17:
  br label %bb23
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e28f095865462080_aebf15f688a31244)
  unreachable
bb23:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStruct(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l6 = alloca i32
  %l9 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i1
  %l18 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t13 = trunc i64 18 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 0
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/generic:Program", ptr %t19, i32 0, i32 2
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %t21, i32 %t22)
  store i1 %t25, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  %t26 = load i1, ptr %l14, !tbaa !21
  store i1 %t26, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t27 = load i1, ptr %l9, !tbaa !21
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = getelementptr %"compiler/generic:Program", ptr %t31, i32 0, i32 2
  store ptr %t33, ptr %l18, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 0
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/generic:Program", ptr %t37, i32 0, i32 2
  %t40 = load i32, ptr %l1, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l23
  br label %bb8
bb7:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb10
bb8:
  %t44 = load ptr, ptr %l18, !tbaa !29
  %t45 = load i32, ptr %l23, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t44, i32 %t45)
  store i32 %t46, ptr %l24
  br label %bb9
bb9:
  %t47 = load i32, ptr %l24, !range !{i32 0, i32 6}
  %t49 = trunc i64 0 to i32
  %t50 = icmp eq i32 %t47, %t49
  store i1 %t50, ptr %l15, !tbaa !21
  br label %bb10
bb10:
  %t52 = load i1, ptr %l15, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwOutOfRegion(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, ptr %a3, i64 %a4, { i64, ptr } %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca i1
  %l7 = alloca %"compiler/scope:fnRecs"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/scope:fnRec"
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca i32
  %l20 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca i1
  %l37 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l41 = alloca i1
  %l43 = alloca %"compiler/scope:fnRecs"
  %l49 = alloca %"compiler/scope:fnRecs"
  %l50 = alloca i32
  %l52 = alloca %"compiler/scope:fnRecs"
  %l53 = alloca %"compiler/scope:fnRecs"
  %l59 = alloca i64
  %l61 = alloca i64
  %l66 = alloca %"compiler/scope:fnRec"
  %l68 = alloca i64
  %l75 = alloca i1
  %l76 = alloca i1
  %l80 = alloca i1
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Call", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = icmp ne ptr %t5, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  %t9 = load i64, ptr %t8, !range !{i64 0, i64 5}
  %t11 = icmp eq i64 %t9, 2
  store i1 %t11, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t12 = load i1, ptr %l14, !tbaa !21
  store i1 %t12, ptr %l6, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l17, !tbaa !29
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t14)
  store i32 %t16, ptr %l19
  br label %bb3
bb3:
  %t17 = load ptr, ptr %l17, !tbaa !29
  %t18 = load i32, ptr %l19, !tbaa !23
  %t19 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t17, i32 %t18)
  store i1 %t19, ptr %l20
  br label %bb4
bb4:
  %t20 = load i1, ptr %l20, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = load i1, ptr %l6, !tbaa !21
  br i1 %t21, label %bb7, label %bb8
bb6:
  br label %bb17
bb7:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t25 = load i64, ptr %l2, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwValueArg(ptr %v0, ptr %v1, ptr %v3, ptr %t23, ptr %t24, i64 %t25, i64 %t26, { i64, ptr } %a5, i1 false)
  br label %bb9
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t35 = load i64, ptr %l2, !tbaa !24
  %t39 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %t33, ptr %t34, i64 %t35)
  store i1 %t39, ptr %l30
  br label %bb10
bb9:
  br label %bb16
bb10:
  %t40 = load i1, ptr %l30, !tbaa !21
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l31, !tbaa !29
  %t42 = load i64, ptr %l4, !tbaa !24
  store i64 %t42, ptr %l32, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load i64, ptr %l2, !tbaa !24
  %t49 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %t43, ptr %t44, i64 %t45)
  store i1 %t49, ptr %l36
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t50 = load ptr, ptr %l31, !tbaa !29
  %t51 = load i64, ptr %l32, !tbaa !24
  %t52 = load i1, ptr %l36, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t50, i64 %t51, i1 %t52)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %ret
bb17:
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l37, !tbaa !29
  %t54 = load ptr, ptr %l3, !tbaa !29
  %t56 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v2, ptr %t54)
  store i32 %t56, ptr %l39
  br label %bb18
bb18:
  %t57 = load ptr, ptr %l37, !tbaa !29
  %t58 = load i32, ptr %l39, !tbaa !23
  %t59 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t57, i32 %t58)
  store i1 %t59, ptr %l40
  br label %bb19
bb19:
  %t60 = load i1, ptr %l40, !tbaa !21
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t61 = load i1, ptr %l6, !tbaa !21
  store i1 %t61, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t63 = load i1, ptr %l41, !tbaa !21
  br i1 %t63, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s5
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/scope:Scoper", ptr %t64, i32 0, i32 96
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Call", ptr %t67, i32 0, i32 2
  %t70 = load i32, ptr %t69, !tbaa !23
  %t72 = sext i32 %t70 to i64
  %t75 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t66, i64 %t72)
  %t76 = extractvalue { i32, %"compiler/scope:fnRecs" } %t75, 1
  %t77 = extractvalue { i32, %"compiler/scope:fnRecs" } %t75, 0
  store i32 %t77, ptr %l50
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb26, label %ok.79, !prof !99
ok.79:
  store %"compiler/scope:fnRecs" %t76, ptr %l49
  br label %bb25
bb24:
  br label %bb55
bb25:
  %t81 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s5, ptr %l49)
  store %"compiler/scope:fnRecs" %t81, ptr %l52
  br label %bb28
bb26:
  br label %bb27
bb27:
  %t82 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t82, ptr %l53
  br label %bb29
bb28:
  %t83 = load %"compiler/scope:fnRecs", ptr %l52
  store %"compiler/scope:fnRecs" %t83, ptr %l43
  br label %bb30
bb29:
  %t84 = load %"compiler/scope:fnRecs", ptr %l53
  store %"compiler/scope:fnRecs" %t84, ptr %l43
  br label %bb30
bb30:
  %t85 = load %"compiler/scope:fnRecs", ptr %l43
  store %"compiler/scope:fnRecs" %t85, ptr %l7
  %t86 = getelementptr %"compiler/scope:fnRecs", ptr %l7, i32 0, i32 1
  %t87 = load i1, ptr %t86, !tbaa !21
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb31, label %bb32
bb31:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t91, i64 %t92, i1 true)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  %t95 = getelementptr %"compiler/scope:fnRecs", ptr %l7, i32 0, i32 0
  store ptr %t95, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb35
bb35:
  %t97 = load i64, ptr %l9, !tbaa !24
  store i64 %t97, ptr %l59, !tbaa !24
  %t98 = load ptr, ptr %l8, !tbaa !29
  %t100 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s5, ptr %t98)
  store i64 %t100, ptr %l61
  br label %bb36
bb36:
  %t101 = load i64, ptr %l59, !tbaa !24
  %t102 = load i64, ptr %l61, !tbaa !24
  %t103 = icmp slt i64 %t101, %t102
  %t105 = xor i1 %t103, true
  br i1 %t105, label %bb37, label %bb38
bb37:
  br label %bb54
bb38:
  br label %bb39
bb39:
  %t107 = load ptr, ptr %l8, !tbaa !29
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s5, ptr %s5, ptr %t107, i64 %t108)
  store %"compiler/scope:fnRec" %t111, ptr %l66
  br label %bb40
bb40:
  %t112 = load %"compiler/scope:fnRec", ptr %l66
  store %"compiler/scope:fnRec" %t112, ptr %l10
  %t113 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 2
  %t114 = load i1, ptr %t113, !tbaa !21
  br i1 %t114, label %bb41, label %bb42
bb41:
  %t116 = load i64, ptr %l2, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l68, !tbaa !24
  br label %bb43
bb42:
  %t120 = load i64, ptr %l2, !tbaa !24
  store i64 %t120, ptr %l68, !tbaa !24
  br label %bb43
bb43:
  %t122 = load i64, ptr %l68, !tbaa !24
  store i64 %t122, ptr %l11, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = load i64, ptr %l11, !tbaa !24
  %t130 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %t123, i64 %t125, i64 %t126)
  store i1 %t130, ptr %l75
  br label %bb44
bb44:
  %t131 = load i1, ptr %l75, !tbaa !21
  br i1 %t131, label %bb45, label %bb46
bb45:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb48
bb46:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:fnRec", ptr %l10, i32 0, i32 0
  %t134 = load i64, ptr %t133, !tbaa !24
  %t135 = load i64, ptr %l11, !tbaa !24
  %t139 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %t132, i64 %t134, i64 %t135)
  store i1 %t139, ptr %l80
  br label %bb47
bb47:
  %t140 = load i1, ptr %l80, !tbaa !21
  store i1 %t140, ptr %l76, !tbaa !21
  br label %bb48
bb48:
  %t141 = load i1, ptr %l76, !tbaa !21
  br i1 %t141, label %bb49, label %bb50
bb49:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %t142, i64 %t143, i1 true)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t146 = load i64, ptr %l9, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l9, !tbaa !24
  br label %bb35
bb54:
  call void @__olang_scope_close(ptr %s5)
  br label %bb55
bb55:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elcaBlock(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l15 = alloca i1
  %l26 = alloca %"compiler/typed:BlockInfo"
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i32 %a1, ptr %l3, !tbaa !23
  br label %bb1
bb1:
  %t3 = load i32, ptr %l3, !tbaa !23
  %t5 = icmp sge i32 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %bb17
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_4290e2a90659b7f6_aa651f6d10e86162)
  unreachable
bb6:
  br label %bb7
bb7:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 26
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t20 = load i32, ptr %l3, !tbaa !23
  %t25 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t19, i32 %t20, i32 %a2)
  store i1 %t25, ptr %l15
  br label %bb8
bb8:
  %t26 = load i1, ptr %l15, !tbaa !21
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t27 = load i32, ptr %l3, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 26
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  br i1 %t34, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5870181ab0023c5d_b5d2f953d218d1c9)
  unreachable
bb13:
  br label %bb14
bb14:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 26
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Body", ptr %t39, i32 0, i32 8
  %t43 = load i32, ptr %l3, !tbaa !23
  %t45 = sext i32 %t43 to i64
  %t48 = call %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %t42, i64 %t45)
  store %"compiler/typed:BlockInfo" %t48, ptr %l26
  br label %bb15
bb15:
  %t49 = getelementptr %"compiler/typed:BlockInfo", ptr %l26, i32 0, i32 0
  %t50 = load i32, ptr %t49, !tbaa !23
  store i32 %t50, ptr %l3, !tbaa !23
  br label %bb16
bb16:
  br label %bb1
bb17:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i64
  %l14 = alloca i64
  %l25 = alloca %"compiler/typed:Local"
  %l29 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb7
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l6, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 26
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = icmp eq ptr %t9, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_622a2f7e184bdd9a_1d72d3d4653d26a6)
  unreachable
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 26
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 7
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l14
  br label %bb6
bb6:
  %t22 = load i64, ptr %l6, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = icmp sge i64 %t22, %t23
  store i1 %t24, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l5, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 26
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t33 = icmp eq ptr %t31, null
  br i1 %t33, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1ae8b7943ba83321_5c259e314454f08d)
  unreachable
bb12:
  br label %bb13
bb13:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 26
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t41 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 7
  %t42 = load i64, ptr %l1, !tbaa !24
  %t45 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t41, i64 %t42)
  store %"compiler/typed:Local" %t45, ptr %l25
  br label %bb14
bb14:
  %t46 = getelementptr %"compiler/typed:Local", ptr %l25, i32 0, i32 4
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 7}
  store i32 %t47, ptr %l2
  %t49 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t51 = trunc i64 1 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb17
bb16:
  %t54 = load i32, ptr %l2, !range !{i32 0, i32 7}
  %t56 = trunc i64 3 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb17
bb17:
  %t59 = load i1, ptr %l29, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ematch(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca %"compiler/scope:Val"
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"compiler/scope:Val"
  %l17 = alloca %"compiler/scope:Val"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l51 = alloca i1
  %l61 = alloca ptr
  %l75 = alloca { i64, [2 x i64] }
  %l77 = alloca i1
  %l80 = alloca { i64, [2 x i64] }
  %l82 = alloca i1
  %l83 = alloca { i64, [2 x i64] }
  %l86 = alloca { i64, [2 x i64] }
  %l87 = alloca %"compiler/scope:Val"
  %l96 = alloca { i64, ptr }
  %l103 = alloca %"compiler/scope:Val"
  %l107 = alloca %"compiler/scope:Val"
  %l113 = alloca %"compiler/scope:Val"
  %l120 = alloca %"compiler/scope:Val"
  %l123 = alloca i1
  %l128 = alloca i1
  %l142 = alloca %"compiler/scope:Val"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Match", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Match", ptr %t8, i32 0, i32 3
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l23
  br label %bb4
bb3:
  br label %bb40
bb4:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l3
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Match", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l6, !tbaa !24
  br label %bb5
bb5:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb6, label %bb7
bb6:
  br label %bb17
bb7:
  br label %bb8
bb8:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t32, ptr %l32, !tbaa !27
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 %t33
  %t38 = load ptr, ptr %t37, !tbaa !39
  store ptr %t38, ptr %l7, !tbaa !29
  %t40 = load ptr, ptr %l7, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Arm", ptr %t40, i32 0, i32 4
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = icmp eq ptr %t43, null
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  store ptr %l3, ptr %l39, !tbaa !29
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Arm", ptr %t49, i32 0, i32 4
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t54 = icmp eq ptr %t52, null
  br i1 %t54, label %bb11, label %bb12
bb10:
  br label %bb15
bb11:
  call void @__olang_check_failed(ptr @olang_loc_af2a74d4afc5c43e_94f83f31bbc69a2a)
  unreachable
bb12:
  br label %bb13
bb13:
  %t56 = load ptr, ptr %l7, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Arm", ptr %t56, i32 0, i32 4
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t60 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s1, ptr %v1, ptr %t60, ptr %t59)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb5
bb17:
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Match", ptr %t66, i32 0, i32 2
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = icmp eq ptr %t69, null
  %t73 = xor i1 %t71, true
  br i1 %t73, label %bb18, label %bb19
bb18:
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Match", ptr %t75, i32 0, i32 2
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t80 = icmp eq ptr %t78, null
  br i1 %t80, label %bb20, label %bb21
bb19:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb23
bb20:
  call void @__olang_check_failed(ptr @olang_loc_71f08f1465b765e5_9e5dc3268d808631)
  unreachable
bb21:
  br label %bb22
bb22:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Match", ptr %t82, i32 0, i32 2
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t88 = getelementptr %"compiler/typed:Arm", ptr %t85, i32 0, i32 4
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = icmp eq ptr %t89, null
  %t93 = xor i1 %t91, true
  store i1 %t93, ptr %l51, !tbaa !21
  br label %bb23
bb23:
  %t95 = load i1, ptr %l51, !tbaa !21
  br i1 %t95, label %bb24, label %bb25
bb24:
  store ptr %l3, ptr %l61, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr %"compiler/typed:Match", ptr %t96, i32 0, i32 2
  %t99 = load ptr, ptr %t98, !tbaa !29
  %t101 = icmp eq ptr %t99, null
  br i1 %t101, label %bb26, label %bb27
bb25:
  br label %bb33
bb26:
  call void @__olang_check_failed(ptr @olang_loc_71f08f1465b765e5_9e5dc3268d808631)
  unreachable
bb27:
  br label %bb28
bb28:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Match", ptr %t103, i32 0, i32 2
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Arm", ptr %t106, i32 0, i32 4
  %t110 = load ptr, ptr %t109, !tbaa !29
  store ptr %t110, ptr %l8, !tbaa !29
  %t112 = load ptr, ptr %l8, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb29, label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_71f08f1465b765e5_9e5dc3268d808631)
  unreachable
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l8, !tbaa !29
  %t117 = load ptr, ptr %l61, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s1, ptr %v1, ptr %t117, ptr %t116)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t120 = load { i64, [2 x i64] }, ptr %l2
  %t124 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %s1, ptr %t119, ptr %l3, { i64, [2 x i64] } %t120)
  store { i64, [2 x i64] } %t124, ptr %l75
  br label %bb34
bb34:
  %t125 = load { i64, [2 x i64] }, ptr %l75
  store { i64, [2 x i64] } %t125, ptr %l2
  %t126 = load { i64, [2 x i64] }, ptr %l2
  %t128 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t126)
  store i1 %t128, ptr %l77
  br label %bb35
bb35:
  %t129 = load i1, ptr %l77, !tbaa !21
  %t130 = xor i1 %t129, true
  br i1 %t130, label %bb36, label %bb37
bb36:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t132)
  store { i64, [2 x i64] } %t134, ptr %l80
  br label %bb38
bb37:
  br label %bb39
bb38:
  %t135 = load { i64, [2 x i64] }, ptr %l80
  store { i64, [2 x i64] } %t135, ptr %l2
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s1)
  br label %bb40
bb40:
  %t136 = load { i64, [2 x i64] }, ptr %l2
  %t138 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t136)
  store i1 %t138, ptr %l82
  br label %bb41
bb41:
  %t139 = load i1, ptr %l82, !tbaa !21
  br i1 %t139, label %bb42, label %bb43
bb42:
  %t140 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t140, ptr %l83
  br label %bb45
bb43:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t142)
  store { i64, [2 x i64] } %t144, ptr %l86
  br label %bb44
bb44:
  %t145 = load { i64, [2 x i64] }, ptr %l86
  store { i64, [2 x i64] } %t145, ptr %l83
  br label %bb45
bb45:
  %t146 = load { i64, [2 x i64] }, ptr %l83
  store { i64, [2 x i64] } %t146, ptr %l9
  %t147 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
  store %"compiler/scope:Val" %t147, ptr %l87
  br label %bb46
bb46:
  %t148 = load %"compiler/scope:Val", ptr %l87
  store %"compiler/scope:Val" %t148, ptr %l10
  store i1 true, ptr %l11, !tbaa !21
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Match", ptr %t149, i32 0, i32 1
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 0
  store i64 %t156, ptr %l14, !tbaa !24
  br label %bb47
bb47:
  %t158 = load i64, ptr %l13, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp slt i64 %t158, %t159
  %t164 = xor i1 %t162, true
  br i1 %t164, label %bb48, label %bb49
bb48:
  br label %bb60
bb49:
  br label %bb50
bb50:
  %t166 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t166, ptr %l96, !tbaa !27
  %t167 = load i64, ptr %l13, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr ptr, ptr %t170, i64 %t167
  %t172 = load ptr, ptr %t171, !tbaa !39
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t177 = load { i64, [2 x i64] }, ptr %l2
  %t181 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earm(ptr %v0, ptr %v1, ptr %t174, ptr %t172, { i64, [2 x i64] } %t177)
  store %"compiler/scope:Val" %t181, ptr %l103
  br label %bb51
bb51:
  %t182 = load %"compiler/scope:Val", ptr %l103
  store %"compiler/scope:Val" %t182, ptr %l16
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Match", ptr %t183, i32 0, i32 3
  %t186 = load i1, ptr %t185, !tbaa !21
  br i1 %t186, label %bb52, label %bb53
bb52:
  %t188 = load i1, ptr %l11, !tbaa !21
  br i1 %t188, label %bb54, label %bb55
bb53:
  br label %bb58
bb54:
  %t190 = load %"compiler/scope:Val", ptr %l16
  store %"compiler/scope:Val" %t190, ptr %l107
  br label %bb57
bb55:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load %"compiler/scope:Val", ptr %l10
  %t194 = load %"compiler/scope:Val", ptr %l16
  %t195 = load { i64, [2 x i64] }, ptr %l9
  %t200 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %t192, %"compiler/scope:Val" %t193, %"compiler/scope:Val" %t194, { i64, [2 x i64] } %t195)
  store %"compiler/scope:Val" %t200, ptr %l113
  br label %bb56
bb56:
  %t201 = load %"compiler/scope:Val", ptr %l113
  store %"compiler/scope:Val" %t201, ptr %l107
  br label %bb57
bb57:
  %t202 = load %"compiler/scope:Val", ptr %l107
  store %"compiler/scope:Val" %t202, ptr %l10
  store i1 false, ptr %l11, !tbaa !21
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t203 = load i64, ptr %l13, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l13, !tbaa !24
  br label %bb47
bb60:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load ptr, ptr %l1, !tbaa !29
  %t210 = getelementptr %"compiler/typed:Match", ptr %t208, i32 0, i32 2
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t212 = load { i64, [2 x i64] }, ptr %l2
  %t216 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earm(ptr %v0, ptr %v1, ptr %t207, ptr %t211, { i64, [2 x i64] } %t212)
  store %"compiler/scope:Val" %t216, ptr %l120
  br label %bb61
bb61:
  %t217 = load %"compiler/scope:Val", ptr %l120
  store %"compiler/scope:Val" %t217, ptr %l17
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr %"compiler/typed:Match", ptr %t218, i32 0, i32 3
  %t221 = load i1, ptr %t220, !tbaa !21
  br i1 %t221, label %bb62, label %bb63
bb62:
  %t223 = load ptr, ptr %l1, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Match", ptr %t223, i32 0, i32 2
  %t226 = load ptr, ptr %t225, !tbaa !29
  %t228 = icmp eq ptr %t226, null
  %t230 = xor i1 %t228, true
  store i1 %t230, ptr %l123, !tbaa !21
  br label %bb64
bb63:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb64
bb64:
  %t232 = load i1, ptr %l123, !tbaa !21
  br i1 %t232, label %bb65, label %bb66
bb65:
  %t233 = load ptr, ptr %l1, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Match", ptr %t233, i32 0, i32 2
  %t236 = load ptr, ptr %t235, !tbaa !29
  %t238 = icmp eq ptr %t236, null
  br i1 %t238, label %bb67, label %bb68
bb66:
  store i1 false, ptr %l128, !tbaa !21
  br label %bb70
bb67:
  call void @__olang_check_failed(ptr @olang_loc_3f9209becdebaa90_11232388f96dbd3c)
  unreachable
bb68:
  br label %bb69
bb69:
  %t240 = load ptr, ptr %l1, !tbaa !29
  %t242 = getelementptr %"compiler/typed:Match", ptr %t240, i32 0, i32 2
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t246 = getelementptr %"compiler/typed:Arm", ptr %t243, i32 0, i32 4
  %t247 = load ptr, ptr %t246, !tbaa !29
  %t249 = icmp eq ptr %t247, null
  %t251 = xor i1 %t249, true
  store i1 %t251, ptr %l128, !tbaa !21
  br label %bb70
bb70:
  %t253 = load i1, ptr %l128, !tbaa !21
  br i1 %t253, label %bb71, label %bb72
bb71:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load %"compiler/scope:Val", ptr %l10
  %t256 = load %"compiler/scope:Val", ptr %l17
  %t257 = load { i64, [2 x i64] }, ptr %l9
  %t262 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %t254, %"compiler/scope:Val" %t255, %"compiler/scope:Val" %t256, { i64, [2 x i64] } %t257)
  store %"compiler/scope:Val" %t262, ptr %l142
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t263 = load %"compiler/scope:Val", ptr %l142
  store %"compiler/scope:Val" %t263, ptr %l10
  br label %bb74
bb74:
  %t264 = load %"compiler/scope:Val", ptr %l10
  store %"compiler/scope:Val" %t264, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emayHoldDtor(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"compiler/types:DtorWalk"
  %l6 = alloca %"compiler/types:DtorWalk"
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t8 = call %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %s0, ptr %t6)
  store %"compiler/types:DtorWalk" %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load %"compiler/types:DtorWalk", ptr %l6
  store %"compiler/types:DtorWalk" %t9, ptr %l2
  %t13 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %s0, ptr %v0, ptr %l2, i32 %a1)
  store i1 %t13, ptr %l9
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load i1, ptr %l9, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enamedRec(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"compiler/scope:fnRec"
  %l20 = alloca ptr
  %l21 = alloca i1
  %l30 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca i64
  %l40 = alloca { i64, [1 x i64] }
  %l47 = alloca ptr
  %l49 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"compiler/scope:fnRec"
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 3}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i32 }, ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb9
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l15, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t19 = sext i32 %t17 to i64
  store i64 %t19, ptr %l17, !tbaa !24
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l18
  br label %bb6
bb6:
  %t21 = load i64, ptr %l17, !tbaa !24
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t23 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s1, ptr %s1, i64 %t21, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, i1 false)
  store %"compiler/scope:fnRec" %t23, ptr %l19
  br label %bb7
bb7:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load %"compiler/scope:fnRec", ptr %l19
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s1, ptr %t24, %"compiler/scope:fnRec" %t25)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb35
bb9:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t27 = load ptr, ptr %l20, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t30 = load ptr, ptr %l20, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 3}
  %t33 = icmp eq i64 %t31, 1
  store i1 %t33, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t37, i32 0, i32 0
  %t39 = load i32, ptr %t38
  store i32 %t39, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb30
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 1
  %t44 = load i32, ptr %l4, !tbaa !23
  %t46 = sext i32 %t44 to i64
  %t49 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t43, i64 %t46)
  store ptr %t49, ptr %l30
  br label %bb15
bb15:
  %t50 = load ptr, ptr %l30, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Body", ptr %t50, i32 0, i32 6
  store ptr %t52, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l6, !tbaa !24
  store i64 %t54, ptr %l33, !tbaa !24
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t57 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t55)
  store i64 %t57, ptr %l35
  br label %bb17
bb17:
  %t58 = load i64, ptr %l33, !tbaa !24
  %t59 = load i64, ptr %l35, !tbaa !24
  %t60 = icmp slt i64 %t58, %t59
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t64 = load ptr, ptr %l5, !tbaa !29
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t64, i64 %t65)
  store { i64, [1 x i64] } %t68, ptr %l40
  br label %bb21
bb21:
  %t69 = load { i64, [1 x i64] }, ptr %l40
  store { i64, [1 x i64] } %t69, ptr %l7
  %t70 = load { i64, [1 x i64] }, ptr %l7
  %t72 = extractvalue { i64, [1 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 4
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = getelementptr { i64, [1 x i64] }, ptr %l7, i32 0, i32 1
  %t76 = getelementptr { i32 }, ptr %t75, i32 0, i32 0
  %t77 = load i32, ptr %t76
  store i32 %t77, ptr %l8, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  store i32 65536, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb16
bb26:
  %t84 = load ptr, ptr %l2, !tbaa !29
  store ptr %t84, ptr %l47, !tbaa !29
  %t85 = load i32, ptr %l4, !tbaa !23
  %t87 = sext i32 %t85 to i64
  store i64 %t87, ptr %l49, !tbaa !24
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l50
  br label %bb27
bb27:
  %t89 = load i64, ptr %l49, !tbaa !24
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  %t91 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s2, ptr %s2, i64 %t89, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, i1 false)
  store %"compiler/scope:fnRec" %t91, ptr %l51
  br label %bb28
bb28:
  %t92 = load ptr, ptr %l47, !tbaa !29
  %t93 = load %"compiler/scope:fnRec", ptr %l51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v2, ptr %s2, ptr %t92, %"compiler/scope:fnRec" %t93)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i32 65536, ptr %rv
  br label %ret
bb34:
  call void @__olang_check_failed(ptr @olang_loc_15d2e36e7a971de9_96fafacf11681305)
  unreachable
bb35:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eoutside(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/typed:Local"
  %l11 = alloca %"compiler/typed:Local"
  %l14 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
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
  call void @__olang_check_failed(ptr @olang_loc_623296b25c4a2534_fd3f86d02d068538)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t14 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 7
  %t18 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t14, i64 %a1)
  store %"compiler/typed:Local" %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load %"compiler/typed:Local", ptr %l11
  store %"compiler/typed:Local" %t19, ptr %l2
  %t20 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 4
  %t21 = load i32, ptr %t20, !range !{i32 0, i32 7}
  %t23 = trunc i64 0 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb7
bb6:
  %t26 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 4
  %t27 = load i32, ptr %t26, !range !{i32 0, i32 7}
  %t29 = trunc i64 5 to i32
  %t30 = icmp eq i32 %t27, %t29
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb8, label %bb9
bb8:
  store i1 true, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 26
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = icmp eq ptr %t37, null
  br i1 %t39, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_954f6d28b3a52ac3_ffd2f75d7c0d3157)
  unreachable
bb12:
  br label %bb13
bb13:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/scope:Scoper", ptr %t41, i32 0, i32 26
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/scope:Scoper", ptr %t45, i32 0, i32 140
  %t48 = load i32, ptr %t47, !tbaa !23
  %t49 = getelementptr %"compiler/typed:Local", ptr %l2, i32 0, i32 3
  %t50 = load i32, ptr %t49, !tbaa !23
  %t54 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %t44, i32 %t48, i32 %t50)
  store i1 %t54, ptr %l26
  br label %bb14
bb14:
  %t55 = load i1, ptr %l26, !tbaa !21
  %t56 = xor i1 %t55, true
  store i1 %t56, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l33 = alloca i64
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l52 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb12
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t17)
  store i32 %t19, ptr %l15
  br label %bb6
bb6:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i32, ptr %l15, !tbaa !23
  %t22 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edeclOf(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t22, ptr %l16
  br label %bb7
bb7:
  %t23 = load i64, ptr %l16, !tbaa !24
  store i64 %t23, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  br i1 %t26, label %bb8, label %bb9
bb8:
  %t28 = load i64, ptr %l3, !tbaa !24
  store i64 %t28, ptr %l19, !tbaa !24
  br label %bb11
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t34 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %v1, ptr %t30, ptr %t31)
  store i64 %t34, ptr %l23
  br label %bb10
bb10:
  %t35 = load i64, ptr %l23, !tbaa !24
  store i64 %t35, ptr %l19, !tbaa !24
  br label %bb11
bb11:
  %t36 = load i64, ptr %l19, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
bb12:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t38 = load ptr, ptr %l24, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t41 = load ptr, ptr %l24, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 8}
  %t44 = icmp eq i64 %t42, 4
  store i1 %t44, ptr %l25, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l25, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [4 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l4, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Elem", ptr %t53, i32 0, i32 0
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t59 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %v1, ptr %t52, ptr %t56)
  store i64 %t59, ptr %l33
  br label %bb18
bb18:
  %t60 = load i64, ptr %l33, !tbaa !24
  store i64 %t60, ptr %rv
  br label %ret
bb19:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t62 = load ptr, ptr %l34, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb20, label %bb21
bb20:
  %t65 = load ptr, ptr %l34, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 8}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l35, !tbaa !21
  br label %bb21
bb21:
  %t69 = load i1, ptr %l35, !tbaa !21
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Payload", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t83 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplaceDecl(ptr %v0, ptr %v1, ptr %t76, ptr %t80)
  store i64 %t83, ptr %l43
  br label %bb25
bb25:
  %t84 = load i64, ptr %l43, !tbaa !24
  store i64 %t84, ptr %rv
  br label %ret
bb26:
  %t85 = load ptr, ptr %l1, !tbaa !29
  store ptr %t85, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t86 = load ptr, ptr %l44, !tbaa !29
  %t87 = icmp ne ptr %t86, null
  br i1 %t87, label %bb27, label %bb28
bb27:
  %t89 = load ptr, ptr %l44, !tbaa !29
  %t90 = load i64, ptr %t89, !range !{i64 0, i64 8}
  %t92 = icmp eq i64 %t90, 2
  store i1 %t92, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l45, !tbaa !21
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 1
  %t97 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t96, i32 0, i32 2
  %t98 = load ptr, ptr %t97
  store ptr %t98, ptr %l6, !tbaa !29
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t104 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldDecl(ptr %v0, ptr %v1, ptr %t100, ptr %t101)
  store i64 %t104, ptr %l52
  br label %bb32
bb32:
  %t105 = load i64, ptr %l52, !tbaa !24
  store i64 %t105, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i64 -1, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_5baf3d09f3018ecb_366b631d7db0e35f)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eposOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca { i64, [1 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l16 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i64
  %l26 = alloca { i64, [1 x i64] }
  %l32 = alloca i64
  %l36 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i64
  %l61 = alloca i64
  %l67 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  store { i64, [2 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l3
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb41
bb3:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  br i1 %t12, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb7
bb5:
  %t14 = load i64, ptr %l4, !tbaa !24
  store i64 %t14, ptr %l17, !tbaa !24
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t15, i32 0, i32 6
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t17)
  store i64 %t19, ptr %l20
  br label %bb6
bb6:
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = load i64, ptr %l20, !tbaa !24
  %t22 = icmp sge i64 %t20, %t21
  store i1 %t22, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Body", ptr %t27, i32 0, i32 6
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v1, ptr %t29, i64 %t30)
  store { i64, [1 x i64] } %t33, ptr %l26
  br label %bb11
bb11:
  %t34 = load { i64, [1 x i64] }, ptr %l26
  store { i64, [1 x i64] } %t34, ptr %l5
  %t35 = load { i64, [1 x i64] }, ptr %l5
  %t37 = extractvalue { i64, [1 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 0
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = getelementptr { i64, [1 x i64] }, ptr %l5, i32 0, i32 1
  %t41 = getelementptr { i32 }, ptr %t40, i32 0, i32 0
  %t42 = load i32, ptr %t41
  store i32 %t42, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb28
bb14:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load i32, ptr %l6, !tbaa !23
  %t48 = call i64 @compiler_2fscope_2eparamIndexIn(ptr %v1, ptr %t44, i32 %t45)
  store i64 %t48, ptr %l32
  br label %bb15
bb15:
  %t49 = load i64, ptr %l32, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  %t50 = load i1, ptr %l2, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp eq i64 %t52, 0
  br i1 %t54, label %bb18, label %bb19
bb17:
  br label %bb24
bb18:
  %t56 = load i64, ptr @G_2ecompiler_2fscope_2ePosHome, !tbaa !24
  store i64 %t56, ptr %l36, !tbaa !24
  br label %bb23
bb19:
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = icmp sgt i64 %t58, 0
  br i1 %t60, label %bb20, label %bb21
bb20:
  %t62 = load i64, ptr %l7, !tbaa !24
  %t64 = sub i64 %t62, 1
  store i64 %t64, ptr %l40, !tbaa !24
  br label %bb22
bb21:
  %t66 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t66, ptr %l40, !tbaa !24
  br label %bb22
bb22:
  %t68 = load i64, ptr %l40, !tbaa !24
  store i64 %t68, ptr %l36, !tbaa !24
  br label %bb23
bb23:
  %t69 = load i64, ptr %l36, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
bb24:
  %t70 = load i64, ptr %l7, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  br i1 %t72, label %bb25, label %bb26
bb25:
  %t74 = load i64, ptr %l7, !tbaa !24
  store i64 %t74, ptr %l46, !tbaa !24
  br label %bb27
bb26:
  %t76 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t76, ptr %l46, !tbaa !24
  br label %bb27
bb27:
  %t78 = load i64, ptr %l46, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb28:
  %t79 = load { i64, [1 x i64] }, ptr %l5
  %t81 = extractvalue { i64, [1 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 1
  br i1 %t82, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t84 = load i64, ptr @G_2ecompiler_2fscope_2ePosResult, !tbaa !24
  store i64 %t84, ptr %rv
  br label %ret
bb32:
  %t86 = load { i64, [1 x i64] }, ptr %l5
  %t88 = extractvalue { i64, [1 x i64] } %t86, 0
  %t89 = icmp eq i64 %t88, 4
  br i1 %t89, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t91 = load i64, ptr @G_2ecompiler_2fscope_2ePosHome, !tbaa !24
  store i64 %t91, ptr %rv
  br label %ret
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  %t93 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t93, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_154bf1a548ff7697_769c4cc2e13b72fb)
  unreachable
bb41:
  %t95 = load { i64, [2 x i64] }, ptr %l3
  %t97 = extractvalue { i64, [2 x i64] } %t95, 0
  %t98 = icmp eq i64 %t97, 4
  br i1 %t98, label %bb42, label %bb43
bb42:
  %t100 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t101 = getelementptr { i64, i64 }, ptr %t100, i32 0, i32 0
  %t102 = load i64, ptr %t101
  store i64 %t102, ptr %l8, !tbaa !24
  %t104 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t105 = getelementptr { i64, i64 }, ptr %t104, i32 0, i32 1
  %t106 = load i64, ptr %t105
  store i64 %t106, ptr %l9, !tbaa !24
  br label %bb44
bb43:
  br label %bb57
bb44:
  %t108 = load i1, ptr %l2, !tbaa !21
  br i1 %t108, label %bb45, label %bb46
bb45:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t112 = sub i64 %t110, 1
  store i64 %t112, ptr %l61, !tbaa !24
  br label %bb47
bb46:
  %t114 = load i64, ptr %l8, !tbaa !24
  store i64 %t114, ptr %l61, !tbaa !24
  br label %bb47
bb47:
  %t116 = load i64, ptr %l61, !tbaa !24
  store i64 %t116, ptr %l10, !tbaa !24
  %t117 = load i64, ptr %l10, !tbaa !24
  %t119 = icmp sge i64 %t117, 0
  br i1 %t119, label %bb48, label %bb49
bb48:
  %t121 = load i64, ptr %l9, !tbaa !24
  %t123 = icmp sge i64 %t121, 0
  store i1 %t123, ptr %l67, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb50
bb50:
  %t125 = load i1, ptr %l67, !tbaa !21
  br i1 %t125, label %bb51, label %bb52
bb51:
  %t126 = load i64, ptr %l9, !tbaa !24
  %t128 = icmp slt i64 %t126, 65536
  store i1 %t128, ptr %l70, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb53
bb53:
  %t130 = load i1, ptr %l70, !tbaa !21
  br i1 %t130, label %bb54, label %bb55
bb54:
  %t131 = load i64, ptr @G_2ecompiler_2fscope_2ePosDerived, !tbaa !24
  %t132 = load i64, ptr %l10, !tbaa !24
  %t134 = mul i64 65536, %t132
  %t137 = add i64 %t131, %t134
  %t138 = load i64, ptr %l9, !tbaa !24
  %t141 = add i64 %t137, %t138
  store i64 %t141, ptr %l73, !tbaa !24
  br label %bb56
bb55:
  %t143 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t143, ptr %l73, !tbaa !24
  br label %bb56
bb56:
  %t145 = load i64, ptr %l73, !tbaa !24
  store i64 %t145, ptr %rv
  br label %ret
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t146 = load i64, ptr @G_2ecompiler_2fscope_2ePosNone, !tbaa !24
  store i64 %t146, ptr %rv
  br label %ret
bb61:
  call void @__olang_check_failed(ptr @olang_loc_2cd4932c1a9a7df6_c7fde3e5cca54e7a)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeView(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca %"compiler/source:Span"
  %l51 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l68 = alloca ptr
  %l79 = alloca ptr
  %l82 = alloca i32
  %l83 = alloca i64
  %l86 = alloca i1
  %l92 = alloca ptr
  %l93 = alloca i64
  %l95 = alloca %"compiler/source:Span"
  %l98 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l109 = alloca i64
  %l118 = alloca ptr
  %l119 = alloca i64
  %l121 = alloca %"compiler/source:Span"
  %l131 = alloca ptr
  %l132 = alloca i64
  %l134 = alloca %"compiler/source:Span"
  %l136 = alloca i64
  %l143 = alloca i64
  %l146 = alloca ptr
  %l147 = alloca i64
  %l148 = alloca { i64, [2 x i64] }
  %l150 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t2 = load ptr, ptr %l17, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l17, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l18, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l18, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t16 = load ptr, ptr %l3, !tbaa !29
  store ptr %t16, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t17 = load ptr, ptr %l23, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l23, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l24, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l24, !tbaa !21
  %t25 = xor i1 %t24, true
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr { i64, [4 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t30, i32 0, i32 0
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l4, !tbaa !23
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t36, i32 0, i32 1
  %t38 = load { i64, ptr }, ptr %t37
  store { i64, ptr } %t38, ptr %l5, !tbaa !27
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr { i64, [4 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t42, i32 0, i32 2
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l6, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 207
  %t49 = load i1, ptr %t48, !tbaa !21
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 210
  store i1 true, ptr %t55, !tbaa !21
  store i1 true, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l40, !tbaa !29
  %t58 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceCapture, !tbaa !24
  store i64 %t58, ptr %l41, !tbaa !24
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t59)
  store %"compiler/source:Span" %t61, ptr %l43
  br label %bb14
bb14:
  %t62 = load ptr, ptr %l40, !tbaa !29
  %t63 = load i64, ptr %l41, !tbaa !24
  %t64 = load %"compiler/source:Span", ptr %l43
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t62, i64 %t63, %"compiler/source:Span" %t64)
  br label %bb15
bb15:
  %t65 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t65, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l9, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  br label %bb19
bb19:
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t79, ptr %l51, !tbaa !27
  %t80 = load i64, ptr %l8, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 %t80
  %t85 = load ptr, ptr %t84, !tbaa !39
  store ptr %t85, ptr %l10, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l54, !tbaa !29
  %t88 = load ptr, ptr %l10, !tbaa !29
  %t90 = getelementptr %"compiler/typed:Capture", ptr %t88, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t91)
  store i32 %t93, ptr %l57
  br label %bb20
bb20:
  %t94 = load ptr, ptr %l54, !tbaa !29
  %t95 = load i32, ptr %l57, !tbaa !23
  %t96 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t94, i32 %t95)
  store i1 %t96, ptr %l58
  br label %bb21
bb21:
  %t97 = load i1, ptr %l58, !tbaa !21
  br i1 %t97, label %bb22, label %bb23
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l10, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Capture", ptr %t99, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !29
  %t103 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %t98, ptr %t102, { i64, [2 x i64] } %t103)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t107 = load i64, ptr %l8, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l8, !tbaa !24
  br label %bb16
bb27:
  store i1 true, ptr %rv
  br label %ret
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_3aa6b1bdb3eeaea7_b2680d59346154d3)
  unreachable
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t116 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedCall(ptr %v0, ptr %v1, ptr %v1, ptr %t112, ptr %t113)
  store ptr %t116, ptr %l68
  br label %bb34
bb34:
  %t117 = load ptr, ptr %l68, !tbaa !29
  store ptr %t117, ptr %l11, !tbaa !29
  %t118 = load ptr, ptr %l11, !tbaa !29
  %t120 = icmp eq ptr %t118, null
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb35, label %bb36
bb35:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 207
  %t127 = load i1, ptr %t126, !tbaa !21
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb37, label %bb38
bb36:
  br label %bb51
bb37:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 210
  store i1 true, ptr %t133, !tbaa !21
  store i1 false, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/scope:Scoper", ptr %t135, i32 0, i32 0
  %t138 = load ptr, ptr %t137, !tbaa !29
  %t140 = getelementptr %"compiler/generic:Program", ptr %t138, i32 0, i32 2
  store ptr %t140, ptr %l79, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l11, !tbaa !29
  %t145 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t141, ptr %t142)
  store i32 %t145, ptr %l82
  br label %bb40
bb40:
  %t146 = load ptr, ptr %l79, !tbaa !29
  %t147 = load i32, ptr %l82, !tbaa !23
  %t148 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t146, i32 %t147, i64 0)
  store i64 %t148, ptr %l83
  br label %bb41
bb41:
  %t149 = load i64, ptr %l83, !tbaa !24
  store i64 %t149, ptr %l12, !tbaa !24
  %t150 = load i64, ptr %l12, !tbaa !24
  %t152 = icmp sge i64 %t150, 0
  br i1 %t152, label %bb42, label %bb43
bb42:
  %t154 = load i64, ptr %l12, !tbaa !24
  %t155 = load ptr, ptr %l11, !tbaa !29
  %t157 = getelementptr %"compiler/typed:Call", ptr %t155, i32 0, i32 1
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t163 = icmp slt i64 %t154, %t160
  store i1 %t163, ptr %l86, !tbaa !21
  br label %bb44
bb43:
  store i1 false, ptr %l86, !tbaa !21
  br label %bb44
bb44:
  %t165 = load i1, ptr %l86, !tbaa !21
  br i1 %t165, label %bb45, label %bb46
bb45:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l92, !tbaa !29
  %t167 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  store i64 %t167, ptr %l93, !tbaa !24
  %t168 = load ptr, ptr %l1, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t168)
  store %"compiler/source:Span" %t170, ptr %l95
  br label %bb47
bb46:
  br label %bb50
bb47:
  %t171 = load ptr, ptr %l92, !tbaa !29
  %t172 = load i64, ptr %l93, !tbaa !24
  %t173 = load %"compiler/source:Span", ptr %l95
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t171, i64 %t172, %"compiler/source:Span" %t173)
  br label %bb48
bb48:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l11, !tbaa !29
  %t177 = getelementptr %"compiler/typed:Call", ptr %t175, i32 0, i32 1
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l98, !tbaa !27
  %t179 = load i64, ptr %l12, !tbaa !24
  %t181 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t182 = load ptr, ptr %t181, !tbaa !27
  %t183 = getelementptr ptr, ptr %t182, i64 %t179
  %t184 = load ptr, ptr %t183, !tbaa !39
  %t185 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %t174, ptr %t184, { i64, [2 x i64] } %t185)
  br label %bb49
bb49:
  br label %bb50
bb50:
  store i1 false, ptr %rv
  br label %ret
bb51:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t194 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewBase(ptr %v0, ptr %v1, ptr %v1, ptr %t190, ptr %t191)
  store ptr %t194, ptr %l105
  br label %bb52
bb52:
  %t195 = load ptr, ptr %l105, !tbaa !29
  store ptr %t195, ptr %l13, !tbaa !29
  %t196 = load ptr, ptr %l13, !tbaa !29
  %t198 = icmp eq ptr %t196, null
  br i1 %t198, label %bb53, label %bb54
bb53:
  %t200 = load ptr, ptr %l1, !tbaa !29
  %t202 = call i64 @compiler_2fscope_2econvertedLocal(ptr %v1, ptr %t200)
  store i64 %t202, ptr %l109
  br label %bb55
bb54:
  br label %bb65
bb55:
  %t203 = load i64, ptr %l109, !tbaa !24
  store i64 %t203, ptr %l14, !tbaa !24
  %t204 = load i64, ptr %l14, !tbaa !24
  %t206 = icmp slt i64 %t204, 0
  br i1 %t206, label %bb56, label %bb57
bb56:
  store i1 false, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/scope:Scoper", ptr %t209, i32 0, i32 207
  %t212 = load i1, ptr %t211, !tbaa !21
  %t214 = xor i1 %t212, true
  br i1 %t214, label %bb59, label %bb60
bb59:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/scope:Scoper", ptr %t216, i32 0, i32 210
  store i1 true, ptr %t218, !tbaa !21
  store i1 true, ptr %rv
  br label %ret
bb60:
  br label %bb61
bb61:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l118, !tbaa !29
  %t221 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  store i64 %t221, ptr %l119, !tbaa !24
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t222)
  store %"compiler/source:Span" %t224, ptr %l121
  br label %bb62
bb62:
  %t225 = load ptr, ptr %l118, !tbaa !29
  %t226 = load i64, ptr %l119, !tbaa !24
  %t227 = load %"compiler/source:Span", ptr %l121
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t225, i64 %t226, %"compiler/source:Span" %t227)
  br label %bb63
bb63:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i64, ptr %l14, !tbaa !24
  %t230 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %t228, i64 %t229, { i64, [2 x i64] } %t230, i1 false)
  br label %bb64
bb64:
  store i1 true, ptr %rv
  br label %ret
bb65:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/scope:Scoper", ptr %t235, i32 0, i32 207
  %t238 = load i1, ptr %t237, !tbaa !21
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb66, label %bb67
bb66:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 210
  store i1 true, ptr %t244, !tbaa !21
  store i1 true, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l131, !tbaa !29
  %t247 = load i64, ptr @G_2ecompiler_2fscope_2ePlaceView, !tbaa !24
  store i64 %t247, ptr %l132, !tbaa !24
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t250 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t248)
  store %"compiler/source:Span" %t250, ptr %l134
  br label %bb69
bb69:
  %t251 = load ptr, ptr %l131, !tbaa !29
  %t252 = load i64, ptr %l132, !tbaa !24
  %t253 = load %"compiler/source:Span", ptr %l134
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %t251, i64 %t252, %"compiler/source:Span" %t253)
  br label %bb70
bb70:
  %t254 = load ptr, ptr %l13, !tbaa !29
  %t256 = call i64 @compiler_2fscope_2etempSite(ptr %v1, ptr %t254)
  store i64 %t256, ptr %l136
  br label %bb71
bb71:
  %t257 = load i64, ptr %l136, !tbaa !24
  store i64 %t257, ptr %l15, !tbaa !24
  %t258 = load i64, ptr %l15, !tbaa !24
  %t260 = icmp sge i64 %t258, 0
  br i1 %t260, label %bb72, label %bb73
bb72:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i64, ptr %l15, !tbaa !24
  %t264 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %t262, i64 %t263, { i64, [2 x i64] } %t264)
  br label %bb74
bb73:
  %t268 = load ptr, ptr %l13, !tbaa !29
  %t270 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t268)
  store i64 %t270, ptr %l143
  br label %bb75
bb74:
  br label %bb81
bb75:
  %t271 = load i64, ptr %l143, !tbaa !24
  store i64 %t271, ptr %l16, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t274 = icmp sge i64 %t272, 0
  br i1 %t274, label %bb76, label %bb77
bb76:
  %t276 = load ptr, ptr %l0, !tbaa !29
  store ptr %t276, ptr %l146, !tbaa !29
  %t277 = load i64, ptr %l16, !tbaa !24
  store i64 %t277, ptr %l147, !tbaa !24
  %t278 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t278, ptr %l148
  %t279 = load ptr, ptr %l13, !tbaa !29
  %t281 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t279)
  store i1 %t281, ptr %l150
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t282 = load ptr, ptr %l146, !tbaa !29
  %t283 = load i64, ptr %l147, !tbaa !24
  %t284 = load { i64, [2 x i64] }, ptr %l148
  %t285 = load i1, ptr %l150, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %t282, i64 %t283, { i64, [2 x i64] } %t284, i1 %t285)
  br label %bb79
bb79:
  br label %bb80
bb80:
  br label %bb81
bb81:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionParam(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i1
  %l15 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i64
  %l29 = alloca i64
  %l31 = alloca i1
  %l35 = alloca i64
  %l37 = alloca i1
  %l38 = alloca ptr
  %l47 = alloca %"compiler/typed:Local"
  %l49 = alloca i1
  %l53 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i64
  %l62 = alloca i64
  %l64 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  %t5 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t5, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l6, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 122
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l9
  br label %bb4
bb4:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l9, !tbaa !24
  %t15 = icmp slt i64 %t13, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 122
  %t20 = load i64, ptr %l1, !tbaa !24
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l15
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb8
bb7:
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = icmp sge i64 %t24, 0
  store i1 %t25, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l11, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 122
  %t31 = load i64, ptr %l1, !tbaa !24
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  store i64 %t34, ptr %l20
  br label %bb11
bb10:
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l26, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 121
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t38)
  store i64 %t40, ptr %l29
  br label %bb16
bb11:
  %t41 = load i64, ptr %l20, !tbaa !24
  store i64 %t41, ptr %l1, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t42, i64 %t43)
  store i1 %t46, ptr %l23
  br label %bb12
bb12:
  %t47 = load i1, ptr %l23, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load i64, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t50, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb33
bb16:
  %t52 = load i64, ptr %l26, !tbaa !24
  %t53 = load i64, ptr %l29, !tbaa !24
  %t54 = icmp slt i64 %t52, %t53
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/scope:Scoper", ptr %t56, i32 0, i32 121
  %t59 = load i64, ptr %l1, !tbaa !24
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t58, i64 %t59)
  store i64 %t62, ptr %l35
  br label %bb19
bb18:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb20
bb19:
  %t63 = load i64, ptr %l35, !tbaa !24
  %t64 = icmp sge i64 %t63, 0
  store i1 %t64, ptr %l31, !tbaa !21
  br label %bb20
bb20:
  %t66 = load i1, ptr %l31, !tbaa !21
  br i1 %t66, label %bb21, label %bb22
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l38, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t68, i32 0, i32 26
  %t71 = load ptr, ptr %t70, !tbaa !29
  %t73 = icmp eq ptr %t71, null
  br i1 %t73, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb28
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9047b81d628cb92_30df04453bf66e76)
  unreachable
bb24:
  br label %bb25
bb25:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 26
  %t78 = load ptr, ptr %t77, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Body", ptr %t78, i32 0, i32 7
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t81, i64 %t82)
  store %"compiler/typed:Local" %t85, ptr %l47
  br label %bb26
bb26:
  %t86 = getelementptr %"compiler/typed:Local", ptr %l47, i32 0, i32 2
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load ptr, ptr %l38, !tbaa !29
  %t90 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t88, i32 %t87)
  store i1 %t90, ptr %l49
  br label %bb27
bb27:
  %t91 = load i1, ptr %l49, !tbaa !21
  store i1 %t91, ptr %l37, !tbaa !21
  br label %bb28
bb28:
  %t92 = load i1, ptr %l37, !tbaa !21
  br i1 %t92, label %bb29, label %bb30
bb29:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 121
  %t96 = load i64, ptr %l1, !tbaa !24
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l53
  br label %bb31
bb30:
  br label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  %t100 = load i64, ptr %l53, !tbaa !24
  store i64 %t100, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i64, ptr %l1, !tbaa !24
  %t105 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %s0, ptr %t101, i64 %t102)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l56
  br label %bb34
bb34:
  %t107 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l56)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t107, ptr %l58
  br label %bb35
bb35:
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l2
  %t110 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t110, ptr %l60
  br label %bb36
bb36:
  %t111 = load i64, ptr %l60, !tbaa !24
  %t112 = icmp eq i64 %t111, 1
  br i1 %t112, label %bb37, label %bb38
bb37:
  %t115 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l2, i64 0)
  store i64 %t115, ptr %l64
  br label %bb39
bb38:
  %t116 = load i64, ptr %l1, !tbaa !24
  store i64 %t116, ptr %l62, !tbaa !24
  br label %bb40
bb39:
  %t118 = load i64, ptr %l64, !tbaa !24
  store i64 %t118, ptr %l62, !tbaa !24
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s0)
  %t119 = load i64, ptr %l62, !tbaa !24
  store i64 %t119, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultVarOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !tbaa !23
  %t2 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t5 = icmp eq i32 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/generic:Program", ptr %t11, i32 0, i32 2
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t13, i32 %t14)
  store { i64, ptr } %t17, ptr %l17
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb5, label %bb6
bb5:
  %t29 = load i64, ptr %l5, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb7:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l26, !tbaa !24
  store i64 %t49, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l23, !tbaa !24
  store i64 %t50, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb12, label %bb13
bb12:
  br label %bb19
bb13:
  br label %bb14
bb14:
  %t59 = load i64, ptr %l3, !tbaa !24
  %t60 = load i64, ptr %l7, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l8, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i64, ptr %t72, i64 %t69
  %t74 = load i64, ptr %t73, !tbaa !34
  %t75 = load i64, ptr @G_2ecompiler_2ftypes_2eResultVar, !tbaa !24
  %t78 = icmp eq i64 %t74, %t75
  br i1 %t78, label %bb15, label %bb16
bb15:
  %t80 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t80, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t82 = load i64, ptr %l7, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l7, !tbaa !24
  br label %bb11
bb19:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erootOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l51 = alloca i1
  %l52 = alloca ptr
  %l54 = alloca i32
  %l55 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l63 = alloca %"compiler/source:Span"
  %l65 = alloca i32
  %rv = alloca ptr
  %t127 = alloca { i64, [5 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t16, ptr %t17)
  store ptr %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l16, !tbaa !29
  store ptr %t21, ptr %l7, !tbaa !29
  br label %bb36
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 4
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Elem", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t44 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t37, ptr %t41)
  store ptr %t44, ptr %l26
  br label %bb13
bb13:
  %t45 = load ptr, ptr %l26, !tbaa !29
  store ptr %t45, ptr %l7, !tbaa !29
  br label %bb36
bb14:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l27, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 5
  store i1 %t53, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l28, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t57 = getelementptr { i64, [4 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 2
  %t59 = load ptr, ptr %t58
  store ptr %t59, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/typed:Payload", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t68 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %t61, ptr %t65)
  store ptr %t68, ptr %l36
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l36, !tbaa !29
  store ptr %t69, ptr %l7, !tbaa !29
  br label %bb36
bb21:
  %t70 = load ptr, ptr %l1, !tbaa !29
  store ptr %t70, ptr %l37, !tbaa !29
  store i1 false, ptr %l38, !tbaa !21
  %t71 = load ptr, ptr %l37, !tbaa !29
  %t72 = icmp ne ptr %t71, null
  br i1 %t72, label %bb22, label %bb23
bb22:
  %t74 = load ptr, ptr %l37, !tbaa !29
  %t75 = load i64, ptr %t74, !range !{i64 0, i64 8}
  %t77 = icmp eq i64 %t75, 2
  store i1 %t77, ptr %l38, !tbaa !21
  br label %bb23
bb23:
  %t78 = load i1, ptr %l38, !tbaa !21
  br i1 %t78, label %bb24, label %bb25
bb24:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr { i64, [4 x i64] }, ptr %t79, i32 0, i32 1
  %t82 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t81, i32 0, i32 2
  %t83 = load ptr, ptr %t82
  store ptr %t83, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t85 = load ptr, ptr %l5, !tbaa !29
  %t87 = call i1 @compiler_2ftyped_2ePure(ptr %v1, ptr %t85)
  store i1 %t87, ptr %l44
  br label %bb27
bb27:
  %t88 = load i1, ptr %l44, !tbaa !21
  br i1 %t88, label %bb28, label %bb29
bb28:
  %t89 = load ptr, ptr %l5, !tbaa !29
  store ptr %t89, ptr %l45, !tbaa !29
  br label %bb30
bb29:
  store ptr null, ptr %l45, !tbaa !29
  br label %bb30
bb30:
  %t92 = load ptr, ptr %l45, !tbaa !29
  store ptr %t92, ptr %l7, !tbaa !29
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store ptr null, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_5d0c71a8d2ef6a59_68b86ffb86527df5)
  unreachable
bb36:
  %t93 = load ptr, ptr %l7, !tbaa !29
  store ptr %t93, ptr %l6, !tbaa !29
  %t94 = load ptr, ptr %l6, !tbaa !29
  %t96 = icmp eq ptr %t94, null
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb37, label %bb38
bb37:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb41
bb38:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l52, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t101)
  store i32 %t103, ptr %l54
  br label %bb39
bb39:
  %t104 = load ptr, ptr %l52, !tbaa !29
  %t105 = load i32, ptr %l54, !tbaa !23
  %t106 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t104, i32 %t105)
  store i1 %t106, ptr %l55
  br label %bb40
bb40:
  %t107 = load i1, ptr %l55, !tbaa !21
  %t108 = xor i1 %t107, true
  store i1 %t108, ptr %l51, !tbaa !21
  br label %bb41
bb41:
  %t110 = load i1, ptr %l51, !tbaa !21
  br i1 %t110, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb45
bb43:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = call i1 @compiler_2ftyped_2ePurePlace(ptr %v1, ptr %t111)
  store i1 %t113, ptr %l59
  br label %bb44
bb44:
  %t114 = load i1, ptr %l59, !tbaa !21
  %t115 = xor i1 %t114, true
  store i1 %t115, ptr %l57, !tbaa !21
  br label %bb45
bb45:
  %t117 = load i1, ptr %l57, !tbaa !21
  br i1 %t117, label %bb46, label %bb47
bb46:
  %t118 = load ptr, ptr %l6, !tbaa !29
  store ptr %t118, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v1, ptr %t120)
  store %"compiler/source:Span" %t122, ptr %l63
  br label %bb49
bb49:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t123)
  store i32 %t125, ptr %l65
  br label %bb50
bb50:
  %t126 = load ptr, ptr %l1, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t127
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 0
  store i64 2, ptr %t128
  %t129 = load %"compiler/source:Span", ptr %l63
  %t130 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } undef, %"compiler/source:Span" %t129, 0
  %t131 = load i32, ptr %l65, !tbaa !23
  %t132 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t130, i32 %t131, 1
  %t134 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t132, ptr %t126, 2
  %t135 = insertvalue { %"compiler/source:Span", i32, ptr, i32 } %t134, i32 -1, 3
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, i32 } %t135, ptr %t136
  %t137 = load { i64, [5 x i64] }, ptr %t127
  %t139 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t137, ptr %t139
  store ptr %t139, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
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
  %l14 = alloca { i64, [1 x i64] }
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca { i64, [1 x i64] }
  %l25 = alloca i32
  %l26 = alloca ptr
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca { i64, [2 x i64] }
  %l30 = alloca %"compiler/scope:walked"
  %l31 = alloca ptr
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i32
  %l43 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca i64
  %l58 = alloca i64
  %l83 = alloca ptr
  %l90 = alloca %"compiler/typed:Local"
  %l93 = alloca i1
  %l100 = alloca %"compiler/typed:Local"
  %l103 = alloca i64
  %l113 = alloca i64
  %l117 = alloca i64
  %l120 = alloca i64
  %l144 = alloca { i64, [1 x i64] }
  %l176 = alloca i64
  %l179 = alloca ptr
  %l185 = alloca i32
  %l196 = alloca i64
  %l200 = alloca i64
  %l203 = alloca i64
  %l227 = alloca i32
  %l235 = alloca %"compiler/typed:Local"
  %l244 = alloca { i64, [2 x i64] }
  %l248 = alloca ptr
  %l250 = alloca i64
  %l255 = alloca { i64, [2 x i64] }
  %l263 = alloca i64
  %l265 = alloca i64
  %l270 = alloca i32
  %l274 = alloca { i64, [2 x i64] }
  %l283 = alloca { i64, ptr }
  %l285 = alloca i64
  %l288 = alloca { i64, [2 x i64] }
  %l289 = alloca ptr
  %l290 = alloca { i64, [2 x i64] }
  %l298 = alloca %"compiler/typed:Local"
  %l299 = alloca %"compiler/source:Span"
  %l304 = alloca i64
  %l312 = alloca %"compiler/typed:Local"
  %l323 = alloca i1
  %l324 = alloca ptr
  %l328 = alloca i1
  %l329 = alloca %"compiler/scope:walked"
  %l341 = alloca i64
  %l343 = alloca i64
  %l348 = alloca i32
  %l351 = alloca ptr
  %l359 = alloca %"compiler/typed:Local"
  %l361 = alloca i32
  %l364 = alloca i1
  %l365 = alloca i1
  %l370 = alloca i32
  %l374 = alloca i1
  %l379 = alloca i32
  %l384 = alloca i1
  %l385 = alloca i1
  %l389 = alloca i1
  %l391 = alloca i64
  %l395 = alloca i64
  %l398 = alloca i64
  %l418 = alloca i64
  %l424 = alloca i32
  %l427 = alloca i1
  %l430 = alloca ptr
  %l435 = alloca i32
  %l436 = alloca i64
  %l452 = alloca ptr
  %l464 = alloca i32
  %l467 = alloca i32
  %l468 = alloca i32
  %s22 = alloca %olang.scope
  %t66 = alloca { i64, [2 x i64] }, align 8
  %t74 = alloca { i64, [2 x i64] }, align 8
  %t217 = alloca { i64, [2 x i64] }, align 8
  %t242 = alloca { i64, [2 x i64] }, align 8
  %t300 = alloca { i64, [2 x i64] }, align 8
  %t588 = alloca %"compiler/scope:walked", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_8136fe9cd009015e_effe087bfaf9a8aa)
  unreachable
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t10, i32 0, i32 7
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l51
  br label %bb4
bb4:
  %t16 = load i64, ptr %l51, !tbaa !24
  store i64 %t16, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb10
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l4, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l58, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l58, !tbaa !24
  store i64 %t43, ptr %l55, !tbaa !24
  br label %bb10
bb10:
  %t44 = load i64, ptr %l55, !tbaa !24
  store i64 %t44, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb12, label %bb13
bb12:
  br label %bb34
bb13:
  br label %bb14
bb14:
  %t53 = load i64, ptr %l2, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l7, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 34
  store { i64, [2 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 0
  store i64 0, ptr %t67
  %t68 = load { i64, [2 x i64] }, ptr %t66
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t65, { i64, [2 x i64] } %t68)
  br label %bb15
bb15:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 35
  store { i64, [2 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 0
  store i64 1, ptr %t75
  %t76 = insertvalue { i32 } undef, i32 0, 0
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 1
  store { i32 } %t76, ptr %t77
  %t78 = load { i64, [2 x i64] }, ptr %t74
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t73, { i64, [2 x i64] } %t78)
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/scope:Scoper", ptr %t81, i32 0, i32 194
  store ptr %t83, ptr %l83, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb17, label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_989f9a5853b8d905_f9638c70ccb394b1)
  unreachable
bb18:
  br label %bb19
bb19:
  %t88 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Body", ptr %t88, i32 0, i32 7
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t91, i64 %t92)
  store %"compiler/typed:Local" %t95, ptr %l90
  br label %bb20
bb20:
  %t96 = getelementptr %"compiler/typed:Local", ptr %l90, i32 0, i32 4
  %t97 = load i32, ptr %t96, !range !{i32 0, i32 7}
  %t99 = trunc i64 1 to i32
  %t100 = icmp eq i32 %t97, %t99
  br i1 %t100, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb27
bb22:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = icmp eq ptr %t102, null
  br i1 %t104, label %bb23, label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_989f9a5853b8d905_f9638c70ccb394b1)
  unreachable
bb24:
  br label %bb25
bb25:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t109 = getelementptr %"compiler/typed:Body", ptr %t106, i32 0, i32 7
  %t110 = load i64, ptr %l7, !tbaa !24
  %t113 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t109, i64 %t110)
  store %"compiler/typed:Local" %t113, ptr %l100
  br label %bb26
bb26:
  %t114 = getelementptr %"compiler/typed:Local", ptr %l100, i32 0, i32 4
  %t115 = load i32, ptr %t114, !range !{i32 0, i32 7}
  %t117 = trunc i64 3 to i32
  %t118 = icmp eq i32 %t115, %t117
  store i1 %t118, ptr %l93, !tbaa !21
  br label %bb27
bb27:
  %t120 = load i1, ptr %l93, !tbaa !21
  br i1 %t120, label %bb28, label %bb29
bb28:
  store i64 -1, ptr %l103, !tbaa !24
  br label %bb30
bb29:
  store i64 -2, ptr %l103, !tbaa !24
  br label %bb30
bb30:
  %t121 = load ptr, ptr %l83, !tbaa !29
  %t122 = load i64, ptr %l103, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb31
bb31:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 195
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t125, i64 -1)
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t127 = load i64, ptr %l6, !tbaa !24
  %t129 = add i64 %t127, 1
  store i64 %t129, ptr %l6, !tbaa !24
  br label %bb11
bb34:
  store i64 0, ptr %l8, !tbaa !24
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = icmp eq ptr %t131, null
  br i1 %t133, label %bb35, label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_9ce8ff5a7c812fb0_6c28ecd338a0cbbc)
  unreachable
bb36:
  br label %bb37
bb37:
  %t135 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr %"compiler/typed:Body", ptr %t135, i32 0, i32 6
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t138)
  store i64 %t140, ptr %l113
  br label %bb38
bb38:
  %t141 = load i64, ptr %l113, !tbaa !24
  store i64 %t141, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t143 = load i64, ptr %l8, !tbaa !24
  %t146 = icmp sgt i64 %t142, %t143
  br i1 %t146, label %bb39, label %bb40
bb39:
  %t148 = load i64, ptr %l10, !tbaa !24
  %t150 = icmp sgt i64 %t148, 0
  br i1 %t150, label %bb41, label %bb42
bb40:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb44
bb41:
  %t152 = load i64, ptr %l9, !tbaa !24
  %t153 = load i64, ptr %l8, !tbaa !24
  %t156 = sub i64 %t152, %t153
  %t157 = load i64, ptr %l10, !tbaa !24
  %t160 = add i64 %t156, %t157
  %t162 = sub i64 %t160, 1
  %t163 = load i64, ptr %l10, !tbaa !24
  %t166 = sdiv i64 %t162, %t163
  store i64 %t166, ptr %l120, !tbaa !24
  br label %bb43
bb42:
  store i64 0, ptr %l120, !tbaa !24
  br label %bb43
bb43:
  %t168 = load i64, ptr %l120, !tbaa !24
  store i64 %t168, ptr %l117, !tbaa !24
  br label %bb44
bb44:
  %t169 = load i64, ptr %l117, !tbaa !24
  store i64 %t169, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb45
bb45:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t171 = load i64, ptr %l11, !tbaa !24
  %t174 = icmp slt i64 %t170, %t171
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb46, label %bb47
bb46:
  br label %bb87
bb47:
  br label %bb48
bb48:
  %t178 = load i64, ptr %l8, !tbaa !24
  %t179 = load i64, ptr %l12, !tbaa !24
  %t180 = load i64, ptr %l10, !tbaa !24
  %t183 = mul i64 %t179, %t180
  %t186 = add i64 %t178, %t183
  store i64 %t186, ptr %l13, !tbaa !24
  %t188 = load ptr, ptr %l1, !tbaa !29
  %t190 = icmp eq ptr %t188, null
  br i1 %t190, label %bb49, label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_5c3642998b37ea8f_438088e259bab72b)
  unreachable
bb50:
  br label %bb51
bb51:
  %t192 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Body", ptr %t192, i32 0, i32 6
  %t196 = load i64, ptr %l13, !tbaa !24
  %t199 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t195, i64 %t196)
  store { i64, [1 x i64] } %t199, ptr %l144
  br label %bb52
bb52:
  %t200 = load { i64, [1 x i64] }, ptr %l144
  store { i64, [1 x i64] } %t200, ptr %l14
  %t201 = load { i64, [1 x i64] }, ptr %l14
  %t203 = extractvalue { i64, [1 x i64] } %t201, 0
  %t204 = icmp eq i64 %t203, 0
  br i1 %t204, label %bb53, label %bb54
bb53:
  %t206 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t207 = getelementptr { i32 }, ptr %t206, i32 0, i32 0
  %t208 = load i32, ptr %t207
  store i32 %t208, ptr %l15, !tbaa !23
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t212 = getelementptr %"compiler/scope:Scoper", ptr %t210, i32 0, i32 34
  %t213 = load i32, ptr %l15, !tbaa !23
  %t215 = sext i32 %t213 to i64
  %t216 = load i64, ptr %l13, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 0
  store i64 2, ptr %t218
  %t220 = insertvalue { i64 } undef, i64 %t216, 0
  %t221 = getelementptr { i64, [2 x i64] }, ptr %t217, i32 0, i32 1
  store { i64 } %t220, ptr %t221
  %t222 = load { i64, [2 x i64] }, ptr %t217
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t212, i64 %t215, { i64, [2 x i64] } %t222)
  br label %bb56
bb56:
  br label %bb85
bb57:
  %t226 = load { i64, [1 x i64] }, ptr %l14
  %t228 = extractvalue { i64, [1 x i64] } %t226, 0
  %t229 = icmp eq i64 %t228, 4
  br i1 %t229, label %bb58, label %bb59
bb58:
  %t231 = getelementptr { i64, [1 x i64] }, ptr %l14, i32 0, i32 1
  %t232 = getelementptr { i32 }, ptr %t231, i32 0, i32 0
  %t233 = load i32, ptr %t232
  store i32 %t233, ptr %l16, !tbaa !23
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/scope:Scoper", ptr %t235, i32 0, i32 34
  %t238 = load i32, ptr %l16, !tbaa !23
  %t240 = sext i32 %t238 to i64
  %t241 = load i64, ptr %l13, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t242
  %t243 = getelementptr { i64, [2 x i64] }, ptr %t242, i32 0, i32 0
  store i64 2, ptr %t243
  %t245 = insertvalue { i64 } undef, i64 %t241, 0
  %t246 = getelementptr { i64, [2 x i64] }, ptr %t242, i32 0, i32 1
  store { i64 } %t245, ptr %t246
  %t247 = load { i64, [2 x i64] }, ptr %t242
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t237, i64 %t240, { i64, [2 x i64] } %t247)
  br label %bb61
bb61:
  br label %bb85
bb62:
  %t251 = load { i64, [1 x i64] }, ptr %l14
  %t253 = extractvalue { i64, [1 x i64] } %t251, 0
  %t254 = icmp eq i64 %t253, 1
  br i1 %t254, label %bb63, label %bb64
bb63:
  br label %bb67
bb64:
  %t256 = load { i64, [1 x i64] }, ptr %l14
  %t258 = extractvalue { i64, [1 x i64] } %t256, 0
  %t259 = icmp eq i64 %t258, 2
  br i1 %t259, label %bb65, label %bb66
bb65:
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l13, !tbaa !24
  %t265 = getelementptr %"compiler/scope:Scoper", ptr %t261, i32 0, i32 42
  store i64 %t262, ptr %t265, !tbaa !24
  br label %bb85
bb68:
  %t266 = load { i64, [1 x i64] }, ptr %l14
  %t268 = extractvalue { i64, [1 x i64] } %t266, 0
  %t269 = icmp eq i64 %t268, 3
  br i1 %t269, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb84
bb71:
  %t271 = load ptr, ptr %l1, !tbaa !29
  %t273 = icmp eq ptr %t271, null
  br i1 %t273, label %bb72, label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_486c515bb0c7ed42_3dcfa333a8d1daa6)
  unreachable
bb73:
  br label %bb74
bb74:
  %t275 = load ptr, ptr %l1, !tbaa !29
  %t278 = getelementptr %"compiler/typed:Body", ptr %t275, i32 0, i32 5
  %t280 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t278)
  store i64 %t280, ptr %l176
  br label %bb75
bb75:
  %t281 = load i64, ptr %l176, !tbaa !24
  %t282 = icmp sgt i64 %t281, 0
  br i1 %t282, label %bb76, label %bb77
bb76:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = getelementptr %"compiler/scope:Scoper", ptr %t284, i32 0, i32 34
  store ptr %t286, ptr %l179, !tbaa !29
  %t287 = load ptr, ptr %l1, !tbaa !29
  %t289 = icmp eq ptr %t287, null
  br i1 %t289, label %bb78, label %bb79
bb77:
  br label %bb83
bb78:
  call void @__olang_check_failed(ptr @olang_loc_486c515bb0c7ed42_3dcfa333a8d1daa6)
  unreachable
bb79:
  br label %bb80
bb80:
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Body", ptr %t291, i32 0, i32 5
  %t296 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t294, i64 0)
  store i32 %t296, ptr %l185
  br label %bb81
bb81:
  %t297 = load i32, ptr %l185, !tbaa !23
  %t298 = sext i32 %t297 to i64
  %t299 = load i64, ptr %l13, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t300
  %t301 = getelementptr { i64, [2 x i64] }, ptr %t300, i32 0, i32 0
  store i64 2, ptr %t301
  %t303 = insertvalue { i64 } undef, i64 %t299, 0
  %t304 = getelementptr { i64, [2 x i64] }, ptr %t300, i32 0, i32 1
  store { i64 } %t303, ptr %t304
  %t305 = load { i64, [2 x i64] }, ptr %t300
  %t306 = load ptr, ptr %l179, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t306, i64 %t298, { i64, [2 x i64] } %t305)
  br label %bb82
bb82:
  br label %bb83
bb83:
  br label %bb85
bb84:
  call void @__olang_check_failed(ptr @olang_loc_ed4ec6d3513e2b60_3036131f8fea9d34)
  unreachable
bb85:
  br label %bb86
bb86:
  %t309 = load i64, ptr %l12, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l12, !tbaa !24
  br label %bb45
bb87:
  store i64 0, ptr %l17, !tbaa !24
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t315 = icmp eq ptr %t313, null
  br i1 %t315, label %bb88, label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_b48db41ed7b5d734_952948d9de5cb478)
  unreachable
bb89:
  br label %bb90
bb90:
  %t317 = load ptr, ptr %l1, !tbaa !29
  %t320 = getelementptr %"compiler/typed:Body", ptr %t317, i32 0, i32 5
  %t322 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t320)
  store i64 %t322, ptr %l196
  br label %bb91
bb91:
  %t323 = load i64, ptr %l196, !tbaa !24
  store i64 %t323, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t324 = load i64, ptr %l18, !tbaa !24
  %t325 = load i64, ptr %l17, !tbaa !24
  %t328 = icmp sgt i64 %t324, %t325
  br i1 %t328, label %bb92, label %bb93
bb92:
  %t330 = load i64, ptr %l19, !tbaa !24
  %t332 = icmp sgt i64 %t330, 0
  br i1 %t332, label %bb94, label %bb95
bb93:
  store i64 0, ptr %l200, !tbaa !24
  br label %bb97
bb94:
  %t334 = load i64, ptr %l18, !tbaa !24
  %t335 = load i64, ptr %l17, !tbaa !24
  %t338 = sub i64 %t334, %t335
  %t339 = load i64, ptr %l19, !tbaa !24
  %t342 = add i64 %t338, %t339
  %t344 = sub i64 %t342, 1
  %t345 = load i64, ptr %l19, !tbaa !24
  %t348 = sdiv i64 %t344, %t345
  store i64 %t348, ptr %l203, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l203, !tbaa !24
  br label %bb96
bb96:
  %t350 = load i64, ptr %l203, !tbaa !24
  store i64 %t350, ptr %l200, !tbaa !24
  br label %bb97
bb97:
  %t351 = load i64, ptr %l200, !tbaa !24
  store i64 %t351, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb98
bb98:
  %t352 = load i64, ptr %l21, !tbaa !24
  %t353 = load i64, ptr %l20, !tbaa !24
  %t356 = icmp slt i64 %t352, %t353
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb99, label %bb100
bb99:
  br label %bb126
bb100:
  br label %bb101
bb101:
  %t360 = load i64, ptr %l17, !tbaa !24
  %t361 = load i64, ptr %l21, !tbaa !24
  %t362 = load i64, ptr %l19, !tbaa !24
  %t365 = mul i64 %t361, %t362
  %t368 = add i64 %t360, %t365
  store i64 %t368, ptr %l22, !tbaa !24
  %t370 = load ptr, ptr %l1, !tbaa !29
  %t372 = icmp eq ptr %t370, null
  br i1 %t372, label %bb102, label %bb103
bb102:
  call void @__olang_check_failed(ptr @olang_loc_e7aa8a952f10dcc3_5e7ff2b7646c8097)
  unreachable
bb103:
  br label %bb104
bb104:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t377 = getelementptr %"compiler/typed:Body", ptr %t374, i32 0, i32 5
  %t378 = load i64, ptr %l22, !tbaa !24
  %t381 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t377, i64 %t378)
  store i32 %t381, ptr %l227
  br label %bb105
bb105:
  %t382 = load i32, ptr %l227, !tbaa !23
  store i32 %t382, ptr %l23, !tbaa !23
  %t383 = load ptr, ptr %l1, !tbaa !29
  %t385 = icmp eq ptr %t383, null
  br i1 %t385, label %bb106, label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_dc4554eebbf8456_460c8fdf10d01e52)
  unreachable
bb107:
  br label %bb108
bb108:
  %t387 = load ptr, ptr %l1, !tbaa !29
  %t390 = getelementptr %"compiler/typed:Body", ptr %t387, i32 0, i32 7
  %t391 = load i32, ptr %l23, !tbaa !23
  %t393 = sext i32 %t391 to i64
  %t396 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t390, i64 %t393)
  store %"compiler/typed:Local" %t396, ptr %l235
  br label %bb109
bb109:
  %t397 = getelementptr %"compiler/typed:Local", ptr %l235, i32 0, i32 5
  %t398 = load { i64, [1 x i64] }, ptr %t397
  store { i64, [1 x i64] } %t398, ptr %l24
  %t400 = load { i64, [1 x i64] }, ptr %l24
  %t402 = extractvalue { i64, [1 x i64] } %t400, 0
  %t403 = icmp eq i64 %t402, 2
  br i1 %t403, label %bb110, label %bb111
bb110:
  %t405 = getelementptr { i64, [1 x i64] }, ptr %l24, i32 0, i32 1
  %t406 = getelementptr { i32 }, ptr %t405, i32 0, i32 0
  %t407 = load i32, ptr %t406
  store i32 %t407, ptr %l25, !tbaa !23
  br label %bb112
bb111:
  br label %bb119
bb112:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/scope:Scoper", ptr %t409, i32 0, i32 34
  %t412 = load i32, ptr %l23, !tbaa !23
  %t414 = sext i32 %t412 to i64
  %t417 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t411, i64 %t414)
  store { i64, [2 x i64] } %t417, ptr %l244
  br label %bb113
bb113:
  %t418 = load { i64, [2 x i64] }, ptr %l244
  %t420 = extractvalue { i64, [2 x i64] } %t418, 0
  %t421 = icmp eq i64 %t420, 0
  br i1 %t421, label %bb114, label %bb115
bb114:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/scope:Scoper", ptr %t423, i32 0, i32 34
  store ptr %t425, ptr %l248, !tbaa !29
  %t426 = load i32, ptr %l23, !tbaa !23
  %t428 = sext i32 %t426 to i64
  store i64 %t428, ptr %l250, !tbaa !24
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t431 = getelementptr %"compiler/scope:Scoper", ptr %t429, i32 0, i32 34
  %t432 = load i32, ptr %l25, !tbaa !23
  %t434 = sext i32 %t432 to i64
  %t437 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t431, i64 %t434)
  store { i64, [2 x i64] } %t437, ptr %l255
  br label %bb116
bb115:
  br label %bb118
bb116:
  %t438 = load ptr, ptr %l248, !tbaa !29
  %t439 = load i64, ptr %l250, !tbaa !24
  %t440 = load { i64, [2 x i64] }, ptr %l255
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t438, i64 %t439, { i64, [2 x i64] } %t440)
  br label %bb117
bb117:
  br label %bb118
bb118:
  br label %bb124
bb119:
  br i1 true, label %bb120, label %bb121
bb120:
  br label %bb122
bb121:
  br label %bb123
bb122:
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_ab37e5456fd3bb64_ee38acc32440dcb0)
  unreachable
bb124:
  br label %bb125
bb125:
  %t441 = load i64, ptr %l21, !tbaa !24
  %t443 = add i64 %t441, 1
  store i64 %t443, ptr %l21, !tbaa !24
  br label %bb98
bb126:
  %t445 = load ptr, ptr %l1, !tbaa !29
  %t447 = icmp eq ptr %t445, null
  br i1 %t447, label %bb127, label %bb128
bb127:
  call void @__olang_check_failed(ptr @olang_loc_c2f9290c57ed376d_cbd7590e0cb57901)
  unreachable
bb128:
  br label %bb129
bb129:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t452 = getelementptr %"compiler/typed:Body", ptr %t449, i32 0, i32 5
  store ptr %t452, ptr %l26, !tbaa !29
  store i64 0, ptr %l27, !tbaa !24
  br label %bb130
bb130:
  %t454 = load i64, ptr %l27, !tbaa !24
  store i64 %t454, ptr %l263, !tbaa !24
  %t455 = load ptr, ptr %l26, !tbaa !29
  %t457 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t455)
  store i64 %t457, ptr %l265
  br label %bb131
bb131:
  %t458 = load i64, ptr %l263, !tbaa !24
  %t459 = load i64, ptr %l265, !tbaa !24
  %t460 = icmp slt i64 %t458, %t459
  %t462 = xor i1 %t460, true
  br i1 %t462, label %bb132, label %bb133
bb132:
  br label %bb155
bb133:
  br label %bb134
bb134:
  %t464 = load ptr, ptr %l26, !tbaa !29
  %t465 = load i64, ptr %l27, !tbaa !24
  %t468 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t464, i64 %t465)
  store i32 %t468, ptr %l270
  br label %bb135
bb135:
  %t469 = load i32, ptr %l270, !tbaa !23
  store i32 %t469, ptr %l28, !tbaa !23
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t471 = load i32, ptr %l28, !tbaa !23
  %t473 = sext i32 %t471 to i64
  %t476 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamLift(ptr %v0, ptr %t470, i64 %t473)
  store { i64, [2 x i64] } %t476, ptr %l274
  br label %bb136
bb136:
  %t477 = load { i64, [2 x i64] }, ptr %l274
  store { i64, [2 x i64] } %t477, ptr %l29
  %t478 = load { i64, [2 x i64] }, ptr %l29
  %t480 = extractvalue { i64, [2 x i64] } %t478, 0
  %t481 = icmp eq i64 %t480, 0
  br i1 %t481, label %bb137, label %bb138
bb137:
  br label %bb154
bb138:
  br label %bb139
bb139:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t485 = getelementptr %"compiler/scope:Scoper", ptr %t483, i32 0, i32 35
  %t486 = load i32, ptr %l28, !tbaa !23
  %t488 = sext i32 %t486 to i64
  %t489 = load { i64, [2 x i64] }, ptr %l29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t485, i64 %t488, { i64, [2 x i64] } %t489)
  br label %bb140
bb140:
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/scope:Scoper", ptr %t493, i32 0, i32 33
  %t496 = getelementptr %"compiler/typed:Plan", ptr %t495, i32 0, i32 1
  %t497 = load { i64, ptr }, ptr %t496, !tbaa !27
  store { i64, ptr } %t497, ptr %l283, !tbaa !27
  %t498 = load i32, ptr %l28, !tbaa !23
  %t500 = sext i32 %t498 to i64
  store i64 %t500, ptr %l285, !tbaa !24
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t502 = load { i64, [2 x i64] }, ptr %l29
  %t505 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t501, { i64, [2 x i64] } %t502)
  store { i64, [2 x i64] } %t505, ptr %l288
  br label %bb141
bb141:
  %t506 = load { i64, [2 x i64] }, ptr %l288
  %t507 = load i64, ptr %l285, !tbaa !24
  %t508 = getelementptr { i64, ptr }, ptr %l283, i32 0, i32 1
  %t509 = load ptr, ptr %t508, !tbaa !27
  %t510 = getelementptr { i64, [2 x i64] }, ptr %t509, i64 %t507
  store { i64, [2 x i64] } %t506, ptr %t510
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l289, !tbaa !29
  %t512 = load { i64, [2 x i64] }, ptr %l29
  store { i64, [2 x i64] } %t512, ptr %l290
  %t513 = load ptr, ptr %l1, !tbaa !29
  %t515 = icmp eq ptr %t513, null
  br i1 %t515, label %bb142, label %bb143
bb142:
  call void @__olang_check_failed(ptr @olang_loc_c0d893db7e601486_f2e0d00716145a7a)
  unreachable
bb143:
  br label %bb144
bb144:
  %t517 = load ptr, ptr %l1, !tbaa !29
  %t520 = getelementptr %"compiler/typed:Body", ptr %t517, i32 0, i32 7
  %t521 = load i32, ptr %l28, !tbaa !23
  %t523 = sext i32 %t521 to i64
  %t526 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t520, i64 %t523)
  store %"compiler/typed:Local" %t526, ptr %l298
  br label %bb145
bb145:
  %t527 = getelementptr %"compiler/typed:Local", ptr %l298, i32 0, i32 1
  %t528 = load %"compiler/source:Span", ptr %t527
  store %"compiler/source:Span" %t528, ptr %l299
  %t529 = load ptr, ptr %l1, !tbaa !29
  %t531 = icmp eq ptr %t529, null
  br i1 %t531, label %bb146, label %bb147
bb146:
  call void @__olang_check_failed(ptr @olang_loc_c0d893db7e601486_f2e0d00716145a7a)
  unreachable
bb147:
  br label %bb148
bb148:
  %t533 = load ptr, ptr %l1, !tbaa !29
  %t536 = getelementptr %"compiler/typed:Body", ptr %t533, i32 0, i32 3
  %t537 = load i64, ptr %t536, !tbaa !24
  store i64 %t537, ptr %l304, !tbaa !24
  %t538 = load ptr, ptr %l1, !tbaa !29
  %t540 = icmp eq ptr %t538, null
  br i1 %t540, label %bb149, label %bb150
bb149:
  call void @__olang_check_failed(ptr @olang_loc_c0d893db7e601486_f2e0d00716145a7a)
  unreachable
bb150:
  br label %bb151
bb151:
  %t542 = load ptr, ptr %l1, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Body", ptr %t542, i32 0, i32 7
  %t546 = load i32, ptr %l28, !tbaa !23
  %t548 = sext i32 %t546 to i64
  %t551 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t545, i64 %t548)
  store %"compiler/typed:Local" %t551, ptr %l312
  br label %bb152
bb152:
  %t552 = getelementptr %"compiler/typed:Local", ptr %l312, i32 0, i32 1
  %t553 = load %"compiler/source:Span", ptr %t552
  %t554 = load ptr, ptr %l289, !tbaa !29
  %t555 = load { i64, [2 x i64] }, ptr %l290
  %t556 = load %"compiler/source:Span", ptr %l299
  %t557 = load i64, ptr %l304, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t554, { i64, [2 x i64] } %t555, %"compiler/source:Span" %t556, i64 %t557, %"compiler/source:Span" %t553)
  br label %bb153
bb153:
  br label %bb154
bb154:
  %t559 = load i64, ptr %l27, !tbaa !24
  %t561 = add i64 %t559, 1
  store i64 %t561, ptr %l27, !tbaa !24
  br label %bb130
bb155:
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = icmp eq ptr %t563, null
  br i1 %t565, label %bb156, label %bb157
bb156:
  call void @__olang_check_failed(ptr @olang_loc_dcd7e57cabd1f877_41684d2a22884c3b)
  unreachable
bb157:
  br label %bb158
bb158:
  %t567 = load ptr, ptr %l1, !tbaa !29
  %t570 = getelementptr %"compiler/typed:Body", ptr %t567, i32 0, i32 11
  %t571 = load ptr, ptr %t570, !tbaa !29
  %t573 = icmp eq ptr %t571, null
  %t575 = xor i1 %t573, true
  br i1 %t575, label %bb159, label %bb160
bb159:
  %t577 = load ptr, ptr %l0, !tbaa !29
  store ptr %t577, ptr %l324, !tbaa !29
  %t578 = load ptr, ptr %l1, !tbaa !29
  %t580 = icmp eq ptr %t578, null
  br i1 %t580, label %bb161, label %bb162
bb160:
  store i1 false, ptr %l323, !tbaa !21
  br label %bb165
bb161:
  call void @__olang_check_failed(ptr @olang_loc_dcd7e57cabd1f877_41684d2a22884c3b)
  unreachable
bb162:
  br label %bb163
bb163:
  %t582 = load ptr, ptr %l1, !tbaa !29
  %t583 = load ptr, ptr %l324, !tbaa !29
  %t585 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunArrayParam(ptr %v0, ptr %v0, ptr %t583, ptr %t582)
  store i1 %t585, ptr %l328
  br label %bb164
bb164:
  %t586 = load i1, ptr %l328, !tbaa !21
  store i1 %t586, ptr %l323, !tbaa !21
  br label %bb165
bb165:
  %t587 = load i1, ptr %l323, !tbaa !21
  br i1 %t587, label %bb166, label %bb167
bb166:
  store %olang.scope zeroinitializer, ptr %s22
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3awalked(ptr %t588, ptr %s22)
  call void @llvm.memmove.p0.p0.i64(ptr %l329, ptr %t588, i64 424, i1 false)
  br label %bb168
bb167:
  br label %bb236
bb168:
  call void @llvm.memmove.p0.p0.i64(ptr %l30, ptr %l329, i64 424, i1 false)
  %t589 = load ptr, ptr %l1, !tbaa !29
  %t591 = icmp eq ptr %t589, null
  br i1 %t591, label %bb169, label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_1d5cd0d51560a858_414b0c179bc0efcc)
  unreachable
bb170:
  br label %bb171
bb171:
  %t593 = load ptr, ptr %l1, !tbaa !29
  %t596 = getelementptr %"compiler/typed:Body", ptr %t593, i32 0, i32 11
  %t597 = load ptr, ptr %t596, !tbaa !29
  call void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %s22, ptr %t597, ptr %l30)
  br label %bb172
bb172:
  %t600 = load ptr, ptr %l1, !tbaa !29
  %t602 = icmp eq ptr %t600, null
  br i1 %t602, label %bb173, label %bb174
bb173:
  call void @__olang_check_failed(ptr @olang_loc_83cb1a0080c88b91_4687383f0631b81d)
  unreachable
bb174:
  br label %bb175
bb175:
  %t604 = load ptr, ptr %l1, !tbaa !29
  %t607 = getelementptr %"compiler/typed:Body", ptr %t604, i32 0, i32 5
  store ptr %t607, ptr %l31, !tbaa !29
  store i64 0, ptr %l32, !tbaa !24
  br label %bb176
bb176:
  %t609 = load i64, ptr %l32, !tbaa !24
  store i64 %t609, ptr %l341, !tbaa !24
  %t610 = load ptr, ptr %l31, !tbaa !29
  %t612 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t610)
  store i64 %t612, ptr %l343
  br label %bb177
bb177:
  %t613 = load i64, ptr %l341, !tbaa !24
  %t614 = load i64, ptr %l343, !tbaa !24
  %t615 = icmp slt i64 %t613, %t614
  %t617 = xor i1 %t615, true
  br i1 %t617, label %bb178, label %bb179
bb178:
  br label %bb235
bb179:
  br label %bb180
bb180:
  %t619 = load ptr, ptr %l31, !tbaa !29
  %t620 = load i64, ptr %l32, !tbaa !24
  %t623 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t619, i64 %t620)
  store i32 %t623, ptr %l348
  br label %bb181
bb181:
  %t624 = load i32, ptr %l348, !tbaa !23
  store i32 %t624, ptr %l33, !tbaa !23
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t627 = getelementptr %"compiler/scope:Scoper", ptr %t625, i32 0, i32 0
  %t628 = load ptr, ptr %t627, !tbaa !29
  %t630 = getelementptr %"compiler/generic:Program", ptr %t628, i32 0, i32 2
  store ptr %t630, ptr %l351, !tbaa !29
  %t631 = load ptr, ptr %l1, !tbaa !29
  %t633 = icmp eq ptr %t631, null
  br i1 %t633, label %bb182, label %bb183
bb182:
  call void @__olang_check_failed(ptr @olang_loc_761b19f0f038728a_814968e4094408b6)
  unreachable
bb183:
  br label %bb184
bb184:
  %t635 = load ptr, ptr %l1, !tbaa !29
  %t638 = getelementptr %"compiler/typed:Body", ptr %t635, i32 0, i32 7
  %t639 = load i32, ptr %l33, !tbaa !23
  %t641 = sext i32 %t639 to i64
  %t644 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t638, i64 %t641)
  store %"compiler/typed:Local" %t644, ptr %l359
  br label %bb185
bb185:
  %t645 = getelementptr %"compiler/typed:Local", ptr %l359, i32 0, i32 2
  %t646 = load i32, ptr %t645, !tbaa !23
  %t647 = load ptr, ptr %l351, !tbaa !29
  %t649 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t647, i32 %t646)
  store i32 %t649, ptr %l361
  br label %bb186
bb186:
  %t650 = load i32, ptr %l361, !tbaa !23
  store i32 %t650, ptr %l34, !tbaa !23
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t652 = load i32, ptr %l34, !tbaa !23
  %t655 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t651, i32 %t652)
  store i1 %t655, ptr %l364
  br label %bb187
bb187:
  %t656 = load i1, ptr %l364, !tbaa !21
  br i1 %t656, label %bb188, label %bb189
bb188:
  store i1 true, ptr %l365, !tbaa !21
  br label %bb191
bb189:
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t659 = getelementptr %"compiler/scope:Scoper", ptr %t657, i32 0, i32 0
  %t660 = load ptr, ptr %t659, !tbaa !29
  %t662 = getelementptr %"compiler/generic:Program", ptr %t660, i32 0, i32 2
  %t663 = load i32, ptr %l34, !tbaa !23
  %t666 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t662, i32 %t663)
  store i32 %t666, ptr %l370
  br label %bb190
bb190:
  %t667 = load i32, ptr %l370, !range !{i32 0, i32 33}
  %t669 = trunc i64 19 to i32
  %t670 = icmp eq i32 %t667, %t669
  %t672 = xor i1 %t670, true
  store i1 %t672, ptr %l365, !tbaa !21
  br label %bb191
bb191:
  %t674 = load i1, ptr %l365, !tbaa !21
  br i1 %t674, label %bb192, label %bb193
bb192:
  store i1 true, ptr %l374, !tbaa !21
  br label %bb195
bb193:
  %t675 = load ptr, ptr %l0, !tbaa !29
  %t677 = getelementptr %"compiler/scope:Scoper", ptr %t675, i32 0, i32 0
  %t678 = load ptr, ptr %t677, !tbaa !29
  %t680 = getelementptr %"compiler/generic:Program", ptr %t678, i32 0, i32 2
  %t681 = load i32, ptr %l34, !tbaa !23
  %t684 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t680, i32 %t681)
  store i32 %t684, ptr %l379
  br label %bb194
bb194:
  %t685 = load i32, ptr %l379, !tbaa !23
  %t686 = icmp ne i32 %t685, 0
  store i1 %t686, ptr %l374, !tbaa !21
  br label %bb195
bb195:
  %t688 = load i1, ptr %l374, !tbaa !21
  br i1 %t688, label %bb196, label %bb197
bb196:
  br label %bb234
bb197:
  br label %bb198
bb198:
  %t689 = getelementptr %"compiler/scope:walked", ptr %l30, i32 0, i32 2
  %t690 = load i32, ptr %l33, !tbaa !23
  %t692 = sext i32 %t690 to i64
  %t695 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s22, ptr %t689, i64 %t692)
  store i1 %t695, ptr %l384
  br label %bb199
bb199:
  %t696 = load i1, ptr %l384, !tbaa !21
  br i1 %t696, label %bb200, label %bb201
bb200:
  store i1 true, ptr %l385, !tbaa !21
  br label %bb203
bb201:
  %t697 = getelementptr %"compiler/scope:walked", ptr %l30, i32 0, i32 5
  %t698 = load i32, ptr %l33, !tbaa !23
  %t700 = sext i32 %t698 to i64
  %t703 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %s22, ptr %t697, i64 %t700)
  store i1 %t703, ptr %l389
  br label %bb202
bb202:
  %t704 = load i1, ptr %l389, !tbaa !21
  store i1 %t704, ptr %l385, !tbaa !21
  br label %bb203
bb203:
  %t705 = load i1, ptr %l385, !tbaa !21
  store i1 %t705, ptr %l35, !tbaa !21
  store i64 0, ptr %l36, !tbaa !24
  %t706 = getelementptr %"compiler/scope:walked", ptr %l30, i32 0, i32 3
  %t708 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s22, ptr %t706)
  store i64 %t708, ptr %l391
  br label %bb204
bb204:
  %t709 = load i64, ptr %l391, !tbaa !24
  store i64 %t709, ptr %l37, !tbaa !24
  store i64 1, ptr %l38, !tbaa !24
  %t710 = load i64, ptr %l37, !tbaa !24
  %t711 = load i64, ptr %l36, !tbaa !24
  %t714 = icmp sgt i64 %t710, %t711
  br i1 %t714, label %bb205, label %bb206
bb205:
  %t716 = load i64, ptr %l38, !tbaa !24
  %t718 = icmp sgt i64 %t716, 0
  br i1 %t718, label %bb207, label %bb208
bb206:
  store i64 0, ptr %l395, !tbaa !24
  br label %bb210
bb207:
  %t720 = load i64, ptr %l37, !tbaa !24
  %t721 = load i64, ptr %l36, !tbaa !24
  %t724 = sub i64 %t720, %t721
  %t725 = load i64, ptr %l38, !tbaa !24
  %t728 = add i64 %t724, %t725
  %t730 = sub i64 %t728, 1
  %t731 = load i64, ptr %l38, !tbaa !24
  %t734 = sdiv i64 %t730, %t731
  store i64 %t734, ptr %l398, !tbaa !24
  br label %bb209
bb208:
  store i64 0, ptr %l398, !tbaa !24
  br label %bb209
bb209:
  %t736 = load i64, ptr %l398, !tbaa !24
  store i64 %t736, ptr %l395, !tbaa !24
  br label %bb210
bb210:
  %t737 = load i64, ptr %l395, !tbaa !24
  store i64 %t737, ptr %l39, !tbaa !24
  store i64 0, ptr %l40, !tbaa !24
  br label %bb211
bb211:
  %t738 = load i64, ptr %l40, !tbaa !24
  %t739 = load i64, ptr %l39, !tbaa !24
  %t742 = icmp slt i64 %t738, %t739
  %t744 = xor i1 %t742, true
  br i1 %t744, label %bb212, label %bb213
bb212:
  br label %bb229
bb213:
  br label %bb214
bb214:
  %t746 = load i64, ptr %l36, !tbaa !24
  %t747 = load i64, ptr %l40, !tbaa !24
  %t748 = load i64, ptr %l38, !tbaa !24
  %t751 = mul i64 %t747, %t748
  %t754 = add i64 %t746, %t751
  store i64 %t754, ptr %l41, !tbaa !24
  %t756 = getelementptr %"compiler/scope:walked", ptr %l30, i32 0, i32 3
  %t757 = load i64, ptr %l41, !tbaa !24
  %t760 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s22, ptr %t756, i64 %t757)
  store i64 %t760, ptr %l418
  br label %bb215
bb215:
  %t761 = load i32, ptr %l33, !tbaa !23
  %t763 = sext i32 %t761 to i64
  %t764 = load i64, ptr %l418, !tbaa !24
  %t766 = icmp ne i64 %t764, %t763
  br i1 %t766, label %bb216, label %bb217
bb216:
  br label %bb228
bb217:
  br label %bb218
bb218:
  %t768 = getelementptr %"compiler/scope:walked", ptr %l30, i32 0, i32 4
  %t769 = load i64, ptr %l41, !tbaa !24
  %t772 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %s22, ptr %t768, i64 %t769)
  store i32 %t772, ptr %l424
  br label %bb219
bb219:
  %t773 = load i32, ptr %l424, !tbaa !23
  store i32 %t773, ptr %l42, !tbaa !23
  %t774 = load i32, ptr %l42, !tbaa !23
  %t776 = icmp eq i32 %t774, 0
  br i1 %t776, label %bb220, label %bb221
bb220:
  store i1 true, ptr %l427, !tbaa !21
  br label %bb224
bb221:
  %t778 = load ptr, ptr %l0, !tbaa !29
  %t780 = getelementptr %"compiler/scope:Scoper", ptr %t778, i32 0, i32 0
  %t781 = load ptr, ptr %t780, !tbaa !29
  %t783 = getelementptr %"compiler/generic:Program", ptr %t781, i32 0, i32 2
  store ptr %t783, ptr %l430, !tbaa !29
  %t784 = load ptr, ptr %l0, !tbaa !29
  %t786 = getelementptr %"compiler/scope:Scoper", ptr %t784, i32 0, i32 0
  %t787 = load ptr, ptr %t786, !tbaa !29
  %t789 = getelementptr %"compiler/generic:Program", ptr %t787, i32 0, i32 2
  %t790 = load i32, ptr %l42, !tbaa !23
  %t793 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t789, i32 %t790)
  store i32 %t793, ptr %l435
  br label %bb222
bb222:
  %t794 = load ptr, ptr %l430, !tbaa !29
  %t795 = load i32, ptr %l435, !tbaa !23
  %t796 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t794, i32 %t795)
  store i64 %t796, ptr %l436
  br label %bb223
bb223:
  %t797 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t798 = load i64, ptr %l436, !tbaa !24
  %t800 = and i64 %t798, %t797
  %t802 = icmp ne i64 %t800, 0
  store i1 %t802, ptr %l427, !tbaa !21
  br label %bb224
bb224:
  %t804 = load i1, ptr %l427, !tbaa !21
  br i1 %t804, label %bb225, label %bb226
bb225:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb227
bb226:
  br label %bb227
bb227:
  br label %bb228
bb228:
  %t805 = load i64, ptr %l40, !tbaa !24
  %t807 = add i64 %t805, 1
  store i64 %t807, ptr %l40, !tbaa !24
  br label %bb211
bb229:
  %t809 = load i1, ptr %l35, !tbaa !21
  br i1 %t809, label %bb230, label %bb231
bb230:
  %t811 = load ptr, ptr %l0, !tbaa !29
  %t813 = getelementptr %"compiler/scope:Scoper", ptr %t811, i32 0, i32 36
  %t814 = load i32, ptr %l33, !tbaa !23
  %t816 = sext i32 %t814 to i64
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t813, i64 %t816, i1 true)
  br label %bb232
bb231:
  br label %bb233
bb232:
  br label %bb233
bb233:
  br label %bb234
bb234:
  %t819 = load i64, ptr %l32, !tbaa !24
  %t821 = add i64 %t819, 1
  store i64 %t821, ptr %l32, !tbaa !24
  br label %bb176
bb235:
  call void @__olang_scope_close(ptr %s22)
  br label %bb236
bb236:
  %t823 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEntry(ptr %v0, ptr %t823)
  br label %bb237
bb237:
  %t825 = load ptr, ptr %l0, !tbaa !29
  %t827 = getelementptr %"compiler/scope:Scoper", ptr %t825, i32 0, i32 37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t827, i32 0)
  br label %bb238
bb238:
  %t829 = load ptr, ptr %l0, !tbaa !29
  store ptr %t829, ptr %l452, !tbaa !29
  %t830 = load ptr, ptr %l1, !tbaa !29
  %t832 = icmp eq ptr %t830, null
  br i1 %t832, label %bb239, label %bb240
bb239:
  call void @__olang_check_failed(ptr @olang_loc_2076710935f5438b_1fe44552b1e9b767)
  unreachable
bb240:
  br label %bb241
bb241:
  %t834 = load ptr, ptr %l1, !tbaa !29
  %t837 = getelementptr %"compiler/typed:Body", ptr %t834, i32 0, i32 11
  %t838 = load ptr, ptr %t837, !tbaa !29
  store ptr %t838, ptr %l43, !tbaa !29
  %t840 = load ptr, ptr %l43, !tbaa !29
  %t842 = icmp eq ptr %t840, null
  br i1 %t842, label %bb242, label %bb243
bb242:
  call void @__olang_check_failed(ptr @olang_loc_2076710935f5438b_1fe44552b1e9b767)
  unreachable
bb243:
  br label %bb244
bb244:
  %t844 = load ptr, ptr %l43, !tbaa !29
  %t847 = getelementptr %"compiler/typed:Block", ptr %t844, i32 0, i32 1
  %t848 = load { i64, ptr }, ptr %t847, !tbaa !27
  %t849 = load ptr, ptr %l452, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v0, ptr %t849, { i64, ptr } %t848)
  br label %bb245
bb245:
  %t851 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandHeld(ptr %v0, ptr %t851)
  br label %bb246
bb246:
  %t853 = load ptr, ptr %l0, !tbaa !29
  %t855 = getelementptr %"compiler/scope:Scoper", ptr %t853, i32 0, i32 37
  %t857 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t855)
  %t858 = extractvalue { i32, i32 } %t857, 1
  %t859 = extractvalue { i32, i32 } %t857, 0
  store i32 %t859, ptr %l468
  %t860 = icmp ne i32 %t859, 0
  br i1 %t860, label %bb248, label %ok.861, !prof !99
ok.861:
  store i32 %t858, ptr %l467
  br label %bb247
bb247:
  %t862 = load i32, ptr %l467, !tbaa !23
  store i32 %t862, ptr %l464, !tbaa !23
  br label %bb250
bb248:
  br label %bb249
bb249:
  br label %bb250
bb250:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameTerms(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l14 = alloca i64
  %l16 = alloca i1
  %l19 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l56 = alloca ptr
  %l60 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l64 = alloca ptr
  %l67 = alloca { i64, [2 x i64] }
  %l69 = alloca i1
  %l78 = alloca i64
  %l81 = alloca i64
  %l83 = alloca i1
  %l85 = alloca { i64, [2 x i64] }
  %l87 = alloca { i64, [2 x i64] }
  %l89 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 5
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i64, ptr %t7
  store i64 %t8, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  br label %bb34
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t10)
  store i64 %t12, ptr %l14
  br label %bb4
bb4:
  %t13 = load i64, ptr %l14, !tbaa !24
  %t14 = icmp slt i64 %t13, 2
  br i1 %t14, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb6:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l19
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 39
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l23
  br label %bb8
bb8:
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = load i64, ptr %l23, !tbaa !24
  %t30 = sub i64 %t28, %t29
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t31)
  store i64 %t33, ptr %l26
  br label %bb9
bb9:
  %t34 = load i64, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = icmp ne i64 %t34, %t35
  store i1 %t36, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l16, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  store i64 0, ptr %l4, !tbaa !24
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t40)
  store i64 %t42, ptr %l30
  br label %bb14
bb14:
  %t43 = load i64, ptr %l30, !tbaa !24
  store i64 %t43, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb15, label %bb16
bb15:
  %t50 = load i64, ptr %l6, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb20
bb17:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l37, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb19
bb19:
  %t70 = load i64, ptr %l37, !tbaa !24
  store i64 %t70, ptr %l34, !tbaa !24
  br label %bb20
bb20:
  %t71 = load i64, ptr %l34, !tbaa !24
  store i64 %t71, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t72 = load i64, ptr %l8, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb22, label %bb23
bb22:
  br label %bb33
bb23:
  br label %bb24
bb24:
  %t80 = load i64, ptr %l4, !tbaa !24
  %t81 = load i64, ptr %l8, !tbaa !24
  %t82 = load i64, ptr %l6, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l9, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/scope:Scoper", ptr %t90, i32 0, i32 40
  store ptr %t92, ptr %l56, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/scope:Scoper", ptr %t93, i32 0, i32 39
  %t96 = load i64, ptr %l3, !tbaa !24
  %t99 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t95, i64 %t96)
  store i64 %t99, ptr %l60
  br label %bb25
bb25:
  %t100 = load i64, ptr %l9, !tbaa !24
  %t101 = load i64, ptr %l60, !tbaa !24
  %t103 = add i64 %t101, %t100
  %t104 = load ptr, ptr %l56, !tbaa !29
  %t106 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t104, i64 %t103)
  store { i64, [2 x i64] } %t106, ptr %l63
  br label %bb26
bb26:
  store ptr %l63, ptr %l64, !tbaa !29
  %t107 = load ptr, ptr %l2, !tbaa !29
  %t108 = load i64, ptr %l9, !tbaa !24
  %t111 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t107, i64 %t108)
  store { i64, [2 x i64] } %t111, ptr %l67
  br label %bb27
bb27:
  %t112 = load ptr, ptr %l64, !tbaa !29
  %t114 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %t112, ptr %l67)
  store i1 %t114, ptr %l69
  br label %bb28
bb28:
  %t115 = load i1, ptr %l69, !tbaa !21
  %t116 = xor i1 %t115, true
  br i1 %t116, label %bb29, label %bb30
bb29:
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l8, !tbaa !24
  br label %bb21
bb33:
  store i1 true, ptr %rv
  br label %ret
bb34:
  %t124 = load { i64, [2 x i64] }, ptr %l1
  %t126 = extractvalue { i64, [2 x i64] } %t124, 0
  %t127 = icmp eq i64 %t126, 0
  br i1 %t127, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t129 = load ptr, ptr %l2, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t129)
  store i64 %t131, ptr %l78
  br label %bb38
bb38:
  %t132 = load i64, ptr %l78, !tbaa !24
  %t133 = icmp eq i64 %t132, 0
  store i1 %t133, ptr %rv
  br label %ret
bb39:
  br i1 true, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb49
bb42:
  %t135 = load ptr, ptr %l2, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t135)
  store i64 %t137, ptr %l81
  br label %bb43
bb43:
  %t138 = load i64, ptr %l81, !tbaa !24
  %t139 = icmp eq i64 %t138, 1
  br i1 %t139, label %bb44, label %bb45
bb44:
  %t141 = load ptr, ptr %l2, !tbaa !29
  %t143 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t141, i64 0)
  store { i64, [2 x i64] } %t143, ptr %l85
  br label %bb46
bb45:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb48
bb46:
  %t144 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t144, ptr %l87
  %t147 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l85, ptr %l87)
  store i1 %t147, ptr %l89
  br label %bb47
bb47:
  %t148 = load i1, ptr %l89, !tbaa !21
  store i1 %t148, ptr %l83, !tbaa !21
  br label %bb48
bb48:
  %t149 = load i1, ptr %l83, !tbaa !21
  store i1 %t149, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_a64307a1184a97f1_2344a9671103d455)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l18 = alloca { i64, [2 x i64] }
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca { i64, [2 x i64] }
  %l40 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t65 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l3
  %t3 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s0, ptr %t3, ptr %l3, { i64, [2 x i64] } %a1)
  br label %bb2
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %s0, ptr %t8, ptr %l3, { i64, [2 x i64] } %a2)
  br label %bb3
bb3:
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l3)
  store i64 %t14, ptr %l15
  br label %bb4
bb4:
  %t15 = load i64, ptr %l15, !tbaa !24
  %t16 = icmp eq i64 %t15, 1
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t19 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %l3, i64 0)
  store { i64, [2 x i64] } %t19, ptr %l18
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t20, ptr %rv
  br label %ret
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 39
  store ptr %t23, ptr %l20, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 40
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l23
  br label %bb9
bb9:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = load i64, ptr %l23, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 %t30)
  br label %bb10
bb10:
  store ptr %l3, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t32 = load i64, ptr %l5, !tbaa !24
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = load ptr, ptr %l4, !tbaa !29
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %t33)
  store i64 %t35, ptr %l27
  br label %bb12
bb12:
  %t36 = load i64, ptr %l25, !tbaa !24
  %t37 = load i64, ptr %l27, !tbaa !24
  %t38 = icmp slt i64 %t36, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l4, !tbaa !29
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %t42, i64 %t43)
  store { i64, [2 x i64] } %t46, ptr %l32
  br label %bb16
bb16:
  %t47 = load { i64, [2 x i64] }, ptr %l32
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t50, { i64, [2 x i64] } %t47)
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t54 = load i64, ptr %l5, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l5, !tbaa !24
  br label %bb11
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 39
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l40
  br label %bb20
bb20:
  %t63 = load i64, ptr %l40, !tbaa !24
  %t64 = sub i64 %t63, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 0
  store i64 5, ptr %t66
  %t68 = insertvalue { i64 } undef, i64 %t64, 0
  %t69 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 1
  store { i64 } %t68, ptr %t69
  %t70 = load { i64, [2 x i64] }, ptr %t65
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l21 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
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
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Arm", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l5, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb17
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t22, ptr %l21, !tbaa !27
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l6, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Alt", ptr %t31, i32 0, i32 0
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t30, ptr %t34, i1 %t36)
  br label %bb8
bb8:
  %t40 = load ptr, ptr %l6, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Alt", ptr %t40, i32 0, i32 1
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t45 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t45, 0
  store i64 %t47, ptr %l9, !tbaa !24
  br label %bb9
bb9:
  %t49 = load i64, ptr %l8, !tbaa !24
  %t50 = load i64, ptr %l9, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t57 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t57, ptr %l37, !tbaa !27
  %t58 = load i64, ptr %l8, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr ptr, ptr %t61, i64 %t58
  %t63 = load ptr, ptr %t62, !tbaa !39
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/typed:Bind", ptr %t63, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  %t71 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t65, ptr %t69, i1 %t71)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t75 = load i64, ptr %l8, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb9
bb15:
  br label %bb16
bb16:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb4
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Arm", ptr %t84, i32 0, i32 2
  %t87 = load ptr, ptr %t86, !tbaa !29
  %t88 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t83, ptr %t87, i1 %t88)
  br label %bb18
bb18:
  %t92 = load i1, ptr %l2, !tbaa !21
  br i1 %t92, label %bb19, label %bb20
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Arm", ptr %t95, i32 0, i32 3
  %t98 = load ptr, ptr %t97, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %t94, ptr %t98)
  br label %bb21
bb20:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr %"compiler/typed:Arm", ptr %t102, i32 0, i32 3
  %t105 = load ptr, ptr %t104, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %t101, ptr %t105)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Arm", ptr %t109, i32 0, i32 4
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t113 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %t108, ptr %t112, i1 %t113)
  br label %bb24
bb24:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3, %"compiler/scope:Val" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca %"compiler/scope:Val"
  %l8 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/scope:Val" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 5}
  %t4 = trunc i64 3 to i32
  %t5 = icmp eq i32 %t2, %t4
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb2:
  %t9 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t10 = load { i64, [2 x i64] }, ptr %t9
  %t12 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t10)
  store i1 %t12, ptr %l10
  br label %bb3
bb3:
  %t13 = load i1, ptr %l10, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l8, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 false, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsSelf(ptr %v0, ptr %v1, ptr %t18, ptr %a1, i64 %a2)
  store i1 %t24, ptr %l16
  br label %bb8
bb8:
  %t25 = load i1, ptr %l16, !tbaa !21
  br i1 %t25, label %bb9, label %bb10
bb9:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/typed:Promote", ptr %a3, i32 0, i32 1
  %t30 = load i32, ptr %t29, !tbaa !23
  %t31 = getelementptr %"compiler/scope:Val", ptr %l4, i32 0, i32 1
  %t32 = load { i64, [2 x i64] }, ptr %t31
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t26, i32 %t30, { i64, [2 x i64] } %t32)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumKeeps(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i64
  %l18 = alloca i1
  %l22 = alloca ptr
  %l26 = alloca i1
  %l30 = alloca ptr
  %l34 = alloca i1
  %l35 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i64
  %l48 = alloca ptr
  %l52 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  %t10 = getelementptr %"compiler/scope:summary", ptr %t8, i32 0, i32 20
  %t11 = load i1, ptr %t10, !tbaa !21
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l2, !tbaa !24
  store i64 %t13, ptr %l9, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 6
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t16, i64 %t17)
  store ptr %t20, ptr %l13
  br label %bb4
bb3:
  br label %bb11
bb4:
  %t21 = load ptr, ptr %l13, !tbaa !29
  %t23 = getelementptr %"compiler/scope:summary", ptr %t21, i32 0, i32 5
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l16
  br label %bb5
bb5:
  %t26 = load i64, ptr %l9, !tbaa !24
  %t27 = load i64, ptr %l16, !tbaa !24
  %t28 = icmp slt i64 %t26, %t27
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/scope:Scoper", ptr %t30, i32 0, i32 6
  %t33 = load i64, ptr %l1, !tbaa !24
  %t36 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t32, i64 %t33)
  store ptr %t36, ptr %l22
  br label %bb8
bb7:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb8:
  %t37 = load ptr, ptr %l22, !tbaa !29
  %t39 = getelementptr %"compiler/scope:summary", ptr %t37, i32 0, i32 5
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l26
  br label %bb9
bb9:
  %t44 = load i1, ptr %l26, !tbaa !21
  store i1 %t44, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l18, !tbaa !21
  store i1 %t45, ptr %rv
  br label %ret
bb11:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 6
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store ptr %t52, ptr %l30
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l30, !tbaa !29
  %t55 = getelementptr %"compiler/scope:summary", ptr %t53, i32 0, i32 19
  %t56 = load i1, ptr %t55, !tbaa !21
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb17
bb14:
  %t60 = load i64, ptr %l2, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/scope:Scoper", ptr %t61, i32 0, i32 6
  %t64 = load i64, ptr %l1, !tbaa !24
  %t67 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store ptr %t67, ptr %l39
  br label %bb15
bb15:
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t70 = getelementptr %"compiler/scope:summary", ptr %t68, i32 0, i32 5
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t70)
  store i64 %t72, ptr %l42
  br label %bb16
bb16:
  %t73 = load i64, ptr %l35, !tbaa !24
  %t74 = load i64, ptr %l42, !tbaa !24
  %t75 = icmp sge i64 %t73, %t74
  store i1 %t75, ptr %l34, !tbaa !21
  br label %bb17
bb17:
  %t77 = load i1, ptr %l34, !tbaa !21
  br i1 %t77, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 6
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t81, i64 %t82)
  store ptr %t85, ptr %l48
  br label %bb21
bb21:
  %t86 = load ptr, ptr %l48, !tbaa !29
  %t88 = getelementptr %"compiler/scope:summary", ptr %t86, i32 0, i32 5
  %t89 = load i64, ptr %l2, !tbaa !24
  %t92 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t88, i64 %t89)
  store i1 %t92, ptr %l52
  br label %bb22
bb22:
  %t93 = load i1, ptr %l52, !tbaa !21
  store i1 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailParam(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i32 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l12 = alloca %"compiler/typed:Local"
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca i1
  %l33 = alloca { i64, ptr }
  %l36 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l8, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Body", ptr %t8, i32 0, i32 7
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t10, i64 %t11)
  store %"compiler/typed:Local" %t14, ptr %l12
  br label %bb2
bb2:
  %t15 = getelementptr %"compiler/typed:Local", ptr %l12, i32 0, i32 4
  %t16 = load i32, ptr %t15, !range !{i32 0, i32 7}
  %t18 = trunc i64 0 to i32
  %t19 = icmp eq i32 %t16, %t18
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/generic:Program", ptr %t27, i32 0, i32 2
  %t33 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t29, i32 %a3)
  store i1 %t33, ptr %l21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l21, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t38 = getelementptr %"compiler/scope:walked", ptr %t36, i32 0, i32 5
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v1, ptr %v1, ptr %t38)
  store { i64, ptr } %t40, ptr %l25
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = getelementptr { i64 }, ptr null, i32 1
  %t43 = ptrtoint ptr %t42 to i64
  %t44 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t43, i64 8)
  %t45 = getelementptr { i64 }, ptr %t44, i32 0, i32 0
  store i64 %t41, ptr %t45, !tbaa !28
  %t47 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_12, 0
  %t48 = insertvalue { ptr, ptr } %t47, ptr %t44, 1
  %t49 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t51 = extractvalue { ptr, ptr } %t48, 0
  %t52 = extractvalue { ptr, ptr } %t48, 1
  %t53 = call i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v1, ptr %s0, { i64, ptr } %t49, ptr %t51, ptr %t52)
  store i1 %t53, ptr %l28
  br label %bb11
bb11:
  %t54 = load i1, ptr %l28, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l4, !tbaa !29
  %t59 = getelementptr %"compiler/scope:walked", ptr %t57, i32 0, i32 3
  %t61 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v1, ptr %v1, ptr %t59)
  store { i64, ptr } %t61, ptr %l33
  br label %bb14
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb14:
  %t62 = load i64, ptr %l2, !tbaa !24
  %t63 = getelementptr { i64 }, ptr null, i32 1
  %t64 = ptrtoint ptr %t63 to i64
  %t65 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 %t64, i64 8)
  %t66 = getelementptr { i64 }, ptr %t65, i32 0, i32 0
  store i64 %t62, ptr %t66, !tbaa !28
  %t68 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_13, 0
  %t69 = insertvalue { ptr, ptr } %t68, ptr %t65, 1
  %t70 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t72 = extractvalue { ptr, ptr } %t69, 0
  %t73 = extractvalue { ptr, ptr } %t69, 1
  %t74 = call i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v1, ptr %s0, { i64, ptr } %t70, ptr %t72, ptr %t73)
  store i1 %t74, ptr %l36
  br label %bb15
bb15:
  %t75 = load i1, ptr %l36, !tbaa !21
  %t76 = xor i1 %t75, true
  store i1 %t76, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t78 = load i1, ptr %l30, !tbaa !21
  store i1 %t78, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l20 = alloca { i64, [1 x i64] }
  %l22 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca { i64, ptr }
  %l39 = alloca { i64, [2 x i64] }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i64
  %l43 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l10, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  %t9 = load { i64, [2 x i64] }, ptr %l2
  %t11 = extractvalue { i64, [2 x i64] } %t9, 0
  %t12 = icmp eq i64 %t11, 2
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t15 = getelementptr { i64 }, ptr %t14, i32 0, i32 0
  %t16 = load i64, ptr %t15
  store i64 %t16, ptr %l5, !tbaa !24
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l15, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  store ptr %t19, ptr %l16, !tbaa !29
  %t20 = load ptr, ptr %l4, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 6
  %t23 = load i64, ptr %l5, !tbaa !24
  %t26 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t22, i64 %t23)
  store { i64, [1 x i64] } %t26, ptr %l20
  br label %bb5
bb5:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = load ptr, ptr %l16, !tbaa !29
  %t30 = load { i64, [1 x i64] }, ptr %l20
  %t32 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarName(ptr %v0, ptr %v0, ptr %v1, ptr %v2, ptr %t28, ptr %t29, { i64, [1 x i64] } %t30, ptr %t27)
  store { i64, ptr } %t32, ptr %l22
  br label %bb6
bb6:
  %t33 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t33, ptr %l11, !tbaa !27
  br label %bb23
bb7:
  %t34 = load { i64, [2 x i64] }, ptr %l2
  %t36 = extractvalue { i64, [2 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 3
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t39, ptr %l11, !tbaa !27
  br label %bb23
bb11:
  %t41 = load { i64, [2 x i64] }, ptr %l2
  %t43 = extractvalue { i64, [2 x i64] } %t41, 0
  %t44 = icmp eq i64 %t43, 4
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t46 = getelementptr { i64, [2 x i64] }, ptr %l2, i32 0, i32 1
  %t47 = getelementptr { i64, i64 }, ptr %t46, i32 0, i32 0
  %t48 = load i64, ptr %t47
  store i64 %t48, ptr %l6, !tbaa !24
  br label %bb14
bb13:
  br label %bb17
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l30, !tbaa !29
  %t51 = load ptr, ptr %l4, !tbaa !29
  store ptr %t51, ptr %l31, !tbaa !29
  %t52 = load ptr, ptr %l4, !tbaa !29
  %t54 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 5
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t54, i64 %t55)
  store i32 %t58, ptr %l35
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t60 = load ptr, ptr %l30, !tbaa !29
  %t61 = load ptr, ptr %l31, !tbaa !29
  %t62 = load i32, ptr %l35, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v0, ptr %v1, ptr %s3, ptr %t60, ptr %t61, i32 %t62, ptr %t59)
  store { i64, ptr } %t64, ptr %l37
  br label %bb16
bb16:
  %t65 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t67 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t70 = add i64 %t66, %t69
  %t71 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t73)
  call void @olang_textcopy(ptr %t74, ptr %t65, i64 %t66)
  %t75 = getelementptr i8, ptr %t74, i64 %t66
  call void @olang_textcopy(ptr %t75, ptr %t68, i64 %t69)
  %t76 = getelementptr i8, ptr %t75, i64 %t69
  call void @olang_textcopy(ptr %t76, ptr %t71, i64 %t72)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t74, 1
  store { i64, ptr } %t78, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t80 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t80, ptr %l39
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %s6, ptr %l39, i64 0)
  br label %bb21
bb21:
  %t82 = load ptr, ptr %s6
  %t83 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t84 = load i64, ptr %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t82, i64 %t84)
  %t86 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  store { i64, ptr } %t87, ptr %l41, !tbaa !27
  %t88 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t89 = load ptr, ptr %t88
  %t90 = icmp ne ptr %t89, null
  br i1 %t90, label %sbgrew.91, label %sbdone.92
sbgrew.91:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.92
sbdone.92:
  %t93 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t93, ptr %l11, !tbaa !27
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_a29c887f84e1b245_5040fb81d2028cb9)
  unreachable
bb23:
  %t94 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t94, 0
  store i64 %t95, ptr %l42, !tbaa !24
  %t96 = load i64, ptr %l42, !tbaa !24
  %t97 = mul i64 %t96, 1
  %t98 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t97)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t98, 1
  store { i64, ptr } %t100, ptr %l43, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l42, !tbaa !24
  %t106 = mul i64 %t105, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t102, ptr %t104, i64 %t106, i1 false)
  %t107 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t107, ptr %l11, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t108, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l37 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l49 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l62 = alloca i1
  %l63 = alloca i1
  %l71 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l97 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
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
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l5, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l5, !tbaa !23
  %t18 = sext i32 %t16 to i64
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp ne i64 %t18, %t19
  store i1 %t22, ptr %rv
  br label %ret
bb6:
  %t24 = load ptr, ptr %l2, !tbaa !29
  store ptr %t24, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t25 = load ptr, ptr %l21, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l21, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 8}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l22, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = getelementptr { i64, [4 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l6, !tbaa !29
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t39 = load ptr, ptr %l6, !tbaa !29
  %t40 = load i64, ptr %l3, !tbaa !24
  %t43 = call i1 @compiler_2fscope_2eisParamRead(ptr %v2, ptr %t39, i64 %t40)
  store i1 %t43, ptr %l29
  br label %bb12
bb12:
  %t44 = load i1, ptr %l29, !tbaa !21
  br i1 %t44, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb16
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t47 = load ptr, ptr %l6, !tbaa !29
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t56 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t45, ptr %t46, ptr %t47, i64 %t49, i64 %t50)
  store i1 %t56, ptr %l37
  br label %bb15
bb15:
  %t57 = load i1, ptr %l37, !tbaa !21
  store i1 %t57, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t58 = load i1, ptr %l30, !tbaa !21
  store i1 %t58, ptr %rv
  br label %ret
bb17:
  %t59 = load ptr, ptr %l2, !tbaa !29
  store ptr %t59, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t60 = load ptr, ptr %l38, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 3
  store i1 %t66, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t67 = load i1, ptr %l39, !tbaa !21
  br i1 %t67, label %bb20, label %bb21
bb20:
  %t68 = load ptr, ptr %l2, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l7, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l1, !tbaa !29
  %t76 = load ptr, ptr %l7, !tbaa !29
  %t77 = load i64, ptr %l3, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t84 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t74, ptr %t75, ptr %t76, i64 %t77, i64 %t78)
  store i1 %t84, ptr %l49
  br label %bb23
bb23:
  %t85 = load i1, ptr %l49, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb24:
  %t86 = load ptr, ptr %l2, !tbaa !29
  store ptr %t86, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t87 = load ptr, ptr %l50, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb25, label %bb26
bb25:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 8}
  %t93 = icmp eq i64 %t91, 4
  store i1 %t93, ptr %l51, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l51, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load ptr, ptr %l2, !tbaa !29
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l8, !tbaa !29
  br label %bb29
bb28:
  br label %bb35
bb29:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t103 = load ptr, ptr %l8, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Elem", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load i64, ptr %l3, !tbaa !24
  %t108 = load i64, ptr %l4, !tbaa !24
  %t114 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t101, ptr %t102, ptr %t106, i64 %t107, i64 %t108)
  store i1 %t114, ptr %l62
  br label %bb30
bb30:
  %t115 = load i1, ptr %l62, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t118 = load ptr, ptr %l8, !tbaa !29
  %t120 = getelementptr %"compiler/typed:Elem", ptr %t118, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !29
  %t123 = load i64, ptr %l3, !tbaa !24
  %t124 = load i64, ptr %l4, !tbaa !24
  %t130 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t116, ptr %t117, ptr %t121, i64 %t123, i64 %t124)
  store i1 %t130, ptr %l71
  br label %bb33
bb32:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  %t131 = load i1, ptr %l71, !tbaa !21
  store i1 %t131, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t132 = load i1, ptr %l63, !tbaa !21
  store i1 %t132, ptr %rv
  br label %ret
bb35:
  %t133 = load ptr, ptr %l2, !tbaa !29
  store ptr %t133, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = icmp ne ptr %t134, null
  br i1 %t135, label %bb36, label %bb37
bb36:
  %t137 = load ptr, ptr %l72, !tbaa !29
  %t138 = load i64, ptr %t137, !range !{i64 0, i64 8}
  %t140 = icmp eq i64 %t138, 5
  store i1 %t140, ptr %l73, !tbaa !21
  br label %bb37
bb37:
  %t141 = load i1, ptr %l73, !tbaa !21
  br i1 %t141, label %bb38, label %bb39
bb38:
  %t142 = load ptr, ptr %l2, !tbaa !29
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t142, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t144, i32 0, i32 2
  %t146 = load ptr, ptr %t145
  store ptr %t146, ptr %l9, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t150 = load ptr, ptr %l9, !tbaa !29
  %t152 = getelementptr %"compiler/typed:Payload", ptr %t150, i32 0, i32 0
  %t153 = load ptr, ptr %t152, !tbaa !29
  %t154 = load i64, ptr %l3, !tbaa !24
  %t155 = load i64, ptr %l4, !tbaa !24
  %t161 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueTarget(ptr %v0, ptr %v1, ptr %v2, ptr %t148, ptr %t149, ptr %t153, i64 %t154, i64 %t155)
  store i1 %t161, ptr %l84
  br label %bb41
bb41:
  %t162 = load i1, ptr %l84, !tbaa !21
  store i1 %t162, ptr %rv
  br label %ret
bb42:
  %t163 = load ptr, ptr %l2, !tbaa !29
  store ptr %t163, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t164 = load ptr, ptr %l85, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb43, label %bb44
bb43:
  %t167 = load ptr, ptr %l85, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 8}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l86, !tbaa !21
  br label %bb44
bb44:
  %t171 = load i1, ptr %l86, !tbaa !21
  br i1 %t171, label %bb45, label %bb46
bb45:
  %t172 = load ptr, ptr %l2, !tbaa !29
  %t174 = getelementptr { i64, [4 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t174, i32 0, i32 2
  %t176 = load ptr, ptr %t175
  store ptr %t176, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load ptr, ptr %l1, !tbaa !29
  %t180 = load ptr, ptr %l10, !tbaa !29
  %t182 = load i64, ptr %l3, !tbaa !24
  %t183 = load i64, ptr %l4, !tbaa !24
  %t189 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %t178, ptr %t179, ptr %t180, i64 %t182, i64 %t183)
  store i1 %t189, ptr %l97
  br label %bb48
bb48:
  %t190 = load i1, ptr %l97, !tbaa !21
  store i1 %t190, ptr %rv
  br label %ret
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  store i1 true, ptr %rv
  br label %ret
bb53:
  call void @__olang_check_failed(ptr @olang_loc_5a5f9b9905e967_ce08ad0ec337ed2b)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueOK(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l14 = alloca ptr
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l31 = alloca ptr
  %l34 = alloca i1
  %l43 = alloca i64
  %l49 = alloca i1
  %l53 = alloca i1
  %l59 = alloca i64
  %l62 = alloca i1
  %l65 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l14, !tbaa !29
  %t10 = getelementptr %"compiler/scope:summary", ptr %t8, i32 0, i32 0
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l16
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %s0, ptr %l16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l18
  br label %bb2
bb2:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l4
  %t15 = load i32, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 105
  store i64 -1, ptr %t21, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 106
  store i32 %t15, ptr %t26, !tbaa !23
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %s0, ptr %l4)
  store i64 %t28, ptr %l25
  br label %bb3
bb3:
  %t29 = load i64, ptr %l25, !tbaa !24
  %t30 = icmp eq i64 %t29, 0
  br i1 %t30, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 1
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l31
  br label %bb7
bb7:
  %t40 = load ptr, ptr %l31, !tbaa !29
  store ptr %t40, ptr %l7, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %t41, i32 %t42)
  store i1 %t45, ptr %l34
  br label %bb8
bb8:
  %t46 = load i1, ptr %l34, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb9, label %bb10
bb9:
  %t49 = load ptr, ptr %l7, !tbaa !29
  %t51 = getelementptr %"compiler/typed:Body", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %t51, !tbaa !23
  store i32 %t52, ptr %l3, !tbaa !23
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l1, !tbaa !24
  %t56 = load i32, ptr %l3, !tbaa !23
  %t63 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebeyondBound(ptr %v0, ptr %s0, ptr %t54, i64 %t55, ptr %l4, i32 %t56, i1 %a2)
  store i64 %t63, ptr %l43
  br label %bb12
bb12:
  %t64 = load i64, ptr %l43, !tbaa !24
  store i64 %t64, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  br i1 %t67, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t70 = load ptr, ptr %l7, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Body", ptr %t70, i32 0, i32 1
  %t73 = load { i64, [2 x i64] }, ptr %t72
  %t77 = extractvalue { i64, [2 x i64] } %t73, 0
  %t78 = icmp eq i64 %t77, 4
  br i1 %t78, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_fcf83807c397e02b_4369dd1b0f80983f)
  unreachable
bb24:
  %t80 = load i1, ptr %l49, !tbaa !21
  br i1 %t80, label %bb25, label %bb26
bb25:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t88 = getelementptr %"compiler/generic:Program", ptr %t86, i32 0, i32 2
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t91 = getelementptr %"compiler/typed:Body", ptr %t89, i32 0, i32 2
  %t92 = load i32, ptr %t91, !tbaa !23
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t88, i32 %t92, i64 0)
  store i64 %t95, ptr %l59
  br label %bb27
bb26:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb28
bb27:
  %t96 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t97 = load i64, ptr %l59, !tbaa !24
  %t99 = icmp eq i64 %t97, %t96
  store i1 %t99, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l53, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l7, !tbaa !29
  %t105 = call i1 @compiler_2fscope_2eresultsOnly(ptr %v0, ptr %s0, ptr %t102, ptr %l4)
  store i1 %t105, ptr %l65
  br label %bb31
bb30:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb32
bb31:
  %t106 = load i1, ptr %l65, !tbaa !21
  store i1 %t106, ptr %l62, !tbaa !21
  br label %bb32
bb32:
  %t107 = load i1, ptr %l62, !tbaa !21
  br i1 %t107, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l8, !tbaa !24
  %t113 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 105
  store i64 %t110, ptr %t113, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2eflHas(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i64
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
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t4)
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
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l13
  br label %bb6
bb6:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp eq i64 %t18, %a1
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

define dso_local void @compiler_2fscope_2ekeepRel(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/scope:rel"
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l43 = alloca %"compiler/scope:rel"
  %l44 = alloca { i64, [2 x i64] }
  %l46 = alloca { i64, [2 x i64] }
  %l48 = alloca i1
  %l50 = alloca i1
  %l54 = alloca %"compiler/scope:rel"
  %l55 = alloca { i64, [2 x i64] }
  %l57 = alloca { i64, [2 x i64] }
  %l59 = alloca i1
  %l61 = alloca i1
  %l65 = alloca %"compiler/scope:rel"
  %l75 = alloca ptr
  %l84 = alloca ptr
  store ptr %a0, ptr %l0
  store %"compiler/scope:rel" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l15
  br label %bb1
bb1:
  %t4 = load i64, ptr %l15, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l22, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l22, !tbaa !24
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb35
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t51, i64 %t53)
  store %"compiler/scope:rel" %t56, ptr %l43
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/scope:rel", ptr %l43, i32 0, i32 0
  %t58 = load { i64, [2 x i64] }, ptr %t57
  store { i64, [2 x i64] } %t58, ptr %l44
  %t59 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 0
  %t60 = load { i64, [2 x i64] }, ptr %t59
  store { i64, [2 x i64] } %t60, ptr %l46
  %t63 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l44, ptr %l46)
  store i1 %t63, ptr %l48
  br label %bb13
bb13:
  %t64 = load i1, ptr %l48, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb18
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t67, i64 %t69)
  store %"compiler/scope:rel" %t72, ptr %l54
  br label %bb16
bb16:
  %t73 = getelementptr %"compiler/scope:rel", ptr %l54, i32 0, i32 1
  %t74 = load { i64, [2 x i64] }, ptr %t73
  store { i64, [2 x i64] } %t74, ptr %l55
  %t75 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 1
  %t76 = load { i64, [2 x i64] }, ptr %t75
  store { i64, [2 x i64] } %t76, ptr %l57
  %t79 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l55, ptr %l57)
  store i1 %t79, ptr %l59
  br label %bb17
bb17:
  %t80 = load i1, ptr %l59, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l50, !tbaa !21
  br label %bb18
bb18:
  %t83 = load i1, ptr %l50, !tbaa !21
  br i1 %t83, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb22
bb20:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t84, i64 %t86)
  store %"compiler/scope:rel" %t89, ptr %l65
  br label %bb21
bb21:
  %t90 = getelementptr %"compiler/scope:rel", ptr %l65, i32 0, i32 2
  %t91 = load i1, ptr %t90, !tbaa !21
  %t92 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 2
  %t93 = load i1, ptr %t92, !tbaa !21
  %t96 = icmp ne i1 %t91, %t93
  store i1 %t96, ptr %l61, !tbaa !21
  br label %bb22
bb22:
  %t98 = load i1, ptr %l61, !tbaa !21
  br i1 %t98, label %bb23, label %bb24
bb23:
  br label %bb34
bb24:
  br label %bb25
bb25:
  %t99 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 5
  %t100 = load i1, ptr %t99, !tbaa !21
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = load i64, ptr %l7, !tbaa !24
  store i1 false, ptr %l9, !tbaa !21
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t111 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v0, ptr %t106, i64 %t104)
  store ptr %t111, ptr %l75
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t112 = load ptr, ptr %l75, !tbaa !29
  %t114 = load i1, ptr %l9, !tbaa !21
  %t117 = getelementptr %"compiler/scope:rel", ptr %t112, i32 0, i32 5
  store i1 %t114, ptr %t117, !tbaa !21
  br label %bb29
bb29:
  %t118 = getelementptr %"compiler/scope:rel", ptr %l1, i32 0, i32 6
  %t119 = load i1, ptr %t118, !tbaa !21
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb30, label %bb31
bb30:
  %t123 = load i64, ptr %l7, !tbaa !24
  store i1 false, ptr %l12, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t130 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v0, ptr %t125, i64 %t123)
  store ptr %t130, ptr %l84
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t131 = load ptr, ptr %l84, !tbaa !29
  %t133 = load i1, ptr %l12, !tbaa !21
  %t136 = getelementptr %"compiler/scope:rel", ptr %t131, i32 0, i32 6
  store i1 %t133, ptr %t136, !tbaa !21
  br label %bb33
bb33:
  br label %ret
bb34:
  %t137 = load i64, ptr %l6, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l6, !tbaa !24
  br label %bb8
bb35:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load %"compiler/scope:rel", ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t141, %"compiler/scope:rel" %t142)
  br label %bb36
bb36:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2enamedValue(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t17 = load ptr, ptr %l9, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l9, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 0
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l10, !tbaa !21
  store i1 %t24, ptr %l2, !tbaa !21
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_14cf142c3df65889_62fa71a6199e4c15)
  unreachable
bb13:
  %t25 = load i1, ptr %l2, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2esortedRecs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/scope:fnRec"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/scope:fnRec"
  %l13 = alloca %"compiler/scope:fnRec"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca i64
  %l25 = alloca %"compiler/scope:fnRec"
  %l27 = alloca %"compiler/scope:fnRec"
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/scope:fnRec"
  %l32 = alloca %"compiler/scope:fnRec"
  %l34 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"compiler/scope:fnRec"
  %l43 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i64
  %l71 = alloca i1
  %l74 = alloca %"compiler/scope:fnRec"
  %l78 = alloca %"compiler/scope:fnRec"
  %l79 = alloca i1
  %l84 = alloca %"compiler/scope:fnRec"
  %l86 = alloca %"compiler/scope:fnRec"
  %l89 = alloca %"compiler/scope:fnRec"
  %l91 = alloca %"compiler/scope:fnRec"
  %l93 = alloca ptr
  %l94 = alloca i64
  %l95 = alloca %"compiler/scope:fnRec"
  %l97 = alloca %"compiler/scope:fnRec"
  %l100 = alloca ptr
  %l101 = alloca i64
  %l102 = alloca %"compiler/scope:fnRec"
  %l104 = alloca %"compiler/scope:fnRec"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %t33 = alloca { %"compiler/scope:fnRec", ptr }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l16
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t7 = load i64, ptr %l3, !tbaa !24
  store i64 %t7, ptr %l18, !tbaa !24
  %t8 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l20
  br label %bb3
bb3:
  %t11 = load i64, ptr %l18, !tbaa !24
  %t12 = load i64, ptr %l20, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store %"compiler/scope:fnRec" %t21, ptr %l25
  br label %bb7
bb7:
  %t23 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s2, ptr %l25)
  store %"compiler/scope:fnRec" %t23, ptr %l27
  br label %bb8
bb8:
  %t24 = load %"compiler/scope:fnRec", ptr %l27
  store %"compiler/scope:fnRec" %t24, ptr %l4
  %t25 = load ptr, ptr %lp1
  %t27 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eView_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t25)
  store { i64, ptr } %t27, ptr %l29
  br label %bb9
bb9:
  %t28 = load %"compiler/scope:fnRec", ptr %l4
  store %"compiler/scope:fnRec" %t28, ptr %l30
  %t30 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s0, ptr %l30)
  store %"compiler/scope:fnRec" %t30, ptr %l32
  br label %bb10
bb10:
  %t31 = getelementptr { %"compiler/scope:fnRec", ptr }, ptr null, i32 1
  %t32 = ptrtoint ptr %t31 to i64
  %t34 = getelementptr { %"compiler/scope:fnRec", ptr }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/scope:fnRec", ptr %l32
  store %"compiler/scope:fnRec" %t35, ptr %t34, !tbaa !28
  call void @__olang_scope_escape(ptr %s2)
  %t36 = getelementptr { %"compiler/scope:fnRec", ptr }, ptr %t33, i32 0, i32 1
  store ptr %s2, ptr %t36, !tbaa !28
  %t37 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_17, 0
  %t38 = insertvalue { ptr, ptr } %t37, ptr %t33, 1
  %t39 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t41 = extractvalue { ptr, ptr } %t38, 0
  %t42 = extractvalue { ptr, ptr } %t38, 1
  %t43 = call i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fscope_3afnRec_3e_2eSome_3ccompiler_2fscope_3afnRec_2c_20_3f_3e(ptr %v1, ptr %s2, { i64, ptr } %t39, ptr %t41, ptr %t42)
  store i1 %t43, ptr %l34
  br label %bb11
bb11:
  %t44 = load i1, ptr %l34, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t45 = load ptr, ptr %lp1
  store ptr %t45, ptr %l35, !tbaa !29
  %t46 = getelementptr %"compiler/scope:fnRec", ptr %l4, i32 0, i32 0
  %t47 = load i64, ptr %t46, !tbaa !24
  store i64 %t47, ptr %l36, !tbaa !24
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l37
  br label %bb15
bb15:
  %t49 = getelementptr %"compiler/scope:fnRec", ptr %l4, i32 0, i32 2
  %t50 = load i1, ptr %t49, !tbaa !21
  %t51 = load i64, ptr %l36, !tbaa !24
  %t52 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  %t54 = call %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %s2, ptr %s2, i64 %t51, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, i1 %t50)
  store %"compiler/scope:fnRec" %t54, ptr %l39
  br label %bb16
bb16:
  %t55 = load ptr, ptr %l35, !tbaa !29
  %t56 = load %"compiler/scope:fnRec", ptr %l39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %s2, ptr %t55, %"compiler/scope:fnRec" %t56)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t59 = add i64 %t57, 1
  store i64 %t59, ptr %l3, !tbaa !24
  br label %bb2
bb19:
  store i64 1, ptr %l5, !tbaa !24
  %t61 = load ptr, ptr %lp1
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %t61)
  store i64 %t63, ptr %l43
  br label %bb20
bb20:
  %t64 = load i64, ptr %l43, !tbaa !24
  store i64 %t64, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb21, label %bb22
bb21:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb26
bb23:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l50, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb25
bb25:
  %t91 = load i64, ptr %l50, !tbaa !24
  store i64 %t91, ptr %l47, !tbaa !24
  br label %bb26
bb26:
  %t92 = load i64, ptr %l47, !tbaa !24
  store i64 %t92, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb27
bb27:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb28, label %bb29
bb28:
  br label %bb52
bb29:
  br label %bb30
bb30:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l11, !tbaa !24
  br label %bb31
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t113 = load i64, ptr %l11, !tbaa !24
  %t115 = icmp sgt i64 %t113, 0
  br i1 %t115, label %bb32, label %bb33
bb32:
  %t117 = load ptr, ptr %lp1
  %t118 = load i64, ptr %l11, !tbaa !24
  %t121 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t117, i64 %t118)
  store %"compiler/scope:fnRec" %t121, ptr %l74
  br label %bb34
bb33:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb37
bb34:
  %t122 = load ptr, ptr %lp1
  %t123 = load i64, ptr %l11, !tbaa !24
  %t125 = sub i64 %t123, 1
  %t128 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %v1, ptr %t122, i64 %t125)
  store %"compiler/scope:fnRec" %t128, ptr %l78
  br label %bb35
bb35:
  %t129 = load %"compiler/scope:fnRec", ptr %l74
  %t130 = load %"compiler/scope:fnRec", ptr %l78
  %t131 = call i1 @compiler_2fscope_2erecLess(ptr %v1, ptr %v1, %"compiler/scope:fnRec" %t129, %"compiler/scope:fnRec" %t130)
  store i1 %t131, ptr %l79
  br label %bb36
bb36:
  %t132 = load i1, ptr %l79, !tbaa !21
  store i1 %t132, ptr %l71, !tbaa !21
  br label %bb37
bb37:
  %t133 = load i1, ptr %l71, !tbaa !21
  %t134 = xor i1 %t133, true
  br i1 %t134, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s7)
  br label %bb50
bb39:
  br label %bb40
bb40:
  %t136 = load ptr, ptr %lp1
  %t137 = load i64, ptr %l11, !tbaa !24
  %t139 = sub i64 %t137, 1
  %t142 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %s7, ptr %t136, i64 %t139)
  store %"compiler/scope:fnRec" %t142, ptr %l84
  br label %bb41
bb41:
  %t144 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s7, ptr %l84)
  store %"compiler/scope:fnRec" %t144, ptr %l86
  br label %bb42
bb42:
  %t145 = load %"compiler/scope:fnRec", ptr %l86
  store %"compiler/scope:fnRec" %t145, ptr %l12
  %t146 = load ptr, ptr %lp1
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %s7, ptr %t146, i64 %t147)
  store %"compiler/scope:fnRec" %t150, ptr %l89
  br label %bb43
bb43:
  %t152 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s7, ptr %l89)
  store %"compiler/scope:fnRec" %t152, ptr %l91
  br label %bb44
bb44:
  %t153 = load %"compiler/scope:fnRec", ptr %l91
  store %"compiler/scope:fnRec" %t153, ptr %l13
  %t154 = load i64, ptr %l11, !tbaa !24
  %t156 = load ptr, ptr %lp1
  store ptr %t156, ptr %l93, !tbaa !29
  store i64 %t154, ptr %l94, !tbaa !24
  %t158 = load %"compiler/scope:fnRec", ptr %l12
  store %"compiler/scope:fnRec" %t158, ptr %l95
  %t160 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s7, ptr %l95)
  store %"compiler/scope:fnRec" %t160, ptr %l97
  br label %bb45
bb45:
  %t161 = load ptr, ptr %l93, !tbaa !29
  %t162 = load i64, ptr %l94, !tbaa !24
  %t163 = load %"compiler/scope:fnRec", ptr %l97
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eSetAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %s7, ptr %t161, i64 %t162, %"compiler/scope:fnRec" %t163)
  br label %bb46
bb46:
  %t164 = load i64, ptr %l11, !tbaa !24
  %t166 = sub i64 %t164, 1
  %t168 = load ptr, ptr %lp1
  store ptr %t168, ptr %l100, !tbaa !29
  store i64 %t166, ptr %l101, !tbaa !24
  %t170 = load %"compiler/scope:fnRec", ptr %l13
  store %"compiler/scope:fnRec" %t170, ptr %l102
  %t172 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s7, ptr %l102)
  store %"compiler/scope:fnRec" %t172, ptr %l104
  br label %bb47
bb47:
  %t173 = load ptr, ptr %l100, !tbaa !29
  %t174 = load i64, ptr %l101, !tbaa !24
  %t175 = load %"compiler/scope:fnRec", ptr %l104
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eSetAt_3ccompiler_2fscope_3afnRec_3e(ptr %v1, ptr %s7, ptr %t173, i64 %t174, %"compiler/scope:fnRec" %t175)
  br label %bb48
bb48:
  %t176 = load i64, ptr %l11, !tbaa !24
  %t178 = sub i64 %t176, 1
  store i64 %t178, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb49
bb49:
  br label %bb31
bb50:
  br label %bb51
bb51:
  %t180 = load i64, ptr %l9, !tbaa !24
  %t182 = add i64 %t180, 1
  store i64 %t182, ptr %l9, !tbaa !24
  br label %bb27
bb52:
  %t184 = load ptr, ptr %lp1
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t184
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/scope:Placement" undef, i64 %a0, 0
  %t14 = insertvalue %"compiler/scope:Placement" %t12, i64 %a1, 1
  %t16 = insertvalue %"compiler/scope:Placement" %t14, i64 %a2, 2
  %t18 = insertvalue %"compiler/scope:Placement" %t16, i64 %a3, 3
  %t20 = insertvalue %"compiler/scope:Placement" %t18, { i64, ptr } %a4, 4
  %t22 = insertvalue %"compiler/scope:Placement" %t20, i1 false, 5
  store %"compiler/scope:Placement" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
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
declare void @__olang_check_failed(ptr) cold noreturn
define linkonce_odr %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRec"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRec", ptr %a0
  store %"compiler/scope:fnRec" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"compiler/scope:fnRec", ptr %l1
  store %"compiler/scope:fnRec" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRec", ptr %rv
  ret %"compiler/scope:fnRec" %rr
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
@.d0 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"fit error kind " }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
define available_externally ptr @__olang_sb_room(ptr %sb, i64 %need) alwaysinline {
entry:
  %lenp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 1
  %capp = getelementptr { ptr, i64, i64, ptr }, ptr %sb, i32 0, i32 2
  %len = load i64, ptr %lenp
  %cap = load i64, ptr %capp
  %want = add i64 %len, %need
  %fits = icmp ule i64 %want, %cap
  br i1 %fits, label %ok, label %grow
ok:
  %data = load ptr, ptr %sb
  %p = getelementptr i8, ptr %data, i64 %len
  ret ptr %p
grow:
  %g = call ptr @__olang_sb_grow(ptr %sb, i64 %need)
  ret ptr %g
}
declare i64 @__olang_fmt_i64(ptr, i64)
declare void @__olang_sb_add(ptr, i64)
@.d1 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" slot " }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2fscope_3aTerm(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 7}
  switch i64 %t2, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 ]
bb1:
  br label %ret
bb2:
  %t4 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t5 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t4, i64 %t5)
  br label %bb1
bb3:
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t7 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t6, i64 %t7)
  %t8 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t8, i64 %t9)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t12 = getelementptr { i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12
  %t15 = sext i32 %t13 to i64
  %t16 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t17 = call i64 @__olang_fmt_i64(ptr %t16, i64 %t15)
  call void @__olang_sb_add(ptr %v0, i64 %t17)
  %t18 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t19 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t18, i64 %t19)
  br label %bb1
bb4:
  %t20 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t21 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t20, i64 %t21)
  %t22 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t22, i64 %t23)
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t24, i32 0, i32 1
  %t26 = getelementptr { i64 }, ptr %t25, i32 0, i32 0
  %t27 = load i64, ptr %t26
  %t29 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t30 = call i64 @__olang_fmt_i64(ptr %t29, i64 %t27)
  call void @__olang_sb_add(ptr %v0, i64 %t30)
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb5:
  %t33 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb6:
  %t35 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  %t37 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t39, i32 0, i32 1
  %t41 = getelementptr { i64, i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  %t44 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t45 = call i64 @__olang_fmt_i64(ptr %t44, i64 %t42)
  call void @__olang_sb_add(ptr %v0, i64 %t45)
  %t46 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t46, i64 %t47)
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t50 = getelementptr { i64, i64 }, ptr %t49, i32 0, i32 1
  %t51 = load i64, ptr %t50
  %t53 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t54 = call i64 @__olang_fmt_i64(ptr %t53, i64 %t51)
  call void @__olang_sb_add(ptr %v0, i64 %t54)
  %t55 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb7:
  %t57 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  %t59 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr { i64, [2 x i64] }, ptr %t61, i32 0, i32 1
  %t63 = getelementptr { i64 }, ptr %t62, i32 0, i32 0
  %t64 = load i64, ptr %t63
  %t66 = call ptr @__olang_sb_room(ptr %v0, i64 24)
  %t67 = call i64 @__olang_fmt_i64(ptr %t66, i64 %t64)
  call void @__olang_sb_add(ptr %v0, i64 %t67)
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t68, i64 %t69)
  br label %bb1
bb8:
  %t70 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t71 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t70, i64 %t71)
  br label %bb1
ret:
  ret void
}

@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c" exact " }>, align 8
@.c3 = private unnamed_addr constant [5 x i8] c"true\00"
@.c4 = private unnamed_addr constant [6 x i8] c"false\00"
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c" narrow " }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" | " }>, align 8
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
declare void @__olang_sb_done(ptr)
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"&" }>, align 8
define linkonce_odr %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:fnRecs"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:fnRecs", ptr %a0
  store %"compiler/scope:fnRecs" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/scope:fnRecs", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/scope:fnRecs", ptr %l1
  store %"compiler/scope:fnRecs" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:fnRecs", ptr %rv
  ret %"compiler/scope:fnRecs" %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2fscope_3awalked(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/scope:walked"
  %t1 = alloca %"compiler/scope:walked", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fscope_3awalked_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 424, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 424, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
define internal i1 @olang_lambda_12(ptr %env, i64 %a0) #0 {
entry:
  %rv = alloca i1
  %cp0 = getelementptr { i64 }, ptr %env, i32 0, i32 0
  %cv0 = load i64, ptr %cp0, !tbaa !28
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp eq i64 %a0, %cv0
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define internal i1 @olang_lambda_13(ptr %env, i64 %a0) #0 {
entry:
  %rv = alloca i1
  %cp0 = getelementptr { i64 }, ptr %env, i32 0, i32 0
  %cv0 = load i64, ptr %cp0, !tbaa !28
  br label %start
start:
  br label %bb0
bb0:
  %t5 = icmp eq i64 %a0, %cv0
  store i1 %t5, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d14 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"the program" }>, align 8
@.d15 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"the scope " }>, align 8
@.d16 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"'s argument bound" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 80
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 80
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
define internal i1 @olang_lambda_17(ptr %env, ptr %v0, %"compiler/scope:fnRec" %a0) #0 {
entry:
  %l0 = alloca %"compiler/scope:fnRec"
  %l1 = alloca %"compiler/scope:fnRec"
  %l5 = alloca i1
  %rv = alloca i1
  store %"compiler/scope:fnRec" %a0, ptr %l0
  %cp0 = getelementptr { %"compiler/scope:fnRec", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load %"compiler/scope:fnRec", ptr %cp0, !tbaa !28
  store %"compiler/scope:fnRec" %cv0, ptr %l1
  %vq0 = getelementptr { %"compiler/scope:fnRec", ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr %"compiler/scope:fnRec", ptr %l0, i32 0, i32 2
  %t10 = load i1, ptr %t9, !tbaa !21
  %t11 = getelementptr %"compiler/scope:fnRec", ptr %l1, i32 0, i32 2
  %t12 = load i1, ptr %t11, !tbaa !21
  %t15 = icmp eq i1 %t10, %t12
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l5, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0) #0 {
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

declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
declare ptr @__olang_sb_grow(ptr, i64) noinline
@.d18 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"scope.Term.None" }>, align 8
@.d19 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"scope.Term.Block" }>, align 8
@.d20 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d21 = private unnamed_addr constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d22 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Var" }>, align 8
@.d23 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Program" }>, align 8
@.d24 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"scope.Term.Derived" }>, align 8
@.d25 = private unnamed_addr constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c", " }>, align 8
@.d26 = private unnamed_addr constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"scope.Term.Set" }>, align 8
@.d27 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"scope.Term.Untraced" }>, align 8
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %t4)
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fscope_3afnRec_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/scope:fnRec"
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
  %t4 = mul i64 %t3, 48
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
  %t15 = getelementptr %"compiler/scope:fnRec", ptr %t14, i64 %t12
  %t17 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %v0, ptr %t15)
  store %"compiler/scope:fnRec" %t17, ptr %l6
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load %"compiler/scope:fnRec", ptr %l6
  %t20 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/scope:fnRec", ptr %t22, i64 %t20
  store %"compiler/scope:fnRec" %t19, ptr %t23
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
declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapturingLambda(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etransient(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandArgPart(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i64 %a2, { i64, ptr } %a3, { i64, ptr } %a4, i64 %a5, { i64, [2 x i64] } %a6)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb4ab14fd1aa8deeb21095c3402461540(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehandleLent(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, ptr %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elentLoopCopy(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eownsUnshared(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnsParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeStoresArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleePutsArg(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeKeepsSelf(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eliftSplit(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewantPromotion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitRefused(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_aa04e26a4d7578a7_d714aefedcea6ccb = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartOK(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_5ad8ce5e83291793_3404c81b33ceede7 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estmts(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2fscope_2eBndNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisFunc(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eboundary(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_59a1525204e95353_c37e754396521707 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fscope_2eBndLimit = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndArg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eBndOther = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2eBndAny = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H2ed2e5427629ba63a7110fc86d969058(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
@G_2ecompiler_2fscope_2eBndCapture = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_6bef328f0d1ecf52_91f27225e69db7a6 = external constant [0 x i8]
@olang_loc_6d67491290dfe709_4a442bed91eef13d = external constant [0 x i8]
@olang_loc_67e276f5a936c138_9490efd29ecc3a0c = external constant [0 x i8]
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorBuilt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8066e5da37f3a23b_ece6b8d6fabe8bf7 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastsUntil(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epropose(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_9e4942b53b152c4c_8e08edd23a0a3ef8 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efirstToken(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnCaptureTooShort(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eSpawnFuncTooShort(ptr %v0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_34786756d9cc10ef_3d198681fdad2233 = external constant [0 x i8]
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fscope_2eunPassed(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_24c83be0c0349755_6420fa2832beca31 = external constant [0 x i8]
@olang_loc_e0078e28944a7d64_c2d2e4e393ff4620 = external constant [0 x i8]
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H84f9774226d7b378ef632445c463492d(ptr %v0, ptr %a0)
@olang_loc_8eda7b5b464b0834_f721fd871dc79a60 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueRegions(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
@olang_loc_c1f751d19da60dc3_9664dc07dd21977f = external constant [0 x i8]
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H58d460568d59c9f3a36f8d9425118a1c(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2eisCapCode(i64 %a0)
@olang_loc_5f222bef9aa16676_4bf6c46847b9572 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_750161614449eadd_660de062846d2c99 = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8138290bc8857508_aa4fb7bb798d75e4 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereassigned(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldMark(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ectorParamIndex(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartsReach(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasBody(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_3492f037cbea8787_6357a327a0037b53 = external constant [0 x i8]
@G_2ecompiler_2fscope_2eFitReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fscope_2eFitOwn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2, i1 %a3)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartKept(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etraceAt(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecapsDiffer(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_cd338417bf9b4adb_b24d723c852a352f = external constant [0 x i8]
@olang_loc_d3b44bae2eeaabda_3c9b483dafe8946e = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eversionsDiffer(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2)
@G_2ecompiler_2fscope_2eFitField = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueLocalName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowedLocal(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eReferenceNarrowed(ptr %v0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eLen__H22c160154c8542d83ffe3c77c98973d0(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eAt_3ccompiler_2ftyped_3aLvalue_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteRefill(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, ptr %a3)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efitErrorAt(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i1 %a3)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteCondValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_27f9f8003e66d4c2_25a72554bedf4966 = external constant [0 x i8]
@olang_loc_5600be0283c8c0a9_e199d532ae73234d = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_7c76a5ff0a201730_60f43c735987f7c = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteParamCopy(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
@G_2ecompiler_2fscope_2eFitPayload = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamOfTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_3bc3e93e18d6d20f_7eae6e8d3b47aeeb = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteMadeNamed(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5)
declare ptr @compiler_2fscope_2eunWidened(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fscope_2etempOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_60c4a5415da7e8de_419e4bf7c0afcf6a = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esliceAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteSliceOfTemporary(ptr %v0)
@olang_loc_b5bc1eafb7fb24bc_101d8a8a62fdaef8 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflPlaceRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_c246bc7b7189f7e5_d655903db3304939 = external constant [0 x i8]
@olang_loc_c68ee02a91d7861d_898ef75a2993a579 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ederivedScope(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePop_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_1040a80ff621ce40_8920315fc4c3ab44 = external constant [0 x i8]
@olang_loc_ddc73f949322d0fd_8f7c03ce3b4890f1 = external constant [0 x i8]
@olang_loc_4c44ad98352c595_ba86be46ffaf75a9 = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_ac4e062111af42c7_39089cbd2d7221db = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_64866479fde10111_ef2974c0c8fea135 = external constant [0 x i8]
@olang_loc_e28f095865462080_aebf15f688a31244 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwValueArg(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2, i64 %a3, { i64, ptr } %a4, i1 %a5)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreParam(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_4290e2a90659b7f6_aa651f6d10e86162 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eEncloses(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_5870181ab0023c5d_b5d2f953d218d1c9 = external constant [0 x i8]
declare %"compiler/typed:BlockInfo" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockInfo_3e_2eAt_3ccompiler_2ftyped_3aBlockInfo_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_622a2f7e184bdd9a_1d72d3d4653d26a6 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
@olang_loc_1ae8b7943ba83321_5c259e314454f08d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_af2a74d4afc5c43e_94f83f31bbc69a2a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_71f08f1465b765e5_9e5dc3268d808631 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceDest(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2eplain()
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoin(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, %"compiler/scope:Val" %a2, { i64, [2 x i64] } %a3)
@olang_loc_3f9209becdebaa90_11232388f96dbd3c = external constant [0 x i8]
declare %"compiler/types:DtorWalk" @compiler_2ftypes_3aDtorWalk_2ector(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aDtorWalk_2eHolds(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/scope:fnRec" @compiler_2fscope_3afnRec_2ector(ptr %v0, ptr %v1, i64 %a0, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ePush_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/scope:fnRec" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
@olang_loc_15d2e36e7a971de9_96fafacf11681305 = external constant [0 x i8]
@olang_loc_623296b25c4a2534_fd3f86d02d068538 = external constant [0 x i8]
@olang_loc_954f6d28b3a52ac3_ffd2f75d7c0d3157 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efieldDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_5baf3d09f3018ecb_366b631d7db0e35f = external constant [0 x i8]
@G_2ecompiler_2fscope_2ePosNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2fscope_2eparamIndexIn(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2fscope_2ePosHome = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2fscope_2ePosResult = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
@olang_loc_154bf1a548ff7697_769c4cc2e13b72fb = external constant [0 x i8]
@G_2ecompiler_2fscope_2ePosDerived = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\01\00\00" }>, align 8
@olang_loc_2cd4932c1a9a7df6_c7fde3e5cca54e7a = external constant [0 x i8]
@G_2ecompiler_2fscope_2ePlaceCapture = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewing(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeIn(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
@olang_loc_3aa6b1bdb3eeaea7_b2680d59346154d3 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedCall(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@G_2ecompiler_2fscope_2ePlaceView = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewBase(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2econvertedLocal(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeStorage(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3)
declare i64 @compiler_2fscope_2etempSite(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeSite(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9047b81d628cb92_30df04453bf66e76 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorRegs(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eResultVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughRoot(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePure(ptr %v0, ptr %a0)
@olang_loc_5d0c71a8d2ef6a59_68b86ffb86527df5 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ePurePlace(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eSpan(ptr %v0, ptr %a0)
@olang_loc_8136fe9cd009015e_effe087bfaf9a8aa = external constant [0 x i8]
@olang_loc_989f9a5853b8d905_f9638c70ccb394b1 = external constant [0 x i8]
@olang_loc_9ce8ff5a7c812fb0_6c28ecd338a0cbbc = external constant [0 x i8]
@olang_loc_5c3642998b37ea8f_438088e259bab72b = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_486c515bb0c7ed42_3dcfa333a8d1daa6 = external constant [0 x i8]
@olang_loc_ed4ec6d3513e2b60_3036131f8fea9d34 = external constant [0 x i8]
@olang_loc_b48db41ed7b5d734_952948d9de5cb478 = external constant [0 x i8]
@olang_loc_e7aa8a952f10dcc3_5e7ff2b7646c8097 = external constant [0 x i8]
@olang_loc_dc4554eebbf8456_460c8fdf10d01e52 = external constant [0 x i8]
@olang_loc_ab37e5456fd3bb64_ee38acc32440dcb0 = external constant [0 x i8]
@olang_loc_c2f9290c57ed376d_cbd7590e0cb57901 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamLift(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_c0d893db7e601486_f2e0d00716145a7a = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
@olang_loc_dcd7e57cabd1f877_41684d2a22884c3b = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erunArrayParam(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_1d5cd0d51560a858_414b0c179bc0efcc = external constant [0 x i8]
declare void @compiler_2fscope_2ecollectBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_83cb1a0080c88b91_4687383f0631b81d = external constant [0 x i8]
@olang_loc_761b19f0f038728a_814968e4094408b6 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2eAt_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEntry(ptr %v0, ptr %a0)
@olang_loc_2076710935f5438b_1fe44552b1e9b767 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elandHeld(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a64307a1184a97f1_2344a9671103d455 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleStrictBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esoleBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evarName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, ptr %a3)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elocalName(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, ptr %a3)
@olang_loc_a29c887f84e1b245_5040fb81d2028cb9 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisParamRead(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eueExpr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i64 %a4)
@olang_loc_5a5f9b9905e967_ce08ad0ec337ed2b = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebeyondBound(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4)
@olang_loc_fcf83807c397e02b_4369dd1b0f80983f = external constant [0 x i8]
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare i1 @compiler_2fscope_2eresultsOnly(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eRefMut_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2ePush_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
@olang_loc_14cf142c3df65889_62fa71a6199e4c15 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eView_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3ccompiler_2fscope_3afnRec_3e_2eSome_3ccompiler_2fscope_3afnRec_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare i1 @compiler_2fscope_2erecLess(ptr %v0, ptr %v1, %"compiler/scope:fnRec" %a0, %"compiler/scope:fnRec" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eSetAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/scope:fnRec" %a2)
declare void @compiler_2fscope_3awalked_2ector(ptr %out, ptr %v0)

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
