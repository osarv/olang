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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/scope:walked" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/scope:Scoper" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { ptr, ptr }, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, i64, i1, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/typed:Plan", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/source:Span", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, [2 x i64] }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i1, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [2 x i64] }, i1, %"compiler/source:Span", { i64, [2 x i64] }, i1, { i64, [2 x i64] }, i1, i1, i1, %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/scope:fnRecs", i1, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, [2 x i64] }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, { i64, [2 x i64] }, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, i1, i32, i1, i1, i1, i1, i64, %"compiler/source:Span", i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, i1, i1, i1, i1, i64, %"compiler/source:Span", %"compiler/source:Span", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, ptr, { i64, ptr }, i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/scope:Gap", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, i1, i1, i1, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:fnRecs" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/scope:Gap" = type { i64, %"compiler/source:Span", { i64, ptr } }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/generic:Program" = type { ptr, ptr, %"compiler/types:Table", %"compiler/facts:Table", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/generic:Origin", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/types:Table" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/facts:Table" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, i64 }
%"compiler/generic:Origin" = type { i64, %"compiler/source:Span", i64, i32 }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/scope:rel" = type { { i64, [2 x i64] }, { i64, [2 x i64] }, i1, %"compiler/source:Span", i64, i1, i1 }
%"compiler/scope:summary" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/scope:fnRecs", i1, i1, i1, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/scope:fnRec" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/scope:Placement" = type { i64, i64, i64, i64, { i64, ptr }, i1 }
%"compiler/scope:verAtom" = type { i64, i64, i64, i64, i64, i64, i1, i64 }
%"compiler/scope:twinTab" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:MapEntry.f17f3f0202174eb6591f595766c15613" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %a0) #0 {
entry:
  %l3 = alloca %"compiler/scope:Val"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t4 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s0, i32 3, { i64, [2 x i64] } %a0)
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

define dso_local void @compiler_2fscope_2ecollectField(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t18, i32 0, i32 3
  %t20 = load i64, ptr %t19
  store i64 %t20, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/scope:walked", ptr %t22, i32 0, i32 6
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l2, !tbaa !29
  %t27 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %t25)
  store i32 %t27, ptr %l16
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i32, ptr %l16, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t28, i32 %t29)
  br label %bb7
bb7:
  %t30 = load ptr, ptr %l1, !tbaa !29
  %t32 = getelementptr %"compiler/scope:walked", ptr %t30, i32 0, i32 7
  %t33 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t32, i64 %t33)
  br label %bb8
bb8:
  br label %bb22
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t37 = load ptr, ptr %l20, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb10, label %bb11
bb10:
  %t40 = load ptr, ptr %l20, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 8}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb11
bb11:
  %t44 = load i1, ptr %l21, !tbaa !21
  br i1 %t44, label %bb12, label %bb13
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t47, i32 0, i32 1
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb17
bb14:
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr %"compiler/scope:walked", ptr %t51, i32 0, i32 6
  %t54 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v1, ptr %t53, i32 %t54)
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l1, !tbaa !29
  %t59 = getelementptr %"compiler/scope:walked", ptr %t57, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t59, i64 -1)
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
  call void @__olang_check_failed(ptr @olang_loc_6f3b4b2e4e301b65_ef2dd15b8f9fe549)
  unreachable
bb22:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eCalleesFirst(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %a0, i32 0, i32 25
  %t5 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %s0, ptr %t3)
  store { i64, ptr } %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t6, ptr %l4, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = mul i64 %t9, 8
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  store { i64, ptr } %t13, ptr %l6, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = load i64, ptr %l5, !tbaa !24
  %t19 = mul i64 %t18, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t15, ptr %t17, i64 %t19, i1 false)
  %t20 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t21 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eGivesHeld(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l32 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 242
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l13, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t18, ptr %l14, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l15, !tbaa !24
  %t21 = load i64, ptr %l15, !tbaa !24
  %t22 = mul i64 %t21, 1
  %t23 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l16, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = mul i64 %t30, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t27, ptr %t29, i64 %t31, i1 false)
  %t32 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t32, ptr %l14, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/scope:Scoper", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t36, i64 %t37)
  store ptr %t40, ptr %l20
  br label %bb8
bb8:
  %t41 = load ptr, ptr %l20, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Body", ptr %t41, i32 0, i32 1
  %t44 = load { i64, [2 x i64] }, ptr %t43
  store { i64, [2 x i64] } %t44, ptr %l3
  %t46 = load { i64, [2 x i64] }, ptr %l3
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 0
  br i1 %t49, label %bb9, label %bb10
bb9:
  %t51 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { i64 }, ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  br label %bb15
bb11:
  store %olang.scope zeroinitializer, ptr %s2
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 0
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t60 = getelementptr %"compiler/generic:Program", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/load:Loader", ptr %t61, i32 0, i32 3
  %t64 = load ptr, ptr %t63, !tbaa !29
  store ptr %t64, ptr %l30, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/scope:Scoper", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l32, !tbaa !29
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/scope:Scoper", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t73 = load i64, ptr %l4, !tbaa !24
  %t76 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t72, i64 %t73)
  store i64 %t76, ptr %l36
  br label %bb12
bb12:
  %t77 = load ptr, ptr %l32, !tbaa !29
  %t78 = load i64, ptr %l36, !tbaa !24
  %t79 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t77, i64 %t78)
  store ptr %t79, ptr %l37
  br label %bb13
bb13:
  %t80 = load ptr, ptr %l37, !tbaa !29
  %t82 = getelementptr %"compiler/ast:Func", ptr %t80, i32 0, i32 2
  %t83 = load i32, ptr %t82, !tbaa !23
  %t84 = load ptr, ptr %l30, !tbaa !29
  %t86 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s2, ptr %t84, i32 %t83)
  store { i64, ptr } %t86, ptr %l40
  br label %bb14
bb14:
  %t87 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t89 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t89, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = add i64 %t88, %t91
  %t93 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t95 = add i64 %t92, %t94
  %t96 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t95)
  call void @olang_textcopy(ptr %t96, ptr %t87, i64 %t88)
  %t97 = getelementptr i8, ptr %t96, i64 %t88
  call void @olang_textcopy(ptr %t97, ptr %t90, i64 %t91)
  %t98 = getelementptr i8, ptr %t97, i64 %t91
  call void @olang_textcopy(ptr %t98, ptr %t93, i64 %t94)
  %t99 = insertvalue { i64, ptr } undef, i64 %t95, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t96, 1
  store { i64, ptr } %t100, ptr %l23, !tbaa !27
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d3, i32 0, i32 1) }, ptr %l42, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t102, ptr %l23, !tbaa !27
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_d092cc8b6b901f99_2fc50d69972bed85)
  unreachable
bb20:
  %t104 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l44, !tbaa !24
  %t106 = load i64, ptr %l44, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l45, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l44, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t117, ptr %l23, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eInferStats(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 149
  %t5 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 156
  %t10 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 151
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l9
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/scope:Scoper", ptr %t16, i32 0, i32 150
  %t20 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l12
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 155
  %t25 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l15
  br label %bb5
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 223
  %t30 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb48ebc0aec2f1394686d895000e23a7c(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 224
  %t35 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t33)
  store i64 %t35, ptr %l21
  br label %bb7
bb7:
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = load i64, ptr %l21, !tbaa !24
  %t38 = sub i64 %t36, %t37
  store i64 %t38, ptr %l22, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 224
  %t43 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l25
  br label %bb8
bb8:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 208
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t49 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = call i64 @__olang_fmt_i64(ptr null, i64 %t50)
  %t52 = add i64 %t49, %t51
  %t53 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t55 = add i64 %t52, %t54
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t58 = add i64 %t55, %t57
  %t59 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = load i64, ptr %l9, !tbaa !24
  %t63 = call i64 @__olang_fmt_i64(ptr null, i64 %t62)
  %t64 = add i64 %t61, %t63
  %t65 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t67 = add i64 %t64, %t66
  %t68 = load i64, ptr %l12, !tbaa !24
  %t69 = call i64 @__olang_fmt_i64(ptr null, i64 %t68)
  %t70 = add i64 %t67, %t69
  %t71 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 0
  %t73 = add i64 %t70, %t72
  %t74 = load i64, ptr %l15, !tbaa !24
  %t75 = call i64 @__olang_fmt_i64(ptr null, i64 %t74)
  %t76 = add i64 %t73, %t75
  %t77 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = load i64, ptr %l22, !tbaa !24
  %t81 = call i64 @__olang_fmt_i64(ptr null, i64 %t80)
  %t82 = add i64 %t79, %t81
  %t83 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t85 = add i64 %t82, %t84
  %t86 = load i64, ptr %l25, !tbaa !24
  %t87 = call i64 @__olang_fmt_i64(ptr null, i64 %t86)
  %t88 = add i64 %t85, %t87
  %t89 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t91 = add i64 %t88, %t90
  %t93 = call i64 @__olang_fmt_i64(ptr null, i64 %t47)
  %t94 = add i64 %t91, %t93
  %t95 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t97 = add i64 %t94, %t96
  %t98 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t97)
  call void @olang_textcopy(ptr %t98, ptr %t48, i64 %t49)
  %t99 = getelementptr i8, ptr %t98, i64 %t49
  %t100 = call i64 @__olang_fmt_i64(ptr %t99, i64 %t50)
  %t101 = getelementptr i8, ptr %t99, i64 %t51
  call void @olang_textcopy(ptr %t101, ptr %t53, i64 %t54)
  %t102 = getelementptr i8, ptr %t101, i64 %t54
  %t103 = call i64 @__olang_fmt_i64(ptr %t102, i64 %t56)
  %t104 = getelementptr i8, ptr %t102, i64 %t57
  call void @olang_textcopy(ptr %t104, ptr %t59, i64 %t60)
  %t105 = getelementptr i8, ptr %t104, i64 %t60
  %t106 = call i64 @__olang_fmt_i64(ptr %t105, i64 %t62)
  %t107 = getelementptr i8, ptr %t105, i64 %t63
  call void @olang_textcopy(ptr %t107, ptr %t65, i64 %t66)
  %t108 = getelementptr i8, ptr %t107, i64 %t66
  %t109 = call i64 @__olang_fmt_i64(ptr %t108, i64 %t68)
  %t110 = getelementptr i8, ptr %t108, i64 %t69
  call void @olang_textcopy(ptr %t110, ptr %t71, i64 %t72)
  %t111 = getelementptr i8, ptr %t110, i64 %t72
  %t112 = call i64 @__olang_fmt_i64(ptr %t111, i64 %t74)
  %t113 = getelementptr i8, ptr %t111, i64 %t75
  call void @olang_textcopy(ptr %t113, ptr %t77, i64 %t78)
  %t114 = getelementptr i8, ptr %t113, i64 %t78
  %t115 = call i64 @__olang_fmt_i64(ptr %t114, i64 %t80)
  %t116 = getelementptr i8, ptr %t114, i64 %t81
  call void @olang_textcopy(ptr %t116, ptr %t83, i64 %t84)
  %t117 = getelementptr i8, ptr %t116, i64 %t84
  %t118 = call i64 @__olang_fmt_i64(ptr %t117, i64 %t86)
  %t119 = getelementptr i8, ptr %t117, i64 %t87
  call void @olang_textcopy(ptr %t119, ptr %t89, i64 %t90)
  %t120 = getelementptr i8, ptr %t119, i64 %t90
  %t121 = call i64 @__olang_fmt_i64(ptr %t120, i64 %t47)
  %t122 = getelementptr i8, ptr %t120, i64 %t93
  call void @olang_textcopy(ptr %t122, ptr %t95, i64 %t96)
  %t123 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t98, 1
  store { i64, ptr } %t124, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddLocalRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca %"compiler/scope:fnRecs"
  %l11 = alloca i1
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca %"compiler/scope:fnRecs"
  %l38 = alloca %"compiler/scope:fnRecs"
  %l39 = alloca i32
  %l41 = alloca %"compiler/scope:fnRecs"
  %l42 = alloca %"compiler/scope:fnRecs"
  %l47 = alloca %"compiler/source:Span"
  %l50 = alloca i1
  %l54 = alloca ptr
  %l57 = alloca i1
  %l61 = alloca i1
  %l71 = alloca i1
  %l76 = alloca i1
  %l84 = alloca i1
  %l85 = alloca ptr
  %l89 = alloca ptr
  %l90 = alloca i32
  %l96 = alloca %"compiler/scope:fnRecs"
  %l100 = alloca %"compiler/scope:fnRecs"
  %l101 = alloca i32
  %l103 = alloca %"compiler/scope:fnRecs"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %t1, i64 %t2)
  store i1 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i1, ptr %l11, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 159
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  br i1 %t12, label %bb4, label %bb5
bb3:
  br label %bb40
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f0350fc91fe6e1d6_3a4336dcacad1f0a)
  unreachable
bb5:
  br label %bb6
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 159
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l3, !tbaa !29
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %s2, ptr %t19, i64 %t20, i64 -1)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l19
  br label %bb7
bb7:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t25 = call ptr @__olang_scope_alloc_a(ptr %s2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %t25
  store ptr %t25, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t27 = load i64, ptr %l5, !tbaa !24
  store i64 %t27, ptr %l21, !tbaa !24
  %t28 = load ptr, ptr %l4, !tbaa !29
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t28)
  store i64 %t30, ptr %l23
  br label %bb9
bb9:
  %t31 = load i64, ptr %l21, !tbaa !24
  %t32 = load i64, ptr %l23, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb39
bb11:
  br label %bb12
bb12:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t38 = load i64, ptr %l5, !tbaa !24
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l28
  br label %bb13
bb13:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t43, i32 0, i32 94
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H4d9dd4678cabff1b2f88ea0996ab01db(ptr %v0, ptr %t45, i64 %t46)
  store i1 %t49, ptr %l32
  br label %bb14
bb14:
  %t50 = load i1, ptr %l32, !tbaa !21
  br i1 %t50, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s4
  %t51 = load ptr, ptr %l1, !tbaa !29
  store ptr %t51, ptr %l33, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/scope:Scoper", ptr %t52, i32 0, i32 94
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t54, i64 %t55)
  %t59 = extractvalue { i32, %"compiler/scope:fnRecs" } %t58, 1
  %t60 = extractvalue { i32, %"compiler/scope:fnRecs" } %t58, 0
  store i32 %t60, ptr %l39
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb18, label %ok.62, !prof !99
ok.62:
  store %"compiler/scope:fnRecs" %t59, ptr %l38
  br label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s5
  %t63 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/typed:Versions", ptr %t63, i32 0, i32 4
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t65, i64 %t66)
  store %"compiler/source:Span" %t69, ptr %l47
  br label %bb24
bb17:
  %t71 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %l38)
  store %"compiler/scope:fnRecs" %t71, ptr %l41
  br label %bb20
bb18:
  br label %bb19
bb19:
  %t72 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t72, ptr %l42
  br label %bb21
bb20:
  %t73 = load %"compiler/scope:fnRecs", ptr %l41
  store %"compiler/scope:fnRecs" %t73, ptr %l34
  br label %bb22
bb21:
  %t74 = load %"compiler/scope:fnRecs", ptr %l42
  store %"compiler/scope:fnRecs" %t74, ptr %l34
  br label %bb22
bb22:
  %t75 = load %"compiler/scope:fnRecs", ptr %l34
  %t76 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 104, i64 8)
  store %"compiler/scope:fnRecs" %t75, ptr %t76
  %t77 = load ptr, ptr %l33, !tbaa !29
  call void @compiler_2fscope_2emergeRecs(ptr %v1, ptr %v0, ptr %t77, ptr %t76)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb37
bb24:
  %t79 = getelementptr %"compiler/source:Span", ptr %l47, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = icmp sge i32 %t80, 0
  br i1 %t82, label %bb25, label %bb26
bb25:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/typed:Versions", ptr %t84, i32 0, i32 6
  %t87 = load i64, ptr %l6, !tbaa !24
  %t90 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %s5, ptr %t86, i64 %t87)
  store ptr %t90, ptr %l54
  br label %bb27
bb26:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb28
bb27:
  %t91 = load ptr, ptr %l54, !tbaa !29
  %t92 = icmp eq ptr %t91, null
  %t94 = xor i1 %t92, true
  store i1 %t94, ptr %l50, !tbaa !21
  br label %bb28
bb28:
  %t96 = load i1, ptr %l50, !tbaa !21
  br i1 %t96, label %bb29, label %bb30
bb29:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/scope:Scoper", ptr %t97, i32 0, i32 165
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t99, i64 %t100)
  store i1 %t103, ptr %l61
  br label %bb31
bb30:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb32
bb31:
  %t104 = load i1, ptr %l61, !tbaa !21
  %t105 = xor i1 %t104, true
  store i1 %t105, ptr %l57, !tbaa !21
  br label %bb32
bb32:
  %t107 = load i1, ptr %l57, !tbaa !21
  br i1 %t107, label %bb33, label %bb34
bb33:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t110 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elateDef(ptr %v0, ptr %v1, ptr %t108, ptr %t109, i64 %t110)
  br label %bb35
bb34:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/scope:fnRecs", ptr %t114, i32 0, i32 1
  store i1 false, ptr %t116, !tbaa !21
  br label %bb36
bb35:
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t117 = load i64, ptr %l5, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l5, !tbaa !24
  br label %bb8
bb39:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb40:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l2, !tbaa !24
  %t125 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignedWhole(ptr %v0, ptr %t121, i64 %t122)
  store i1 %t125, ptr %l71
  br label %bb41
bb41:
  %t126 = load i1, ptr %l71, !tbaa !21
  br i1 %t126, label %bb42, label %bb43
bb42:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr %"compiler/scope:fnRecs", ptr %t127, i32 0, i32 1
  store i1 false, ptr %t129, !tbaa !21
  %t130 = load ptr, ptr %l1, !tbaa !29
  %t132 = getelementptr %"compiler/scope:fnRecs", ptr %t130, i32 0, i32 3
  %t133 = load i64, ptr %l2, !tbaa !24
  %t136 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v1, ptr %t132, i64 %t133)
  store i1 %t136, ptr %l76
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t137 = load i1, ptr %l76, !tbaa !21
  %t138 = xor i1 %t137, true
  br i1 %t138, label %bb45, label %bb46
bb45:
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t142 = getelementptr %"compiler/scope:fnRecs", ptr %t140, i32 0, i32 3
  %t143 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t142, i64 %t143)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb49:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 43
  %t149 = load i64, ptr %l2, !tbaa !24
  %t152 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %t148, i64 %t149)
  store i1 %t152, ptr %l84
  br label %bb50
bb50:
  %t153 = load i1, ptr %l84, !tbaa !21
  br i1 %t153, label %bb51, label %bb52
bb51:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/scope:Scoper", ptr %t154, i32 0, i32 43
  %t157 = load i64, ptr %l2, !tbaa !24
  %t160 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t156, i64 %t157)
  %t161 = extractvalue { i32, ptr } %t160, 1
  %t162 = extractvalue { i32, ptr } %t160, 0
  store i32 %t162, ptr %l90
  %t163 = icmp ne i32 %t162, 0
  br i1 %t163, label %bb54, label %ok.164, !prof !99
ok.164:
  store ptr %t161, ptr %l89
  br label %bb53
bb52:
  br label %bb58
bb53:
  %t165 = load ptr, ptr %l89, !tbaa !29
  store ptr %t165, ptr %l85, !tbaa !29
  br label %bb56
bb54:
  br label %bb55
bb55:
  %t166 = load ptr, ptr %l1, !tbaa !29
  %t168 = getelementptr %"compiler/scope:fnRecs", ptr %t166, i32 0, i32 1
  store i1 false, ptr %t168, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  %t169 = load ptr, ptr %l85, !tbaa !29
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v0, ptr %t170, ptr %t171, ptr %t169)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb58:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/scope:Scoper", ptr %t177, i32 0, i32 93
  %t180 = load i64, ptr %l2, !tbaa !24
  %t183 = call { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v0, ptr %t179, i64 %t180)
  %t184 = extractvalue { i32, %"compiler/scope:fnRecs" } %t183, 1
  %t185 = extractvalue { i32, %"compiler/scope:fnRecs" } %t183, 0
  store i32 %t185, ptr %l101
  %t186 = icmp ne i32 %t185, 0
  br i1 %t186, label %bb60, label %ok.187, !prof !99
ok.187:
  store %"compiler/scope:fnRecs" %t184, ptr %l100
  br label %bb59
bb59:
  %t189 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %s0, ptr %l100)
  store %"compiler/scope:fnRecs" %t189, ptr %l103
  br label %bb62
bb60:
  br label %bb61
bb61:
  %t190 = load ptr, ptr %l1, !tbaa !29
  %t192 = getelementptr %"compiler/scope:fnRecs", ptr %t190, i32 0, i32 1
  store i1 false, ptr %t192, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb62:
  %t193 = load %"compiler/scope:fnRecs", ptr %l103
  store %"compiler/scope:fnRecs" %t193, ptr %l96
  br label %bb63
bb63:
  %t194 = load %"compiler/scope:fnRecs", ptr %l96
  store %"compiler/scope:fnRecs" %t194, ptr %l8
  %t195 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fscope_2emergeRecs(ptr %v1, ptr %s0, ptr %t195, ptr %l8)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l21 = alloca ptr
  %l24 = alloca %"compiler/typed:Block"
  %s3 = alloca %olang.scope
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
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t6 = load ptr, ptr %l6, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 14
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l2, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Try", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasExpr(ptr %v0, ptr %v1, ptr %t20, ptr %t24)
  br label %bb9
bb9:
  br label %bb23
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t28 = load ptr, ptr %l15, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l15, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 18}
  %t34 = icmp eq i64 %t32, 12
  store i1 %t34, ptr %l16, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l16, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [5 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t38, i32 0, i32 2
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l3, !tbaa !29
  br label %bb15
bb14:
  br label %bb18
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t42 = load ptr, ptr %l0, !tbaa !29
  store ptr %t42, ptr %l21, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Seq", ptr %t43, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t48 = call %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v1, ptr %s3, i32 -1, { i64, ptr } %t46)
  store %"compiler/typed:Block" %t48, ptr %l24
  br label %bb16
bb16:
  %t49 = load %"compiler/typed:Block", ptr %l24
  %t50 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 24, i64 8)
  store %"compiler/typed:Block" %t49, ptr %t50
  %t51 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %s3, ptr %t51, ptr %t50)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
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
  call void @__olang_check_failed(ptr @olang_loc_75e5f2eb37e26097_1cabe39736605273)
  unreachable
bb23:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargPartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
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
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 1
  %t21 = load i32, ptr %t20
  store i32 %t21, ptr %l3, !tbaa !23
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = getelementptr { i64, [5 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t25, i32 0, i32 2
  %t27 = load ptr, ptr %t26
  store ptr %t27, ptr %l4, !tbaa !29
  br label %bb6
bb5:
  br label %bb12
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l3, !tbaa !23
  %t33 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t29, i32 %t30)
  store i1 %t33, ptr %l19
  br label %bb7
bb7:
  %t34 = load i1, ptr %l19, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l4, !tbaa !29
  %t39 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %s0, ptr %t35, ptr %t36)
  store i64 %t39, ptr %l22
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb11:
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_bd8a316f234c31bd_e8aabd6e86499e79)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebecomeBinds(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca i32
  %l21 = alloca %"compiler/typed:Local"
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l52 = alloca i1
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l61 = alloca %"compiler/source:Span"
  %l64 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca %"compiler/source:Span"
  %l72 = alloca %"compiler/source:Span"
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca %"compiler/diagmsg:Msg"
  %l76 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca ptr
  %l92 = alloca i32
  %l93 = alloca i1
  %l95 = alloca i1
  %l98 = alloca i1
  %l99 = alloca ptr
  %l102 = alloca %"compiler/source:Span"
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l114 = alloca i64
  %l116 = alloca i64
  %l121 = alloca i32
  %l126 = alloca %"compiler/typed:Local"
  %l129 = alloca i1
  %l130 = alloca i1
  %l135 = alloca i1
  %l137 = alloca i1
  %l142 = alloca i1
  %l143 = alloca ptr
  %l146 = alloca %"compiler/source:Span"
  %l152 = alloca { i64, ptr }
  %l153 = alloca %"compiler/diagmsg:Msg"
  %l154 = alloca i64
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l6, !tbaa !24
  %t3 = extractvalue { i64, ptr } %a2, 0
  store i64 %t3, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t5 = load i64, ptr %l7, !tbaa !24
  %t6 = load i64, ptr %l6, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l7, !tbaa !24
  %t16 = load i64, ptr %l6, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l8, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l30, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l30, !tbaa !24
  store i64 %t31, ptr %l27, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l27, !tbaa !24
  store i64 %t32, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l10, !tbaa !24
  %t43 = load i64, ptr %l8, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l11, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t51, ptr %l48, !tbaa !27
  %t52 = load i64, ptr %l11, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i64 %t52
  %t57 = load { i64, [2 x i64] }, ptr %t56
  %t59 = extractvalue { i64, [2 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 3
  br i1 %t60, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb13
bb12:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l53, !tbaa !27
  %t63 = load i64, ptr %l11, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i64 %t63
  %t68 = load { i64, [2 x i64] }, ptr %t67
  %t70 = extractvalue { i64, [2 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 2
  store i1 %t71, ptr %l52, !tbaa !21
  br label %bb13
bb13:
  %t73 = load i1, ptr %l52, !tbaa !21
  br i1 %t73, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t74 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t74, ptr %l57, !tbaa !27
  %t75 = load i64, ptr %l11, !tbaa !24
  %t77 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t75
  %t80 = load i64, ptr %t79, !tbaa !34
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb17, label %bb18
bb17:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr %"compiler/typed:Call", ptr %t85, i32 0, i32 1
  %t88 = load { i64, ptr }, ptr %t87, !tbaa !27
  store { i64, ptr } %t88, ptr %l64, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t89, ptr %l65, !tbaa !27
  %t90 = load i64, ptr %l11, !tbaa !24
  %t92 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i64, ptr %t93, i64 %t90
  %t95 = load i64, ptr %t94, !tbaa !34
  %t97 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr ptr, ptr %t98, i64 %t95
  %t100 = load ptr, ptr %t99, !tbaa !39
  %t103 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t84, ptr %t100)
  store %"compiler/source:Span" %t103, ptr %l69
  br label %bb19
bb18:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/source:Span", ptr %l5
  %t108 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t104, %"compiler/source:Span" %t105)
  store %"compiler/source:Span" %t108, ptr %l72
  br label %bb20
bb19:
  %t109 = load %"compiler/source:Span", ptr %l69
  store %"compiler/source:Span" %t109, ptr %l61
  br label %bb21
bb20:
  %t110 = load %"compiler/source:Span", ptr %l72
  store %"compiler/source:Span" %t110, ptr %l61
  br label %bb21
bb21:
  %t111 = load %"compiler/source:Span", ptr %l61
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l73, !tbaa !29
  store %"compiler/source:Span" %t111, ptr %l74
  %t114 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %s2)
  store %"compiler/diagmsg:Msg" %t114, ptr %l75
  br label %bb22
bb22:
  %t115 = load ptr, ptr %l73, !tbaa !29
  %t116 = load %"compiler/source:Span", ptr %l74
  %t117 = load %"compiler/diagmsg:Msg", ptr %l75
  %t118 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s2, ptr %t115, %"compiler/source:Span" %t116, %"compiler/diagmsg:Msg" %t117)
  store i64 %t118, ptr %l76
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb24:
  %t119 = load i64, ptr %l10, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l10, !tbaa !24
  br label %bb7
bb25:
  %t123 = load ptr, ptr %l1, !tbaa !29
  %t125 = getelementptr %"compiler/typed:Call", ptr %t123, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t128 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  store i64 %t130, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s6
  %t132 = load i64, ptr %l14, !tbaa !24
  %t133 = load i64, ptr %l15, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb28:
  br label %bb29
bb29:
  %t140 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t140, ptr %l87, !tbaa !27
  %t141 = load i64, ptr %l14, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr ptr, ptr %t144, i64 %t141
  %t146 = load ptr, ptr %t145, !tbaa !39
  store ptr %t146, ptr %l16, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  store ptr %t148, ptr %l90, !tbaa !29
  %t149 = load ptr, ptr %l16, !tbaa !29
  %t151 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t149)
  store i32 %t151, ptr %l92
  br label %bb30
bb30:
  %t152 = load ptr, ptr %l90, !tbaa !29
  %t153 = load i32, ptr %l92, !tbaa !23
  %t154 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t152, i32 %t153)
  store i1 %t154, ptr %l93
  br label %bb31
bb31:
  %t155 = load i1, ptr %l93, !tbaa !21
  %t156 = xor i1 %t155, true
  br i1 %t156, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l95, !tbaa !21
  br label %bb35
bb33:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l16, !tbaa !29
  %t162 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailStorageGiven(ptr %v0, ptr %v1, ptr %t158, ptr %t159)
  store i1 %t162, ptr %l98
  br label %bb34
bb34:
  %t163 = load i1, ptr %l98, !tbaa !21
  store i1 %t163, ptr %l95, !tbaa !21
  br label %bb35
bb35:
  %t164 = load i1, ptr %l95, !tbaa !21
  br i1 %t164, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb37:
  br label %bb38
bb38:
  %t165 = load ptr, ptr %l0, !tbaa !29
  store ptr %t165, ptr %l99, !tbaa !29
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load ptr, ptr %l16, !tbaa !29
  %t170 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %t166, ptr %t167)
  store %"compiler/source:Span" %t170, ptr %l102
  br label %bb39
bb39:
  %t171 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %s6)
  store %"compiler/diagmsg:Msg" %t171, ptr %l103
  br label %bb40
bb40:
  %t172 = load ptr, ptr %l99, !tbaa !29
  %t173 = load %"compiler/source:Span", ptr %l102
  %t174 = load %"compiler/diagmsg:Msg", ptr %l103
  %t175 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s6, ptr %t172, %"compiler/source:Span" %t173, %"compiler/diagmsg:Msg" %t174)
  store i64 %t175, ptr %l104
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb42:
  %t176 = load i64, ptr %l14, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l14, !tbaa !24
  br label %bb26
bb43:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 26
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb44, label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_f447ab81603d391c_7aef9466e7fdeac8)
  unreachable
bb45:
  br label %bb46
bb46:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 26
  %t190 = load ptr, ptr %t189, !tbaa !29
  store ptr %t190, ptr %l17, !tbaa !29
  %t192 = load ptr, ptr %l17, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Body", ptr %t192, i32 0, i32 5
  store ptr %t194, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s10
  %t196 = load i64, ptr %l19, !tbaa !24
  store i64 %t196, ptr %l114, !tbaa !24
  %t197 = load ptr, ptr %l18, !tbaa !29
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t197)
  store i64 %t199, ptr %l116
  br label %bb48
bb48:
  %t200 = load i64, ptr %l114, !tbaa !24
  %t201 = load i64, ptr %l116, !tbaa !24
  %t202 = icmp slt i64 %t200, %t201
  %t204 = xor i1 %t202, true
  br i1 %t204, label %bb49, label %bb50
bb49:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb50:
  br label %bb51
bb51:
  %t206 = load ptr, ptr %l18, !tbaa !29
  %t207 = load i64, ptr %l19, !tbaa !24
  %t210 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t206, i64 %t207)
  store i32 %t210, ptr %l121
  br label %bb52
bb52:
  %t211 = load i32, ptr %l121, !tbaa !23
  store i32 %t211, ptr %l20, !tbaa !23
  %t212 = load ptr, ptr %l17, !tbaa !29
  %t214 = getelementptr %"compiler/typed:Body", ptr %t212, i32 0, i32 7
  %t215 = load i32, ptr %l20, !tbaa !23
  %t217 = sext i32 %t215 to i64
  %t220 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t214, i64 %t217)
  store %"compiler/typed:Local" %t220, ptr %l126
  br label %bb53
bb53:
  %t221 = load %"compiler/typed:Local", ptr %l126
  store %"compiler/typed:Local" %t221, ptr %l21
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t224 = load i32, ptr %t223, !tbaa !23
  %t227 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t222, i32 %t224)
  store i1 %t227, ptr %l129
  br label %bb54
bb54:
  %t228 = load i1, ptr %l129, !tbaa !21
  br i1 %t228, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb58
bb56:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/scope:Scoper", ptr %t229, i32 0, i32 0
  %t232 = load ptr, ptr %t231, !tbaa !29
  %t234 = getelementptr %"compiler/generic:Program", ptr %t232, i32 0, i32 2
  %t235 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 2
  %t236 = load i32, ptr %t235, !tbaa !23
  %t239 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t234, i32 %t236)
  store i1 %t239, ptr %l135
  br label %bb57
bb57:
  %t240 = load i1, ptr %l135, !tbaa !21
  %t241 = xor i1 %t240, true
  store i1 %t241, ptr %l130, !tbaa !21
  br label %bb58
bb58:
  %t243 = load i1, ptr %l130, !tbaa !21
  br i1 %t243, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb62
bb60:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t246 = load i32, ptr %l20, !tbaa !23
  %t248 = sext i32 %t246 to i64
  %t252 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailTakes(ptr %v0, ptr %v1, ptr %t244, ptr %t245, i64 %t248)
  store i1 %t252, ptr %l142
  br label %bb61
bb61:
  %t253 = load i1, ptr %l142, !tbaa !21
  store i1 %t253, ptr %l137, !tbaa !21
  br label %bb62
bb62:
  %t254 = load i1, ptr %l137, !tbaa !21
  br i1 %t254, label %bb63, label %bb64
bb63:
  call void @__olang_scope_close(ptr %s10)
  br label %bb70
bb64:
  br label %bb65
bb65:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l143, !tbaa !29
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load %"compiler/source:Span", ptr %l5
  %t260 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t256, %"compiler/source:Span" %t257)
  store %"compiler/source:Span" %t260, ptr %l146
  br label %bb66
bb66:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = getelementptr %"compiler/scope:Scoper", ptr %t261, i32 0, i32 0
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = getelementptr %"compiler/generic:Program", ptr %t264, i32 0, i32 0
  %t267 = load ptr, ptr %t266, !tbaa !29
  %t269 = getelementptr %"compiler/load:Loader", ptr %t267, i32 0, i32 3
  %t270 = load ptr, ptr %t269, !tbaa !29
  %t271 = getelementptr %"compiler/typed:Local", ptr %l21, i32 0, i32 0
  %t272 = load i32, ptr %t271, !tbaa !23
  %t275 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t270, i32 %t272)
  store { i64, ptr } %t275, ptr %l152
  br label %bb67
bb67:
  %t276 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t277 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeHeldParam(ptr %v0, ptr %s10, { i64, ptr } %t276)
  store %"compiler/diagmsg:Msg" %t277, ptr %l153
  br label %bb68
bb68:
  %t278 = load ptr, ptr %l143, !tbaa !29
  %t279 = load %"compiler/source:Span", ptr %l146
  %t280 = load %"compiler/diagmsg:Msg", ptr %l153
  %t281 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s10, ptr %t278, %"compiler/source:Span" %t279, %"compiler/diagmsg:Msg" %t280)
  store i64 %t281, ptr %l154
  br label %bb69
bb69:
  call void @__olang_scope_close(ptr %s10)
  br label %bb71
bb70:
  %t282 = load i64, ptr %l19, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l19, !tbaa !24
  br label %bb47
bb71:
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/scope:Scoper", ptr %t286, i32 0, i32 42
  %t289 = load i64, ptr %t288, !tbaa !24
  %t291 = icmp sge i64 %t289, 0
  br i1 %t291, label %bb72, label %bb73
bb72:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load ptr, ptr %l1, !tbaa !29
  %t295 = load %"compiler/source:Span", ptr %l5
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailRows(ptr %v0, ptr %v1, ptr %t293, ptr %t294, %"compiler/source:Span" %t295)
  br label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb75
bb75:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebndDef(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l9 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/scope:Scoper", ptr %t3, i32 0, i32 102
  %t9 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %t5, i64 %t1)
  store i1 %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load i1, ptr %l9, !tbaa !21
  %t11 = xor i1 %t10, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 102
  store ptr %t15, ptr %l12, !tbaa !29
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %l13, !tbaa !24
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l14
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = load i64, ptr %l13, !tbaa !24
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc680bc8b736298027ff580de04f60380(ptr %v0, ptr %v0, ptr %t18, i64 %t19, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 102
  %t24 = load i64, ptr %l1, !tbaa !24
  %t27 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hfb9e5165fbc860148668cf342d052cc0(ptr %v0, ptr %v0, ptr %t23, i64 %t24)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l20
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb8, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l19
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l19, !tbaa !29
  store ptr %t32, ptr %l15, !tbaa !29
  br label %bb10
bb8:
  br label %bb9
bb9:
  br label %ret
bb10:
  %t33 = load ptr, ptr %l15, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t33, ptr %a2)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecanKeep(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/scope:rel"
  %l35 = alloca ptr
  %l36 = alloca i64
  %l37 = alloca %"compiler/scope:rel"
  %l40 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  %l51 = alloca ptr
  %l52 = alloca i1
  %l61 = alloca i64
  %l68 = alloca i64
  %l75 = alloca { i64, ptr }
  %l79 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l108 = alloca i64
  %l112 = alloca i1
  %l119 = alloca i1
  %l123 = alloca i1
  %l127 = alloca i64
  %l139 = alloca i64
  %l142 = alloca i64
  %l166 = alloca i64
  %l170 = alloca i1
  %l174 = alloca i1
  %l177 = alloca i1
  %l181 = alloca i1
  %l191 = alloca i64
  %l194 = alloca i1
  %l198 = alloca ptr
  %l202 = alloca i1
  %l206 = alloca ptr
  %l214 = alloca { i64, ptr }
  %l220 = alloca i64
  %l223 = alloca i64
  %l231 = alloca i64
  %l234 = alloca i64
  %l259 = alloca ptr
  %l262 = alloca i64
  %l264 = alloca i64
  %l269 = alloca %"compiler/scope:rel"
  %l272 = alloca i1
  %l276 = alloca i1
  %l278 = alloca i1
  %l281 = alloca i1
  %l293 = alloca ptr
  %l296 = alloca i64
  %l298 = alloca i64
  %l303 = alloca %"compiler/scope:rel"
  %l306 = alloca i1
  %l307 = alloca i1
  %l309 = alloca i1
  %l312 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t5 = call i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i32 %t5, ptr %l40
  br label %bb1
bb1:
  %t6 = load i32, ptr %l40, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp eq i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/typed:Call", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l4, !tbaa !29
  store ptr %t19, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t20 = load ptr, ptr %l47, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t23 = load ptr, ptr %l47, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 5}
  %t26 = icmp eq i64 %t24, 1
  store i1 %t26, ptr %l48, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l48, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  %t28 = load ptr, ptr %l4, !tbaa !29
  store ptr %t28, ptr %l51, !tbaa !29
  store i1 false, ptr %l52, !tbaa !21
  %t29 = load ptr, ptr %l51, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load ptr, ptr %l51, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 5}
  %t35 = icmp eq i64 %t33, 4
  store i1 %t35, ptr %l52, !tbaa !21
  br label %bb10
bb10:
  %t36 = load i1, ptr %l52, !tbaa !21
  br i1 %t36, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_e7f077513292cd77_7cc56e961d13405b)
  unreachable
bb19:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/generic:Program", ptr %t41, i32 0, i32 2
  store ptr %t43, ptr %l5, !tbaa !29
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load i32, ptr %l3, !tbaa !23
  %t49 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %t45, i32 %t46)
  store i64 %t49, ptr %l61
  br label %bb20
bb20:
  %t50 = load i64, ptr @G_2ecompiler_2ftypes_2eRoleCtor, !tbaa !24
  %t51 = load i64, ptr %l61, !tbaa !24
  %t53 = icmp eq i64 %t51, %t50
  br i1 %t53, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t58 = load i64, ptr %l2, !tbaa !24
  %t62 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t56, i32 %t57, i64 %t58)
  store i64 %t62, ptr %l68
  br label %bb24
bb24:
  %t63 = load i64, ptr %l68, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t64 = load i64, ptr %l6, !tbaa !24
  %t65 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t68 = icmp eq i64 %t64, %t65
  br i1 %t68, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t72 = load i32, ptr %l3, !tbaa !23
  %t75 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %s0, ptr %t71, i32 %t72)
  store { i64, ptr } %t75, ptr %l75
  br label %bb28
bb28:
  %t76 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t76, 0
  store i64 %t77, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = icmp sgt i64 %t79, 0
  br i1 %t81, label %bb29, label %bb30
bb29:
  %t83 = load i64, ptr %l7, !tbaa !24
  store i64 %t83, ptr %l79, !tbaa !24
  br label %bb31
bb30:
  store i64 1, ptr %l79, !tbaa !24
  br label %bb31
bb31:
  %t85 = load i64, ptr %l79, !tbaa !24
  store i64 %t85, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t87 = load i64, ptr %l8, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb32, label %bb33
bb32:
  %t92 = load i64, ptr %l10, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb37
bb34:
  %t96 = load i64, ptr %l9, !tbaa !24
  %t97 = load i64, ptr %l8, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l10, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l87, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb36
bb36:
  %t112 = load i64, ptr %l87, !tbaa !24
  store i64 %t112, ptr %l84, !tbaa !24
  br label %bb37
bb37:
  %t113 = load i64, ptr %l84, !tbaa !24
  store i64 %t113, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  %t114 = load i64, ptr %l12, !tbaa !24
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb39, label %bb40
bb39:
  br label %bb60
bb40:
  br label %bb41
bb41:
  %t122 = load i64, ptr %l8, !tbaa !24
  %t123 = load i64, ptr %l12, !tbaa !24
  %t124 = load i64, ptr %l10, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  %t132 = load ptr, ptr %l5, !tbaa !29
  %t133 = load i32, ptr %l3, !tbaa !23
  %t138 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %t132, i32 %t133, i64 %t130)
  store i64 %t138, ptr %l108
  br label %bb42
bb42:
  %t139 = load i64, ptr %l108, !tbaa !24
  store i64 %t139, ptr %l14, !tbaa !24
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l2, !tbaa !24
  %t144 = icmp eq i64 %t140, %t141
  br i1 %t144, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb45
bb44:
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t150 = icmp eq i64 %t146, %t147
  store i1 %t150, ptr %l112, !tbaa !21
  br label %bb45
bb45:
  %t152 = load i1, ptr %l112, !tbaa !21
  br i1 %t152, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t154 = load i64, ptr %l14, !tbaa !24
  %t156 = icmp sge i64 %t154, 0
  br i1 %t156, label %bb49, label %bb50
bb49:
  %t158 = load i64, ptr %l6, !tbaa !24
  %t159 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp eq i64 %t158, %t159
  br i1 %t162, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb55
bb51:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb54
bb52:
  %t164 = load ptr, ptr %l5, !tbaa !29
  %t165 = load i32, ptr %l3, !tbaa !23
  %t166 = load i64, ptr %l14, !tbaa !24
  %t170 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t164, i32 %t165, i64 %t166)
  store i64 %t170, ptr %l127
  br label %bb53
bb53:
  %t171 = load i64, ptr %l2, !tbaa !24
  %t172 = load i64, ptr %l127, !tbaa !24
  %t174 = icmp eq i64 %t172, %t171
  store i1 %t174, ptr %l123, !tbaa !21
  br label %bb54
bb54:
  %t176 = load i1, ptr %l123, !tbaa !21
  store i1 %t176, ptr %l119, !tbaa !21
  br label %bb55
bb55:
  %t177 = load i1, ptr %l119, !tbaa !21
  br i1 %t177, label %bb56, label %bb57
bb56:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t179 = load i64, ptr %l12, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l12, !tbaa !24
  br label %bb38
bb60:
  store i64 0, ptr %l15, !tbaa !24
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Call", ptr %t183, i32 0, i32 1
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t190 = load i64, ptr %l16, !tbaa !24
  %t191 = load i64, ptr %l15, !tbaa !24
  %t194 = icmp sgt i64 %t190, %t191
  br i1 %t194, label %bb61, label %bb62
bb61:
  %t196 = load i64, ptr %l17, !tbaa !24
  %t198 = icmp sgt i64 %t196, 0
  br i1 %t198, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb66
bb63:
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l15, !tbaa !24
  %t204 = sub i64 %t200, %t201
  %t205 = load i64, ptr %l17, !tbaa !24
  %t208 = add i64 %t204, %t205
  %t210 = sub i64 %t208, 1
  %t211 = load i64, ptr %l17, !tbaa !24
  %t214 = sdiv i64 %t210, %t211
  store i64 %t214, ptr %l142, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb65
bb65:
  %t216 = load i64, ptr %l142, !tbaa !24
  store i64 %t216, ptr %l139, !tbaa !24
  br label %bb66
bb66:
  %t217 = load i64, ptr %l139, !tbaa !24
  store i64 %t217, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb67
bb67:
  %t218 = load i64, ptr %l19, !tbaa !24
  %t219 = load i64, ptr %l18, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb68, label %bb69
bb68:
  br label %bb91
bb69:
  br label %bb70
bb70:
  %t226 = load i64, ptr %l15, !tbaa !24
  %t227 = load i64, ptr %l19, !tbaa !24
  %t228 = load i64, ptr %l17, !tbaa !24
  %t231 = mul i64 %t227, %t228
  %t234 = add i64 %t226, %t231
  store i64 %t234, ptr %l20, !tbaa !24
  %t236 = load i64, ptr %l20, !tbaa !24
  %t237 = load i64, ptr %l2, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb71, label %bb72
bb71:
  br label %bb90
bb72:
  br label %bb73
bb73:
  %t242 = load ptr, ptr %l5, !tbaa !29
  %t243 = load i32, ptr %l3, !tbaa !23
  %t244 = load i64, ptr %l20, !tbaa !24
  %t248 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t242, i32 %t243, i64 %t244)
  store i64 %t248, ptr %l166
  br label %bb74
bb74:
  %t249 = load i64, ptr %l166, !tbaa !24
  store i64 %t249, ptr %l21, !tbaa !24
  %t250 = load i64, ptr %l21, !tbaa !24
  %t251 = load i64, ptr %l2, !tbaa !24
  %t254 = icmp eq i64 %t250, %t251
  br i1 %t254, label %bb75, label %bb76
bb75:
  store i1 true, ptr %l170, !tbaa !21
  br label %bb77
bb76:
  %t256 = load i64, ptr %l6, !tbaa !24
  %t257 = load i64, ptr %l20, !tbaa !24
  %t260 = icmp eq i64 %t256, %t257
  store i1 %t260, ptr %l170, !tbaa !21
  br label %bb77
bb77:
  %t262 = load i1, ptr %l170, !tbaa !21
  br i1 %t262, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l174, !tbaa !21
  br label %bb83
bb79:
  %t263 = load i64, ptr %l6, !tbaa !24
  %t265 = icmp sge i64 %t263, 0
  br i1 %t265, label %bb80, label %bb81
bb80:
  %t267 = load i64, ptr %l21, !tbaa !24
  %t268 = load i64, ptr %l6, !tbaa !24
  %t271 = icmp eq i64 %t267, %t268
  store i1 %t271, ptr %l177, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb82
bb82:
  %t273 = load i1, ptr %l177, !tbaa !21
  store i1 %t273, ptr %l174, !tbaa !21
  br label %bb83
bb83:
  %t274 = load i1, ptr %l174, !tbaa !21
  br i1 %t274, label %bb84, label %bb85
bb84:
  store i1 true, ptr %l181, !tbaa !21
  br label %bb86
bb85:
  %t275 = load i64, ptr %l21, !tbaa !24
  %t276 = load i64, ptr @G_2ecompiler_2ftypes_2eFromTypeVar, !tbaa !24
  %t279 = icmp eq i64 %t275, %t276
  store i1 %t279, ptr %l181, !tbaa !21
  br label %bb86
bb86:
  %t281 = load i1, ptr %l181, !tbaa !21
  br i1 %t281, label %bb87, label %bb88
bb87:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb88:
  br label %bb89
bb89:
  br label %bb90
bb90:
  %t283 = load i64, ptr %l19, !tbaa !24
  %t285 = add i64 %t283, 1
  store i64 %t285, ptr %l19, !tbaa !24
  br label %bb67
bb91:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load ptr, ptr %l1, !tbaa !29
  %t290 = getelementptr %"compiler/typed:Call", ptr %t288, i32 0, i32 0
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t294 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %t287, ptr %t291)
  store i64 %t294, ptr %l191
  br label %bb92
bb92:
  %t295 = load i64, ptr %l191, !tbaa !24
  store i64 %t295, ptr %l22, !tbaa !24
  %t296 = load i64, ptr %l22, !tbaa !24
  %t298 = icmp slt i64 %t296, 0
  br i1 %t298, label %bb93, label %bb94
bb93:
  store i1 true, ptr %l194, !tbaa !21
  br label %bb96
bb94:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/scope:Scoper", ptr %t300, i32 0, i32 6
  %t303 = load i64, ptr %l22, !tbaa !24
  %t306 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t302, i64 %t303)
  store ptr %t306, ptr %l198
  br label %bb95
bb95:
  %t307 = load ptr, ptr %l198, !tbaa !29
  %t309 = getelementptr %"compiler/scope:summary", ptr %t307, i32 0, i32 19
  %t310 = load i1, ptr %t309, !tbaa !21
  %t312 = xor i1 %t310, true
  store i1 %t312, ptr %l194, !tbaa !21
  br label %bb96
bb96:
  %t314 = load i1, ptr %l194, !tbaa !21
  br i1 %t314, label %bb97, label %bb98
bb97:
  store i1 true, ptr %l202, !tbaa !21
  br label %bb100
bb98:
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/scope:Scoper", ptr %t315, i32 0, i32 6
  %t318 = load i64, ptr %l22, !tbaa !24
  %t321 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t317, i64 %t318)
  store ptr %t321, ptr %l206
  br label %bb99
bb99:
  %t322 = load ptr, ptr %l206, !tbaa !29
  %t324 = getelementptr %"compiler/scope:summary", ptr %t322, i32 0, i32 20
  %t325 = load i1, ptr %t324, !tbaa !21
  store i1 %t325, ptr %l202, !tbaa !21
  br label %bb100
bb100:
  %t327 = load i1, ptr %l202, !tbaa !21
  br i1 %t327, label %bb101, label %bb102
bb101:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb102:
  br label %bb103
bb103:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"compiler/scope:Scoper", ptr %t329, i32 0, i32 0
  %t332 = load ptr, ptr %t331, !tbaa !29
  %t334 = getelementptr %"compiler/generic:Program", ptr %t332, i32 0, i32 2
  %t335 = load i32, ptr %l3, !tbaa !23
  %t338 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %s0, ptr %t334, i32 %t335)
  store { i64, ptr } %t338, ptr %l214
  br label %bb104
bb104:
  %t339 = load { i64, ptr }, ptr %l214, !tbaa !27
  store { i64, ptr } %t339, ptr %l23, !tbaa !27
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/scope:Scoper", ptr %t340, i32 0, i32 0
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t345 = getelementptr %"compiler/generic:Program", ptr %t343, i32 0, i32 2
  %t346 = load i32, ptr %l3, !tbaa !23
  %t347 = load i64, ptr %l2, !tbaa !24
  %t351 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %t345, i32 %t346, i64 %t347)
  store i64 %t351, ptr %l220
  br label %bb105
bb105:
  %t352 = load i64, ptr %l220, !tbaa !24
  store i64 %t352, ptr %l24, !tbaa !24
  %t353 = load i64, ptr %l24, !tbaa !24
  %t355 = icmp sge i64 %t353, 0
  br i1 %t355, label %bb106, label %bb107
bb106:
  %t357 = load i64, ptr %l24, !tbaa !24
  store i64 %t357, ptr %l223, !tbaa !24
  br label %bb108
bb107:
  %t359 = load i64, ptr %l2, !tbaa !24
  store i64 %t359, ptr %l223, !tbaa !24
  br label %bb108
bb108:
  %t361 = load i64, ptr %l223, !tbaa !24
  store i64 %t361, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  %t362 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t364 = extractvalue { i64, ptr } %t362, 0
  store i64 %t364, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t366 = load i64, ptr %l27, !tbaa !24
  %t367 = load i64, ptr %l26, !tbaa !24
  %t370 = icmp sgt i64 %t366, %t367
  br i1 %t370, label %bb109, label %bb110
bb109:
  %t372 = load i64, ptr %l28, !tbaa !24
  %t374 = icmp sgt i64 %t372, 0
  br i1 %t374, label %bb111, label %bb112
bb110:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb114
bb111:
  %t376 = load i64, ptr %l27, !tbaa !24
  %t377 = load i64, ptr %l26, !tbaa !24
  %t380 = sub i64 %t376, %t377
  %t381 = load i64, ptr %l28, !tbaa !24
  %t384 = add i64 %t380, %t381
  %t386 = sub i64 %t384, 1
  %t387 = load i64, ptr %l28, !tbaa !24
  %t390 = sdiv i64 %t386, %t387
  store i64 %t390, ptr %l234, !tbaa !24
  br label %bb113
bb112:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb113
bb113:
  %t392 = load i64, ptr %l234, !tbaa !24
  store i64 %t392, ptr %l231, !tbaa !24
  br label %bb114
bb114:
  %t393 = load i64, ptr %l231, !tbaa !24
  store i64 %t393, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb115
bb115:
  %t394 = load i64, ptr %l30, !tbaa !24
  %t395 = load i64, ptr %l29, !tbaa !24
  %t398 = icmp slt i64 %t394, %t395
  %t400 = xor i1 %t398, true
  br i1 %t400, label %bb116, label %bb117
bb116:
  br label %bb147
bb117:
  br label %bb118
bb118:
  %t402 = load i64, ptr %l26, !tbaa !24
  %t403 = load i64, ptr %l30, !tbaa !24
  %t404 = load i64, ptr %l28, !tbaa !24
  %t407 = mul i64 %t403, %t404
  %t410 = add i64 %t402, %t407
  store i64 %t410, ptr %l31, !tbaa !24
  %t412 = load i64, ptr %l31, !tbaa !24
  %t414 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !27
  %t416 = getelementptr i64, ptr %t415, i64 %t412
  %t417 = load i64, ptr %t416, !tbaa !34
  %t418 = load i64, ptr %l25, !tbaa !24
  %t421 = icmp ne i64 %t417, %t418
  br i1 %t421, label %bb119, label %bb120
bb119:
  br label %bb146
bb120:
  br label %bb121
bb121:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t425 = getelementptr %"compiler/scope:Scoper", ptr %t423, i32 0, i32 6
  %t426 = load i64, ptr %l22, !tbaa !24
  %t429 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t425, i64 %t426)
  store ptr %t429, ptr %l259
  br label %bb122
bb122:
  %t430 = load ptr, ptr %l259, !tbaa !29
  %t432 = getelementptr %"compiler/scope:summary", ptr %t430, i32 0, i32 0
  store ptr %t432, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb123
bb123:
  %t434 = load i64, ptr %l33, !tbaa !24
  store i64 %t434, ptr %l262, !tbaa !24
  %t435 = load ptr, ptr %l32, !tbaa !29
  %t437 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t435)
  store i64 %t437, ptr %l264
  br label %bb124
bb124:
  %t438 = load i64, ptr %l262, !tbaa !24
  %t439 = load i64, ptr %l264, !tbaa !24
  %t440 = icmp slt i64 %t438, %t439
  %t442 = xor i1 %t440, true
  br i1 %t442, label %bb125, label %bb126
bb125:
  br label %bb145
bb126:
  br label %bb127
bb127:
  %t444 = load ptr, ptr %l32, !tbaa !29
  %t445 = load i64, ptr %l33, !tbaa !24
  %t448 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t444, i64 %t445)
  store %"compiler/scope:rel" %t448, ptr %l269
  br label %bb128
bb128:
  %t449 = load %"compiler/scope:rel", ptr %l269
  store %"compiler/scope:rel" %t449, ptr %l34
  %t450 = getelementptr %"compiler/scope:rel", ptr %l34, i32 0, i32 0
  %t451 = load { i64, [2 x i64] }, ptr %t450
  %t453 = extractvalue { i64, [2 x i64] } %t451, 0
  %t454 = icmp eq i64 %t453, 2
  br i1 %t454, label %bb129, label %bb130
bb129:
  %t456 = getelementptr %"compiler/scope:rel", ptr %l34, i32 0, i32 0
  %t457 = getelementptr { i64, [2 x i64] }, ptr %t456, i32 0, i32 1
  %t458 = getelementptr { i64 }, ptr %t457, i32 0, i32 0
  %t459 = load i64, ptr %t458
  %t460 = load i64, ptr %l31, !tbaa !24
  %t463 = icmp eq i64 %t459, %t460
  store i1 %t463, ptr %l272, !tbaa !21
  br label %bb131
bb130:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb131
bb131:
  %t465 = load i1, ptr %l272, !tbaa !21
  br i1 %t465, label %bb132, label %bb133
bb132:
  store i1 true, ptr %l276, !tbaa !21
  br label %bb140
bb133:
  %t466 = getelementptr %"compiler/scope:rel", ptr %l34, i32 0, i32 2
  %t467 = load i1, ptr %t466, !tbaa !21
  br i1 %t467, label %bb134, label %bb135
bb134:
  %t469 = getelementptr %"compiler/scope:rel", ptr %l34, i32 0, i32 1
  %t470 = load { i64, [2 x i64] }, ptr %t469
  %t472 = extractvalue { i64, [2 x i64] } %t470, 0
  %t473 = icmp eq i64 %t472, 2
  br i1 %t473, label %bb136, label %bb137
bb135:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb139
bb136:
  %t475 = getelementptr %"compiler/scope:rel", ptr %l34, i32 0, i32 1
  %t476 = getelementptr { i64, [2 x i64] }, ptr %t475, i32 0, i32 1
  %t477 = getelementptr { i64 }, ptr %t476, i32 0, i32 0
  %t478 = load i64, ptr %t477
  %t479 = load i64, ptr %l31, !tbaa !24
  %t482 = icmp eq i64 %t478, %t479
  store i1 %t482, ptr %l281, !tbaa !21
  br label %bb138
bb137:
  store i1 false, ptr %l281, !tbaa !21
  br label %bb138
bb138:
  %t484 = load i1, ptr %l281, !tbaa !21
  store i1 %t484, ptr %l278, !tbaa !21
  br label %bb139
bb139:
  %t485 = load i1, ptr %l278, !tbaa !21
  store i1 %t485, ptr %l276, !tbaa !21
  br label %bb140
bb140:
  %t486 = load i1, ptr %l276, !tbaa !21
  br i1 %t486, label %bb141, label %bb142
bb141:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb142:
  br label %bb143
bb143:
  br label %bb144
bb144:
  %t488 = load i64, ptr %l33, !tbaa !24
  %t490 = add i64 %t488, 1
  store i64 %t490, ptr %l33, !tbaa !24
  br label %bb123
bb145:
  br label %bb146
bb146:
  %t492 = load i64, ptr %l30, !tbaa !24
  %t494 = add i64 %t492, 1
  store i64 %t494, ptr %l30, !tbaa !24
  br label %bb115
bb147:
  %t496 = load ptr, ptr %l0, !tbaa !29
  %t498 = getelementptr %"compiler/scope:Scoper", ptr %t496, i32 0, i32 6
  %t499 = load i64, ptr %l22, !tbaa !24
  %t502 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t498, i64 %t499)
  store ptr %t502, ptr %l293
  br label %bb148
bb148:
  %t503 = load ptr, ptr %l293, !tbaa !29
  %t505 = getelementptr %"compiler/scope:summary", ptr %t503, i32 0, i32 0
  store ptr %t505, ptr %l35, !tbaa !29
  store i64 0, ptr %l36, !tbaa !24
  br label %bb149
bb149:
  %t507 = load i64, ptr %l36, !tbaa !24
  store i64 %t507, ptr %l296, !tbaa !24
  %t508 = load ptr, ptr %l35, !tbaa !29
  %t510 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t508)
  store i64 %t510, ptr %l298
  br label %bb150
bb150:
  %t511 = load i64, ptr %l296, !tbaa !24
  %t512 = load i64, ptr %l298, !tbaa !24
  %t513 = icmp slt i64 %t511, %t512
  %t515 = xor i1 %t513, true
  br i1 %t515, label %bb151, label %bb152
bb151:
  br label %bb167
bb152:
  br label %bb153
bb153:
  %t517 = load ptr, ptr %l35, !tbaa !29
  %t518 = load i64, ptr %l36, !tbaa !24
  %t521 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t517, i64 %t518)
  store %"compiler/scope:rel" %t521, ptr %l303
  br label %bb154
bb154:
  %t522 = load %"compiler/scope:rel", ptr %l303
  store %"compiler/scope:rel" %t522, ptr %l37
  %t523 = getelementptr %"compiler/scope:rel", ptr %l37, i32 0, i32 0
  %t524 = load { i64, [2 x i64] }, ptr %t523
  %t525 = load i64, ptr %l2, !tbaa !24
  %t528 = call i1 @compiler_2fscope_2ederivedOf({ i64, [2 x i64] } %t524, i64 %t525)
  store i1 %t528, ptr %l306
  br label %bb155
bb155:
  %t529 = load i1, ptr %l306, !tbaa !21
  br i1 %t529, label %bb156, label %bb157
bb156:
  store i1 true, ptr %l307, !tbaa !21
  br label %bb162
bb157:
  %t530 = getelementptr %"compiler/scope:rel", ptr %l37, i32 0, i32 2
  %t531 = load i1, ptr %t530, !tbaa !21
  br i1 %t531, label %bb158, label %bb159
bb158:
  %t533 = getelementptr %"compiler/scope:rel", ptr %l37, i32 0, i32 1
  %t534 = load { i64, [2 x i64] }, ptr %t533
  %t535 = load i64, ptr %l2, !tbaa !24
  %t538 = call i1 @compiler_2fscope_2ederivedOf({ i64, [2 x i64] } %t534, i64 %t535)
  store i1 %t538, ptr %l312
  br label %bb160
bb159:
  store i1 false, ptr %l309, !tbaa !21
  br label %bb161
bb160:
  %t539 = load i1, ptr %l312, !tbaa !21
  store i1 %t539, ptr %l309, !tbaa !21
  br label %bb161
bb161:
  %t540 = load i1, ptr %l309, !tbaa !21
  store i1 %t540, ptr %l307, !tbaa !21
  br label %bb162
bb162:
  %t541 = load i1, ptr %l307, !tbaa !21
  br i1 %t541, label %bb163, label %bb164
bb163:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb164:
  br label %bb165
bb165:
  br label %bb166
bb166:
  %t543 = load i64, ptr %l36, !tbaa !24
  %t545 = add i64 %t543, 1
  store i64 %t545, ptr %l36, !tbaa !24
  br label %bb149
bb167:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2echoiceRefs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca { i64, [2 x i64] }
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca { i64, [2 x i64] }
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i1
  %l56 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l75 = alloca i1
  %l85 = alloca ptr
  %l99 = alloca i64
  %l101 = alloca i64
  %l106 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca ptr
  %l112 = alloca i1
  %l117 = alloca ptr
  %l119 = alloca i32
  %l120 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l128 = alloca { i64, [2 x i64] }
  %l134 = alloca { i64, [2 x i64] }
  %l139 = alloca { i64, [2 x i64] }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, [2 x i64] }
  %t66 = alloca { i64, [2 x i64] }, align 8
  %t174 = alloca { i64, [2 x i64] }, align 8
  %t178 = alloca { i64, [2 x i64] }, align 8
  %t236 = alloca { i64, [2 x i64] }, align 8
  %t251 = alloca { i64, [2 x i64] }, align 8
  %t271 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t8 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t3, ptr %a1)
  store ptr %t8, ptr %l22
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l22, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  store ptr %t10, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t11 = load ptr, ptr %l23, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load ptr, ptr %l23, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 11
  store i1 %t17, ptr %l24, !tbaa !21
  br label %bb4
bb4:
  %t18 = load i1, ptr %l24, !tbaa !21
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 2
  %t23 = load ptr, ptr %t22
  store ptr %t23, ptr %l4, !tbaa !29
  br label %bb7
bb6:
  br label %bb13
bb7:
  store ptr %l2, ptr %l29, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t27 = getelementptr %"compiler/typed:Cond", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb8, label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c315d8e1b666b9f2_cb49359568748e36)
  unreachable
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/typed:Cond", ptr %t32, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load ptr, ptr %l29, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t36, ptr %t35)
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l4, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Cond", ptr %t38, i32 0, i32 2
  %t41 = load ptr, ptr %t40, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %l2, ptr %t41)
  br label %bb12
bb12:
  br label %bb56
bb13:
  %t44 = load ptr, ptr %l3, !tbaa !29
  store ptr %t44, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t45 = load ptr, ptr %l38, !tbaa !29
  %t46 = icmp ne ptr %t45, null
  br i1 %t46, label %bb14, label %bb15
bb14:
  %t48 = load ptr, ptr %l38, !tbaa !29
  %t49 = load i64, ptr %t48, !range !{i64 0, i64 18}
  %t51 = icmp eq i64 %t49, 13
  store i1 %t51, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l39, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t55 = getelementptr { i64, [5 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t55, i32 0, i32 2
  %t57 = load ptr, ptr %t56
  store ptr %t57, ptr %l5, !tbaa !29
  br label %bb18
bb17:
  br label %bb51
bb18:
  %t59 = load ptr, ptr %l5, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Match", ptr %t59, i32 0, i32 3
  %t62 = load i1, ptr %t61, !tbaa !21
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb19, label %bb20
bb19:
  store { i64, [2 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 0
  store i64 0, ptr %t67
  %t68 = load { i64, [2 x i64] }, ptr %t66
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t68, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t70 = load ptr, ptr %l5, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Match", ptr %t70, i32 0, i32 1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t77 = extractvalue { i64, ptr } %t75, 0
  store i64 %t77, ptr %l8, !tbaa !24
  br label %bb22
bb22:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb23, label %bb24
bb23:
  br label %bb34
bb24:
  br label %bb25
bb25:
  %t87 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t87, ptr %l56, !tbaa !27
  %t88 = load i64, ptr %l7, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr ptr, ptr %t91, i64 %t88
  %t93 = load ptr, ptr %t92, !tbaa !39
  store ptr %t93, ptr %l9, !tbaa !29
  %t95 = load ptr, ptr %l9, !tbaa !29
  %t97 = getelementptr %"compiler/typed:Arm", ptr %t95, i32 0, i32 4
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = icmp eq ptr %t98, null
  %t102 = xor i1 %t100, true
  br i1 %t102, label %bb26, label %bb27
bb26:
  store ptr %l2, ptr %l63, !tbaa !29
  %t104 = load ptr, ptr %l9, !tbaa !29
  %t106 = getelementptr %"compiler/typed:Arm", ptr %t104, i32 0, i32 4
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = icmp eq ptr %t107, null
  br i1 %t109, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  call void @__olang_check_failed(ptr @olang_loc_24644cfdb6585119_908704f065623d9d)
  unreachable
bb29:
  br label %bb30
bb30:
  %t111 = load ptr, ptr %l9, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Arm", ptr %t111, i32 0, i32 4
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t115 = load ptr, ptr %l63, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t115, ptr %t114)
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l7, !tbaa !24
  br label %bb22
bb34:
  %t121 = load ptr, ptr %l5, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Match", ptr %t121, i32 0, i32 2
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l5, !tbaa !29
  %t132 = getelementptr %"compiler/typed:Match", ptr %t130, i32 0, i32 2
  %t133 = load ptr, ptr %t132, !tbaa !29
  %t135 = icmp eq ptr %t133, null
  br i1 %t135, label %bb37, label %bb38
bb36:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb40
bb37:
  call void @__olang_check_failed(ptr @olang_loc_68a62456ab789a64_c90c032bbba18c8)
  unreachable
bb38:
  br label %bb39
bb39:
  %t137 = load ptr, ptr %l5, !tbaa !29
  %t139 = getelementptr %"compiler/typed:Match", ptr %t137, i32 0, i32 2
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Arm", ptr %t140, i32 0, i32 4
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = icmp eq ptr %t144, null
  %t148 = xor i1 %t146, true
  store i1 %t148, ptr %l75, !tbaa !21
  br label %bb40
bb40:
  %t150 = load i1, ptr %l75, !tbaa !21
  br i1 %t150, label %bb41, label %bb42
bb41:
  store ptr %l2, ptr %l85, !tbaa !29
  %t151 = load ptr, ptr %l5, !tbaa !29
  %t153 = getelementptr %"compiler/typed:Match", ptr %t151, i32 0, i32 2
  %t154 = load ptr, ptr %t153, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  br i1 %t156, label %bb43, label %bb44
bb42:
  br label %bb50
bb43:
  call void @__olang_check_failed(ptr @olang_loc_68a62456ab789a64_c90c032bbba18c8)
  unreachable
bb44:
  br label %bb45
bb45:
  %t158 = load ptr, ptr %l5, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Match", ptr %t158, i32 0, i32 2
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Arm", ptr %t161, i32 0, i32 4
  %t165 = load ptr, ptr %t164, !tbaa !29
  store ptr %t165, ptr %l10, !tbaa !29
  %t167 = load ptr, ptr %l10, !tbaa !29
  %t169 = icmp eq ptr %t167, null
  br i1 %t169, label %bb46, label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_68a62456ab789a64_c90c032bbba18c8)
  unreachable
bb47:
  br label %bb48
bb48:
  %t171 = load ptr, ptr %l10, !tbaa !29
  %t172 = load ptr, ptr %l85, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t172, ptr %t171)
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb56
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store { i64, [2 x i64] } zeroinitializer, ptr %t174
  %t175 = getelementptr { i64, [2 x i64] }, ptr %t174, i32 0, i32 0
  store i64 0, ptr %t175
  %t176 = load { i64, [2 x i64] }, ptr %t174
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t176, ptr %rv
  br label %ret
bb55:
  call void @__olang_check_failed(ptr @olang_loc_95e0a8f1123dd6ca_6df17d64d17059fe)
  unreachable
bb56:
  store { i64, [2 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [2 x i64] }, ptr %t178, i32 0, i32 0
  store i64 0, ptr %t179
  %t180 = load { i64, [2 x i64] }, ptr %t178
  store { i64, [2 x i64] } %t180, ptr %l11
  store ptr %l2, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s11
  %t183 = load i64, ptr %l13, !tbaa !24
  store i64 %t183, ptr %l99, !tbaa !24
  %t184 = load ptr, ptr %l12, !tbaa !29
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %t184)
  store i64 %t186, ptr %l101
  br label %bb58
bb58:
  %t187 = load i64, ptr %l99, !tbaa !24
  %t188 = load i64, ptr %l101, !tbaa !24
  %t189 = icmp slt i64 %t187, %t188
  %t191 = xor i1 %t189, true
  br i1 %t191, label %bb59, label %bb60
bb59:
  call void @__olang_scope_close(ptr %s11)
  br label %bb93
bb60:
  br label %bb61
bb61:
  %t193 = load ptr, ptr %l12, !tbaa !29
  %t194 = load i64, ptr %l13, !tbaa !24
  %t197 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s0, ptr %s0, ptr %t193, i64 %t194)
  store ptr %t197, ptr %l106
  br label %bb62
bb62:
  %t198 = load ptr, ptr %l106, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t204 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %s0, ptr %s11, ptr %t199, ptr %t198)
  store ptr %t204, ptr %l110
  br label %bb63
bb63:
  %t205 = load ptr, ptr %l110, !tbaa !29
  store ptr %t205, ptr %l15, !tbaa !29
  %t206 = load ptr, ptr %l15, !tbaa !29
  store ptr %t206, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t207 = load ptr, ptr %l111, !tbaa !29
  %t208 = icmp ne ptr %t207, null
  br i1 %t208, label %bb64, label %bb65
bb64:
  %t210 = load ptr, ptr %l111, !tbaa !29
  %t211 = load i64, ptr %t210, !range !{i64 0, i64 18}
  %t213 = icmp eq i64 %t211, 3
  store i1 %t213, ptr %l112, !tbaa !21
  br label %bb65
bb65:
  %t214 = load i1, ptr %l112, !tbaa !21
  br i1 %t214, label %bb66, label %bb67
bb66:
  %t215 = load ptr, ptr %l15, !tbaa !29
  %t217 = getelementptr { i64, [5 x i64] }, ptr %t215, i32 0, i32 1
  %t218 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t217, i32 0, i32 2
  %t219 = load ptr, ptr %t218
  store ptr %t219, ptr %l16, !tbaa !29
  br label %bb68
bb67:
  br label %bb86
bb68:
  %t221 = load ptr, ptr %l0, !tbaa !29
  store ptr %t221, ptr %l117, !tbaa !29
  %t222 = load ptr, ptr %l16, !tbaa !29
  %t224 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %s11, ptr %t222)
  store i32 %t224, ptr %l119
  br label %bb69
bb69:
  %t225 = load ptr, ptr %l117, !tbaa !29
  %t226 = load i32, ptr %l119, !tbaa !23
  %t227 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t225, i32 %t226)
  store i1 %t227, ptr %l120
  br label %bb70
bb70:
  %t228 = load i1, ptr %l120, !tbaa !21
  %t229 = xor i1 %t228, true
  br i1 %t229, label %bb71, label %bb72
bb71:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb74
bb72:
  %t231 = load ptr, ptr %l16, !tbaa !29
  %t233 = call i1 @compiler_2fscope_2eflThroughRef(ptr %s11, ptr %t231)
  store i1 %t233, ptr %l124
  br label %bb73
bb73:
  %t234 = load i1, ptr %l124, !tbaa !21
  store i1 %t234, ptr %l122, !tbaa !21
  br label %bb74
bb74:
  %t235 = load i1, ptr %l122, !tbaa !21
  br i1 %t235, label %bb75, label %bb76
bb75:
  store { i64, [2 x i64] } zeroinitializer, ptr %t236
  %t237 = getelementptr { i64, [2 x i64] }, ptr %t236, i32 0, i32 0
  store i64 0, ptr %t237
  %t238 = load { i64, [2 x i64] }, ptr %t236
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t238, ptr %rv
  br label %ret
bb76:
  br label %bb77
bb77:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l16, !tbaa !29
  %t244 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %s11, ptr %t240, ptr %t241, i1 true)
  store { i64, [2 x i64] } %t244, ptr %l128
  br label %bb78
bb78:
  %t245 = load { i64, [2 x i64] }, ptr %l128
  store { i64, [2 x i64] } %t245, ptr %l17
  %t246 = load { i64, [2 x i64] }, ptr %l17
  %t248 = extractvalue { i64, [2 x i64] } %t246, 0
  %t249 = icmp eq i64 %t248, 0
  br i1 %t249, label %bb79, label %bb80
bb79:
  store { i64, [2 x i64] } zeroinitializer, ptr %t251
  %t252 = getelementptr { i64, [2 x i64] }, ptr %t251, i32 0, i32 0
  store i64 0, ptr %t252
  %t253 = load { i64, [2 x i64] }, ptr %t251
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t253, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  %t255 = load { i64, [2 x i64] }, ptr %l11
  %t257 = extractvalue { i64, [2 x i64] } %t255, 0
  %t258 = icmp eq i64 %t257, 0
  br i1 %t258, label %bb82, label %bb83
bb82:
  %t260 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t260, ptr %l134
  br label %bb85
bb83:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load { i64, [2 x i64] }, ptr %l11
  %t264 = load { i64, [2 x i64] }, ptr %l17
  %t268 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %t262, { i64, [2 x i64] } %t263, { i64, [2 x i64] } %t264)
  store { i64, [2 x i64] } %t268, ptr %l139
  br label %bb84
bb84:
  %t269 = load { i64, [2 x i64] }, ptr %l139
  store { i64, [2 x i64] } %t269, ptr %l134
  br label %bb85
bb85:
  %t270 = load { i64, [2 x i64] }, ptr %l134
  store { i64, [2 x i64] } %t270, ptr %l11
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  store { i64, [2 x i64] } zeroinitializer, ptr %t271
  %t272 = getelementptr { i64, [2 x i64] }, ptr %t271, i32 0, i32 0
  store i64 0, ptr %t272
  %t273 = load { i64, [2 x i64] }, ptr %t271
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t273, ptr %rv
  br label %ret
bb90:
  call void @__olang_check_failed(ptr @olang_loc_5b1407f703b7271d_53185d392c7421d9)
  unreachable
bb91:
  call void @__olang_scope_close(ptr %s11)
  br label %bb92
bb92:
  %t275 = load i64, ptr %l13, !tbaa !24
  %t277 = add i64 %t275, 1
  store i64 %t277, ptr %l13, !tbaa !24
  br label %bb57
bb93:
  %t279 = load { i64, [2 x i64] }, ptr %l11
  call void @__olang_scope_close(ptr %s0)
  store { i64, [2 x i64] } %t279, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecopyHere(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca { i64, [2 x i64] }
  %l10 = alloca { i64, [2 x i64] }
  %l12 = alloca i1
  %l13 = alloca { i64, [2 x i64] }
  %l17 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t1)
  store { i64, [2 x i64] } %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t4, ptr %l2
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Promote", ptr %a1, i32 0, i32 1
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  %t14 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %t5, i64 %t11)
  store { i64, [2 x i64] } %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load { i64, [2 x i64] }, ptr %l10
  store { i64, [2 x i64] } %t15, ptr %l3
  %t16 = load { i64, [2 x i64] }, ptr %l3
  %t18 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t16)
  store i1 %t18, ptr %l12
  br label %bb3
bb3:
  %t19 = load i1, ptr %l12, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load { i64, [2 x i64] }, ptr %l2
  %t22 = load { i64, [2 x i64] }, ptr %l3
  %t26 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %t20, { i64, [2 x i64] } %t21, { i64, [2 x i64] } %t22)
  store { i64, [2 x i64] } %t26, ptr %l17
  br label %bb6
bb5:
  %t27 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t27, ptr %l13
  br label %bb7
bb6:
  %t29 = load { i64, [2 x i64] }, ptr %l17
  store { i64, [2 x i64] } %t29, ptr %l13
  br label %bb7
bb7:
  %t30 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t30, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecursorTerms(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l32 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l49 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i64
  %l59 = alloca { i64, [2 x i64] }
  %l69 = alloca i64
  %l71 = alloca i64
  %l76 = alloca i64
  %l79 = alloca { i64, [2 x i64] }
  %l89 = alloca ptr
  %l93 = alloca { i64, [2 x i64] }
  %l96 = alloca i1
  %l97 = alloca { i64, [2 x i64] }
  %l101 = alloca { i64, [2 x i64] }
  %l105 = alloca { i64, [2 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 159
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_f5c0dd4304aa3f4e_d3ec1bfd2e5f3d82)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 159
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t17 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eRowOf(ptr %v0, ptr %t13, i64 %a1)
  store i64 %t17, ptr %l23
  br label %bb4
bb4:
  %t18 = load i64, ptr %l23, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eSigOf(ptr %v0, ptr %t19, i64 %t20)
  store i64 %t23, ptr %l26
  br label %bb5
bb5:
  %t24 = load i64, ptr %l26, !tbaa !24
  %t25 = add i64 %t24, 1
  store i64 %t25, ptr %l4, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/scope:Scoper", ptr %t27, i32 0, i32 162
  store ptr %t29, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l6, !tbaa !24
  store i64 %t31, ptr %l30, !tbaa !24
  %t32 = load ptr, ptr %l5, !tbaa !29
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l32
  br label %bb7
bb7:
  %t35 = load i64, ptr %l30, !tbaa !24
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = icmp slt i64 %t35, %t36
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb55
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l6, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t43, i64 %t44)
  store i64 %t47, ptr %l38
  br label %bb11
bb11:
  %t48 = load i64, ptr %l38, !tbaa !24
  store i64 %t48, ptr %l8, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  store i64 %t49, ptr %l39, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 162
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l42
  br label %bb12
bb12:
  %t55 = load i64, ptr %l39, !tbaa !24
  %t56 = load i64, ptr %l42, !tbaa !24
  %t57 = mul i64 %t55, %t56
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = add i64 %t57, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/scope:Scoper", ptr %t63, i32 0, i32 179
  %t66 = load i64, ptr %l9, !tbaa !24
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t65, i64 %t66)
  store i64 %t69, ptr %l49
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/scope:Scoper", ptr %t70, i32 0, i32 178
  %t73 = load i64, ptr %t72, !tbaa !24
  %t74 = load i64, ptr %l49, !tbaa !24
  %t76 = icmp eq i64 %t74, %t73
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 34
  store ptr %t80, ptr %l54, !tbaa !29
  %t81 = load i64, ptr %l8, !tbaa !24
  store i64 %t81, ptr %l55, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/scope:Scoper", ptr %t82, i32 0, i32 180
  %t85 = load i64, ptr %l9, !tbaa !24
  %t88 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t84, i64 %t85)
  store { i64, [2 x i64] } %t88, ptr %l59
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t89 = load ptr, ptr %l54, !tbaa !29
  %t90 = load i64, ptr %l55, !tbaa !24
  %t91 = load { i64, [2 x i64] }, ptr %l59
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t89, i64 %t90, { i64, [2 x i64] } %t91)
  br label %bb17
bb17:
  br label %bb54
bb18:
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t93 = load i64, ptr %l3, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 174
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachRow(ptr %v0, ptr %v0, ptr %t92, i64 %t93, i64 %t94, ptr %t97)
  br label %bb19
bb19:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 183
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t104)
  br label %bb20
bb20:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 174
  store ptr %t108, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb21
bb21:
  %t110 = load i64, ptr %l11, !tbaa !24
  store i64 %t110, ptr %l69, !tbaa !24
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t111)
  store i64 %t113, ptr %l71
  br label %bb22
bb22:
  %t114 = load i64, ptr %l69, !tbaa !24
  %t115 = load i64, ptr %l71, !tbaa !24
  %t116 = icmp slt i64 %t114, %t115
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb23, label %bb24
bb23:
  br label %bb33
bb24:
  br label %bb25
bb25:
  %t120 = load ptr, ptr %l10, !tbaa !29
  %t121 = load i64, ptr %l11, !tbaa !24
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t120, i64 %t121)
  store i64 %t124, ptr %l76
  br label %bb26
bb26:
  %t125 = load i64, ptr %l76, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t130 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefTermAt(ptr %v0, ptr %t126, i64 %t125)
  store { i64, [2 x i64] } %t130, ptr %l79
  br label %bb27
bb27:
  %t131 = load { i64, [2 x i64] }, ptr %l79
  store { i64, [2 x i64] } %t131, ptr %l13
  %t132 = load { i64, [2 x i64] }, ptr %l13
  %t134 = extractvalue { i64, [2 x i64] } %t132, 0
  %t135 = icmp eq i64 %t134, 0
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb28, label %bb29
bb28:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/scope:Scoper", ptr %t140, i32 0, i32 183
  %t143 = load { i64, [2 x i64] }, ptr %l13
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v0, ptr %t139, ptr %t142, { i64, [2 x i64] } %t143)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t147 = load i64, ptr %l11, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l11, !tbaa !24
  br label %bb21
bb33:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l89, !tbaa !29
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/scope:Scoper", ptr %t152, i32 0, i32 34
  %t155 = load i64, ptr %l8, !tbaa !24
  %t158 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t154, i64 %t155)
  store { i64, [2 x i64] } %t158, ptr %l93
  br label %bb34
bb34:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %t159, i32 0, i32 183
  %t162 = load ptr, ptr %l89, !tbaa !29
  %t163 = load { i64, [2 x i64] }, ptr %l93
  %t165 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameTerms(ptr %v0, ptr %v0, ptr %t162, { i64, [2 x i64] } %t163, ptr %t161)
  store i1 %t165, ptr %l96
  br label %bb35
bb35:
  %t166 = load i1, ptr %l96, !tbaa !21
  br i1 %t166, label %bb36, label %bb37
bb36:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/scope:Scoper", ptr %t167, i32 0, i32 34
  %t170 = load i64, ptr %l8, !tbaa !24
  %t173 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t169, i64 %t170)
  store { i64, [2 x i64] } %t173, ptr %l101
  br label %bb38
bb37:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/scope:Scoper", ptr %t175, i32 0, i32 183
  %t180 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %v0, ptr %t174, ptr %t177)
  store { i64, [2 x i64] } %t180, ptr %l105
  br label %bb39
bb38:
  %t181 = load { i64, [2 x i64] }, ptr %l101
  store { i64, [2 x i64] } %t181, ptr %l97
  br label %bb40
bb39:
  %t182 = load { i64, [2 x i64] }, ptr %l105
  store { i64, [2 x i64] } %t182, ptr %l97
  br label %bb40
bb40:
  %t183 = load { i64, [2 x i64] }, ptr %l97
  store { i64, [2 x i64] } %t183, ptr %l14
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/scope:Scoper", ptr %t184, i32 0, i32 179
  %t187 = load i64, ptr %l9, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/scope:Scoper", ptr %t188, i32 0, i32 178
  %t191 = load i64, ptr %t190, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t186, i64 %t187, i64 %t191)
  br label %bb41
bb41:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/scope:Scoper", ptr %t195, i32 0, i32 180
  %t198 = load i64, ptr %l9, !tbaa !24
  %t199 = load { i64, [2 x i64] }, ptr %l14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t197, i64 %t198, { i64, [2 x i64] } %t199)
  br label %bb42
bb42:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/scope:Scoper", ptr %t203, i32 0, i32 34
  %t206 = load i64, ptr %l8, !tbaa !24
  %t207 = load { i64, [2 x i64] }, ptr %l14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t205, i64 %t206, { i64, [2 x i64] } %t207)
  br label %bb43
bb43:
  %t211 = load { i64, [2 x i64] }, ptr %l14
  %t213 = extractvalue { i64, [2 x i64] } %t211, 0
  %t214 = icmp eq i64 %t213, 5
  br i1 %t214, label %bb44, label %bb45
bb44:
  %t216 = getelementptr { i64, [2 x i64] }, ptr %l14, i32 0, i32 1
  %t217 = getelementptr { i64 }, ptr %t216, i32 0, i32 0
  %t218 = load i64, ptr %t217
  store i64 %t218, ptr %l15, !tbaa !24
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"compiler/scope:Scoper", ptr %t220, i32 0, i32 187
  %t223 = load i64, ptr %l15, !tbaa !24
  %t224 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t222, i64 %t223, i64 %t224)
  br label %bb47
bb47:
  br label %bb53
bb48:
  br i1 true, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_b79eb6ae90738dac_dd72f768f22d9fa0)
  unreachable
bb53:
  br label %bb54
bb54:
  %t228 = load i64, ptr %l6, !tbaa !24
  %t230 = add i64 %t228, 1
  store i64 %t230, ptr %l6, !tbaa !24
  br label %bb6
bb55:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflowRun(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
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
  %l18 = alloca i64
  %l21 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l68 = alloca { i64, ptr }
  %l77 = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  store i64 6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t1 = load i64, ptr %l4, !tbaa !24
  %t2 = load i64, ptr %l3, !tbaa !24
  %t5 = icmp sgt i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t15 = sub i64 %t11, %t12
  %t16 = load i64, ptr %l5, !tbaa !24
  %t19 = add i64 %t15, %t16
  %t21 = sub i64 %t19, 1
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = sdiv i64 %t21, %t22
  store i64 %t25, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t27 = load i64, ptr %l21, !tbaa !24
  store i64 %t27, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t28 = load i64, ptr %l18, !tbaa !24
  store i64 %t28, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i64, ptr %l6, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  br label %bb31
bb9:
  br label %bb10
bb10:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = mul i64 %t38, %t39
  %t45 = add i64 %t37, %t42
  store i64 %t45, ptr %l8, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/scope:Scoper", ptr %t47, i32 0, i32 141
  store i1 false, ptr %t49, !tbaa !21
  store i64 %a2, ptr %l9, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t52, 0
  store i64 %t54, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t56 = load i64, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = icmp sgt i64 %t56, %t57
  br i1 %t60, label %bb11, label %bb12
bb11:
  %t62 = load i64, ptr %l11, !tbaa !24
  %t64 = icmp sgt i64 %t62, 0
  br i1 %t64, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb16
bb13:
  %t66 = load i64, ptr %l10, !tbaa !24
  %t67 = load i64, ptr %l9, !tbaa !24
  %t70 = sub i64 %t66, %t67
  %t71 = load i64, ptr %l11, !tbaa !24
  %t74 = add i64 %t70, %t71
  %t76 = sub i64 %t74, 1
  %t77 = load i64, ptr %l11, !tbaa !24
  %t80 = sdiv i64 %t76, %t77
  store i64 %t80, ptr %l49, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb15
bb15:
  %t82 = load i64, ptr %l49, !tbaa !24
  store i64 %t82, ptr %l46, !tbaa !24
  br label %bb16
bb16:
  %t83 = load i64, ptr %l46, !tbaa !24
  store i64 %t83, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb17
bb17:
  %t84 = load i64, ptr %l13, !tbaa !24
  %t85 = load i64, ptr %l12, !tbaa !24
  %t88 = icmp slt i64 %t84, %t85
  %t90 = xor i1 %t88, true
  br i1 %t90, label %bb18, label %bb19
bb18:
  br label %bb23
bb19:
  br label %bb20
bb20:
  %t92 = load i64, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l13, !tbaa !24
  %t94 = load i64, ptr %l11, !tbaa !24
  %t97 = mul i64 %t93, %t94
  %t100 = add i64 %t92, %t97
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t103, ptr %l68, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr ptr, ptr %t107, i64 %t100
  %t109 = load ptr, ptr %t108, !tbaa !39
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %t102, ptr %t109)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t113 = load i64, ptr %l13, !tbaa !24
  %t115 = add i64 %t113, 1
  store i64 %t115, ptr %l13, !tbaa !24
  br label %bb17
bb23:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 141
  %t120 = load i1, ptr %t119, !tbaa !21
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb26
bb25:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/scope:Scoper", ptr %t124, i32 0, i32 136
  %t127 = load i1, ptr %t126, !tbaa !21
  store i1 %t127, ptr %l77, !tbaa !21
  br label %bb26
bb26:
  %t129 = load i1, ptr %l77, !tbaa !21
  br i1 %t129, label %bb27, label %bb28
bb27:
  br label %bb31
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t130 = load i64, ptr %l7, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l7, !tbaa !24
  br label %bb7
bb31:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnVal(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i32
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca ptr
  %l24 = alloca %"compiler/scope:Val"
  %l25 = alloca { i64, [2 x i64] }
  %l26 = alloca i64
  %l27 = alloca { i64, [2 x i64] }
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca { i64, [2 x i64] }
  %l31 = alloca i32
  %l32 = alloca ptr
  %l33 = alloca i32
  %l35 = alloca { i64, [2 x i64] }
  %l36 = alloca %"compiler/source:Span"
  %l37 = alloca i64
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l53 = alloca ptr
  %l54 = alloca i1
  %l58 = alloca %"compiler/scope:Val"
  %l59 = alloca ptr
  %l60 = alloca i1
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca ptr
  %l81 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i64
  %l117 = alloca { i64, ptr }
  %l125 = alloca %"compiler/scope:Val"
  %l126 = alloca ptr
  %l129 = alloca i32
  %l130 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca %"compiler/scope:Val"
  %l135 = alloca { i64, [2 x i64] }
  %l136 = alloca { i64, [2 x i64] }
  %l137 = alloca ptr
  %l140 = alloca { i64, [2 x i64] }
  %l145 = alloca { i64, [2 x i64] }
  %l150 = alloca { i64, [2 x i64] }
  %l155 = alloca i64
  %l164 = alloca i1
  %l171 = alloca i1
  %l174 = alloca i1
  %l177 = alloca ptr
  %l178 = alloca { i64, [2 x i64] }
  %l179 = alloca %"compiler/source:Span"
  %l205 = alloca ptr
  %l206 = alloca i32
  %l208 = alloca { i64, ptr }
  %l210 = alloca %"compiler/scope:Val"
  %l215 = alloca ptr
  %l216 = alloca i32
  %l218 = alloca { i64, ptr }
  %l220 = alloca { i64, [2 x i64] }
  %l221 = alloca %"compiler/scope:Val"
  %l224 = alloca i1
  %l226 = alloca i1
  %l228 = alloca i1
  %l229 = alloca { i64, [2 x i64] }
  %l232 = alloca { i64, [2 x i64] }
  %l233 = alloca ptr
  %l234 = alloca i32
  %l236 = alloca i1
  %l237 = alloca { i64, [2 x i64] }
  %l240 = alloca { i64, [2 x i64] }
  %l242 = alloca ptr
  %l243 = alloca i32
  %l245 = alloca { i64, ptr }
  %l248 = alloca i64
  %l250 = alloca i64
  %l255 = alloca { i64, [2 x i64] }
  %l256 = alloca { i64, [2 x i64] }
  %l258 = alloca { i64, [2 x i64] }
  %l260 = alloca i1
  %l262 = alloca i1
  %l266 = alloca i64
  %l272 = alloca { i64, [2 x i64] }
  %l276 = alloca %"compiler/scope:Val"
  %l277 = alloca ptr
  %l278 = alloca i1
  %l291 = alloca %"compiler/scope:Val"
  %l292 = alloca ptr
  %l293 = alloca %"compiler/scope:Val"
  %l295 = alloca { i64, [2 x i64] }
  %l296 = alloca { i64, [2 x i64] }
  %l299 = alloca %"compiler/source:Span"
  %l303 = alloca i64
  %l304 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l309 = alloca ptr
  %l312 = alloca i64
  %l316 = alloca i64
  %l319 = alloca i64
  %l337 = alloca ptr
  %l341 = alloca { i64, [2 x i64] }
  %l355 = alloca i64
  %l360 = alloca i1
  %l370 = alloca ptr
  %l371 = alloca i32
  %l374 = alloca { i64, [2 x i64] }
  %l375 = alloca { i64, ptr }
  %l377 = alloca { i64, [2 x i64] }
  %l378 = alloca %"compiler/scope:Val"
  %l379 = alloca ptr
  %l380 = alloca i32
  %l382 = alloca i1
  %l383 = alloca { i64, [2 x i64] }
  %l386 = alloca { i64, [2 x i64] }
  %l391 = alloca i64
  %l396 = alloca i1
  %l404 = alloca ptr
  %l405 = alloca i32
  %l408 = alloca { i64, [2 x i64] }
  %l409 = alloca { i64, ptr }
  %l411 = alloca %"compiler/scope:Val"
  %s2 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t26 = alloca { i64, [2 x i64] }, align 8
  %t59 = alloca { i64, [2 x i64] }, align 8
  %t132 = alloca { i64, [2 x i64] }, align 8
  %t169 = alloca { i64, [2 x i64] }, align 8
  %t500 = alloca { i64, [2 x i64] }, align 8
  %t603 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 80
  %t4 = load i1, ptr %t3, !tbaa !21
  store i1 %t4, ptr %l4, !tbaa !21
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 77
  %t9 = load i1, ptr %t8, !tbaa !21
  store i1 %t9, ptr %l5, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 80
  store i1 false, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 77
  store i1 false, ptr %t16, !tbaa !21
  %t17 = load ptr, ptr %l1, !tbaa !29
  store ptr %t17, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t18 = load ptr, ptr %l53, !tbaa !29
  %t19 = icmp ne ptr %t18, null
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load ptr, ptr %l53, !tbaa !29
  %t22 = load i64, ptr %t21, !range !{i64 0, i64 3}
  %t24 = icmp eq i64 %t22, 0
  store i1 %t24, ptr %l54, !tbaa !21
  br label %bb2
bb2:
  %t25 = load i1, ptr %l54, !tbaa !21
  br i1 %t25, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t26
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t26, i32 0, i32 0
  store i64 3, ptr %t27
  %t28 = load { i64, [2 x i64] }, ptr %t26
  %t30 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t28)
  store %"compiler/scope:Val" %t30, ptr %l58
  br label %bb6
bb6:
  %t31 = load %"compiler/scope:Val", ptr %l58
  store %"compiler/scope:Val" %t31, ptr %rv
  br label %ret
bb7:
  %t32 = load ptr, ptr %l1, !tbaa !29
  store ptr %t32, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t33 = load ptr, ptr %l59, !tbaa !29
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l59, !tbaa !29
  %t37 = load i64, ptr %t36, !range !{i64 0, i64 3}
  %t39 = icmp eq i64 %t37, 1
  store i1 %t39, ptr %l60, !tbaa !21
  br label %bb9
bb9:
  %t40 = load i1, ptr %l60, !tbaa !21
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t41 = load ptr, ptr %l1, !tbaa !29
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t41, i32 0, i32 1
  %t44 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t43, i32 0, i32 0
  %t45 = load i32, ptr %t44
  store i32 %t45, ptr %l6, !tbaa !23
  %t47 = load ptr, ptr %l1, !tbaa !29
  %t49 = getelementptr { i64, [4 x i64] }, ptr %t47, i32 0, i32 1
  %t50 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t49, i32 0, i32 1
  %t51 = load { i64, ptr }, ptr %t50
  store { i64, ptr } %t51, ptr %l7, !tbaa !27
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t53, i32 0, i32 1
  %t56 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t55, i32 0, i32 2
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l8, !tbaa !23
  br label %bb12
bb11:
  br label %bb131
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  store { i64, [2 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 0
  store i64 0, ptr %t60
  %t61 = load { i64, [2 x i64] }, ptr %t59
  store { i64, [2 x i64] } %t61, ptr %l9
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l70
  br label %bb13
bb13:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l10
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l71
  br label %bb14
bb14:
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l11
  %t67 = load i32, ptr %l6, !tbaa !23
  %t69 = sext i32 %t67 to i64
  store i64 %t69, ptr %l12, !tbaa !24
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l74
  br label %bb15
bb15:
  %t72 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t72, ptr %l13
  store i64 0, ptr %l14, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/scope:Scoper", ptr %t73, i32 0, i32 1
  %t76 = load i64, ptr %l12, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l78
  br label %bb16
bb16:
  %t80 = load ptr, ptr %l78, !tbaa !29
  %t82 = getelementptr %"compiler/typed:Body", ptr %t80, i32 0, i32 6
  %t84 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t82)
  store i64 %t84, ptr %l81
  br label %bb17
bb17:
  %t85 = load i64, ptr %l81, !tbaa !24
  store i64 %t85, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t86 = load i64, ptr %l15, !tbaa !24
  %t87 = load i64, ptr %l14, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb18, label %bb19
bb18:
  %t92 = load i64, ptr %l16, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb23
bb20:
  %t96 = load i64, ptr %l15, !tbaa !24
  %t97 = load i64, ptr %l14, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l16, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l16, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l88, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb22
bb22:
  %t112 = load i64, ptr %l88, !tbaa !24
  store i64 %t112, ptr %l85, !tbaa !24
  br label %bb23
bb23:
  %t113 = load i64, ptr %l85, !tbaa !24
  store i64 %t113, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb24
bb24:
  %t114 = load i64, ptr %l18, !tbaa !24
  %t115 = load i64, ptr %l17, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb25, label %bb26
bb25:
  br label %bb30
bb26:
  br label %bb27
bb27:
  %t122 = load i64, ptr %l14, !tbaa !24
  %t123 = load i64, ptr %l18, !tbaa !24
  %t124 = load i64, ptr %l16, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  store i64 %t130, ptr %l19, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t132
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t132, i32 0, i32 0
  store i64 0, ptr %t133
  %t134 = load { i64, [2 x i64] }, ptr %t132
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l13, { i64, [2 x i64] } %t134)
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t137 = load i64, ptr %l18, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l18, !tbaa !24
  br label %bb24
bb30:
  %t141 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t141, ptr %l20, !tbaa !27
  store i64 0, ptr %l21, !tbaa !24
  %t143 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t143, 0
  store i64 %t145, ptr %l22, !tbaa !24
  br label %bb31
bb31:
  %t147 = load i64, ptr %l21, !tbaa !24
  %t148 = load i64, ptr %l22, !tbaa !24
  %t151 = icmp slt i64 %t147, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb32, label %bb33
bb32:
  br label %bb72
bb33:
  br label %bb34
bb34:
  %t155 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t155, ptr %l117, !tbaa !27
  %t156 = load i64, ptr %l21, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr ptr, ptr %t159, i64 %t156
  %t161 = load ptr, ptr %t160, !tbaa !39
  store ptr %t161, ptr %l23, !tbaa !29
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load ptr, ptr %l23, !tbaa !29
  %t166 = getelementptr %"compiler/typed:Capture", ptr %t164, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t169
  %t170 = getelementptr { i64, [2 x i64] }, ptr %t169, i32 0, i32 0
  store i64 0, ptr %t170
  %t171 = load { i64, [2 x i64] }, ptr %t169
  %t175 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t163, ptr %t167, { i64, [2 x i64] } %t171)
  store %"compiler/scope:Val" %t175, ptr %l125
  br label %bb35
bb35:
  %t176 = load %"compiler/scope:Val", ptr %l125
  store %"compiler/scope:Val" %t176, ptr %l24
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l126, !tbaa !29
  %t178 = load ptr, ptr %l23, !tbaa !29
  %t180 = getelementptr %"compiler/typed:Capture", ptr %t178, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !29
  %t183 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t181)
  store i32 %t183, ptr %l129
  br label %bb36
bb36:
  %t184 = load ptr, ptr %l126, !tbaa !29
  %t185 = load i32, ptr %l129, !tbaa !23
  %t186 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t184, i32 %t185)
  store i1 %t186, ptr %l130
  br label %bb37
bb37:
  %t187 = load i1, ptr %l130, !tbaa !21
  %t188 = xor i1 %t187, true
  br i1 %t188, label %bb38, label %bb39
bb38:
  br label %bb71
bb39:
  br label %bb40
bb40:
  %t190 = load ptr, ptr %l0, !tbaa !29
  store ptr %t190, ptr %l132, !tbaa !29
  %t191 = load %"compiler/scope:Val", ptr %l24
  store %"compiler/scope:Val" %t191, ptr %l133
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t192)
  store { i64, [2 x i64] } %t194, ptr %l135
  br label %bb41
bb41:
  %t195 = load ptr, ptr %l132, !tbaa !29
  %t196 = load %"compiler/scope:Val", ptr %l133
  %t197 = load { i64, [2 x i64] }, ptr %l135
  %t198 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t195, %"compiler/scope:Val" %t196, { i64, [2 x i64] } %t197)
  store { i64, [2 x i64] } %t198, ptr %l136
  br label %bb42
bb42:
  %t199 = load { i64, [2 x i64] }, ptr %l136
  store { i64, [2 x i64] } %t199, ptr %l25
  store ptr %l11, ptr %l137, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load { i64, [2 x i64] }, ptr %l25
  %t204 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t200, { i64, [2 x i64] } %t201)
  store { i64, [2 x i64] } %t204, ptr %l140
  br label %bb43
bb43:
  %t205 = load ptr, ptr %l137, !tbaa !29
  %t206 = load { i64, [2 x i64] }, ptr %l140
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e(ptr %s2, ptr %t205, { i64, [2 x i64] } %t206)
  br label %bb44
bb44:
  %t207 = load { i64, [2 x i64] }, ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l10, { i64, [2 x i64] } %t207)
  br label %bb45
bb45:
  %t210 = load { i64, [2 x i64] }, ptr %l9
  %t212 = extractvalue { i64, [2 x i64] } %t210, 0
  %t213 = icmp eq i64 %t212, 0
  br i1 %t213, label %bb46, label %bb47
bb46:
  %t215 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t215, ptr %l145
  br label %bb49
bb47:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load { i64, [2 x i64] }, ptr %l9
  %t219 = load { i64, [2 x i64] }, ptr %l25
  %t223 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einner(ptr %v0, ptr %t217, { i64, [2 x i64] } %t218, { i64, [2 x i64] } %t219)
  store { i64, [2 x i64] } %t223, ptr %l150
  br label %bb48
bb48:
  %t224 = load { i64, [2 x i64] }, ptr %l150
  store { i64, [2 x i64] } %t224, ptr %l145
  br label %bb49
bb49:
  %t225 = load { i64, [2 x i64] }, ptr %l145
  store { i64, [2 x i64] } %t225, ptr %l9
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i64, ptr %l12, !tbaa !24
  %t228 = load ptr, ptr %l23, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Capture", ptr %t228, i32 0, i32 0
  %t231 = load i32, ptr %t230, !tbaa !23
  %t235 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureVar(ptr %v0, ptr %t226, i64 %t227, i32 %t231)
  store i64 %t235, ptr %l155
  br label %bb50
bb50:
  %t236 = load i64, ptr %l155, !tbaa !24
  store i64 %t236, ptr %l26, !tbaa !24
  %t237 = load i64, ptr %l26, !tbaa !24
  %t239 = icmp sge i64 %t237, 0
  br i1 %t239, label %bb51, label %bb52
bb51:
  %t241 = load i64, ptr %l26, !tbaa !24
  %t242 = load { i64, [2 x i64] }, ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %l13, i64 %t241, { i64, [2 x i64] } %t242)
  br label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb54
bb54:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load i64, ptr %l12, !tbaa !24
  %t248 = load i64, ptr %l26, !tbaa !24
  %t252 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %t246, i64 %t247, i64 %t248)
  store i1 %t252, ptr %l164
  br label %bb55
bb55:
  %t253 = load i1, ptr %l164, !tbaa !21
  br i1 %t253, label %bb56, label %bb57
bb56:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load { i64, [2 x i64] }, ptr %l25
  %t256 = load %"compiler/source:Span", ptr %l3
  %t257 = load i64, ptr %l12, !tbaa !24
  %t258 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %t254, { i64, [2 x i64] } %t255, %"compiler/source:Span" %t256, i64 %t257, i64 %t258)
  br label %bb58
bb57:
  %t264 = load i1, ptr %l4, !tbaa !21
  br i1 %t264, label %bb59, label %bb60
bb58:
  br label %bb70
bb59:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load { i64, [2 x i64] }, ptr %l25
  %t270 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %t266, { i64, [2 x i64] } %t267)
  store i1 %t270, ptr %l174
  br label %bb61
bb60:
  store i1 false, ptr %l171, !tbaa !21
  br label %bb62
bb61:
  %t271 = load i1, ptr %l174, !tbaa !21
  %t272 = xor i1 %t271, true
  store i1 %t272, ptr %l171, !tbaa !21
  br label %bb62
bb62:
  %t274 = load i1, ptr %l171, !tbaa !21
  br i1 %t274, label %bb63, label %bb64
bb63:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/scope:Scoper", ptr %t275, i32 0, i32 63
  store i1 true, ptr %t277, !tbaa !21
  %t278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t278, ptr %l177, !tbaa !29
  %t279 = load { i64, [2 x i64] }, ptr %l25
  store { i64, [2 x i64] } %t279, ptr %l178
  %t280 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t280, ptr %l179
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/scope:Scoper", ptr %t281, i32 0, i32 26
  %t284 = load ptr, ptr %t283, !tbaa !29
  %t286 = icmp eq ptr %t284, null
  br i1 %t286, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  call void @__olang_check_failed(ptr @olang_loc_6745ec537010077c_cd78d81ca0e46128)
  unreachable
bb66:
  br label %bb67
bb67:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"compiler/scope:Scoper", ptr %t288, i32 0, i32 26
  %t291 = load ptr, ptr %t290, !tbaa !29
  %t294 = getelementptr %"compiler/typed:Body", ptr %t291, i32 0, i32 3
  %t295 = load i64, ptr %t294, !tbaa !24
  %t296 = load %"compiler/source:Span", ptr %l3
  %t297 = load ptr, ptr %l177, !tbaa !29
  %t298 = load { i64, [2 x i64] }, ptr %l178
  %t299 = load %"compiler/source:Span", ptr %l179
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %t297, { i64, [2 x i64] } %t298, %"compiler/source:Span" %t299, i64 %t295, %"compiler/source:Span" %t296)
  br label %bb68
bb68:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/scope:Scoper", ptr %t302, i32 0, i32 63
  store i1 false, ptr %t304, !tbaa !21
  br label %bb69
bb69:
  br label %bb70
bb70:
  br label %bb71
bb71:
  %t305 = load i64, ptr %l21, !tbaa !24
  %t307 = add i64 %t305, 1
  store i64 %t307, ptr %l21, !tbaa !24
  br label %bb31
bb72:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t311 = getelementptr %"compiler/scope:Scoper", ptr %t309, i32 0, i32 92
  %t312 = load i32, ptr %l8, !tbaa !23
  %t314 = sext i32 %t312 to i64
  %t315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %s2, ptr %t311, i64 %t314, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t315)
  br label %bb73
bb73:
  %t319 = load { i64, [2 x i64] }, ptr %l9
  %t321 = extractvalue { i64, [2 x i64] } %t319, 0
  %t322 = icmp eq i64 %t321, 0
  br i1 %t322, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s14
  %t324 = load i1, ptr %l5, !tbaa !21
  br i1 %t324, label %bb76, label %bb77
bb75:
  br label %bb84
bb76:
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonFrameAt(ptr %v0, ptr %t326, i32 %t327)
  br label %bb78
bb77:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t331 = load i32, ptr %l8, !tbaa !23
  %t332 = load { i64, [2 x i64] }, ptr %l2
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t330, i32 %t331, { i64, [2 x i64] } %t332)
  br label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb80
bb80:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/scope:Scoper", ptr %t336, i32 0, i32 33
  store ptr %t338, ptr %l205, !tbaa !29
  %t339 = load i32, ptr %l8, !tbaa !23
  store i32 %t339, ptr %l206, !tbaa !23
  %t341 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eToArray_3ccompiler_2ftyped_3aScope_3e(ptr %s2, ptr %s14, ptr %l11)
  store { i64, ptr } %t341, ptr %l208
  br label %bb81
bb81:
  %t342 = load ptr, ptr %l205, !tbaa !29
  %t343 = load i32, ptr %l206, !tbaa !23
  %t344 = load { i64, ptr }, ptr %l208, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %s14, ptr %t342, i32 %t343, { i64, ptr } %t344)
  br label %bb82
bb82:
  %t345 = load { i64, [2 x i64] }, ptr %l2
  %t347 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %t345)
  store %"compiler/scope:Val" %t347, ptr %l210
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s14)
  call void @__olang_scope_close(ptr %s2)
  %t348 = load %"compiler/scope:Val", ptr %l210
  store %"compiler/scope:Val" %t348, ptr %rv
  br label %ret
bb84:
  %t349 = load i1, ptr %l5, !tbaa !21
  br i1 %t349, label %bb85, label %bb86
bb85:
  store %olang.scope zeroinitializer, ptr %s17
  %t351 = load ptr, ptr %l0, !tbaa !29
  %t352 = load i32, ptr %l8, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonFrameAt(ptr %v0, ptr %t351, i32 %t352)
  br label %bb87
bb86:
  br label %bb92
bb87:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = getelementptr %"compiler/scope:Scoper", ptr %t355, i32 0, i32 33
  store ptr %t357, ptr %l215, !tbaa !29
  %t358 = load i32, ptr %l8, !tbaa !23
  store i32 %t358, ptr %l216, !tbaa !23
  %t360 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eToArray_3ccompiler_2ftyped_3aScope_3e(ptr %s2, ptr %s17, ptr %l11)
  store { i64, ptr } %t360, ptr %l218
  br label %bb88
bb88:
  %t361 = load ptr, ptr %l215, !tbaa !29
  %t362 = load i32, ptr %l216, !tbaa !23
  %t363 = load { i64, ptr }, ptr %l218, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %s17, ptr %t361, i32 %t362, { i64, ptr } %t363)
  br label %bb89
bb89:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t364)
  store { i64, [2 x i64] } %t366, ptr %l220
  br label %bb90
bb90:
  %t367 = load { i64, [2 x i64] }, ptr %l220
  %t368 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t367)
  store %"compiler/scope:Val" %t368, ptr %l221
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s17)
  call void @__olang_scope_close(ptr %s2)
  %t369 = load %"compiler/scope:Val", ptr %l221
  store %"compiler/scope:Val" %t369, ptr %rv
  br label %ret
bb92:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load { i64, [2 x i64] }, ptr %l9
  %t374 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %t370, { i64, [2 x i64] } %t371)
  store i1 %t374, ptr %l224
  br label %bb93
bb93:
  %t375 = load i1, ptr %l224, !tbaa !21
  br i1 %t375, label %bb94, label %bb95
bb94:
  %t376 = load i1, ptr %l4, !tbaa !21
  br i1 %t376, label %bb96, label %bb97
bb95:
  br label %bb104
bb96:
  %t378 = load { i64, [2 x i64] }, ptr %l2
  %t380 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t378)
  store i1 %t380, ptr %l228
  br label %bb98
bb97:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb99
bb98:
  %t381 = load i1, ptr %l228, !tbaa !21
  store i1 %t381, ptr %l226, !tbaa !21
  br label %bb99
bb99:
  %t382 = load i1, ptr %l226, !tbaa !21
  br i1 %t382, label %bb100, label %bb101
bb100:
  %t383 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t383, ptr %l229
  br label %bb103
bb101:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t385)
  store { i64, [2 x i64] } %t387, ptr %l232
  br label %bb102
bb102:
  %t388 = load { i64, [2 x i64] }, ptr %l232
  store { i64, [2 x i64] } %t388, ptr %l229
  br label %bb103
bb103:
  %t389 = load { i64, [2 x i64] }, ptr %l229
  store { i64, [2 x i64] } %t389, ptr %l9
  br label %bb104
bb104:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l233, !tbaa !29
  %t391 = load i32, ptr %l8, !tbaa !23
  store i32 %t391, ptr %l234, !tbaa !23
  %t392 = load { i64, [2 x i64] }, ptr %l9
  %t394 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t392)
  store i1 %t394, ptr %l236
  br label %bb105
bb105:
  %t395 = load i1, ptr %l236, !tbaa !21
  br i1 %t395, label %bb106, label %bb107
bb106:
  %t396 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t396, ptr %l237
  br label %bb109
bb107:
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t400 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t398)
  store { i64, [2 x i64] } %t400, ptr %l240
  br label %bb108
bb108:
  %t401 = load { i64, [2 x i64] }, ptr %l240
  store { i64, [2 x i64] } %t401, ptr %l237
  br label %bb109
bb109:
  %t402 = load ptr, ptr %l233, !tbaa !29
  %t403 = load i32, ptr %l234, !tbaa !23
  %t404 = load { i64, [2 x i64] }, ptr %l237
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %t402, i32 %t403, { i64, [2 x i64] } %t404)
  br label %bb110
bb110:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = getelementptr %"compiler/scope:Scoper", ptr %t405, i32 0, i32 33
  store ptr %t407, ptr %l242, !tbaa !29
  %t408 = load i32, ptr %l8, !tbaa !23
  store i32 %t408, ptr %l243, !tbaa !23
  %t410 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eToArray_3ccompiler_2ftyped_3aScope_3e(ptr %s2, ptr %s2, ptr %l11)
  store { i64, ptr } %t410, ptr %l245
  br label %bb111
bb111:
  %t411 = load ptr, ptr %l242, !tbaa !29
  %t412 = load i32, ptr %l243, !tbaa !23
  %t413 = load { i64, ptr }, ptr %l245, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %s2, ptr %t411, i32 %t412, { i64, ptr } %t413)
  br label %bb112
bb112:
  %t414 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t414, ptr %l27
  store ptr %l10, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb113
bb113:
  %t417 = load i64, ptr %l29, !tbaa !24
  store i64 %t417, ptr %l248, !tbaa !24
  %t418 = load ptr, ptr %l28, !tbaa !29
  %t420 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %t418)
  store i64 %t420, ptr %l250
  br label %bb114
bb114:
  %t421 = load i64, ptr %l248, !tbaa !24
  %t422 = load i64, ptr %l250, !tbaa !24
  %t423 = icmp slt i64 %t421, %t422
  %t425 = xor i1 %t423, true
  br i1 %t425, label %bb115, label %bb116
bb115:
  br label %bb129
bb116:
  br label %bb117
bb117:
  %t427 = load ptr, ptr %l28, !tbaa !29
  %t428 = load i64, ptr %l29, !tbaa !24
  %t431 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %s2, ptr %t427, i64 %t428)
  store { i64, [2 x i64] } %t431, ptr %l255
  br label %bb118
bb118:
  %t432 = load { i64, [2 x i64] }, ptr %l255
  store { i64, [2 x i64] } %t432, ptr %l30
  %t433 = load { i64, [2 x i64] }, ptr %l30
  store { i64, [2 x i64] } %t433, ptr %l256
  %t434 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t434, ptr %l258
  %t437 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l256, ptr %l258)
  store i1 %t437, ptr %l260
  br label %bb119
bb119:
  %t438 = load i1, ptr %l260, !tbaa !21
  %t439 = xor i1 %t438, true
  br i1 %t439, label %bb120, label %bb121
bb120:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load { i64, [2 x i64] }, ptr %l30
  %t443 = load { i64, [2 x i64] }, ptr %l9
  %t447 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %t441, { i64, [2 x i64] } %t442, { i64, [2 x i64] } %t443)
  store i64 %t447, ptr %l266
  br label %bb122
bb121:
  store i1 false, ptr %l262, !tbaa !21
  br label %bb123
bb122:
  %t448 = load i64, ptr @G_2ecompiler_2fscope_2eHolds, !tbaa !24
  %t449 = load i64, ptr %l266, !tbaa !24
  %t451 = icmp ne i64 %t449, %t448
  store i1 %t451, ptr %l262, !tbaa !21
  br label %bb123
bb123:
  %t453 = load i1, ptr %l262, !tbaa !21
  br i1 %t453, label %bb124, label %bb125
bb124:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load { i64, [2 x i64] }, ptr %l27
  %t456 = load { i64, [2 x i64] }, ptr %l30
  %t460 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %t454, { i64, [2 x i64] } %t455, { i64, [2 x i64] } %t456)
  store { i64, [2 x i64] } %t460, ptr %l272
  br label %bb126
bb125:
  br label %bb127
bb126:
  %t461 = load { i64, [2 x i64] }, ptr %l272
  store { i64, [2 x i64] } %t461, ptr %l27
  br label %bb127
bb127:
  br label %bb128
bb128:
  %t462 = load i64, ptr %l29, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l29, !tbaa !24
  br label %bb113
bb129:
  %t466 = load { i64, [2 x i64] }, ptr %l27
  %t468 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t466)
  store %"compiler/scope:Val" %t468, ptr %l276
  br label %bb130
bb130:
  call void @__olang_scope_close(ptr %s2)
  %t469 = load %"compiler/scope:Val", ptr %l276
  store %"compiler/scope:Val" %t469, ptr %rv
  br label %ret
bb131:
  %t470 = load ptr, ptr %l1, !tbaa !29
  store ptr %t470, ptr %l277, !tbaa !29
  store i1 false, ptr %l278, !tbaa !21
  %t471 = load ptr, ptr %l277, !tbaa !29
  %t472 = icmp ne ptr %t471, null
  br i1 %t472, label %bb132, label %bb133
bb132:
  %t474 = load ptr, ptr %l277, !tbaa !29
  %t475 = load i64, ptr %t474, !range !{i64 0, i64 3}
  %t477 = icmp eq i64 %t475, 2
  store i1 %t477, ptr %l278, !tbaa !21
  br label %bb133
bb133:
  %t478 = load i1, ptr %l278, !tbaa !21
  br i1 %t478, label %bb134, label %bb135
bb134:
  %t479 = load ptr, ptr %l1, !tbaa !29
  %t481 = getelementptr { i64, [4 x i64] }, ptr %t479, i32 0, i32 1
  %t482 = getelementptr { i32, ptr, i32 }, ptr %t481, i32 0, i32 0
  %t483 = load i32, ptr %t482
  store i32 %t483, ptr %l31, !tbaa !23
  %t485 = load ptr, ptr %l1, !tbaa !29
  %t487 = getelementptr { i64, [4 x i64] }, ptr %t485, i32 0, i32 1
  %t488 = getelementptr { i32, ptr, i32 }, ptr %t487, i32 0, i32 1
  %t489 = load ptr, ptr %t488
  store ptr %t489, ptr %l32, !tbaa !29
  %t491 = load ptr, ptr %l1, !tbaa !29
  %t493 = getelementptr { i64, [4 x i64] }, ptr %t491, i32 0, i32 1
  %t494 = getelementptr { i32, ptr, i32 }, ptr %t493, i32 0, i32 2
  %t495 = load i32, ptr %t494
  store i32 %t495, ptr %l33, !tbaa !23
  br label %bb136
bb135:
  br label %bb191
bb136:
  store %olang.scope zeroinitializer, ptr %s23
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load ptr, ptr %l32, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t500
  %t501 = getelementptr { i64, [2 x i64] }, ptr %t500, i32 0, i32 0
  store i64 0, ptr %t501
  %t502 = load { i64, [2 x i64] }, ptr %t500
  %t506 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t497, ptr %t498, { i64, [2 x i64] } %t502)
  store %"compiler/scope:Val" %t506, ptr %l291
  br label %bb137
bb137:
  %t507 = load %"compiler/scope:Val", ptr %l291
  %t508 = load ptr, ptr %l0, !tbaa !29
  store ptr %t508, ptr %l292, !tbaa !29
  store %"compiler/scope:Val" %t507, ptr %l293
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t512 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t510)
  store { i64, [2 x i64] } %t512, ptr %l295
  br label %bb138
bb138:
  %t513 = load ptr, ptr %l292, !tbaa !29
  %t514 = load %"compiler/scope:Val", ptr %l293
  %t515 = load { i64, [2 x i64] }, ptr %l295
  %t516 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %t513, %"compiler/scope:Val" %t514, { i64, [2 x i64] } %t515)
  store { i64, [2 x i64] } %t516, ptr %l296
  br label %bb139
bb139:
  %t517 = load { i64, [2 x i64] }, ptr %l296
  store { i64, [2 x i64] } %t517, ptr %l35
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load %"compiler/source:Span", ptr %l3
  %t522 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t518, %"compiler/source:Span" %t519)
  store %"compiler/source:Span" %t522, ptr %l299
  br label %bb140
bb140:
  %t523 = load %"compiler/source:Span", ptr %l299
  store %"compiler/source:Span" %t523, ptr %l36
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i32, ptr %l31, !tbaa !23
  %t527 = sext i32 %t525 to i64
  %t530 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVar(ptr %v0, ptr %t524, i64 %t527, i64 0)
  store i64 %t530, ptr %l303
  br label %bb141
bb141:
  %t531 = load i64, ptr %l303, !tbaa !24
  store i64 %t531, ptr %l37, !tbaa !24
  %t532 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %s23, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t532, ptr %l304
  br label %bb142
bb142:
  %t533 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l304
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t533, ptr %l38
  store i64 0, ptr %l39, !tbaa !24
  %t534 = load ptr, ptr %l0, !tbaa !29
  %t536 = getelementptr %"compiler/scope:Scoper", ptr %t534, i32 0, i32 1
  %t537 = load i32, ptr %l31, !tbaa !23
  %t539 = sext i32 %t537 to i64
  %t542 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t536, i64 %t539)
  store ptr %t542, ptr %l309
  br label %bb143
bb143:
  %t543 = load ptr, ptr %l309, !tbaa !29
  %t545 = getelementptr %"compiler/typed:Body", ptr %t543, i32 0, i32 6
  %t547 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t545)
  store i64 %t547, ptr %l312
  br label %bb144
bb144:
  %t548 = load i64, ptr %l312, !tbaa !24
  store i64 %t548, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t549 = load i64, ptr %l40, !tbaa !24
  %t550 = load i64, ptr %l39, !tbaa !24
  %t553 = icmp sgt i64 %t549, %t550
  br i1 %t553, label %bb145, label %bb146
bb145:
  %t555 = load i64, ptr %l41, !tbaa !24
  %t557 = icmp sgt i64 %t555, 0
  br i1 %t557, label %bb147, label %bb148
bb146:
  store i64 0, ptr %l316, !tbaa !24
  br label %bb150
bb147:
  %t559 = load i64, ptr %l40, !tbaa !24
  %t560 = load i64, ptr %l39, !tbaa !24
  %t563 = sub i64 %t559, %t560
  %t564 = load i64, ptr %l41, !tbaa !24
  %t567 = add i64 %t563, %t564
  %t569 = sub i64 %t567, 1
  %t570 = load i64, ptr %l41, !tbaa !24
  %t573 = sdiv i64 %t569, %t570
  store i64 %t573, ptr %l319, !tbaa !24
  br label %bb149
bb148:
  store i64 0, ptr %l319, !tbaa !24
  br label %bb149
bb149:
  %t575 = load i64, ptr %l319, !tbaa !24
  store i64 %t575, ptr %l316, !tbaa !24
  br label %bb150
bb150:
  %t576 = load i64, ptr %l316, !tbaa !24
  store i64 %t576, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb151
bb151:
  %t577 = load i64, ptr %l43, !tbaa !24
  %t578 = load i64, ptr %l42, !tbaa !24
  %t581 = icmp slt i64 %t577, %t578
  %t583 = xor i1 %t581, true
  br i1 %t583, label %bb152, label %bb153
bb152:
  br label %bb160
bb153:
  br label %bb154
bb154:
  %t585 = load i64, ptr %l39, !tbaa !24
  %t586 = load i64, ptr %l43, !tbaa !24
  %t587 = load i64, ptr %l41, !tbaa !24
  %t590 = mul i64 %t586, %t587
  %t593 = add i64 %t585, %t590
  store ptr %l38, ptr %l337, !tbaa !29
  %t596 = load i64, ptr %l37, !tbaa !24
  %t599 = icmp eq i64 %t593, %t596
  br i1 %t599, label %bb155, label %bb156
bb155:
  %t601 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t601, ptr %l341
  br label %bb157
bb156:
  store { i64, [2 x i64] } zeroinitializer, ptr %t603
  %t604 = getelementptr { i64, [2 x i64] }, ptr %t603, i32 0, i32 0
  store i64 0, ptr %t604
  %t605 = load { i64, [2 x i64] }, ptr %t603
  store { i64, [2 x i64] } %t605, ptr %l341
  br label %bb157
bb157:
  %t607 = load ptr, ptr %l337, !tbaa !29
  %t608 = load { i64, [2 x i64] }, ptr %l341
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %s23, ptr %t607, { i64, [2 x i64] } %t608)
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t609 = load i64, ptr %l43, !tbaa !24
  %t611 = add i64 %t609, 1
  store i64 %t611, ptr %l43, !tbaa !24
  br label %bb151
bb160:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/scope:Scoper", ptr %t613, i32 0, i32 92
  %t616 = load i32, ptr %l33, !tbaa !23
  %t618 = sext i32 %t616 to i64
  %t619 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %s23, ptr %t615, i64 %t618, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t619)
  br label %bb161
bb161:
  %t623 = load i1, ptr %l5, !tbaa !21
  br i1 %t623, label %bb162, label %bb163
bb162:
  store %olang.scope zeroinitializer, ptr %s27
  %t625 = load ptr, ptr %l0, !tbaa !29
  %t626 = load i32, ptr %l31, !tbaa !23
  %t628 = sext i32 %t626 to i64
  %t631 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVar(ptr %v0, ptr %t625, i64 %t628, i64 0)
  store i64 %t631, ptr %l355
  br label %bb164
bb163:
  br label %bb175
bb164:
  %t632 = load i64, ptr %l355, !tbaa !24
  store i64 %t632, ptr %l45, !tbaa !24
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i32, ptr %l31, !tbaa !23
  %t636 = sext i32 %t634 to i64
  %t637 = load i64, ptr %l45, !tbaa !24
  %t641 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %t633, i64 %t636, i64 %t637)
  store i1 %t641, ptr %l360
  br label %bb165
bb165:
  %t642 = load i1, ptr %l360, !tbaa !21
  br i1 %t642, label %bb166, label %bb167
bb166:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load { i64, [2 x i64] }, ptr %l35
  %t645 = load %"compiler/source:Span", ptr %l36
  %t646 = load i32, ptr %l31, !tbaa !23
  %t648 = sext i32 %t646 to i64
  %t649 = load i64, ptr %l45, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %t643, { i64, [2 x i64] } %t644, %"compiler/source:Span" %t645, i64 %t648, i64 %t649)
  br label %bb168
bb167:
  br label %bb169
bb168:
  br label %bb169
bb169:
  %t655 = load ptr, ptr %l0, !tbaa !29
  %t656 = load i32, ptr %l33, !tbaa !23
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonFrameAt(ptr %v0, ptr %t655, i32 %t656)
  br label %bb170
bb170:
  %t659 = load ptr, ptr %l0, !tbaa !29
  %t661 = getelementptr %"compiler/scope:Scoper", ptr %t659, i32 0, i32 33
  store ptr %t661, ptr %l370, !tbaa !29
  %t662 = load i32, ptr %l33, !tbaa !23
  store i32 %t662, ptr %l371, !tbaa !23
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load { i64, [2 x i64] }, ptr %l35
  %t667 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t663, { i64, [2 x i64] } %t664)
  store { i64, [2 x i64] } %t667, ptr %l374
  br label %bb171
bb171:
  %t668 = mul i64 1, 24
  %t669 = call ptr @__olang_scope_alloc_zeroed(ptr %s27, i64 %t668)
  %t670 = insertvalue { i64, ptr } undef, i64 1, 0
  %t671 = insertvalue { i64, ptr } %t670, ptr %t669, 1
  store { i64, ptr } %t671, ptr %l375, !tbaa !27
  %t672 = load { i64, [2 x i64] }, ptr %l374
  %t673 = getelementptr { i64, ptr }, ptr %l375, i32 0, i32 1
  %t674 = load ptr, ptr %t673, !tbaa !27
  %t675 = getelementptr { i64, [2 x i64] }, ptr %t674, i64 0
  store { i64, [2 x i64] } %t672, ptr %t675
  %t676 = load ptr, ptr %l370, !tbaa !29
  %t677 = load i32, ptr %l371, !tbaa !23
  %t678 = load { i64, ptr }, ptr %l375, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %s27, ptr %t676, i32 %t677, { i64, ptr } %t678)
  br label %bb172
bb172:
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t681 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t679)
  store { i64, [2 x i64] } %t681, ptr %l377
  br label %bb173
bb173:
  %t682 = load { i64, [2 x i64] }, ptr %l377
  %t683 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t682)
  store %"compiler/scope:Val" %t683, ptr %l378
  br label %bb174
bb174:
  call void @__olang_scope_close(ptr %s27)
  call void @__olang_scope_close(ptr %s23)
  %t684 = load %"compiler/scope:Val", ptr %l378
  store %"compiler/scope:Val" %t684, ptr %rv
  br label %ret
bb175:
  %t685 = load ptr, ptr %l0, !tbaa !29
  store ptr %t685, ptr %l379, !tbaa !29
  %t686 = load i32, ptr %l33, !tbaa !23
  store i32 %t686, ptr %l380, !tbaa !23
  %t687 = load { i64, [2 x i64] }, ptr %l35
  %t689 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %t687)
  store i1 %t689, ptr %l382
  br label %bb176
bb176:
  %t690 = load i1, ptr %l382, !tbaa !21
  br i1 %t690, label %bb177, label %bb178
bb177:
  %t691 = load { i64, [2 x i64] }, ptr %l35
  store { i64, [2 x i64] } %t691, ptr %l383
  br label %bb180
bb178:
  %t693 = load ptr, ptr %l0, !tbaa !29
  %t695 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t693)
  store { i64, [2 x i64] } %t695, ptr %l386
  br label %bb179
bb179:
  %t696 = load { i64, [2 x i64] }, ptr %l386
  store { i64, [2 x i64] } %t696, ptr %l383
  br label %bb180
bb180:
  %t697 = load %"compiler/source:Span", ptr %l36
  %t698 = load ptr, ptr %l379, !tbaa !29
  %t699 = load i32, ptr %l380, !tbaa !23
  %t700 = load { i64, [2 x i64] }, ptr %l383
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %t698, i32 %t699, { i64, [2 x i64] } %t700, %"compiler/source:Span" %t697)
  br label %bb181
bb181:
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t703 = load i32, ptr %l31, !tbaa !23
  %t705 = sext i32 %t703 to i64
  %t708 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVar(ptr %v0, ptr %t702, i64 %t705, i64 0)
  store i64 %t708, ptr %l391
  br label %bb182
bb182:
  %t709 = load i64, ptr %l391, !tbaa !24
  store i64 %t709, ptr %l46, !tbaa !24
  %t710 = load ptr, ptr %l0, !tbaa !29
  %t711 = load i32, ptr %l31, !tbaa !23
  %t713 = sext i32 %t711 to i64
  %t714 = load i64, ptr %l46, !tbaa !24
  %t718 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %t710, i64 %t713, i64 %t714)
  store i1 %t718, ptr %l396
  br label %bb183
bb183:
  %t719 = load i1, ptr %l396, !tbaa !21
  br i1 %t719, label %bb184, label %bb185
bb184:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load { i64, [2 x i64] }, ptr %l35
  %t722 = load %"compiler/source:Span", ptr %l36
  %t723 = load i32, ptr %l31, !tbaa !23
  %t725 = sext i32 %t723 to i64
  %t726 = load i64, ptr %l46, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %t720, { i64, [2 x i64] } %t721, %"compiler/source:Span" %t722, i64 %t725, i64 %t726)
  br label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb187
bb187:
  %t732 = load ptr, ptr %l0, !tbaa !29
  %t734 = getelementptr %"compiler/scope:Scoper", ptr %t732, i32 0, i32 33
  store ptr %t734, ptr %l404, !tbaa !29
  %t735 = load i32, ptr %l33, !tbaa !23
  store i32 %t735, ptr %l405, !tbaa !23
  %t736 = load ptr, ptr %l0, !tbaa !29
  %t737 = load { i64, [2 x i64] }, ptr %l35
  %t740 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %t736, { i64, [2 x i64] } %t737)
  store { i64, [2 x i64] } %t740, ptr %l408
  br label %bb188
bb188:
  %t741 = mul i64 1, 24
  %t742 = call ptr @__olang_scope_alloc_zeroed(ptr %s23, i64 %t741)
  %t743 = insertvalue { i64, ptr } undef, i64 1, 0
  %t744 = insertvalue { i64, ptr } %t743, ptr %t742, 1
  store { i64, ptr } %t744, ptr %l409, !tbaa !27
  %t745 = load { i64, [2 x i64] }, ptr %l408
  %t746 = getelementptr { i64, ptr }, ptr %l409, i32 0, i32 1
  %t747 = load ptr, ptr %t746, !tbaa !27
  %t748 = getelementptr { i64, [2 x i64] }, ptr %t747, i64 0
  store { i64, [2 x i64] } %t745, ptr %t748
  %t749 = load ptr, ptr %l404, !tbaa !29
  %t750 = load i32, ptr %l405, !tbaa !23
  %t751 = load { i64, ptr }, ptr %l409, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %s23, ptr %t749, i32 %t750, { i64, ptr } %t751)
  br label %bb189
bb189:
  %t752 = load { i64, [2 x i64] }, ptr %l35
  %t754 = call %"compiler/scope:Val" @compiler_2fscope_2eVal_2eexisting({ i64, [2 x i64] } %t752)
  store %"compiler/scope:Val" %t754, ptr %l411
  br label %bb190
bb190:
  call void @__olang_scope_close(ptr %s23)
  %t755 = load %"compiler/scope:Val", ptr %l411
  store %"compiler/scope:Val" %t755, ptr %rv
  br label %ret
bb191:
  call void @__olang_check_failed(ptr @olang_loc_88416cbd76536112_77fb8de0a74471de)
  unreachable
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eframeHere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca ptr
  %l7 = alloca i64
  %l9 = alloca i32
  %l22 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t37 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 37
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 37
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = sub i64 %t9, 1
  %t11 = load ptr, ptr %l4, !tbaa !29
  %t13 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t11, i64 %t10)
  store i32 %t13, ptr %l9
  br label %bb2
bb2:
  %t14 = load i32, ptr %l9, !tbaa !23
  store i32 %t14, ptr %l1, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 26
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = icmp eq ptr %t18, null
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_check_failed(ptr @olang_loc_cf803334873ab58c_86e77fabc50c4870)
  unreachable
bb4:
  br label %bb5
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 26
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Body", ptr %t25, i32 0, i32 1
  %t29 = load { i64, [2 x i64] }, ptr %t28
  %t33 = extractvalue { i64, [2 x i64] } %t29, 0
  %t34 = icmp eq i64 %t33, 1
  br i1 %t34, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t36 = load i32, ptr %l1, !tbaa !23
  store { i64, [2 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 0
  store i64 1, ptr %t38
  %t40 = insertvalue { i32 } undef, i32 %t36, 0
  %t41 = getelementptr { i64, [2 x i64] }, ptr %t37, i32 0, i32 1
  store { i32 } %t40, ptr %t41
  %t42 = load { i64, [2 x i64] }, ptr %t37
  store { i64, [2 x i64] } %t42, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %t44)
  store { i64, [2 x i64] } %t46, ptr %l22
  br label %bb13
bb13:
  %t47 = load { i64, [2 x i64] }, ptr %l22
  store { i64, [2 x i64] } %t47, ptr %rv
  br label %ret
bb14:
  call void @__olang_check_failed(ptr @olang_loc_9240ff9e46a5e522_bd3125f7ca002596)
  unreachable
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efuncHeld(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2, { i64, [2 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca %"compiler/scope:Val"
  %l6 = alloca %"compiler/scope:fnRecs"
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca i64
  %l15 = alloca i1
  %l22 = alloca %"compiler/scope:Val"
  %l26 = alloca %"compiler/scope:fnRecs"
  %l29 = alloca i1
  %l32 = alloca ptr
  %l34 = alloca i32
  %l36 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca ptr
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca ptr
  %l46 = alloca i32
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i64
  %l62 = alloca ptr
  %l63 = alloca i1
  %l66 = alloca %"compiler/scope:Val"
  %l68 = alloca i64
  %l70 = alloca i64
  %l75 = alloca %"compiler/scope:fnRec"
  %l76 = alloca ptr
  %l77 = alloca %"compiler/scope:fnRec"
  %l79 = alloca %"compiler/scope:fnRec"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca %"compiler/scope:Val"
  %t116 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/generic:Program", ptr %t4, i32 0, i32 2
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load i1, ptr %l15, !tbaa !21
  store i1 %t11, ptr %l4, !tbaa !21
  %t12 = load i1, ptr %l4, !tbaa !21
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 77
  store i1 false, ptr %t16, !tbaa !21
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t24 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t17, ptr %t18, { i64, [2 x i64] } %a3)
  store %"compiler/scope:Val" %t24, ptr %l22
  br label %bb5
bb5:
  %t25 = load %"compiler/scope:Val", ptr %l22
  store %"compiler/scope:Val" %t25, ptr %l5
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t31 = call %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %s0, ptr %t26, ptr %t27)
  store %"compiler/scope:fnRecs" %t31, ptr %l26
  br label %bb6
bb6:
  %t32 = load %"compiler/scope:fnRecs", ptr %l26
  store %"compiler/scope:fnRecs" %t32, ptr %l6
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/scope:Scoper", ptr %t33, i32 0, i32 28
  %t36 = load i1, ptr %t35, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = getelementptr %"compiler/scope:fnRecs", ptr %l6, i32 0, i32 1
  %t39 = load i1, ptr %t38, !tbaa !21
  %t41 = xor i1 %t39, true
  store i1 %t41, ptr %l29, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l29, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l32, !tbaa !29
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t45)
  store i32 %t47, ptr %l34
  br label %bb12
bb11:
  br label %bb24
bb12:
  %t48 = load i32, ptr %l1, !tbaa !23
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t50 = load i32, ptr %l34, !tbaa !23
  %t52 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeBeyond(ptr %v0, ptr %s2, ptr %t49, i32 %t50, i32 %t48)
  store { i64, ptr } %t52, ptr %l36
  br label %bb13
bb13:
  %t53 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t53, ptr %l7, !tbaa !27
  %t54 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t56 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t54, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t56, ptr %l38
  br label %bb14
bb14:
  %t57 = load i1, ptr %l38, !tbaa !21
  %t58 = xor i1 %t57, true
  br i1 %t58, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l40, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load ptr, ptr %l2, !tbaa !29
  %t65 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %t61, ptr %t62)
  store %"compiler/source:Span" %t65, ptr %l43
  br label %bb17
bb16:
  br label %bb23
bb17:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l44, !tbaa !29
  %t67 = load ptr, ptr %l2, !tbaa !29
  %t69 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t67)
  store i32 %t69, ptr %l46
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l44, !tbaa !29
  %t71 = load i32, ptr %l46, !tbaa !23
  %t72 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2espell(ptr %v0, ptr %s3, ptr %t70, i32 %t71)
  store { i64, ptr } %t72, ptr %l47
  br label %bb19
bb19:
  %t73 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l48, !tbaa !27
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2espell(ptr %v0, ptr %s3, ptr %t80, i32 %t81)
  store { i64, ptr } %t84, ptr %l51
  br label %bb20
bb20:
  %t85 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t96 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %s3, ptr %s3, ptr %s2, ptr %s3, { i64, ptr } %t93, { i64, ptr } %t91, { i64, ptr } %t92)
  store %"compiler/diagmsg:Msg" %t96, ptr %l54
  br label %bb21
bb21:
  %t97 = load ptr, ptr %l40, !tbaa !29
  %t98 = load %"compiler/source:Span", ptr %l43
  %t99 = load %"compiler/diagmsg:Msg", ptr %l54
  %t100 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %s3, ptr %t97, %"compiler/source:Span" %t98, %"compiler/diagmsg:Msg" %t99)
  store i64 %t100, ptr %l55
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  %t101 = load i1, ptr %l4, !tbaa !21
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb25, label %bb26
bb25:
  %t105 = load %"compiler/scope:Val", ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/scope:Val" %t105, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t112 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t107, ptr %t108)
  store ptr %t112, ptr %l62
  br label %bb28
bb28:
  %t113 = load ptr, ptr %l62, !tbaa !29
  %t114 = call i1 @compiler_2fscope_2enamedValue(ptr %s0, ptr %t113)
  store i1 %t114, ptr %l63
  br label %bb29
bb29:
  %t115 = load i1, ptr %l63, !tbaa !21
  br i1 %t115, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  store { i64, [2 x i64] } zeroinitializer, ptr %t116
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t116, i32 0, i32 0
  store i64 3, ptr %t117
  %t118 = load { i64, [2 x i64] }, ptr %t116
  %t121 = call %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %s5, i32 4, { i64, [2 x i64] } %t118)
  store %"compiler/scope:Val" %t121, ptr %l66
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t122 = load %"compiler/scope:Val", ptr %l66
  store %"compiler/scope:Val" %t122, ptr %rv
  br label %ret
bb33:
  %t123 = getelementptr %"compiler/scope:fnRecs", ptr %l6, i32 0, i32 0
  store ptr %t123, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb34
bb34:
  store %olang.scope zeroinitializer, ptr %s7
  %t125 = load i64, ptr %l9, !tbaa !24
  store i64 %t125, ptr %l68, !tbaa !24
  %t126 = load ptr, ptr %l8, !tbaa !29
  %t128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %t126)
  store i64 %t128, ptr %l70
  br label %bb35
bb35:
  %t129 = load i64, ptr %l68, !tbaa !24
  %t130 = load i64, ptr %l70, !tbaa !24
  %t131 = icmp slt i64 %t129, %t130
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb37:
  br label %bb38
bb38:
  %t135 = load ptr, ptr %l8, !tbaa !29
  %t136 = load i64, ptr %l9, !tbaa !24
  %t139 = call %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t135, i64 %t136)
  store %"compiler/scope:fnRec" %t139, ptr %l75
  br label %bb39
bb39:
  %t140 = load %"compiler/scope:fnRec", ptr %l75
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l76, !tbaa !29
  store %"compiler/scope:fnRec" %t140, ptr %l77
  %t144 = call %"compiler/scope:fnRec" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRec(ptr %s7, ptr %l77)
  store %"compiler/scope:fnRec" %t144, ptr %l79
  br label %bb40
bb40:
  %t145 = load i32, ptr %l1, !tbaa !23
  %t146 = getelementptr %"compiler/scope:Val", ptr %l5, i32 0, i32 1
  %t147 = load { i64, [2 x i64] }, ptr %t146
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t149 = load ptr, ptr %l76, !tbaa !29
  %t150 = load %"compiler/scope:fnRec", ptr %l79
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptAtHome(ptr %v0, ptr %s7, ptr %v1, ptr %t149, %"compiler/scope:fnRec" %t150, i32 %t145, { i64, [2 x i64] } %t147, ptr %t148)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s7)
  br label %bb42
bb42:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = add i64 %t154, 1
  store i64 %t156, ptr %l9, !tbaa !24
  br label %bb34
bb43:
  %t158 = load %"compiler/scope:Val", ptr %l5
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/scope:Val" %t158, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Val", ptr %rv
  ret %"compiler/scope:Val" %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egapAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 26
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_fe344904a97bf1b6_507e40a324cea062)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 26
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Body", ptr %t12, i32 0, i32 3
  %t16 = load i64, ptr %t15, !tbaa !24
  %t19 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egap(ptr %v0, ptr %v1, ptr %t19, i64 %t16, %"compiler/source:Span" %a1, { i64, ptr } %a2)
  br label %bb4
bb4:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholdsPart(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l10 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t1, i32 %t2)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  %t12 = getelementptr %"compiler/generic:Program", ptr %t10, i32 0, i32 2
  %t13 = load i32, ptr %l1, !tbaa !23
  %t16 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  store i1 %t17, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l5, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferClaims(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l10 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %t1, i64 %t2, i1 false)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/scope:Scoper", ptr %t5, i32 0, i32 210
  store i1 false, ptr %t7, !tbaa !21
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferRounds(ptr %v0, ptr %t8, i64 %t9)
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 210
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 208
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = load ptr, ptr %l10, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t26, i32 0, i32 208
  store i64 %t24, ptr %t27, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/scope:Scoper", ptr %t28, i32 0, i32 207
  store i1 true, ptr %t30, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferRounds(ptr %v0, ptr %t31, i64 %t32)
  br label %bb6
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/scope:Scoper", ptr %t35, i32 0, i32 207
  store i1 false, ptr %t37, !tbaa !21
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisAdapter(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i1
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
  %t8 = icmp eq i64 %t6, 15
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  store ptr %t16, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t17 = load ptr, ptr %l10, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l10, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 3}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l11, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_a5122b0b395bd8b_9870aa37c8b5f2ef)
  unreachable
bb16:
  br label %bb29
bb17:
  %t26 = load ptr, ptr %l1, !tbaa !29
  store ptr %t26, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb18, label %bb19
bb18:
  %t30 = load ptr, ptr %l15, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 18}
  %t33 = icmp eq i64 %t31, 17
  store i1 %t33, ptr %l16, !tbaa !21
  br label %bb19
bb19:
  %t34 = load i1, ptr %l16, !tbaa !21
  br i1 %t34, label %bb20, label %bb21
bb20:
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr { i64, [5 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l3, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t45 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisAdapter(ptr %v0, ptr %v1, ptr %a0, ptr %t42)
  store i1 %t45, ptr %l23
  br label %bb23
bb23:
  %t46 = load i1, ptr %l23, !tbaa !21
  store i1 %t46, ptr %rv
  br label %ret
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_51a7ef38ab67534a_42b12633f9b5762e)
  unreachable
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/typed:Local"
  %l7 = alloca i1
  %l8 = alloca i1
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca { i64, [1 x i64] }
  %l17 = alloca i32
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca %"compiler/scope:rel"
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l56 = alloca ptr
  %l62 = alloca i64
  %l64 = alloca i64
  %l69 = alloca %"compiler/typed:Local"
  %l76 = alloca i1
  %l81 = alloca i1
  %l84 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i1
  %l161 = alloca ptr
  %l166 = alloca i64
  %l175 = alloca ptr
  %l177 = alloca %"compiler/typed:Plan"
  %l178 = alloca %"compiler/typed:Plan"
  %l192 = alloca ptr
  %l195 = alloca i1
  %l210 = alloca i1
  %l213 = alloca i64
  %l217 = alloca i64
  %l220 = alloca i64
  %l258 = alloca { i64, [1 x i64] }
  %l264 = alloca i64
  %l266 = alloca i1
  %l267 = alloca i32
  %l270 = alloca i32
  %l272 = alloca i1
  %l273 = alloca ptr
  %l278 = alloca %"compiler/typed:Local"
  %l280 = alloca i1
  %l305 = alloca ptr
  %l310 = alloca i64
  %l311 = alloca i64
  %l312 = alloca ptr
  %l315 = alloca i64
  %l316 = alloca i64
  %l321 = alloca i1
  %l340 = alloca ptr
  %l341 = alloca %"compiler/source:Span"
  %l342 = alloca ptr
  %l343 = alloca %"compiler/source:Span"
  %l351 = alloca i64
  %l357 = alloca i1
  %l361 = alloca i1
  %l365 = alloca i1
  %l372 = alloca ptr
  %l381 = alloca { i64, [3 x i64] }
  %l382 = alloca %"compiler/diagmsg:Msg"
  %l383 = alloca i64
  %l384 = alloca ptr
  %l385 = alloca i64
  %l387 = alloca i64
  %l389 = alloca %"compiler/source:Span"
  %l390 = alloca %"compiler/diagmsg:Msg"
  %l396 = alloca i64
  %l399 = alloca i64
  %l428 = alloca i64
  %l431 = alloca i64
  %l433 = alloca i64
  %l438 = alloca %"compiler/scope:rel"
  %l442 = alloca ptr
  %l451 = alloca ptr
  %l453 = alloca ptr
  %l458 = alloca i64
  %l469 = alloca i64
  %l471 = alloca i64
  %l476 = alloca { i64, [2 x i64] }
  %l482 = alloca ptr
  %l485 = alloca %"compiler/scope:fnRecs"
  %l488 = alloca %"compiler/scope:fnRecs"
  %l490 = alloca %"compiler/scope:fnRecs"
  %l491 = alloca %"compiler/scope:fnRecs"
  %l500 = alloca i64
  %l504 = alloca i64
  %l507 = alloca i64
  %l526 = alloca ptr
  %l530 = alloca i64
  %l532 = alloca ptr
  %l536 = alloca i64
  %l549 = alloca i64
  %l553 = alloca i64
  %l556 = alloca i64
  %l575 = alloca ptr
  %l579 = alloca i1
  %l581 = alloca ptr
  %l585 = alloca i1
  %l587 = alloca ptr
  %l591 = alloca i64
  %l593 = alloca ptr
  %l597 = alloca %"compiler/source:Span"
  %l604 = alloca i64
  %l608 = alloca i64
  %l611 = alloca i64
  %l635 = alloca { i64, ptr }
  %l636 = alloca i64
  %l640 = alloca i1
  %l645 = alloca ptr
  %l646 = alloca i64
  %l648 = alloca %"compiler/typed:Plan"
  %l650 = alloca %"compiler/typed:Plan"
  %s0 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %t253 = alloca { i64, [2 x i64] }, align 8
  %t266 = alloca %"compiler/typed:Plan", align 8
  %t655 = alloca { i64, [3 x i64] }, align 8
  %t763 = alloca { i64, [3 x i64] }, align 8
  %t1333 = alloca %"compiler/typed:Plan", align 8
  %t1337 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l56
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l56, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  %t11 = getelementptr %"compiler/typed:Body", ptr %t9, i32 0, i32 11
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = icmp eq ptr %t12, null
  br i1 %t14, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Body", ptr %t16, i32 0, i32 7
  store ptr %t18, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t20 = load i64, ptr %l5, !tbaa !24
  store i64 %t20, ptr %l62, !tbaa !24
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l64
  br label %bb6
bb6:
  %t24 = load i64, ptr %l62, !tbaa !24
  %t25 = load i64, ptr %l64, !tbaa !24
  %t26 = icmp slt i64 %t24, %t25
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l4, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t34 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t30, i64 %t31)
  store %"compiler/typed:Local" %t34, ptr %l69
  br label %bb10
bb10:
  %t35 = load %"compiler/typed:Local", ptr %l69
  store %"compiler/typed:Local" %t35, ptr %l6
  %t36 = getelementptr %"compiler/typed:Local", ptr %l6, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t41 = icmp eq i32 %t37, %t38
  br i1 %t41, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l5, !tbaa !24
  br label %bb5
bb15:
  %t47 = load i1, ptr %l2, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 51
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr %l1, !tbaa !24
  %t56 = icmp ne i64 %t52, %t53
  store i1 %t56, ptr %l76, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb18
bb18:
  %t58 = load i1, ptr %l76, !tbaa !21
  br i1 %t58, label %bb19, label %bb20
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehasLateLocals(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l84
  br label %bb21
bb20:
  store i1 false, ptr %l81, !tbaa !21
  br label %bb22
bb21:
  %t64 = load i1, ptr %l84, !tbaa !21
  store i1 %t64, ptr %l81, !tbaa !21
  br label %bb22
bb22:
  %t65 = load i1, ptr %l81, !tbaa !21
  br i1 %t65, label %bb23, label %bb24
bb23:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = getelementptr %"compiler/scope:Scoper", ptr %t66, i32 0, i32 51
  store i64 %t67, ptr %t70, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/scope:Scoper", ptr %t71, i32 0, i32 53
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H075aca2c24d2905e4fa457b6b6d6570e(ptr %v0, ptr %t73)
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/scope:Scoper", ptr %t75, i32 0, i32 54
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t77)
  br label %bb26
bb26:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/scope:Scoper", ptr %t79, i32 0, i32 55
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t81)
  br label %bb27
bb27:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/scope:Scoper", ptr %t83, i32 0, i32 52
  store i1 true, ptr %t85, !tbaa !21
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/scope:Scoper", ptr %t86, i32 0, i32 147
  %t89 = load i1, ptr %t88, !tbaa !21
  store i1 %t89, ptr %l7, !tbaa !21
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/scope:Scoper", ptr %t91, i32 0, i32 147
  store i1 false, ptr %t93, !tbaa !21
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejudge(ptr %v0, ptr %t94, i64 %t95, i1 false)
  br label %bb28
bb28:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i1, ptr %l7, !tbaa !21
  %t102 = getelementptr %"compiler/scope:Scoper", ptr %t98, i32 0, i32 147
  store i1 %t99, ptr %t102, !tbaa !21
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 52
  store i1 false, ptr %t105, !tbaa !21
  br label %bb29
bb29:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 12
  %t109 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t108, i64 %t109, i1 true)
  br label %bb30
bb30:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l3, !tbaa !29
  %t117 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 26
  store ptr %t113, ptr %t117, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load i64, ptr %l1, !tbaa !24
  %t122 = getelementptr %"compiler/scope:Scoper", ptr %t118, i32 0, i32 27
  store i64 %t119, ptr %t122, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t125)
  br label %bb31
bb31:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/scope:Scoper", ptr %t127, i32 0, i32 35
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t129)
  br label %bb32
bb32:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/scope:Scoper", ptr %t131, i32 0, i32 194
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t133)
  br label %bb33
bb33:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/scope:Scoper", ptr %t135, i32 0, i32 195
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t137)
  br label %bb34
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/scope:Scoper", ptr %t139, i32 0, i32 36
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t141)
  br label %bb35
bb35:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/scope:Scoper", ptr %t143, i32 0, i32 37
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t145)
  br label %bb36
bb36:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/scope:Scoper", ptr %t147, i32 0, i32 81
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t149)
  br label %bb37
bb37:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/scope:Scoper", ptr %t151, i32 0, i32 38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eClear_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t153)
  br label %bb38
bb38:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/scope:Scoper", ptr %t155, i32 0, i32 39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t157)
  br label %bb39
bb39:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"compiler/scope:Scoper", ptr %t159, i32 0, i32 40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t161)
  br label %bb40
bb40:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 43
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc1e7c6bbb3acbd34c924c83b2bb772b9(ptr %v0, ptr %t165)
  br label %bb41
bb41:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/scope:Scoper", ptr %t167, i32 0, i32 44
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %t169)
  br label %bb42
bb42:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/scope:Scoper", ptr %t171, i32 0, i32 45
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc1e7c6bbb3acbd34c924c83b2bb772b9(ptr %v0, ptr %t173)
  br label %bb43
bb43:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/scope:Scoper", ptr %t175, i32 0, i32 46
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t177)
  br label %bb44
bb44:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/scope:Scoper", ptr %t179, i32 0, i32 47
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t181)
  br label %bb45
bb45:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/scope:Scoper", ptr %t183, i32 0, i32 48
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t185)
  br label %bb46
bb46:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 49
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t189)
  br label %bb47
bb47:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"compiler/scope:Scoper", ptr %t191, i32 0, i32 56
  store i64 -1, ptr %t193, !tbaa !24
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/scope:Scoper", ptr %t194, i32 0, i32 58
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t196)
  br label %bb48
bb48:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/scope:Scoper", ptr %t198, i32 0, i32 59
  store i1 false, ptr %t200, !tbaa !21
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/scope:Scoper", ptr %t201, i32 0, i32 60
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %t203)
  br label %bb49
bb49:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/scope:Scoper", ptr %t205, i32 0, i32 42
  store i64 -1, ptr %t207, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %t208, i32 0, i32 72
  store i64 -1, ptr %t210, !tbaa !24
  %t211 = load ptr, ptr %l3, !tbaa !29
  %t213 = getelementptr %"compiler/typed:Body", ptr %t211, i32 0, i32 14
  %t214 = load i1, ptr %t213, !tbaa !21
  br i1 %t214, label %bb50, label %bb51
bb50:
  %t216 = load ptr, ptr %l3, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Body", ptr %t216, i32 0, i32 16
  %t219 = load i1, ptr %t218, !tbaa !21
  store i1 %t219, ptr %l154, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb52
bb52:
  %t221 = load i1, ptr %l154, !tbaa !21
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t222 = load ptr, ptr %l3, !tbaa !29
  %t224 = getelementptr %"compiler/typed:Body", ptr %t222, i32 0, i32 15
  %t225 = load i32, ptr %t224, !tbaa !23
  %t227 = icmp sge i32 %t225, 0
  store i1 %t227, ptr %l157, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb55
bb55:
  %t229 = load i1, ptr %l157, !tbaa !21
  br i1 %t229, label %bb56, label %bb57
bb56:
  %t230 = load ptr, ptr %l0, !tbaa !29
  store ptr %t230, ptr %l161, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t232 = load i64, ptr %l1, !tbaa !24
  %t233 = load ptr, ptr %l3, !tbaa !29
  %t235 = getelementptr %"compiler/typed:Body", ptr %t233, i32 0, i32 15
  %t236 = load i32, ptr %t235, !tbaa !23
  %t240 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureVar(ptr %v0, ptr %t231, i64 %t232, i32 %t236)
  store i64 %t240, ptr %l166
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t241 = load i64, ptr %l166, !tbaa !24
  %t242 = load ptr, ptr %l161, !tbaa !29
  %t243 = getelementptr %"compiler/scope:Scoper", ptr %t242, i32 0, i32 72
  store i64 %t241, ptr %t243, !tbaa !24
  br label %bb59
bb59:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/scope:Scoper", ptr %t244, i32 0, i32 73
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %t246)
  br label %bb60
bb60:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/scope:Scoper", ptr %t248, i32 0, i32 75
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t250)
  br label %bb61
bb61:
  %t252 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t253
  %t254 = getelementptr { i64, [2 x i64] }, ptr %t253, i32 0, i32 0
  store i64 0, ptr %t254
  %t255 = load { i64, [2 x i64] }, ptr %t253
  %t258 = getelementptr %"compiler/scope:Scoper", ptr %t252, i32 0, i32 74
  store { i64, [2 x i64] } %t255, ptr %t258
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i1, ptr %l2, !tbaa !21
  %t263 = getelementptr %"compiler/scope:Scoper", ptr %t259, i32 0, i32 28
  store i1 %t260, ptr %t263, !tbaa !21
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l175, !tbaa !29
  %t265 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ePlan_2eNew(ptr %t266, ptr %v0, ptr %v0, ptr %t265)
  call void @llvm.memmove.p0.p0.i64(ptr %l177, ptr %t266, i64 536, i1 false)
  br label %bb62
bb62:
  %t268 = load ptr, ptr %l175, !tbaa !29
  %t269 = getelementptr %"compiler/scope:Scoper", ptr %t268, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %l178, ptr %t269, i64 536, i1 false)
  %t270 = load ptr, ptr %l175, !tbaa !29
  %t271 = getelementptr %"compiler/scope:Scoper", ptr %t270, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %t271, ptr %l177, i64 536, i1 false)
  %t272 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e2
  br i1 %t272, label %bb63, label %bb64
bb63:
  %t274 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 2
  %t275 = load { i64, ptr }, ptr %t274
  %t276 = extractvalue { i64, ptr } %t275, 1
  call void @__olang_region_release(ptr %t276)
  store { i64, ptr } zeroinitializer, ptr %t274
  br label %bb64
bb64:
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e3
  br i1 %t277, label %bb65, label %bb66
bb65:
  %t279 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 3
  %t280 = load { i64, ptr }, ptr %t279
  %t281 = extractvalue { i64, ptr } %t280, 1
  call void @__olang_region_release(ptr %t281)
  store { i64, ptr } zeroinitializer, ptr %t279
  br label %bb66
bb66:
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e4
  br i1 %t282, label %bb67, label %bb68
bb67:
  %t284 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 4
  %t285 = load { i64, ptr }, ptr %t284
  %t286 = extractvalue { i64, ptr } %t285, 1
  call void @__olang_region_release(ptr %t286)
  store { i64, ptr } zeroinitializer, ptr %t284
  br label %bb68
bb68:
  %t287 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e5
  br i1 %t287, label %bb69, label %bb70
bb69:
  %t289 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 5
  %t290 = load { i64, ptr }, ptr %t289
  %t291 = extractvalue { i64, ptr } %t290, 1
  call void @__olang_region_release(ptr %t291)
  store { i64, ptr } zeroinitializer, ptr %t289
  br label %bb70
bb70:
  %t292 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e8
  br i1 %t292, label %bb71, label %bb72
bb71:
  %t294 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 8
  %t295 = load { i64, ptr }, ptr %t294
  %t296 = extractvalue { i64, ptr } %t295, 1
  call void @__olang_region_release(ptr %t296)
  store { i64, ptr } zeroinitializer, ptr %t294
  br label %bb72
bb72:
  %t297 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e9
  br i1 %t297, label %bb73, label %bb74
bb73:
  %t299 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 9
  %t300 = load { i64, ptr }, ptr %t299
  %t301 = extractvalue { i64, ptr } %t300, 1
  call void @__olang_region_release(ptr %t301)
  store { i64, ptr } zeroinitializer, ptr %t299
  br label %bb74
bb74:
  %t302 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e11
  br i1 %t302, label %bb75, label %bb76
bb75:
  %t304 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 11
  %t305 = load { i64, ptr }, ptr %t304
  %t306 = extractvalue { i64, ptr } %t305, 1
  call void @__olang_region_release(ptr %t306)
  store { i64, ptr } zeroinitializer, ptr %t304
  br label %bb76
bb76:
  %t307 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e12
  br i1 %t307, label %bb77, label %bb78
bb77:
  %t309 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 12
  %t310 = load { i64, ptr }, ptr %t309
  %t311 = extractvalue { i64, ptr } %t310, 1
  call void @__olang_region_release(ptr %t311)
  store { i64, ptr } zeroinitializer, ptr %t309
  br label %bb78
bb78:
  %t312 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e13
  br i1 %t312, label %bb79, label %bb80
bb79:
  %t314 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 13
  %t315 = load { i64, ptr }, ptr %t314
  %t316 = extractvalue { i64, ptr } %t315, 1
  call void @__olang_region_release(ptr %t316)
  store { i64, ptr } zeroinitializer, ptr %t314
  br label %bb80
bb80:
  %t317 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e15
  br i1 %t317, label %bb81, label %bb82
bb81:
  %t319 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 15
  %t320 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t319, i32 0, i32 0
  %t321 = load { i64, ptr }, ptr %t320
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = call ptr @__olang_region_or(ptr %t322, ptr null)
  %t324 = icmp ne ptr %t323, null
  %t325 = select i1 %t324, ptr %t323, ptr null
  call void @__olang_region_drop(ptr %t325)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t319
  br label %bb82
bb82:
  %t326 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aPlan_2e16
  br i1 %t326, label %bb83, label %bb84
bb83:
  %t328 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 16
  %t329 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t328, i32 0, i32 0
  %t330 = load { i64, ptr }, ptr %t329
  %t331 = extractvalue { i64, ptr } %t330, 1
  %t332 = call ptr @__olang_region_or(ptr %t331, ptr null)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr null
  call void @__olang_region_drop(ptr %t334)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t328
  br label %bb84
bb84:
  %t335 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e1
  br i1 %t335, label %bb85, label %bb86
bb85:
  %t337 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 17
  %t338 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t337, i32 0, i32 1
  %t339 = load { i64, ptr }, ptr %t338
  %t340 = extractvalue { i64, ptr } %t339, 1
  call void @__olang_region_release(ptr %t340)
  store { i64, ptr } zeroinitializer, ptr %t338
  br label %bb86
bb86:
  %t341 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e2
  br i1 %t341, label %bb87, label %bb88
bb87:
  %t343 = getelementptr %"compiler/typed:Plan", ptr %l178, i32 0, i32 17
  %t344 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t343, i32 0, i32 2
  %t345 = load { i64, ptr }, ptr %t344
  %t346 = extractvalue { i64, ptr } %t345, 1
  call void @__olang_region_release(ptr %t346)
  store { i64, ptr } zeroinitializer, ptr %t344
  br label %bb88
bb88:
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l192, !tbaa !29
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l1, !tbaa !24
  %t352 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakesDerived(ptr %v0, ptr %t348, i64 %t349)
  store i1 %t352, ptr %l195
  br label %bb89
bb89:
  %t353 = load i1, ptr %l195, !tbaa !21
  %t354 = load ptr, ptr %l192, !tbaa !29
  %t355 = getelementptr %"compiler/scope:Scoper", ptr %t354, i32 0, i32 70
  store i1 %t353, ptr %t355, !tbaa !21
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t358 = getelementptr %"compiler/scope:Scoper", ptr %t356, i32 0, i32 61
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t358)
  br label %bb90
bb90:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/scope:Scoper", ptr %t360, i32 0, i32 62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t362)
  br label %bb91
bb91:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t366 = getelementptr %"compiler/scope:Scoper", ptr %t364, i32 0, i32 66
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t366)
  br label %bb92
bb92:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = getelementptr %"compiler/scope:Scoper", ptr %t368, i32 0, i32 67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t370)
  br label %bb93
bb93:
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t374 = getelementptr %"compiler/scope:Scoper", ptr %t372, i32 0, i32 68
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t374)
  br label %bb94
bb94:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/scope:Scoper", ptr %t376, i32 0, i32 69
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t378)
  br label %bb95
bb95:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t381 = load ptr, ptr %l3, !tbaa !29
  %t384 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStr(ptr %v0, ptr %v0, ptr %t380, ptr %t381)
  store i1 %t384, ptr %l210
  br label %bb96
bb96:
  %t385 = load i1, ptr %l210, !tbaa !21
  store i1 %t385, ptr %l8, !tbaa !21
  store i64 0, ptr %l9, !tbaa !24
  %t386 = load ptr, ptr %l3, !tbaa !29
  %t388 = getelementptr %"compiler/typed:Body", ptr %t386, i32 0, i32 6
  %t390 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t388)
  store i64 %t390, ptr %l213
  br label %bb97
bb97:
  %t391 = load i64, ptr %l213, !tbaa !24
  store i64 %t391, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t392 = load i64, ptr %l10, !tbaa !24
  %t393 = load i64, ptr %l9, !tbaa !24
  %t396 = icmp sgt i64 %t392, %t393
  br i1 %t396, label %bb98, label %bb99
bb98:
  %t398 = load i64, ptr %l11, !tbaa !24
  %t400 = icmp sgt i64 %t398, 0
  br i1 %t400, label %bb100, label %bb101
bb99:
  store i64 0, ptr %l217, !tbaa !24
  br label %bb103
bb100:
  %t402 = load i64, ptr %l10, !tbaa !24
  %t403 = load i64, ptr %l9, !tbaa !24
  %t406 = sub i64 %t402, %t403
  %t407 = load i64, ptr %l11, !tbaa !24
  %t410 = add i64 %t406, %t407
  %t412 = sub i64 %t410, 1
  %t413 = load i64, ptr %l11, !tbaa !24
  %t416 = sdiv i64 %t412, %t413
  store i64 %t416, ptr %l220, !tbaa !24
  br label %bb102
bb101:
  store i64 0, ptr %l220, !tbaa !24
  br label %bb102
bb102:
  %t418 = load i64, ptr %l220, !tbaa !24
  store i64 %t418, ptr %l217, !tbaa !24
  br label %bb103
bb103:
  %t419 = load i64, ptr %l217, !tbaa !24
  store i64 %t419, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb104
bb104:
  %t420 = load i64, ptr %l13, !tbaa !24
  %t421 = load i64, ptr %l12, !tbaa !24
  %t424 = icmp slt i64 %t420, %t421
  %t426 = xor i1 %t424, true
  br i1 %t426, label %bb105, label %bb106
bb105:
  br label %bb138
bb106:
  br label %bb107
bb107:
  %t428 = load i64, ptr %l9, !tbaa !24
  %t429 = load i64, ptr %l13, !tbaa !24
  %t430 = load i64, ptr %l11, !tbaa !24
  %t433 = mul i64 %t429, %t430
  %t436 = add i64 %t428, %t433
  store i64 %t436, ptr %l14, !tbaa !24
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t440 = getelementptr %"compiler/scope:Scoper", ptr %t438, i32 0, i32 61
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t440, i1 false)
  br label %bb108
bb108:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/scope:Scoper", ptr %t442, i32 0, i32 62
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t444, i1 false)
  br label %bb109
bb109:
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = getelementptr %"compiler/scope:Scoper", ptr %t446, i32 0, i32 66
  %t449 = load ptr, ptr %l3, !tbaa !29
  %t451 = getelementptr %"compiler/typed:Body", ptr %t449, i32 0, i32 4
  %t452 = load %"compiler/source:Span", ptr %t451
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t448, %"compiler/source:Span" %t452)
  br label %bb110
bb110:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/scope:Scoper", ptr %t455, i32 0, i32 67
  %t458 = load ptr, ptr %l3, !tbaa !29
  %t460 = getelementptr %"compiler/typed:Body", ptr %t458, i32 0, i32 3
  %t461 = load i64, ptr %t460, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t457, i64 %t461)
  br label %bb111
bb111:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = getelementptr %"compiler/scope:Scoper", ptr %t464, i32 0, i32 68
  %t467 = load ptr, ptr %l3, !tbaa !29
  %t469 = getelementptr %"compiler/typed:Body", ptr %t467, i32 0, i32 4
  %t470 = load %"compiler/source:Span", ptr %t469
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t466, %"compiler/source:Span" %t470)
  br label %bb112
bb112:
  store i1 false, ptr %l15, !tbaa !21
  %t473 = load i1, ptr %l8, !tbaa !21
  br i1 %t473, label %bb113, label %bb114
bb113:
  %t475 = load ptr, ptr %l3, !tbaa !29
  %t477 = getelementptr %"compiler/typed:Body", ptr %t475, i32 0, i32 6
  %t478 = load i64, ptr %l14, !tbaa !24
  %t481 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t477, i64 %t478)
  store { i64, [1 x i64] } %t481, ptr %l258
  br label %bb115
bb114:
  br label %bb135
bb115:
  %t482 = load { i64, [1 x i64] }, ptr %l258
  store { i64, [1 x i64] } %t482, ptr %l16
  %t483 = load { i64, [1 x i64] }, ptr %l16
  %t485 = extractvalue { i64, [1 x i64] } %t483, 0
  %t486 = icmp eq i64 %t485, 0
  br i1 %t486, label %bb116, label %bb117
bb116:
  %t488 = getelementptr { i64, [1 x i64] }, ptr %l16, i32 0, i32 1
  %t489 = getelementptr { i32 }, ptr %t488, i32 0, i32 0
  %t490 = load i32, ptr %t489
  store i32 %t490, ptr %l17, !tbaa !23
  br label %bb118
bb117:
  br label %bb129
bb118:
  %t492 = load ptr, ptr %l3, !tbaa !29
  %t494 = getelementptr %"compiler/typed:Body", ptr %t492, i32 0, i32 5
  %t496 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t494)
  store i64 %t496, ptr %l264
  br label %bb119
bb119:
  %t497 = load i64, ptr %l264, !tbaa !24
  %t498 = icmp sgt i64 %t497, 0
  br i1 %t498, label %bb120, label %bb121
bb120:
  %t500 = load i32, ptr %l17, !tbaa !23
  store i32 %t500, ptr %l267, !tbaa !23
  %t501 = load ptr, ptr %l3, !tbaa !29
  %t503 = getelementptr %"compiler/typed:Body", ptr %t501, i32 0, i32 5
  %t505 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t503, i64 0)
  store i32 %t505, ptr %l270
  br label %bb122
bb121:
  store i1 false, ptr %l266, !tbaa !21
  br label %bb123
bb122:
  %t506 = load i32, ptr %l267, !tbaa !23
  %t507 = load i32, ptr %l270, !tbaa !23
  %t508 = icmp eq i32 %t506, %t507
  store i1 %t508, ptr %l266, !tbaa !21
  br label %bb123
bb123:
  %t510 = load i1, ptr %l266, !tbaa !21
  br i1 %t510, label %bb124, label %bb125
bb124:
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l273, !tbaa !29
  %t512 = load ptr, ptr %l3, !tbaa !29
  %t514 = getelementptr %"compiler/typed:Body", ptr %t512, i32 0, i32 7
  %t515 = load i32, ptr %l17, !tbaa !23
  %t517 = sext i32 %t515 to i64
  %t520 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t514, i64 %t517)
  store %"compiler/typed:Local" %t520, ptr %l278
  br label %bb126
bb125:
  store i1 false, ptr %l272, !tbaa !21
  br label %bb128
bb126:
  %t521 = getelementptr %"compiler/typed:Local", ptr %l278, i32 0, i32 2
  %t522 = load i32, ptr %t521, !tbaa !23
  %t523 = load ptr, ptr %l273, !tbaa !29
  %t525 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t523, i32 %t522)
  store i1 %t525, ptr %l280
  br label %bb127
bb127:
  %t526 = load i1, ptr %l280, !tbaa !21
  %t527 = xor i1 %t526, true
  store i1 %t527, ptr %l272, !tbaa !21
  br label %bb128
bb128:
  %t529 = load i1, ptr %l272, !tbaa !21
  store i1 %t529, ptr %l15, !tbaa !21
  br label %bb134
bb129:
  br i1 true, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb134
bb133:
  call void @__olang_check_failed(ptr @olang_loc_75ea16a293881b53_a3e5ee6d3f4964f)
  unreachable
bb134:
  br label %bb135
bb135:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/scope:Scoper", ptr %t530, i32 0, i32 69
  %t533 = load i1, ptr %l15, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t532, i1 %t533)
  br label %bb136
bb136:
  br label %bb137
bb137:
  %t536 = load i64, ptr %l13, !tbaa !24
  %t538 = add i64 %t536, 1
  store i64 %t538, ptr %l13, !tbaa !24
  br label %bb104
bb138:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t542 = getelementptr %"compiler/scope:Scoper", ptr %t540, i32 0, i32 110
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t542)
  br label %bb139
bb139:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t546 = getelementptr %"compiler/scope:Scoper", ptr %t544, i32 0, i32 111
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t546)
  br label %bb140
bb140:
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t550 = getelementptr %"compiler/scope:Scoper", ptr %t548, i32 0, i32 112
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t550)
  br label %bb141
bb141:
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t554 = getelementptr %"compiler/scope:Scoper", ptr %t552, i32 0, i32 113
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %t554)
  br label %bb142
bb142:
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t558 = getelementptr %"compiler/scope:Scoper", ptr %t556, i32 0, i32 114
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %t558)
  br label %bb143
bb143:
  %t560 = load ptr, ptr %l0, !tbaa !29
  %t562 = getelementptr %"compiler/scope:Scoper", ptr %t560, i32 0, i32 116
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t562)
  br label %bb144
bb144:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everStart(ptr %v0, ptr %t564, i64 %t565)
  br label %bb145
bb145:
  store i64 0, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t568 = load i1, ptr %l2, !tbaa !21
  br i1 %t568, label %bb146, label %bb147
bb146:
  %t570 = load ptr, ptr %l0, !tbaa !29
  %t572 = getelementptr %"compiler/scope:Scoper", ptr %t570, i32 0, i32 0
  %t573 = load ptr, ptr %t572, !tbaa !29
  %t575 = getelementptr %"compiler/generic:Program", ptr %t573, i32 0, i32 0
  %t576 = load ptr, ptr %t575, !tbaa !29
  %t578 = getelementptr %"compiler/load:Loader", ptr %t576, i32 0, i32 4
  %t579 = load ptr, ptr %t578, !tbaa !29
  store ptr %t579, ptr %l305, !tbaa !29
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/scope:Scoper", ptr %t580, i32 0, i32 0
  %t583 = load ptr, ptr %t582, !tbaa !29
  %t585 = getelementptr %"compiler/generic:Program", ptr %t583, i32 0, i32 0
  %t586 = load ptr, ptr %t585, !tbaa !29
  %t588 = getelementptr %"compiler/load:Loader", ptr %t586, i32 0, i32 4
  %t589 = load ptr, ptr %t588, !tbaa !29
  %t591 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextDepth(ptr %v0, ptr %t589)
  store i64 %t591, ptr %l310
  br label %bb148
bb147:
  br label %bb159
bb148:
  %t592 = load ptr, ptr %l305, !tbaa !29
  %t593 = load i64, ptr %l310, !tbaa !24
  %t594 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %t592, i64 %t593)
  store i64 %t594, ptr %l311
  br label %bb149
bb149:
  %t595 = load i64, ptr %l311, !tbaa !24
  store i64 %t595, ptr %l19, !tbaa !24
  %t596 = load ptr, ptr %l0, !tbaa !29
  store ptr %t596, ptr %l312, !tbaa !29
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t598 = load i64, ptr %l1, !tbaa !24
  %t601 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOf(ptr %v0, ptr %t597, i64 %t598)
  store i64 %t601, ptr %l315
  br label %bb150
bb150:
  %t602 = load ptr, ptr %l312, !tbaa !29
  %t603 = load i64, ptr %l315, !tbaa !24
  %t604 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstContexts(ptr %v0, ptr %t602, i64 %t603)
  store i64 %t604, ptr %l316
  br label %bb151
bb151:
  %t605 = load i64, ptr %l316, !tbaa !24
  store i64 %t605, ptr %l18, !tbaa !24
  %t606 = load i64, ptr %l1, !tbaa !24
  %t607 = load ptr, ptr %l0, !tbaa !29
  %t609 = getelementptr %"compiler/scope:Scoper", ptr %t607, i32 0, i32 230
  %t610 = load i64, ptr %t609, !tbaa !24
  %t613 = icmp eq i64 %t606, %t610
  br i1 %t613, label %bb152, label %bb153
bb152:
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t617 = getelementptr %"compiler/scope:Scoper", ptr %t615, i32 0, i32 238
  %t618 = getelementptr %"compiler/scope:Gap", ptr %t617, i32 0, i32 0
  %t619 = load i64, ptr %t618, !tbaa !24
  %t621 = icmp sge i64 %t619, 0
  store i1 %t621, ptr %l321, !tbaa !21
  br label %bb154
bb153:
  store i1 false, ptr %l321, !tbaa !21
  br label %bb154
bb154:
  %t623 = load i1, ptr %l321, !tbaa !21
  br i1 %t623, label %bb155, label %bb156
bb155:
  store %olang.scope zeroinitializer, ptr %s15
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t626 = getelementptr %"compiler/scope:Scoper", ptr %t624, i32 0, i32 0
  %t627 = load ptr, ptr %t626, !tbaa !29
  %t629 = getelementptr %"compiler/generic:Program", ptr %t627, i32 0, i32 0
  %t630 = load ptr, ptr %t629, !tbaa !29
  %t632 = getelementptr %"compiler/load:Loader", ptr %t630, i32 0, i32 4
  %t633 = load ptr, ptr %t632, !tbaa !29
  %t634 = load ptr, ptr %l0, !tbaa !29
  %t636 = getelementptr %"compiler/scope:Scoper", ptr %t634, i32 0, i32 238
  %t637 = getelementptr %"compiler/scope:Gap", ptr %t636, i32 0, i32 0
  %t638 = load i64, ptr %t637, !tbaa !24
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t641 = getelementptr %"compiler/scope:Scoper", ptr %t639, i32 0, i32 238
  %t642 = getelementptr %"compiler/scope:Gap", ptr %t641, i32 0, i32 1
  %t643 = getelementptr %"compiler/source:Span", ptr %t642, i32 0, i32 0
  %t644 = load i32, ptr %t643, !tbaa !23
  %t646 = sext i32 %t644 to i64
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t649 = getelementptr %"compiler/scope:Scoper", ptr %t647, i32 0, i32 238
  %t650 = getelementptr %"compiler/scope:Gap", ptr %t649, i32 0, i32 1
  %t651 = getelementptr %"compiler/source:Span", ptr %t650, i32 0, i32 1
  %t652 = load i32, ptr %t651, !tbaa !23
  %t654 = sext i32 %t652 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t655
  %t656 = getelementptr { i64, [3 x i64] }, ptr %t655, i32 0, i32 0
  store i64 3, ptr %t656
  %t658 = insertvalue { i64, i64, i64 } undef, i64 %t638, 0
  %t660 = insertvalue { i64, i64, i64 } %t658, i64 %t646, 1
  %t662 = insertvalue { i64, i64, i64 } %t660, i64 %t654, 2
  %t663 = getelementptr { i64, [3 x i64] }, ptr %t655, i32 0, i32 1
  store { i64, i64, i64 } %t662, ptr %t663
  %t664 = load { i64, [3 x i64] }, ptr %t655
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %s15, ptr %t633, { i64, [3 x i64] } %t664, { i64, ptr } { i64 48, ptr getelementptr inbounds (<{ i64, [48 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb157
bb156:
  br label %bb158
bb157:
  %t667 = load i64, ptr %l18, !tbaa !24
  %t669 = add i64 %t667, 1
  store i64 %t669, ptr %l18, !tbaa !24
  call void @__olang_scope_close(ptr %s15)
  br label %bb158
bb158:
  br label %bb159
bb159:
  %t671 = load ptr, ptr %l0, !tbaa !29
  store ptr %t671, ptr %l340, !tbaa !29
  %t672 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t672, ptr %l341
  br label %bb160
bb160:
  %t673 = load %"compiler/source:Span", ptr %l341
  %t674 = load ptr, ptr %l340, !tbaa !29
  %t675 = getelementptr %"compiler/scope:Scoper", ptr %t674, i32 0, i32 29
  store %"compiler/source:Span" %t673, ptr %t675
  %t676 = load ptr, ptr %l0, !tbaa !29
  store ptr %t676, ptr %l342, !tbaa !29
  %t677 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 -1, i32 -1)
  store %"compiler/source:Span" %t677, ptr %l343
  br label %bb161
bb161:
  %t678 = load %"compiler/source:Span", ptr %l343
  %t679 = load ptr, ptr %l342, !tbaa !29
  %t680 = getelementptr %"compiler/scope:Scoper", ptr %t679, i32 0, i32 30
  store %"compiler/source:Span" %t678, ptr %t680
  %t681 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecStart(ptr %v0, ptr %t681)
  br label %bb162
bb162:
  %t683 = load i1, ptr %l2, !tbaa !21
  br i1 %t683, label %bb163, label %bb164
bb163:
  %t685 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBoundsDefs(ptr %v0, ptr %t685)
  br label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb166
bb166:
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = getelementptr %"compiler/scope:Scoper", ptr %t687, i32 0, i32 0
  %t690 = load ptr, ptr %t689, !tbaa !29
  %t692 = getelementptr %"compiler/generic:Program", ptr %t690, i32 0, i32 0
  %t693 = load ptr, ptr %t692, !tbaa !29
  %t695 = getelementptr %"compiler/load:Loader", ptr %t693, i32 0, i32 4
  %t696 = load ptr, ptr %t695, !tbaa !29
  %t698 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t696)
  store i64 %t698, ptr %l351
  br label %bb167
bb167:
  %t699 = load i64, ptr %l351, !tbaa !24
  store i64 %t699, ptr %l20, !tbaa !24
  %t700 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erun(ptr %v0, ptr %t700)
  br label %bb168
bb168:
  %t702 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEnd(ptr %v0, ptr %t702)
  br label %bb169
bb169:
  %t704 = load i1, ptr %l2, !tbaa !21
  br i1 %t704, label %bb170, label %bb171
bb170:
  %t706 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBounds(ptr %v0, ptr %t706)
  br label %bb172
bb171:
  br label %bb173
bb172:
  br label %bb173
bb173:
  %t708 = load i1, ptr %l2, !tbaa !21
  br i1 %t708, label %bb174, label %bb175
bb174:
  %t710 = load i1, ptr %l8, !tbaa !21
  store i1 %t710, ptr %l357, !tbaa !21
  br label %bb176
bb175:
  store i1 false, ptr %l357, !tbaa !21
  br label %bb176
bb176:
  %t712 = load i1, ptr %l357, !tbaa !21
  br i1 %t712, label %bb177, label %bb178
bb177:
  %t713 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estrReceiver(ptr %v0, ptr %t713)
  br label %bb179
bb178:
  br label %bb180
bb179:
  br label %bb180
bb180:
  %t715 = load i1, ptr %l2, !tbaa !21
  br i1 %t715, label %bb181, label %bb182
bb181:
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t719 = getelementptr %"compiler/scope:Scoper", ptr %t717, i32 0, i32 29
  %t720 = getelementptr %"compiler/source:Span", ptr %t719, i32 0, i32 0
  %t721 = load i32, ptr %t720, !tbaa !23
  %t723 = icmp sge i32 %t721, 0
  store i1 %t723, ptr %l361, !tbaa !21
  br label %bb183
bb182:
  store i1 false, ptr %l361, !tbaa !21
  br label %bb183
bb183:
  %t725 = load i1, ptr %l361, !tbaa !21
  br i1 %t725, label %bb184, label %bb185
bb184:
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t728 = getelementptr %"compiler/scope:Scoper", ptr %t726, i32 0, i32 30
  %t729 = getelementptr %"compiler/source:Span", ptr %t728, i32 0, i32 0
  %t730 = load i32, ptr %t729, !tbaa !23
  %t732 = icmp sge i32 %t730, 0
  store i1 %t732, ptr %l365, !tbaa !21
  br label %bb186
bb185:
  store i1 false, ptr %l365, !tbaa !21
  br label %bb186
bb186:
  %t734 = load i1, ptr %l365, !tbaa !21
  br i1 %t734, label %bb187, label %bb188
bb187:
  store %olang.scope zeroinitializer, ptr %s19
  %t735 = load ptr, ptr %l0, !tbaa !29
  %t737 = getelementptr %"compiler/scope:Scoper", ptr %t735, i32 0, i32 0
  %t738 = load ptr, ptr %t737, !tbaa !29
  %t740 = getelementptr %"compiler/generic:Program", ptr %t738, i32 0, i32 0
  %t741 = load ptr, ptr %t740, !tbaa !29
  %t743 = getelementptr %"compiler/load:Loader", ptr %t741, i32 0, i32 4
  %t744 = load ptr, ptr %t743, !tbaa !29
  store ptr %t744, ptr %l372, !tbaa !29
  %t745 = load ptr, ptr %l3, !tbaa !29
  %t747 = getelementptr %"compiler/typed:Body", ptr %t745, i32 0, i32 3
  %t748 = load i64, ptr %t747, !tbaa !24
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/scope:Scoper", ptr %t749, i32 0, i32 29
  %t752 = getelementptr %"compiler/source:Span", ptr %t751, i32 0, i32 0
  %t753 = load i32, ptr %t752, !tbaa !23
  %t755 = sext i32 %t753 to i64
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t758 = getelementptr %"compiler/scope:Scoper", ptr %t756, i32 0, i32 29
  %t759 = getelementptr %"compiler/source:Span", ptr %t758, i32 0, i32 1
  %t760 = load i32, ptr %t759, !tbaa !23
  %t762 = sext i32 %t760 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t763
  %t764 = getelementptr { i64, [3 x i64] }, ptr %t763, i32 0, i32 0
  store i64 3, ptr %t764
  %t766 = insertvalue { i64, i64, i64 } undef, i64 %t748, 0
  %t768 = insertvalue { i64, i64, i64 } %t766, i64 %t755, 1
  %t770 = insertvalue { i64, i64, i64 } %t768, i64 %t762, 2
  %t771 = getelementptr { i64, [3 x i64] }, ptr %t763, i32 0, i32 1
  store { i64, i64, i64 } %t770, ptr %t771
  %t772 = load { i64, [3 x i64] }, ptr %t763
  store { i64, [3 x i64] } %t772, ptr %l381
  %t773 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeDestructor(ptr %s19, ptr %s19, { i64, ptr } { i64 35, ptr getelementptr inbounds (<{ i64, [35 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t773, ptr %l382
  br label %bb189
bb188:
  br label %bb193
bb189:
  %t774 = load ptr, ptr %l372, !tbaa !29
  %t775 = load { i64, [3 x i64] }, ptr %l381
  %t776 = load %"compiler/diagmsg:Msg", ptr %l382
  %t777 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %s19, ptr %t774, { i64, [3 x i64] } %t775, %"compiler/diagmsg:Msg" %t776)
  store i64 %t777, ptr %l383
  br label %bb190
bb190:
  %t778 = load i64, ptr %l383, !tbaa !24
  %t779 = load ptr, ptr %l0, !tbaa !29
  store ptr %t779, ptr %l384, !tbaa !29
  store i64 %t778, ptr %l385, !tbaa !24
  %t781 = load ptr, ptr %l3, !tbaa !29
  %t783 = getelementptr %"compiler/typed:Body", ptr %t781, i32 0, i32 3
  %t784 = load i64, ptr %t783, !tbaa !24
  store i64 %t784, ptr %l387, !tbaa !24
  %t785 = load ptr, ptr %l0, !tbaa !29
  %t787 = getelementptr %"compiler/scope:Scoper", ptr %t785, i32 0, i32 30
  %t788 = load %"compiler/source:Span", ptr %t787
  store %"compiler/source:Span" %t788, ptr %l389
  %t789 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %s19)
  store %"compiler/diagmsg:Msg" %t789, ptr %l390
  br label %bb191
bb191:
  %t790 = load ptr, ptr %l384, !tbaa !29
  %t791 = load i64, ptr %l385, !tbaa !24
  %t792 = load i64, ptr %l387, !tbaa !24
  %t793 = load %"compiler/source:Span", ptr %l389
  %t794 = load %"compiler/diagmsg:Msg", ptr %l390
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s19, ptr %t790, i64 %t791, i64 %t792, %"compiler/source:Span" %t793, %"compiler/diagmsg:Msg" %t794)
  br label %bb192
bb192:
  call void @__olang_scope_close(ptr %s19)
  br label %bb193
bb193:
  %t795 = load i1, ptr %l2, !tbaa !21
  br i1 %t795, label %bb194, label %bb195
bb194:
  store i64 0, ptr %l22, !tbaa !24
  %t797 = load i64, ptr %l18, !tbaa !24
  store i64 %t797, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t799 = load i64, ptr %l23, !tbaa !24
  %t800 = load i64, ptr %l22, !tbaa !24
  %t803 = icmp sgt i64 %t799, %t800
  br i1 %t803, label %bb196, label %bb197
bb195:
  br label %bb210
bb196:
  %t805 = load i64, ptr %l24, !tbaa !24
  %t807 = icmp sgt i64 %t805, 0
  br i1 %t807, label %bb198, label %bb199
bb197:
  store i64 0, ptr %l396, !tbaa !24
  br label %bb201
bb198:
  %t809 = load i64, ptr %l23, !tbaa !24
  %t810 = load i64, ptr %l22, !tbaa !24
  %t813 = sub i64 %t809, %t810
  %t814 = load i64, ptr %l24, !tbaa !24
  %t817 = add i64 %t813, %t814
  %t819 = sub i64 %t817, 1
  %t820 = load i64, ptr %l24, !tbaa !24
  %t823 = sdiv i64 %t819, %t820
  store i64 %t823, ptr %l399, !tbaa !24
  br label %bb200
bb199:
  store i64 0, ptr %l399, !tbaa !24
  br label %bb200
bb200:
  %t825 = load i64, ptr %l399, !tbaa !24
  store i64 %t825, ptr %l396, !tbaa !24
  br label %bb201
bb201:
  %t826 = load i64, ptr %l396, !tbaa !24
  store i64 %t826, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb202
bb202:
  %t827 = load i64, ptr %l26, !tbaa !24
  %t828 = load i64, ptr %l25, !tbaa !24
  %t831 = icmp slt i64 %t827, %t828
  %t833 = xor i1 %t831, true
  br i1 %t833, label %bb203, label %bb204
bb203:
  br label %bb208
bb204:
  br label %bb205
bb205:
  %t835 = load i64, ptr %l22, !tbaa !24
  %t836 = load i64, ptr %l26, !tbaa !24
  %t837 = load i64, ptr %l24, !tbaa !24
  %t840 = mul i64 %t836, %t837
  %t843 = add i64 %t835, %t840
  store i64 %t843, ptr %l27, !tbaa !24
  %t845 = load ptr, ptr %l0, !tbaa !29
  %t847 = getelementptr %"compiler/scope:Scoper", ptr %t845, i32 0, i32 0
  %t848 = load ptr, ptr %t847, !tbaa !29
  %t850 = getelementptr %"compiler/generic:Program", ptr %t848, i32 0, i32 0
  %t851 = load ptr, ptr %t850, !tbaa !29
  %t853 = getelementptr %"compiler/load:Loader", ptr %t851, i32 0, i32 4
  %t854 = load ptr, ptr %t853, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %t854)
  br label %bb206
bb206:
  br label %bb207
bb207:
  %t856 = load i64, ptr %l26, !tbaa !24
  %t858 = add i64 %t856, 1
  store i64 %t858, ptr %l26, !tbaa !24
  br label %bb202
bb208:
  %t860 = load ptr, ptr %l0, !tbaa !29
  %t862 = getelementptr %"compiler/scope:Scoper", ptr %t860, i32 0, i32 0
  %t863 = load ptr, ptr %t862, !tbaa !29
  %t865 = getelementptr %"compiler/generic:Program", ptr %t863, i32 0, i32 0
  %t866 = load ptr, ptr %t865, !tbaa !29
  %t868 = getelementptr %"compiler/load:Loader", ptr %t866, i32 0, i32 4
  %t869 = load ptr, ptr %t868, !tbaa !29
  %t870 = load i64, ptr %l19, !tbaa !24
  %t873 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %t869, i64 %t870)
  store i64 %t873, ptr %l428
  br label %bb209
bb209:
  br label %bb210
bb210:
  %t874 = load ptr, ptr %l0, !tbaa !29
  %t876 = getelementptr %"compiler/scope:Scoper", ptr %t874, i32 0, i32 38
  store ptr %t876, ptr %l28, !tbaa !29
  store i64 0, ptr %l29, !tbaa !24
  br label %bb211
bb211:
  %t878 = load i64, ptr %l29, !tbaa !24
  store i64 %t878, ptr %l431, !tbaa !24
  %t879 = load ptr, ptr %l28, !tbaa !29
  %t881 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t879)
  store i64 %t881, ptr %l433
  br label %bb212
bb212:
  %t882 = load i64, ptr %l431, !tbaa !24
  %t883 = load i64, ptr %l433, !tbaa !24
  %t884 = icmp slt i64 %t882, %t883
  %t886 = xor i1 %t884, true
  br i1 %t886, label %bb213, label %bb214
bb213:
  br label %bb220
bb214:
  br label %bb215
bb215:
  %t888 = load ptr, ptr %l28, !tbaa !29
  %t889 = load i64, ptr %l29, !tbaa !24
  %t892 = call %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t888, i64 %t889)
  store %"compiler/scope:rel" %t892, ptr %l438
  br label %bb216
bb216:
  %t893 = load %"compiler/scope:rel", ptr %l438
  store %"compiler/scope:rel" %t893, ptr %l30
  %t894 = load ptr, ptr %l0, !tbaa !29
  %t896 = getelementptr %"compiler/scope:Scoper", ptr %t894, i32 0, i32 6
  %t897 = load i64, ptr %l1, !tbaa !24
  %t900 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t896, i64 %t897)
  store ptr %t900, ptr %l442
  br label %bb217
bb217:
  %t901 = load ptr, ptr %l442, !tbaa !29
  %t903 = getelementptr %"compiler/scope:summary", ptr %t901, i32 0, i32 0
  %t904 = load %"compiler/scope:rel", ptr %l30
  call void @compiler_2fscope_2ekeepRel(ptr %v0, ptr %t903, %"compiler/scope:rel" %t904)
  br label %bb218
bb218:
  br label %bb219
bb219:
  %t907 = load i64, ptr %l29, !tbaa !24
  %t909 = add i64 %t907, 1
  store i64 %t909, ptr %l29, !tbaa !24
  br label %bb211
bb220:
  %t911 = load ptr, ptr %l0, !tbaa !29
  %t913 = getelementptr %"compiler/scope:Scoper", ptr %t911, i32 0, i32 6
  %t914 = load i64, ptr %l1, !tbaa !24
  %t917 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t913, i64 %t914)
  store ptr %t917, ptr %l451
  br label %bb221
bb221:
  %t918 = load ptr, ptr %l451, !tbaa !29
  store ptr %t918, ptr %l31, !tbaa !29
  %t919 = load i1, ptr %l2, !tbaa !21
  br i1 %t919, label %bb222, label %bb223
bb222:
  %t921 = load ptr, ptr %l31, !tbaa !29
  store ptr %t921, ptr %l453, !tbaa !29
  %t922 = load ptr, ptr %l0, !tbaa !29
  %t924 = getelementptr %"compiler/scope:Scoper", ptr %t922, i32 0, i32 0
  %t925 = load ptr, ptr %t924, !tbaa !29
  %t927 = getelementptr %"compiler/generic:Program", ptr %t925, i32 0, i32 0
  %t928 = load ptr, ptr %t927, !tbaa !29
  %t930 = getelementptr %"compiler/load:Loader", ptr %t928, i32 0, i32 4
  %t931 = load ptr, ptr %t930, !tbaa !29
  %t933 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %t931)
  store i64 %t933, ptr %l458
  br label %bb224
bb223:
  br label %bb225
bb224:
  %t934 = load i64, ptr %l20, !tbaa !24
  %t935 = load i64, ptr %l458, !tbaa !24
  %t937 = icmp sgt i64 %t935, %t934
  %t939 = load ptr, ptr %l453, !tbaa !29
  %t940 = getelementptr %"compiler/scope:summary", ptr %t939, i32 0, i32 18
  store i1 %t937, ptr %t940, !tbaa !21
  br label %bb225
bb225:
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t942 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteFieldRecs(ptr %v0, ptr %v0, ptr %t941, ptr %t942)
  br label %bb226
bb226:
  %t945 = load ptr, ptr %l31, !tbaa !29
  %t947 = getelementptr %"compiler/scope:summary", ptr %t945, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t947)
  br label %bb227
bb227:
  %t949 = load ptr, ptr %l0, !tbaa !29
  %t951 = getelementptr %"compiler/scope:Scoper", ptr %t949, i32 0, i32 59
  %t952 = load i1, ptr %t951, !tbaa !21
  br i1 %t952, label %bb228, label %bb229
bb228:
  %t954 = load ptr, ptr %l0, !tbaa !29
  %t956 = getelementptr %"compiler/scope:Scoper", ptr %t954, i32 0, i32 58
  store ptr %t956, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb230
bb229:
  br label %bb239
bb230:
  %t958 = load i64, ptr %l33, !tbaa !24
  store i64 %t958, ptr %l469, !tbaa !24
  %t959 = load ptr, ptr %l32, !tbaa !29
  %t961 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t959)
  store i64 %t961, ptr %l471
  br label %bb231
bb231:
  %t962 = load i64, ptr %l469, !tbaa !24
  %t963 = load i64, ptr %l471, !tbaa !24
  %t964 = icmp slt i64 %t962, %t963
  %t966 = xor i1 %t964, true
  br i1 %t966, label %bb232, label %bb233
bb232:
  br label %bb238
bb233:
  br label %bb234
bb234:
  %t968 = load ptr, ptr %l32, !tbaa !29
  %t969 = load i64, ptr %l33, !tbaa !24
  %t972 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t968, i64 %t969)
  store { i64, [2 x i64] } %t972, ptr %l476
  br label %bb235
bb235:
  %t973 = load { i64, [2 x i64] }, ptr %l476
  %t974 = load ptr, ptr %l31, !tbaa !29
  %t976 = getelementptr %"compiler/scope:summary", ptr %t974, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t976, { i64, [2 x i64] } %t973)
  br label %bb236
bb236:
  br label %bb237
bb237:
  %t980 = load i64, ptr %l33, !tbaa !24
  %t982 = add i64 %t980, 1
  store i64 %t982, ptr %l33, !tbaa !24
  br label %bb230
bb238:
  br label %bb239
bb239:
  %t984 = load ptr, ptr %l31, !tbaa !29
  store ptr %t984, ptr %l482, !tbaa !29
  %t985 = load ptr, ptr %l0, !tbaa !29
  %t987 = getelementptr %"compiler/scope:Scoper", ptr %t985, i32 0, i32 99
  %t988 = load i1, ptr %t987, !tbaa !21
  br i1 %t988, label %bb240, label %bb241
bb240:
  %t990 = load ptr, ptr %l0, !tbaa !29
  %t992 = getelementptr %"compiler/scope:Scoper", ptr %t990, i32 0, i32 98
  %t993 = load %"compiler/scope:fnRecs", ptr %t992
  store %"compiler/scope:fnRecs" %t993, ptr %l485
  br label %bb243
bb241:
  %t995 = call %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
  store %"compiler/scope:fnRecs" %t995, ptr %l488
  br label %bb242
bb242:
  %t996 = load %"compiler/scope:fnRecs", ptr %l488
  store %"compiler/scope:fnRecs" %t996, ptr %l485
  br label %bb243
bb243:
  %t998 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %l485)
  store %"compiler/scope:fnRecs" %t998, ptr %l490
  br label %bb244
bb244:
  %t999 = load ptr, ptr %l482, !tbaa !29
  %t1000 = getelementptr %"compiler/scope:summary", ptr %t999, i32 0, i32 16
  %t1001 = load %"compiler/scope:fnRecs", ptr %t1000
  store %"compiler/scope:fnRecs" %t1001, ptr %l491
  %t1002 = load %"compiler/scope:fnRecs", ptr %l490
  %t1003 = load ptr, ptr %l482, !tbaa !29
  %t1004 = getelementptr %"compiler/scope:summary", ptr %t1003, i32 0, i32 16
  store %"compiler/scope:fnRecs" %t1002, ptr %t1004
  %t1005 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e2
  br i1 %t1005, label %bb245, label %bb246
bb245:
  %t1007 = getelementptr %"compiler/scope:fnRecs", ptr %l491, i32 0, i32 2
  %t1008 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1007, i32 0, i32 0
  %t1009 = load { i64, ptr }, ptr %t1008
  %t1010 = extractvalue { i64, ptr } %t1009, 1
  %t1011 = call ptr @__olang_region_or(ptr %t1010, ptr null)
  %t1012 = icmp ne ptr %t1011, null
  %t1013 = select i1 %t1012, ptr %t1011, ptr null
  call void @__olang_region_drop(ptr %t1013)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t1007
  br label %bb246
bb246:
  %t1014 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3afnRecs_2e3
  br i1 %t1014, label %bb247, label %bb248
bb247:
  %t1016 = getelementptr %"compiler/scope:fnRecs", ptr %l491, i32 0, i32 3
  %t1017 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t1016, i32 0, i32 0
  %t1018 = load { i64, ptr }, ptr %t1017
  %t1019 = extractvalue { i64, ptr } %t1018, 1
  %t1020 = call ptr @__olang_region_or(ptr %t1019, ptr null)
  %t1021 = icmp ne ptr %t1020, null
  %t1022 = select i1 %t1021, ptr %t1020, ptr null
  call void @__olang_region_drop(ptr %t1022)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %t1016
  br label %bb248
bb248:
  %t1023 = load ptr, ptr %l31, !tbaa !29
  %t1025 = getelementptr %"compiler/scope:summary", ptr %t1023, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t1025)
  br label %bb249
bb249:
  %t1027 = load ptr, ptr %l31, !tbaa !29
  %t1029 = getelementptr %"compiler/scope:summary", ptr %t1027, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t1029)
  br label %bb250
bb250:
  store i64 0, ptr %l35, !tbaa !24
  %t1031 = load ptr, ptr %l0, !tbaa !29
  %t1033 = getelementptr %"compiler/scope:Scoper", ptr %t1031, i32 0, i32 33
  %t1034 = getelementptr %"compiler/typed:Plan", ptr %t1033, i32 0, i32 15
  %t1036 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1034)
  store i64 %t1036, ptr %l500
  br label %bb251
bb251:
  %t1037 = load i64, ptr %l500, !tbaa !24
  store i64 %t1037, ptr %l36, !tbaa !24
  store i64 1, ptr %l37, !tbaa !24
  %t1038 = load i64, ptr %l36, !tbaa !24
  %t1039 = load i64, ptr %l35, !tbaa !24
  %t1042 = icmp sgt i64 %t1038, %t1039
  br i1 %t1042, label %bb252, label %bb253
bb252:
  %t1044 = load i64, ptr %l37, !tbaa !24
  %t1046 = icmp sgt i64 %t1044, 0
  br i1 %t1046, label %bb254, label %bb255
bb253:
  store i64 0, ptr %l504, !tbaa !24
  br label %bb257
bb254:
  %t1048 = load i64, ptr %l36, !tbaa !24
  %t1049 = load i64, ptr %l35, !tbaa !24
  %t1052 = sub i64 %t1048, %t1049
  %t1053 = load i64, ptr %l37, !tbaa !24
  %t1056 = add i64 %t1052, %t1053
  %t1058 = sub i64 %t1056, 1
  %t1059 = load i64, ptr %l37, !tbaa !24
  %t1062 = sdiv i64 %t1058, %t1059
  store i64 %t1062, ptr %l507, !tbaa !24
  br label %bb256
bb255:
  store i64 0, ptr %l507, !tbaa !24
  br label %bb256
bb256:
  %t1064 = load i64, ptr %l507, !tbaa !24
  store i64 %t1064, ptr %l504, !tbaa !24
  br label %bb257
bb257:
  %t1065 = load i64, ptr %l504, !tbaa !24
  store i64 %t1065, ptr %l38, !tbaa !24
  store i64 0, ptr %l39, !tbaa !24
  br label %bb258
bb258:
  %t1066 = load i64, ptr %l39, !tbaa !24
  %t1067 = load i64, ptr %l38, !tbaa !24
  %t1070 = icmp slt i64 %t1066, %t1067
  %t1072 = xor i1 %t1070, true
  br i1 %t1072, label %bb259, label %bb260
bb259:
  br label %bb267
bb260:
  br label %bb261
bb261:
  %t1074 = load i64, ptr %l35, !tbaa !24
  %t1075 = load i64, ptr %l39, !tbaa !24
  %t1076 = load i64, ptr %l37, !tbaa !24
  %t1079 = mul i64 %t1075, %t1076
  %t1082 = add i64 %t1074, %t1079
  store i64 %t1082, ptr %l40, !tbaa !24
  %t1084 = load ptr, ptr %l31, !tbaa !29
  %t1086 = getelementptr %"compiler/scope:summary", ptr %t1084, i32 0, i32 14
  store ptr %t1086, ptr %l526, !tbaa !29
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1089 = getelementptr %"compiler/scope:Scoper", ptr %t1087, i32 0, i32 33
  %t1090 = getelementptr %"compiler/typed:Plan", ptr %t1089, i32 0, i32 15
  %t1091 = load i64, ptr %l40, !tbaa !24
  %t1094 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1090, i64 %t1091)
  store i64 %t1094, ptr %l530
  br label %bb262
bb262:
  %t1095 = load ptr, ptr %l526, !tbaa !29
  %t1096 = load i64, ptr %l530, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t1095, i64 %t1096)
  br label %bb263
bb263:
  %t1097 = load ptr, ptr %l31, !tbaa !29
  %t1099 = getelementptr %"compiler/scope:summary", ptr %t1097, i32 0, i32 15
  store ptr %t1099, ptr %l532, !tbaa !29
  %t1100 = load ptr, ptr %l0, !tbaa !29
  %t1102 = getelementptr %"compiler/scope:Scoper", ptr %t1100, i32 0, i32 33
  %t1103 = getelementptr %"compiler/typed:Plan", ptr %t1102, i32 0, i32 16
  %t1104 = load i64, ptr %l40, !tbaa !24
  %t1107 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1103, i64 %t1104)
  store i64 %t1107, ptr %l536
  br label %bb264
bb264:
  %t1108 = load ptr, ptr %l532, !tbaa !29
  %t1109 = load i64, ptr %l536, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t1108, i64 %t1109)
  br label %bb265
bb265:
  br label %bb266
bb266:
  %t1110 = load i64, ptr %l39, !tbaa !24
  %t1112 = add i64 %t1110, 1
  store i64 %t1112, ptr %l39, !tbaa !24
  br label %bb258
bb267:
  %t1114 = load ptr, ptr %l31, !tbaa !29
  %t1116 = getelementptr %"compiler/scope:summary", ptr %t1114, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t1116)
  br label %bb268
bb268:
  %t1118 = load ptr, ptr %l31, !tbaa !29
  %t1120 = getelementptr %"compiler/scope:summary", ptr %t1118, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t1120)
  br label %bb269
bb269:
  %t1122 = load ptr, ptr %l31, !tbaa !29
  %t1124 = getelementptr %"compiler/scope:summary", ptr %t1122, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t1124)
  br label %bb270
bb270:
  %t1126 = load ptr, ptr %l31, !tbaa !29
  %t1128 = getelementptr %"compiler/scope:summary", ptr %t1126, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1128)
  br label %bb271
bb271:
  store i64 0, ptr %l41, !tbaa !24
  %t1130 = load ptr, ptr %l0, !tbaa !29
  %t1132 = getelementptr %"compiler/scope:Scoper", ptr %t1130, i32 0, i32 61
  %t1134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1132)
  store i64 %t1134, ptr %l549
  br label %bb272
bb272:
  %t1135 = load i64, ptr %l549, !tbaa !24
  store i64 %t1135, ptr %l42, !tbaa !24
  store i64 1, ptr %l43, !tbaa !24
  %t1136 = load i64, ptr %l42, !tbaa !24
  %t1137 = load i64, ptr %l41, !tbaa !24
  %t1140 = icmp sgt i64 %t1136, %t1137
  br i1 %t1140, label %bb273, label %bb274
bb273:
  %t1142 = load i64, ptr %l43, !tbaa !24
  %t1144 = icmp sgt i64 %t1142, 0
  br i1 %t1144, label %bb275, label %bb276
bb274:
  store i64 0, ptr %l553, !tbaa !24
  br label %bb278
bb275:
  %t1146 = load i64, ptr %l42, !tbaa !24
  %t1147 = load i64, ptr %l41, !tbaa !24
  %t1150 = sub i64 %t1146, %t1147
  %t1151 = load i64, ptr %l43, !tbaa !24
  %t1154 = add i64 %t1150, %t1151
  %t1156 = sub i64 %t1154, 1
  %t1157 = load i64, ptr %l43, !tbaa !24
  %t1160 = sdiv i64 %t1156, %t1157
  store i64 %t1160, ptr %l556, !tbaa !24
  br label %bb277
bb276:
  store i64 0, ptr %l556, !tbaa !24
  br label %bb277
bb277:
  %t1162 = load i64, ptr %l556, !tbaa !24
  store i64 %t1162, ptr %l553, !tbaa !24
  br label %bb278
bb278:
  %t1163 = load i64, ptr %l553, !tbaa !24
  store i64 %t1163, ptr %l44, !tbaa !24
  store i64 0, ptr %l45, !tbaa !24
  br label %bb279
bb279:
  %t1164 = load i64, ptr %l45, !tbaa !24
  %t1165 = load i64, ptr %l44, !tbaa !24
  %t1168 = icmp slt i64 %t1164, %t1165
  %t1170 = xor i1 %t1168, true
  br i1 %t1170, label %bb280, label %bb281
bb280:
  br label %bb292
bb281:
  br label %bb282
bb282:
  %t1172 = load i64, ptr %l41, !tbaa !24
  %t1173 = load i64, ptr %l45, !tbaa !24
  %t1174 = load i64, ptr %l43, !tbaa !24
  %t1177 = mul i64 %t1173, %t1174
  %t1180 = add i64 %t1172, %t1177
  store i64 %t1180, ptr %l46, !tbaa !24
  %t1182 = load ptr, ptr %l31, !tbaa !29
  %t1184 = getelementptr %"compiler/scope:summary", ptr %t1182, i32 0, i32 1
  store ptr %t1184, ptr %l575, !tbaa !29
  %t1185 = load ptr, ptr %l0, !tbaa !29
  %t1187 = getelementptr %"compiler/scope:Scoper", ptr %t1185, i32 0, i32 61
  %t1188 = load i64, ptr %l46, !tbaa !24
  %t1191 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1187, i64 %t1188)
  store i1 %t1191, ptr %l579
  br label %bb283
bb283:
  %t1192 = load ptr, ptr %l575, !tbaa !29
  %t1193 = load i1, ptr %l579, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t1192, i1 %t1193)
  br label %bb284
bb284:
  %t1194 = load ptr, ptr %l31, !tbaa !29
  %t1196 = getelementptr %"compiler/scope:summary", ptr %t1194, i32 0, i32 2
  store ptr %t1196, ptr %l581, !tbaa !29
  %t1197 = load ptr, ptr %l0, !tbaa !29
  %t1199 = getelementptr %"compiler/scope:Scoper", ptr %t1197, i32 0, i32 62
  %t1200 = load i64, ptr %l46, !tbaa !24
  %t1203 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1199, i64 %t1200)
  store i1 %t1203, ptr %l585
  br label %bb285
bb285:
  %t1204 = load ptr, ptr %l581, !tbaa !29
  %t1205 = load i1, ptr %l585, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t1204, i1 %t1205)
  br label %bb286
bb286:
  %t1206 = load ptr, ptr %l31, !tbaa !29
  %t1208 = getelementptr %"compiler/scope:summary", ptr %t1206, i32 0, i32 3
  store ptr %t1208, ptr %l587, !tbaa !29
  %t1209 = load ptr, ptr %l0, !tbaa !29
  %t1211 = getelementptr %"compiler/scope:Scoper", ptr %t1209, i32 0, i32 67
  %t1212 = load i64, ptr %l46, !tbaa !24
  %t1215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t1211, i64 %t1212)
  store i64 %t1215, ptr %l591
  br label %bb287
bb287:
  %t1216 = load ptr, ptr %l587, !tbaa !29
  %t1217 = load i64, ptr %l591, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t1216, i64 %t1217)
  br label %bb288
bb288:
  %t1218 = load ptr, ptr %l31, !tbaa !29
  %t1220 = getelementptr %"compiler/scope:summary", ptr %t1218, i32 0, i32 4
  store ptr %t1220, ptr %l593, !tbaa !29
  %t1221 = load ptr, ptr %l0, !tbaa !29
  %t1223 = getelementptr %"compiler/scope:Scoper", ptr %t1221, i32 0, i32 68
  %t1224 = load i64, ptr %l46, !tbaa !24
  %t1227 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1223, i64 %t1224)
  store %"compiler/source:Span" %t1227, ptr %l597
  br label %bb289
bb289:
  %t1228 = load ptr, ptr %l593, !tbaa !29
  %t1229 = load %"compiler/source:Span", ptr %l597
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t1228, %"compiler/source:Span" %t1229)
  br label %bb290
bb290:
  br label %bb291
bb291:
  %t1230 = load i64, ptr %l45, !tbaa !24
  %t1232 = add i64 %t1230, 1
  store i64 %t1232, ptr %l45, !tbaa !24
  br label %bb279
bb292:
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1235 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomputeKeeps(ptr %v0, ptr %v0, ptr %t1234, ptr %t1235)
  br label %bb293
bb293:
  store i64 0, ptr %l47, !tbaa !24
  %t1238 = load ptr, ptr %l0, !tbaa !29
  %t1240 = getelementptr %"compiler/scope:Scoper", ptr %t1238, i32 0, i32 61
  %t1242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1240)
  store i64 %t1242, ptr %l604
  br label %bb294
bb294:
  %t1243 = load i64, ptr %l604, !tbaa !24
  store i64 %t1243, ptr %l48, !tbaa !24
  store i64 1, ptr %l49, !tbaa !24
  %t1244 = load i64, ptr %l48, !tbaa !24
  %t1245 = load i64, ptr %l47, !tbaa !24
  %t1248 = icmp sgt i64 %t1244, %t1245
  br i1 %t1248, label %bb295, label %bb296
bb295:
  %t1250 = load i64, ptr %l49, !tbaa !24
  %t1252 = icmp sgt i64 %t1250, 0
  br i1 %t1252, label %bb297, label %bb298
bb296:
  store i64 0, ptr %l608, !tbaa !24
  br label %bb300
bb297:
  %t1254 = load i64, ptr %l48, !tbaa !24
  %t1255 = load i64, ptr %l47, !tbaa !24
  %t1258 = sub i64 %t1254, %t1255
  %t1259 = load i64, ptr %l49, !tbaa !24
  %t1262 = add i64 %t1258, %t1259
  %t1264 = sub i64 %t1262, 1
  %t1265 = load i64, ptr %l49, !tbaa !24
  %t1268 = sdiv i64 %t1264, %t1265
  store i64 %t1268, ptr %l611, !tbaa !24
  br label %bb299
bb298:
  store i64 0, ptr %l611, !tbaa !24
  br label %bb299
bb299:
  %t1270 = load i64, ptr %l611, !tbaa !24
  store i64 %t1270, ptr %l608, !tbaa !24
  br label %bb300
bb300:
  %t1271 = load i64, ptr %l608, !tbaa !24
  store i64 %t1271, ptr %l50, !tbaa !24
  store i64 0, ptr %l51, !tbaa !24
  br label %bb301
bb301:
  %t1272 = load i64, ptr %l51, !tbaa !24
  %t1273 = load i64, ptr %l50, !tbaa !24
  %t1276 = icmp slt i64 %t1272, %t1273
  %t1278 = xor i1 %t1276, true
  br i1 %t1278, label %bb302, label %bb303
bb302:
  br label %bb310
bb303:
  br label %bb304
bb304:
  %t1280 = load i64, ptr %l47, !tbaa !24
  %t1281 = load i64, ptr %l51, !tbaa !24
  %t1282 = load i64, ptr %l49, !tbaa !24
  %t1285 = mul i64 %t1281, %t1282
  %t1288 = add i64 %t1280, %t1285
  store i64 %t1288, ptr %l52, !tbaa !24
  %t1290 = load i64, ptr %l52, !tbaa !24
  %t1291 = load ptr, ptr %l0, !tbaa !29
  %t1293 = getelementptr %"compiler/scope:Scoper", ptr %t1291, i32 0, i32 33
  %t1294 = getelementptr %"compiler/typed:Plan", ptr %t1293, i32 0, i32 2
  %t1295 = load { i64, ptr }, ptr %t1294, !tbaa !27
  %t1297 = extractvalue { i64, ptr } %t1295, 0
  %t1300 = icmp slt i64 %t1290, %t1297
  br i1 %t1300, label %bb305, label %bb306
bb305:
  %t1302 = load ptr, ptr %l0, !tbaa !29
  %t1304 = getelementptr %"compiler/scope:Scoper", ptr %t1302, i32 0, i32 33
  %t1305 = getelementptr %"compiler/typed:Plan", ptr %t1304, i32 0, i32 2
  %t1306 = load { i64, ptr }, ptr %t1305, !tbaa !27
  store { i64, ptr } %t1306, ptr %l635, !tbaa !27
  %t1307 = load i64, ptr %l52, !tbaa !24
  store i64 %t1307, ptr %l636, !tbaa !24
  %t1308 = load ptr, ptr %l0, !tbaa !29
  %t1310 = getelementptr %"compiler/scope:Scoper", ptr %t1308, i32 0, i32 61
  %t1311 = load i64, ptr %l52, !tbaa !24
  %t1314 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1310, i64 %t1311)
  store i1 %t1314, ptr %l640
  br label %bb307
bb306:
  br label %bb308
bb307:
  %t1315 = load i1, ptr %l640, !tbaa !21
  %t1316 = load i64, ptr %l636, !tbaa !24
  %t1317 = getelementptr { i64, ptr }, ptr %l635, i32 0, i32 1
  %t1318 = load ptr, ptr %t1317, !tbaa !27
  %t1319 = getelementptr i1, ptr %t1318, i64 %t1316
  store i1 %t1315, ptr %t1319, !tbaa !31
  br label %bb308
bb308:
  br label %bb309
bb309:
  %t1320 = load i64, ptr %l51, !tbaa !24
  %t1322 = add i64 %t1320, 1
  store i64 %t1322, ptr %l51, !tbaa !24
  br label %bb301
bb310:
  %t1324 = load i1, ptr %l2, !tbaa !21
  br i1 %t1324, label %bb311, label %bb312
bb311:
  %t1326 = load ptr, ptr %l0, !tbaa !29
  %t1328 = getelementptr %"compiler/scope:Scoper", ptr %t1326, i32 0, i32 2
  store ptr %t1328, ptr %l645, !tbaa !29
  %t1329 = load i64, ptr %l1, !tbaa !24
  store i64 %t1329, ptr %l646, !tbaa !24
  %t1330 = load ptr, ptr %l0, !tbaa !29
  %t1332 = getelementptr %"compiler/scope:Scoper", ptr %t1330, i32 0, i32 33
  call void @llvm.memmove.p0.p0.i64(ptr %l648, ptr %t1332, i64 536, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t1333, ptr %v0, ptr %l648)
  call void @llvm.memmove.p0.p0.i64(ptr %l650, ptr %t1333, i64 536, i1 false)
  br label %bb313
bb312:
  br label %bb315
bb313:
  %t1335 = load ptr, ptr %l645, !tbaa !29
  %t1336 = load i64, ptr %l646, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t1337, ptr %l650, i64 536, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v0, ptr %t1335, i64 %t1336, ptr %t1337)
  br label %bb314
bb314:
  br label %bb315
bb315:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepOne(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l24 = alloca %"compiler/typed:Local"
  %l26 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sge i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/scope:Scoper", ptr %t6, i32 0, i32 107
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l8
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  store i1 %t13, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l4, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %t16, i64 %t17)
  store i1 %t20, ptr %l13
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t21 = load i1, ptr %l13, !tbaa !21
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l10, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l15, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 26
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb11, label %bb12
bb10:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb16
bb11:
  call void @__olang_check_failed(ptr @olang_loc_112580bef49b4694_3ee0d174ca2ee048)
  unreachable
bb12:
  br label %bb13
bb13:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/scope:Scoper", ptr %t31, i32 0, i32 26
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t37 = getelementptr %"compiler/typed:Body", ptr %t34, i32 0, i32 7
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t37, i64 %t38)
  store %"compiler/typed:Local" %t41, ptr %l24
  br label %bb14
bb14:
  %t42 = getelementptr %"compiler/typed:Local", ptr %l24, i32 0, i32 2
  %t43 = load i32, ptr %t42, !tbaa !23
  %t44 = load ptr, ptr %l15, !tbaa !29
  %t46 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t44, i32 %t43)
  store i1 %t46, ptr %l26
  br label %bb15
bb15:
  %t47 = load i1, ptr %l26, !tbaa !21
  store i1 %t47, ptr %l14, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l14, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 107
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t51, i64 %t52, i1 true)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l31 = alloca { i64, ptr }
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca { i64, ptr }
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l95 = alloca ptr
  %l97 = alloca i64
  %l100 = alloca ptr
  %l101 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l119 = alloca ptr
  %l120 = alloca i1
  %l136 = alloca { i64, ptr }
  %l144 = alloca ptr
  %l145 = alloca i1
  %l157 = alloca ptr
  %l158 = alloca i1
  %l170 = alloca { i64, ptr }
  %l178 = alloca ptr
  %l179 = alloca i1
  %l186 = alloca ptr
  %l189 = alloca i64
  %l201 = alloca ptr
  %l202 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca i1
  %l234 = alloca { i64, ptr }
  %l246 = alloca ptr
  %l247 = alloca i1
  %l260 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l289 = alloca ptr
  %l290 = alloca i1
  %l307 = alloca { i64, ptr }
  %l321 = alloca { i64, ptr }
  %l332 = alloca ptr
  %l333 = alloca i1
  %l338 = alloca ptr
  %l339 = alloca i1
  %l356 = alloca { i64, ptr }
  %l366 = alloca ptr
  %l367 = alloca i1
  %l375 = alloca ptr
  %l376 = alloca i1
  %l389 = alloca { i64, ptr }
  %l392 = alloca ptr
  %l393 = alloca i1
  %l403 = alloca ptr
  %l404 = alloca i1
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
  store ptr %t5, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t6 = load ptr, ptr %l62, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l62, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l63, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l63, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [5 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t16, i32 0, i32 2
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l3, !tbaa !29
  br label %bb12
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t21 = load ptr, ptr %l68, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l68, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 18}
  %t27 = icmp eq i64 %t25, 4
  store i1 %t27, ptr %l69, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l69, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [5 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb29
bb12:
  %t35 = load ptr, ptr %l3, !tbaa !29
  store ptr %t35, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t36 = load ptr, ptr %l74, !tbaa !29
  %t37 = icmp ne ptr %t36, null
  br i1 %t37, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l74, !tbaa !29
  %t40 = load i64, ptr %t39, !range !{i64 0, i64 8}
  %t42 = icmp eq i64 %t40, 0
  store i1 %t42, ptr %l75, !tbaa !21
  br label %bb14
bb14:
  %t43 = load i1, ptr %l75, !tbaa !21
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l3, !tbaa !29
  %t46 = getelementptr { i64, [4 x i64] }, ptr %t44, i32 0, i32 1
  %t47 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t46, i32 0, i32 2
  %t48 = load i32, ptr %t47
  store i32 %t48, ptr %l4, !tbaa !23
  br label %bb17
bb16:
  br label %bb22
bb17:
  %t50 = load i1, ptr %l2, !tbaa !21
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb18, label %bb19
bb18:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l4, !tbaa !23
  %t57 = sext i32 %t55 to i64
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t54, i64 %t57)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_8b1069152ab8ab4d_46bfa78d80464041)
  unreachable
bb27:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  br label %bb28
bb28:
  br label %bb236
bb29:
  %t64 = load ptr, ptr %l1, !tbaa !29
  store ptr %t64, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t65 = load ptr, ptr %l87, !tbaa !29
  %t66 = icmp ne ptr %t65, null
  br i1 %t66, label %bb30, label %bb31
bb30:
  %t68 = load ptr, ptr %l87, !tbaa !29
  %t69 = load i64, ptr %t68, !range !{i64 0, i64 18}
  %t71 = icmp eq i64 %t69, 3
  store i1 %t71, ptr %l88, !tbaa !21
  br label %bb31
bb31:
  %t72 = load i1, ptr %l88, !tbaa !21
  br i1 %t72, label %bb32, label %bb33
bb32:
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t73, i32 0, i32 1
  %t76 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t75, i32 0, i32 2
  %t77 = load ptr, ptr %t76
  store ptr %t77, ptr %l5, !tbaa !29
  br label %bb34
bb33:
  br label %bb41
bb34:
  %t79 = load i1, ptr %l2, !tbaa !21
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb35, label %bb36
bb35:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l95, !tbaa !29
  %t84 = load ptr, ptr %l5, !tbaa !29
  %t86 = call i64 @compiler_2fscope_2eregionRoot(ptr %v1, ptr %t84)
  store i64 %t86, ptr %l97
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t87 = load ptr, ptr %l95, !tbaa !29
  %t88 = load i64, ptr %l97, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t87, i64 %t88)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t89, ptr %t90)
  br label %bb40
bb40:
  br label %bb236
bb41:
  %t93 = load ptr, ptr %l1, !tbaa !29
  store ptr %t93, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t94 = load ptr, ptr %l100, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb42, label %bb43
bb42:
  %t97 = load ptr, ptr %l100, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 5
  store i1 %t100, ptr %l101, !tbaa !21
  br label %bb43
bb43:
  %t101 = load i1, ptr %l101, !tbaa !21
  br i1 %t101, label %bb44, label %bb45
bb44:
  %t102 = load ptr, ptr %l1, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 2
  %t106 = load ptr, ptr %t105
  store ptr %t106, ptr %l6, !tbaa !29
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l6, !tbaa !29
  %t111 = getelementptr %"compiler/typed:Promote", ptr %t109, i32 0, i32 0
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t108, ptr %t112, i1 %t114)
  br label %bb47
bb47:
  br label %bb236
bb48:
  %t118 = load ptr, ptr %l1, !tbaa !29
  store ptr %t118, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t119 = load ptr, ptr %l111, !tbaa !29
  %t120 = icmp ne ptr %t119, null
  br i1 %t120, label %bb49, label %bb50
bb49:
  %t122 = load ptr, ptr %l111, !tbaa !29
  %t123 = load i64, ptr %t122, !range !{i64 0, i64 18}
  %t125 = icmp eq i64 %t123, 6
  store i1 %t125, ptr %l112, !tbaa !21
  br label %bb50
bb50:
  %t126 = load i1, ptr %l112, !tbaa !21
  br i1 %t126, label %bb51, label %bb52
bb51:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr { i64, [5 x i64] }, ptr %t127, i32 0, i32 1
  %t130 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t129, i32 0, i32 2
  %t131 = load ptr, ptr %t130
  store ptr %t131, ptr %l7, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwCall(ptr %v0, ptr %v1, ptr %t133, ptr %t134)
  br label %bb54
bb54:
  br label %bb236
bb55:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t138 = load ptr, ptr %l119, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb56, label %bb57
bb56:
  %t141 = load ptr, ptr %l119, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 7
  store i1 %t144, ptr %l120, !tbaa !21
  br label %bb57
bb57:
  %t145 = load i1, ptr %l120, !tbaa !21
  br i1 %t145, label %bb58, label %bb59
bb58:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l8, !tbaa !29
  br label %bb60
bb59:
  br label %bb69
bb60:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load ptr, ptr %l8, !tbaa !29
  %t155 = getelementptr %"compiler/typed:Make", ptr %t153, i32 0, i32 3
  %t156 = load ptr, ptr %t155, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t152, ptr %t156, i1 true)
  br label %bb61
bb61:
  %t159 = load ptr, ptr %l8, !tbaa !29
  %t161 = getelementptr %"compiler/typed:Make", ptr %t159, i32 0, i32 2
  %t162 = load { i64, ptr }, ptr %t161, !tbaa !27
  store { i64, ptr } %t162, ptr %l9, !tbaa !27
  store i64 0, ptr %l10, !tbaa !24
  %t164 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t166 = extractvalue { i64, ptr } %t164, 0
  store i64 %t166, ptr %l11, !tbaa !24
  br label %bb62
bb62:
  %t168 = load i64, ptr %l10, !tbaa !24
  %t169 = load i64, ptr %l11, !tbaa !24
  %t172 = icmp slt i64 %t168, %t169
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb63, label %bb64
bb63:
  br label %bb68
bb64:
  br label %bb65
bb65:
  %t176 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t176, ptr %l136, !tbaa !27
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t180 = load ptr, ptr %t179, !tbaa !27
  %t181 = getelementptr ptr, ptr %t180, i64 %t177
  %t182 = load ptr, ptr %t181, !tbaa !39
  %t184 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t184, ptr %t182, i1 false)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t189 = load i64, ptr %l10, !tbaa !24
  %t191 = add i64 %t189, 1
  store i64 %t191, ptr %l10, !tbaa !24
  br label %bb62
bb68:
  br label %bb236
bb69:
  %t193 = load ptr, ptr %l1, !tbaa !29
  store ptr %t193, ptr %l144, !tbaa !29
  store i1 false, ptr %l145, !tbaa !21
  %t194 = load ptr, ptr %l144, !tbaa !29
  %t195 = icmp ne ptr %t194, null
  br i1 %t195, label %bb70, label %bb71
bb70:
  %t197 = load ptr, ptr %l144, !tbaa !29
  %t198 = load i64, ptr %t197, !range !{i64 0, i64 18}
  %t200 = icmp eq i64 %t198, 8
  store i1 %t200, ptr %l145, !tbaa !21
  br label %bb71
bb71:
  %t201 = load i1, ptr %l145, !tbaa !21
  br i1 %t201, label %bb72, label %bb73
bb72:
  %t202 = load ptr, ptr %l1, !tbaa !29
  %t204 = getelementptr { i64, [5 x i64] }, ptr %t202, i32 0, i32 1
  %t205 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t204, i32 0, i32 2
  %t206 = load ptr, ptr %t205
  store ptr %t206, ptr %l13, !tbaa !29
  br label %bb74
bb73:
  br label %bb77
bb74:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load ptr, ptr %l13, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Collect", ptr %t209, i32 0, i32 0
  %t212 = load ptr, ptr %t211, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t208, ptr %t212, i1 true)
  br label %bb75
bb75:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load ptr, ptr %l13, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Collect", ptr %t216, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t215, ptr %t219)
  br label %bb76
bb76:
  br label %bb236
bb77:
  %t223 = load ptr, ptr %l1, !tbaa !29
  store ptr %t223, ptr %l157, !tbaa !29
  store i1 false, ptr %l158, !tbaa !21
  %t224 = load ptr, ptr %l157, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb78, label %bb79
bb78:
  %t227 = load ptr, ptr %l157, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 18}
  %t230 = icmp eq i64 %t228, 9
  store i1 %t230, ptr %l158, !tbaa !21
  br label %bb79
bb79:
  %t231 = load i1, ptr %l158, !tbaa !21
  br i1 %t231, label %bb80, label %bb81
bb80:
  %t232 = load ptr, ptr %l1, !tbaa !29
  %t234 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t234, i32 0, i32 4
  %t236 = load { i64, ptr }, ptr %t235
  store { i64, ptr } %t236, ptr %l14, !tbaa !27
  br label %bb82
bb81:
  br label %bb90
bb82:
  %t238 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t238, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t240 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t242 = extractvalue { i64, ptr } %t240, 0
  store i64 %t242, ptr %l17, !tbaa !24
  br label %bb83
bb83:
  %t244 = load i64, ptr %l16, !tbaa !24
  %t245 = load i64, ptr %l17, !tbaa !24
  %t248 = icmp slt i64 %t244, %t245
  %t250 = xor i1 %t248, true
  br i1 %t250, label %bb84, label %bb85
bb84:
  br label %bb89
bb85:
  br label %bb86
bb86:
  %t252 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t252, ptr %l170, !tbaa !27
  %t253 = load i64, ptr %l16, !tbaa !24
  %t255 = getelementptr { i64, ptr }, ptr %l170, i32 0, i32 1
  %t256 = load ptr, ptr %t255, !tbaa !27
  %t257 = getelementptr ptr, ptr %t256, i64 %t253
  %t258 = load ptr, ptr %t257, !tbaa !39
  %t260 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t260, ptr %t258, i1 true)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t265 = load i64, ptr %l16, !tbaa !24
  %t267 = add i64 %t265, 1
  store i64 %t267, ptr %l16, !tbaa !24
  br label %bb83
bb89:
  br label %bb236
bb90:
  %t269 = load ptr, ptr %l1, !tbaa !29
  store ptr %t269, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t270 = load ptr, ptr %l178, !tbaa !29
  %t271 = icmp ne ptr %t270, null
  br i1 %t271, label %bb91, label %bb92
bb91:
  %t273 = load ptr, ptr %l178, !tbaa !29
  %t274 = load i64, ptr %t273, !range !{i64 0, i64 18}
  %t276 = icmp eq i64 %t274, 10
  store i1 %t276, ptr %l179, !tbaa !21
  br label %bb92
bb92:
  %t277 = load i1, ptr %l179, !tbaa !21
  br i1 %t277, label %bb93, label %bb94
bb93:
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t280 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 1
  %t281 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t280, i32 0, i32 2
  %t282 = load ptr, ptr %t281
  store ptr %t282, ptr %l19, !tbaa !29
  br label %bb95
bb94:
  br label %bb104
bb95:
  %t284 = load i1, ptr %l2, !tbaa !21
  %t286 = xor i1 %t284, true
  br i1 %t286, label %bb96, label %bb97
bb96:
  %t288 = load ptr, ptr %l0, !tbaa !29
  store ptr %t288, ptr %l186, !tbaa !29
  %t289 = load ptr, ptr %l19, !tbaa !29
  %t291 = getelementptr %"compiler/typed:Slice", ptr %t289, i32 0, i32 0
  %t292 = load ptr, ptr %t291, !tbaa !29
  %t294 = call i64 @compiler_2fscope_2eregionRoot(ptr %v1, ptr %t292)
  store i64 %t294, ptr %l189
  br label %bb98
bb97:
  br label %bb100
bb98:
  %t295 = load ptr, ptr %l186, !tbaa !29
  %t296 = load i64, ptr %l189, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %t295, i64 %t296)
  br label %bb99
bb99:
  br label %bb100
bb100:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t298 = load ptr, ptr %l19, !tbaa !29
  %t300 = getelementptr %"compiler/typed:Slice", ptr %t298, i32 0, i32 0
  %t301 = load ptr, ptr %t300, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %t297, ptr %t301)
  br label %bb101
bb101:
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load ptr, ptr %l19, !tbaa !29
  %t307 = getelementptr %"compiler/typed:Slice", ptr %t305, i32 0, i32 1
  %t308 = load ptr, ptr %t307, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t304, ptr %t308, i1 true)
  br label %bb102
bb102:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load ptr, ptr %l19, !tbaa !29
  %t315 = getelementptr %"compiler/typed:Slice", ptr %t313, i32 0, i32 2
  %t316 = load ptr, ptr %t315, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t312, ptr %t316, i1 true)
  br label %bb103
bb103:
  br label %bb236
bb104:
  %t320 = load ptr, ptr %l1, !tbaa !29
  store ptr %t320, ptr %l201, !tbaa !29
  store i1 false, ptr %l202, !tbaa !21
  %t321 = load ptr, ptr %l201, !tbaa !29
  %t322 = icmp ne ptr %t321, null
  br i1 %t322, label %bb105, label %bb106
bb105:
  %t324 = load ptr, ptr %l201, !tbaa !29
  %t325 = load i64, ptr %t324, !range !{i64 0, i64 18}
  %t327 = icmp eq i64 %t325, 11
  store i1 %t327, ptr %l202, !tbaa !21
  br label %bb106
bb106:
  %t328 = load i1, ptr %l202, !tbaa !21
  br i1 %t328, label %bb107, label %bb108
bb107:
  %t329 = load ptr, ptr %l1, !tbaa !29
  %t331 = getelementptr { i64, [5 x i64] }, ptr %t329, i32 0, i32 1
  %t332 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t331, i32 0, i32 2
  %t333 = load ptr, ptr %t332
  store ptr %t333, ptr %l20, !tbaa !29
  br label %bb109
bb108:
  br label %bb113
bb109:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load ptr, ptr %l20, !tbaa !29
  %t338 = getelementptr %"compiler/typed:Cond", ptr %t336, i32 0, i32 0
  %t339 = load ptr, ptr %t338, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t335, ptr %t339, i1 true)
  br label %bb110
bb110:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t344 = load ptr, ptr %l20, !tbaa !29
  %t346 = getelementptr %"compiler/typed:Cond", ptr %t344, i32 0, i32 1
  %t347 = load ptr, ptr %t346, !tbaa !29
  %t348 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t343, ptr %t347, i1 %t348)
  br label %bb111
bb111:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load ptr, ptr %l20, !tbaa !29
  %t355 = getelementptr %"compiler/typed:Cond", ptr %t353, i32 0, i32 2
  %t356 = load ptr, ptr %t355, !tbaa !29
  %t358 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t352, ptr %t356, i1 %t358)
  br label %bb112
bb112:
  br label %bb236
bb113:
  %t362 = load ptr, ptr %l1, !tbaa !29
  store ptr %t362, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t363 = load ptr, ptr %l220, !tbaa !29
  %t364 = icmp ne ptr %t363, null
  br i1 %t364, label %bb114, label %bb115
bb114:
  %t366 = load ptr, ptr %l220, !tbaa !29
  %t367 = load i64, ptr %t366, !range !{i64 0, i64 18}
  %t369 = icmp eq i64 %t367, 12
  store i1 %t369, ptr %l221, !tbaa !21
  br label %bb115
bb115:
  %t370 = load i1, ptr %l221, !tbaa !21
  br i1 %t370, label %bb116, label %bb117
bb116:
  %t371 = load ptr, ptr %l1, !tbaa !29
  %t373 = getelementptr { i64, [5 x i64] }, ptr %t371, i32 0, i32 1
  %t374 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t373, i32 0, i32 2
  %t375 = load ptr, ptr %t374
  store ptr %t375, ptr %l21, !tbaa !29
  br label %bb118
bb117:
  br label %bb127
bb118:
  %t377 = load ptr, ptr %l21, !tbaa !29
  %t379 = getelementptr %"compiler/typed:Seq", ptr %t377, i32 0, i32 0
  %t380 = load { i64, ptr }, ptr %t379, !tbaa !27
  store { i64, ptr } %t380, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t382 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t384 = extractvalue { i64, ptr } %t382, 0
  store i64 %t384, ptr %l24, !tbaa !24
  br label %bb119
bb119:
  %t386 = load i64, ptr %l23, !tbaa !24
  %t387 = load i64, ptr %l24, !tbaa !24
  %t390 = icmp slt i64 %t386, %t387
  %t392 = xor i1 %t390, true
  br i1 %t392, label %bb120, label %bb121
bb120:
  br label %bb125
bb121:
  br label %bb122
bb122:
  %t394 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t394, ptr %l234, !tbaa !27
  %t395 = load i64, ptr %l23, !tbaa !24
  %t397 = getelementptr { i64, ptr }, ptr %l234, i32 0, i32 1
  %t398 = load ptr, ptr %t397, !tbaa !27
  %t399 = getelementptr ptr, ptr %t398, i64 %t395
  %t400 = load ptr, ptr %t399, !tbaa !39
  %t402 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %t402, ptr %t400)
  br label %bb123
bb123:
  br label %bb124
bb124:
  %t407 = load i64, ptr %l23, !tbaa !24
  %t409 = add i64 %t407, 1
  store i64 %t409, ptr %l23, !tbaa !24
  br label %bb119
bb125:
  %t411 = load ptr, ptr %l0, !tbaa !29
  %t412 = load ptr, ptr %l21, !tbaa !29
  %t414 = getelementptr %"compiler/typed:Seq", ptr %t412, i32 0, i32 1
  %t415 = load ptr, ptr %t414, !tbaa !29
  %t416 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t411, ptr %t415, i1 %t416)
  br label %bb126
bb126:
  br label %bb236
bb127:
  %t420 = load ptr, ptr %l1, !tbaa !29
  store ptr %t420, ptr %l246, !tbaa !29
  store i1 false, ptr %l247, !tbaa !21
  %t421 = load ptr, ptr %l246, !tbaa !29
  %t422 = icmp ne ptr %t421, null
  br i1 %t422, label %bb128, label %bb129
bb128:
  %t424 = load ptr, ptr %l246, !tbaa !29
  %t425 = load i64, ptr %t424, !range !{i64 0, i64 18}
  %t427 = icmp eq i64 %t425, 13
  store i1 %t427, ptr %l247, !tbaa !21
  br label %bb129
bb129:
  %t428 = load i1, ptr %l247, !tbaa !21
  br i1 %t428, label %bb130, label %bb131
bb130:
  %t429 = load ptr, ptr %l1, !tbaa !29
  %t431 = getelementptr { i64, [5 x i64] }, ptr %t429, i32 0, i32 1
  %t432 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t431, i32 0, i32 2
  %t433 = load ptr, ptr %t432
  store ptr %t433, ptr %l26, !tbaa !29
  br label %bb132
bb131:
  br label %bb148
bb132:
  %t435 = load ptr, ptr %l26, !tbaa !29
  %t437 = getelementptr %"compiler/typed:Match", ptr %t435, i32 0, i32 0
  %t438 = load { i64, ptr }, ptr %t437, !tbaa !27
  store { i64, ptr } %t438, ptr %l27, !tbaa !27
  store i64 0, ptr %l28, !tbaa !24
  %t440 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t442 = extractvalue { i64, ptr } %t440, 0
  store i64 %t442, ptr %l29, !tbaa !24
  br label %bb133
bb133:
  %t444 = load i64, ptr %l28, !tbaa !24
  %t445 = load i64, ptr %l29, !tbaa !24
  %t448 = icmp slt i64 %t444, %t445
  %t450 = xor i1 %t448, true
  br i1 %t450, label %bb134, label %bb135
bb134:
  br label %bb139
bb135:
  br label %bb136
bb136:
  %t452 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t452, ptr %l260, !tbaa !27
  %t453 = load i64, ptr %l28, !tbaa !24
  %t455 = getelementptr { i64, ptr }, ptr %l260, i32 0, i32 1
  %t456 = load ptr, ptr %t455, !tbaa !27
  %t457 = getelementptr ptr, ptr %t456, i64 %t453
  %t458 = load ptr, ptr %t457, !tbaa !39
  %t460 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %t460, ptr %t458)
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t465 = load i64, ptr %l28, !tbaa !24
  %t467 = add i64 %t465, 1
  store i64 %t467, ptr %l28, !tbaa !24
  br label %bb133
bb139:
  %t469 = load ptr, ptr %l26, !tbaa !29
  %t471 = getelementptr %"compiler/typed:Match", ptr %t469, i32 0, i32 1
  %t472 = load { i64, ptr }, ptr %t471, !tbaa !27
  store { i64, ptr } %t472, ptr %l31, !tbaa !27
  store i64 0, ptr %l32, !tbaa !24
  %t474 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t476 = extractvalue { i64, ptr } %t474, 0
  store i64 %t476, ptr %l33, !tbaa !24
  br label %bb140
bb140:
  %t478 = load i64, ptr %l32, !tbaa !24
  %t479 = load i64, ptr %l33, !tbaa !24
  %t482 = icmp slt i64 %t478, %t479
  %t484 = xor i1 %t482, true
  br i1 %t484, label %bb141, label %bb142
bb141:
  br label %bb146
bb142:
  br label %bb143
bb143:
  %t486 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t486, ptr %l276, !tbaa !27
  %t487 = load i64, ptr %l32, !tbaa !24
  %t489 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !27
  %t491 = getelementptr ptr, ptr %t490, i64 %t487
  %t492 = load ptr, ptr %t491, !tbaa !39
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t497 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwArm(ptr %v0, ptr %v1, ptr %t494, ptr %t492, i1 %t497)
  br label %bb144
bb144:
  br label %bb145
bb145:
  %t501 = load i64, ptr %l32, !tbaa !24
  %t503 = add i64 %t501, 1
  store i64 %t503, ptr %l32, !tbaa !24
  br label %bb140
bb146:
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t506 = load ptr, ptr %l26, !tbaa !29
  %t508 = getelementptr %"compiler/typed:Match", ptr %t506, i32 0, i32 2
  %t509 = load ptr, ptr %t508, !tbaa !29
  %t510 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwArm(ptr %v0, ptr %v1, ptr %t505, ptr %t509, i1 %t510)
  br label %bb147
bb147:
  br label %bb236
bb148:
  %t514 = load ptr, ptr %l1, !tbaa !29
  store ptr %t514, ptr %l289, !tbaa !29
  store i1 false, ptr %l290, !tbaa !21
  %t515 = load ptr, ptr %l289, !tbaa !29
  %t516 = icmp ne ptr %t515, null
  br i1 %t516, label %bb149, label %bb150
bb149:
  %t518 = load ptr, ptr %l289, !tbaa !29
  %t519 = load i64, ptr %t518, !range !{i64 0, i64 18}
  %t521 = icmp eq i64 %t519, 14
  store i1 %t521, ptr %l290, !tbaa !21
  br label %bb150
bb150:
  %t522 = load i1, ptr %l290, !tbaa !21
  br i1 %t522, label %bb151, label %bb152
bb151:
  %t523 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr { i64, [5 x i64] }, ptr %t523, i32 0, i32 1
  %t526 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t525, i32 0, i32 2
  %t527 = load ptr, ptr %t526
  store ptr %t527, ptr %l35, !tbaa !29
  br label %bb153
bb152:
  br label %bb169
bb153:
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load ptr, ptr %l35, !tbaa !29
  %t532 = getelementptr %"compiler/typed:Try", ptr %t530, i32 0, i32 0
  %t533 = load ptr, ptr %t532, !tbaa !29
  %t534 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t529, ptr %t533, i1 %t534)
  br label %bb154
bb154:
  %t538 = load ptr, ptr %l35, !tbaa !29
  %t540 = getelementptr %"compiler/typed:Try", ptr %t538, i32 0, i32 1
  %t541 = load { i64, ptr }, ptr %t540, !tbaa !27
  store { i64, ptr } %t541, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t543 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t545 = extractvalue { i64, ptr } %t543, 0
  store i64 %t545, ptr %l38, !tbaa !24
  br label %bb155
bb155:
  %t547 = load i64, ptr %l37, !tbaa !24
  %t548 = load i64, ptr %l38, !tbaa !24
  %t551 = icmp slt i64 %t547, %t548
  %t553 = xor i1 %t551, true
  br i1 %t553, label %bb156, label %bb157
bb156:
  br label %bb168
bb157:
  br label %bb158
bb158:
  %t555 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t555, ptr %l307, !tbaa !27
  %t556 = load i64, ptr %l37, !tbaa !24
  %t558 = getelementptr { i64, ptr }, ptr %l307, i32 0, i32 1
  %t559 = load ptr, ptr %t558, !tbaa !27
  %t560 = getelementptr ptr, ptr %t559, i64 %t556
  %t561 = load ptr, ptr %t560, !tbaa !39
  store ptr %t561, ptr %l39, !tbaa !29
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load ptr, ptr %l39, !tbaa !29
  %t566 = getelementptr %"compiler/typed:Clause", ptr %t564, i32 0, i32 3
  %t567 = load ptr, ptr %t566, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %t563, ptr %t567)
  br label %bb159
bb159:
  %t570 = load ptr, ptr %l39, !tbaa !29
  %t572 = getelementptr %"compiler/typed:Clause", ptr %t570, i32 0, i32 4
  %t573 = load { i64, ptr }, ptr %t572, !tbaa !27
  store { i64, ptr } %t573, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t575 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t577 = extractvalue { i64, ptr } %t575, 0
  store i64 %t577, ptr %l42, !tbaa !24
  br label %bb160
bb160:
  %t579 = load i64, ptr %l41, !tbaa !24
  %t580 = load i64, ptr %l42, !tbaa !24
  %t583 = icmp slt i64 %t579, %t580
  %t585 = xor i1 %t583, true
  br i1 %t585, label %bb161, label %bb162
bb161:
  br label %bb166
bb162:
  br label %bb163
bb163:
  %t587 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t587, ptr %l321, !tbaa !27
  %t588 = load i64, ptr %l41, !tbaa !24
  %t590 = getelementptr { i64, ptr }, ptr %l321, i32 0, i32 1
  %t591 = load ptr, ptr %t590, !tbaa !27
  %t592 = getelementptr ptr, ptr %t591, i64 %t588
  %t593 = load ptr, ptr %t592, !tbaa !39
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t598 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t595, ptr %t593, i1 %t598)
  br label %bb164
bb164:
  br label %bb165
bb165:
  %t602 = load i64, ptr %l41, !tbaa !24
  %t604 = add i64 %t602, 1
  store i64 %t604, ptr %l41, !tbaa !24
  br label %bb160
bb166:
  br label %bb167
bb167:
  %t606 = load i64, ptr %l37, !tbaa !24
  %t608 = add i64 %t606, 1
  store i64 %t608, ptr %l37, !tbaa !24
  br label %bb155
bb168:
  br label %bb236
bb169:
  %t610 = load ptr, ptr %l1, !tbaa !29
  store ptr %t610, ptr %l332, !tbaa !29
  store i1 false, ptr %l333, !tbaa !21
  %t611 = load ptr, ptr %l332, !tbaa !29
  %t612 = icmp ne ptr %t611, null
  br i1 %t612, label %bb170, label %bb171
bb170:
  %t614 = load ptr, ptr %l332, !tbaa !29
  %t615 = load i64, ptr %t614, !range !{i64 0, i64 18}
  %t617 = icmp eq i64 %t615, 15
  store i1 %t617, ptr %l333, !tbaa !21
  br label %bb171
bb171:
  %t618 = load i1, ptr %l333, !tbaa !21
  br i1 %t618, label %bb172, label %bb173
bb172:
  %t619 = load ptr, ptr %l1, !tbaa !29
  %t621 = getelementptr { i64, [5 x i64] }, ptr %t619, i32 0, i32 1
  %t622 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t621, i32 0, i32 2
  %t623 = load ptr, ptr %t622
  store ptr %t623, ptr %l44, !tbaa !29
  br label %bb174
bb173:
  br label %bb200
bb174:
  %t625 = load ptr, ptr %l44, !tbaa !29
  store ptr %t625, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t626 = load ptr, ptr %l338, !tbaa !29
  %t627 = icmp ne ptr %t626, null
  br i1 %t627, label %bb175, label %bb176
bb175:
  %t629 = load ptr, ptr %l338, !tbaa !29
  %t630 = load i64, ptr %t629, !range !{i64 0, i64 3}
  %t632 = icmp eq i64 %t630, 1
  store i1 %t632, ptr %l339, !tbaa !21
  br label %bb176
bb176:
  %t633 = load i1, ptr %l339, !tbaa !21
  br i1 %t633, label %bb177, label %bb178
bb177:
  %t634 = load ptr, ptr %l44, !tbaa !29
  %t636 = getelementptr { i64, [4 x i64] }, ptr %t634, i32 0, i32 1
  %t637 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t636, i32 0, i32 0
  %t638 = load i32, ptr %t637
  store i32 %t638, ptr %l45, !tbaa !23
  %t640 = load ptr, ptr %l44, !tbaa !29
  %t642 = getelementptr { i64, [4 x i64] }, ptr %t640, i32 0, i32 1
  %t643 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t642, i32 0, i32 1
  %t644 = load { i64, ptr }, ptr %t643
  store { i64, ptr } %t644, ptr %l46, !tbaa !27
  br label %bb179
bb178:
  br label %bb187
bb179:
  %t646 = load ptr, ptr %l0, !tbaa !29
  %t648 = getelementptr %"compiler/scope:Scoper", ptr %t646, i32 0, i32 143
  %t649 = load i1, ptr %t648, !tbaa !21
  store i1 %t649, ptr %l47, !tbaa !21
  %t651 = load ptr, ptr %l0, !tbaa !29
  %t653 = getelementptr %"compiler/scope:Scoper", ptr %t651, i32 0, i32 143
  store i1 false, ptr %t653, !tbaa !21
  %t654 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t654, ptr %l48, !tbaa !27
  store i64 0, ptr %l49, !tbaa !24
  %t656 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t658 = extractvalue { i64, ptr } %t656, 0
  store i64 %t658, ptr %l50, !tbaa !24
  br label %bb180
bb180:
  %t660 = load i64, ptr %l49, !tbaa !24
  %t661 = load i64, ptr %l50, !tbaa !24
  %t664 = icmp slt i64 %t660, %t661
  %t666 = xor i1 %t664, true
  br i1 %t666, label %bb181, label %bb182
bb181:
  br label %bb186
bb182:
  br label %bb183
bb183:
  %t668 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t668, ptr %l356, !tbaa !27
  %t669 = load i64, ptr %l49, !tbaa !24
  %t671 = getelementptr { i64, ptr }, ptr %l356, i32 0, i32 1
  %t672 = load ptr, ptr %t671, !tbaa !27
  %t673 = getelementptr ptr, ptr %t672, i64 %t669
  %t674 = load ptr, ptr %t673, !tbaa !39
  %t676 = load ptr, ptr %l0, !tbaa !29
  %t677 = load i32, ptr %l45, !tbaa !23
  %t679 = sext i32 %t677 to i64
  %t681 = load i1, ptr %l47, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwCapture(ptr %v0, ptr %v1, ptr %t676, i64 %t679, ptr %t674, i1 %t681)
  br label %bb184
bb184:
  br label %bb185
bb185:
  %t686 = load i64, ptr %l49, !tbaa !24
  %t688 = add i64 %t686, 1
  store i64 %t688, ptr %l49, !tbaa !24
  br label %bb180
bb186:
  br label %bb199
bb187:
  %t690 = load ptr, ptr %l44, !tbaa !29
  store ptr %t690, ptr %l366, !tbaa !29
  store i1 false, ptr %l367, !tbaa !21
  %t691 = load ptr, ptr %l366, !tbaa !29
  %t692 = icmp ne ptr %t691, null
  br i1 %t692, label %bb188, label %bb189
bb188:
  %t694 = load ptr, ptr %l366, !tbaa !29
  %t695 = load i64, ptr %t694, !range !{i64 0, i64 3}
  %t697 = icmp eq i64 %t695, 2
  store i1 %t697, ptr %l367, !tbaa !21
  br label %bb189
bb189:
  %t698 = load i1, ptr %l367, !tbaa !21
  br i1 %t698, label %bb190, label %bb191
bb190:
  %t699 = load ptr, ptr %l44, !tbaa !29
  %t701 = getelementptr { i64, [4 x i64] }, ptr %t699, i32 0, i32 1
  %t702 = getelementptr { i32, ptr, i32 }, ptr %t701, i32 0, i32 1
  %t703 = load ptr, ptr %t702
  store ptr %t703, ptr %l52, !tbaa !29
  br label %bb192
bb191:
  br label %bb194
bb192:
  %t705 = load ptr, ptr %l0, !tbaa !29
  %t706 = load ptr, ptr %l52, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t705, ptr %t706, i1 false)
  br label %bb193
bb193:
  br label %bb199
bb194:
  br i1 true, label %bb195, label %bb196
bb195:
  br label %bb197
bb196:
  br label %bb198
bb197:
  br label %bb199
bb198:
  call void @__olang_check_failed(ptr @olang_loc_da7e2501b5a1c31c_336a9d74a1bc00b0)
  unreachable
bb199:
  br label %bb236
bb200:
  %t710 = load ptr, ptr %l1, !tbaa !29
  store ptr %t710, ptr %l375, !tbaa !29
  store i1 false, ptr %l376, !tbaa !21
  %t711 = load ptr, ptr %l375, !tbaa !29
  %t712 = icmp ne ptr %t711, null
  br i1 %t712, label %bb201, label %bb202
bb201:
  %t714 = load ptr, ptr %l375, !tbaa !29
  %t715 = load i64, ptr %t714, !range !{i64 0, i64 18}
  %t717 = icmp eq i64 %t715, 16
  store i1 %t717, ptr %l376, !tbaa !21
  br label %bb202
bb202:
  %t718 = load i1, ptr %l376, !tbaa !21
  br i1 %t718, label %bb203, label %bb204
bb203:
  %t719 = load ptr, ptr %l1, !tbaa !29
  %t721 = getelementptr { i64, [5 x i64] }, ptr %t719, i32 0, i32 1
  %t722 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t721, i32 0, i32 2
  %t723 = load ptr, ptr %t722
  store ptr %t723, ptr %l53, !tbaa !29
  br label %bb205
bb204:
  br label %bb224
bb205:
  %t725 = load ptr, ptr %l53, !tbaa !29
  %t727 = getelementptr %"compiler/typed:Text", ptr %t725, i32 0, i32 0
  %t728 = load { i64, ptr }, ptr %t727, !tbaa !27
  store { i64, ptr } %t728, ptr %l54, !tbaa !27
  store i64 0, ptr %l55, !tbaa !24
  %t730 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t732 = extractvalue { i64, ptr } %t730, 0
  store i64 %t732, ptr %l56, !tbaa !24
  br label %bb206
bb206:
  %t734 = load i64, ptr %l55, !tbaa !24
  %t735 = load i64, ptr %l56, !tbaa !24
  %t738 = icmp slt i64 %t734, %t735
  %t740 = xor i1 %t738, true
  br i1 %t740, label %bb207, label %bb208
bb207:
  br label %bb223
bb208:
  br label %bb209
bb209:
  %t742 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t742, ptr %l389, !tbaa !27
  %t743 = load i64, ptr %l55, !tbaa !24
  %t745 = getelementptr { i64, ptr }, ptr %l389, i32 0, i32 1
  %t746 = load ptr, ptr %t745, !tbaa !27
  %t747 = getelementptr ptr, ptr %t746, i64 %t743
  %t748 = load ptr, ptr %t747, !tbaa !39
  store ptr %t748, ptr %l57, !tbaa !29
  %t750 = load ptr, ptr %l57, !tbaa !29
  store ptr %t750, ptr %l392, !tbaa !29
  store i1 false, ptr %l393, !tbaa !21
  %t751 = load ptr, ptr %l392, !tbaa !29
  %t752 = icmp ne ptr %t751, null
  br i1 %t752, label %bb210, label %bb211
bb210:
  %t754 = load ptr, ptr %l392, !tbaa !29
  %t755 = load i64, ptr %t754, !range !{i64 0, i64 2}
  %t757 = icmp eq i64 %t755, 1
  store i1 %t757, ptr %l393, !tbaa !21
  br label %bb211
bb211:
  %t758 = load i1, ptr %l393, !tbaa !21
  br i1 %t758, label %bb212, label %bb213
bb212:
  %t759 = load ptr, ptr %l57, !tbaa !29
  %t761 = getelementptr { i64, [2 x i64] }, ptr %t759, i32 0, i32 1
  %t762 = getelementptr { ptr }, ptr %t761, i32 0, i32 0
  %t763 = load ptr, ptr %t762
  store ptr %t763, ptr %l58, !tbaa !29
  br label %bb214
bb213:
  br label %bb216
bb214:
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t766 = load ptr, ptr %l58, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t765, ptr %t766, i1 true)
  br label %bb215
bb215:
  br label %bb221
bb216:
  br i1 true, label %bb217, label %bb218
bb217:
  br label %bb219
bb218:
  br label %bb220
bb219:
  br label %bb221
bb220:
  call void @__olang_check_failed(ptr @olang_loc_1bad1049d3f03857_11a2742c169a90eb)
  unreachable
bb221:
  br label %bb222
bb222:
  %t770 = load i64, ptr %l55, !tbaa !24
  %t772 = add i64 %t770, 1
  store i64 %t772, ptr %l55, !tbaa !24
  br label %bb206
bb223:
  br label %bb236
bb224:
  %t774 = load ptr, ptr %l1, !tbaa !29
  store ptr %t774, ptr %l403, !tbaa !29
  store i1 false, ptr %l404, !tbaa !21
  %t775 = load ptr, ptr %l403, !tbaa !29
  %t776 = icmp ne ptr %t775, null
  br i1 %t776, label %bb225, label %bb226
bb225:
  %t778 = load ptr, ptr %l403, !tbaa !29
  %t779 = load i64, ptr %t778, !range !{i64 0, i64 18}
  %t781 = icmp eq i64 %t779, 17
  store i1 %t781, ptr %l404, !tbaa !21
  br label %bb226
bb226:
  %t782 = load i1, ptr %l404, !tbaa !21
  br i1 %t782, label %bb227, label %bb228
bb227:
  %t783 = load ptr, ptr %l1, !tbaa !29
  %t785 = getelementptr { i64, [5 x i64] }, ptr %t783, i32 0, i32 1
  %t786 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t785, i32 0, i32 2
  %t787 = load ptr, ptr %t786
  store ptr %t787, ptr %l59, !tbaa !29
  br label %bb229
bb228:
  br label %bb231
bb229:
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t790 = load ptr, ptr %l59, !tbaa !29
  %t792 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwExpr(ptr %v0, ptr %v1, ptr %t789, ptr %t790, i1 %t792)
  br label %bb230
bb230:
  br label %bb236
bb231:
  br i1 true, label %bb232, label %bb233
bb232:
  br label %bb234
bb233:
  br label %bb235
bb234:
  br label %bb236
bb235:
  call void @__olang_check_failed(ptr @olang_loc_38b65f81bf15a4b6_abe96c91b906622a)
  unreachable
bb236:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elastCopy(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/typed:LocalUses"
  %l3 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l4 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l5 = alloca i64
  %l10 = alloca i1
  %l18 = alloca ptr
  %l24 = alloca %"compiler/typed:LocalUses"
  %l25 = alloca i64
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l35 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l37 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l38 = alloca i32
  %l40 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i1
  %l51 = alloca { i64, ptr }
  %l54 = alloca i1
  %l56 = alloca ptr
  %l60 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l62 = alloca i64
  %l64 = alloca ptr
  %l68 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %l69 = alloca i64
  %l70 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i64
  %t40 = alloca %"compiler/typed:LocalUses", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 154
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 27
  %t7 = load i64, ptr %t6, !tbaa !24
  %t10 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t3, i64 %t7)
  store i1 %t10, ptr %l10
  br label %bb1
bb1:
  %t11 = load i1, ptr %l10, !tbaa !21
  %t12 = xor i1 %t11, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 154
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 27
  %t20 = load i64, ptr %t19, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t16, i64 %t20, i1 true)
  br label %bb4
bb3:
  br label %bb38
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/scope:Scoper", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t28 = getelementptr %"compiler/generic:Program", ptr %t26, i32 0, i32 2
  store ptr %t28, ptr %l18, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/scope:Scoper", ptr %t29, i32 0, i32 26
  %t32 = load ptr, ptr %t31, !tbaa !29
  %t34 = icmp eq ptr %t32, null
  br i1 %t34, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_5b434404cb6a6c26_74508be7ecdf76b2)
  unreachable
bb6:
  br label %bb7
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/scope:Scoper", ptr %t36, i32 0, i32 26
  %t39 = load ptr, ptr %t38, !tbaa !29
  %t41 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2ftyped_2eLocalUses_2eUses(ptr %t40, ptr %v0, ptr %v0, ptr %s1, ptr %t41, ptr %t39)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t40, i64 704, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l24, i64 704, i1 false)
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = ptrtoint ptr %s2 to i64
  store i64 %t43, ptr %l25, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2e0
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = call ptr @__olang_region_make(ptr %s2)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l25, !tbaa !24
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/scope:Scoper", ptr %t48, i32 0, i32 26
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t53 = icmp eq ptr %t51, null
  br i1 %t53, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_99f60e61aa82360d_7984d1f2777c87d9)
  unreachable
bb12:
  br label %bb13
bb13:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/scope:Scoper", ptr %t55, i32 0, i32 26
  %t58 = load ptr, ptr %t57, !tbaa !29
  %t59 = load i64, ptr %l25
  %t60 = inttoptr i64 %t59 to ptr
  %t62 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eLastCopies(ptr %v0, ptr %t60, ptr %t58, i1 false)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l32
  br label %bb14
bb14:
  %t63 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  %t64 = load i64, ptr %l25
  %t65 = inttoptr i64 %t64 to ptr
  %t66 = call ptr @__olang_scope_alloc_a(ptr %t65, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t63, ptr %t66
  %t68 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %s2, ptr %s2, ptr %t66)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t68, ptr %l34
  br label %bb15
bb15:
  %t69 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l34
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t69, ptr %l3
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t71 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %s2, ptr %l3)
  %t72 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t71, 1
  %t73 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t71, 0
  store i32 %t73, ptr %l38
  %t74 = icmp ne i32 %t73, 0
  br i1 %t74, label %bb18, label %ok.75, !prof !99
ok.75:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t72, ptr %l37
  br label %bb17
bb17:
  %t76 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l37
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t76, ptr %l35
  br label %bb20
bb18:
  %t77 = load i32, ptr %l38, !tbaa !23
  %t78 = ashr i32 %t77, 16
  %t80 = icmp eq i32 %t78, 1
  store i1 %t80, ptr %l40, !tbaa !21
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb20:
  %t81 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l35
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t81, ptr %l4
  %t82 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 1
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l5, !tbaa !24
  %t85 = getelementptr %"compiler/typed:LocalUses", ptr %l2, i32 0, i32 4
  %t86 = load i64, ptr %l5, !tbaa !24
  %t89 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s1, ptr %t85, i64 %t86)
  store i1 %t89, ptr %l44
  br label %bb21
bb21:
  %t90 = load i1, ptr %l44, !tbaa !21
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb25
bb23:
  %t91 = getelementptr %"compiler/typed:LocalUses", ptr %l2, i32 0, i32 6
  %t92 = load i64, ptr %l5, !tbaa !24
  %t95 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s1, ptr %t91, i64 %t92)
  store i1 %t95, ptr %l48
  br label %bb24
bb24:
  %t96 = load i1, ptr %l48, !tbaa !21
  store i1 %t96, ptr %l45, !tbaa !21
  br label %bb25
bb25:
  %t97 = load i1, ptr %l45, !tbaa !21
  br i1 %t97, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb30
bb27:
  %t98 = getelementptr %"compiler/typed:LocalUses", ptr %l2, i32 0, i32 8
  %t100 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %s1, ptr %s1, ptr %t98)
  store { i64, ptr } %t100, ptr %l51
  br label %bb28
bb28:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t102 = getelementptr { i64 }, ptr null, i32 1
  %t103 = ptrtoint ptr %t102 to i64
  %t104 = call ptr @__olang_scope_alloc_a(ptr %s3, i64 %t103, i64 8)
  %t105 = getelementptr { i64 }, ptr %t104, i32 0, i32 0
  store i64 %t101, ptr %t105, !tbaa !28
  %t107 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_16, 0
  %t108 = insertvalue { ptr, ptr } %t107, ptr %t104, 1
  %t109 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t111 = extractvalue { ptr, ptr } %t108, 0
  %t112 = extractvalue { ptr, ptr } %t108, 1
  %t113 = call i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %s1, ptr %s3, { i64, ptr } %t109, ptr %t111, ptr %t112)
  store i1 %t113, ptr %l54
  br label %bb29
bb29:
  %t114 = load i1, ptr %l54, !tbaa !21
  store i1 %t114, ptr %l49, !tbaa !21
  br label %bb30
bb30:
  %t115 = load i1, ptr %l49, !tbaa !21
  br i1 %t115, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 153
  store ptr %t118, ptr %l56, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/scope:Scoper", ptr %t119, i32 0, i32 27
  %t122 = load i64, ptr %t121, !tbaa !24
  %t123 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l4, i32 0, i32 0
  %t124 = load i64, ptr %t123, !tbaa !24
  %t127 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s3, i64 %t122, i64 %t124)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t127, ptr %l60
  br label %bb34
bb34:
  %t128 = load i64, ptr %l5, !tbaa !24
  %t129 = load ptr, ptr %l56, !tbaa !29
  %t130 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l60
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %t129, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t130, i64 %t128)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s3)
  br label %bb36
bb36:
  br label %bb16
bb37:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s1)
  br label %bb38
bb38:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/scope:Scoper", ptr %t132, i32 0, i32 153
  store ptr %t134, ptr %l64, !tbaa !29
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/scope:Scoper", ptr %t135, i32 0, i32 27
  %t138 = load i64, ptr %t137, !tbaa !24
  %t142 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t138, i64 %a1)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t142, ptr %l68
  br label %bb39
bb39:
  %t143 = load ptr, ptr %l64, !tbaa !29
  %t144 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l68
  %t145 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %t143, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t144)
  %t146 = extractvalue { i32, i64 } %t145, 1
  %t147 = extractvalue { i32, i64 } %t145, 0
  store i32 %t147, ptr %l70
  %t148 = icmp ne i32 %t147, 0
  br i1 %t148, label %bb41, label %ok.149, !prof !99
ok.149:
  store i64 %t146, ptr %l69
  br label %bb40
bb40:
  %t150 = load i64, ptr %l69, !tbaa !24
  store i64 %t150, ptr %l62, !tbaa !24
  br label %bb43
bb41:
  br label %bb42
bb42:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t151 = load i64, ptr %l62, !tbaa !24
  store i64 %t151, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopArray(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i64
  %l15 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca i1
  %l64 = alloca %"compiler/typed:Local"
  %l67 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l79 = alloca ptr
  %l81 = alloca i64
  %l84 = alloca i1
  %l93 = alloca %"compiler/typed:Local"
  %l96 = alloca i1
  %l99 = alloca i1
  %l104 = alloca ptr
  %l113 = alloca %"compiler/typed:Local"
  %l115 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l121 = alloca i64
  %l122 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t6 = load ptr, ptr %l16, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l16, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 18}
  %t12 = icmp eq i64 %t10, 2
  store i1 %t12, ptr %l17, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l17, !tbaa !21
  %t14 = xor i1 %t13, true
  store i1 %t14, ptr %l15, !tbaa !21
  br label %bb5
bb5:
  %t16 = load i1, ptr %l15, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l21, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t17, ptr %l22, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t18, 0
  store i64 %t19, ptr %l23, !tbaa !24
  %t20 = load i64, ptr %l23, !tbaa !24
  %t21 = mul i64 %t20, 1
  %t22 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t21)
  %t23 = insertvalue { i64, ptr } undef, i64 %t20, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t22, 1
  store { i64, ptr } %t24, ptr %l24, !tbaa !27
  %t25 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l23, !tbaa !24
  %t30 = mul i64 %t29, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t26, ptr %t28, i64 %t30, i1 false)
  %t31 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t31, ptr %l22, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t32 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t32, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t35, i32 0, i32 0
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l2
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr { i64, [5 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t41, i32 0, i32 1
  %t43 = load i32, ptr %t42
  store i32 %t43, ptr %l3, !tbaa !23
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [5 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t47, i32 0, i32 2
  %t49 = load ptr, ptr %t48
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [5 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t53, i32 0, i32 3
  %t55 = load i32, ptr %t54
  store i32 %t55, ptr %l5, !tbaa !23
  store ptr %t49, ptr %l6, !tbaa !29
  %t59 = load ptr, ptr %l6, !tbaa !29
  store ptr %t59, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t60 = load ptr, ptr %l34, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb9, label %bb10
bb9:
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 4
  store i1 %t66, ptr %l35, !tbaa !21
  br label %bb10
bb10:
  %t67 = load i1, ptr %l35, !tbaa !21
  %t68 = xor i1 %t67, true
  br i1 %t68, label %bb11, label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l39, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t70, ptr %l40, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l41, !tbaa !24
  %t73 = load i64, ptr %l41, !tbaa !24
  %t74 = mul i64 %t73, 1
  %t75 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t74)
  %t76 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t77 = insertvalue { i64, ptr } %t76, ptr %t75, 1
  store { i64, ptr } %t77, ptr %l42, !tbaa !27
  %t78 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t79 = load ptr, ptr %t78, !tbaa !27
  %t80 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = load i64, ptr %l41, !tbaa !24
  %t83 = mul i64 %t82, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t79, ptr %t81, i64 %t83, i1 false)
  %t84 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t84, ptr %l40, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t86 = load ptr, ptr %l6, !tbaa !29
  %t88 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  %t89 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t88, i32 0, i32 0
  %t90 = load %"compiler/source:Span", ptr %t89
  store %"compiler/source:Span" %t90, ptr %l7
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t94, i32 0, i32 1
  %t96 = load i32, ptr %t95
  store i32 %t96, ptr %l8, !tbaa !23
  %t98 = load ptr, ptr %l6, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  %t107 = getelementptr %"compiler/typed:Elem", ptr %t102, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  %t110 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t108)
  store i64 %t110, ptr %l52
  br label %bb14
bb14:
  %t111 = load i64, ptr %l52, !tbaa !24
  store i64 %t111, ptr %l10, !tbaa !24
  store ptr null, ptr %l11, !tbaa !29
  %t112 = load i64, ptr %l10, !tbaa !24
  %t114 = icmp sge i64 %t112, 0
  br i1 %t114, label %bb15, label %bb16
bb15:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 26
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = icmp eq ptr %t119, null
  br i1 %t121, label %bb17, label %bb18
bb16:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb21
bb17:
  call void @__olang_check_failed(ptr @olang_loc_6982ea230ce803bc_74efee4e495ae4a0)
  unreachable
bb18:
  br label %bb19
bb19:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/scope:Scoper", ptr %t123, i32 0, i32 26
  %t126 = load ptr, ptr %t125, !tbaa !29
  %t129 = getelementptr %"compiler/typed:Body", ptr %t126, i32 0, i32 7
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t129, i64 %t130)
  store %"compiler/typed:Local" %t133, ptr %l64
  br label %bb20
bb20:
  %t134 = getelementptr %"compiler/typed:Local", ptr %l64, i32 0, i32 4
  %t135 = load i32, ptr %t134, !range !{i32 0, i32 7}
  %t137 = trunc i64 3 to i32
  %t138 = icmp eq i32 %t135, %t137
  store i1 %t138, ptr %l55, !tbaa !21
  br label %bb21
bb21:
  %t140 = load i1, ptr %l55, !tbaa !21
  br i1 %t140, label %bb22, label %bb23
bb22:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/scope:Scoper", ptr %t141, i32 0, i32 45
  %t144 = load i64, ptr %l10, !tbaa !24
  %t147 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %s0, ptr %t143, i64 %t144)
  %t148 = extractvalue { i32, ptr } %t147, 1
  %t149 = extractvalue { i32, ptr } %t147, 0
  store i32 %t149, ptr %l72
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb25, label %ok.151, !prof !99
ok.151:
  store ptr %t148, ptr %l71
  br label %bb24
bb23:
  br label %bb28
bb24:
  %t152 = load ptr, ptr %l71, !tbaa !29
  store ptr %t152, ptr %l67, !tbaa !29
  br label %bb27
bb25:
  br label %bb26
bb26:
  store ptr null, ptr %l67, !tbaa !29
  br label %bb27
bb27:
  %t153 = load ptr, ptr %l67, !tbaa !29
  store ptr %t153, ptr %l11, !tbaa !29
  br label %bb28
bb28:
  store i64 -1, ptr %l12, !tbaa !24
  %t154 = load ptr, ptr %l11, !tbaa !29
  %t156 = icmp eq ptr %t154, null
  %t158 = xor i1 %t156, true
  br i1 %t158, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s4
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l11, !tbaa !29
  %t165 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %s0, ptr %s4, ptr %t160, ptr %t161)
  store ptr %t165, ptr %l79
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t166 = load ptr, ptr %l79, !tbaa !29
  %t168 = call i64 @compiler_2fscope_2eflRootExpr(ptr %s4, ptr %t166)
  store i64 %t168, ptr %l81
  br label %bb32
bb32:
  %t169 = load i64, ptr %l81, !tbaa !24
  store i64 %t169, ptr %l12, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb33:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t172 = icmp sge i64 %t170, 0
  br i1 %t172, label %bb34, label %bb35
bb34:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/scope:Scoper", ptr %t174, i32 0, i32 26
  %t177 = load ptr, ptr %t176, !tbaa !29
  %t179 = icmp eq ptr %t177, null
  br i1 %t179, label %bb36, label %bb37
bb35:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb40
bb36:
  call void @__olang_check_failed(ptr @olang_loc_40da86322e01ef2b_70b0fe12089116bf)
  unreachable
bb37:
  br label %bb38
bb38:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/scope:Scoper", ptr %t181, i32 0, i32 26
  %t184 = load ptr, ptr %t183, !tbaa !29
  %t187 = getelementptr %"compiler/typed:Body", ptr %t184, i32 0, i32 7
  %t188 = load i64, ptr %l12, !tbaa !24
  %t191 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t187, i64 %t188)
  store %"compiler/typed:Local" %t191, ptr %l93
  br label %bb39
bb39:
  %t192 = getelementptr %"compiler/typed:Local", ptr %l93, i32 0, i32 4
  %t193 = load i32, ptr %t192, !range !{i32 0, i32 7}
  %t195 = trunc i64 1 to i32
  %t196 = icmp eq i32 %t193, %t195
  store i1 %t196, ptr %l84, !tbaa !21
  br label %bb40
bb40:
  %t198 = load i1, ptr %l84, !tbaa !21
  br i1 %t198, label %bb41, label %bb42
bb41:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load i64, ptr %l12, !tbaa !24
  %t203 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %t199, i64 %t200)
  store i1 %t203, ptr %l99
  br label %bb43
bb42:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb44
bb43:
  %t204 = load i1, ptr %l99, !tbaa !21
  %t205 = xor i1 %t204, true
  store i1 %t205, ptr %l96, !tbaa !21
  br label %bb44
bb44:
  %t207 = load i1, ptr %l96, !tbaa !21
  br i1 %t207, label %bb45, label %bb46
bb45:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/scope:Scoper", ptr %t208, i32 0, i32 0
  %t211 = load ptr, ptr %t210, !tbaa !29
  %t213 = getelementptr %"compiler/generic:Program", ptr %t211, i32 0, i32 0
  %t214 = load ptr, ptr %t213, !tbaa !29
  %t216 = getelementptr %"compiler/load:Loader", ptr %t214, i32 0, i32 3
  %t217 = load ptr, ptr %t216, !tbaa !29
  store ptr %t217, ptr %l104, !tbaa !29
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t220 = getelementptr %"compiler/scope:Scoper", ptr %t218, i32 0, i32 26
  %t221 = load ptr, ptr %t220, !tbaa !29
  %t223 = icmp eq ptr %t221, null
  br i1 %t223, label %bb47, label %bb48
bb46:
  br label %bb52
bb47:
  call void @__olang_check_failed(ptr @olang_loc_40da86322e01ef2b_70b0fe12089116bf)
  unreachable
bb48:
  br label %bb49
bb49:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/scope:Scoper", ptr %t225, i32 0, i32 26
  %t228 = load ptr, ptr %t227, !tbaa !29
  %t231 = getelementptr %"compiler/typed:Body", ptr %t228, i32 0, i32 7
  %t232 = load i64, ptr %l12, !tbaa !24
  %t235 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t231, i64 %t232)
  store %"compiler/typed:Local" %t235, ptr %l113
  br label %bb50
bb50:
  %t236 = getelementptr %"compiler/typed:Local", ptr %l113, i32 0, i32 0
  %t237 = load i32, ptr %t236, !tbaa !23
  %t238 = load ptr, ptr %l104, !tbaa !29
  %t240 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v2, ptr %t238, i32 %t237)
  store { i64, ptr } %t240, ptr %l115
  br label %bb51
bb51:
  %t241 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t241, ptr %l116, !tbaa !27
  %t242 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t243 = extractvalue { i64, ptr } %t242, 0
  store i64 %t243, ptr %l117, !tbaa !24
  %t244 = load i64, ptr %l117, !tbaa !24
  %t245 = mul i64 %t244, 1
  %t246 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t245)
  %t247 = insertvalue { i64, ptr } undef, i64 %t244, 0
  %t248 = insertvalue { i64, ptr } %t247, ptr %t246, 1
  store { i64, ptr } %t248, ptr %l118, !tbaa !27
  %t249 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t250 = load ptr, ptr %t249, !tbaa !27
  %t251 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t252 = load ptr, ptr %t251, !tbaa !27
  %t253 = load i64, ptr %l117, !tbaa !24
  %t254 = mul i64 %t253, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t250, ptr %t252, i64 %t254, i1 false)
  %t255 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t255, ptr %l116, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t256 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t256, ptr %rv
  br label %ret
bb52:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l119, !tbaa !27
  %t257 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t257, ptr %l120, !tbaa !27
  %t258 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t259 = extractvalue { i64, ptr } %t258, 0
  store i64 %t259, ptr %l121, !tbaa !24
  %t260 = load i64, ptr %l121, !tbaa !24
  %t261 = mul i64 %t260, 1
  %t262 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t261)
  %t263 = insertvalue { i64, ptr } undef, i64 %t260, 0
  %t264 = insertvalue { i64, ptr } %t263, ptr %t262, 1
  store { i64, ptr } %t264, ptr %l122, !tbaa !27
  %t265 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = load i64, ptr %l121, !tbaa !24
  %t270 = mul i64 %t269, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t266, ptr %t268, i64 %t270, i1 false)
  %t271 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t271, ptr %l120, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t272 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t272, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emarkTerm(ptr %v0, ptr %a0, { i64, [1 x i64] } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [1 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l9 = alloca { i64, [2 x i64] }
  %l15 = alloca { i64, [2 x i64] }
  %l21 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t43 = alloca { i64, [2 x i64] }, align 8
  %t50 = alloca { i64, [2 x i64] }, align 8
  %t55 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, [1 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %t6, i32 %a2)
  store { i64, [2 x i64] } %t10, ptr %l9
  br label %bb4
bb4:
  %t11 = load { i64, [2 x i64] }, ptr %l9
  store { i64, [2 x i64] } %t11, ptr %l4
  br label %bb22
bb5:
  %t12 = load { i64, [1 x i64] }, ptr %l1
  %t14 = extractvalue { i64, [1 x i64] } %t12, 0
  %t15 = icmp eq i64 %t14, 2
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = getelementptr { i64, [1 x i64] }, ptr %l1, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %t21, i32 %t22)
  store { i64, [2 x i64] } %t25, ptr %l15
  br label %bb9
bb9:
  %t26 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t26, ptr %l4
  br label %bb22
bb10:
  %t27 = load { i64, [1 x i64] }, ptr %l1
  %t29 = extractvalue { i64, [1 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 3
  br i1 %t30, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb17
bb13:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 42
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb14, label %bb15
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/scope:Scoper", ptr %t39, i32 0, i32 42
  %t42 = load i64, ptr %t41, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 0
  store i64 2, ptr %t44
  %t46 = insertvalue { i64 } undef, i64 %t42, 0
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 1
  store { i64 } %t46, ptr %t47
  %t48 = load { i64, [2 x i64] }, ptr %t43
  store { i64, [2 x i64] } %t48, ptr %l21
  br label %bb16
bb15:
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 6, ptr %t51
  %t52 = load { i64, [2 x i64] }, ptr %t50
  store { i64, [2 x i64] } %t52, ptr %l21
  br label %bb16
bb16:
  %t54 = load { i64, [2 x i64] }, ptr %l21
  store { i64, [2 x i64] } %t54, ptr %l4
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store { i64, [2 x i64] } zeroinitializer, ptr %t55
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t55, i32 0, i32 0
  store i64 0, ptr %t56
  %t57 = load { i64, [2 x i64] }, ptr %t55
  store { i64, [2 x i64] } %t57, ptr %l4
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_298102a92201c9c7_d2c28c3c337e3c3b)
  unreachable
bb22:
  %t59 = load { i64, [2 x i64] }, ptr %l4
  store { i64, [2 x i64] } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteLoopCopy(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca i64
  %l18 = alloca ptr
  %l27 = alloca %"compiler/typed:Local"
  %l29 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l39 = alloca %"compiler/typed:Local"
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca ptr
  %l44 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i32
  %l50 = alloca { i64, ptr }
  %l52 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l62 = alloca i64
  %l63 = alloca %"compiler/source:Span"
  %l67 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca ptr
  %l77 = alloca %"compiler/typed:Local"
  %l79 = alloca i1
  %l80 = alloca ptr
  %l81 = alloca i64
  %l88 = alloca i64
  %l89 = alloca %"compiler/source:Span"
  %l91 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t6 = call ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %s0, ptr %t1, ptr %a2)
  store ptr %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l10, !tbaa !29
  %t9 = call i64 @compiler_2fscope_2eflRootExpr(ptr %s0, ptr %t7)
  store i64 %t9, ptr %l12
  br label %bb2
bb2:
  %t10 = load i64, ptr %l12, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 0
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/generic:Program", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 3
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l18, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/scope:Scoper", ptr %t25, i32 0, i32 26
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = icmp eq ptr %t28, null
  br i1 %t30, label %bb6, label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_963cba883dc4bd20_64c99da4a40e3f44)
  unreachable
bb7:
  br label %bb8
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/scope:Scoper", ptr %t32, i32 0, i32 26
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Body", ptr %t35, i32 0, i32 7
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t38, i64 %t39)
  store %"compiler/typed:Local" %t42, ptr %l27
  br label %bb9
bb9:
  %t43 = getelementptr %"compiler/typed:Local", ptr %l27, i32 0, i32 0
  %t44 = load i32, ptr %t43, !tbaa !23
  %t45 = load ptr, ptr %l18, !tbaa !29
  %t47 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t45, i32 %t44)
  store { i64, ptr } %t47, ptr %l29
  br label %bb10
bb10:
  %t48 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t48, ptr %l4, !tbaa !27
  %t49 = load ptr, ptr %l0, !tbaa !29
  store ptr %t49, ptr %l30, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/scope:Scoper", ptr %t50, i32 0, i32 26
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = icmp eq ptr %t53, null
  br i1 %t55, label %bb11, label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_91fdca4bfcfaef3f_360ec22200b0b313)
  unreachable
bb12:
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/scope:Scoper", ptr %t57, i32 0, i32 26
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 7
  %t64 = load i64, ptr %l3, !tbaa !24
  %t67 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t63, i64 %t64)
  store %"compiler/typed:Local" %t67, ptr %l39
  br label %bb14
bb14:
  %t68 = getelementptr %"compiler/typed:Local", ptr %l39, i32 0, i32 1
  %t69 = load %"compiler/source:Span", ptr %t68
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t71 = load ptr, ptr %l30, !tbaa !29
  %t74 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v0, ptr %t71, %"compiler/source:Span" %t69, { i64, ptr } %t70)
  store %"compiler/source:Span" %t74, ptr %l42
  br label %bb15
bb15:
  %t75 = load %"compiler/source:Span", ptr %l42
  store %"compiler/source:Span" %t75, ptr %l5
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l43, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 45
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v0, ptr %t79, i64 %t80)
  %t84 = extractvalue { i32, ptr } %t83, 1
  %t85 = extractvalue { i32, ptr } %t83, 0
  store i32 %t85, ptr %l49
  %t86 = icmp ne i32 %t85, 0
  br i1 %t86, label %bb17, label %ok.87, !prof !99
ok.87:
  store ptr %t84, ptr %l48
  br label %bb16
bb16:
  %t88 = load ptr, ptr %l48, !tbaa !29
  store ptr %t88, ptr %l44, !tbaa !29
  br label %bb19
bb17:
  br label %bb18
bb18:
  store ptr null, ptr %l44, !tbaa !29
  br label %bb19
bb19:
  %t89 = load ptr, ptr %l43, !tbaa !29
  %t90 = load ptr, ptr %l44, !tbaa !29
  %t91 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopArray(ptr %v0, ptr %v0, ptr %s0, ptr %t89, ptr %t90)
  store { i64, ptr } %t91, ptr %l50
  br label %bb20
bb20:
  %t92 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t92, ptr %l6, !tbaa !27
  %t93 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t95 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t93, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t95, ptr %l52
  br label %bb21
bb21:
  %t96 = load i1, ptr %l52, !tbaa !21
  %t97 = xor i1 %t96, true
  br i1 %t97, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t99 = load ptr, ptr %l0, !tbaa !29
  store ptr %t99, ptr %l54, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  store i64 %t100, ptr %l55, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/scope:Scoper", ptr %t101, i32 0, i32 26
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb24, label %bb25
bb23:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l68, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/scope:Scoper", ptr %t109, i32 0, i32 26
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = icmp eq ptr %t112, null
  br i1 %t114, label %bb29, label %bb30
bb24:
  call void @__olang_check_failed(ptr @olang_loc_540f6a9ea70b2c8e_44714d47ed7a19d2)
  unreachable
bb25:
  br label %bb26
bb26:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/scope:Scoper", ptr %t116, i32 0, i32 26
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t122 = getelementptr %"compiler/typed:Body", ptr %t119, i32 0, i32 3
  %t123 = load i64, ptr %t122, !tbaa !24
  store i64 %t123, ptr %l62, !tbaa !24
  %t124 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t124, ptr %l63
  %t125 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t126 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t127 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t131 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopy(ptr %v0, ptr %s0, ptr %s0, ptr %s2, { i64, ptr } %t125, { i64, ptr } %t126, { i64, ptr } %t127)
  store %"compiler/diagmsg:Msg" %t131, ptr %l67
  br label %bb27
bb27:
  %t132 = load ptr, ptr %l54, !tbaa !29
  %t133 = load i64, ptr %l55, !tbaa !24
  %t134 = load i64, ptr %l62, !tbaa !24
  %t135 = load %"compiler/source:Span", ptr %l63
  %t136 = load %"compiler/diagmsg:Msg", ptr %l67
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s2, ptr %t132, i64 %t133, i64 %t134, %"compiler/source:Span" %t135, %"compiler/diagmsg:Msg" %t136)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s2)
  br label %bb42
bb29:
  call void @__olang_check_failed(ptr @olang_loc_64a11eda2e926835_fc7221612b7da3f9)
  unreachable
bb30:
  br label %bb31
bb31:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/scope:Scoper", ptr %t137, i32 0, i32 26
  %t140 = load ptr, ptr %t139, !tbaa !29
  %t143 = getelementptr %"compiler/typed:Body", ptr %t140, i32 0, i32 7
  %t144 = load i64, ptr %l3, !tbaa !24
  %t147 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t143, i64 %t144)
  store %"compiler/typed:Local" %t147, ptr %l77
  br label %bb32
bb32:
  %t148 = getelementptr %"compiler/typed:Local", ptr %l77, i32 0, i32 2
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load ptr, ptr %l68, !tbaa !29
  %t152 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t150, i32 %t149)
  store i1 %t152, ptr %l79
  br label %bb33
bb33:
  %t153 = load i1, ptr %l79, !tbaa !21
  br i1 %t153, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s4
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l80, !tbaa !29
  %t155 = load i64, ptr %l1, !tbaa !24
  store i64 %t155, ptr %l81, !tbaa !24
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/scope:Scoper", ptr %t156, i32 0, i32 26
  %t159 = load ptr, ptr %t158, !tbaa !29
  %t161 = icmp eq ptr %t159, null
  br i1 %t161, label %bb36, label %bb37
bb35:
  br label %bb41
bb36:
  call void @__olang_check_failed(ptr @olang_loc_9739f96f1cdf87e4_96538064e6892180)
  unreachable
bb37:
  br label %bb38
bb38:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/scope:Scoper", ptr %t163, i32 0, i32 26
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t169 = getelementptr %"compiler/typed:Body", ptr %t166, i32 0, i32 3
  %t170 = load i64, ptr %t169, !tbaa !24
  store i64 %t170, ptr %l88, !tbaa !24
  %t171 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t171, ptr %l89
  %t172 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t174 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopyLent(ptr %v0, ptr %s4, { i64, ptr } %t172)
  store %"compiler/diagmsg:Msg" %t174, ptr %l91
  br label %bb39
bb39:
  %t175 = load ptr, ptr %l80, !tbaa !29
  %t176 = load i64, ptr %l81, !tbaa !24
  %t177 = load i64, ptr %l88, !tbaa !24
  %t178 = load %"compiler/source:Span", ptr %l89
  %t179 = load %"compiler/diagmsg:Msg", ptr %l91
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %s4, ptr %t175, i64 %t176, i64 %t177, %"compiler/source:Span" %t178, %"compiler/diagmsg:Msg" %t179)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s4)
  br label %bb41
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eonFrameAt(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l12 = alloca { i64, ptr }
  %t28 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = icmp sge i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 33
  %t11 = getelementptr %"compiler/typed:Plan", ptr %t10, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp slt i64 %t7, %t14
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l4, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/scope:Scoper", ptr %t20, i32 0, i32 33
  %t23 = getelementptr %"compiler/typed:Plan", ptr %t22, i32 0, i32 0
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l12, !tbaa !27
  %t25 = load i32, ptr %l1, !tbaa !23
  %t27 = sext i32 %t25 to i64
  store { i64, [2 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 0
  store i64 5, ptr %t29
  %t30 = load { i64, [2 x i64] }, ptr %t28
  %t33 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i64 %t27
  store { i64, [2 x i64] } %t30, ptr %t35
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeLocal(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l19 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t2, i32 0, i32 191
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t8 = load ptr, ptr %l4, !tbaa !29
  %t9 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 191
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/scope:Scoper", ptr %t10, i32 0, i32 191
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = icmp eq i64 %t13, 1
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/scope:Scoper", ptr %t17, i32 0, i32 192
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %t19)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 41
  %t25 = load %"compiler/source:Span", ptr %t24
  %t28 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 215
  store %"compiler/source:Span" %t25, ptr %t28
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFrom(ptr %v0, ptr %t29, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3, i64 -1, i1 false)
  br label %bb5
bb5:
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l19, !tbaa !29
  %t38 = load ptr, ptr %l19, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t38, i32 0, i32 191
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = sub i64 %t40, 1
  %t44 = load ptr, ptr %l19, !tbaa !29
  %t45 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 191
  store i64 %t42, ptr %t45, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/scope:Scoper", ptr %t46, i32 0, i32 191
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = icmp eq i64 %t49, 0
  br i1 %t51, label %bb6, label %bb7
bb6:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 213
  store i64 0, ptr %t55, !tbaa !24
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eretOne(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca %"compiler/scope:Val"
  %l7 = alloca i1
  %l10 = alloca i32
  %l13 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l35 = alloca %"compiler/scope:Val"
  %l38 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca ptr
  %l45 = alloca i1
  %l46 = alloca { i64, [2 x i64] }
  %l48 = alloca { i64, [2 x i64] }
  %l50 = alloca %"compiler/scope:Val"
  %l53 = alloca { i64, [2 x i64] }
  %l58 = alloca %"compiler/scope:Val"
  %l61 = alloca i1
  %l64 = alloca ptr
  %l72 = alloca i32
  %l75 = alloca i1
  %l78 = alloca ptr
  %l81 = alloca ptr
  %l89 = alloca i32
  %l90 = alloca i32
  %l103 = alloca ptr
  %l107 = alloca i1
  %l110 = alloca { i64, [1 x i64] }
  %l113 = alloca ptr
  %l114 = alloca { i64, [2 x i64] }
  %l118 = alloca { i64, [2 x i64] }
  %t46 = alloca { i64, [2 x i64] }, align 8
  %t76 = alloca { i64, [2 x i64] }, align 8
  %t229 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t3 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t1)
  store i32 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i32, ptr %l10, !tbaa !23
  store i32 %t4, ptr %l3, !tbaa !23
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t8 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %t5)
  store ptr %t8, ptr %l13
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l13, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t12 = icmp eq ptr %t10, null
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Call", ptr %t16, i32 0, i32 4
  %t19 = load i1, ptr %t18, !tbaa !21
  store i1 %t19, ptr %l17, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb5
bb5:
  %t21 = load i1, ptr %l17, !tbaa !21
  br i1 %t21, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/scope:Scoper", ptr %t22, i32 0, i32 42
  %t25 = load i64, ptr %t24, !tbaa !24
  %t27 = icmp sge i64 %t25, 0
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l20, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t30, i32 %t31)
  store i1 %t34, ptr %l27
  br label %bb11
bb10:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  %t35 = load i1, ptr %l27, !tbaa !21
  %t36 = xor i1 %t35, true
  store i1 %t36, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t38 = load i1, ptr %l24, !tbaa !21
  br i1 %t38, label %bb13, label %bb14
bb13:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load ptr, ptr %l2, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 42
  %t45 = load i64, ptr %t44, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t46
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 0
  store i64 2, ptr %t47
  %t49 = insertvalue { i64 } undef, i64 %t45, 0
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t46, i32 0, i32 1
  store { i64 } %t49, ptr %t50
  %t51 = load { i64, [2 x i64] }, ptr %t46
  %t55 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t39, ptr %t40, { i64, [2 x i64] } %t51)
  store %"compiler/scope:Val" %t55, ptr %l35
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %ret
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t60 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t56, i32 %t57)
  store i1 %t60, ptr %l38
  br label %bb17
bb17:
  %t61 = load i1, ptr %l38, !tbaa !21
  %t62 = xor i1 %t61, true
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l40, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  store ptr %t65, ptr %l42, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i32, ptr %l3, !tbaa !23
  %t71 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t67, i32 %t68)
  store i1 %t71, ptr %l45
  br label %bb20
bb19:
  br label %bb26
bb20:
  %t72 = load i1, ptr %l45, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorageTerm(ptr %v0, ptr %t73)
  store { i64, [2 x i64] } %t75, ptr %l48
  br label %bb23
bb22:
  store { i64, [2 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t76, i32 0, i32 0
  store i64 0, ptr %t77
  %t78 = load { i64, [2 x i64] }, ptr %t76
  store { i64, [2 x i64] } %t78, ptr %l46
  br label %bb24
bb23:
  %t80 = load { i64, [2 x i64] }, ptr %l48
  store { i64, [2 x i64] } %t80, ptr %l46
  br label %bb24
bb24:
  %t81 = load ptr, ptr %l40, !tbaa !29
  %t82 = load ptr, ptr %l42, !tbaa !29
  %t83 = load { i64, [2 x i64] }, ptr %l46
  %t84 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t81, ptr %t82, { i64, [2 x i64] } %t83)
  store %"compiler/scope:Val" %t84, ptr %l50
  br label %bb25
bb25:
  br label %ret
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l1, !tbaa !24
  %t89 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %t85, i64 %t86)
  store { i64, [2 x i64] } %t89, ptr %l53
  br label %bb27
bb27:
  %t90 = load { i64, [2 x i64] }, ptr %l53
  store { i64, [2 x i64] } %t90, ptr %l5
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l2, !tbaa !29
  %t94 = load { i64, [2 x i64] }, ptr %l5
  %t98 = call %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %t91, ptr %t92, { i64, [2 x i64] } %t94)
  store %"compiler/scope:Val" %t98, ptr %l58
  br label %bb28
bb28:
  %t99 = load %"compiler/scope:Val", ptr %l58
  store %"compiler/scope:Val" %t99, ptr %l6
  %t100 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb29, label %bb30
bb29:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/scope:Scoper", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/generic:Program", ptr %t107, i32 0, i32 2
  store ptr %t109, ptr %l64, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/scope:Scoper", ptr %t110, i32 0, i32 26
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = icmp eq ptr %t113, null
  br i1 %t115, label %bb31, label %bb32
bb30:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb35
bb31:
  call void @__olang_check_failed(ptr @olang_loc_a48607f77104f946_b5a91344bffd8f22)
  unreachable
bb32:
  br label %bb33
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/scope:Scoper", ptr %t117, i32 0, i32 26
  %t120 = load ptr, ptr %t119, !tbaa !29
  %t123 = getelementptr %"compiler/typed:Body", ptr %t120, i32 0, i32 2
  %t124 = load i32, ptr %t123, !tbaa !23
  %t125 = load ptr, ptr %l64, !tbaa !29
  %t127 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t125, i32 %t124)
  store i32 %t127, ptr %l72
  br label %bb34
bb34:
  %t128 = load i32, ptr %l72, !range !{i32 0, i32 33}
  %t130 = trunc i64 21 to i32
  %t131 = icmp eq i32 %t128, %t130
  store i1 %t131, ptr %l61, !tbaa !21
  br label %bb35
bb35:
  %t133 = load i1, ptr %l61, !tbaa !21
  br i1 %t133, label %bb36, label %bb37
bb36:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/scope:Scoper", ptr %t134, i32 0, i32 0
  %t137 = load ptr, ptr %t136, !tbaa !29
  %t139 = getelementptr %"compiler/generic:Program", ptr %t137, i32 0, i32 2
  store ptr %t139, ptr %l78, !tbaa !29
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/scope:Scoper", ptr %t140, i32 0, i32 0
  %t143 = load ptr, ptr %t142, !tbaa !29
  %t145 = getelementptr %"compiler/generic:Program", ptr %t143, i32 0, i32 2
  store ptr %t145, ptr %l81, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/scope:Scoper", ptr %t146, i32 0, i32 26
  %t149 = load ptr, ptr %t148, !tbaa !29
  %t151 = icmp eq ptr %t149, null
  br i1 %t151, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb43
bb38:
  call void @__olang_check_failed(ptr @olang_loc_a48607f77104f946_b5a91344bffd8f22)
  unreachable
bb39:
  br label %bb40
bb40:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/scope:Scoper", ptr %t153, i32 0, i32 26
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Body", ptr %t156, i32 0, i32 2
  %t160 = load i32, ptr %t159, !tbaa !23
  %t161 = load ptr, ptr %l81, !tbaa !29
  %t163 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t161, i32 %t160)
  store i32 %t163, ptr %l89
  br label %bb41
bb41:
  %t164 = load ptr, ptr %l78, !tbaa !29
  %t165 = load i32, ptr %l89, !tbaa !23
  %t166 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t164, i32 %t165)
  store i32 %t166, ptr %l90
  br label %bb42
bb42:
  %t167 = load i32, ptr %l90, !range !{i32 0, i32 33}
  %t169 = trunc i64 22 to i32
  %t170 = icmp eq i32 %t167, %t169
  %t172 = xor i1 %t170, true
  store i1 %t172, ptr %l75, !tbaa !21
  br label %bb43
bb43:
  %t174 = load i1, ptr %l75, !tbaa !21
  br i1 %t174, label %bb44, label %bb45
bb44:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteResBind(ptr %v0, ptr %v1, ptr %t175, ptr %t176)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t179 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 0
  %t180 = load i32, ptr %t179, !range !{i32 0, i32 5}
  %t182 = trunc i64 3 to i32
  %t183 = icmp eq i32 %t180, %t182
  %t185 = xor i1 %t183, true
  br i1 %t185, label %bb48, label %bb49
bb48:
  br label %ret
bb49:
  br label %bb50
bb50:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/scope:Scoper", ptr %t187, i32 0, i32 6
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/scope:Scoper", ptr %t190, i32 0, i32 27
  %t193 = load i64, ptr %t192, !tbaa !24
  %t196 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v0, ptr %t189, i64 %t193)
  store ptr %t196, ptr %l103
  br label %bb51
bb51:
  %t197 = load ptr, ptr %l103, !tbaa !29
  %t199 = getelementptr %"compiler/scope:summary", ptr %t197, i32 0, i32 17
  store i1 true, ptr %t199, !tbaa !21
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t201 = load i32, ptr %l3, !tbaa !23
  %t204 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %t200, i32 %t201)
  store i1 %t204, ptr %l107
  br label %bb52
bb52:
  %t205 = load i1, ptr %l107, !tbaa !21
  store i1 %t205, ptr %l7, !tbaa !21
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i64, ptr %l1, !tbaa !24
  %t210 = call { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultMark(ptr %v0, ptr %t206, i64 %t207)
  store { i64, [1 x i64] } %t210, ptr %l110
  br label %bb53
bb53:
  %t211 = load { i64, [1 x i64] }, ptr %l110
  %t214 = extractvalue { i64, [1 x i64] } %t211, 0
  %t215 = icmp eq i64 %t214, 2
  br i1 %t215, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb61
bb56:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l113, !tbaa !29
  %t218 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 1
  %t219 = load { i64, [2 x i64] }, ptr %t218
  store { i64, [2 x i64] } %t219, ptr %l114
  %t220 = load { i64, [2 x i64] }, ptr %l5
  %t222 = extractvalue { i64, [2 x i64] } %t220, 0
  %t223 = icmp eq i64 %t222, 0
  %t225 = xor i1 %t223, true
  br i1 %t225, label %bb57, label %bb58
bb57:
  %t227 = load { i64, [2 x i64] }, ptr %l5
  store { i64, [2 x i64] } %t227, ptr %l118
  br label %bb59
bb58:
  store { i64, [2 x i64] } zeroinitializer, ptr %t229
  %t230 = getelementptr { i64, [2 x i64] }, ptr %t229, i32 0, i32 0
  store i64 3, ptr %t230
  %t231 = load { i64, [2 x i64] }, ptr %t229
  store { i64, [2 x i64] } %t231, ptr %l118
  br label %bb59
bb59:
  %t233 = load i1, ptr %l7, !tbaa !21
  %t234 = load ptr, ptr %l2, !tbaa !29
  %t235 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  %t236 = load ptr, ptr %l113, !tbaa !29
  %t237 = load { i64, [2 x i64] }, ptr %l114
  %t238 = load { i64, [2 x i64] }, ptr %l118
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t236, { i64, [2 x i64] } %t237, { i64, [2 x i64] } %t238, i1 %t233, ptr %t234, i64 %t235)
  br label %bb60
bb60:
  br label %bb67
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb66
bb64:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/scope:Val", ptr %l6, i32 0, i32 1
  %t244 = load { i64, [2 x i64] }, ptr %t243
  %t245 = load { i64, [2 x i64] }, ptr %l5
  %t246 = load i1, ptr %l7, !tbaa !21
  %t247 = load ptr, ptr %l2, !tbaa !29
  %t248 = load i64, ptr @G_2ecompiler_2fscope_2eFitReturn, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %t242, { i64, [2 x i64] } %t244, { i64, [2 x i64] } %t245, i1 %t246, ptr %t247, i64 %t248)
  br label %bb65
bb65:
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_3199956179aa6dd4_40cdc1669d0af040)
  unreachable
bb67:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca i64
  %l39 = alloca i64
  %l41 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i1
  %l53 = alloca ptr
  %l54 = alloca i1
  %l62 = alloca i1
  %l64 = alloca i1
  %l69 = alloca i64
  %l73 = alloca ptr
  %l75 = alloca i64
  %l76 = alloca ptr
  %l77 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l101 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l111 = alloca i1
  %l124 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i1
  %l146 = alloca { i64, ptr }
  %l155 = alloca ptr
  %l156 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l184 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca i1
  %l211 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  %l245 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca i1
  %l272 = alloca { i64, ptr }
  %l281 = alloca ptr
  %l282 = alloca i1
  %l287 = alloca ptr
  %l288 = alloca i1
  %l300 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca i1
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
  store i1 true, ptr %l50, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  store i1 %t7, ptr %l50, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l50, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l53, !tbaa !29
  store i1 false, ptr %l54, !tbaa !21
  %t11 = load ptr, ptr %l53, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb7, label %bb8
bb7:
  %t14 = load ptr, ptr %l53, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 18}
  %t17 = icmp eq i64 %t15, 3
  store i1 %t17, ptr %l54, !tbaa !21
  br label %bb8
bb8:
  %t18 = load i1, ptr %l54, !tbaa !21
  br i1 %t18, label %bb9, label %bb10
bb9:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr { i64, [5 x i64] }, ptr %t19, i32 0, i32 1
  %t22 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t21, i32 0, i32 1
  %t23 = load i32, ptr %t22
  store i32 %t23, ptr %l3, !tbaa !23
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t27, i32 0, i32 2
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l4, !tbaa !29
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t31)
  store i1 %t33, ptr %l62
  br label %bb12
bb12:
  %t34 = load i1, ptr %l62, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/generic:Program", ptr %t40, i32 0, i32 2
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t42, i32 %t43)
  store i64 %t46, ptr %l69
  br label %bb15
bb14:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb16
bb15:
  %t47 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t48 = load i64, ptr %l69, !tbaa !24
  %t50 = and i64 %t48, %t47
  %t52 = icmp ne i64 %t50, 0
  store i1 %t52, ptr %l64, !tbaa !21
  br label %bb16
bb16:
  %t54 = load i1, ptr %l64, !tbaa !21
  br i1 %t54, label %bb17, label %bb18
bb17:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l73, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = call i64 @compiler_2fscope_2eflRoot(ptr %v1, ptr %t56)
  store i64 %t58, ptr %l75
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t59 = load ptr, ptr %l73, !tbaa !29
  %t60 = load i64, ptr %l75, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %t59, i64 %t60)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb168
bb22:
  %t61 = load ptr, ptr %l1, !tbaa !29
  store ptr %t61, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t62 = load ptr, ptr %l76, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t65 = load ptr, ptr %l76, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 18}
  %t68 = icmp eq i64 %t66, 5
  store i1 %t68, ptr %l77, !tbaa !21
  br label %bb24
bb24:
  %t69 = load i1, ptr %l77, !tbaa !21
  br i1 %t69, label %bb25, label %bb26
bb25:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr { i64, [5 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73
  store ptr %t74, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Promote", ptr %t77, i32 0, i32 0
  %t80 = load ptr, ptr %t79, !tbaa !29
  %t82 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t76, ptr %t80, i64 %t82)
  br label %bb28
bb28:
  br label %bb168
bb29:
  %t86 = load ptr, ptr %l1, !tbaa !29
  store ptr %t86, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t87 = load ptr, ptr %l87, !tbaa !29
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %bb30, label %bb31
bb30:
  %t90 = load ptr, ptr %l87, !tbaa !29
  %t91 = load i64, ptr %t90, !range !{i64 0, i64 18}
  %t93 = icmp eq i64 %t91, 6
  store i1 %t93, ptr %l88, !tbaa !21
  br label %bb31
bb31:
  %t94 = load i1, ptr %l88, !tbaa !21
  br i1 %t94, label %bb32, label %bb33
bb32:
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t97, i32 0, i32 2
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t101 = load ptr, ptr %l6, !tbaa !29
  %t103 = getelementptr %"compiler/typed:Call", ptr %t101, i32 0, i32 1
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t106 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 0
  store i64 %t108, ptr %l9, !tbaa !24
  br label %bb35
bb35:
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t118 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t118, ptr %l101, !tbaa !27
  %t119 = load i64, ptr %l8, !tbaa !24
  %t121 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = getelementptr ptr, ptr %t122, i64 %t119
  %t124 = load ptr, ptr %t123, !tbaa !39
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t126, ptr %t124, i64 %t129)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = add i64 %t133, 1
  store i64 %t135, ptr %l8, !tbaa !24
  br label %bb35
bb41:
  br label %bb168
bb42:
  %t137 = load ptr, ptr %l1, !tbaa !29
  store ptr %t137, ptr %l110, !tbaa !29
  store i1 false, ptr %l111, !tbaa !21
  %t138 = load ptr, ptr %l110, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb43, label %bb44
bb43:
  %t141 = load ptr, ptr %l110, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 18}
  %t144 = icmp eq i64 %t142, 7
  store i1 %t144, ptr %l111, !tbaa !21
  br label %bb44
bb44:
  %t145 = load i1, ptr %l111, !tbaa !21
  br i1 %t145, label %bb45, label %bb46
bb45:
  %t146 = load ptr, ptr %l1, !tbaa !29
  %t148 = getelementptr { i64, [5 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t148, i32 0, i32 2
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l11, !tbaa !29
  br label %bb47
bb46:
  br label %bb55
bb47:
  %t152 = load ptr, ptr %l11, !tbaa !29
  %t154 = getelementptr %"compiler/typed:Make", ptr %t152, i32 0, i32 2
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t157 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  store i64 %t159, ptr %l14, !tbaa !24
  br label %bb48
bb48:
  %t161 = load i64, ptr %l13, !tbaa !24
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = icmp slt i64 %t161, %t162
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb49, label %bb50
bb49:
  br label %bb54
bb50:
  br label %bb51
bb51:
  %t169 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t169, ptr %l124, !tbaa !27
  %t170 = load i64, ptr %l13, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr ptr, ptr %t173, i64 %t170
  %t175 = load ptr, ptr %t174, !tbaa !39
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t180 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t177, ptr %t175, i64 %t180)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t184 = load i64, ptr %l13, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l13, !tbaa !24
  br label %bb48
bb54:
  br label %bb168
bb55:
  %t188 = load ptr, ptr %l1, !tbaa !29
  store ptr %t188, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t189 = load ptr, ptr %l133, !tbaa !29
  %t190 = icmp ne ptr %t189, null
  br i1 %t190, label %bb56, label %bb57
bb56:
  %t192 = load ptr, ptr %l133, !tbaa !29
  %t193 = load i64, ptr %t192, !range !{i64 0, i64 18}
  %t195 = icmp eq i64 %t193, 9
  store i1 %t195, ptr %l134, !tbaa !21
  br label %bb57
bb57:
  %t196 = load i1, ptr %l134, !tbaa !21
  br i1 %t196, label %bb58, label %bb59
bb58:
  %t197 = load ptr, ptr %l1, !tbaa !29
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t197, i32 0, i32 1
  %t200 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t199, i32 0, i32 4
  %t201 = load { i64, ptr }, ptr %t200
  store { i64, ptr } %t201, ptr %l16, !tbaa !27
  br label %bb60
bb59:
  br label %bb68
bb60:
  %t203 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t203, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t205 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 0
  store i64 %t207, ptr %l19, !tbaa !24
  br label %bb61
bb61:
  %t209 = load i64, ptr %l18, !tbaa !24
  %t210 = load i64, ptr %l19, !tbaa !24
  %t213 = icmp slt i64 %t209, %t210
  %t215 = xor i1 %t213, true
  br i1 %t215, label %bb62, label %bb63
bb62:
  br label %bb67
bb63:
  br label %bb64
bb64:
  %t217 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t217, ptr %l146, !tbaa !27
  %t218 = load i64, ptr %l18, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr ptr, ptr %t221, i64 %t218
  %t223 = load ptr, ptr %t222, !tbaa !39
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t228 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t225, ptr %t223, i64 %t228)
  br label %bb65
bb65:
  br label %bb66
bb66:
  %t232 = load i64, ptr %l18, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l18, !tbaa !24
  br label %bb61
bb67:
  br label %bb168
bb68:
  %t236 = load ptr, ptr %l1, !tbaa !29
  store ptr %t236, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t237 = load ptr, ptr %l155, !tbaa !29
  %t238 = icmp ne ptr %t237, null
  br i1 %t238, label %bb69, label %bb70
bb69:
  %t240 = load ptr, ptr %l155, !tbaa !29
  %t241 = load i64, ptr %t240, !range !{i64 0, i64 18}
  %t243 = icmp eq i64 %t241, 11
  store i1 %t243, ptr %l156, !tbaa !21
  br label %bb70
bb70:
  %t244 = load i1, ptr %l156, !tbaa !21
  br i1 %t244, label %bb71, label %bb72
bb71:
  %t245 = load ptr, ptr %l1, !tbaa !29
  %t247 = getelementptr { i64, [5 x i64] }, ptr %t245, i32 0, i32 1
  %t248 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t247, i32 0, i32 2
  %t249 = load ptr, ptr %t248
  store ptr %t249, ptr %l21, !tbaa !29
  br label %bb73
bb72:
  br label %bb76
bb73:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load ptr, ptr %l21, !tbaa !29
  %t254 = getelementptr %"compiler/typed:Cond", ptr %t252, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !29
  %t256 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t251, ptr %t255, i64 %t256)
  br label %bb74
bb74:
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load ptr, ptr %l21, !tbaa !29
  %t263 = getelementptr %"compiler/typed:Cond", ptr %t261, i32 0, i32 2
  %t264 = load ptr, ptr %t263, !tbaa !29
  %t266 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t260, ptr %t264, i64 %t266)
  br label %bb75
bb75:
  br label %bb168
bb76:
  %t270 = load ptr, ptr %l1, !tbaa !29
  store ptr %t270, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t271 = load ptr, ptr %l170, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb77, label %bb78
bb77:
  %t274 = load ptr, ptr %l170, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 18}
  %t277 = icmp eq i64 %t275, 12
  store i1 %t277, ptr %l171, !tbaa !21
  br label %bb78
bb78:
  %t278 = load i1, ptr %l171, !tbaa !21
  br i1 %t278, label %bb79, label %bb80
bb79:
  %t279 = load ptr, ptr %l1, !tbaa !29
  %t281 = getelementptr { i64, [5 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t281, i32 0, i32 2
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l22, !tbaa !29
  br label %bb81
bb80:
  br label %bb90
bb81:
  %t285 = load ptr, ptr %l22, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Seq", ptr %t285, i32 0, i32 0
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l23, !tbaa !27
  store i64 0, ptr %l24, !tbaa !24
  %t290 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t290, 0
  store i64 %t292, ptr %l25, !tbaa !24
  br label %bb82
bb82:
  %t294 = load i64, ptr %l24, !tbaa !24
  %t295 = load i64, ptr %l25, !tbaa !24
  %t298 = icmp slt i64 %t294, %t295
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb83, label %bb84
bb83:
  br label %bb88
bb84:
  br label %bb85
bb85:
  %t302 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t302, ptr %l184, !tbaa !27
  %t303 = load i64, ptr %l24, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr ptr, ptr %t306, i64 %t303
  %t308 = load ptr, ptr %t307, !tbaa !39
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %t310, ptr %t308, i64 %t313)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t317 = load i64, ptr %l24, !tbaa !24
  %t319 = add i64 %t317, 1
  store i64 %t319, ptr %l24, !tbaa !24
  br label %bb82
bb88:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t322 = load ptr, ptr %l22, !tbaa !29
  %t324 = getelementptr %"compiler/typed:Seq", ptr %t322, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !29
  %t326 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t321, ptr %t325, i64 %t326)
  br label %bb89
bb89:
  br label %bb168
bb90:
  %t330 = load ptr, ptr %l1, !tbaa !29
  store ptr %t330, ptr %l197, !tbaa !29
  store i1 false, ptr %l198, !tbaa !21
  %t331 = load ptr, ptr %l197, !tbaa !29
  %t332 = icmp ne ptr %t331, null
  br i1 %t332, label %bb91, label %bb92
bb91:
  %t334 = load ptr, ptr %l197, !tbaa !29
  %t335 = load i64, ptr %t334, !range !{i64 0, i64 18}
  %t337 = icmp eq i64 %t335, 13
  store i1 %t337, ptr %l198, !tbaa !21
  br label %bb92
bb92:
  %t338 = load i1, ptr %l198, !tbaa !21
  br i1 %t338, label %bb93, label %bb94
bb93:
  %t339 = load ptr, ptr %l1, !tbaa !29
  %t341 = getelementptr { i64, [5 x i64] }, ptr %t339, i32 0, i32 1
  %t342 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t341, i32 0, i32 2
  %t343 = load ptr, ptr %t342
  store ptr %t343, ptr %l27, !tbaa !29
  br label %bb95
bb94:
  br label %bb118
bb95:
  %t345 = load ptr, ptr %l27, !tbaa !29
  %t347 = getelementptr %"compiler/typed:Match", ptr %t345, i32 0, i32 0
  %t348 = load { i64, ptr }, ptr %t347, !tbaa !27
  store { i64, ptr } %t348, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t350 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t352 = extractvalue { i64, ptr } %t350, 0
  store i64 %t352, ptr %l30, !tbaa !24
  br label %bb96
bb96:
  %t354 = load i64, ptr %l29, !tbaa !24
  %t355 = load i64, ptr %l30, !tbaa !24
  %t358 = icmp slt i64 %t354, %t355
  %t360 = xor i1 %t358, true
  br i1 %t360, label %bb97, label %bb98
bb97:
  br label %bb102
bb98:
  br label %bb99
bb99:
  %t362 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t362, ptr %l211, !tbaa !27
  %t363 = load i64, ptr %l29, !tbaa !24
  %t365 = getelementptr { i64, ptr }, ptr %l211, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr ptr, ptr %t366, i64 %t363
  %t368 = load ptr, ptr %t367, !tbaa !39
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %t370, ptr %t368, i64 %t373)
  br label %bb100
bb100:
  br label %bb101
bb101:
  %t377 = load i64, ptr %l29, !tbaa !24
  %t379 = add i64 %t377, 1
  store i64 %t379, ptr %l29, !tbaa !24
  br label %bb96
bb102:
  %t381 = load ptr, ptr %l27, !tbaa !29
  %t383 = getelementptr %"compiler/typed:Match", ptr %t381, i32 0, i32 1
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !27
  store { i64, ptr } %t384, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t386 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t388 = extractvalue { i64, ptr } %t386, 0
  store i64 %t388, ptr %l34, !tbaa !24
  br label %bb103
bb103:
  %t390 = load i64, ptr %l33, !tbaa !24
  %t391 = load i64, ptr %l34, !tbaa !24
  %t394 = icmp slt i64 %t390, %t391
  %t396 = xor i1 %t394, true
  br i1 %t396, label %bb104, label %bb105
bb104:
  br label %bb110
bb105:
  br label %bb106
bb106:
  %t398 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t398, ptr %l228, !tbaa !27
  %t399 = load i64, ptr %l33, !tbaa !24
  %t401 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t402 = load ptr, ptr %t401, !tbaa !27
  %t403 = getelementptr ptr, ptr %t402, i64 %t399
  %t404 = load ptr, ptr %t403, !tbaa !39
  store ptr %t404, ptr %l35, !tbaa !29
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load ptr, ptr %l35, !tbaa !29
  %t409 = getelementptr %"compiler/typed:Arm", ptr %t407, i32 0, i32 3
  %t410 = load ptr, ptr %t409, !tbaa !29
  %t411 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t406, ptr %t410, i64 %t411)
  br label %bb107
bb107:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t416 = load ptr, ptr %l35, !tbaa !29
  %t418 = getelementptr %"compiler/typed:Arm", ptr %t416, i32 0, i32 4
  %t419 = load ptr, ptr %t418, !tbaa !29
  %t420 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t415, ptr %t419, i64 %t420)
  br label %bb108
bb108:
  br label %bb109
bb109:
  %t424 = load i64, ptr %l33, !tbaa !24
  %t426 = add i64 %t424, 1
  store i64 %t426, ptr %l33, !tbaa !24
  br label %bb103
bb110:
  %t428 = load ptr, ptr %l27, !tbaa !29
  %t430 = getelementptr %"compiler/typed:Match", ptr %t428, i32 0, i32 2
  %t431 = load ptr, ptr %t430, !tbaa !29
  %t433 = icmp eq ptr %t431, null
  %t435 = xor i1 %t433, true
  br i1 %t435, label %bb111, label %bb112
bb111:
  %t437 = load ptr, ptr %l0, !tbaa !29
  store ptr %t437, ptr %l245, !tbaa !29
  %t438 = load ptr, ptr %l27, !tbaa !29
  %t440 = getelementptr %"compiler/typed:Match", ptr %t438, i32 0, i32 2
  %t441 = load ptr, ptr %t440, !tbaa !29
  %t443 = icmp eq ptr %t441, null
  br i1 %t443, label %bb113, label %bb114
bb112:
  br label %bb117
bb113:
  call void @__olang_check_failed(ptr @olang_loc_dba8079c89f8629e_846fd2cd4d9758c2)
  unreachable
bb114:
  br label %bb115
bb115:
  %t445 = load ptr, ptr %l27, !tbaa !29
  %t447 = getelementptr %"compiler/typed:Match", ptr %t445, i32 0, i32 2
  %t448 = load ptr, ptr %t447, !tbaa !29
  %t451 = getelementptr %"compiler/typed:Arm", ptr %t448, i32 0, i32 3
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t453 = load i64, ptr %l2, !tbaa !24
  %t454 = load ptr, ptr %l245, !tbaa !29
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t454, ptr %t452, i64 %t453)
  br label %bb116
bb116:
  br label %bb117
bb117:
  br label %bb168
bb118:
  %t457 = load ptr, ptr %l1, !tbaa !29
  store ptr %t457, ptr %l254, !tbaa !29
  store i1 false, ptr %l255, !tbaa !21
  %t458 = load ptr, ptr %l254, !tbaa !29
  %t459 = icmp ne ptr %t458, null
  br i1 %t459, label %bb119, label %bb120
bb119:
  %t461 = load ptr, ptr %l254, !tbaa !29
  %t462 = load i64, ptr %t461, !range !{i64 0, i64 18}
  %t464 = icmp eq i64 %t462, 14
  store i1 %t464, ptr %l255, !tbaa !21
  br label %bb120
bb120:
  %t465 = load i1, ptr %l255, !tbaa !21
  br i1 %t465, label %bb121, label %bb122
bb121:
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t468 = getelementptr { i64, [5 x i64] }, ptr %t466, i32 0, i32 1
  %t469 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t468, i32 0, i32 2
  %t470 = load ptr, ptr %t469
  store ptr %t470, ptr %l36, !tbaa !29
  br label %bb123
bb122:
  br label %bb132
bb123:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t473 = load ptr, ptr %l36, !tbaa !29
  %t475 = getelementptr %"compiler/typed:Try", ptr %t473, i32 0, i32 0
  %t476 = load ptr, ptr %t475, !tbaa !29
  %t477 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t472, ptr %t476, i64 %t477)
  br label %bb124
bb124:
  %t481 = load ptr, ptr %l36, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Try", ptr %t481, i32 0, i32 1
  %t484 = load { i64, ptr }, ptr %t483, !tbaa !27
  store { i64, ptr } %t484, ptr %l37, !tbaa !27
  store i64 0, ptr %l38, !tbaa !24
  %t486 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t488 = extractvalue { i64, ptr } %t486, 0
  store i64 %t488, ptr %l39, !tbaa !24
  br label %bb125
bb125:
  %t490 = load i64, ptr %l38, !tbaa !24
  %t491 = load i64, ptr %l39, !tbaa !24
  %t494 = icmp slt i64 %t490, %t491
  %t496 = xor i1 %t494, true
  br i1 %t496, label %bb126, label %bb127
bb126:
  br label %bb131
bb127:
  br label %bb128
bb128:
  %t498 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t498, ptr %l272, !tbaa !27
  %t499 = load i64, ptr %l38, !tbaa !24
  %t501 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr ptr, ptr %t502, i64 %t499
  %t504 = load ptr, ptr %t503, !tbaa !39
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t509 = getelementptr %"compiler/typed:Clause", ptr %t504, i32 0, i32 3
  %t510 = load ptr, ptr %t509, !tbaa !29
  %t511 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %t506, ptr %t510, i64 %t511)
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t515 = load i64, ptr %l38, !tbaa !24
  %t517 = add i64 %t515, 1
  store i64 %t517, ptr %l38, !tbaa !24
  br label %bb125
bb131:
  br label %bb168
bb132:
  %t519 = load ptr, ptr %l1, !tbaa !29
  store ptr %t519, ptr %l281, !tbaa !29
  store i1 false, ptr %l282, !tbaa !21
  %t520 = load ptr, ptr %l281, !tbaa !29
  %t521 = icmp ne ptr %t520, null
  br i1 %t521, label %bb133, label %bb134
bb133:
  %t523 = load ptr, ptr %l281, !tbaa !29
  %t524 = load i64, ptr %t523, !range !{i64 0, i64 18}
  %t526 = icmp eq i64 %t524, 15
  store i1 %t526, ptr %l282, !tbaa !21
  br label %bb134
bb134:
  %t527 = load i1, ptr %l282, !tbaa !21
  br i1 %t527, label %bb135, label %bb136
bb135:
  %t528 = load ptr, ptr %l1, !tbaa !29
  %t530 = getelementptr { i64, [5 x i64] }, ptr %t528, i32 0, i32 1
  %t531 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t530, i32 0, i32 2
  %t532 = load ptr, ptr %t531
  store ptr %t532, ptr %l41, !tbaa !29
  br label %bb137
bb136:
  br label %bb156
bb137:
  %t534 = load ptr, ptr %l41, !tbaa !29
  store ptr %t534, ptr %l287, !tbaa !29
  store i1 false, ptr %l288, !tbaa !21
  %t535 = load ptr, ptr %l287, !tbaa !29
  %t536 = icmp ne ptr %t535, null
  br i1 %t536, label %bb138, label %bb139
bb138:
  %t538 = load ptr, ptr %l287, !tbaa !29
  %t539 = load i64, ptr %t538, !range !{i64 0, i64 3}
  %t541 = icmp eq i64 %t539, 1
  store i1 %t541, ptr %l288, !tbaa !21
  br label %bb139
bb139:
  %t542 = load i1, ptr %l288, !tbaa !21
  br i1 %t542, label %bb140, label %bb141
bb140:
  %t543 = load ptr, ptr %l41, !tbaa !29
  %t545 = getelementptr { i64, [4 x i64] }, ptr %t543, i32 0, i32 1
  %t546 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t545, i32 0, i32 1
  %t547 = load { i64, ptr }, ptr %t546
  store { i64, ptr } %t547, ptr %l42, !tbaa !27
  br label %bb142
bb141:
  br label %bb150
bb142:
  %t549 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t549, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t551 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t553 = extractvalue { i64, ptr } %t551, 0
  store i64 %t553, ptr %l45, !tbaa !24
  br label %bb143
bb143:
  %t555 = load i64, ptr %l44, !tbaa !24
  %t556 = load i64, ptr %l45, !tbaa !24
  %t559 = icmp slt i64 %t555, %t556
  %t561 = xor i1 %t559, true
  br i1 %t561, label %bb144, label %bb145
bb144:
  br label %bb149
bb145:
  br label %bb146
bb146:
  %t563 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t563, ptr %l300, !tbaa !27
  %t564 = load i64, ptr %l44, !tbaa !24
  %t566 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t567 = load ptr, ptr %t566, !tbaa !27
  %t568 = getelementptr ptr, ptr %t567, i64 %t564
  %t569 = load ptr, ptr %t568, !tbaa !39
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t574 = getelementptr %"compiler/typed:Capture", ptr %t569, i32 0, i32 1
  %t575 = load ptr, ptr %t574, !tbaa !29
  %t577 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t571, ptr %t575, i64 %t577)
  br label %bb147
bb147:
  br label %bb148
bb148:
  %t581 = load i64, ptr %l44, !tbaa !24
  %t583 = add i64 %t581, 1
  store i64 %t583, ptr %l44, !tbaa !24
  br label %bb143
bb149:
  br label %bb155
bb150:
  br i1 true, label %bb151, label %bb152
bb151:
  br label %bb153
bb152:
  br label %bb154
bb153:
  br label %bb155
bb154:
  call void @__olang_check_failed(ptr @olang_loc_dbab6e035b5797c_e736089fb75e21e0)
  unreachable
bb155:
  br label %bb168
bb156:
  %t585 = load ptr, ptr %l1, !tbaa !29
  store ptr %t585, ptr %l310, !tbaa !29
  store i1 false, ptr %l311, !tbaa !21
  %t586 = load ptr, ptr %l310, !tbaa !29
  %t587 = icmp ne ptr %t586, null
  br i1 %t587, label %bb157, label %bb158
bb157:
  %t589 = load ptr, ptr %l310, !tbaa !29
  %t590 = load i64, ptr %t589, !range !{i64 0, i64 18}
  %t592 = icmp eq i64 %t590, 17
  store i1 %t592, ptr %l311, !tbaa !21
  br label %bb158
bb158:
  %t593 = load i1, ptr %l311, !tbaa !21
  br i1 %t593, label %bb159, label %bb160
bb159:
  %t594 = load ptr, ptr %l1, !tbaa !29
  %t596 = getelementptr { i64, [5 x i64] }, ptr %t594, i32 0, i32 1
  %t597 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t596, i32 0, i32 2
  %t598 = load ptr, ptr %t597
  store ptr %t598, ptr %l47, !tbaa !29
  br label %bb161
bb160:
  br label %bb163
bb161:
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t601 = load ptr, ptr %l47, !tbaa !29
  %t603 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlExpr(ptr %v0, ptr %v1, ptr %t600, ptr %t601, i64 %t603)
  br label %bb162
bb162:
  br label %bb168
bb163:
  br i1 true, label %bb164, label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb167
bb166:
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_207e75e919c85f37_93e6eeba566436db)
  unreachable
bb168:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetAtCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { i64, [2 x i64] }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i1
  %l19 = alloca ptr
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca i64
  %l35 = alloca ptr
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t7 = load ptr, ptr %l9, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l10, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 1
  %t24 = load i32, ptr %l3, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t23, i64 %t26)
  store ptr %t29, ptr %l19
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l19, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Body", ptr %t30, i32 0, i32 1
  %t33 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t33, ptr %l4
  %t35 = load { i64, [2 x i64] }, ptr %l4
  %t37 = extractvalue { i64, [2 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 0
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = getelementptr { i64, [2 x i64] }, ptr %l4, i32 0, i32 1
  %t41 = getelementptr { i64 }, ptr %t40, i32 0, i32 0
  %t42 = load i64, ptr %t41
  store i64 %t42, ptr %l5, !tbaa !24
  br label %bb9
bb8:
  br label %bb18
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t49 = getelementptr %"compiler/generic:Program", ptr %t47, i32 0, i32 0
  %t50 = load ptr, ptr %t49, !tbaa !29
  %t52 = getelementptr %"compiler/load:Loader", ptr %t50, i32 0, i32 3
  %t53 = load ptr, ptr %t52, !tbaa !29
  store ptr %t53, ptr %l28, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/scope:Scoper", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  store ptr %t57, ptr %l30, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/scope:Scoper", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t65 = call i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l34
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l30, !tbaa !29
  %t67 = load i64, ptr %l34, !tbaa !24
  %t68 = call ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %s2, ptr %t66, i64 %t67)
  store ptr %t68, ptr %l35
  br label %bb11
bb11:
  %t69 = load ptr, ptr %l35, !tbaa !29
  %t71 = getelementptr %"compiler/ast:Func", ptr %t69, i32 0, i32 2
  %t72 = load i32, ptr %t71, !tbaa !23
  %t73 = load ptr, ptr %l28, !tbaa !29
  %t75 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t73, i32 %t72)
  store { i64, ptr } %t75, ptr %l38
  br label %bb12
bb12:
  %t76 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t76, ptr %l6, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t77, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t79, ptr %l40
  br label %bb13
bb13:
  %t80 = load i1, ptr %l40, !tbaa !21
  br i1 %t80, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb17
bb15:
  %t81 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t83 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t81, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t83, ptr %l43
  br label %bb16
bb16:
  %t84 = load i1, ptr %l43, !tbaa !21
  store i1 %t84, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t85 = load i1, ptr %l41, !tbaa !21
  store i1 %t85, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_3858c2e20d1891a9_b858c54a1ad247bd)
  unreachable
bb23:
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c9162f08edbfbed8_2a5892f27af908c)
  unreachable
bb29:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetFieldMark(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [1 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca ptr
  %l55 = alloca i32
  %l60 = alloca i32
  %l64 = alloca i1
  %l69 = alloca i32
  %l73 = alloca i1
  %l74 = alloca i64
  %l78 = alloca ptr
  %l81 = alloca i64
  %l86 = alloca ptr
  %l90 = alloca i32
  %l95 = alloca ptr
  %l99 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i64, ptr %l17, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l24, !tbaa !24
  store i64 %t33, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l21, !tbaa !24
  store i64 %t34, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb41
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l9, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/scope:Scoper", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l9, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l45
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l45, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Body", ptr %t60, i32 0, i32 1
  %t63 = load { i64, [2 x i64] }, ptr %t62
  store { i64, [2 x i64] } %t63, ptr %l10
  %t65 = load { i64, [2 x i64] }, ptr %l10
  %t67 = extractvalue { i64, [2 x i64] } %t65, 0
  %t68 = icmp eq i64 %t67, 1
  br i1 %t68, label %bb13, label %bb14
bb13:
  %t70 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t71 = getelementptr { i32, i32 }, ptr %t70, i32 0, i32 0
  %t72 = load i32, ptr %t71
  store i32 %t72, ptr %l11, !tbaa !23
  br label %bb15
bb14:
  br label %bb34
bb15:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/scope:Scoper", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/generic:Program", ptr %t77, i32 0, i32 2
  %t80 = load i32, ptr %l11, !tbaa !23
  %t83 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t79, i32 %t80)
  store i32 %t83, ptr %l55
  br label %bb16
bb16:
  %t84 = load i32, ptr %l55, !tbaa !23
  store i32 %t84, ptr %l12, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/scope:Scoper", ptr %t85, i32 0, i32 0
  %t88 = load ptr, ptr %t87, !tbaa !29
  %t90 = getelementptr %"compiler/generic:Program", ptr %t88, i32 0, i32 2
  %t91 = load i32, ptr %l12, !tbaa !23
  %t94 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t90, i32 %t91)
  store i32 %t94, ptr %l60
  br label %bb17
bb17:
  %t95 = load i32, ptr %l60, !range !{i32 0, i32 33}
  %t97 = trunc i64 18 to i32
  %t98 = icmp eq i32 %t95, %t97
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb21
bb19:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/scope:Scoper", ptr %t102, i32 0, i32 0
  %t105 = load ptr, ptr %t104, !tbaa !29
  %t107 = getelementptr %"compiler/generic:Program", ptr %t105, i32 0, i32 2
  %t108 = load i32, ptr %l12, !tbaa !23
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t107, i32 %t108)
  store i32 %t111, ptr %l69
  br label %bb20
bb20:
  %t112 = load i32, ptr %l69, !tbaa !23
  %t113 = sext i32 %t112 to i64
  %t117 = icmp ne i64 %t113, %a1
  store i1 %t117, ptr %l64, !tbaa !21
  br label %bb21
bb21:
  %t119 = load i1, ptr %l64, !tbaa !21
  br i1 %t119, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb26
bb23:
  %t120 = load i64, ptr %l2, !tbaa !24
  store i64 %t120, ptr %l74, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/scope:Scoper", ptr %t121, i32 0, i32 1
  %t124 = load i64, ptr %l9, !tbaa !24
  %t127 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t123, i64 %t124)
  store ptr %t127, ptr %l78
  br label %bb24
bb24:
  %t128 = load ptr, ptr %l78, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Body", ptr %t128, i32 0, i32 10
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t130)
  store i64 %t132, ptr %l81
  br label %bb25
bb25:
  %t133 = load i64, ptr %l74, !tbaa !24
  %t134 = load i64, ptr %l81, !tbaa !24
  %t135 = icmp sge i64 %t133, %t134
  store i1 %t135, ptr %l73, !tbaa !21
  br label %bb26
bb26:
  %t137 = load i1, ptr %l73, !tbaa !21
  br i1 %t137, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/scope:Scoper", ptr %t138, i32 0, i32 1
  %t141 = load i64, ptr %l9, !tbaa !24
  %t144 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t140, i64 %t141)
  store ptr %t144, ptr %l86
  br label %bb30
bb30:
  %t145 = load ptr, ptr %l86, !tbaa !29
  %t147 = getelementptr %"compiler/typed:Body", ptr %t145, i32 0, i32 10
  %t148 = load i64, ptr %l2, !tbaa !24
  %t151 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %t147, i64 %t148)
  store i32 %t151, ptr %l90
  br label %bb31
bb31:
  %t152 = load i32, ptr %l90, !tbaa !23
  %t153 = sext i32 %t152 to i64
  store i64 %t153, ptr %l13, !tbaa !24
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/scope:Scoper", ptr %t155, i32 0, i32 1
  %t158 = load i64, ptr %l9, !tbaa !24
  %t161 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v0, ptr %t157, i64 %t158)
  store ptr %t161, ptr %l95
  br label %bb32
bb32:
  %t162 = load ptr, ptr %l95, !tbaa !29
  %t164 = getelementptr %"compiler/typed:Body", ptr %t162, i32 0, i32 7
  %t165 = load i64, ptr %l13, !tbaa !24
  %t168 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v0, ptr %t164, i64 %t165)
  store ptr %t168, ptr %l99
  br label %bb33
bb33:
  %t169 = load ptr, ptr %l99, !tbaa !29
  %t174 = getelementptr %"compiler/typed:Local", ptr %t169, i32 0, i32 5
  store { i64, [1 x i64] } %a3, ptr %t174
  br label %bb39
bb34:
  br i1 true, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_5a6d5e4fff6c8f59_c596a548624aa6f5)
  unreachable
bb39:
  br label %bb40
bb40:
  %t175 = load i64, ptr %l8, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l8, !tbaa !24
  br label %bb8
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esplitPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i1
  %l15 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l30 = alloca i1
  %l34 = alloca i1
  %l35 = alloca { i64, [2 x i64] }
  %l37 = alloca { i64, [2 x i64] }
  %l39 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i1 @compiler_2fscope_2eflThroughRef(ptr %v1, ptr %t1)
  store i1 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i1, ptr %l5, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l7, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t6)
  store i32 %t8, ptr %l9
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l7, !tbaa !29
  %t10 = load i32, ptr %l9, !tbaa !23
  %t11 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %t9, i32 %t10)
  store i1 %t11, ptr %l10
  br label %bb5
bb5:
  %t12 = load i1, ptr %l10, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t15 = load i1, ptr %l6, !tbaa !21
  br i1 %t15, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t21 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t17, ptr %t18, i1 true)
  store { i64, [2 x i64] } %t21, ptr %l15
  br label %bb10
bb10:
  %t22 = load { i64, [2 x i64] }, ptr %l15
  store { i64, [2 x i64] } %t22, ptr %l2
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t27 = call { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %t23, ptr %t24, i1 false)
  store { i64, [2 x i64] } %t27, ptr %l18
  br label %bb11
bb11:
  %t28 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t28, ptr %l3
  %t29 = load { i64, [2 x i64] }, ptr %l2
  %t31 = extractvalue { i64, [2 x i64] } %t29, 0
  %t32 = icmp eq i64 %t31, 5
  br i1 %t32, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  %t35 = load { i64, [2 x i64] }, ptr %l2
  %t37 = extractvalue { i64, [2 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 0
  br i1 %t38, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t40 = load { i64, [2 x i64] }, ptr %l2
  %t42 = extractvalue { i64, [2 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 6
  br i1 %t43, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  store i1 false, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_d14ac281d7095de3_5cf23a39181ab0c7)
  unreachable
bb26:
  %t46 = load { i64, [2 x i64] }, ptr %l3
  %t48 = extractvalue { i64, [2 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 0
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb27, label %bb28
bb27:
  %t53 = load { i64, [2 x i64] }, ptr %l3
  %t55 = extractvalue { i64, [2 x i64] } %t53, 0
  %t56 = icmp eq i64 %t55, 6
  %t58 = xor i1 %t56, true
  store i1 %t58, ptr %l30, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb29
bb29:
  %t60 = load i1, ptr %l30, !tbaa !21
  br i1 %t60, label %bb30, label %bb31
bb30:
  %t61 = load { i64, [2 x i64] }, ptr %l2
  store { i64, [2 x i64] } %t61, ptr %l35
  %t62 = load { i64, [2 x i64] }, ptr %l3
  store { i64, [2 x i64] } %t62, ptr %l37
  %t65 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2fscope_3aTerm(ptr %l35, ptr %l37)
  store i1 %t65, ptr %l39
  br label %bb32
bb31:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb33
bb32:
  %t66 = load i1, ptr %l39, !tbaa !21
  %t67 = xor i1 %t66, true
  store i1 %t67, ptr %l34, !tbaa !21
  br label %bb33
bb33:
  %t69 = load i1, ptr %l34, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumPuts(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %t23 = getelementptr %"compiler/scope:summary", ptr %t21, i32 0, i32 7
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
  %t39 = getelementptr %"compiler/scope:summary", ptr %t37, i32 0, i32 7
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
  %t70 = getelementptr %"compiler/scope:summary", ptr %t68, i32 0, i32 7
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
  %t88 = getelementptr %"compiler/scope:summary", ptr %t86, i32 0, i32 7
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

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esumStores(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %t23 = getelementptr %"compiler/scope:summary", ptr %t21, i32 0, i32 6
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
  %t39 = getelementptr %"compiler/scope:summary", ptr %t37, i32 0, i32 6
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
  %t70 = getelementptr %"compiler/scope:summary", ptr %t68, i32 0, i32 6
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
  %t88 = getelementptr %"compiler/scope:summary", ptr %t86, i32 0, i32 6
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

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailDtorRow(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"compiler/scope:Placement"
  %l13 = alloca { i64, ptr }
  %l21 = alloca i64
  %l23 = alloca i64
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca %"compiler/scope:Placement"
  %l35 = alloca %"compiler/scope:Placement"
  %l37 = alloca ptr
  %l42 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %t17 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/scope:Scoper", ptr %t9, i32 0, i32 27
  %t12 = load i64, ptr %t11, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/scope:Scoper", ptr %t13, i32 0, i32 42
  %t16 = load i64, ptr %t15, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t17
  %t18 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 0
  store i64 2, ptr %t18
  %t20 = insertvalue { i64 } undef, i64 %t16, 0
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t17, i32 0, i32 1
  store { i64 } %t20, ptr %t21
  %t22 = load { i64, [2 x i64] }, ptr %t17
  %t26 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %s0, ptr %t8, i64 %t12, { i64, [2 x i64] } %t22)
  store { i64, ptr } %t26, ptr %l13
  br label %bb4
bb4:
  %t27 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t29 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 1
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t32 = add i64 %t28, %t31
  %t33 = extractvalue { i64, ptr } { i64 195, ptr getelementptr inbounds (<{ i64, [195 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 195, ptr getelementptr inbounds (<{ i64, [195 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t35 = add i64 %t32, %t34
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @olang_textcopy(ptr %t36, ptr %t27, i64 %t28)
  %t37 = getelementptr i8, ptr %t36, i64 %t28
  call void @olang_textcopy(ptr %t37, ptr %t30, i64 %t31)
  %t38 = getelementptr i8, ptr %t37, i64 %t31
  call void @olang_textcopy(ptr %t38, ptr %t33, i64 %t34)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t36, 1
  store { i64, ptr } %t40, ptr %l2, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/scope:Scoper", ptr %t42, i32 0, i32 26
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t47 = icmp eq ptr %t45, null
  br i1 %t47, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_e868644b32a63b82_22357fbc60309ea6)
  unreachable
bb6:
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 26
  %t52 = load ptr, ptr %t51, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Body", ptr %t52, i32 0, i32 3
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l21, !tbaa !24
  %t57 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = sext i32 %t58 to i64
  store i64 %t60, ptr %l23, !tbaa !24
  %t61 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t62 = load i32, ptr %t61, !tbaa !23
  %t64 = sext i32 %t62 to i64
  store i64 %t64, ptr %l25, !tbaa !24
  %t65 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t66 = load i32, ptr %t65, !tbaa !23
  %t68 = sext i32 %t66 to i64
  store i64 %t68, ptr %l27, !tbaa !24
  %t69 = ptrtoint ptr %s0 to i64
  store i64 %t69, ptr %l28, !tbaa !24
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t70, label %bb8, label %bb9
bb8:
  %t72 = call ptr @__olang_region_make(ptr %s0)
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l28, !tbaa !24
  br label %bb9
bb9:
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t74, 1
  %t77 = extractvalue { i64, ptr } %t74, 0
  %t78 = load i64, ptr %l28
  %t79 = inttoptr i64 %t78 to ptr
  %t80 = call ptr @__olang_scope_alloc(ptr %t79, i64 %t77)
  call void @olang_textcopy(ptr %t80, ptr %t76, i64 %t77)
  %t81 = insertvalue { i64, ptr } undef, i64 %t77, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr %t80, 1
  store { i64, ptr } %t82, ptr %l31, !tbaa !27
  %t83 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t83, label %bb10, label %bb11
bb10:
  %t85 = load i64, ptr %l28
  %t86 = inttoptr i64 %t85 to ptr
  %t87 = load { i64, ptr }, ptr %l31
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = icmp ne ptr %t89, null
  %t91 = select i1 %t90, ptr %t89, ptr null
  %t92 = icmp eq ptr %t91, %t86
  call void @__olang_region_settle(ptr %t86, i1 %t92)
  br label %bb11
bb11:
  %t93 = load i64, ptr %l21, !tbaa !24
  %t94 = load i64, ptr %l23, !tbaa !24
  %t95 = load i64, ptr %l25, !tbaa !24
  %t96 = load i64, ptr %l27, !tbaa !24
  %t97 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t98 = call %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %s0, i64 %t93, i64 %t94, i64 %t95, i64 %t96, { i64, ptr } %t97)
  store %"compiler/scope:Placement" %t98, ptr %l33
  br label %bb12
bb12:
  %t100 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s0, ptr %l33)
  store %"compiler/scope:Placement" %t100, ptr %l35
  br label %bb13
bb13:
  %t101 = load %"compiler/scope:Placement", ptr %l35
  store %"compiler/scope:Placement" %t101, ptr %l3
  %t102 = getelementptr %"compiler/scope:Placement", ptr %l3, i32 0, i32 5
  store i1 true, ptr %t102, !tbaa !21
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/scope:Scoper", ptr %t103, i32 0, i32 32
  store ptr %t105, ptr %l37, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/scope:Scoper", ptr %t106, i32 0, i32 27
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t111 = load i32, ptr %t110, !tbaa !23
  %t113 = sext i32 %t111 to i64
  %t116 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %t109, i64 %t113)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t116, ptr %l42
  br label %bb14
bb14:
  %t117 = load %"compiler/scope:Placement", ptr %l3
  %t118 = load ptr, ptr %l37, !tbaa !29
  %t119 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l42
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0110f09d6616867ae14b608097fe5c88(ptr %v0, ptr %s0, ptr %t118, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t119, %"compiler/scope:Placement" %t117)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailRows(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/scope:Placement"
  %l25 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i1
  %l42 = alloca i1
  %l43 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca i1
  %l51 = alloca i64
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca i1
  %l62 = alloca i1
  %l66 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca %"compiler/typed:Local"
  %l76 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l83 = alloca i64
  %l85 = alloca i1
  %l88 = alloca i1
  %l89 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l92 = alloca i64
  %l94 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca i1
  %l100 = alloca %"compiler/source:Span"
  %l105 = alloca i64
  %l107 = alloca i64
  %l109 = alloca i64
  %l111 = alloca %"compiler/source:Span"
  %l113 = alloca i64
  %l114 = alloca i64
  %l117 = alloca { i64, ptr }
  %l119 = alloca %"compiler/scope:Placement"
  %l121 = alloca %"compiler/scope:Placement"
  %l123 = alloca ptr
  %l125 = alloca i64
  %l127 = alloca %"compiler/source:Span"
  %l130 = alloca %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t22 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 26
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_6d2a3cef33fc4760_a72895cad66661d4)
  unreachable
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/scope:Scoper", ptr %t8, i32 0, i32 26
  %t11 = load ptr, ptr %t10, !tbaa !29
  store ptr %t11, ptr %l3, !tbaa !29
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/scope:Scoper", ptr %t14, i32 0, i32 27
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/scope:Scoper", ptr %t18, i32 0, i32 42
  %t21 = load i64, ptr %t20, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t22
  %t23 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 0
  store i64 2, ptr %t23
  %t25 = insertvalue { i64 } undef, i64 %t21, 0
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t22, i32 0, i32 1
  store { i64 } %t25, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t22
  %t31 = call { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %s0, ptr %t13, i64 %t17, { i64, [2 x i64] } %t27)
  store { i64, ptr } %t31, ptr %l25
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t32, ptr %l4, !tbaa !27
  %t35 = getelementptr %"compiler/typed:Call", ptr %a1, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t38, 0
  store i64 %t40, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l7, !tbaa !24
  %t46 = icmp slt i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s2)
  br label %bb63
bb7:
  br label %bb8
bb8:
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t50, ptr %l34, !tbaa !27
  %t51 = load i64, ptr %l6, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr ptr, ptr %t54, i64 %t51
  %t56 = load ptr, ptr %t55, !tbaa !39
  store ptr %t56, ptr %l8, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l37, !tbaa !29
  %t59 = load ptr, ptr %l8, !tbaa !29
  %t61 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t59)
  store i32 %t61, ptr %l39
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l37, !tbaa !29
  %t63 = load i32, ptr %l39, !tbaa !23
  %t64 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %t62, i32 %t63)
  store i1 %t64, ptr %l40
  br label %bb10
bb10:
  %t65 = load i1, ptr %l40, !tbaa !21
  %t66 = xor i1 %t65, true
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = load ptr, ptr %l0, !tbaa !29
  store ptr %t68, ptr %l43, !tbaa !29
  %t69 = load ptr, ptr %l8, !tbaa !29
  %t71 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t69)
  store i32 %t71, ptr %l45
  br label %bb13
bb12:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb15
bb13:
  %t72 = load ptr, ptr %l43, !tbaa !29
  %t73 = load i32, ptr %l45, !tbaa !23
  %t74 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t74, ptr %l46
  br label %bb14
bb14:
  %t75 = load i1, ptr %l46, !tbaa !21
  %t76 = xor i1 %t75, true
  store i1 %t76, ptr %l42, !tbaa !21
  br label %bb15
bb15:
  %t78 = load i1, ptr %l42, !tbaa !21
  br i1 %t78, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb17:
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load ptr, ptr %l8, !tbaa !29
  %t84 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %t79, ptr %t80)
  store i64 %t84, ptr %l51
  br label %bb19
bb19:
  %t85 = load i64, ptr %l51, !tbaa !24
  store i64 %t85, ptr %l9, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l52, !tbaa !27
  %t86 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t86, ptr %l53, !tbaa !27
  %t87 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l54, !tbaa !24
  %t89 = load i64, ptr %l54, !tbaa !24
  %t90 = mul i64 %t89, 1
  %t91 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t90)
  %t92 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %t91, 1
  store { i64, ptr } %t93, ptr %l55, !tbaa !27
  %t94 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l54, !tbaa !24
  %t99 = mul i64 %t98, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t95, ptr %t97, i64 %t99, i1 false)
  %t100 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t100, ptr %l10, !tbaa !27
  %t101 = load i64, ptr %l9, !tbaa !24
  %t103 = icmp sge i64 %t101, 0
  br i1 %t103, label %bb20, label %bb21
bb20:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l9, !tbaa !24
  %t109 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %t105, i64 %t106)
  store i1 %t109, ptr %l61
  br label %bb22
bb21:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb23
bb22:
  %t110 = load i1, ptr %l61, !tbaa !21
  store i1 %t110, ptr %l58, !tbaa !21
  br label %bb23
bb23:
  %t111 = load i1, ptr %l58, !tbaa !21
  br i1 %t111, label %bb24, label %bb25
bb24:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/scope:Scoper", ptr %t112, i32 0, i32 36
  %t115 = load i64, ptr %l9, !tbaa !24
  %t118 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t114, i64 %t115)
  store i1 %t118, ptr %l66
  br label %bb26
bb25:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb27
bb26:
  %t119 = load i1, ptr %l66, !tbaa !21
  store i1 %t119, ptr %l62, !tbaa !21
  br label %bb27
bb27:
  %t120 = load i1, ptr %l62, !tbaa !21
  br i1 %t120, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/scope:Scoper", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = getelementptr %"compiler/generic:Program", ptr %t124, i32 0, i32 0
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = getelementptr %"compiler/load:Loader", ptr %t127, i32 0, i32 3
  %t130 = load ptr, ptr %t129, !tbaa !29
  store ptr %t130, ptr %l70, !tbaa !29
  %t131 = load ptr, ptr %l3, !tbaa !29
  %t133 = getelementptr %"compiler/typed:Body", ptr %t131, i32 0, i32 7
  %t134 = load i64, ptr %l9, !tbaa !24
  %t137 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t133, i64 %t134)
  store %"compiler/typed:Local" %t137, ptr %l74
  br label %bb30
bb29:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load ptr, ptr %l8, !tbaa !29
  %t142 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %t138, ptr %t139)
  store i64 %t142, ptr %l83
  br label %bb35
bb30:
  %t143 = getelementptr %"compiler/typed:Local", ptr %l74, i32 0, i32 0
  %t144 = load i32, ptr %t143, !tbaa !23
  %t145 = load ptr, ptr %l70, !tbaa !29
  %t147 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s4, ptr %t145, i32 %t144)
  store { i64, ptr } %t147, ptr %l76
  br label %bb31
bb31:
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t150 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t153 = add i64 %t149, %t152
  %t154 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t148, i64 %t149)
  %t158 = getelementptr i8, ptr %t157, i64 %t149
  call void @olang_textcopy(ptr %t158, ptr %t151, i64 %t152)
  %t159 = getelementptr i8, ptr %t158, i64 %t152
  call void @olang_textcopy(ptr %t159, ptr %t154, i64 %t155)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t157, 1
  store { i64, ptr } %t161, ptr %l77, !tbaa !27
  %t162 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t163 = extractvalue { i64, ptr } %t162, 0
  %t164 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t164, 0
  store i64 %t165, ptr %l79, !tbaa !24
  %t167 = load i64, ptr %l79, !tbaa !24
  %t168 = icmp eq i64 %t163, %t167
  br i1 %t168, label %bb32, label %bb33
bb32:
  %t170 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = load i64, ptr %l79, !tbaa !24
  %t175 = mul i64 %t174, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t171, ptr %t173, i64 %t175, i1 false)
  br label %bb34
bb33:
  %t176 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t176, ptr %l10, !tbaa !27
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb46
bb35:
  %t177 = load i64, ptr %l83, !tbaa !24
  %t178 = icmp slt i64 %t177, 0
  br i1 %t178, label %bb36, label %bb37
bb36:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load ptr, ptr %l8, !tbaa !29
  %t184 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeAt(ptr %v0, ptr %v1, ptr %t180, ptr %t181)
  store i1 %t184, ptr %l88
  br label %bb38
bb37:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb39
bb38:
  %t185 = load i1, ptr %l88, !tbaa !21
  store i1 %t185, ptr %l85, !tbaa !21
  br label %bb39
bb39:
  %t186 = load i1, ptr %l85, !tbaa !21
  br i1 %t186, label %bb40, label %bb41
bb40:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l89, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t187, ptr %l90, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t188, 0
  %t190 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  store i64 %t191, ptr %l92, !tbaa !24
  %t193 = load i64, ptr %l92, !tbaa !24
  %t194 = icmp eq i64 %t189, %t193
  br i1 %t194, label %bb42, label %bb43
bb41:
  br label %bb45
bb42:
  %t196 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = load i64, ptr %l92, !tbaa !24
  %t201 = mul i64 %t200, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t197, ptr %t199, i64 %t201, i1 false)
  br label %bb44
bb43:
  %t202 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t202, 0
  store i64 %t203, ptr %l94, !tbaa !24
  %t204 = load i64, ptr %l94, !tbaa !24
  %t205 = mul i64 %t204, 1
  %t206 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t205)
  %t207 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t208 = insertvalue { i64, ptr } %t207, ptr %t206, 1
  store { i64, ptr } %t208, ptr %l95, !tbaa !27
  %t209 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t210 = load ptr, ptr %t209, !tbaa !27
  %t211 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t212 = load ptr, ptr %t211, !tbaa !27
  %t213 = load i64, ptr %l94, !tbaa !24
  %t214 = mul i64 %t213, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t210, ptr %t212, i64 %t214, i1 false)
  %t215 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t215, ptr %l10, !tbaa !27
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t216 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t218 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t216, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t218, ptr %l97
  br label %bb47
bb47:
  %t219 = load i1, ptr %l97, !tbaa !21
  br i1 %t219, label %bb48, label %bb49
bb48:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb49:
  br label %bb50
bb50:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t224 = call %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %t220, %"compiler/source:Span" %a2)
  store %"compiler/source:Span" %t224, ptr %l100
  br label %bb51
bb51:
  %t225 = load %"compiler/source:Span", ptr %l100
  store %"compiler/source:Span" %t225, ptr %l11
  %t226 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t227 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t229 = extractvalue { i64, ptr } %t226, 1
  %t230 = extractvalue { i64, ptr } %t226, 0
  %t231 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t232 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t233 = add i64 %t230, %t232
  %t235 = extractvalue { i64, ptr } %t227, 1
  %t236 = extractvalue { i64, ptr } %t227, 0
  %t237 = add i64 %t233, %t236
  %t238 = extractvalue { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t239 = extractvalue { i64, ptr } { i64 112, ptr getelementptr inbounds (<{ i64, [112 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t240 = add i64 %t237, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t229, i64 %t230)
  %t242 = getelementptr i8, ptr %t241, i64 %t230
  call void @olang_textcopy(ptr %t242, ptr %t231, i64 %t232)
  %t243 = getelementptr i8, ptr %t242, i64 %t232
  call void @olang_textcopy(ptr %t243, ptr %t235, i64 %t236)
  %t244 = getelementptr i8, ptr %t243, i64 %t236
  call void @olang_textcopy(ptr %t244, ptr %t238, i64 %t239)
  %t245 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t241, 1
  store { i64, ptr } %t246, ptr %l12, !tbaa !27
  %t248 = load ptr, ptr %l3, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Body", ptr %t248, i32 0, i32 3
  %t251 = load i64, ptr %t250, !tbaa !24
  store i64 %t251, ptr %l105, !tbaa !24
  %t252 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  %t255 = sext i32 %t253 to i64
  store i64 %t255, ptr %l107, !tbaa !24
  %t256 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 1
  %t257 = load i32, ptr %t256, !tbaa !23
  %t259 = sext i32 %t257 to i64
  store i64 %t259, ptr %l109, !tbaa !24
  %t260 = load ptr, ptr %l8, !tbaa !29
  %t262 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t260)
  store %"compiler/source:Span" %t262, ptr %l111
  br label %bb52
bb52:
  %t263 = getelementptr %"compiler/source:Span", ptr %l111, i32 0, i32 0
  %t264 = load i32, ptr %t263, !tbaa !23
  %t266 = sext i32 %t264 to i64
  store i64 %t266, ptr %l113, !tbaa !24
  %t267 = ptrtoint ptr %s2 to i64
  store i64 %t267, ptr %l114, !tbaa !24
  %t268 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t268, label %bb53, label %bb54
bb53:
  %t270 = call ptr @__olang_region_make(ptr %s2)
  %t271 = ptrtoint ptr %t270 to i64
  store i64 %t271, ptr %l114, !tbaa !24
  br label %bb54
bb54:
  %t272 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t272, 1
  %t275 = extractvalue { i64, ptr } %t272, 0
  %t276 = load i64, ptr %l114
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = call ptr @__olang_scope_alloc(ptr %t277, i64 %t275)
  call void @olang_textcopy(ptr %t278, ptr %t274, i64 %t275)
  %t279 = insertvalue { i64, ptr } undef, i64 %t275, 0
  %t280 = insertvalue { i64, ptr } %t279, ptr %t278, 1
  store { i64, ptr } %t280, ptr %l117, !tbaa !27
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3aPlacement_2e4
  br i1 %t281, label %bb55, label %bb56
bb55:
  %t283 = load i64, ptr %l114
  %t284 = inttoptr i64 %t283 to ptr
  %t285 = load { i64, ptr }, ptr %l117
  %t286 = extractvalue { i64, ptr } %t285, 1
  %t287 = call ptr @__olang_region_or(ptr %t286, ptr null)
  %t288 = icmp ne ptr %t287, null
  %t289 = select i1 %t288, ptr %t287, ptr null
  %t290 = icmp eq ptr %t289, %t284
  call void @__olang_region_settle(ptr %t284, i1 %t290)
  br label %bb56
bb56:
  %t291 = load i64, ptr %l105, !tbaa !24
  %t292 = load i64, ptr %l107, !tbaa !24
  %t293 = load i64, ptr %l109, !tbaa !24
  %t294 = load i64, ptr %l113, !tbaa !24
  %t295 = load { i64, ptr }, ptr %l117, !tbaa !27
  %t296 = call %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %s2, i64 %t291, i64 %t292, i64 %t293, i64 %t294, { i64, ptr } %t295)
  store %"compiler/scope:Placement" %t296, ptr %l119
  br label %bb57
bb57:
  %t298 = call %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %s2, ptr %l119)
  store %"compiler/scope:Placement" %t298, ptr %l121
  br label %bb58
bb58:
  %t299 = load %"compiler/scope:Placement", ptr %l121
  store %"compiler/scope:Placement" %t299, ptr %l13
  %t300 = getelementptr %"compiler/scope:Placement", ptr %l13, i32 0, i32 5
  store i1 true, ptr %t300, !tbaa !21
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/scope:Scoper", ptr %t301, i32 0, i32 32
  store ptr %t303, ptr %l123, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = getelementptr %"compiler/scope:Scoper", ptr %t304, i32 0, i32 27
  %t307 = load i64, ptr %t306, !tbaa !24
  store i64 %t307, ptr %l125, !tbaa !24
  %t308 = load ptr, ptr %l8, !tbaa !29
  %t310 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v1, ptr %t308)
  store %"compiler/source:Span" %t310, ptr %l127
  br label %bb59
bb59:
  %t311 = getelementptr %"compiler/source:Span", ptr %l127, i32 0, i32 0
  %t312 = load i32, ptr %t311, !tbaa !23
  %t314 = sext i32 %t312 to i64
  %t315 = load i64, ptr %l125, !tbaa !24
  %t317 = call %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %s2, i64 %t315, i64 %t314)
  store %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t317, ptr %l130
  br label %bb60
bb60:
  %t318 = load %"compiler/scope:Placement", ptr %l13
  %t319 = load ptr, ptr %l123, !tbaa !29
  %t320 = load %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0", ptr %l130
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0110f09d6616867ae14b608097fe5c88(ptr %v0, ptr %s2, ptr %t319, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %t320, %"compiler/scope:Placement" %t318)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s2)
  br label %bb62
bb62:
  %t322 = load i64, ptr %l6, !tbaa !24
  %t324 = add i64 %t322, 1
  store i64 %t324, ptr %l6, !tbaa !24
  br label %bb5
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etermOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l15 = alloca ptr
  %l18 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l27 = alloca { i64, [2 x i64] }
  %l35 = alloca i64
  %rv = alloca { i64, [2 x i64] }
  %t7 = alloca { i64, [2 x i64] }, align 8
  %t66 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t1)
  store i64 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i64, ptr %l6, !tbaa !24
  %t5 = icmp eq i64 %t4, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, [2 x i64] } zeroinitializer, ptr %t7
  %t8 = getelementptr { i64, [2 x i64] }, ptr %t7, i32 0, i32 0
  store i64 0, ptr %t8
  %t9 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t11)
  store i64 %t13, ptr %l10
  br label %bb5
bb5:
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp eq i64 %t14, 1
  br i1 %t15, label %bb6, label %bb7
bb6:
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t17, i64 0)
  store { i64, [2 x i64] } %t19, ptr %l13
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t20 = load { i64, [2 x i64] }, ptr %l13
  store { i64, [2 x i64] } %t20, ptr %rv
  br label %ret
bb9:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/scope:Scoper", ptr %t21, i32 0, i32 39
  store ptr %t23, ptr %l15, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/scope:Scoper", ptr %t24, i32 0, i32 40
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l18
  br label %bb10
bb10:
  %t29 = load ptr, ptr %l15, !tbaa !29
  %t30 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t29, i64 %t30)
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l1, !tbaa !29
  store ptr %t31, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  %t33 = load i64, ptr %l3, !tbaa !24
  store i64 %t33, ptr %l20, !tbaa !24
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t34)
  store i64 %t36, ptr %l22
  br label %bb13
bb13:
  %t37 = load i64, ptr %l20, !tbaa !24
  %t38 = load i64, ptr %l22, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v1, ptr %t43, i64 %t44)
  store { i64, [2 x i64] } %t47, ptr %l27
  br label %bb17
bb17:
  %t48 = load { i64, [2 x i64] }, ptr %l27
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/scope:Scoper", ptr %t49, i32 0, i32 40
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t51, { i64, [2 x i64] } %t48)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t55 = load i64, ptr %l3, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l3, !tbaa !24
  br label %bb12
bb20:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/scope:Scoper", ptr %t59, i32 0, i32 39
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l35
  br label %bb21
bb21:
  %t64 = load i64, ptr %l35, !tbaa !24
  %t65 = sub i64 %t64, 1
  store { i64, [2 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 0
  store i64 5, ptr %t67
  %t69 = insertvalue { i64 } undef, i64 %t65, 0
  %t70 = getelementptr { i64, [2 x i64] }, ptr %t66, i32 0, i32 1
  store { i64 } %t69, ptr %t70
  %t71 = load { i64, [2 x i64] }, ptr %t66
  store { i64, [2 x i64] } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerivedExpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l10 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l23 = alloca i1
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
  store ptr %t6, ptr %l7
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l7, !tbaa !29
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
  %t15 = icmp eq i64 %t13, 2
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr { i64, [5 x i64] }, ptr %t17, i32 0, i32 1
  %t20 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t19, i32 0, i32 2
  %t21 = load ptr, ptr %t20
  store ptr %t21, ptr %l3, !tbaa !29
  br label %bb10
bb5:
  %t23 = load ptr, ptr %l2, !tbaa !29
  store ptr %t23, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l15, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 18}
  %t30 = icmp eq i64 %t28, 3
  store i1 %t30, ptr %l16, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l16, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t34, i32 0, i32 2
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l3, !tbaa !29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t42 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerived(ptr %v0, ptr %s0, ptr %t38, ptr %t39)
  store i1 %t42, ptr %l23
  br label %bb11
bb11:
  %t43 = load i1, ptr %l23, !tbaa !21
  store i1 %t43, ptr %l8, !tbaa !21
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_c51808c26f3c8029_f1c25a88624d8cdd)
  unreachable
bb17:
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i1, ptr %l8, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2) #0 {
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
  %l10 = alloca i32
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca %"compiler/scope:verAtom"
  %l27 = alloca i64
  %l30 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, [2 x i64] }
  %l66 = alloca ptr
  %l69 = alloca %"compiler/scope:verAtom"
  %l73 = alloca ptr
  %l75 = alloca %"compiler/scope:verAtom"
  %l78 = alloca ptr
  %l79 = alloca %"compiler/scope:verAtom"
  %l82 = alloca ptr
  %l83 = alloca %"compiler/scope:verAtom"
  %l90 = alloca ptr
  %l93 = alloca %"compiler/scope:verAtom"
  %l97 = alloca i64
  %l100 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca %"compiler/scope:verAtom"
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca ptr
  %l109 = alloca { i64, [2 x i64] }
  %l112 = alloca i64
  %l114 = alloca ptr
  %l115 = alloca %"compiler/scope:verAtom"
  %l117 = alloca i64
  %l119 = alloca i64
  %l124 = alloca %"compiler/scope:verAtom"
  %l127 = alloca ptr
  %l128 = alloca i64
  %l129 = alloca i64
  %l130 = alloca i64
  %l131 = alloca i64
  %l135 = alloca i1
  %l139 = alloca i64
  %l140 = alloca %"compiler/scope:verAtom"
  %l141 = alloca ptr
  %l142 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i64
  %l145 = alloca i64
  %l149 = alloca i1
  %l153 = alloca i64
  %l154 = alloca %"compiler/scope:verAtom"
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [2 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [2 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb92
bb4:
  %t6 = load { i64, [2 x i64] }, ptr %l1
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 5
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t12 = getelementptr { i64 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l3, !tbaa !24
  br label %bb7
bb6:
  br label %bb24
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/scope:Scoper", ptr %t15, i32 0, i32 39
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l27
  br label %bb8
bb8:
  %t22 = load i64, ptr %l27, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l30
  br label %bb9
bb9:
  %t28 = load i64, ptr %l30, !tbaa !24
  store i64 %t28, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t29 = load i64, ptr %l5, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp sgt i64 %t29, %t30
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp sgt i64 %t35, 0
  br i1 %t37, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb15
bb12:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t43 = sub i64 %t39, %t40
  %t44 = load i64, ptr %l6, !tbaa !24
  %t47 = add i64 %t43, %t44
  %t49 = sub i64 %t47, 1
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = sdiv i64 %t49, %t50
  store i64 %t53, ptr %l37, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l37, !tbaa !24
  store i64 %t55, ptr %l34, !tbaa !24
  br label %bb15
bb15:
  %t56 = load i64, ptr %l34, !tbaa !24
  store i64 %t56, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb16
bb16:
  %t57 = load i64, ptr %l8, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t61 = icmp slt i64 %t57, %t58
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  br label %bb23
bb18:
  br label %bb19
bb19:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l6, !tbaa !24
  %t70 = mul i64 %t66, %t67
  %t73 = add i64 %t65, %t70
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l55, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/scope:Scoper", ptr %t76, i32 0, i32 40
  %t82 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t78, i64 %t73)
  store { i64, [2 x i64] } %t82, ptr %l59
  br label %bb20
bb20:
  %t83 = load ptr, ptr %l2, !tbaa !29
  %t84 = load ptr, ptr %l55, !tbaa !29
  %t85 = load { i64, [2 x i64] }, ptr %l59
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %v1, ptr %t84, { i64, [2 x i64] } %t85, ptr %t83)
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t87 = load i64, ptr %l8, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l8, !tbaa !24
  br label %bb16
bb23:
  br label %bb92
bb24:
  %t91 = load { i64, [2 x i64] }, ptr %l1
  %t93 = extractvalue { i64, [2 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 1
  br i1 %t94, label %bb25, label %bb26
bb25:
  %t96 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t97 = getelementptr { i32 }, ptr %t96, i32 0, i32 0
  %t98 = load i32, ptr %t97
  store i32 %t98, ptr %l10, !tbaa !23
  br label %bb27
bb26:
  br label %bb30
bb27:
  store %olang.scope zeroinitializer, ptr %s6
  %t100 = load ptr, ptr %l2, !tbaa !29
  store ptr %t100, ptr %l66, !tbaa !29
  %t101 = load i32, ptr %l10, !tbaa !23
  %t103 = sext i32 %t101 to i64
  %t105 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s6, i64 1, i64 %t103, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t105, ptr %l69
  br label %bb28
bb28:
  %t106 = load ptr, ptr %l66, !tbaa !29
  %t107 = load %"compiler/scope:verAtom", ptr %l69
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t106, %"compiler/scope:verAtom" %t107)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s6)
  br label %bb92
bb30:
  %t108 = load { i64, [2 x i64] }, ptr %l1
  %t110 = extractvalue { i64, [2 x i64] } %t108, 0
  %t111 = icmp eq i64 %t110, 2
  br i1 %t111, label %bb31, label %bb32
bb31:
  %t113 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t114 = getelementptr { i64 }, ptr %t113, i32 0, i32 0
  %t115 = load i64, ptr %t114
  store i64 %t115, ptr %l11, !tbaa !24
  br label %bb33
bb32:
  br label %bb36
bb33:
  store %olang.scope zeroinitializer, ptr %s7
  %t117 = load ptr, ptr %l2, !tbaa !29
  store ptr %t117, ptr %l73, !tbaa !29
  %t118 = load i64, ptr %l11, !tbaa !24
  %t120 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s7, i64 2, i64 %t118, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t120, ptr %l75
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l73, !tbaa !29
  %t122 = load %"compiler/scope:verAtom", ptr %l75
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t121, %"compiler/scope:verAtom" %t122)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb92
bb36:
  %t123 = load { i64, [2 x i64] }, ptr %l1
  %t125 = extractvalue { i64, [2 x i64] } %t123, 0
  %t126 = icmp eq i64 %t125, 3
  br i1 %t126, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb42
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  %t128 = load ptr, ptr %l2, !tbaa !29
  store ptr %t128, ptr %l78, !tbaa !29
  %t129 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s8, i64 3, i64 0, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t129, ptr %l79
  br label %bb40
bb40:
  %t130 = load ptr, ptr %l78, !tbaa !29
  %t131 = load %"compiler/scope:verAtom", ptr %l79
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t130, %"compiler/scope:verAtom" %t131)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s8)
  br label %bb92
bb42:
  %t132 = load { i64, [2 x i64] }, ptr %l1
  %t134 = extractvalue { i64, [2 x i64] } %t132, 0
  %t135 = icmp eq i64 %t134, 6
  br i1 %t135, label %bb43, label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb48
bb45:
  store %olang.scope zeroinitializer, ptr %s9
  %t137 = load ptr, ptr %l2, !tbaa !29
  store ptr %t137, ptr %l82, !tbaa !29
  %t138 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s9, i64 5, i64 0, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t138, ptr %l83
  br label %bb46
bb46:
  %t139 = load ptr, ptr %l82, !tbaa !29
  %t140 = load %"compiler/scope:verAtom", ptr %l83
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t139, %"compiler/scope:verAtom" %t140)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s9)
  br label %bb92
bb48:
  %t141 = load { i64, [2 x i64] }, ptr %l1
  %t143 = extractvalue { i64, [2 x i64] } %t141, 0
  %t144 = icmp eq i64 %t143, 4
  br i1 %t144, label %bb49, label %bb50
bb49:
  %t146 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t147 = getelementptr { i64, i64 }, ptr %t146, i32 0, i32 0
  %t148 = load i64, ptr %t147
  store i64 %t148, ptr %l12, !tbaa !24
  %t150 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t151 = getelementptr { i64, i64 }, ptr %t150, i32 0, i32 1
  %t152 = load i64, ptr %t151
  store i64 %t152, ptr %l13, !tbaa !24
  br label %bb51
bb50:
  br label %bb91
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t154 = load i64, ptr %l12, !tbaa !24
  %t156 = icmp sge i64 %t154, 0
  br i1 %t156, label %bb52, label %bb53
bb52:
  store %olang.scope zeroinitializer, ptr %s11
  %t158 = load ptr, ptr %l2, !tbaa !29
  store ptr %t158, ptr %l90, !tbaa !29
  %t159 = load i64, ptr %l12, !tbaa !24
  %t160 = load i64, ptr %l13, !tbaa !24
  %t163 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s11, i64 4, i64 %t159, i64 %t160, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t163, ptr %l93
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t164 = load ptr, ptr %l90, !tbaa !29
  %t165 = load %"compiler/scope:verAtom", ptr %l93
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t164, %"compiler/scope:verAtom" %t165)
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s10)
  br label %ret
bb56:
  %t166 = load i64, ptr %l12, !tbaa !24
  %t168 = sub i64 0, %t166
  %t170 = sub i64 %t168, 1
  store i64 %t170, ptr %l14, !tbaa !24
  %t172 = load i64, ptr %l14, !tbaa !24
  store i64 %t172, ptr %l97, !tbaa !24
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/scope:Scoper", ptr %t173, i32 0, i32 110
  %t177 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t175)
  store i64 %t177, ptr %l100
  br label %bb57
bb57:
  %t178 = load i64, ptr %l97, !tbaa !24
  %t179 = load i64, ptr %l100, !tbaa !24
  %t180 = icmp sge i64 %t178, %t179
  br i1 %t180, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t182 = load ptr, ptr %l2, !tbaa !29
  store ptr %t182, ptr %l102, !tbaa !29
  %t183 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s12, i64 5, i64 0, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t183, ptr %l103
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t184 = load ptr, ptr %l102, !tbaa !29
  %t185 = load %"compiler/scope:verAtom", ptr %l103
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t184, %"compiler/scope:verAtom" %t185)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s10)
  br label %ret
bb62:
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %s10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l104
  br label %bb63
bb63:
  %t187 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l15
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l105, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/scope:Scoper", ptr %t189, i32 0, i32 110
  %t192 = load i64, ptr %l14, !tbaa !24
  %t195 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t191, i64 %t192)
  store { i64, [2 x i64] } %t195, ptr %l109
  br label %bb64
bb64:
  %t196 = load ptr, ptr %l105, !tbaa !29
  %t197 = load { i64, [2 x i64] }, ptr %l109
  call void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etoAtoms(ptr %v0, ptr %s10, ptr %t196, { i64, [2 x i64] } %t197, ptr %l15)
  br label %bb65
bb65:
  %t200 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %s10, ptr %l15)
  store i64 %t200, ptr %l112
  br label %bb66
bb66:
  %t201 = load i64, ptr %l112, !tbaa !24
  %t202 = icmp eq i64 %t201, 0
  br i1 %t202, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s13
  store ptr %l15, ptr %l114, !tbaa !29
  %t204 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s13, i64 5, i64 0, i64 0, i64 0, i64 0, i64 0, i1 false, i64 -1)
  store %"compiler/scope:verAtom" %t204, ptr %l115
  br label %bb69
bb68:
  br label %bb71
bb69:
  %t205 = load ptr, ptr %l114, !tbaa !29
  %t206 = load %"compiler/scope:verAtom", ptr %l115
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %s10, ptr %t205, %"compiler/scope:verAtom" %t206)
  br label %bb70
bb70:
  call void @__olang_scope_close(ptr %s13)
  br label %bb71
bb71:
  store ptr %l15, ptr %l16, !tbaa !29
  store i64 0, ptr %l17, !tbaa !24
  br label %bb72
bb72:
  %t208 = load i64, ptr %l17, !tbaa !24
  store i64 %t208, ptr %l117, !tbaa !24
  %t209 = load ptr, ptr %l16, !tbaa !29
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %s10, ptr %t209)
  store i64 %t211, ptr %l119
  br label %bb73
bb73:
  %t212 = load i64, ptr %l117, !tbaa !24
  %t213 = load i64, ptr %l119, !tbaa !24
  %t214 = icmp slt i64 %t212, %t213
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb74, label %bb75
bb74:
  br label %bb90
bb75:
  br label %bb76
bb76:
  %t218 = load ptr, ptr %l16, !tbaa !29
  %t219 = load i64, ptr %l17, !tbaa !24
  %t222 = call %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %s10, ptr %t218, i64 %t219)
  store %"compiler/scope:verAtom" %t222, ptr %l124
  br label %bb77
bb77:
  %t223 = load %"compiler/scope:verAtom", ptr %l124
  store %"compiler/scope:verAtom" %t223, ptr %l18
  %t224 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 0
  %t225 = load i64, ptr %t224, !tbaa !24
  %t227 = icmp eq i64 %t225, 6
  br i1 %t227, label %bb78, label %bb79
bb78:
  store %olang.scope zeroinitializer, ptr %s16
  %t229 = load ptr, ptr %l2, !tbaa !29
  store ptr %t229, ptr %l127, !tbaa !29
  %t230 = load i64, ptr %l13, !tbaa !24
  store i64 %t230, ptr %l128, !tbaa !24
  %t231 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 3
  %t232 = load i64, ptr %t231, !tbaa !24
  store i64 %t232, ptr %l129, !tbaa !24
  %t233 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 4
  %t234 = load i64, ptr %t233, !tbaa !24
  store i64 %t234, ptr %l130, !tbaa !24
  %t235 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 5
  %t236 = load i64, ptr %t235, !tbaa !24
  store i64 %t236, ptr %l131, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/scope:Scoper", ptr %t237, i32 0, i32 111
  %t240 = load i64, ptr %l14, !tbaa !24
  %t243 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t239, i64 %t240)
  store i1 %t243, ptr %l135
  br label %bb80
bb79:
  store %olang.scope zeroinitializer, ptr %s17
  %t244 = load ptr, ptr %l2, !tbaa !29
  store ptr %t244, ptr %l141, !tbaa !29
  %t245 = load i64, ptr %l13, !tbaa !24
  store i64 %t245, ptr %l142, !tbaa !24
  %t246 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 0
  %t247 = load i64, ptr %t246, !tbaa !24
  store i64 %t247, ptr %l143, !tbaa !24
  %t248 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 1
  %t249 = load i64, ptr %t248, !tbaa !24
  store i64 %t249, ptr %l144, !tbaa !24
  %t250 = getelementptr %"compiler/scope:verAtom", ptr %l18, i32 0, i32 2
  %t251 = load i64, ptr %t250, !tbaa !24
  store i64 %t251, ptr %l145, !tbaa !24
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = getelementptr %"compiler/scope:Scoper", ptr %t252, i32 0, i32 111
  %t255 = load i64, ptr %l14, !tbaa !24
  %t258 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t254, i64 %t255)
  store i1 %t258, ptr %l149
  br label %bb84
bb80:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/scope:Scoper", ptr %t259, i32 0, i32 112
  %t262 = load i64, ptr %l14, !tbaa !24
  %t265 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t261, i64 %t262)
  store i64 %t265, ptr %l139
  br label %bb81
bb81:
  %t266 = load i64, ptr %l128, !tbaa !24
  %t267 = load i64, ptr %l129, !tbaa !24
  %t268 = load i64, ptr %l130, !tbaa !24
  %t269 = load i64, ptr %l131, !tbaa !24
  %t270 = load i1, ptr %l135, !tbaa !21
  %t271 = load i64, ptr %l139, !tbaa !24
  %t272 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s16, i64 6, i64 0, i64 %t266, i64 %t267, i64 %t268, i64 %t269, i1 %t270, i64 %t271)
  store %"compiler/scope:verAtom" %t272, ptr %l140
  br label %bb82
bb82:
  %t273 = load ptr, ptr %l127, !tbaa !29
  %t274 = load %"compiler/scope:verAtom", ptr %l140
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t273, %"compiler/scope:verAtom" %t274)
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s16)
  br label %bb88
bb84:
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/scope:Scoper", ptr %t275, i32 0, i32 112
  %t278 = load i64, ptr %l14, !tbaa !24
  %t281 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t277, i64 %t278)
  store i64 %t281, ptr %l153
  br label %bb85
bb85:
  %t282 = load i64, ptr %l142, !tbaa !24
  %t283 = load i64, ptr %l143, !tbaa !24
  %t284 = load i64, ptr %l144, !tbaa !24
  %t285 = load i64, ptr %l145, !tbaa !24
  %t286 = load i1, ptr %l149, !tbaa !21
  %t287 = load i64, ptr %l153, !tbaa !24
  %t288 = call %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %s17, i64 6, i64 0, i64 %t282, i64 %t283, i64 %t284, i64 %t285, i1 %t286, i64 %t287)
  store %"compiler/scope:verAtom" %t288, ptr %l154
  br label %bb86
bb86:
  %t289 = load ptr, ptr %l141, !tbaa !29
  %t290 = load %"compiler/scope:verAtom", ptr %l154
  call void @compiler_2fscope_2eaddAtom(ptr %v1, ptr %t289, %"compiler/scope:verAtom" %t290)
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s17)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t291 = load i64, ptr %l17, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l17, !tbaa !24
  br label %bb72
bb90:
  call void @__olang_scope_close(ptr %s10)
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_116c2702d0beccf9_d81dd964499d710d)
  unreachable
bb92:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etwinsOwn(ptr %v0, ptr %a0) #0 {
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
  %l9 = alloca %"compiler/typed:Plan"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/typed:Plan"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i1
  %l59 = alloca i1
  %l60 = alloca i64
  %l63 = alloca i64
  %l68 = alloca %"compiler/typed:Plan"
  %l70 = alloca %"compiler/typed:Plan"
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca i64
  %l80 = alloca i64
  %l98 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l111 = alloca i64
  %l115 = alloca %"compiler/typed:Plan"
  %l117 = alloca %"compiler/typed:Plan"
  %l118 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca i1
  %l123 = alloca i1
  %l124 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca i1
  %l130 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l135 = alloca i1
  %l136 = alloca { i64, ptr }
  %l138 = alloca { i64, ptr }
  %l140 = alloca i1
  %l141 = alloca i1
  %l142 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l146 = alloca i1
  %l147 = alloca i1
  %l148 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l152 = alloca i1
  %l153 = alloca i1
  %l154 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l158 = alloca i1
  %l159 = alloca i1
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l164 = alloca i1
  %l165 = alloca i1
  %l166 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l170 = alloca i1
  %l171 = alloca i1
  %l172 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l176 = alloca i1
  %l177 = alloca i1
  %l180 = alloca i1
  %l181 = alloca i1
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l186 = alloca i1
  %l187 = alloca i1
  %l188 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l192 = alloca i1
  %l193 = alloca i1
  %l194 = alloca { i64, ptr }
  %l196 = alloca { i64, ptr }
  %l198 = alloca i1
  %l199 = alloca i1
  %l202 = alloca i1
  %l203 = alloca i1
  %l206 = alloca i1
  %l207 = alloca i1
  %l210 = alloca i1
  %l211 = alloca i1
  %l214 = alloca i1
  %l215 = alloca i1
  %l218 = alloca i1
  %l219 = alloca i1
  %l222 = alloca i1
  %l223 = alloca i1
  %l226 = alloca i1
  %l227 = alloca i1
  %l230 = alloca i1
  %l233 = alloca i64
  %l235 = alloca i64
  %l240 = alloca i64
  %l241 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %t91 = alloca %"compiler/typed:Plan", align 8
  %t94 = alloca %"compiler/typed:Plan", align 8
  %t184 = alloca %"compiler/typed:Plan", align 8
  %t187 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 227
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t8 = getelementptr %"compiler/scope:twinTab", ptr %t6, i32 0, i32 1
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l25
  br label %bb1
bb1:
  %t11 = load i64, ptr %l25, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb7
bb4:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l32, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l32, !tbaa !24
  store i64 %t38, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t39 = load i64, ptr %l29, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb137
bb10:
  br label %bb11
bb11:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/scope:twinTab", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l53
  br label %bb12
bb12:
  %t65 = load i64, ptr %l53, !tbaa !24
  store i64 %t65, ptr %l8, !tbaa !24
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/scope:twinTab", ptr %t66, i32 0, i32 6
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t68, i64 %t69)
  store i1 %t72, ptr %l57
  br label %bb13
bb13:
  %t73 = load i1, ptr %l57, !tbaa !21
  %t74 = xor i1 %t73, true
  br i1 %t74, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb17
bb15:
  %t76 = load i64, ptr %l8, !tbaa !24
  store i64 %t76, ptr %l60, !tbaa !24
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/scope:Scoper", ptr %t77, i32 0, i32 2
  %t81 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %t79)
  store i64 %t81, ptr %l63
  br label %bb16
bb16:
  %t82 = load i64, ptr %l60, !tbaa !24
  %t83 = load i64, ptr %l63, !tbaa !24
  %t84 = icmp sge i64 %t82, %t83
  store i1 %t84, ptr %l59, !tbaa !21
  br label %bb17
bb17:
  %t86 = load i1, ptr %l59, !tbaa !21
  br i1 %t86, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb136
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l1, !tbaa !29
  %t89 = getelementptr %"compiler/scope:twinTab", ptr %t87, i32 0, i32 5
  %t90 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t91, ptr %v0, ptr %v0, ptr %t89, i64 %t90)
  call void @llvm.memmove.p0.p0.i64(ptr %l68, ptr %t91, i64 536, i1 false)
  br label %bb21
bb21:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t94, ptr %v0, ptr %l68)
  call void @llvm.memmove.p0.p0.i64(ptr %l70, ptr %t94, i64 536, i1 false)
  br label %bb22
bb22:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l70, i64 536, i1 false)
  %t96 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l71
  br label %bb23
bb23:
  %t97 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t97, ptr %l10
  store i64 0, ptr %l11, !tbaa !24
  %t98 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 11
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t99, 0
  store i64 %t101, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t103 = load i64, ptr %l12, !tbaa !24
  %t104 = load i64, ptr %l11, !tbaa !24
  %t107 = icmp sgt i64 %t103, %t104
  br i1 %t107, label %bb24, label %bb25
bb24:
  %t109 = load i64, ptr %l13, !tbaa !24
  %t111 = icmp sgt i64 %t109, 0
  br i1 %t111, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l77, !tbaa !24
  br label %bb29
bb26:
  %t113 = load i64, ptr %l12, !tbaa !24
  %t114 = load i64, ptr %l11, !tbaa !24
  %t117 = sub i64 %t113, %t114
  %t118 = load i64, ptr %l13, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t123 = sub i64 %t121, 1
  %t124 = load i64, ptr %l13, !tbaa !24
  %t127 = sdiv i64 %t123, %t124
  store i64 %t127, ptr %l80, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb28
bb28:
  %t129 = load i64, ptr %l80, !tbaa !24
  store i64 %t129, ptr %l77, !tbaa !24
  br label %bb29
bb29:
  %t130 = load i64, ptr %l77, !tbaa !24
  store i64 %t130, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb30
bb30:
  %t131 = load i64, ptr %l15, !tbaa !24
  %t132 = load i64, ptr %l14, !tbaa !24
  %t135 = icmp slt i64 %t131, %t132
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t139 = load i64, ptr %l11, !tbaa !24
  %t140 = load i64, ptr %l15, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t144 = mul i64 %t140, %t141
  %t147 = add i64 %t139, %t144
  store i64 %t147, ptr %l16, !tbaa !24
  %t149 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 11
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l98, !tbaa !27
  %t151 = load i64, ptr %l16, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l98, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i64, ptr %t154, i64 %t151
  %t156 = load i64, ptr %t155, !tbaa !34
  %t157 = load i64, ptr %l7, !tbaa !24
  %t160 = icmp eq i64 %t156, %t157
  br i1 %t160, label %bb34, label %bb35
bb34:
  %t162 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %l10, i64 %t162)
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t165 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 11
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  store { i64, ptr } %t166, ptr %l105, !tbaa !27
  %t167 = load i64, ptr %l16, !tbaa !24
  %t169 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !27
  %t171 = getelementptr i64, ptr %t170, i64 %t167
  store i64 -1, ptr %t171, !tbaa !34
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t172 = load i64, ptr %l15, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l15, !tbaa !24
  br label %bb30
bb39:
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/scope:twinTab", ptr %t176, i32 0, i32 7
  store ptr %t178, ptr %l110, !tbaa !29
  %t179 = load i64, ptr %l7, !tbaa !24
  store i64 %t179, ptr %l111, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/scope:Scoper", ptr %t180, i32 0, i32 2
  %t183 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %t184, ptr %v0, ptr %v0, ptr %t182, i64 %t183)
  call void @llvm.memmove.p0.p0.i64(ptr %l115, ptr %t184, i64 536, i1 false)
  br label %bb40
bb40:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2ftyped_3aPlan(ptr %t187, ptr %v0, ptr %l115)
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t187, i64 536, i1 false)
  br label %bb41
bb41:
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %l117, i64 536, i1 false)
  %t189 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 0
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l118, !tbaa !27
  %t191 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 0
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l120, !tbaa !27
  %t195 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %l118, ptr %l120)
  store i1 %t195, ptr %l122
  br label %bb42
bb42:
  %t196 = load i1, ptr %l122, !tbaa !21
  br i1 %t196, label %bb43, label %bb44
bb43:
  %t197 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 1
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l124, !tbaa !27
  %t199 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199, !tbaa !27
  store { i64, ptr } %t200, ptr %l126, !tbaa !27
  %t203 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %l124, ptr %l126)
  store i1 %t203, ptr %l128
  br label %bb45
bb44:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb46
bb45:
  %t204 = load i1, ptr %l128, !tbaa !21
  store i1 %t204, ptr %l123, !tbaa !21
  br label %bb46
bb46:
  %t205 = load i1, ptr %l123, !tbaa !21
  br i1 %t205, label %bb47, label %bb48
bb47:
  %t206 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l130, !tbaa !27
  %t208 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 2
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l132, !tbaa !27
  %t212 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e_26(ptr %l130, ptr %l132)
  store i1 %t212, ptr %l134
  br label %bb49
bb48:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb50
bb49:
  %t213 = load i1, ptr %l134, !tbaa !21
  store i1 %t213, ptr %l129, !tbaa !21
  br label %bb50
bb50:
  %t214 = load i1, ptr %l129, !tbaa !21
  br i1 %t214, label %bb51, label %bb52
bb51:
  %t215 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 3
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l136, !tbaa !27
  %t217 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 3
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  store { i64, ptr } %t218, ptr %l138, !tbaa !27
  %t221 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e_26(ptr %l136, ptr %l138)
  store i1 %t221, ptr %l140
  br label %bb53
bb52:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb54
bb53:
  %t222 = load i1, ptr %l140, !tbaa !21
  store i1 %t222, ptr %l135, !tbaa !21
  br label %bb54
bb54:
  %t223 = load i1, ptr %l135, !tbaa !21
  br i1 %t223, label %bb55, label %bb56
bb55:
  %t224 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 4
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  store { i64, ptr } %t225, ptr %l142, !tbaa !27
  %t226 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 4
  %t227 = load { i64, ptr }, ptr %t226, !tbaa !27
  store { i64, ptr } %t227, ptr %l144, !tbaa !27
  %t230 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e_26(ptr %l142, ptr %l144)
  store i1 %t230, ptr %l146
  br label %bb57
bb56:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb58
bb57:
  %t231 = load i1, ptr %l146, !tbaa !21
  store i1 %t231, ptr %l141, !tbaa !21
  br label %bb58
bb58:
  %t232 = load i1, ptr %l141, !tbaa !21
  br i1 %t232, label %bb59, label %bb60
bb59:
  %t233 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 5
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l148, !tbaa !27
  %t235 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 5
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  store { i64, ptr } %t236, ptr %l150, !tbaa !27
  %t239 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l148, ptr %l150)
  store i1 %t239, ptr %l152
  br label %bb61
bb60:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb62
bb61:
  %t240 = load i1, ptr %l152, !tbaa !21
  store i1 %t240, ptr %l147, !tbaa !21
  br label %bb62
bb62:
  %t241 = load i1, ptr %l147, !tbaa !21
  br i1 %t241, label %bb63, label %bb64
bb63:
  %t242 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 6
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  store { i64, ptr } %t243, ptr %l154, !tbaa !27
  %t244 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 6
  %t245 = load { i64, ptr }, ptr %t244, !tbaa !27
  store { i64, ptr } %t245, ptr %l156, !tbaa !27
  %t248 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %l154, ptr %l156)
  store i1 %t248, ptr %l158
  br label %bb65
bb64:
  store i1 false, ptr %l153, !tbaa !21
  br label %bb66
bb65:
  %t249 = load i1, ptr %l158, !tbaa !21
  store i1 %t249, ptr %l153, !tbaa !21
  br label %bb66
bb66:
  %t250 = load i1, ptr %l153, !tbaa !21
  br i1 %t250, label %bb67, label %bb68
bb67:
  %t251 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 7
  %t252 = load { i64, ptr }, ptr %t251, !tbaa !27
  store { i64, ptr } %t252, ptr %l160, !tbaa !27
  %t253 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 7
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l162, !tbaa !27
  %t257 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_3f_26_3e_26(ptr %l160, ptr %l162)
  store i1 %t257, ptr %l164
  br label %bb69
bb68:
  store i1 false, ptr %l159, !tbaa !21
  br label %bb70
bb69:
  %t258 = load i1, ptr %l164, !tbaa !21
  store i1 %t258, ptr %l159, !tbaa !21
  br label %bb70
bb70:
  %t259 = load i1, ptr %l159, !tbaa !21
  br i1 %t259, label %bb71, label %bb72
bb71:
  %t260 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 8
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  store { i64, ptr } %t261, ptr %l166, !tbaa !27
  %t262 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 8
  %t263 = load { i64, ptr }, ptr %t262, !tbaa !27
  store { i64, ptr } %t263, ptr %l168, !tbaa !27
  %t266 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l166, ptr %l168)
  store i1 %t266, ptr %l170
  br label %bb73
bb72:
  store i1 false, ptr %l165, !tbaa !21
  br label %bb74
bb73:
  %t267 = load i1, ptr %l170, !tbaa !21
  store i1 %t267, ptr %l165, !tbaa !21
  br label %bb74
bb74:
  %t268 = load i1, ptr %l165, !tbaa !21
  br i1 %t268, label %bb75, label %bb76
bb75:
  %t269 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 9
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l172, !tbaa !27
  %t271 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 9
  %t272 = load { i64, ptr }, ptr %t271, !tbaa !27
  store { i64, ptr } %t272, ptr %l174, !tbaa !27
  %t275 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l172, ptr %l174)
  store i1 %t275, ptr %l176
  br label %bb77
bb76:
  store i1 false, ptr %l171, !tbaa !21
  br label %bb78
bb77:
  %t276 = load i1, ptr %l176, !tbaa !21
  store i1 %t276, ptr %l171, !tbaa !21
  br label %bb78
bb78:
  %t277 = load i1, ptr %l171, !tbaa !21
  br i1 %t277, label %bb79, label %bb80
bb79:
  %t278 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 10
  %t279 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 10
  %t282 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eEq_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t278, ptr %t279)
  store i1 %t282, ptr %l180
  br label %bb81
bb80:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb82
bb81:
  %t283 = load i1, ptr %l180, !tbaa !21
  store i1 %t283, ptr %l177, !tbaa !21
  br label %bb82
bb82:
  %t284 = load i1, ptr %l177, !tbaa !21
  br i1 %t284, label %bb83, label %bb84
bb83:
  %t285 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 11
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l182, !tbaa !27
  %t287 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 11
  %t288 = load { i64, ptr }, ptr %t287, !tbaa !27
  store { i64, ptr } %t288, ptr %l184, !tbaa !27
  %t291 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l182, ptr %l184)
  store i1 %t291, ptr %l186
  br label %bb85
bb84:
  store i1 false, ptr %l181, !tbaa !21
  br label %bb86
bb85:
  %t292 = load i1, ptr %l186, !tbaa !21
  store i1 %t292, ptr %l181, !tbaa !21
  br label %bb86
bb86:
  %t293 = load i1, ptr %l181, !tbaa !21
  br i1 %t293, label %bb87, label %bb88
bb87:
  %t294 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 12
  %t295 = load { i64, ptr }, ptr %t294, !tbaa !27
  store { i64, ptr } %t295, ptr %l188, !tbaa !27
  %t296 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 12
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  store { i64, ptr } %t297, ptr %l190, !tbaa !27
  %t300 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l188, ptr %l190)
  store i1 %t300, ptr %l192
  br label %bb89
bb88:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb90
bb89:
  %t301 = load i1, ptr %l192, !tbaa !21
  store i1 %t301, ptr %l187, !tbaa !21
  br label %bb90
bb90:
  %t302 = load i1, ptr %l187, !tbaa !21
  br i1 %t302, label %bb91, label %bb92
bb91:
  %t303 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 13
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l194, !tbaa !27
  %t305 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 13
  %t306 = load { i64, ptr }, ptr %t305, !tbaa !27
  store { i64, ptr } %t306, ptr %l196, !tbaa !27
  %t309 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %l194, ptr %l196)
  store i1 %t309, ptr %l198
  br label %bb93
bb92:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb94
bb93:
  %t310 = load i1, ptr %l198, !tbaa !21
  store i1 %t310, ptr %l193, !tbaa !21
  br label %bb94
bb94:
  %t311 = load i1, ptr %l193, !tbaa !21
  br i1 %t311, label %bb95, label %bb96
bb95:
  %t312 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 14
  %t313 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 14
  %t316 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eEq_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %v0, ptr %t312, ptr %t313)
  store i1 %t316, ptr %l202
  br label %bb97
bb96:
  store i1 false, ptr %l199, !tbaa !21
  br label %bb98
bb97:
  %t317 = load i1, ptr %l202, !tbaa !21
  store i1 %t317, ptr %l199, !tbaa !21
  br label %bb98
bb98:
  %t318 = load i1, ptr %l199, !tbaa !21
  br i1 %t318, label %bb99, label %bb100
bb99:
  %t319 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 15
  %t320 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 15
  %t323 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %v0, ptr %v0, ptr %t319, ptr %t320)
  store i1 %t323, ptr %l206
  br label %bb101
bb100:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb102
bb101:
  %t324 = load i1, ptr %l206, !tbaa !21
  store i1 %t324, ptr %l203, !tbaa !21
  br label %bb102
bb102:
  %t325 = load i1, ptr %l203, !tbaa !21
  br i1 %t325, label %bb103, label %bb104
bb103:
  %t326 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 16
  %t327 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 16
  %t330 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %v0, ptr %v0, ptr %t326, ptr %t327)
  store i1 %t330, ptr %l210
  br label %bb105
bb104:
  store i1 false, ptr %l207, !tbaa !21
  br label %bb106
bb105:
  %t331 = load i1, ptr %l210, !tbaa !21
  store i1 %t331, ptr %l207, !tbaa !21
  br label %bb106
bb106:
  %t332 = load i1, ptr %l207, !tbaa !21
  br i1 %t332, label %bb107, label %bb108
bb107:
  %t333 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 17
  %t334 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 17
  %t337 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H80e5c7f116c5eff77ef32968f58f5b4d(ptr %s2, ptr %v0, ptr %t333, ptr %t334)
  store i1 %t337, ptr %l214
  br label %bb109
bb108:
  store i1 false, ptr %l211, !tbaa !21
  br label %bb110
bb109:
  %t338 = load i1, ptr %l214, !tbaa !21
  store i1 %t338, ptr %l211, !tbaa !21
  br label %bb110
bb110:
  %t339 = load i1, ptr %l211, !tbaa !21
  br i1 %t339, label %bb111, label %bb112
bb111:
  %t340 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 18
  %t341 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 18
  %t344 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eEq_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t340, ptr %t341)
  store i1 %t344, ptr %l218
  br label %bb113
bb112:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb114
bb113:
  %t345 = load i1, ptr %l218, !tbaa !21
  store i1 %t345, ptr %l215, !tbaa !21
  br label %bb114
bb114:
  %t346 = load i1, ptr %l215, !tbaa !21
  br i1 %t346, label %bb115, label %bb116
bb115:
  %t347 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 19
  %t348 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 19
  %t351 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H16eefdf2f060cccd64cc684009ec3f7f(ptr %s2, ptr %s2, ptr %t347, ptr %t348)
  store i1 %t351, ptr %l222
  br label %bb117
bb116:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb118
bb117:
  %t352 = load i1, ptr %l222, !tbaa !21
  store i1 %t352, ptr %l219, !tbaa !21
  br label %bb118
bb118:
  %t353 = load i1, ptr %l219, !tbaa !21
  br i1 %t353, label %bb119, label %bb120
bb119:
  %t354 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 20
  %t355 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 20
  %t358 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eEq_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t354, ptr %t355)
  store i1 %t358, ptr %l226
  br label %bb121
bb120:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb122
bb121:
  %t359 = load i1, ptr %l226, !tbaa !21
  store i1 %t359, ptr %l223, !tbaa !21
  br label %bb122
bb122:
  %t360 = load i1, ptr %l223, !tbaa !21
  br i1 %t360, label %bb123, label %bb124
bb123:
  %t361 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 21
  %t362 = getelementptr %"compiler/typed:Plan", ptr %l17, i32 0, i32 21
  %t365 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eEq_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %v0, ptr %t361, ptr %t362)
  store i1 %t365, ptr %l230
  br label %bb125
bb124:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb126
bb125:
  %t366 = load i1, ptr %l230, !tbaa !21
  store i1 %t366, ptr %l227, !tbaa !21
  br label %bb126
bb126:
  %t367 = load i1, ptr %l227, !tbaa !21
  %t368 = xor i1 %t367, true
  %t369 = load ptr, ptr %l110, !tbaa !29
  %t370 = load i64, ptr %l111, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t369, i64 %t370, i1 %t368)
  br label %bb127
bb127:
  store ptr %l10, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb128
bb128:
  %t373 = load i64, ptr %l19, !tbaa !24
  store i64 %t373, ptr %l233, !tbaa !24
  %t374 = load ptr, ptr %l18, !tbaa !29
  %t376 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t374)
  store i64 %t376, ptr %l235
  br label %bb129
bb129:
  %t377 = load i64, ptr %l233, !tbaa !24
  %t378 = load i64, ptr %l235, !tbaa !24
  %t379 = icmp slt i64 %t377, %t378
  %t381 = xor i1 %t379, true
  br i1 %t381, label %bb130, label %bb131
bb130:
  br label %bb135
bb131:
  br label %bb132
bb132:
  %t383 = load ptr, ptr %l18, !tbaa !29
  %t384 = load i64, ptr %l19, !tbaa !24
  %t387 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t383, i64 %t384)
  store i64 %t387, ptr %l240
  br label %bb133
bb133:
  %t388 = load i64, ptr %l240, !tbaa !24
  %t389 = getelementptr %"compiler/typed:Plan", ptr %l9, i32 0, i32 11
  %t390 = load { i64, ptr }, ptr %t389, !tbaa !27
  store { i64, ptr } %t390, ptr %l241, !tbaa !27
  %t392 = load i64, ptr %l7, !tbaa !24
  %t395 = getelementptr { i64, ptr }, ptr %l241, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = getelementptr i64, ptr %t396, i64 %t388
  store i64 %t392, ptr %t397, !tbaa !34
  br label %bb134
bb134:
  %t398 = load i64, ptr %l19, !tbaa !24
  %t400 = add i64 %t398, 1
  store i64 %t400, ptr %l19, !tbaa !24
  br label %bb128
bb135:
  call void @__olang_scope_close(ptr %s2)
  br label %bb136
bb136:
  %t402 = load i64, ptr %l6, !tbaa !24
  %t404 = add i64 %t402, 1
  store i64 %t404, ptr %l6, !tbaa !24
  br label %bb8
bb137:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueCovered(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4) #0 {
entry:
  %l10 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t11 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebeyondBound(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4)
  store i64 %t11, ptr %l10
  br label %bb1
bb1:
  %t12 = load i64, ptr %l10, !tbaa !24
  %t13 = icmp slt i64 %t12, 0
  store i1 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueLocalName(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l9 = alloca ptr
  %l18 = alloca %"compiler/typed:Local"
  %l20 = alloca i1
  %l21 = alloca i1
  %l30 = alloca %"compiler/typed:Local"
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l49 = alloca %"compiler/typed:Local"
  %l51 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %t1, ptr %a1)
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
  br label %bb9
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l9, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/scope:Scoper", ptr %t12, i32 0, i32 26
  %t15 = load ptr, ptr %t14, !tbaa !29
  %t17 = icmp eq ptr %t15, null
  br i1 %t17, label %bb4, label %bb5
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4a494c4484ad71e8_cc0fe42b10928cfc)
  unreachable
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/scope:Scoper", ptr %t19, i32 0, i32 26
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Body", ptr %t22, i32 0, i32 7
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t25, i64 %t26)
  store %"compiler/typed:Local" %t29, ptr %l18
  br label %bb7
bb7:
  %t30 = getelementptr %"compiler/typed:Local", ptr %l18, i32 0, i32 2
  %t31 = load i32, ptr %t30, !tbaa !23
  %t32 = load ptr, ptr %l9, !tbaa !29
  %t34 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %t32, i32 %t31)
  store i1 %t34, ptr %l20
  br label %bb8
bb8:
  %t35 = load i1, ptr %l20, !tbaa !21
  store i1 %t35, ptr %l8, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l8, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb16
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/scope:Scoper", ptr %t37, i32 0, i32 26
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = icmp eq ptr %t40, null
  br i1 %t42, label %bb12, label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_4a494c4484ad71e8_cc0fe42b10928cfc)
  unreachable
bb13:
  br label %bb14
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/scope:Scoper", ptr %t44, i32 0, i32 26
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Body", ptr %t47, i32 0, i32 7
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t50, i64 %t51)
  store %"compiler/typed:Local" %t54, ptr %l30
  br label %bb15
bb15:
  %t55 = getelementptr %"compiler/typed:Local", ptr %l30, i32 0, i32 4
  %t56 = load i32, ptr %t55, !range !{i32 0, i32 7}
  %t58 = trunc i64 3 to i32
  %t59 = icmp eq i32 %t56, %t58
  store i1 %t59, ptr %l21, !tbaa !21
  br label %bb16
bb16:
  %t61 = load i1, ptr %l21, !tbaa !21
  br i1 %t61, label %bb17, label %bb18
bb17:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l33, !tbaa !27
  %t62 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t62, ptr %l34, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l35, !tbaa !24
  %t65 = load i64, ptr %l35, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l36, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l35, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t76, ptr %l34, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t77 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t77, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/scope:Scoper", ptr %t78, i32 0, i32 0
  %t81 = load ptr, ptr %t80, !tbaa !29
  %t83 = getelementptr %"compiler/generic:Program", ptr %t81, i32 0, i32 0
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = getelementptr %"compiler/load:Loader", ptr %t84, i32 0, i32 3
  %t87 = load ptr, ptr %t86, !tbaa !29
  store ptr %t87, ptr %l40, !tbaa !29
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/scope:Scoper", ptr %t88, i32 0, i32 26
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t93 = icmp eq ptr %t91, null
  br i1 %t93, label %bb20, label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_151a4fd4550fcf07_44af0ef11641bc6b)
  unreachable
bb21:
  br label %bb22
bb22:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/scope:Scoper", ptr %t95, i32 0, i32 26
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t101 = getelementptr %"compiler/typed:Body", ptr %t98, i32 0, i32 7
  %t102 = load i64, ptr %l2, !tbaa !24
  %t105 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t101, i64 %t102)
  store %"compiler/typed:Local" %t105, ptr %l49
  br label %bb23
bb23:
  %t106 = getelementptr %"compiler/typed:Local", ptr %l49, i32 0, i32 0
  %t107 = load i32, ptr %t106, !tbaa !23
  %t108 = load ptr, ptr %l40, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %s0, ptr %t108, i32 %t107)
  store { i64, ptr } %t110, ptr %l51
  br label %bb24
bb24:
  %t111 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 1
  %t113 = extractvalue { i64, ptr } %t111, 0
  %t114 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t112, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eviewCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l12 = alloca ptr
  %l22 = alloca i64
  %l25 = alloca i64
  %l45 = alloca { i64, ptr }
  %l48 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call ptr @compiler_2ftyped_2eCall_2eOf(ptr %v1, ptr %v1, ptr %a1)
  store ptr %t4, ptr %l12
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l12, !tbaa !29
  store ptr %t5, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = icmp eq ptr %t6, null
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i64 -1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Call", ptr %t11, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = icmp sgt i64 %t24, 0
  br i1 %t26, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb10
bb7:
  %t28 = load i64, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = sub i64 %t28, %t29
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = add i64 %t32, %t33
  %t38 = sub i64 %t36, 1
  %t39 = load i64, ptr %l5, !tbaa !24
  %t42 = sdiv i64 %t38, %t39
  store i64 %t42, ptr %l25, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l22, !tbaa !24
  br label %bb10
bb10:
  %t45 = load i64, ptr %l22, !tbaa !24
  store i64 %t45, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb24
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l3, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = mul i64 %t55, %t56
  %t62 = add i64 %t54, %t59
  store i64 %t62, ptr %l8, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Call", ptr %t65, i32 0, i32 1
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l45, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr ptr, ptr %t72, i64 %t69
  %t74 = load ptr, ptr %t73, !tbaa !39
  %t77 = call i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedLocal(ptr %v0, ptr %v1, ptr %t64, ptr %t74)
  store i64 %t77, ptr %l48
  br label %bb15
bb15:
  %t78 = load i64, ptr %l48, !tbaa !24
  store i64 %t78, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t81 = icmp sge i64 %t79, 0
  br i1 %t81, label %bb16, label %bb17
bb16:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t85 = load i64, ptr %l8, !tbaa !24
  %t89 = call i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultViews(ptr %v0, ptr %v1, ptr %t83, ptr %t84, i64 %t85)
  store i1 %t89, ptr %l55
  br label %bb18
bb17:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb19
bb18:
  %t90 = load i1, ptr %l55, !tbaa !21
  store i1 %t90, ptr %l51, !tbaa !21
  br label %bb19
bb19:
  %t91 = load i1, ptr %l51, !tbaa !21
  br i1 %t91, label %bb20, label %bb21
bb20:
  %t92 = load i64, ptr %l9, !tbaa !24
  store i64 %t92, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l7, !tbaa !24
  br label %bb11
bb24:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewordAt(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l29 = alloca i1
  %l30 = alloca { i64, ptr }
  %l43 = alloca i64
  %l46 = alloca i64
  %l70 = alloca i1
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l76 = alloca i64
  %l77 = alloca i64
  %l83 = alloca i1
  %l87 = alloca i1
  %l88 = alloca { i64, ptr }
  %l92 = alloca i1
  %l100 = alloca i1
  %l101 = alloca { i64, ptr }
  %l107 = alloca i1
  %l115 = alloca %"compiler/source:Span"
  %s3 = alloca %olang.scope
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/scope:Scoper", ptr %t1, i32 0, i32 11
  store ptr %t3, ptr %l13, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/scope:Scoper", ptr %t4, i32 0, i32 26
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_eb4644f0af45390e_1376074f3833ad62)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/scope:Scoper", ptr %t11, i32 0, i32 26
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Body", ptr %t14, i32 0, i32 3
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load ptr, ptr %l13, !tbaa !29
  %t21 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t19, i64 %t18)
  %t22 = extractvalue { i32, { i64, ptr } } %t21, 1
  %t23 = extractvalue { i32, { i64, ptr } } %t21, 0
  store i32 %t23, ptr %l22
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb5, label %ok.25, !prof !99
ok.25:
  store { i64, ptr } %t22, ptr %l21
  br label %bb4
bb4:
  %t26 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t26, ptr %l11, !tbaa !27
  br label %bb7
bb5:
  br label %bb6
bb6:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb7
bb7:
  %t27 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t27, ptr %l3, !tbaa !27
  %t28 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  store i64 %t31, ptr %l4, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t34, 0
  %t39 = icmp slt i64 %t33, %t36
  br i1 %t39, label %bb9, label %bb10
bb9:
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t41, ptr %l30, !tbaa !27
  %t42 = load i64, ptr %l4, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i8, ptr %t45, i64 %t42
  %t47 = load i8, ptr %t46, !tbaa !32
  %t49 = icmp ne i8 %t47, 10
  store i1 %t49, ptr %l29, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l29, !tbaa !21
  %t52 = xor i1 %t51, true
  br i1 %t52, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l4, !tbaa !24
  br label %bb15
bb15:
  br label %bb8
bb16:
  %t58 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = sext i32 %t59 to i64
  store i64 %t61, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l4, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb17, label %bb18
bb17:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb22
bb19:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l7, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l46, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb21
bb21:
  %t91 = load i64, ptr %l46, !tbaa !24
  store i64 %t91, ptr %l43, !tbaa !24
  br label %bb22
bb22:
  %t92 = load i64, ptr %l43, !tbaa !24
  store i64 %t92, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb23
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l8, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb24, label %bb25
bb24:
  call void @__olang_scope_close(ptr %s3)
  br label %bb56
bb25:
  br label %bb26
bb26:
  %t101 = load i64, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l9, !tbaa !24
  %t103 = load i64, ptr %l7, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l10, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t114 = extractvalue { i64, ptr } %t112, 0
  %t117 = add i64 %t111, %t114
  %t118 = load i64, ptr %l4, !tbaa !24
  %t121 = icmp sgt i64 %t117, %t118
  br i1 %t121, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb36
bb28:
  %t123 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t123, ptr %l71, !tbaa !27
  %t124 = load i64, ptr %l10, !tbaa !24
  store i64 %t124, ptr %l72, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  %t131 = add i64 %t125, %t128
  store i64 %t131, ptr %l76, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 0
  store i64 %t133, ptr %l77, !tbaa !24
  %t134 = load i64, ptr %l72, !tbaa !24
  %t135 = icmp sge i64 %t134, 0
  br i1 %t135, label %bb29, label %bb30
bb29:
  %t137 = load i64, ptr %l72, !tbaa !24
  %t138 = load i64, ptr %l76, !tbaa !24
  %t139 = icmp sle i64 %t137, %t138
  br i1 %t139, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_d7bea1f8c4fc6c43_c97bd86ee0afa2f7)
  unreachable
bb31:
  %t141 = load i64, ptr %l76, !tbaa !24
  %t142 = load i64, ptr %l77, !tbaa !24
  %t143 = icmp sle i64 %t141, %t142
  br i1 %t143, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_d7bea1f8c4fc6c43_c97bd86ee0afa2f7)
  unreachable
bb33:
  %t145 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = load i64, ptr %l76, !tbaa !24
  %t149 = getelementptr i8, ptr %t146, i64 %t147
  %t150 = sub i64 %t148, %t147
  %t151 = insertvalue { i64, ptr } undef, i64 %t150, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t149, 1
  %t153 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t156 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t152, { i64, ptr } %t153)
  store i1 %t156, ptr %l83
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d7bea1f8c4fc6c43_c97bd86ee0afa2f7)
  unreachable
bb35:
  %t157 = load i1, ptr %l83, !tbaa !21
  %t158 = xor i1 %t157, true
  store i1 %t158, ptr %l70, !tbaa !21
  br label %bb36
bb36:
  %t160 = load i1, ptr %l70, !tbaa !21
  br i1 %t160, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb38:
  br label %bb39
bb39:
  %t161 = load i64, ptr %l10, !tbaa !24
  %t163 = icmp sgt i64 %t161, 0
  br i1 %t163, label %bb40, label %bb41
bb40:
  %t165 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t165, ptr %l88, !tbaa !27
  %t166 = load i64, ptr %l10, !tbaa !24
  %t168 = sub i64 %t166, 1
  %t170 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i8, ptr %t171, i64 %t168
  %t173 = load i8, ptr %t172, !tbaa !32
  %t175 = call i1 @compiler_2fscope_2eisNameChar(i8 %t173)
  store i1 %t175, ptr %l92
  br label %bb42
bb41:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb43
bb42:
  %t176 = load i1, ptr %l92, !tbaa !21
  store i1 %t176, ptr %l87, !tbaa !21
  br label %bb43
bb43:
  %t177 = load i1, ptr %l87, !tbaa !21
  br i1 %t177, label %bb44, label %bb45
bb44:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb45:
  br label %bb46
bb46:
  %t178 = load i64, ptr %l10, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t179, 0
  %t184 = add i64 %t178, %t181
  %t185 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t187 = extractvalue { i64, ptr } %t185, 0
  %t190 = icmp slt i64 %t184, %t187
  br i1 %t190, label %bb47, label %bb48
bb47:
  %t192 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t192, ptr %l101, !tbaa !27
  %t193 = load i64, ptr %l10, !tbaa !24
  %t194 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t199 = add i64 %t193, %t196
  %t201 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i8, ptr %t202, i64 %t199
  %t204 = load i8, ptr %t203, !tbaa !32
  %t206 = call i1 @compiler_2fscope_2eisNameChar(i8 %t204)
  store i1 %t206, ptr %l107
  br label %bb49
bb48:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb50
bb49:
  %t207 = load i1, ptr %l107, !tbaa !21
  store i1 %t207, ptr %l100, !tbaa !21
  br label %bb50
bb50:
  %t208 = load i1, ptr %l100, !tbaa !21
  br i1 %t208, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb52:
  br label %bb53
bb53:
  %t209 = load i64, ptr %l10, !tbaa !24
  %t211 = trunc i64 %t209 to i32
  %t212 = load i64, ptr %l10, !tbaa !24
  %t213 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t218 = add i64 %t212, %t215
  %t220 = trunc i64 %t218 to i32
  %t223 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s3, i32 %t211, i32 %t220)
  store %"compiler/source:Span" %t223, ptr %l115
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s3)
  %t224 = load %"compiler/source:Span", ptr %l115
  store %"compiler/source:Span" %t224, ptr %rv
  br label %ret
bb55:
  %t225 = load i64, ptr %l9, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l9, !tbaa !24
  br label %bb23
bb56:
  %t229 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t229, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local ptr @compiler_2fscope_2eletOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l24 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store ptr null, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Block", ptr %t6, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l18, !tbaa !27
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  %t36 = call ptr @compiler_2fscope_2eletIn(ptr %v0, ptr %v1, ptr %t29, i64 %a1)
  store ptr %t36, ptr %l24
  br label %bb8
bb8:
  %t37 = load ptr, ptr %l24, !tbaa !29
  store ptr %t37, ptr %l6, !tbaa !29
  %t38 = load ptr, ptr %l6, !tbaa !29
  %t40 = icmp eq ptr %t38, null
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l6, !tbaa !29
  store ptr %t44, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store ptr null, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fscope_2esameSummary(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/scope:summary"
  %l3 = alloca %"compiler/scope:summary"
  %l4 = alloca %"compiler/scope:fnRecs"
  %l5 = alloca %"compiler/scope:fnRecs"
  %l7 = alloca %"compiler/scope:summary"
  %l9 = alloca %"compiler/scope:summary"
  %l10 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"compiler/scope:summary"
  %l34 = alloca i1
  %l35 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l42 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca i1
  %l58 = alloca i1
  %l59 = alloca i1
  %l62 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l67 = alloca i1
  %l70 = alloca i1
  %l71 = alloca i1
  %l74 = alloca i1
  %l75 = alloca i1
  %l78 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l83 = alloca i1
  %l86 = alloca i1
  %l87 = alloca i1
  %l90 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l95 = alloca i1
  %l100 = alloca i1
  %l101 = alloca i1
  %l102 = alloca i1
  %l104 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i1
  %l110 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i1
  %l115 = alloca i1
  %l116 = alloca i1
  %l118 = alloca i1
  %l120 = alloca i1
  %l121 = alloca i1
  %l122 = alloca i1
  %l124 = alloca i1
  %l126 = alloca i1
  %l127 = alloca i1
  %l128 = alloca i1
  %l130 = alloca i1
  %l132 = alloca i1
  %l133 = alloca i1
  %l134 = alloca i1
  %l136 = alloca i1
  %l138 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t3 = alloca %"compiler/scope:summary", align 8
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %a0, i64 624, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3asummary(ptr %t3, ptr %s0, ptr %l7)
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %t3, i64 624, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l9, i64 624, i1 false)
  %t5 = ptrtoint ptr %s0 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e3
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %s0)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l10, !tbaa !24
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/scope:summary", ptr %t10, i32 0, i32 3
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l13
  %t14 = load i64, ptr %l10
  %t15 = inttoptr i64 %t14 to ptr
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %t15, ptr %l13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l15
  br label %bb4
bb4:
  %t18 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e3
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l10
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22
  %t24 = extractvalue { i64, ptr } %t23, 1
  %t25 = call ptr @__olang_region_or(ptr %t24, ptr null)
  %t26 = icmp ne ptr %t25, null
  %t27 = select i1 %t26, ptr %t25, ptr null
  %t28 = icmp eq ptr %t27, %t21
  call void @__olang_region_settle(ptr %t21, i1 %t28)
  br label %bb6
bb6:
  %t29 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 3
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l17
  %t31 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t32 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %t32
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e3
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  call void @__olang_region_drop(ptr %t40)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l17
  br label %bb8
bb8:
  %t41 = ptrtoint ptr %s0 to i64
  store i64 %t41, ptr %l19, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e4
  br i1 %t42, label %bb9, label %bb10
bb9:
  %t44 = call ptr @__olang_region_make(ptr %s0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l19, !tbaa !24
  br label %bb10
bb10:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/scope:summary", ptr %t46, i32 0, i32 4
  %t49 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l22
  %t50 = load i64, ptr %l19
  %t51 = inttoptr i64 %t50 to ptr
  %t53 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %t51, ptr %l22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t53, ptr %l24
  br label %bb11
bb11:
  %t54 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e4
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t56 = load i64, ptr %l19
  %t57 = inttoptr i64 %t56 to ptr
  %t58 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t59 = load { i64, ptr }, ptr %t58
  %t60 = extractvalue { i64, ptr } %t59, 1
  %t61 = call ptr @__olang_region_or(ptr %t60, ptr null)
  %t62 = icmp ne ptr %t61, null
  %t63 = select i1 %t62, ptr %t61, ptr null
  %t64 = icmp eq ptr %t63, %t57
  call void @__olang_region_settle(ptr %t57, i1 %t64)
  br label %bb13
bb13:
  %t65 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 4
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %l26
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t68 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %t68
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2fscope_3asummary_2e4
  br i1 %t69, label %bb14, label %bb15
bb14:
  %t71 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = icmp ne ptr %t74, null
  %t76 = select i1 %t75, ptr %t74, ptr null
  call void @__olang_region_drop(ptr %t76)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l26
  br label %bb15
bb15:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr %"compiler/scope:summary", ptr %t77, i32 0, i32 18
  %t80 = load i1, ptr %t79, !tbaa !21
  %t82 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 18
  store i1 %t80, ptr %t82, !tbaa !21
  %t83 = load ptr, ptr %l1, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t83, i64 624, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l31, i64 624, i1 false)
  %t85 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 0
  %t86 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 0
  %t89 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eEq_3ccompiler_2fscope_3arel_3e(ptr %s0, ptr %v1, ptr %t85, ptr %t86)
  store i1 %t89, ptr %l34
  br label %bb16
bb16:
  %t90 = load i1, ptr %l34, !tbaa !21
  br i1 %t90, label %bb17, label %bb18
bb17:
  %t91 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 1
  %t92 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 1
  %t95 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t91, ptr %t92)
  store i1 %t95, ptr %l38
  br label %bb19
bb18:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb20
bb19:
  %t96 = load i1, ptr %l38, !tbaa !21
  store i1 %t96, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t97 = load i1, ptr %l35, !tbaa !21
  br i1 %t97, label %bb21, label %bb22
bb21:
  %t98 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 2
  %t99 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 2
  %t102 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t98, ptr %t99)
  store i1 %t102, ptr %l42
  br label %bb23
bb22:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb24
bb23:
  %t103 = load i1, ptr %l42, !tbaa !21
  store i1 %t103, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t104 = load i1, ptr %l39, !tbaa !21
  br i1 %t104, label %bb25, label %bb26
bb25:
  %t105 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 3
  %t106 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 3
  %t109 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t105, ptr %t106)
  store i1 %t109, ptr %l46
  br label %bb27
bb26:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb28
bb27:
  %t110 = load i1, ptr %l46, !tbaa !21
  store i1 %t110, ptr %l43, !tbaa !21
  br label %bb28
bb28:
  %t111 = load i1, ptr %l43, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t112 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 4
  %t113 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 4
  %t116 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eEq_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %v1, ptr %t112, ptr %t113)
  store i1 %t116, ptr %l50
  br label %bb31
bb30:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb32
bb31:
  %t117 = load i1, ptr %l50, !tbaa !21
  store i1 %t117, ptr %l47, !tbaa !21
  br label %bb32
bb32:
  %t118 = load i1, ptr %l47, !tbaa !21
  br i1 %t118, label %bb33, label %bb34
bb33:
  %t119 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 5
  %t120 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 5
  %t123 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t119, ptr %t120)
  store i1 %t123, ptr %l54
  br label %bb35
bb34:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb36
bb35:
  %t124 = load i1, ptr %l54, !tbaa !21
  store i1 %t124, ptr %l51, !tbaa !21
  br label %bb36
bb36:
  %t125 = load i1, ptr %l51, !tbaa !21
  br i1 %t125, label %bb37, label %bb38
bb37:
  %t126 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 6
  %t127 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 6
  %t130 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t126, ptr %t127)
  store i1 %t130, ptr %l58
  br label %bb39
bb38:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb40
bb39:
  %t131 = load i1, ptr %l58, !tbaa !21
  store i1 %t131, ptr %l55, !tbaa !21
  br label %bb40
bb40:
  %t132 = load i1, ptr %l55, !tbaa !21
  br i1 %t132, label %bb41, label %bb42
bb41:
  %t133 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 7
  %t134 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 7
  %t137 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t133, ptr %t134)
  store i1 %t137, ptr %l62
  br label %bb43
bb42:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb44
bb43:
  %t138 = load i1, ptr %l62, !tbaa !21
  store i1 %t138, ptr %l59, !tbaa !21
  br label %bb44
bb44:
  %t139 = load i1, ptr %l59, !tbaa !21
  br i1 %t139, label %bb45, label %bb46
bb45:
  %t140 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 8
  %t141 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 8
  %t144 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t140, ptr %t141)
  store i1 %t144, ptr %l66
  br label %bb47
bb46:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb48
bb47:
  %t145 = load i1, ptr %l66, !tbaa !21
  store i1 %t145, ptr %l63, !tbaa !21
  br label %bb48
bb48:
  %t146 = load i1, ptr %l63, !tbaa !21
  br i1 %t146, label %bb49, label %bb50
bb49:
  %t147 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 9
  %t148 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 9
  %t151 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t147, ptr %t148)
  store i1 %t151, ptr %l70
  br label %bb51
bb50:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb52
bb51:
  %t152 = load i1, ptr %l70, !tbaa !21
  store i1 %t152, ptr %l67, !tbaa !21
  br label %bb52
bb52:
  %t153 = load i1, ptr %l67, !tbaa !21
  br i1 %t153, label %bb53, label %bb54
bb53:
  %t154 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 10
  %t155 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 10
  %t158 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %s0, ptr %v1, ptr %t154, ptr %t155)
  store i1 %t158, ptr %l74
  br label %bb55
bb54:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb56
bb55:
  %t159 = load i1, ptr %l74, !tbaa !21
  store i1 %t159, ptr %l71, !tbaa !21
  br label %bb56
bb56:
  %t160 = load i1, ptr %l71, !tbaa !21
  br i1 %t160, label %bb57, label %bb58
bb57:
  %t161 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 11
  %t162 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 11
  %t165 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %v1, ptr %t161, ptr %t162)
  store i1 %t165, ptr %l78
  br label %bb59
bb58:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb60
bb59:
  %t166 = load i1, ptr %l78, !tbaa !21
  store i1 %t166, ptr %l75, !tbaa !21
  br label %bb60
bb60:
  %t167 = load i1, ptr %l75, !tbaa !21
  br i1 %t167, label %bb61, label %bb62
bb61:
  %t168 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 12
  %t169 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 12
  %t172 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t168, ptr %t169)
  store i1 %t172, ptr %l82
  br label %bb63
bb62:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb64
bb63:
  %t173 = load i1, ptr %l82, !tbaa !21
  store i1 %t173, ptr %l79, !tbaa !21
  br label %bb64
bb64:
  %t174 = load i1, ptr %l79, !tbaa !21
  br i1 %t174, label %bb65, label %bb66
bb65:
  %t175 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 13
  %t176 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 13
  %t179 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %s0, ptr %v1, ptr %t175, ptr %t176)
  store i1 %t179, ptr %l86
  br label %bb67
bb66:
  store i1 false, ptr %l83, !tbaa !21
  br label %bb68
bb67:
  %t180 = load i1, ptr %l86, !tbaa !21
  store i1 %t180, ptr %l83, !tbaa !21
  br label %bb68
bb68:
  %t181 = load i1, ptr %l83, !tbaa !21
  br i1 %t181, label %bb69, label %bb70
bb69:
  %t182 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 14
  %t183 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 14
  %t186 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t182, ptr %t183)
  store i1 %t186, ptr %l90
  br label %bb71
bb70:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb72
bb71:
  %t187 = load i1, ptr %l90, !tbaa !21
  store i1 %t187, ptr %l87, !tbaa !21
  br label %bb72
bb72:
  %t188 = load i1, ptr %l87, !tbaa !21
  br i1 %t188, label %bb73, label %bb74
bb73:
  %t189 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 15
  %t190 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 15
  %t193 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t189, ptr %t190)
  store i1 %t193, ptr %l94
  br label %bb75
bb74:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb76
bb75:
  %t194 = load i1, ptr %l94, !tbaa !21
  store i1 %t194, ptr %l91, !tbaa !21
  br label %bb76
bb76:
  %t195 = load i1, ptr %l91, !tbaa !21
  br i1 %t195, label %bb77, label %bb78
bb77:
  %t196 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 16
  %t197 = load %"compiler/scope:fnRecs", ptr %t196
  store %"compiler/scope:fnRecs" %t197, ptr %l4
  %t199 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 16
  %t200 = load %"compiler/scope:fnRecs", ptr %t199
  store %"compiler/scope:fnRecs" %t200, ptr %l5
  %t202 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 0
  %t203 = getelementptr %"compiler/scope:fnRecs", ptr %l5, i32 0, i32 0
  %t206 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eEq_3ccompiler_2fscope_3afnRec_3e(ptr %s0, ptr %s0, ptr %t202, ptr %t203)
  store i1 %t206, ptr %l100
  br label %bb79
bb78:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb92
bb79:
  %t207 = load i1, ptr %l100, !tbaa !21
  br i1 %t207, label %bb80, label %bb81
bb80:
  %t208 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 1
  %t209 = load i1, ptr %t208, !tbaa !21
  store i1 %t209, ptr %l102, !tbaa !21
  %t210 = getelementptr %"compiler/scope:fnRecs", ptr %l5, i32 0, i32 1
  %t211 = load i1, ptr %t210, !tbaa !21
  store i1 %t211, ptr %l104, !tbaa !21
  %t214 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l102, ptr %l104)
  store i1 %t214, ptr %l106
  br label %bb82
bb81:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb83
bb82:
  %t215 = load i1, ptr %l106, !tbaa !21
  store i1 %t215, ptr %l101, !tbaa !21
  br label %bb83
bb83:
  %t216 = load i1, ptr %l101, !tbaa !21
  br i1 %t216, label %bb84, label %bb85
bb84:
  %t217 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 2
  %t218 = getelementptr %"compiler/scope:fnRecs", ptr %l5, i32 0, i32 2
  %t221 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t217, ptr %t218)
  store i1 %t221, ptr %l110
  br label %bb86
bb85:
  store i1 false, ptr %l107, !tbaa !21
  br label %bb87
bb86:
  %t222 = load i1, ptr %l110, !tbaa !21
  store i1 %t222, ptr %l107, !tbaa !21
  br label %bb87
bb87:
  %t223 = load i1, ptr %l107, !tbaa !21
  br i1 %t223, label %bb88, label %bb89
bb88:
  %t224 = getelementptr %"compiler/scope:fnRecs", ptr %l4, i32 0, i32 3
  %t225 = getelementptr %"compiler/scope:fnRecs", ptr %l5, i32 0, i32 3
  %t228 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %s0, ptr %v1, ptr %t224, ptr %t225)
  store i1 %t228, ptr %l114
  br label %bb90
bb89:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb91
bb90:
  %t229 = load i1, ptr %l114, !tbaa !21
  store i1 %t229, ptr %l111, !tbaa !21
  br label %bb91
bb91:
  %t230 = load i1, ptr %l111, !tbaa !21
  store i1 %t230, ptr %l95, !tbaa !21
  br label %bb92
bb92:
  %t231 = load i1, ptr %l95, !tbaa !21
  br i1 %t231, label %bb93, label %bb94
bb93:
  %t232 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 17
  %t233 = load i1, ptr %t232, !tbaa !21
  store i1 %t233, ptr %l116, !tbaa !21
  %t234 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 17
  %t235 = load i1, ptr %t234, !tbaa !21
  store i1 %t235, ptr %l118, !tbaa !21
  %t238 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l116, ptr %l118)
  store i1 %t238, ptr %l120
  br label %bb95
bb94:
  store i1 false, ptr %l115, !tbaa !21
  br label %bb96
bb95:
  %t239 = load i1, ptr %l120, !tbaa !21
  store i1 %t239, ptr %l115, !tbaa !21
  br label %bb96
bb96:
  %t240 = load i1, ptr %l115, !tbaa !21
  br i1 %t240, label %bb97, label %bb98
bb97:
  %t241 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 18
  %t242 = load i1, ptr %t241, !tbaa !21
  store i1 %t242, ptr %l122, !tbaa !21
  %t243 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 18
  %t244 = load i1, ptr %t243, !tbaa !21
  store i1 %t244, ptr %l124, !tbaa !21
  %t247 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l122, ptr %l124)
  store i1 %t247, ptr %l126
  br label %bb99
bb98:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb100
bb99:
  %t248 = load i1, ptr %l126, !tbaa !21
  store i1 %t248, ptr %l121, !tbaa !21
  br label %bb100
bb100:
  %t249 = load i1, ptr %l121, !tbaa !21
  br i1 %t249, label %bb101, label %bb102
bb101:
  %t250 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 19
  %t251 = load i1, ptr %t250, !tbaa !21
  store i1 %t251, ptr %l128, !tbaa !21
  %t252 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 19
  %t253 = load i1, ptr %t252, !tbaa !21
  store i1 %t253, ptr %l130, !tbaa !21
  %t256 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l128, ptr %l130)
  store i1 %t256, ptr %l132
  br label %bb103
bb102:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb104
bb103:
  %t257 = load i1, ptr %l132, !tbaa !21
  store i1 %t257, ptr %l127, !tbaa !21
  br label %bb104
bb104:
  %t258 = load i1, ptr %l127, !tbaa !21
  br i1 %t258, label %bb105, label %bb106
bb105:
  %t259 = getelementptr %"compiler/scope:summary", ptr %l2, i32 0, i32 20
  %t260 = load i1, ptr %t259, !tbaa !21
  store i1 %t260, ptr %l134, !tbaa !21
  %t261 = getelementptr %"compiler/scope:summary", ptr %l3, i32 0, i32 20
  %t262 = load i1, ptr %t261, !tbaa !21
  store i1 %t262, ptr %l136, !tbaa !21
  %t265 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %l134, ptr %l136)
  store i1 %t265, ptr %l138
  br label %bb107
bb106:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb108
bb107:
  %t266 = load i1, ptr %l138, !tbaa !21
  store i1 %t266, ptr %l133, !tbaa !21
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s0)
  %t267 = load i1, ptr %l133, !tbaa !21
  store i1 %t267, ptr %rv
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
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
@.d3 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"a lambda" }>, align 8
@.d4 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"inferred: " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d5 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" locals lifted (" }>, align 8
@.d6 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c" for a part of them kept), " }>, align 8
@.d7 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c" with their storage, " }>, align 8
@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" calls landed, " }>, align 8
@.d9 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" needing a W, " }>, align 8
@.d10 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c" fields promoted (" }>, align 8
@.d11 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c" given back), " }>, align 8
@.d12 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c" second phases for views" }>, align 8
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

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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

@olang_2esole_2ecompiler_2ftyped_3aPlan_2e2 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e15 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_drop(ptr) noinline
@olang_2esole_2ecompiler_2ftyped_3aPlan_2e16 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e1 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_3e_2e2 = weak hidden constant i1 false
@.d14 = private constant <{ i64, [48 x i8] }> <{ i64 0, [48 x i8] c"the functions given here followed into it (T22c)" }>, align 8
@.d15 = private constant <{ i64, [35 x i8] }> <{ i64 0, [35 x i8] c"an instance is built in one of them" }>, align 8
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fscope_3afnRecs_2e3 = weak hidden constant i1 false
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

@olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
define internal i1 @olang_lambda_16(ptr %env, i64 %a0) #0 {
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

@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"SetAt" }>, align 8
@.d22 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"setAt" }>, align 8
@.d23 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"a temporary is built in " }>, align 8
@.d24 = private constant <{ i64, [195 x i8] }> <{ i64 0, [195 x i8] c", a new one each time it is made, for a become closing its block, kept until the chain's first caller lets go of the result - its destructor runs as that scope closes, not at the end of its block" }>, align 8
@olang_2esole_2ecompiler_2fscope_3aPlacement_2e4 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr %"compiler/scope:Placement" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3aPlacement(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:Placement"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/scope:Placement"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/scope:Placement", ptr %a0
  store %"compiler/scope:Placement" %t2, ptr %l1
  %t3 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
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
  %t19 = getelementptr %"compiler/scope:Placement", ptr %l1, i32 0, i32 4
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/scope:Placement", ptr %l1
  store %"compiler/scope:Placement" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/scope:Placement", ptr %rv
  ret %"compiler/scope:Placement" %rr
}

@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"'" }>, align 8
@.d27 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"' (its own copy)" }>, align 8
@.d28 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"a temporary" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c" is built in " }>, align 8
@.d31 = private constant <{ i64, [112 x i8] }> <{ i64 0, [112 x i8] c", a new one each time it is made, for the become here, kept until its chain's first caller lets go of the result" }>, align 8
define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e({ i64, ptr } %t2, { i64, ptr } %t4)
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e({ i64, ptr } %t2, { i64, ptr } %t4)
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e({ i64, ptr } %t2, { i64, ptr } %t4)
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_3f_26_3e_26(ptr %a0, ptr %a1) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr %a0, !tbaa !27
  %t4 = load { i64, ptr }, ptr %a1, !tbaa !27
  %t9 = call i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_3f_26_3e({ i64, ptr } %t2, { i64, ptr } %t4)
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

@.d32 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3asummary(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/scope:summary"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca %"compiler/scope:fnRecs"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 624, i1 false)
  %t2 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 1
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 2
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 3
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 4
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 5
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 6
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 7
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  %t42 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 8
  %t44 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t42)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l19
  br label %bb9
bb9:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t46 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t46
  %t47 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 9
  %t49 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t47)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t49, ptr %l21
  br label %bb10
bb10:
  %t50 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  %t51 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %t51
  %t52 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 10
  %t54 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t52)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l23
  br label %bb11
bb11:
  %t55 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t56 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %t56
  %t57 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 11
  %t59 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t57)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t59, ptr %l25
  br label %bb12
bb12:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  %t61 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %t61
  %t62 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 12
  %t64 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %l27
  br label %bb13
bb13:
  %t65 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  %t66 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %t66
  %t67 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 13
  %t69 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %t67)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l29
  br label %bb14
bb14:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  %t71 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %t71
  %t72 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 14
  %t74 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t72)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %l31
  br label %bb15
bb15:
  %t75 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l31
  %t76 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t75, ptr %t76
  %t77 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 15
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t77)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l33
  br label %bb16
bb16:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  %t81 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %t81
  %t82 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 16
  %t84 = call %"compiler/scope:fnRecs" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fscope_3afnRecs(ptr %v0, ptr %t82)
  store %"compiler/scope:fnRecs" %t84, ptr %l35
  br label %bb17
bb17:
  %t85 = load %"compiler/scope:fnRecs", ptr %l35
  %t86 = getelementptr %"compiler/scope:summary", ptr %l1, i32 0, i32 16
  store %"compiler/scope:fnRecs" %t85, ptr %t86
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 624, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2fscope_3asummary_2e3 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2fscope_3asummary_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eBool(ptr %a0, ptr %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i1, ptr %a0, !tbaa !21
  %t4 = load i1, ptr %a1, !tbaa !21
  %t7 = icmp eq i1 %t2, %t4
  store i1 %t7, ptr %rv
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
declare noalias ptr @__olang_scope_alloc_slow(ptr, i64, i64) noinline
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aScope_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
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
  br label %bb8
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
  %t16 = getelementptr { i64, [2 x i64] }, ptr %t15, i64 %t13
  %t17 = load i64, ptr %l6, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i64 %t17
  %t23 = call i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %t16, ptr %t20)
  store i1 %t23, ptr %l10
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb7, label %bb1
bb7:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = add i64 %t25, 1
  store i64 %t26, ptr %l6, !tbaa !24
  br label %bb3
bb8:
  %t27 = load i1, ptr %l2, !tbaa !21
  store i1 %t27, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cBool_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t16 = getelementptr i1, ptr %t15, i64 %t13
  %t17 = load i1, ptr %t16, !tbaa !31
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i1, ptr %t20, i64 %t18
  %t22 = load i1, ptr %t21, !tbaa !31
  %t25 = icmp eq i1 %t17, %t22
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3cI64_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t16 = getelementptr i64, ptr %t15, i64 %t13
  %t17 = load i64, ptr %t16, !tbaa !34
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t18
  %t22 = load i64, ptr %t21, !tbaa !34
  %t25 = icmp eq i64 %t17, %t22
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2eArray_3ccompiler_2ftyped_3aExpr_3f_26_3e({ i64, ptr } %a0, { i64, ptr } %a1) #0 {
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
  %t16 = getelementptr ptr, ptr %t15, i64 %t13
  %t17 = load ptr, ptr %t16, !tbaa !39
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr ptr, ptr %t20, i64 %t18
  %t22 = load ptr, ptr %t21, !tbaa !39
  %t25 = icmp eq ptr %t17, %t22
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

define linkonce_odr i1 @olang_2emir_2eHelperKind_2eEqual_2ecompiler_2ftyped_3aScope(ptr %a0, ptr %a1) #0 {
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
  %t2 = load i64, ptr %t1, !range !{i64 0, i64 9}
  store i64 %t2, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load i64, ptr %t3, !range !{i64 0, i64 9}
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, %t4
  br i1 %t7, label %bb2, label %bb1
bb1:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb15
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  switch i64 %t9, label %bb3 [ i64 1, label %bb4 i64 2, label %bb5 i64 4, label %bb6 i64 7, label %bb7 i64 8, label %bb8 ]
bb3:
  br label %bb15
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
  br i1 %t20, label %bb9, label %bb1
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
  br i1 %t32, label %bb10, label %bb1
bb6:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 1
  %t36 = getelementptr { i32 }, ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t40 = getelementptr { i32 }, ptr %t39, i32 0, i32 0
  %t41 = load i32, ptr %t40
  %t44 = icmp eq i32 %t37, %t41
  br i1 %t44, label %bb11, label %bb1
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
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr { i64, [2 x i64] }, ptr %t58, i32 0, i32 1
  %t60 = getelementptr { i64, i64 }, ptr %t59, i32 0, i32 0
  %t61 = load i64, ptr %t60
  %t62 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr { i64, [2 x i64] }, ptr %t62, i32 0, i32 1
  %t64 = getelementptr { i64, i64 }, ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %t64
  %t68 = icmp eq i64 %t61, %t65
  br i1 %t68, label %bb13, label %bb1
bb9:
  br label %bb3
bb10:
  br label %bb3
bb11:
  br label %bb3
bb12:
  br label %bb3
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t70, i32 0, i32 1
  %t72 = getelementptr { i64, i64 }, ptr %t71, i32 0, i32 1
  %t73 = load i64, ptr %t72
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr { i64, [2 x i64] }, ptr %t74, i32 0, i32 1
  %t76 = getelementptr { i64, i64 }, ptr %t75, i32 0, i32 1
  %t77 = load i64, ptr %t76
  %t80 = icmp eq i64 %t73, %t77
  br i1 %t80, label %bb14, label %bb1
bb14:
  br label %bb3
bb15:
  %t82 = load i1, ptr %l2, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

declare %"compiler/scope:Val" @compiler_2fscope_3aVal_2ector(ptr %v0, i32 %a0, { i64, [2 x i64] } %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftypes_3aTypeId_3e_2ePush_3ccompiler_2ftypes_3aTypeId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6f3b4b2e4e301b65_ef2dd15b8f9fe549 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eToArray_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_He4283c245933e28cdc2fc55a6cc24bf1(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eInstanceFn(ptr %v0, ptr %a0, i64 %a1)
declare ptr @compiler_2fgeneric_2ecompiler_2fgeneric_3aProgram_2eFnDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_d092cc8b6b901f99_2fc50d69972bed85 = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H135723289cd67fccd962ee530d90cf81(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hda9b67cfa9ae8a2a4969568452cdfd9b(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_Hb48ebc0aec2f1394686d895000e23a7c(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisCursorLocal(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f0350fc91fe6e1d6_3a4336dcacad1f0a = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ereachFor(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__H4d9dd4678cabff1b2f88ea0996ab01db(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/scope:fnRecs" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3afnRecs_3e__Hf28901f23b5d22676a93f0159a8b63c2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_3afnRecs_2ector(ptr %v0)
declare void @compiler_2fscope_2emergeRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2elateDef(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eassignedWhole(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc57530578add1ad359c6d87470cc4752(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_H68cd31c3dbcdb47f3349b834dda1e07d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddRecs(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare %"compiler/typed:Block" @compiler_2ftyped_3aBlock_2ector(ptr %v0, ptr %v1, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ealiasBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_75e5f2eb37e26097_1cabe39736605273 = external constant [0 x i8]
declare ptr @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eunAway(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisRef(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epartCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_bd8a316f234c31bd_e8aabd6e86499e79 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enameSpan(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeBorrows(ptr %v0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eerr(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, %"compiler/diagmsg:Msg" %a2)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2earenaValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailStorageGiven(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_f447ab81603d391c_7aef9466e7fdeac8 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eLen_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocalId_3e_2eAt_3ccompiler_2ftyped_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etailTakes(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeHeldParam(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H812d4871fea5544bd17001c04038a9fe(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hc680bc8b736298027ff580de04f60380(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hfb9e5165fbc860148668cf342d052cc0(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecalleeType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@olang_loc_e7f077513292cd77_7cc56e961d13405b = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRole(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eRoleCtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShareOf(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftypes_2eFromTypeVar = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FE\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResults(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResultFrom(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebodyOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fscope_3asummary_26_3e_Hf018e585e117ec5a1eef851c731bcf79(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eScopeVarsOf(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eLen_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:rel" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eAt_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ederivedOf({ i64, [2 x i64] } %a0, i64 %a1)
@olang_loc_c315d8e1b666b9f2_cb49359568748e36 = external constant [0 x i8]
@olang_loc_24644cfdb6585119_908704f065623d9d = external constant [0 x i8]
@olang_loc_68a62456ab789a64_c90c032bbba18c8 = external constant [0 x i8]
@olang_loc_95e0a8f1123dd6ca_6df17d64d17059fe = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eholds(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fscope_2eflThroughRef(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2epeekPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@olang_loc_5b1407f703b7271d_53185d392c7421d9 = external constant [0 x i8]
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehere(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esiteLift(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aTerm_2eRuns({ i64, [2 x i64] } %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ejoinTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@olang_loc_f5c0dd4304aa3f4e_d3ec1bfd2e5f3d82 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eRowOf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eSigOf(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eSetAt_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eReachRow(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, ptr %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eClear_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edefTermAt(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eaddToSet(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esameTerms(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, ptr %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_b79eb6ae90738dac_dd72f768f22d9fa0 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eflStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2ePush_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare %"compiler/scope:Val" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eval(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalTerm(ptr %v0, ptr %a0, %"compiler/scope:Val" %a1, { i64, [2 x i64] } %a2)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2escopeOf(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einner(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecaptureVar(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsSum(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsThrough(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoBuildTerm(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_6745ec537010077c_cd78d81ca0e46128 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildsInto(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, %"compiler/source:Span" %a2, i64 %a3, %"compiler/source:Span" %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H326cc72ba47e1bb28c462bec900fbfa4(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuild(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eToArray_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2)
declare %"compiler/scope:Val" @compiler_2fscope_2eVal_2efresh({ i64, [2 x i64] } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eLen_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eorder(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2)
@G_2ecompiler_2fscope_2eHolds = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eparamVar(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebuildSite(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2, %"compiler/source:Span" %a3)
@olang_loc_88416cbd76536112_77fb8de0a74471de = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_cf803334873ab58c_86e77fabc50c4870 = external constant [0 x i8]
@olang_loc_9240ff9e46a5e522_bd3125f7ca002596 = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKeepsHome(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/scope:fnRecs" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecsOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etypeBeyond(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Span" @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eopTok(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2espell(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBeyond(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i1 @compiler_2fscope_2enamedValue(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eLen_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %a0)
declare %"compiler/scope:fnRec" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eAt_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeptAtHome(ptr %v0, ptr %v1, ptr %v2, ptr %a0, %"compiler/scope:fnRec" %a1, i32 %a2, { i64, [2 x i64] } %a3, ptr %a4)
@olang_loc_fe344904a97bf1b6_507e40a324cea062 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2egap(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, { i64, ptr } %a3)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2edropDefs(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einferRounds(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a5122b0b395bd8b_9870aa37c8b5f2ef = external constant [0 x i8]
@olang_loc_51a7ef38ab67534a_42b12633f9b5762e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ehasLateLocals(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H075aca2c24d2905e4fa457b6b6d6570e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eClear_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eClear_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aExpr_26_3e_Hc1e7c6bbb3acbd34c924c83b2bb772b9(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fscope_3aTerm_3e_2e_Hb8a8915e0c6fdfa2e5a92011b8ae7ed6(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLvalue_26_3e_2eClea_Hf36a88772899b36a46c039ef55a38999(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ePlan_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakesDerived(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisStr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eAt_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_75ea16a293881b53_a3e5ee6d3f4964f = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everStart(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextDepth(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eContextBase(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstanceOf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2einstContexts(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePushContext(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, { i64, ptr } %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erecStart(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBoundsDefs(ptr %v0, ptr %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCount(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erun(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2everEnd(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efnBounds(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estrReceiver(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBecomeDestructor(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorOncePerLine(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteHere(ptr %v0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enote(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, %"compiler/diagmsg:Msg" %a4)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2ePopContext(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ekeepRel(ptr %v0, ptr %a0, %"compiler/scope:rel" %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteFieldRecs(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ecomputeKeeps(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eSetAt_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eregionKind(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_112580bef49b4694_3ee0d174ca2ee048 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekeepParam(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_8b1069152ab8ab4d_46bfa78d80464041 = external constant [0 x i8]
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwPlace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2eregionRoot(ptr %v0, ptr %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwCall(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwArm(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ekwCapture(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
@olang_loc_da7e2501b5a1c31c_336a9d74a1bc00b0 = external constant [0 x i8]
@olang_loc_1bad1049d3f03857_11a2742c169a90eb = external constant [0 x i8]
@olang_loc_38b65f81bf15a4b6_abe96c91b906622a = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
@olang_loc_5b434404cb6a6c26_74508be7ecdf76b2 = external constant [0 x i8]
declare void @compiler_2ftyped_2eLocalUses_2eUses(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
@olang_loc_99f60e61aa82360d_7984d1f2777c87d9 = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eLastCopies(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cI64_3e_2eSome_3cI64_2c_20_3f_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1c, ptr %a1e)
declare %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" @std_2fpair_3aPair_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H31314c4e7281f5029d6d8eb3044cef10(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, i64 %a2)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H5696e1a008d256bf9453cde2b49c6c45(ptr %v0, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1)
declare i64 @compiler_2fscope_2eflRoot(ptr %v0, ptr %a0)
@olang_loc_6982ea230ce803bc_74efee4e495ae4a0 = external constant [0 x i8]
declare i64 @compiler_2fscope_2eflRootExpr(ptr %v0, ptr %a0)
@olang_loc_40da86322e01ef2b_70b0fe12089116bf = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eloopElement(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eblockTerm(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ewhereLives(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_298102a92201c9c7_d2c28c3c337e3c3b = external constant [0 x i8]
@olang_loc_963cba883dc4bd20_64c99da4a40e3f44 = external constant [0 x i8]
@olang_loc_91fdca4bfcfaef3f_360ec22200b0b313 = external constant [0 x i8]
@olang_loc_540f6a9ea70b2c8e_44714d47ed7a19d2 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopy(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_64a11eda2e926835_fc7221612b7da3f9 = external constant [0 x i8]
@olang_loc_9739f96f1cdf87e4_96538064e6892180 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNoteLoopCopyLent(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eproposeFrom(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2, i1 %a3, i64 %a4, i1 %a5)
declare ptr @compiler_2ftyped_2eCall_2eOf(ptr %v0, ptr %v1, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estorageTerm(ptr %v0, ptr %a0)
declare { i64, [2 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultTerm(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a48607f77104f946_b5a91344bffd8f22 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2enoteResBind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2estoreThrough(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultMark(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fscope_2eFitReturn = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2efit(ptr %v0, ptr %v1, ptr %a0, { i64, [2 x i64] } %a1, { i64, [2 x i64] } %a2, i1 %a3, ptr %a4, i64 %a5)
@olang_loc_3199956179aa6dd4_40cdc1669d0af040 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlDrop(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
declare void @compiler_2fscope_2ecompiler_2fscope_3aScoper_2erlBlock(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_dba8079c89f8629e_846fd2cd4d9758c2 = external constant [0 x i8]
@olang_loc_dbab6e035b5797c_e736089fb75e21e0 = external constant [0 x i8]
@olang_loc_207e75e919c85f37_93e6eeba566436db = external constant [0 x i8]
@olang_loc_3858c2e20d1891a9_b858c54a1ad247bd = external constant [0 x i8]
@olang_loc_c9162f08edbfbed8_2a5892f27af908c = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2ftyped_3aBody_26_3e_2e_Ha1ef0e278819e2a81939c80ef5438e96(ptr %v0, ptr %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eRefMut_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_5a6d5e4fff6c8f59_c596a548624aa6f5 = external constant [0 x i8]
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2evalueAdmits(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d14ac281d7095de3_5cf23a39181ab0c7 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eplacedScope(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
@olang_loc_e868644b32a63b82_22357fbc60309ea6 = external constant [0 x i8]
declare %"compiler/scope:Placement" @compiler_2fscope_3aPlacement_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, { i64, ptr } %a4)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_H0110f09d6616867ae14b608097fe5c88(ptr %v0, ptr %v1, ptr %a0, %"std/pair:Pair.e476b05c61172463a7c240e364dbb6d0" %a1, %"compiler/scope:Placement" %a2)
@olang_loc_6d2a3cef33fc4760_a72895cad66661d4 = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2etakenLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eisParam(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eclaimRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2emadeAt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ethroughDerived(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c51808c26f3c8029_f1c25a88624d8cdd = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2esetEnd(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/scope:verAtom" @compiler_2fscope_3averAtom_2ector(ptr %v0, i64 %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5, i1 %a6, i64 %a7)
declare void @compiler_2fscope_2eaddAtom(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eLen_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2ePush_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, %"compiler/scope:verAtom" %a1)
declare %"compiler/scope:verAtom" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3averAtom_3e_2eAt_3ccompiler_2fscope_3averAtom_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_116c2702d0beccf9_d81dd964499d710d = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eLen_3ccompiler_2ftyped_3aPlan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aPlan_3e_2eAt_3ccompiler_2ftyped_3aPlan_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eEq_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eEq_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eEq_3cI64_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_H80e5c7f116c5eff77ef32968f58f5b4d(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_H16eefdf2f060cccd64cc684009ec3f7f(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2ebeyondBound(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i32 %a3, i1 %a4)
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eargLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4a494c4484ad71e8_cc0fe42b10928cfc = external constant [0 x i8]
@olang_loc_151a4fd4550fcf07_44af0ef11641bc6b = external constant [0 x i8]
declare i64 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eborrowedLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fscope_2ecompiler_2fscope_3aScoper_2eresultViews(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2)
@olang_loc_eb4644f0af45390e_1376074f3833ad62 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_d7bea1f8c4fc6c43_c97bd86ee0afa2f7 = external constant [0 x i8]
declare i1 @compiler_2fscope_2eisNameChar(i8 %a0)
declare ptr @compiler_2fscope_2eletIn(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3arel_3e_2eEq_3ccompiler_2fscope_3arel_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eEq_3cBool_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eEq_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3aTerm_3e_2eEq_3ccompiler_2fscope_3aTerm_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fscope_3afnRec_3e_2eEq_3ccompiler_2fscope_3afnRec_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)

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
